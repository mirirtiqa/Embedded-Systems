################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/quantization_util.cc 

CC_DEPS += \
./tensorflow/lite/kernels/internal/quantization_util.d 

OBJS += \
./tensorflow/lite/kernels/internal/quantization_util.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/lite/kernels/internal/quantization_util.o: /home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/internal/quantization_util.cc tensorflow/lite/kernels/internal/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/pcm1774 -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/Common -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/pcm1774 -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/Inc -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-masterSTM32CubeIDE/third_party/flatbuffers/include" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/gemmlowp" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/ruy" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow" -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-lite-2f-kernels-2f-internal

clean-tensorflow-2f-lite-2f-kernels-2f-internal:
	-$(RM) ./tensorflow/lite/kernels/internal/quantization_util.cyclo ./tensorflow/lite/kernels/internal/quantization_util.d ./tensorflow/lite/kernels/internal/quantization_util.o ./tensorflow/lite/kernels/internal/quantization_util.su

.PHONY: clean-tensorflow-2f-lite-2f-kernels-2f-internal

