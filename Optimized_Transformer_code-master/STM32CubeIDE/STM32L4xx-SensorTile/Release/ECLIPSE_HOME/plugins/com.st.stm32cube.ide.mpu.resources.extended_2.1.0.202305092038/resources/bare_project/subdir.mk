################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/opt/st/stm32cubeide_1.13.2/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.c 

C_DEPS += \
./ECLIPSE_HOME/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.d 

OBJS += \
./ECLIPSE_HOME/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.o 


# Each subdirectory must supply rules for building sources it contributes
ECLIPSE_HOME/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.o: /opt/st/stm32cubeide_1.13.2/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.c ECLIPSE_HOME/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DUSE_HAL_DRIVER -DOSX_BMS_SENSORTILE -DSTM32L476xx -DUSE_STM32L4XX_NUCLEO -D__FPU_PRESENT=1 -DARM_MATH_CM4 -c -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads/cmsis/CMSIS/Core/Include -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow/tensorflow/lite/micro/tools/make/downloads" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/gemmlowp" -I"/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/third_party/ruy" -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/STM32L4xx_HAL_Driver/Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/Common -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/SensorTile -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Drivers/BSP/Components/pcm1774 -I../../../Inc -I/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/Optimized_Transformer_code-master/STM32CubeIDE/tensorflow -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ECLIPSE_HOME-2f-plugins-2f-com-2e-st-2e-stm32cube-2e-ide-2e-mpu-2e-resources-2e-extended_2-2e-1-2e-0-2e-202305092038-2f-resources-2f-bare_project

clean-ECLIPSE_HOME-2f-plugins-2f-com-2e-st-2e-stm32cube-2e-ide-2e-mpu-2e-resources-2e-extended_2-2e-1-2e-0-2e-202305092038-2f-resources-2f-bare_project:
	-$(RM) ./ECLIPSE_HOME/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.cyclo ./ECLIPSE_HOME/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.d ./ECLIPSE_HOME/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.o ./ECLIPSE_HOME/plugins/com.st.stm32cube.ide.mpu.resources.extended_2.1.0.202305092038/resources/bare_project/rsc_table.su

.PHONY: clean-ECLIPSE_HOME-2f-plugins-2f-com-2e-st-2e-stm32cube-2e-ide-2e-mpu-2e-resources-2e-extended_2-2e-1-2e-0-2e-202305092038-2f-resources-2f-bare_project

