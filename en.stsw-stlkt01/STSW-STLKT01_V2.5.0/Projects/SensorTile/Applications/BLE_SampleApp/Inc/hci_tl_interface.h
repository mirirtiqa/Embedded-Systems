/**
******************************************************************************
* @file  : hci_tl_interface.h
* @author  SRA
* @version v2.5.0
* @date    23-Apr-2021
* @brief : This file contains all the functions prototypes for the STM32
*          BlueNRG-MS HCI Transport Layer interface		   
******************************************************************************
*
* COPYRIGHT 2021 STMicroelectronics
*
* Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
* You may not use this file except in compliance with the License.
* You may obtain a copy of the License at:
*
*        http://www.st.com/software_license_agreement_liberty_v2
*
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
******************************************************************************
*/

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __SENSORTILE_BLUENRG_H
#define __SENSORTILE_BLUENRG_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "SensorTile_conf.h"

extern volatile uint32_t HCI_ProcessEvent;   
/* Exported Defines ----------------------------------------------------------*/

#define HCI_TL_SPI_EXTI_PORT  GPIOC
#define HCI_TL_SPI_EXTI_PIN   GPIO_PIN_5
#define HCI_TL_SPI_EXTI_IRQn  EXTI9_5_IRQn

#define HCI_TL_SPI_IRQ_PORT   GPIOC
#define HCI_TL_SPI_IRQ_PIN    GPIO_PIN_5

#define HCI_TL_SPI_CS_PORT    GPIOB
#define HCI_TL_SPI_CS_PIN     GPIO_PIN_2

#define HCI_TL_RST_PORT       GPIOH
#define HCI_TL_RST_PIN        GPIO_PIN_0

/* Exported Functions --------------------------------------------------------*/
int32_t HCI_TL_SPI_Init    (void* pConf);
int32_t HCI_TL_SPI_DeInit  (void);
int32_t HCI_TL_SPI_Receive (uint8_t* buffer, uint16_t size);
int32_t HCI_TL_SPI_Send    (uint8_t* buffer, uint16_t size);
int32_t HCI_TL_SPI_Reset   (void);

/**
 * @brief  Register hci_tl_interface IO bus services
 *
 * @param  None
 * @retval None
 */
void hci_tl_lowlevel_init(void);

/**
 * @brief HCI Transport Layer Low Level Interrupt Service Routine
 *
 * @param  None
 * @retval None
 */
void hci_tl_lowlevel_isr(void);

#ifdef __cplusplus
}
#endif
#endif /* __SENSORTILE_BLUENRG_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
