################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/Src/system_stm32l4xx.c 

C_DEPS += \
./Drivers/CMSIS/system_stm32l4xx.d 

OBJS += \
./Drivers/CMSIS/system_stm32l4xx.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/system_stm32l4xx.o: /home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/Src/system_stm32l4xx.c Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/pcm1774 -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/gemmlowp" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/ruy" -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/Common -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/pcm1774 -I../../../Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/tutorial_1/en.stsw-stlkt01/v1.2.0/Drivers/BSP/Components/pcm1774 -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS

clean-Drivers-2f-CMSIS:
	-$(RM) ./Drivers/CMSIS/system_stm32l4xx.cyclo ./Drivers/CMSIS/system_stm32l4xx.d ./Drivers/CMSIS/system_stm32l4xx.o ./Drivers/CMSIS/system_stm32l4xx.su

.PHONY: clean-Drivers-2f-CMSIS

