/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f0xx_hal.h"
#include "motorcontrol.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define Start_Stop_Pin GPIO_PIN_0
#define Start_Stop_GPIO_Port GPIOF
#define Start_Stop_EXTI_IRQn EXTI0_1_IRQn
#define M1_BEMF_U_Pin GPIO_PIN_0
#define M1_BEMF_U_GPIO_Port GPIOA
#define M1_BEMF_V_Pin GPIO_PIN_1
#define M1_BEMF_V_GPIO_Port GPIOA
#define M1_BEMF_W_Pin GPIO_PIN_2
#define M1_BEMF_W_GPIO_Port GPIOA
#define M1_CURRENT_REF_Pin GPIO_PIN_6
#define M1_CURRENT_REF_GPIO_Port GPIOA
#define M1_BEMF_DIVIDER_Pin GPIO_PIN_7
#define M1_BEMF_DIVIDER_GPIO_Port GPIOA
#define M1_BUS_VOLTAGE_Pin GPIO_PIN_1
#define M1_BUS_VOLTAGE_GPIO_Port GPIOB
#define M1_PWM_UL_Pin GPIO_PIN_13
#define M1_PWM_UL_GPIO_Port GPIOB
#define M1_PWM_VL_Pin GPIO_PIN_14
#define M1_PWM_VL_GPIO_Port GPIOB
#define M1_PWM_WL_Pin GPIO_PIN_15
#define M1_PWM_WL_GPIO_Port GPIOB
#define M1_PWM_UH_Pin GPIO_PIN_8
#define M1_PWM_UH_GPIO_Port GPIOA
#define M1_PWM_VH_Pin GPIO_PIN_9
#define M1_PWM_VH_GPIO_Port GPIOA
#define M1_PWM_WH_Pin GPIO_PIN_10
#define M1_PWM_WH_GPIO_Port GPIOA
#define OC_SEL_Pin GPIO_PIN_11
#define OC_SEL_GPIO_Port GPIOA
#define TIM1_ETR_Pin GPIO_PIN_12
#define TIM1_ETR_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define OCTH_STBY2_Pin GPIO_PIN_6
#define OCTH_STBY2_GPIO_Port GPIOF
#define OCTH_STBY1_Pin GPIO_PIN_7
#define OCTH_STBY1_GPIO_Port GPIOF
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */