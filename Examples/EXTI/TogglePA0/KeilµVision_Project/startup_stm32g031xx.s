;******************************************************************************
;* File Name          : startup_stm32g031xx.s
;* Author             : MCD Application Team
;* Description        : STM32G031xx devices vector table for MDK-ARM toolchain.
;*                      This module performs:
;*                      - Set the initial SP
;*                      - Set the initial PC == Reset_Handler
;*                      - Set the vector table entries with the exceptions ISR address
;*                      - Branches to __main in the C library (which eventually
;*                        calls main()).
;*                      After Reset the CortexM0 processor is in Thread mode,
;*                      priority is Privileged, and the Stack is set to Main.
;* <<< Use Configuration Wizard in Context Menu >>>
;******************************************************************************
;* @attention
;*
;* Copyright (c) 2018-2021 STMicroelectronics.
;* All rights reserved.
;*
;* This software is licensed under terms that can be found in the LICENSE file
;* in the root directory of this software component.
;* If no LICENSE file comes with this software, it is provided AS-IS.
;*
;******************************************************************************
; Amount of memory (in bytes) allocated for Stack
; Tailor this value to your application needs
; <h> Stack Configuration
;   <o> Stack Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>


;*******************************************************************************
;
; Amount of memory (in bytes) allocated for Stack
; Tailor this value to your application needs
; <h> Stack Configuration
;   <o> Stack Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

;******************** Added by Younes LAHBIB *****************************************************
;*************************************************************************************************
                ; ROM:  Symbols defined by the linker
                IMPORT  |Load$$ER_IROM1$$Base|             ; Entry of Bootloader
                
                IMPORT  |Image$$ER_IROM1$$RO$$Base|        ; Start of RO output section
                IMPORT  |Image$$ER_IROM1$$RO$$Limit|       ; First byte beyond the end of RO output section
                IMPORT  |Image$$ER_IROM1$$RO$$Length|      ; Size of RO output section
                
                IMPORT  |Image$$ER_IROM1$$RW$$Base|
                IMPORT  |Image$$ER_IROM1$$RW$$Length|
                IMPORT  |Image$$ER_IROM1$$RW$$Limit|
                
                IMPORT  |Image$$ER_IROM1$$ZI$$Base|
                IMPORT  |Image$$ER_IROM1$$ZI$$Length|
                IMPORT  |Image$$ER_IROM1$$ZI$$Limit|
                
                ; RAM: Symbols defined by the linker
                IMPORT  |Load$$RW_IRAM1$$Base|             ; Load Address 
                IMPORT  |Image$$RW_IRAM1$$Base|            ; Start of RW output section
                IMPORT  |Image$$RW_IRAM1$$Length|
                IMPORT  |Image$$RW_IRAM1$$Limit|
                
                IMPORT  |Image$$RW_IRAM1$$RO$$Base|
                IMPORT  |Image$$RW_IRAM1$$RO$$Base|
                IMPORT  |Image$$RW_IRAM1$$RO$$Length|        
                
                IMPORT  |Image$$RW_IRAM1$$RW$$Base|       ; Start of RW output section
                IMPORT  |Image$$RW_IRAM1$$RW$$Limit|      ; End of RW output section
                IMPORT  |Image$$RW_IRAM1$$RW$$Length|     ; Size of RW output section
                
                IMPORT  |Image$$RW_IRAM1$$ZI$$Base|       ; Start of ZI output section
                IMPORT  |Image$$RW_IRAM1$$ZI$$Limit|      ; End of ZI output section
                IMPORT  |Image$$RW_IRAM1$$ZI$$Length|     ; Size of ZI output section

;*************************************************************************************************
;******************** END ************************************************************************





Stack_Size      EQU     0x00000400

                AREA    STACK, NOINIT, READWRITE, ALIGN=3
Stack_Mem       SPACE   Stack_Size
__initial_sp


; <h> Heap Configuration
;   <o>  Heap Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Heap_Size       EQU     0x00000200

                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
__heap_base
Heap_Mem        SPACE   Heap_Size
__heap_limit

                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset
                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors
                EXPORT  __Vectors_End
                EXPORT  __Vectors_Size

__Vectors       DCD     __initial_sp                   ; Top of Stack
                DCD     Reset_Handler                  ; Reset Handler
                DCD     NMI_Handler                    ; NMI Handler
                DCD     HardFault_Handler              ; Hard Fault Handler
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     SVC_Handler                    ; SVCall Handler
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved
                DCD     PendSV_Handler                 ; PendSV Handler
                DCD     SysTick_Handler                ; SysTick Handler

                ; External Interrupts
                DCD     WWDG_IRQHandler                ; Window Watchdog
                DCD     PVD_IRQHandler                 ; PVD through EXTI Line detect
                DCD     RTC_TAMP_IRQHandler            ; RTC through EXTI Line
                DCD     FLASH_IRQHandler               ; FLASH
                DCD     RCC_IRQHandler                 ; RCC
                DCD     EXTI0_1_IRQHandler             ; EXTI Line 0 and 1
                DCD     EXTI2_3_IRQHandler             ; EXTI Line 2 and 3
                DCD     EXTI4_15_IRQHandler            ; EXTI Line 4 to 15
                DCD     0                              ; Reserved
                DCD     DMA1_Channel1_IRQHandler       ; DMA1 Channel 1
                DCD     DMA1_Channel2_3_IRQHandler     ; DMA1 Channel 2 and Channel 3
                DCD     DMA1_Ch4_5_DMAMUX1_OVR_IRQHandler ; DMA1 Channel 4 to Channel 5, DMAMUX1 overrun
                DCD     ADC1_IRQHandler                ; ADC1
                DCD     TIM1_BRK_UP_TRG_COM_IRQHandler ; TIM1 Break, Update, Trigger and Commutation
                DCD     TIM1_CC_IRQHandler             ; TIM1 Capture Compare
                DCD     TIM2_IRQHandler                ; TIM2
                DCD     TIM3_IRQHandler                ; TIM3
                DCD     LPTIM1_IRQHandler              ; LPTIM1
                DCD     LPTIM2_IRQHandler              ; LPTIM2
                DCD     TIM14_IRQHandler               ; TIM14
                DCD     0                              ; Reserved
                DCD     TIM16_IRQHandler               ; TIM16
                DCD     TIM17_IRQHandler               ; TIM17
                DCD     I2C1_IRQHandler                ; I2C1
                DCD     I2C2_IRQHandler                ; I2C2
                DCD     SPI1_IRQHandler                ; SPI1
                DCD     SPI2_IRQHandler                ; SPI2
                DCD     USART1_IRQHandler              ; USART1
                DCD     USART2_IRQHandler              ; USART2
                DCD     LPUART1_IRQHandler             ; LPUART1
                DCD     0                              ; Reserved
                DCD     0                              ; Reserved

__Vectors_End

__Vectors_Size  EQU  __Vectors_End - __Vectors

                AREA    |.text|, CODE, READONLY

; Reset handler routine
Reset_Handler    PROC
                 EXPORT  Reset_Handler                 [WEAK]
        IMPORT  __main
        ;IMPORT  SystemInit  
                 ;LDR     R0, =SystemInit
                 ;BLX     R0
				 
				 
;******************** Added by Younes LAHBIB *****************************************************
;*************************************************************************************************
		; Copy the RW data segment from Flash to SRAM
		import |Load$$RW_IRAM1$$Base|
		;LDR	r0,	=|Image$$ER_IROM1$$RW$$Base|   ; Note this fails on Compiler 6 due to padding
		LDR r0, =|Load$$RW_IRAM1$$Base|
		LDR	r1,	=|Image$$RW_IRAM1$$RW$$Base|   
		LDR	r3,	=|Image$$RW_IRAM1$$RW$$Limit|  	
Copy_RW_Segment	
		CMP	r1,	r3
		
		;;;;;;LDRCC r2, [r0], #4  ;; CC -> Carry clear
		LDR r2, [r0, #4 ]
		
		;;STRCC r2, [r1], #4
		STR r2, [r1, #4]
		
		BCC	Copy_RW_Segment
		
		; Copy the ZI data segment from Flash to SRAM
		LDR r3, =|Image$$RW_IRAM1$$ZI$$Base|
		LDR	r1,	=|Image$$RW_IRAM1$$ZI$$Limit|
		
		;MOV	r2,	#0
		MOVS	r2,	#0
		
;Init_ZI_Segment	
;        CMP	r1,	r3
;		
;		;STRCC r2, [r3], #4
;		STR r2, [r3, #4]
;		
;		BCC	Init_ZI_Segment

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		; Enable FPU
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		; CPACR is located at address 0xE000ED88
		;LDR.W   R0, =0xE000ED88
		; Read CPACR
		;LDR     R1, [R0]
		; Set bits 20-23 to enable CP10 and CP11 coprocessors
		;ORR     R1, R1, #(0xF << 20)
		; Write back the modified value to the CPACR
		;STR     R1, [R0]; wait for store to complete
		;DSB
		;reset pipeline now the FPU is enabled
		;ISB
;******************** END ********************************************************************
;*********************************************************************************************

                 LDR     R0, =__main
                 BX      R0
                 ENDP

; Dummy Exception Handlers (infinite loops which can be modified)
EXTI0_1_IRQHandler PROC
	             
				 EXPORT EXTI0_1_IRQHandler  [WEAK]
					 
				 IMPORT __EXTI0_1_IRQHandler
				 LDR     R0, =__EXTI0_1_IRQHandler
                 BX      R0
				
				ENDP
NMI_Handler     PROC
                EXPORT  NMI_Handler                    [WEAK]
                B       .
                ENDP
HardFault_Handler\
                PROC
                EXPORT  HardFault_Handler              [WEAK]
                B       .
                ENDP
SVC_Handler     PROC
                EXPORT  SVC_Handler                    [WEAK]
                B       .
                ENDP
PendSV_Handler  PROC
                EXPORT  PendSV_Handler                 [WEAK]
                B       .
                ENDP
SysTick_Handler PROC
                EXPORT  SysTick_Handler                [WEAK]
                B       .
                ENDP

Default_Handler PROC

                EXPORT  WWDG_IRQHandler                [WEAK]
                EXPORT  PVD_IRQHandler                 [WEAK]
                EXPORT  RTC_TAMP_IRQHandler            [WEAK]
                EXPORT  FLASH_IRQHandler               [WEAK]
                EXPORT  RCC_IRQHandler                 [WEAK]
               
                EXPORT  EXTI2_3_IRQHandler             [WEAK]
                EXPORT  EXTI4_15_IRQHandler            [WEAK]
                EXPORT  DMA1_Channel1_IRQHandler       [WEAK]
                EXPORT  DMA1_Channel2_3_IRQHandler     [WEAK]
                EXPORT  DMA1_Ch4_5_DMAMUX1_OVR_IRQHandler [WEAK]
                EXPORT  ADC1_IRQHandler                [WEAK]
                EXPORT  TIM1_BRK_UP_TRG_COM_IRQHandler [WEAK]
                EXPORT  TIM1_CC_IRQHandler             [WEAK]
                EXPORT  TIM2_IRQHandler                [WEAK]
                EXPORT  TIM3_IRQHandler                [WEAK]
                EXPORT  LPTIM1_IRQHandler              [WEAK]
                EXPORT  LPTIM2_IRQHandler              [WEAK]
                EXPORT  TIM14_IRQHandler               [WEAK]
                EXPORT  TIM16_IRQHandler               [WEAK]
                EXPORT  TIM17_IRQHandler               [WEAK]
                EXPORT  I2C1_IRQHandler                [WEAK]
                EXPORT  I2C2_IRQHandler                [WEAK]
                EXPORT  SPI1_IRQHandler                [WEAK]
                EXPORT  SPI2_IRQHandler                [WEAK]
                EXPORT  USART1_IRQHandler              [WEAK]
                EXPORT  USART2_IRQHandler              [WEAK]
                EXPORT  LPUART1_IRQHandler             [WEAK]


WWDG_IRQHandler
PVD_IRQHandler
RTC_TAMP_IRQHandler
FLASH_IRQHandler
RCC_IRQHandler

EXTI2_3_IRQHandler
EXTI4_15_IRQHandler
DMA1_Channel1_IRQHandler
DMA1_Channel2_3_IRQHandler
DMA1_Ch4_5_DMAMUX1_OVR_IRQHandler
ADC1_IRQHandler
TIM1_BRK_UP_TRG_COM_IRQHandler
TIM1_CC_IRQHandler
TIM2_IRQHandler
TIM3_IRQHandler
LPTIM1_IRQHandler
LPTIM2_IRQHandler
TIM14_IRQHandler
TIM16_IRQHandler
TIM17_IRQHandler
I2C1_IRQHandler
I2C2_IRQHandler
SPI1_IRQHandler
SPI2_IRQHandler
USART1_IRQHandler
USART2_IRQHandler
LPUART1_IRQHandler

                B       .

                ENDP

                ALIGN

;*******************************************************************************
; User Stack and Heap initialization
;*******************************************************************************
                 IF      :DEF:__MICROLIB

                 EXPORT  __initial_sp
                 EXPORT  __heap_base
                 EXPORT  __heap_limit

                 ELSE

                 IMPORT  __use_two_region_memory
                 EXPORT  __user_initial_stackheap

__user_initial_stackheap

                 LDR     R0, =  Heap_Mem
                 LDR     R1, =(Stack_Mem + Stack_Size)
                 LDR     R2, = (Heap_Mem +  Heap_Size)
                 LDR     R3, = Stack_Mem
                 BX      LR

                 ALIGN

                 ENDIF

                 END
