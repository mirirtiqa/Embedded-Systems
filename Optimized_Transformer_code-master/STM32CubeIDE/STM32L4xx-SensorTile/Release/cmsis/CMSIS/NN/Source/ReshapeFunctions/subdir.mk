################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c 

C_DEPS += \
./cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d 

OBJS += \
./cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o 


# Each subdirectory must supply rules for building sources it contributes
cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o: /home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c cmsis/CMSIS/NN/Source/ReshapeFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/gemmlowp" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/ruy" -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/Common -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/pcm1774 -I../../../Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-cmsis-2f-CMSIS-2f-NN-2f-Source-2f-ReshapeFunctions

clean-cmsis-2f-CMSIS-2f-NN-2f-Source-2f-ReshapeFunctions:
	-$(RM) ./cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.cyclo ./cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d ./cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o ./cmsis/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.su

.PHONY: clean-cmsis-2f-CMSIS-2f-NN-2f-Source-2f-ReshapeFunctions

