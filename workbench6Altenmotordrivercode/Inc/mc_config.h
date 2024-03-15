
/**
  ******************************************************************************
  * @file    mc_config.h
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   Motor Control Subsystem components configuration and handler
  *          structures declarations.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */

#ifndef MC_CONFIG_H
#define MC_CONFIG_H

#include "pid_regulator.h"
#include "speed_ctrl.h"
#include "virtual_speed_sensor.h"
#include "ntc_temperature_sensor.h"
#include "revup_ctrl_sixstep.h"
#include "pwm_common_sixstep.h"
#include "current_ref_ctrl.h"
#include "mc_interface.h"
#include "mc_configuration_registers.h"
#include "regular_conversion_manager.h"
#include "r_divider_bus_voltage_sensor.h"
#include "virtual_bus_voltage_sensor.h"

#include "pwmc_6pwm.h"
#include "f0xx_bemf_ADC_fdbk.h"

extern RevUpCtrl_Handle_t RevUpControlM1;

extern PID_Handle_t PIDSpeedHandle_M1;
extern NTC_Handle_t TempSensor_M1;
extern PWMC_SixPwm_Handle_t PWM_Handle_M1;
extern Bemf_ADC_Handle_t Bemf_ADC_M1;
extern CurrentRef_Handle_t CurrentRef_M1;
extern SpeednTorqCtrl_Handle_t SpeednTorqCtrlM1;
extern VirtualSpeedSensor_Handle_t VirtualSpeedSensorM1;
extern RegConv_t VbusRegConv_M1;
extern RDivider_Handle_t BusVoltageSensor_M1;

extern MCI_Handle_t Mci[NBR_OF_MOTORS];
extern SpeednTorqCtrl_Handle_t *pSTC[NBR_OF_MOTORS];
extern NTC_Handle_t *pTemperatureSensor[NBR_OF_MOTORS];
extern MCI_Handle_t* pMCI[NBR_OF_MOTORS];
/* USER CODE BEGIN Additional extern */

/* USER CODE END Additional extern */

#endif /* MC_CONFIG_H */
/******************* (C) COPYRIGHT 2023 STMicroelectronics *****END OF FILE****/
