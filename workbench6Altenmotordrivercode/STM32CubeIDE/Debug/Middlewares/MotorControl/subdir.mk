################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/bus_voltage_sensor.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Src/f0xx_bemf_ADC_fdbk.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/ntc_temperature_sensor.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pid_regulator.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pwm_common_sixstep.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pwmc_6pwm.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/r_divider_bus_voltage_sensor.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/revup_ctrl_sixstep.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_ctrl.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_pos_fdbk.c \
C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/virtual_speed_sensor.c 

OBJS += \
./Middlewares/MotorControl/bus_voltage_sensor.o \
./Middlewares/MotorControl/f0xx_bemf_ADC_fdbk.o \
./Middlewares/MotorControl/ntc_temperature_sensor.o \
./Middlewares/MotorControl/pid_regulator.o \
./Middlewares/MotorControl/pwm_common_sixstep.o \
./Middlewares/MotorControl/pwmc_6pwm.o \
./Middlewares/MotorControl/r_divider_bus_voltage_sensor.o \
./Middlewares/MotorControl/revup_ctrl_sixstep.o \
./Middlewares/MotorControl/speed_ctrl.o \
./Middlewares/MotorControl/speed_pos_fdbk.o \
./Middlewares/MotorControl/virtual_speed_sensor.o 

C_DEPS += \
./Middlewares/MotorControl/bus_voltage_sensor.d \
./Middlewares/MotorControl/f0xx_bemf_ADC_fdbk.d \
./Middlewares/MotorControl/ntc_temperature_sensor.d \
./Middlewares/MotorControl/pid_regulator.d \
./Middlewares/MotorControl/pwm_common_sixstep.d \
./Middlewares/MotorControl/pwmc_6pwm.d \
./Middlewares/MotorControl/r_divider_bus_voltage_sensor.d \
./Middlewares/MotorControl/revup_ctrl_sixstep.d \
./Middlewares/MotorControl/speed_ctrl.d \
./Middlewares/MotorControl/speed_pos_fdbk.d \
./Middlewares/MotorControl/virtual_speed_sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/MotorControl/bus_voltage_sensor.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/bus_voltage_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/f0xx_bemf_ADC_fdbk.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Src/f0xx_bemf_ADC_fdbk.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/ntc_temperature_sensor.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/ntc_temperature_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/pid_regulator.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pid_regulator.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/pwm_common_sixstep.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pwm_common_sixstep.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/pwmc_6pwm.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pwmc_6pwm.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/r_divider_bus_voltage_sensor.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/r_divider_bus_voltage_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/revup_ctrl_sixstep.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/revup_ctrl_sixstep.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/speed_ctrl.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_ctrl.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/speed_pos_fdbk.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_pos_fdbk.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/virtual_speed_sensor.o: C:/Users/Asus/.st_workbench/projects/workbench6Altenmotordrivercode/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/virtual_speed_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Middlewares-2f-MotorControl

clean-Middlewares-2f-MotorControl:
	-$(RM) ./Middlewares/MotorControl/bus_voltage_sensor.cyclo ./Middlewares/MotorControl/bus_voltage_sensor.d ./Middlewares/MotorControl/bus_voltage_sensor.o ./Middlewares/MotorControl/bus_voltage_sensor.su ./Middlewares/MotorControl/f0xx_bemf_ADC_fdbk.cyclo ./Middlewares/MotorControl/f0xx_bemf_ADC_fdbk.d ./Middlewares/MotorControl/f0xx_bemf_ADC_fdbk.o ./Middlewares/MotorControl/f0xx_bemf_ADC_fdbk.su ./Middlewares/MotorControl/ntc_temperature_sensor.cyclo ./Middlewares/MotorControl/ntc_temperature_sensor.d ./Middlewares/MotorControl/ntc_temperature_sensor.o ./Middlewares/MotorControl/ntc_temperature_sensor.su ./Middlewares/MotorControl/pid_regulator.cyclo ./Middlewares/MotorControl/pid_regulator.d ./Middlewares/MotorControl/pid_regulator.o ./Middlewares/MotorControl/pid_regulator.su ./Middlewares/MotorControl/pwm_common_sixstep.cyclo ./Middlewares/MotorControl/pwm_common_sixstep.d ./Middlewares/MotorControl/pwm_common_sixstep.o ./Middlewares/MotorControl/pwm_common_sixstep.su ./Middlewares/MotorControl/pwmc_6pwm.cyclo ./Middlewares/MotorControl/pwmc_6pwm.d ./Middlewares/MotorControl/pwmc_6pwm.o ./Middlewares/MotorControl/pwmc_6pwm.su ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.cyclo ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.d ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.o ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.su ./Middlewares/MotorControl/revup_ctrl_sixstep.cyclo ./Middlewares/MotorControl/revup_ctrl_sixstep.d ./Middlewares/MotorControl/revup_ctrl_sixstep.o ./Middlewares/MotorControl/revup_ctrl_sixstep.su ./Middlewares/MotorControl/speed_ctrl.cyclo ./Middlewares/MotorControl/speed_ctrl.d ./Middlewares/MotorControl/speed_ctrl.o ./Middlewares/MotorControl/speed_ctrl.su ./Middlewares/MotorControl/speed_pos_fdbk.cyclo ./Middlewares/MotorControl/speed_pos_fdbk.d ./Middlewares/MotorControl/speed_pos_fdbk.o ./Middlewares/MotorControl/speed_pos_fdbk.su ./Middlewares/MotorControl/virtual_speed_sensor.cyclo ./Middlewares/MotorControl/virtual_speed_sensor.d ./Middlewares/MotorControl/virtual_speed_sensor.o ./Middlewares/MotorControl/virtual_speed_sensor.su

.PHONY: clean-Middlewares-2f-MotorControl

