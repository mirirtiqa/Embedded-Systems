/* Copyright 2020 The TensorFlow Authors. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#include "tensorflow/lite/kernels/internal/reference/fully_connected.h"

#include "cmsis/CMSIS/NN/Include/arm_nnfunctions.h"
#include "tensorflow/lite/c/builtin_op_data.h"
#include "tensorflow/lite/c/common.h"
#include "tensorflow/lite/kernels/internal/common.h"
#include "tensorflow/lite/kernels/internal/quantization_util.h"
#include "tensorflow/lite/kernels/internal/reference/integer_ops/fully_connected.h"
#include "tensorflow/lite/kernels/internal/tensor_ctypes.h"
#include "tensorflow/lite/kernels/kernel_util.h"

namespace tflite {
namespace ops {
namespace micro {
namespace fully_connected {
namespace {

struct OpData {
  // The scaling factor from input to output (aka the 'real multiplier') can
  // be represented as a fixed point multiplier plus a left shift.
  int32_t output_multiplier;
  int output_shift;
  // The range of the fused activation layer. For example for kNone and
  // uint8_t these would be 0 and 255.
  int32_t output_activation_min;
  int32_t output_activation_max;
  // The index of the temporary tensor where the quantized inputs are cached.
  int input_quantized_index;
  // Index to buffer for optimizations if applicable.
  int buffer_idx;
};

constexpr int kInputTensor = 0;
constexpr int kWeightsTensor = 1;
constexpr int kBiasTensor = 2;
constexpr int kOutputTensor = 0;

TfLiteStatus CalculateOpData(TfLiteContext* context,
                             TfLiteFusedActivation activation,
                             TfLiteType data_type, const TfLiteTensor* input,
                             const TfLiteTensor* filter,
                             const TfLiteTensor* bias, TfLiteTensor* output,
                             OpData* data) {
  TfLiteStatus status = kTfLiteOk;
  // Set buffer index to a reset value
  data->buffer_idx = -1;
  if (data_type != kTfLiteFloat32) {
    double real_multiplier = 0.0;
    TF_LITE_ENSURE_STATUS(GetQuantizedConvolutionMultipler(
        context, input, filter, bias, output, &real_multiplier));
    int exponent;
    QuantizeMultiplier(real_multiplier, &data->output_multiplier, &exponent);
    data->output_shift = -exponent;
    TF_LITE_ENSURE_STATUS(CalculateActivationRangeQuantized(
        context, activation, output, &data->output_activation_min,
        &data->output_activation_max));
  }
  return status;
}

}  // namespace

void* Init(TfLiteContext* context, const char* buffer, size_t length) {
  TFLITE_DCHECK(context->AllocatePersistentBuffer != nullptr);
  void* data = nullptr;
  if (context->AllocatePersistentBuffer(context, sizeof(OpData), &data) ==
      kTfLiteError) {
    return nullptr;
  }
  return data;
}

TfLiteStatus Prepare(TfLiteContext* context, TfLiteNode* node) {
  TFLITE_DCHECK(node->user_data != nullptr);
  TFLITE_DCHECK(node->builtin_data != nullptr);

  OpData* data = static_cast<OpData*>(node->user_data);
  const auto params =
      static_cast<const TfLiteFullyConnectedParams*>(node->builtin_data);

  const TfLiteTensor* input = GetInput(context, node, kInputTensor);
  const TfLiteTensor* filter = GetInput(context, node, kWeightsTensor);
  const TfLiteTensor* bias = GetOptionalInputTensor(context, node, kBiasTensor);
  TfLiteTensor* output = GetOutput(context, node, kOutputTensor);
  TF_LITE_ENSURE_TYPES_EQ(context, input->type, output->type);
  TF_LITE_ENSURE_MSG(context, input->type == filter->type,
                     "Hybrid models are not supported on TFLite Micro.");
  TF_LITE_ENSURE_STATUS(CalculateOpData(context, params->activation,
                                        input->type, input, filter, bias,
                                        output, data));

  if (input->type == kTfLiteInt8 && nullptr != GetTensorData<int32>(bias)) {
    RuntimeShape filter_shape = GetTensorShape(filter);
    RuntimeShape output_shape = GetTensorShape(output);

//    TFLITE_DCHECK_EQ(output_shape.DimensionsCount(), 2);
    const int filter_dim_count = filter_shape.DimensionsCount();
    cmsis_nn_dims filter_dims;
    filter_dims.n = filter_shape.Dims(filter_dim_count - 1);
    filter_dims.h = 1;
    filter_dims.w = 1;
    filter_dims.c = output_shape.Dims(1);

    const int32_t buf_size =
        arm_fully_connected_s8_get_buffer_size(&filter_dims);

    if (buf_size > 0) {
      TF_LITE_ENSURE_STATUS(context->RequestScratchBufferInArena(
          context, buf_size, &data->buffer_idx));
    } else {
      data->buffer_idx = -1;
    }
  }
  return kTfLiteOk;
}

TfLiteStatus EvalQuantizedInt8(TfLiteContext* context, TfLiteNode* node,
                               const OpData& data, const TfLiteTensor* input,
                               const TfLiteTensor* filter,
                               const TfLiteTensor* bias, TfLiteTensor* output) {
  // The 'if' condition can be removed when null handling of bias is added to
  // arm_fully_connected_s8
  if (nullptr != GetTensorData<int32>(bias)) {
    const RuntimeShape output_shape = GetTensorShape(output);
//    TFLITE_DCHECK_EQ(output_shape.DimensionsCount(), 2);
    const int batches = output_shape.Dims(0);
    const int output_depth = output_shape.Dims(1);
    const RuntimeShape filter_shape = GetTensorShape(filter);
    const int filter_dim_count = filter_shape.DimensionsCount();
    const int accum_depth = filter_shape.Dims(filter_dim_count - 1);
    const RuntimeShape input_shape = GetTensorShape(input);
//    TFLITE_DCHECK_EQ(input_shape.DimensionsCount(), 2);
//    TFLITE_DCHECK_EQ(batches, input_shape.Dims(0));

    cmsis_nn_fc_params fc_params;
    fc_params.input_offset = -input->params.zero_point;
    fc_params.filter_offset = -filter->params.zero_point;
    fc_params.output_offset = output->params.zero_point;
    fc_params.activation.min = data.output_activation_min;
    fc_params.activation.max = data.output_activation_max;

    cmsis_nn_per_tensor_quant_params quant_params;
    quant_params.multiplier = data.output_multiplier;
    // TODO(b/138810107): Figure out whether output shift should be inverted
    quant_params.shift = -data.output_shift;

    cmsis_nn_dims input_dims;
    input_dims.n = batches;
    input_dims.h = 1;
    input_dims.w = 1;
    input_dims.c = input_shape.Dims(1);

    cmsis_nn_dims filter_dims;
    filter_dims.n = accum_depth;
    filter_dims.h = 1;
    filter_dims.w = 1;
    filter_dims.c = output_depth;

    cmsis_nn_dims bias_dims;
    bias_dims.n = 1;
    bias_dims.h = 1;
    bias_dims.w = 1;
    bias_dims.c = output_depth;

    cmsis_nn_dims output_dims;
    output_dims.n = batches;
    output_dims.h = 1;
    output_dims.w = 1;
    output_dims.c = output_depth;

    cmsis_nn_context ctx;
    ctx.buf = nullptr;
    ctx.size = 0;

    if (data.buffer_idx > -1) {
      ctx.buf = context->GetScratchBuffer(context, data.buffer_idx);
    }

    TF_LITE_ENSURE_EQ(
        context,
        arm_fully_connected_s8(&ctx, &fc_params, &quant_params, &input_dims,
                               GetTensorData<int8_t>(input), &filter_dims,
                               GetTensorData<int8_t>(filter), &bias_dims,
                               GetTensorData<int32>(bias), &output_dims,
                               GetTensorData<int8_t>(output)),
        ARM_MATH_SUCCESS);
  } else {
    tflite::FullyConnectedParams op_params;
    op_params.input_offset = -input->params.zero_point;
    op_params.weights_offset = -filter->params.zero_point;
    op_params.output_offset = output->params.zero_point;
    op_params.output_multiplier = data.output_multiplier;
    // TODO(b/138810107): Figure out whether output shift should be inverted
    op_params.output_shift = -data.output_shift;
    op_params.quantized_activation_min = data.output_activation_min;
    op_params.quantized_activation_max = data.output_activation_max;

    reference_integer_ops::FullyConnected(
        op_params, GetTensorShape(input), GetTensorData<int8_t>(input),
        GetTensorShape(filter), GetTensorData<int8_t>(filter),
        GetTensorShape(bias), GetTensorData<int32_t>(bias),
        GetTensorShape(output), GetTensorData<int8_t>(output));
  }
  return kTfLiteOk;
}

TfLiteStatus EvalQuantized(TfLiteContext* context, TfLiteNode* node,
                           const OpData& data, const TfLiteTensor* input,
                           const TfLiteTensor* filter, const TfLiteTensor* bias,
                           TfLiteTensor* output) {
  const int32_t input_offset = -input->params.zero_point;
  const int32_t filter_offset = -filter->params.zero_point;
  const int32_t output_offset = output->params.zero_point;

  tflite::FullyConnectedParams op_params;
  op_params.input_offset = input_offset;
  op_params.weights_offset = filter_offset;
  op_params.output_offset = output_offset;
  op_params.output_multiplier = data.output_multiplier;
  // Legacy ops used mixed left and right shifts. Now all are +ve-means-left.
  op_params.output_shift = -data.output_shift;
  op_params.quantized_activation_min = data.output_activation_min;
  op_params.quantized_activation_max = data.output_activation_max;

#define TF_LITE_FULLY_CONNECTED(output_data_type)                      \
  reference_ops::FullyConnected(                                       \
      op_params, GetTensorShape(input), GetTensorData<uint8_t>(input), \
      GetTensorShape(filter), GetTensorData<uint8_t>(filter),          \
      GetTensorShape(bias), GetTensorData<int32_t>(bias),              \
      GetTensorShape(output), GetTensorData<output_data_type>(output))
  switch (output->type) {
    case kTfLiteUInt8:
      TF_LITE_FULLY_CONNECTED(uint8_t);
      break;
    case kTfLiteInt16:
      TF_LITE_FULLY_CONNECTED(int16_t);
      break;
    default:
      TF_LITE_KERNEL_LOG(context, "Type %s (%d) not supported.",
                         TfLiteTypeGetName(output->type), output->type);
      return kTfLiteError;
  }

  return kTfLiteOk;
}

TfLiteStatus EvalFloat(TfLiteContext* context, TfLiteNode* node,
                       TfLiteFusedActivation activation,
                       const TfLiteTensor* input, const TfLiteTensor* filter,
                       const TfLiteTensor* bias, TfLiteTensor* output) {
  float output_activation_min, output_activation_max;
  CalculateActivationRange(activation, &output_activation_min,
                           &output_activation_max);
  tflite::FullyConnectedParams op_params;
  op_params.float_activation_min = output_activation_min;
  op_params.float_activation_max = output_activation_max;
  tflite::reference_ops::FullyConnected(
      op_params, GetTensorShape(input), GetTensorData<float>(input),
      GetTensorShape(filter), GetTensorData<float>(filter),
      GetTensorShape(bias), GetTensorData<float>(bias), GetTensorShape(output),
      GetTensorData<float>(output));
  return kTfLiteOk;
}

TfLiteStatus Eval(TfLiteContext* context, TfLiteNode* node) {
  TFLITE_DCHECK(node->builtin_data != nullptr);
  const auto* params =
      static_cast<const TfLiteFullyConnectedParams*>(node->builtin_data);

  const TfLiteTensor* input = GetInput(context, node, kInputTensor);
  const TfLiteTensor* filter = GetInput(context, node, kWeightsTensor);
  const TfLiteTensor* bias = GetOptionalInputTensor(context, node, kBiasTensor);
  TfLiteTensor* output = GetOutput(context, node, kOutputTensor);

  TFLITE_DCHECK(node->user_data != nullptr);
  const OpData& data = *(static_cast<const OpData*>(node->user_data));

  // Checks in Prepare ensure input, output and filter types are all the same.
  switch (input->type) {
    case kTfLiteFloat32:
      return EvalFloat(context, node, params->activation, input, filter, bias,
                       output);
    case kTfLiteInt8:
      return EvalQuantizedInt8(context, node, data, input, filter, bias,
                               output);

    case kTfLiteUInt8:
      return EvalQuantized(context, node, data, input, filter, bias, output);

    default:
      TF_LITE_KERNEL_LOG(context, "Type %s (%d) not supported.",
                         TfLiteTypeGetName(input->type), input->type);
      return kTfLiteError;
  }
  return kTfLiteOk;
}

}  // namespace fully_connected

TfLiteRegistration Register_FULLY_CONNECTED() {
  return {/*init=*/fully_connected::Init,
          /*free=*/nullptr,
          /*prepare=*/fully_connected::Prepare,
          /*invoke=*/fully_connected::Eval,
          /*profiling_string=*/nullptr,
          /*builtin_code=*/0,
          /*custom_name=*/nullptr,
          /*version=*/0};
}

}  // namespace micro
}  // namespace ops
}  // namespace tflite
