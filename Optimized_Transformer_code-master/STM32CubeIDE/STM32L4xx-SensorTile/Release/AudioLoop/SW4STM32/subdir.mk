################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/startup_stm32l476xx.s 

S_DEPS += \
./AudioLoop/SW4STM32/startup_stm32l476xx.d 

OBJS += \
./AudioLoop/SW4STM32/startup_stm32l476xx.o 


# Each subdirectory must supply rules for building sources it contributes
AudioLoop/SW4STM32/startup_stm32l476xx.o: /home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/startup_stm32l476xx.s AudioLoop/SW4STM32/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/pcm1774 -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/tutorial_1/en.stsw-stlkt01/v1.2.0/Drivers/BSP/SensorTile -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro -I./home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/Common -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/pcm1774 -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/gemmlowp -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/ruy -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/NN/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/DSP/Include -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-AudioLoop-2f-SW4STM32

clean-AudioLoop-2f-SW4STM32:
	-$(RM) ./AudioLoop/SW4STM32/startup_stm32l476xx.d ./AudioLoop/SW4STM32/startup_stm32l476xx.o

.PHONY: clean-AudioLoop-2f-SW4STM32

