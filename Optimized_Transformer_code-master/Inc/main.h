#ifndef __MAIN_H 
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/

#include "stm32l4xx_hal.h"
#include "stm32l4xx_it.h"
#include "cube_hal.h"
#include "SensorTile.h"
#include "SensorTile_audio.h"
//#include "kws.h"
//#include "kws_f746ng.h"

#include "usbd_desc.h"
#include "/home/rajat/Desktop/COURSES/Semester_7/COL788/Assignment-2/optimized/en.stsw-stlkt01/STSW-STLKT01_V2.5.0/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc/usbd_cdc.h"
#include "usbd_cdc_interface.h"
#include "micro_error_reporter.h"

//#include "SensorTile_audio_in.h"
//#include "SensorTile_audio_out.h"


//includes for datalog


//#include "usbd_cdc_if.h"

typedef struct __attribute__((packed)) ContextStateFrame {
  uint32_t r0;
  uint32_t r1;
  uint32_t r2;
  uint32_t r3;
  uint32_t r12;
  uint32_t lr;
  uint32_t return_address;
  uint32_t xpsr;
} sContextStateFrame;

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* Exported variables --------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
  
void Error_Handler( void );
void debug_monitor_handler_c(sContextStateFrame *frame);
void run_kws();

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
