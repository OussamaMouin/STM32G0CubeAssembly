;----Includes BEGIN

 INCLUDE stm32G0_constants.s
 INCLUDE core_cm0_plus_constants.s

;----Includes END
 AREA main,Code,READONLY
 EXPORT __main
 ENTRY
__main PROC
;USER CODE BEGIN 1


 BL RCC_CONFIG
 BL TIM2_CH3_Config

 BL GPIOA12_Config

;USER CODE END 1
;While loop begin
loop
;USER CODE BEGIN 2
                    LDR r0,=TIM2_BASE
                    LDR r5,[r0,#TIM_CNT]
                    LDR r1, =500
					CMP r5, r1
                    BGT turn_on_led
                    B turn_off_led               

turn_on_led
              LDR r0,=GPIOA_BASE
              LDR r1, [r0, #GPIO_ODR]
              LDR r2, =(GPIO_ODR_OD12) ;1<<12
              ORRS r1, r1, r2
              STR r1, [r0, #GPIO_ODR]
              B loop

turn_off_led
              LDR r0,=GPIOA_BASE
              LDR r1, [r0, #GPIO_ODR]
              LDR r2, =(GPIO_ODR_OD12) ;1<<12
              BICS r1, r1, r2;
              STR r1, [r0, #GPIO_ODR]
;USER CODE END 2
 B loop
 ENDP
RCC_CONFIG PROC
 PUSH{LR}
 LDR r0,=RCC_BASE
 LDR r1,[r0, #RCC_IOPENR]
 LDR r2,=RCC_IOPENR_GPIOAEN
 ORRS r1,r1,r2
 STR r1, [r0,#RCC_IOPENR]
 LDR r0,=RCC_BASE
 LDR r1,[r0, #RCC_APBENR1]
 LDR r2,=RCC_APBENR1_TIM2EN
 ORRS r1,r1,r2
 STR r1, [r0,#RCC_APBENR1]
 POP{PC}
 ENDP

TIM2_CH3_Config PROC
 PUSH{LR}
;Config of GPIO PORT AS ALternate Function
 LDR r0,=GPIOA_BASE
 LDR r1,[r0,#GPIO_MODER]
 LDR r2,=GPIO_MODER_MODE2
 BICS r1,r1,r2
 LDR r2,=GPIO_MODER_MODE2_1
 ORRS r1,r1,r2
 STR r1,[r0,#GPIO_MODER]
 LDR r1,[r0,#GPIO_AFR0]
 LDR r2,=GPIO_AFRL_AFSEL2
 BICS r1,r1,r2
 LDR r2,=GPIO_AFRL_AFSEL2
 ORRS r1,r1,r2
 STR r1,[r0,#GPIO_AFR0]
 LDR r0,=TIM2_BASE
 LDR r1,[r0,#TIM_PSC]
 LDR r2,=0xFFFF
 BICS r1,r1,r2
 LDR r2,=15999
 ORRS r1,r1,r2
 STR r1,[r0,#TIM_PSC]
 LDR r1,[r0,#TIM_ARR]
 LDR r2,=0xFFFFFFFF
 BICS r1,r1,r2
 LDR r2,=1000
 ORRS r1,r1,r2
 STR r1,[r0,#TIM_ARR]
 ;Counter ENABLE
 LDR r1,[r0,#TIM_CR1]
 LDR r2,=TIM_CR1_CEN
 BICS r1,r1,r2
 LDR r2,=TIM_CR1_CEN
 ORRS r1,r1,r2
 STR r1,[r0,#TIM_CR1]
 POP{PC}
 ENDP
GPIOA12_Config PROC
 PUSH{LR}
 LDR r0, =GPIOA_BASE
 LDR r1, [r0, #GPIO_MODER]
 LDR r2, =GPIO_MODER_MODE12 ;3<<2*12
 BICS r1, r1, r2
 LDR r2, =GPIO_MODER_MODE12_0   ;1<<2*12
 ORRS r1, r1, r2
 STR r1, [r0, #GPIO_MODER]
 POP{PC}
 ENDP
 ALIGN 4
 END
