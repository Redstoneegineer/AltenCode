################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/bus_voltage_sensor.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/circle_limitation.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/digital_output.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/ntc_temperature_sensor.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/open_loop.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pid_regulator.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pqd_motor_power_measurement.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pwm_common.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Src/r3_f0xx_pwm_curr_fdbk.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/r_divider_bus_voltage_sensor.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/ramp_ext_mngr.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/revup_ctrl.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_pos_fdbk.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_torq_ctrl.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/sto_pll_speed_pos_fdbk.c \
C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/virtual_speed_sensor.c 

OBJS += \
./Middlewares/MotorControl/bus_voltage_sensor.o \
./Middlewares/MotorControl/circle_limitation.o \
./Middlewares/MotorControl/digital_output.o \
./Middlewares/MotorControl/ntc_temperature_sensor.o \
./Middlewares/MotorControl/open_loop.o \
./Middlewares/MotorControl/pid_regulator.o \
./Middlewares/MotorControl/pqd_motor_power_measurement.o \
./Middlewares/MotorControl/pwm_common.o \
./Middlewares/MotorControl/r3_f0xx_pwm_curr_fdbk.o \
./Middlewares/MotorControl/r_divider_bus_voltage_sensor.o \
./Middlewares/MotorControl/ramp_ext_mngr.o \
./Middlewares/MotorControl/revup_ctrl.o \
./Middlewares/MotorControl/speed_pos_fdbk.o \
./Middlewares/MotorControl/speed_torq_ctrl.o \
./Middlewares/MotorControl/sto_pll_speed_pos_fdbk.o \
./Middlewares/MotorControl/virtual_speed_sensor.o 

C_DEPS += \
./Middlewares/MotorControl/bus_voltage_sensor.d \
./Middlewares/MotorControl/circle_limitation.d \
./Middlewares/MotorControl/digital_output.d \
./Middlewares/MotorControl/ntc_temperature_sensor.d \
./Middlewares/MotorControl/open_loop.d \
./Middlewares/MotorControl/pid_regulator.d \
./Middlewares/MotorControl/pqd_motor_power_measurement.d \
./Middlewares/MotorControl/pwm_common.d \
./Middlewares/MotorControl/r3_f0xx_pwm_curr_fdbk.d \
./Middlewares/MotorControl/r_divider_bus_voltage_sensor.d \
./Middlewares/MotorControl/ramp_ext_mngr.d \
./Middlewares/MotorControl/revup_ctrl.d \
./Middlewares/MotorControl/speed_pos_fdbk.d \
./Middlewares/MotorControl/speed_torq_ctrl.d \
./Middlewares/MotorControl/sto_pll_speed_pos_fdbk.d \
./Middlewares/MotorControl/virtual_speed_sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/MotorControl/bus_voltage_sensor.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/bus_voltage_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/circle_limitation.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/circle_limitation.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/digital_output.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/digital_output.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/ntc_temperature_sensor.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/ntc_temperature_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/open_loop.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/open_loop.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/pid_regulator.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pid_regulator.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/pqd_motor_power_measurement.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pqd_motor_power_measurement.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/pwm_common.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/pwm_common.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/r3_f0xx_pwm_curr_fdbk.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Src/r3_f0xx_pwm_curr_fdbk.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/r_divider_bus_voltage_sensor.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/r_divider_bus_voltage_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/ramp_ext_mngr.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/ramp_ext_mngr.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/revup_ctrl.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/revup_ctrl.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/speed_pos_fdbk.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_pos_fdbk.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/speed_torq_ctrl.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_torq_ctrl.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/sto_pll_speed_pos_fdbk.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/sto_pll_speed_pos_fdbk.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Middlewares/MotorControl/virtual_speed_sensor.o: C:/Users/Asus/.st_workbench/projects/STEVAL_SPIN3201/MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Src/virtual_speed_sensor.c Middlewares/MotorControl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM0 -DUSE_HAL_DRIVER -DSTM32F031x6 -c -I../../Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc -I../../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v6.2.1-Full/MotorControl/MCSDK/MCLib/F0xx/Inc -I../../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Middlewares-2f-MotorControl

