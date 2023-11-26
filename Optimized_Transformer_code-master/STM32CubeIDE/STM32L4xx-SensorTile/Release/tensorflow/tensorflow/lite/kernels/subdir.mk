################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/kernel_util.cc 

CC_DEPS += \
./tensorflow/tensorflow/lite/kernels/kernel_util.d 

OBJS += \
./tensorflow/tensorflow/lite/kernels/kernel_util.o 


# Each subdirectory must supply rules for building sources it contributes
tensorflow/tensorflow/lite/kernels/kernel_util.o: C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/kernels/kernel_util.cc tensorflow/tensorflow/lite/kernels/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I../../../Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I../../../../../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../Drivers/BSP/Components/Common -I../../../../../../../Drivers/BSP/SensorTile -I../../../../../../../Drivers/BSP/Components/pcm1774 -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -IC:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/Inc -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/flatbuffers/include" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/gemmlowp" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/third_party/ruy" -I"C:/Users/rashu/Downloads/STSW-STLKT01_V2.2.0/STSW-STLKT01_V2.2.0/Projects/SensorTile/Applications/AudioLoop_backup25July2020/STM32CubeIDE/tensorflow" -O0 -ffunction-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-tensorflow-2f-tensorflow-2f-lite-2f-kernels

clean-tensorflow-2f-tensorflow-2f-lite-2f-kernels:
	-$(RM) ./tensorflow/tensorflow/lite/kernels/kernel_util.d ./tensorflow/tensorflow/lite/kernels/kernel_util.o ./tensorflow/tensorflow/lite/kernels/kernel_util.su

.PHONY: clean-tensorflow-2f-tensorflow-2f-lite-2f-kernels