clean-Middlewares-2f-MotorControl:
	-$(RM) ./Middlewares/MotorControl/bus_voltage_sensor.cyclo ./Middlewares/MotorControl/bus_voltage_sensor.d ./Middlewares/MotorControl/bus_voltage_sensor.o ./Middlewares/MotorControl/bus_voltage_sensor.su ./Middlewares/MotorControl/circle_limitation.cyclo ./Middlewares/MotorControl/circle_limitation.d ./Middlewares/MotorControl/circle_limitation.o ./Middlewares/MotorControl/circle_limitation.su ./Middlewares/MotorControl/digital_output.cyclo ./Middlewares/MotorControl/digital_output.d ./Middlewares/MotorControl/digital_output.o ./Middlewares/MotorControl/digital_output.su ./Middlewares/MotorControl/ntc_temperature_sensor.cyclo ./Middlewares/MotorControl/ntc_temperature_sensor.d ./Middlewares/MotorControl/ntc_temperature_sensor.o ./Middlewares/MotorControl/ntc_temperature_sensor.su ./Middlewares/MotorControl/open_loop.cyclo ./Middlewares/MotorControl/open_loop.d ./Middlewares/MotorControl/open_loop.o ./Middlewares/MotorControl/open_loop.su ./Middlewares/MotorControl/pid_regulator.cyclo ./Middlewares/MotorControl/pid_regulator.d ./Middlewares/MotorControl/pid_regulator.o ./Middlewares/MotorControl/pid_regulator.su ./Middlewares/MotorControl/pqd_motor_power_measurement.cyclo ./Middlewares/MotorControl/pqd_motor_power_measurement.d ./Middlewares/MotorControl/pqd_motor_power_measurement.o ./Middlewares/MotorControl/pqd_motor_power_measurement.su ./Middlewares/MotorControl/pwm_common.cyclo ./Middlewares/MotorControl/pwm_common.d ./Middlewares/MotorControl/pwm_common.o ./Middlewares/MotorControl/pwm_common.su ./Middlewares/MotorControl/r3_f0xx_pwm_curr_fdbk.cyclo ./Middlewares/MotorControl/r3_f0xx_pwm_curr_fdbk.d ./Middlewares/MotorControl/r3_f0xx_pwm_curr_fdbk.o ./Middlewares/MotorControl/r3_f0xx_pwm_curr_fdbk.su ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.cyclo ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.d ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.o ./Middlewares/MotorControl/r_divider_bus_voltage_sensor.su ./Middlewares/MotorControl/ramp_ext_mngr.cyclo ./Middlewares/MotorControl/ramp_ext_mngr.d ./Middlewares/MotorControl/ramp_ext_mngr.o ./Middlewares/MotorControl/ramp_ext_mngr.su ./Middlewares/MotorControl/revup_ctrl.cyclo ./Middlewares/MotorControl/revup_ctrl.d ./Middlewares/MotorControl/revup_ctrl.o ./Middlewares/MotorControl/revup_ctrl.su ./Middlewares/MotorControl/speed_pos_fdbk.cyclo ./Middlewares/MotorControl/speed_pos_fdbk.d ./Middlewares/MotorControl/speed_pos_fdbk.o ./Middlewares/MotorControl/speed_pos_fdbk.su ./Middlewares/MotorControl/speed_torq_ctrl.cyclo ./Middlewares/MotorControl/speed_torq_ctrl.d ./Middlewares/MotorControl/speed_torq_ctrl.o ./Middlewares/MotorControl/speed_torq_ctrl.su ./Middlewares/MotorControl/sto_pll_speed_pos_fdbk.cyclo ./Middlewares/MotorControl/sto_pll_speed_pos_fdbk.d ./Middlewares/MotorControl/sto_pll_speed_pos_fdbk.o ./Middlewares/MotorControl/sto_pll_speed_pos_fdbk.su ./Middlewares/MotorControl/virtual_speed_sensor.cyclo ./Middlewares/MotorControl/virtual_speed_sensor.d ./Middlewares/MotorControl/virtual_speed_sensor.o ./Middlewares/MotorControl/virtual_speed_sensor.su

.PHONY: clean-Middlewares-2f-MotorControl

