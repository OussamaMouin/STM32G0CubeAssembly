;******************** (C) Younes LAHBIB ***************************************************************
; @file    stm32G0_constants.s
; @author  Younes LAHBIB
; @version V1.0.0
; @date    June-14-2023
; @note    based on the C code stm32g031xx.h (C) 2018-2021 STMicroelectronics.
; @brief   Assembly version of Cortex M0 plus core
;******************************************************************************************************
;******************************************************************************************************
;  *          This file contains:
;  *           - address mapping for all peripherals
;  *           - Peripheral's registers declarations and bits definition
;******************************************************************************************************

;/**
;  * @brief Configuration of the Cortex-M0+ Processor and Core Peripherals
; */
__CM0PLUS_REV   			EQU     	0     	; /*!< Core Revision r0p0                            */
__MPU_PRESENT    			EQU        	1		; /*!< STM32G0xx  provides an MPU                    */
__VTOR_PRESENT    			EQU        	1		; /*!< Vector  Table  Register supported             */
__NVIC_PRIO_BITS    		EQU      	2      	; /*!< STM32G0xx uses 2 Bits for the Priority Levels */
__Vendor_SysTickConfig    	EQU			0		; /*!< Set to 1 if different SysTick Config is used  */


;  STM32G0XX Interrupt Number Definition, according to the selected device

; ******  Cortex-M0+ Processor Exceptions Numbers ***************************************************************
NonMaskableInt_IRQn 		EQU  -14    ; 2 Non Maskable Interrupt
HardFault_IRQn      		EQU  -13    ; 4 Cortex-M0+ Memory Management Interrupt

SVCall_IRQn         		EQU  -5     ; 11 Cortex-M0+ SV Call Interrupt

PendSV_IRQn         		EQU  -2     ; 14 Cortex-M0+ Pend SV Interrupt
SysTick_IRQn        		EQU  -1     ; 15 Cortex-M0+ System Tick Interrupt
; ******  STM32 specific Interrupt Numbers *********************************************************************
WWDG_IRQn           		EQU  0      ; Window WatchDog Interrupt
PVD_IRQn	        		EQU  1      ; PVD through EXTI line 16
RTC_TAMP_IRQn		     	EQU  2      ; Tamper and TimeStamp interrupts, RTC interrupt through the EXTI line 19 & 21
FLASH_IRQn          		EQU  3      ; FLASH global Interrupt
RCC_IRQn            		EQU  4      ; RCC global Interrupt
EXTI0_1_IRQn          		EQU  5      ; EXTI Line0/1 Interrupt
EXTI2_3_IRQn          		EQU  6      ; EXTI Line2/3 Interrupt
EXTI4_15_IRQn          		EQU  7      ; EXTI Line 4 to 15 Interrupts

DMA1_Channel1_IRQn  		EQU  9     ; DMA1 Channel 1 global Interrupt
DMA1_Channel2_3_IRQn		EQU  10    ; DMA1 Channel 2/3 global Interrupt
DMA1_Ch4_5_DMAMUX1_OVR_IRQn EQU  11    ; DMA1 Channel 4 to Channel 5 and DMAMUX1 Overrun Interrupts       

ADC1_IRQn         			EQU  12     ; ADC1 global Interrupts

TIM1_BRK_UP_TRG_COM_IRQn	EQU  13     ; TIM1 Break, Update, Trigger and Commutation Interrupts
TIM1_CC_IRQn  				EQU  14     ; TIM1 Capture Compare Interrupt
TIM2_IRQn				    EQU  15     ; TIM2 Interrupt
TIM3_IRQn			        EQU  16     ; TIM3 global Interrupt
LPTIM1_IRQn			        EQU  17     ; LPTIM1 global Interrupts
LPTIM2_IRQn           		EQU  18     ; LPTIM2 global Interrupt
	
TIM14_IRQn			        EQU  19     ; TIM14 global Interrupt
	
TIM16_IRQn			        EQU  21     ; TIM16 global Interrupt
TIM17_IRQn					EQU  22     ; TIM17 global Interrupt
	
I2C1_IRQn			        EQU  23     ; I2C1 Interrupt  (combined with EXTI 23)  
I2C2_IRQn			        EQU  24     ; I2C2 Interrupt

SPI1_IRQn           		EQU  25     ; SPI1/I2S1 Interrupt
SPI2_IRQn           		EQU  26     ; SPI2 global Interrupt
	
USART1_IRQn         		EQU  27     ; USART1 global Interrupt
USART2_IRQn         		EQU  28     ; USART2 global Interrupt
LPUART1_IRQn		        EQU  29     ; LPUART1 globlal Interrupts (combined with EXTI 28)


;/**
;  * @brief Analog to Digital Converter
;  */
ADC_ISR							    EQU	0x00;          /*!< ADC interrupt and status register,             Address offset: 0x00 */
ADC_IER							    EQU	0x04;;          /*!< ADC interrupt enable register,                 Address offset: 0x04 */
ADC_CR							    EQU	0x08;;           /*!< ADC control register,                          Address offset: 0x08 */
ADC_CFGR1							EQU	0x0C;;        /*!< ADC configuration register 1,                  Address offset: 0x0C */
ADC_CFGR2							EQU	0x10;;        /*!< ADC configuration register 2,                  Address offset: 0x10 */
ADC_SMPR							EQU	0x14;;         /*!< ADC sampling time register,                    Address offset: 0x14 */
;       uint32_t RESERVED1;    /*!< Reserved,                                                      0x18 */
;       uint32_t RESERVED2;    /*!< Reserved,                                                      0x1C */
ADC_AWD1TR							EQU	0x20;;       /*!< ADC analog watchdog 1 threshold register,      Address offset: 0x20 */
ADC_AWD2TR							EQU	0x24;;       /*!< ADC analog watchdog 2 threshold register,      Address offset: 0x24 */
ADC_CHSELR							EQU	0x28;;       /*!< ADC group regular sequencer register,          Address offset: 0x28 */
ADC_AWD3TR							EQU	0x2C;;       /*!< ADC analog watchdog 3 threshold register,      Address offset: 0x2C */
;       uint32_t RESERVED3[4]; /*!< Reserved,                                               0x30 - 0x3C */
ADC_DR							    EQU	0x40;;           /*!< ADC group regular data register,               Address offset: 0x40 */
;       uint32_t RESERVED4[23];/*!< Reserved,                                               0x44 - 0x9C */
ADC_AWD2CR							EQU	0xA0;;       /*!< ADC analog watchdog 2 configuration register,  Address offset: 0xA0 */
ADC_AWD3CR							EQU	0xA4;;       /*!< ADC analog watchdog 3 configuration register,  Address offset: 0xA4 */
;       uint32_t RESERVED5[3]; /*!< Reserved,                                               0xA8 - 0xB0 */
ADC_CALFACT							EQU	0xB4;;      /*!< ADC Calibration factor register,               Address offset: 0xB4 */
ADC_CCR								EQU 0x308 ; 	/*!< ADC common configuration register,



;/**
;  * @brief CRC calculation unit
;  */

CRC_DR							    EQU 0x00;             /*!< CRC Data register,                         Address offset: 0x00 */
CRC_IDR							    EQU 0x04 ;            /*!< CRC Independent data register,             Address offset: 0x04 */
CRC_CR							    EQU 0x08 ;             /*!< CRC Control register,                      Address offset: 0x08 */
      ; uint32_t RESERVED1;      /*!< Reserved,                                                  0x0C */
CRC_INIT							EQU 0x10;           /*!< Initial CRC value register,                Address offset: 0x10 */
CRC_POL							    EQU 0x14;            /*!< CRC polynomial register,                   Address offset: 0x14 */


;/**
;  * @brief Debug MCU
;  */

DBG_IDCODE							    EQU 0x00;      /*!< MCU device ID code,              Address offset: 0x00 */
DBG_CR							    	EQU 0x04 ;          /*!< Debug configuration register,    Address offset: 0x04 */
DBG_APBFZ1							    EQU 0x08 ;      /*!< Debug APB freeze register 1,     Address offset: 0x08 */
DBG_APBFZ2							    EQU 0x0C ;      /*!< Debug APB freeze register 2,     Address offset: 0x0C */

;/**
;  * @brief DMA Controller
;  */

	;channel
DMA_CCR									EQU 0x00;         /*!< DMA channel x configuration register        */
DMA_CNDTR								EQU 0x04;       /*!< DMA channel x number of data register       */
DMA_CPAR								EQU 0x08;        /*!< DMA channel x peripheral address register   */
DMA_CMAR								EQU 0x0C;        /*!< DMA channel x memory address register       */
	; DMA
DMA_ISR									EQU 0x00;         /*!< DMA interrupt status register,                 Address offset: 0x00 */
DMA_IFCR								EQU 0x04;        /*!< DMA interrupt flag clear register,             Address offset: 0x04 */

	; DMA Multiplexer
DMAMUX_CCR								EQU 0x04; 		/*!< DMA Multiplexer Channel x Control Register    Address offset: 0x0004 * (channel x) */
DMAMUX_CSR								EQU 0x0080; 	/*!< DMA Channel Status Register
DMAMUX_CFR								EQU 0x0084; 	/*!< DMA Channel Clear Flag Register

DMAMUX_RG0CR							EQU 0x100 	;/*!< DMA Request Generator x Control Register     Address offset: 0x0100 + 0x0004 * (Req Gen x) */
DMAMUX_RG1CR							EQU 0x104 	;/*!< DMA Request Generator x Control Register     Address offset: 0x0100 + 0x0004 * (Req Gen x) */
DMAMUX_RG2CR							EQU 0x108 	;/*!< DMA Request Generator x Control Register     Address offset: 0x0100 + 0x0004 * (Req Gen x) */
DMAMUX_RG3CR							EQU 0x10C 	;/*!< DMA Request Generator x Control Register     Address offset: 0x0100 + 0x0004 * (Req Gen x) */
													;
DMAMUX_RGSR								EQU 0x0140; 	/*!< DMA Channel Status Register
DMAMUX_RGCFR							EQU 0x0144; 	/*!< DMA Channel Clear Flag Register


;/**
;  * @brief Asynch Interrupt/Event Controller (EXTI)
; */
EXTI_RTSR1									EQU 0x00;          /*!< EXTI Rising Trigger Selection Register 1,        Address offset:   0x00 */
EXTI_FTSR1									EQU 0x04;          /*!< EXTI Falling Trigger Selection Register 1,       Address offset:   0x04 */
EXTI_SWIER1									EQU 0x08;         /*!< EXTI Software Interrupt event Register 1,        Address offset:   0x08 */
EXTI_RPR1									EQU 0x0C;           /*!< EXTI Rising Pending Register 1,                  Address offset:   0x0C */
EXTI_FPR1									EQU 0x10;           /*!< EXTI Falling Pending Register 1,                 Address offset:   0x10 */
       ;uint32_t RESERVED1[3];   /*!< Reserved 1,                                                0x14 -- 0x1C */
       ;uint32_t RESERVED2[5];   /*!< Reserved 2,                                                0x20 -- 0x30 */
       ;uint32_t RESERVED3[11];  /*!< Reserved 3,                                                0x34 -- 0x5C */
EXTI_EXTICR									EQU 0x60;  [4];      /*!< EXTI External Interrupt Configuration Register,            0x60 -- 0x6C */
       ;uint32_t RESERVED4[4];   /*!< Reserved 4,                                                0x70 -- 0x7C */
EXTI_IMR1									EQU 0x80;           /*!< EXTI Interrupt Mask Register 1,                  Address offset:   0x80 */
EXTI_EMR1									EQU 0x84;           /*!< EXTI Event Mask Register 1,                      Address offset:   0x84 */

;/**
;  * @brief FLASH Registers
;  */

FLASH_ACR									EQU 0x00;          /*!< FLASH Access Control register,                     Address offset: 0x00 */
       ;uint32_t RESERVED1;    /*!< Reserved1,                                         Address offset: 0x04 */
FLASH_KEYR									EQU 0x08;         /*!< FLASH Key register,                                Address offset: 0x08 */
FLASH_OPTKEYR								EQU 0x0C;      /*!< FLASH Option Key register,                         Address offset: 0x0C */
FLASH_SR									EQU 0x10;           /*!< FLASH Status register,                             Address offset: 0x10 */
FLASH_CR									EQU 0x14;           /*!< FLASH Control register,                            Address offset: 0x14 */
FLASH_ECCR									EQU 0x18;         /*!< FLASH ECC register,                                Address offset: 0x18 */
       ;uint32_t RESERVED2;    /*!< Reserved2,                                         Address offset: 0x1C */
FLASH_OPTR									EQU 0x20;         /*!< FLASH Option register,                             Address offset: 0x20 */
FLASH_PCROP1ASR								EQU 0x24;    /*!< FLASH Bank PCROP area A Start address register,    Address offset: 0x24 */
FLASH_PCROP1AER								EQU 0x28;    /*!< FLASH Bank PCROP area A End address register,      Address offset: 0x28 */
FLASH_WRP1AR								EQU 0x2C;       /*!< FLASH Bank WRP area A address register,            Address offset: 0x2C */
FLASH_WRP1BR								EQU 0x30;       /*!< FLASH Bank WRP area B address register,            Address offset: 0x30 */
FLASH_PCROP1BSR								EQU 0x34;    /*!< FLASH Bank PCROP area B Start address register,    Address offset: 0x34 */
FLASH_PCROP1BER								EQU 0x38;    /*!< FLASH Bank PCROP area B End address register,      Address offset: 0x38 */
       ;uint32_t RESERVED8[17];/*!< Reserved8,                                         Address offset: 0x3C--0x7C */
FLASH_SECR									EQU 0x80;         /*!< FLASH security register ,                          Address offset: 0x80 */

;/**
;  * @brief General Purpose I/O
;  */

GPIO_MODER									EQU 0x00					;       /*!< GPIO port mode register,               Address offset: 0x00      */
GPIO_OTYPER									EQU 0x04;      /*!< GPIO port output type register,        Address offset: 0x04      */
GPIO_OSPEEDR								EQU 0x08;     /*!< GPIO port output speed register,       Address offset: 0x08      */
GPIO_PUPDR									EQU 0x0C;       /*!< GPIO port pull-up/pull-down register,  Address offset: 0x0C      */
GPIO_IDR									EQU 0x10;         /*!< GPIO port input data register,         Address offset: 0x10      */
GPIO_ODR									EQU 0x14;         /*!< GPIO port output data register,        Address offset: 0x14      */
GPIO_BSRR									EQU 0x18;        /*!< GPIO port bit set/reset  register,     Address offset: 0x18      */
GPIO_LCKR									EQU 0x1C;        /*!< GPIO port configuration lock register, Address offset: 0x1C      */
GPIO_AFR0									EQU 0x20;      /*!< GPIO alternate function registers,     Address offset: 0x20 */
GPIO_AFR1									EQU 0x24;      /*!< GPIO alternate function registers,     Address offset: 0x24 */
GPIO_BRR									EQU 0x28;         /*!< GPIO Bit Reset register,               Address offset: 0x28      */


;/**
;  * @brief Inter-integrated Circuit Interface
;  */

I2C_CR1										EQU 0x00;         /*!< I2C Control register 1,            Address offset: 0x00 */
I2C_CR2										EQU 0x04;         /*!< I2C Control register 2,            Address offset: 0x04 */
I2C_OAR1									EQU 0x08;        /*!< I2C Own address 1 register,        Address offset: 0x08 */
I2C_OAR2									EQU 0x0C;        /*!< I2C Own address 2 register,        Address offset: 0x0C */
I2C_TIMINGR									EQU 0x10;     /*!< I2C Timing register,               Address offset: 0x10 */
I2C_TIMEOUTR								EQU 0x14;    /*!< I2C Timeout register,              Address offset: 0x14 */
I2C_ISR										EQU 0x18;         /*!< I2C Interrupt and status register, Address offset: 0x18 */
I2C_ICR										EQU 0x1C;         /*!< I2C Interrupt clear register,      Address offset: 0x1C */
I2C_PECR									EQU 0x20;        /*!< I2C PEC register,                  Address offset: 0x20 */
I2C_RXDR									EQU 0x24;        /*!< I2C Receive data register,         Address offset: 0x24 */
I2C_TXDR									EQU 0x28;        /*!< I2C Transmit data register,        Address offset: 0x28 */

;/**
;  * @brief Independent WATCHDOG
;  */

IWDG_KR										EQU 0x00;          /*!< IWDG Key register,       Address offset: 0x00 */
IWDG_PR										EQU 0x04;          /*!< IWDG Prescaler register, Address offset: 0x04 */
IWDG_RLR									EQU 0x08;         /*!< IWDG Reload register,    Address offset: 0x08 */
IWDG_SR										EQU 0x0C;          /*!< IWDG Status register,    Address offset: 0x0C */
IWDG_WINR									EQU 0x10;        /*!< IWDG Window register,    Address offset: 0x10 */


;/**
;  * @brief LPTIMER
;  */

LPTIM_ISR									EQU 0x00;             /*!< LPTIM Interrupt and Status register,                Address offset: 0x00 */
LPTIM_ICR									EQU 0x04;             /*!< LPTIM Interrupt Clear register,                     Address offset: 0x04 */
LPTIM_IER									EQU 0x08;             /*!< LPTIM Interrupt Enable register,                    Address offset: 0x08 */
LPTIM_CFGR									EQU 0x0C;            /*!< LPTIM Configuration register,                       Address offset: 0x0C */
LPTIM_CR									EQU 0x10;              /*!< LPTIM Control register,                             Address offset: 0x10 */
LPTIM_CMP									EQU 0x14;             /*!< LPTIM Compare register,                             Address offset: 0x14 */
LPTIM_ARR									EQU 0x18;             /*!< LPTIM Autoreload register,                          Address offset: 0x18 */
LPTIM_CNT									EQU 0x1C;             /*!< LPTIM Counter register,                             Address offset: 0x1C */
;LPTIM_RESERVED1;        					EQU 0x20;			/*!< Reserved1,                                          Address offset: 0x20 */
LPTIM_CFGR2									EQU 0x24;           /*!< LPTIM Option register,                              Address offset: 0x24 */
                                            
;/**
;  * @brief Power Control
;  */

PWR_CR1										EQU 0x00;          /*!< PWR Power Control Register 1,                     Address offset: 0x00 */
PWR_CR2										EQU 0x04;          /*!< PWR Power Control Register 2,                     Address offset: 0x04 */
PWR_CR3										EQU 0x08;          /*!< PWR Power Control Register 3,                     Address offset: 0x08 */
PWR_CR4										EQU 0x0C;          /*!< PWR Power Control Register 4,                     Address offset: 0x0C */
PWR_SR1										EQU 0x10;          /*!< PWR Power Status Register 1,                      Address offset: 0x10 */
PWR_SR2										EQU 0x14;          /*!< PWR Power Status Register 2,                      Address offset: 0x14 */
PWR_SCR										EQU 0x18;          /*!< PWR Power Status Clear Register,                  Address offset: 0x18 */
       ;uint32_t RESERVED1										EQU 0x00    /*!< Reserved,                                         Address offset: 0x1C */
PWR_PUCRA									EQU 0x20    ;   /*!< PWR Pull-Up Control Register of port A,           Address offset: 0x20 */
PWR_PDCRA									EQU 0x24    ;   /*!< PWR Pull-Down Control Register of port A,         Address offset: 0x24 */
PWR_PUCRB									EQU 0x28    ;   /*!< PWR Pull-Up Control Register of port B,           Address offset: 0x28 */
PWR_PDCRB									EQU 0x2C    ;   /*!< PWR Pull-Down Control Register of port B,         Address offset: 0x2C */
PWR_PUCRC									EQU 0x30    ;   /*!< PWR Pull-Up Control Register of port C,           Address offset: 0x30 */
PWR_PDCRC									EQU 0x34    ;   /*!< PWR Pull-Down Control Register of port C,         Address offset: 0x34 */
PWR_PUCRD									EQU 0x38    ;   /*!< PWR Pull-Up Control Register of port D,           Address offset: 0x38 */
PWR_PDCRD									EQU 0x3C    ;   /*!< PWR Pull-Down Control Register of port D,         Address offset: 0x3C */
       ;uint32_t RESERVED2										EQU 0x00    /*!< Reserved,                                         Address offset: 0x40 */
       ;uint32_t RESERVED3										EQU 0x00    /*!< Reserved,                                         Address offset: 0x44 */
PWR_PUCRF									EQU 0x48    ;    /*!< PWR Pull-Up Control Register of port F,           Address offset: 0x48 */
PWR_PDCRF									EQU 0x4C    ;    /*!< PWR Pull-Down Control Register of port F,         Address offset: 0x4C */


;/**
;  * @brief Reset and Clock Control
;  */
RCC_CR										EQU 0x00 ;         /*!< RCC Clock Sources Control Register,                                     Address offset: 0x00 ;
RCC_ICSCR									EQU 0x04 ;      /*!< RCC Internal Clock Sources Calibration Register,                        	Address offset: 0x04 ;
RCC_CFGR									EQU 0x08 ;       /*!< RCC Regulated Domain Clocks Configuration Register,                     	Address offset: 0x08 ;
RCC_PLLCFGR									EQU 0x0C ;    /*!< RCC System PLL configuration Register,                                  		Address offset: 0x0C ;
RCC_RESERVED0								EQU 0x10 ;  /*!< Reserved,                                                               		Address offset: 0x10 ;
RCC_RESERVED1								EQU 0x14 ;  /*!< Reserved,                                                               		Address offset: 0x14 ;
RCC_CIER									EQU 0x18 ;       /*!< RCC Clock Interrupt Enable Register,                                    	Address offset: 0x18 ;
RCC_CIFR									EQU 0x1C ;       /*!< RCC Clock Interrupt Flag Register,                                      	Address offset: 0x1C ;
RCC_CICR									EQU 0x20 ;       /*!< RCC Clock Interrupt Clear Register,                                     	Address offset: 0x20 ;
RCC_IOPRSTR									EQU 0x24 ;    /*!< RCC IO port reset register,                                             		Address offset: 0x24 ;
RCC_AHBRSTR									EQU 0x28 ;    /*!< RCC AHB peripherals reset register,                                     		Address offset: 0x28 ;
RCC_APBRSTR1								EQU 0x2C ;   /*!< RCC APB peripherals reset register 1,                                   		Address offset: 0x2C ;
RCC_APBRSTR2								EQU 0x30 ;   /*!< RCC APB peripherals reset register 2,                                   		Address offset: 0x30 ;
RCC_IOPENR									EQU 0x34 ;     /*!< RCC IO port enable register,                                            	Address offset: 0x34 ;
RCC_AHBENR									EQU 0x38 ;     /*!< RCC AHB peripherals clock enable register,                              	Address offset: 0x38 ;
RCC_APBENR1									EQU 0x3C ;    /*!< RCC APB peripherals clock enable register1,                             		Address offset: 0x3C ;
RCC_APBENR2									EQU 0x40 ;    /*!< RCC APB peripherals clock enable register2,                             		Address offset: 0x40 ;
RCC_IOPSMENR								EQU 0x44 ;   /*!< RCC IO port clocks enable in sleep mode register,                       		Address offset: 0x44 ;
RCC_AHBSMENR								EQU 0x48 ;   /*!< RCC AHB peripheral clocks enable in sleep mode register,                		Address offset: 0x48 ;
RCC_APBSMENR1								EQU 0x4C ;  /*!< RCC APB peripheral clocks enable in sleep mode register1,               		Address offset: 0x4C ;
RCC_APBSMENR2								EQU 0x50 ;  /*!< RCC APB peripheral clocks enable in sleep mode register2,               		Address offset: 0x50 ;
RCC_CCIPR									EQU 0x54 ;      /*!< RCC Peripherals Independent Clocks Configuration Register,              	Address offset: 0x54 ;
RCC_RESERVED2								EQU 0x58 ;  /*!< Reserved,                                                               		Address offset: 0x58 ;
RCC_BDCR									EQU 0x5C ;       /*!< RCC Backup Domain Control Register,                                     	Address offset: 0x5C ;
RCC_CSR										EQU 0x60 ;        /*!< RCC Unregulated Domain Clock Control and Status Register,               	Address offset: 0x60 */
;;} RCC_TypeDef;

;/**
;  * @brief Real-Time Clock
;  */
RTC_TR										EQU 0x00 ;         ;!< RTC time register,                                         Address offset: 0x00 */
RTC_DR										EQU 0x04 ;         ;!< RTC date register,                                         Address offset: 0x04 */
RTC_SSR										EQU 0x08 ;        ;!< RTC sub second register,                                   Address offset: 0x08 */
RTC_ICSR									EQU 0x0C ;       ;!< RTC initialization control and status register,            Address offset: 0x0C */
RTC_PRER									EQU 0x10 ;       ;!< RTC prescaler register,                                    Address offset: 0x10 */
RTC_WUTR									EQU 0x14 ;       ;!< RTC wakeup timer register,                                 Address offset: 0x14 */
RTC_CR										EQU 0x18 ;         ;!< RTC control register,                                      Address offset: 0x18 */
       ;uint32_t RESERVED0;   /*!< Reserved                                                   Address offset: 0x1C */
       ;uint32_t RESERVED1;   /*!< Reserved                                                   Address offset: 0x20 */
RTC_WPR										EQU 0x24 ;        ;!< RTC write protection register,                             Address offset: 0x24 */
RTC_CALR									EQU 0x28 ;       ;!< RTC calibration register,                                  Address offset: 0x28 */
RTC_SHIFTR									EQU 0x2C ;     ;!< RTC shift control register,                                Address offset: 0x2C */
RTC_TSTR									EQU 0x30 ;       ;!< RTC time stamp time register,                              Address offset: 0x30 */
RTC_TSDR									EQU 0x34 ;       ;!< RTC time stamp date register,                              Address offset: 0x34 */
RTC_TSSSR									EQU 0x38 ;      ;!< RTC time-stamp sub second register,                        Address offset: 0x38 */
       ;uint32_t RESERVED2										EQU 0x00   /*!< Reserved                                                   Address offset: 0x1C */
RTC_ALRMAR									EQU 0x40 ;     ;!< RTC alarm A register,                                      Address offset: 0x40 */
RTC_ALRMASSR								EQU 0x44 ;   ;!< RTC alarm A sub second register,                           Address offset: 0x44 */
RTC_ALRMBR									EQU 0x48 ;     ;!< RTC alarm B register,                                      Address offset: 0x48 */
RTC_ALRMBSSR								EQU 0x4C ;   ;!< RTC alarm B sub second register,                           Address offset: 0x4C */
RTC_SR										EQU 0x50 ;         ;!< RTC Status register,                                       Address offset: 0x50 */
RTC_MISR									EQU 0x54 ;       ;!< RTC Masked Interrupt Status register,                      Address offset: 0x54 */
       ;uint32_t RESERVED3						0x58 ;			EQU 0x00   /*!< Reserved                                                   Address offset: 0x58 */
RTC_SCR										EQU 0x5C ;        ;!< RTC Status Clear register,                                 Address offset: 0x5C */
RTC_OR										EQU 0x60 ;         ;!< RTC option register,                                       Address offset: 0x60 */


;/**
;  * @brief Tamper and backup registers
;  */
TAMP_CR1									EQU 0x00 ;!< TAMP configuration register 1,                             Address offset: 0x00 */
TAMP_CR2									EQU 0x04 ;!< TAMP configuration register 2,                             Address offset: 0x04 */
       ;uint32_t RESERVED0;      /*!< Reserved                                                   Address offset: 0x08 */
TAMP_FLTCR									EQU 0x0C ;          /*!< Reserved                                                   Address offset: 0x0C */
       ;uint32_t RESERVED1[7];   /*!< Reserved                                                   Address offset: 0x10 -- 0x28 */
TAMP_IER									EQU 0x2C ;!< TAMP Interrupt enable register,                            Address offset: 0x2C */
TAMP_SR										EQU 0x30 ;             /*!< TAMP Status register,                                      Address offset: 0x30 */
TAMP_MISR									EQU 0x34 ;           /*!< TAMP Masked Interrupt Status register,                     Address offset: 0x34 */
       ;uint32_t RESERVED2;      /*!< Reserved                                                   Address offset: 0x38 */
TAMP_SCR									EQU 0x3C ;!< TAMP Status clear register,                                Address offset: 0x3C */
       ;uint32_t RESERVED3[48];  /*!< Reserved                                                   Address offset: 0x54 -- 0xFC */
TAMP_BKP0R									EQU 0x100 ;          /*!< TAMP backup register 0,                                    Address offset: 0x100 */
TAMP_BKP1R									EQU 0x104 ;          /*!< TAMP backup register 1,                                    Address offset: 0x104 */
TAMP_BKP2R									EQU 0x108 ;          /*!< TAMP backup register 2,                                    Address offset: 0x108 */
TAMP_BKP3R									EQU 0x10C ;          /*!< TAMP backup register 3,                                    Address offset: 0x10C */
TAMP_BKP4R									EQU 0x110 ;          /*!< TAMP backup register 4,                                    Address offset: 0x110 */




;  /**
;  * @brief Serial Peripheral Interface
;  */
SPI_CR1									EQU 0x00 ; ;						;      /*!< SPI Control register 1 (not used in I2S mode),       Address offset: 0x00 */
SPI_CR2									EQU 0x04 ; ;;      /*!< SPI Control register 2,                              Address offset: 0x04 */
SPI_SR									EQU 0x08 ; ;;       /*!< SPI Status register,                                 Address offset: 0x08 */
SPI_DR									EQU 0x0C ; ;;       /*!< SPI data register,                                   Address offset: 0x0C */
SPI_CRCPR								EQU 0x10 ; ;;    /*!< SPI CRC polynomial register (not used in I2S mode),  Address offset: 0x10 */
SPI_RXCRCR								EQU 0x14 ; ;;   /*!< SPI Rx CRC register (not used in I2S mode),          Address offset: 0x14 */
SPI_TXCRCR								EQU 0x18 ; ;;   /*!< SPI Tx CRC register (not used in I2S mode),          Address offset: 0x18 */
SPI_I2SCFGR								EQU 0x1C ; ;;  /*!< SPI_I2S configuration register,                      Address offset: 0x1C */
SPI_I2SPR								EQU 0x20 ; ;;    /*!< SPI_I2S prescaler register,                          Address offset: 0x20 */





;/**
;  * @brief System configuration controller
;  */
SYSCFG_CFGR1									EQU 0x00 ;;          /*!< SYSCFG configuration register 1,                   Address offset: 0x00 */
       ;;uint32_t RESERVED0[5];   /*!< Reserved,                                                   0x04 --0x14 */
SYSCFG_CFGR2									EQU 0x18 ;;          /*!< SYSCFG configuration register 2,                   Address offset: 0x18 */
       ;;uint32_t RESERVED1[25];  /*!< Reserved                                                           0x1C */
		;SYSCFG__IT_LINE_SR[32]; /*!< SYSCFG configuration IT_LINE register,             Address offset: 0x80 */
SYSCFG_ITLINE0									EQU 0x80 ;




;/**
;  * @brief TIM
;  */
TIM_CR1   								EQU 0x00 ;!< TIM control register 1,                   Address offset: 0x00 */
TIM_CR2   								EQU 0x04 ;!< TIM control register 2,                   Address offset: 0x04 */
TIM_SMCR  								EQU 0x08 ;!< TIM slave mode control register,          Address offset: 0x08 */
TIM_DIER  								EQU 0x0C ;!< TIM DMA/interrupt enable register,        Address offset: 0x0C */
TIM_SR    								EQU 0x10 ;!< TIM status register,                      Address offset: 0x10 */
TIM_EGR   								EQU 0x14 ;!< TIM event generation register,            Address offset: 0x14 */
TIM_CCMR1 								EQU 0x18 ;!< TIM capture/compare mode register 1,      Address offset: 0x18 */
TIM_CCMR2 								EQU 0x1C ;!< TIM capture/compare mode register 2,      Address offset: 0x1C */
TIM_CCER  								EQU 0x20 ;!< TIM capture/compare enable register,      Address offset: 0x20 */
TIM_CNT   								EQU 0x24 ;!< TIM counter register,                     Address offset: 0x24 */
TIM_PSC   								EQU 0x28 ;!< TIM prescaler register,                   Address offset: 0x28 */
TIM_ARR   								EQU 0x2C ;!< TIM auto-reload register,                 Address offset: 0x2C */
TIM_RCR   								EQU 0x30 ;!< TIM repetition counter register,          Address offset: 0x30 */
TIM_CCR1  								EQU 0x34 ;!< TIM capture/compare register 1,           Address offset: 0x34 */
TIM_CCR2  								EQU 0x38 ;!< TIM capture/compare register 2,           Address offset: 0x38 */
TIM_CCR3  								EQU 0x3C ;!< TIM capture/compare register 3,           Address offset: 0x3C */
TIM_CCR4  								EQU 0x40 ;!< TIM capture/compare register 4,           Address offset: 0x40 */
TIM_BDTR  								EQU 0x44 ;!< TIM break and dead-time register,         Address offset: 0x44 */
TIM_DCR   								EQU 0x48 ;!< TIM DMA control register,                 Address offset: 0x48 */
TIM_DMAR  								EQU 0x4C ;!< TIM DMA address for full transfer,        Address offset: 0x4C */
TIM_OR1   								EQU 0x50 ;!< TIM option register,                      Address offset: 0x50 */
TIM_CCMR3 								EQU 0x54 ;!< TIM capture/compare mode register 3,      Address offset: 0x54 */
TIM_CCR5  								EQU 0x58 ;!< TIM capture/compare register5,            Address offset: 0x58 */
TIM_CCR6  								EQU 0x5C ;!< TIM capture/compare register6,            Address offset: 0x5C */
TIM_AF1   								EQU 0x60 ;!< TIM alternate function register 1,        Address offset: 0x60 */
TIM_AF2   								EQU 0x64 ;!< TIM alternate function register 2,        Address offset: 0x64 */
TIM_TISEL 								EQU 0x68 ;!< TIM Input Selection register,             Address offset: 0x68 */


;/**
;  * @brief Universal Synchronous Asynchronous Receiver Transmitter
;  */

USART_CR1									EQU 0x00  ;         /*!< USART Control register 1,                 Address offset: 0x00  */
USART_CR2									EQU 0x04  ;         /*!< USART Control register 2,                 Address offset: 0x04  */
USART_CR3									EQU 0x08  ;         /*!< USART Control register 3,                 Address offset: 0x08  */
USART_BRR									EQU 0x0C  ;         /*!< USART Baud rate register,                 Address offset: 0x0C  */
USART_GTPR									EQU 0x10  ;        /*!< USART Guard time and prescaler register,  Address offset: 0x10  */
USART_RTOR									EQU 0x14  ;        /*!< USART Receiver Time Out register,         Address offset: 0x14  */
USART_RQR									EQU 0x18  ;         /*!< USART Request register,                   Address offset: 0x18  */
USART_ISR									EQU 0x1C  ;         /*!< USART Interrupt and status register,      Address offset: 0x1C  */
USART_ICR									EQU 0x20  ;         /*!< USART Interrupt flag Clear register,      Address offset: 0x20  */
USART_RDR									EQU 0x24  ;         /*!< USART Receive Data register,              Address offset: 0x24  */
USART_TDR									EQU 0x28  ;         /*!< USART Transmit Data register,             Address offset: 0x28  */
USART_PRESC									EQU 0x2C  ;       /*!< USART Prescaler register,                 Address offset: 0x2C  */


;/**
;  * @brief VREFBUF
;  */

VREFBUF_CSR									EQU 0x00  ;          /*!< VREFBUF control and status register,         Address offset: 0x00 */
VREFBUF_CCR									EQU 0x04  ;          /*!< VREFBUF calibration and control register,    Address offset: 0x04 */


;/**
;  * @brief Window WATCHDOG
;  */

WWDG_CR										EQU 0x00  ;          /*!< WWDG Control register,       Address offset: 0x00 */
WWDG_CFR									EQU 0x04  ;        	 /*!< WWDG Configuration register, Address offset: 0x04 */
WWDG_SR										EQU 0x08  ;          /*!< WWDG Status register,        Address offset: 0x08 */


;;***********************************************************************************************
;;***********************************************************************************************
;;***********************************************************************************************
;/** @addtogroup Peripheral_memory_map
;  * @{
;  */
FLASH_BASE         							EQU	(0x08000000);/*!< FLASH base address */
SRAM_BASE          							EQU	(0x20000000);/*!< SRAM base address */
PERIPH_BASE        							EQU	(0x40000000);/*!< Peripheral base address */
IOPORT_BASE        							EQU	(0x50000000);/*!< IOPORT base address */
SRAM_SIZE_MAX      							EQU	(0x00002000);/*!< maximum SRAM size (up to 8 KBytes) */

;;FLASH_SIZE          						EQU	      (((*((uint32_t *)FLASHSIZE_BASE)) & (0x007FU)) << 10U)

;;/*!< Peripheral memory map */
APBPERIPH_BASE       						EQU       (PERIPH_BASE)
AHBPERIPH_BASE       						EQU       (PERIPH_BASE + 0x00020000)

;;/*!< APB peripherals */

TIM2_BASE           							EQU	(APBPERIPH_BASE + 0)
TIM3_BASE           							EQU	(APBPERIPH_BASE + 0x00000400)
TIM14_BASE          							EQU	(APBPERIPH_BASE + 0x00002000)
RTC_BASE            							EQU	(APBPERIPH_BASE + 0x00002800)
WWDG_BASE           							EQU	(APBPERIPH_BASE + 0x00002C00)
IWDG_BASE           							EQU	(APBPERIPH_BASE + 0x00003000)
SPI2_BASE           							EQU	(APBPERIPH_BASE + 0x00003800)
USART2_BASE         							EQU	(APBPERIPH_BASE + 0x00004400)
I2C1_BASE           							EQU	(APBPERIPH_BASE + 0x00005400)
I2C2_BASE           							EQU	(APBPERIPH_BASE + 0x00005800)
PWR_BASE            							EQU	(APBPERIPH_BASE + 0x00007000)
LPTIM1_BASE         							EQU	(APBPERIPH_BASE + 0x00007C00)
LPUART1_BASE        							EQU	(APBPERIPH_BASE + 0x00008000)
LPTIM2_BASE         							EQU	(APBPERIPH_BASE + 0x00009400)
TAMP_BASE           							EQU	(APBPERIPH_BASE + 0x0000B000)
SYSCFG_BASE         							EQU	(APBPERIPH_BASE + 0x00010000)
VREFBUF_BASE        							EQU	(APBPERIPH_BASE + 0x00010030)
ADC1_BASE           							EQU	(APBPERIPH_BASE + 0x00012400)
ADC1_COMMON_BASE       							EQU	(APBPERIPH_BASE + 0x00012708)
ADC_BASE               							EQU	(ADC1_COMMON_BASE) ;;;; /* Kept for legacy purpose */
TIM1_BASE              							EQU	(APBPERIPH_BASE + 0x00012C00)
SPI1_BASE              							EQU	(APBPERIPH_BASE + 0x00013000)
USART1_BASE            							EQU	(APBPERIPH_BASE + 0x00013800)
TIM16_BASE             							EQU	(APBPERIPH_BASE + 0x00014400)
TIM17_BASE             							EQU	(APBPERIPH_BASE + 0x00014800)
DBG_BASE               							EQU	(APBPERIPH_BASE + 0x00015800)


;;/*!< AHB peripherals */
DMA1_BASE                   					EQU	   (AHBPERIPH_BASE)
DMAMUX1_BASE                					EQU	   (AHBPERIPH_BASE + 0x00000800)
RCC_BASE                    					EQU	   (AHBPERIPH_BASE + 0x00001000)
EXTI_BASE                   					EQU	   (AHBPERIPH_BASE + 0x00001800)  ;; 0x4002 1800
FLASH_R_BASE                					EQU	   (AHBPERIPH_BASE + 0x00002000)
CRC_BASE                    					EQU	   (AHBPERIPH_BASE + 0x00003000)


DMA1_Channel1_BASE                				EQU	   (DMA1_BASE + 0x00000008)
DMA1_Channel2_BASE                				EQU	   (DMA1_BASE + 0x0000001C)
DMA1_Channel3_BASE                				EQU	   (DMA1_BASE + 0x00000030)
DMA1_Channel4_BASE                				EQU	   (DMA1_BASE + 0x00000044)
DMA1_Channel5_BASE                				EQU	   (DMA1_BASE + 0x00000058)

DMAMUX1_Channel0_BASE                			EQU	  (DMAMUX1_BASE)
DMAMUX1_Channel1_BASE                			EQU	  (DMAMUX1_BASE + 0x00000004)
DMAMUX1_Channel2_BASE                			EQU	  (DMAMUX1_BASE + 0x00000008)
DMAMUX1_Channel3_BASE                			EQU	  (DMAMUX1_BASE + 0x0000000C)
DMAMUX1_Channel4_BASE                			EQU	  (DMAMUX1_BASE + 0x00000010)

DMAMUX1_RequestGenerator0_BASE        			EQU	  (DMAMUX1_BASE + 0x00000100)
DMAMUX1_RequestGenerator1_BASE        			EQU	  (DMAMUX1_BASE + 0x00000104)
DMAMUX1_RequestGenerator2_BASE        			EQU	  (DMAMUX1_BASE + 0x00000108)
DMAMUX1_RequestGenerator3_BASE        			EQU	  (DMAMUX1_BASE + 0x0000010C)

DMAMUX1_ChannelStatus_BASE            			EQU	   (DMAMUX1_BASE + 0x00000080)
DMAMUX1_RequestGenStatus_BASE         			EQU	   (DMAMUX1_BASE + 0x00000140)
							          				  
;;;/*!< IOPORT */
GPIOA_BASE                   					EQU	   (IOPORT_BASE + 0x00000000)
GPIOB_BASE                   					EQU	   (IOPORT_BASE + 0x00000400)
GPIOC_BASE                   					EQU	   (IOPORT_BASE + 0x00000800)
GPIOD_BASE                   					EQU	   (IOPORT_BASE + 0x00000C00)
GPIOF_BASE                   					EQU	   (IOPORT_BASE + 0x00001400)

;;;/*!< Device Electronic Signature */
PACKAGE_BASE                     				EQU	   (0x1FFF7500)   ;     /*!< Package data register base address     */
UID_BASE                         				EQU	   (0x1FFF7590)   ;     /*!< Unique device ID register base address */
FLASHSIZE_BASE                   				EQU	   (0x1FFF75E0)   ;     /*!< Flash size data register base address  */

;/**
;  * @}
;  */
TIM2                EQU		TIM2_BASE
TIM3                EQU		TIM3_BASE 
TIM14               EQU		TIM14_BASE 
RTC                 EQU		RTC_BASE 
TAMP                EQU		TAMP_BASE 
WWDG                EQU		WWDG_BASE 
IWDG                EQU		IWDG_BASE 
SPI2                EQU		SPI2_BASE 
USART2              EQU		USART2_BASE 
I2C1                EQU		I2C1_BASE 
I2C2                EQU		I2C2_BASE 
LPTIM1              EQU		LPTIM1_BASE 
PWR                 EQU		PWR_BASE 
RCC                 EQU		RCC_BASE 
EXTI                EQU        EXTI_BASE 
LPUART1             EQU        LPUART1_BASE 
LPTIM2              EQU        LPTIM2_BASE 
SYSCFG              EQU        SYSCFG_BASE 
VREFBUF             EQU        VREFBUF_BASE 
TIM1                EQU        TIM1_BASE 
SPI1                EQU        SPI1_BASE 
USART1              EQU        USART1_BASE 
TIM16               EQU        TIM16_BASE 
TIM17               EQU        TIM17_BASE 
DMA1                EQU        DMA1_BASE 
FLASH               EQU        FLASH_R_BASE 
CRC                 EQU        CRC_BASE 
GPIOA               EQU        GPIOA_BASE 
GPIOB               EQU        GPIOB_BASE 
GPIOC               EQU        GPIOC_BASE 
GPIOD               EQU        GPIOD_BASE 
GPIOF               EQU        GPIOF_BASE 
ADC1                EQU        ADC1_BASE 
ADC1_COMMON         EQU        ADC1_COMMON_BASE
;ADC                 (ADC1_COMMON) /* Kept for legacy purpose */



DMA1_Channel1          EQU DMA1_Channel1_BASE 
DMA1_Channel2          EQU DMA1_Channel2_BASE 
DMA1_Channel3          EQU DMA1_Channel3_BASE 
DMA1_Channel4          EQU DMA1_Channel4_BASE 
DMA1_Channel5          EQU DMA1_Channel5_BASE 
DMAMUX1                EQU DMAMUX1_BASE 
DMAMUX1_Channel0       EQU DMAMUX1_Channel0_BASE 
DMAMUX1_Channel1       EQU DMAMUX1_Channel1_BASE 
DMAMUX1_Channel2       EQU DMAMUX1_Channel2_BASE 
DMAMUX1_Channel3       EQU DMAMUX1_Channel3_BASE 
DMAMUX1_Channel4       EQU DMAMUX1_Channel4_BASE 

DMAMUX1_RequestGenerator0  EQU DMAMUX1_RequestGenerator0_BASE 
DMAMUX1_RequestGenerator1  EQU DMAMUX1_RequestGenerator1_BASE 
DMAMUX1_RequestGenerator2  EQU DMAMUX1_RequestGenerator2_BASE 
DMAMUX1_RequestGenerator3  EQU DMAMUX1_RequestGenerator3_BASE 

DMAMUX1_ChannelStatus      EQU DMAMUX1_ChannelStatus_BASE
DMAMUX1_RequestGenStatus   EQU DMAMUX1_RequestGenStatus_BASE

;DBG              ((DBG_TypeDef *) DBG_BASE)
DBG1              EQU DBG_BASE



; *****************************************************************************
;                      Peripheral Registers_Bits_Definition
; *****************************************************************************
; *****************************************************************************
;                        Analog to Digital Converter
; *****************************************************************************
; ********************  Bit definition for ADC_ISR register  *******************
ADC_ISR_ADRDY EQU (0x00000001) ; ADC Ready (ADRDY) flag
ADC_ISR_EOSMP EQU (0x00000002) ; ADC End of Sampling flag
ADC_ISR_EOC   EQU (0x00000004) ; ADC End of Regular Conversion flag
ADC_ISR_EOS   EQU (0x00000008) ; ADC End of Regular sequence of Conversions flag
ADC_ISR_OVR   EQU (0x00000010) ; ADC overrun flag
;ADC_ISR_JEOC  EQU (0x00000020) ; ADC End of Injected Conversion flag
;ADC_ISR_JEOS  EQU (0x00000040) ; ADC End of Injected sequence of Conversions flag
ADC_ISR_AWD1  EQU (0x00000080) ; ADC Analog watchdog 1 flag
ADC_ISR_AWD2  EQU (0x00000100) ; ADC Analog watchdog 2 flag
ADC_ISR_AWD3  EQU (0x00000200) ; ADC Analog watchdog 3 flag
ADC_ISR_EOCAL EQU (0x00000800) ; ADC end of calibration flag
ADC_ISR_CCRDY EQU (0x00002000) ; ADC channel configuration ready flag 
	
;/********************  Bit definition for ADC_IER register  *******************/
ADC_IER_ADRDYIE        		EQU        (0x00000001)                  ;  /*!< ADC ready interrupt */
ADC_IER_EOSMPIE         	EQU        (0x00000002)                  ;   /*!< ADC group regular end of sampling interrupt */
ADC_IER_EOCIE          		EQU        (0x00000004)                  ;/*!< ADC group regular end of unitary conversion interrupt */
ADC_IER_EOSIE               EQU   	   (0x00000008)                  ;/*!< ADC group regular end of sequence conversions interrupt */
ADC_IER_OVRIE               EQU   	   (0x00000010)                  ;     /*!< ADC group regular overrun interrupt */
ADC_IER_AWD1IE              EQU    	   (0x00000080)                 ; /*!< ADC analog watchdog 1 interrupt */
ADC_IER_AWD2IE              EQU 	   (0x00000100) 				; ADC Analog watchdog 2 interrupt source
ADC_IER_AWD3IE				EQU 	   (0x00000200) 				; ADC Analog watchdog 3 interrupt source
ADC_IER_EOCALIE 			EQU 	   (0x00000800) 				; ADC end of calibration interrupt 
ADC_IER_CCRDYIE 			EQU 	   (0x00002000) 				; ADC channel configuration ready interrupt

;/********************  Bit definition for ADC_CR register  ********************/
ADC_CR_ADEN            EQU        (0x00000001);                         /*!< ADC enable */
ADC_CR_ADDIS           EQU        (0x00000002);                       /*!< ADC disable */
ADC_CR_ADSTART         EQU        (0x00000004) ;                     /*!< ADC group regular conversion start */
ADC_CR_ADSTP           EQU        (0x00000010);                        /*!< ADC group regular conversion stop */
ADC_CR_ADVREGEN        EQU        (0x10000000);                     /*!< ADC voltage regulator enable */
ADC_CR_ADCAL           EQU        (0x80000000);                       /*!< ADC calibration */

;/********************  Bit definition for ADC_CFGR1 register  *****************/

ADC_CFGR1_DMAEN         EQU       (0x00000001);                     /*!< ADC DMA transfer enable */
ADC_CFGR1_DMACFG        EQU       (0x00000002);                    /*!< ADC DMA transfer configuration */
ADC_CFGR1_SCANDIR       EQU       (0x00000004);                   /*!< ADC group regular sequencer scan direction */
ADC_CFGR1_RES           EQU       (0x00000018);                      /*!< ADC data resolution */
ADC_CFGR1_RES_0         EQU       (0x00000008);            /*!< 0x00000008 */
ADC_CFGR1_RES_1         EQU       (0x00000010);            /*!< 0x00000010 */
ADC_CFGR1_ALIGN         EQU       (0x00000020);                     /*!< ADC data alignment */
ADC_CFGR1_EXTSEL        EQU       (0x000001C0);                    /*!< ADC group regular external trigger source */
ADC_CFGR1_EXTSEL_0      EQU       (0x00000040);         /*!< 0x00000040 */
ADC_CFGR1_EXTSEL_1      EQU       (0x00000080);         /*!< 0x00000080 */
ADC_CFGR1_EXTSEL_2      EQU       (0x00000100);         /*!< 0x00000100 */
ADC_CFGR1_EXTEN         EQU       (0x00000C00);             /*!< ADC group regular external trigger polarity */
ADC_CFGR1_EXTEN_0       EQU       (0x00000400) ;         /*!< 0x00000400 */
ADC_CFGR1_EXTEN_1       EQU       (0x00000800)  ;        /*!< 0x00000800 */
ADC_CFGR1_OVRMOD        EQU       (0x00001000);                    /*!< ADC group regular overrun configuration */
ADC_CFGR1_CONT          EQU       (0x00002000 );                     /*!< ADC group regular continuous conversion mode */
ADC_CFGR1_WAIT          EQU       (0x00004000);                      /*!< ADC low power auto wait */
ADC_CFGR1_AUTOFF        EQU       (0x00008000);                    /*!< ADC low power auto power off */
ADC_CFGR1_DISCEN        EQU       (0x00010000 );                   /*!< ADC group regular sequencer discontinuous mode */
ADC_CFGR1_CHSELRMOD     EQU       (0x00200000);                 /*!< ADC group regular sequencer mode */
ADC_CFGR1_AWD1SGL       EQU       (0x00400000);                   /*!< ADC analog watchdog 1 monitoring a single channel or all channels */
ADC_CFGR1_AWD1EN        EQU       (0x00800000);                    /*!< ADC analog watchdog 1 enable on scope ADC group regular */
ADC_CFGR1_AWD1CH        EQU       (0x7C000000);                    /*!< ADC analog watchdog 1 monitored channel selection */
ADC_CFGR1_AWD1CH_0      EQU       (0x04000000);        /*!< 0x04000000 */
ADC_CFGR1_AWD1CH_1      EQU       (0x08000000);        /*!< 0x08000000 */
ADC_CFGR1_AWD1CH_2      EQU       (0x10000000);        /*!< 0x10000000 */
ADC_CFGR1_AWD1CH_3      EQU       (0x20000000);        /*!< 0x20000000 */
ADC_CFGR1_AWD1CH_4      EQU       (0x40000000);       /*!< 0x40000000 */

;/* Legacy defines */
ADC_CFGR1_AUTDLY        EQU  (ADC_CFGR1_WAIT)

;/********************  Bit definition for ADC_CFGR2 register  *****************/

ADC_CFGR2_OVSE       EQU         (0x00000001)   ;                  /*!< ADC oversampler enable on scope ADC group regular */
ADC_CFGR2_OVSR       EQU         (0x0000001C)   ;                  /*!< ADC oversampling ratio */
ADC_CFGR2_OVSR_0     EQU         (0x00000004)   ;       /*!< 0x00000004 */
ADC_CFGR2_OVSR_1     EQU         (0x00000008)   ;       /*!< 0x00000008 */
ADC_CFGR2_OVSR_2     EQU         (0x00000010)   ;       /*!< 0x00000010 */
ADC_CFGR2_OVSS       EQU         (0x000001E0)   ;                  /*!< ADC oversampling shift */
ADC_CFGR2_OVSS_0     EQU         (0x00000020)   ;       /*!< 0x00000020 */
ADC_CFGR2_OVSS_1     EQU         (0x00000040)   ;       /*!< 0x00000040 */
ADC_CFGR2_OVSS_2     EQU         (0x00000080)   ;       /*!< 0x00000080 */
ADC_CFGR2_OVSS_3     EQU         (0x00000100)   ;       /*!< 0x00000100 */
ADC_CFGR2_TOVS       EQU         (0x00000200)   ;                  /*!< ADC oversampling discontinuous mode (triggered mode) for ADC group regular */
ADC_CFGR2_LFTRIG     EQU         (0x20000000)   ;                /*!< ADC low frequency trigger mode */
ADC_CFGR2_CKMODE     EQU         (0xC0000000)   ;                /*!< ADC clock source and prescaler (prescaler only for clock source synchronous) */
ADC_CFGR2_CKMODE_1   EQU         (0x80000000)   ;     /*!< 0x80000000 */
ADC_CFGR2_CKMODE_0   EQU         (0x40000000)   ;     /*!< 0x40000000 */

;/********************  Bit definition for ADC_SMPR register  ******************/
ADC_SMPR_SMP1        EQU          (0x00000007);                       /*!< ADC group of channels sampling time 1 */
ADC_SMPR_SMP1_0      EQU          (0x00000001);            /*!< 0x00000001 */
ADC_SMPR_SMP1_1      EQU          (0x00000002);            /*!< 0x00000002 */
ADC_SMPR_SMP1_2      EQU          (0x00000004);            /*!< 0x00000004 */
ADC_SMPR_SMP2        EQU          (0x00000070);                       /*!< ADC group of channels sampling time 2 */
ADC_SMPR_SMP2_0      EQU          (0x00000010);            /*!< 0x00000010 */
ADC_SMPR_SMP2_1      EQU          (0x00000020);            /*!< 0x00000020 */
ADC_SMPR_SMP2_2      EQU          (0x00000040);            /*!< 0x00000040 */

ADC_SMPR_SMPSEL      EQU         (0x07FFFF00);                     /*!< ADC all channels sampling time selection */
ADC_SMPR_SMPSEL0     EQU         (0x00000100);                    /*!< ADC channel 0 sampling time selection */
ADC_SMPR_SMPSEL1     EQU         (0x00000200);                    /*!< ADC channel 1 sampling time selection */
ADC_SMPR_SMPSEL2     EQU         (0x00000400);                    /*!< ADC channel 2 sampling time selection */
ADC_SMPR_SMPSEL3     EQU         (0x00000800);                    /*!< ADC channel 3 sampling time selection */
ADC_SMPR_SMPSEL4     EQU         (0x00001000);                    /*!< ADC channel 4 sampling time selection */
ADC_SMPR_SMPSEL5     EQU         (0x00002000);                    /*!< ADC channel 5 sampling time selection */
ADC_SMPR_SMPSEL6     EQU         (0x00004000);                    /*!< ADC channel 6 sampling time selection */
ADC_SMPR_SMPSEL7     EQU         (0x00008000);                    /*!< ADC channel 7 sampling time selection */
ADC_SMPR_SMPSEL8     EQU         (0x00010000);                    /*!< ADC channel 8 sampling time selection */
ADC_SMPR_SMPSEL9     EQU         (0x00020000);                    /*!< ADC channel 9 sampling time selection */
ADC_SMPR_SMPSEL10    EQU         (0x00040000);                   /*!< ADC channel 10 sampling time selection */
ADC_SMPR_SMPSEL11    EQU         (0x00080000);                /*!< ADC channel 11 sampling time selection */
ADC_SMPR_SMPSEL12    EQU         (0x00100000);                /*!< ADC channel 12 sampling time selection */
ADC_SMPR_SMPSEL13    EQU         (0x00200000);                /*!< ADC channel 13 sampling time selection */
ADC_SMPR_SMPSEL14    EQU         (0x00400000);                /*!< ADC channel 14 sampling time selection */
ADC_SMPR_SMPSEL15    EQU         (0x00800000);                /*!< ADC channel 15 sampling time selection */
ADC_SMPR_SMPSEL16    EQU         (0x01000000);                /*!< ADC channel 16 sampling time selection */
ADC_SMPR_SMPSEL17    EQU         (0x02000000);                /*!< ADC channel 17 sampling time selection */
ADC_SMPR_SMPSEL18    EQU         (0x04000000);				  /*!< ADC channel 18 sampling time selection */
	
;/********************  Bit definition for ADC_AWD1TR register  *******************/
ADC_AWD1TR_LT1       EQU             (0x00000FFF);            /*!< ADC analog watchdog 1 threshold low */
ADC_AWD1TR_LT1_0     EQU          (0x00000001 );         /*!< 0x00000001 */
ADC_AWD1TR_LT1_1     EQU          (0x00000002 );         /*!< 0x00000002 */
ADC_AWD1TR_LT1_2     EQU          (0x00000004 );         /*!< 0x00000004 */
ADC_AWD1TR_LT1_3     EQU          (0x00000008 );
ADC_AWD1TR_LT1_4     EQU          (0x00000010 );
ADC_AWD1TR_LT1_5     EQU          (0x00000020 );
ADC_AWD1TR_LT1_6     EQU          (0x00000040 );
ADC_AWD1TR_LT1_7     EQU          (0x00000080 );
ADC_AWD1TR_LT1_8     EQU          (0x00000100 );
ADC_AWD1TR_LT1_9     EQU          (0x00000200 );
ADC_AWD1TR_LT1_10    EQU          (0x00000400 );
ADC_AWD1TR_LT1_11    EQU          (0x00000800 );


ADC_AWD1TR_HT1       EQU          (0x0FFF0000);                      /*!< ADC Analog watchdog 1 threshold high */
ADC_AWD1TR_HT1_0     EQU          (0x00010000);
ADC_AWD1TR_HT1_1     EQU          (0x00020000);
ADC_AWD1TR_HT1_2     EQU          (0x00040000);
ADC_AWD1TR_HT1_3     EQU          (0x00080000);
ADC_AWD1TR_HT1_4     EQU          (0x00100000);
ADC_AWD1TR_HT1_5     EQU          (0x00200000);
ADC_AWD1TR_HT1_6     EQU          (0x00400000);
ADC_AWD1TR_HT1_7     EQU          (0x00800000);
ADC_AWD1TR_HT1_8     EQU          (0x01000000);
ADC_AWD1TR_HT1_9     EQU          (0x02000000);
ADC_AWD1TR_HT1_10    EQU          (0x04000000);
ADC_AWD1TR_HT1_11    EQU          (0x08000000);

;/* Legacy definitions */
ADC_TR1_LT1          EQU          ADC_AWD1TR_LT1
ADC_TR1_LT1_0        EQU          ADC_AWD1TR_LT1_0
ADC_TR1_LT1_1        EQU          ADC_AWD1TR_LT1_1
ADC_TR1_LT1_2        EQU          ADC_AWD1TR_LT1_2
ADC_TR1_LT1_3        EQU          ADC_AWD1TR_LT1_3
ADC_TR1_LT1_4        EQU          ADC_AWD1TR_LT1_4
ADC_TR1_LT1_5        EQU          ADC_AWD1TR_LT1_5
ADC_TR1_LT1_6        EQU          ADC_AWD1TR_LT1_6
ADC_TR1_LT1_7        EQU          ADC_AWD1TR_LT1_7
ADC_TR1_LT1_8        EQU          ADC_AWD1TR_LT1_8
ADC_TR1_LT1_9        EQU          ADC_AWD1TR_LT1_9
ADC_TR1_LT1_10       EQU          ADC_AWD1TR_LT1_10
ADC_TR1_LT1_11       EQU          ADC_AWD1TR_LT1_11

ADC_TR1_HT1          EQU          ADC_AWD1TR_HT1
ADC_TR1_HT1_0        EQU          ADC_AWD1TR_HT1_0
ADC_TR1_HT1_1        EQU          ADC_AWD1TR_HT1_1
ADC_TR1_HT1_2        EQU          ADC_AWD1TR_HT1_2
ADC_TR1_HT1_3        EQU          ADC_AWD1TR_HT1_3
ADC_TR1_HT1_4        EQU          ADC_AWD1TR_HT1_4
ADC_TR1_HT1_5        EQU          ADC_AWD1TR_HT1_5
ADC_TR1_HT1_6        EQU          ADC_AWD1TR_HT1_6
ADC_TR1_HT1_7        EQU          ADC_AWD1TR_HT1_7
ADC_TR1_HT1_8        EQU          ADC_AWD1TR_HT1_8
ADC_TR1_HT1_9        EQU          ADC_AWD1TR_HT1_9
ADC_TR1_HT1_10       EQU          ADC_AWD1TR_HT1_10
ADC_TR1_HT1_11       EQU          ADC_AWD1TR_HT1_11	
	
;/********************  Bit definition for ADC_AWD2TR register  *******************/
ADC_AWD2TR_LT2       EQU         (0x00000FFF);                      /*!< ADC analog watchdog 2 threshold low */
ADC_AWD2TR_LT2_0     EQU         (0x00000001);
ADC_AWD2TR_LT2_1     EQU         (0x00000002);
ADC_AWD2TR_LT2_2     EQU         (0x00000004);
ADC_AWD2TR_LT2_3     EQU         (0x00000008);
ADC_AWD2TR_LT2_4     EQU         (0x00000010);
ADC_AWD2TR_LT2_5     EQU         (0x00000020);
ADC_AWD2TR_LT2_6     EQU         (0x00000040);
ADC_AWD2TR_LT2_7     EQU         (0x00000080);
ADC_AWD2TR_LT2_8     EQU         (0x00000100);
ADC_AWD2TR_LT2_9     EQU         (0x00000200);
ADC_AWD2TR_LT2_10    EQU         (0x00000400);
ADC_AWD2TR_LT2_11    EQU         (0x00000800);

ADC_AWD2TR_HT2       EQU          (0x0FFF0000);                      /*!< ADC analog watchdog 2 threshold high */
ADC_AWD2TR_HT2_0     EQU          (0x00010000);
ADC_AWD2TR_HT2_1     EQU          (0x00020000);
ADC_AWD2TR_HT2_2     EQU          (0x00040000);
ADC_AWD2TR_HT2_3     EQU          (0x00080000);
ADC_AWD2TR_HT2_4     EQU          (0x00100000);
ADC_AWD2TR_HT2_5     EQU          (0x00200000);
ADC_AWD2TR_HT2_6     EQU          (0x00400000);
ADC_AWD2TR_HT2_7     EQU          (0x00800000);
ADC_AWD2TR_HT2_8     EQU          (0x01000000);
ADC_AWD2TR_HT2_9     EQU          (0x02000000);
ADC_AWD2TR_HT2_10    EQU          (0x04000000);
ADC_AWD2TR_HT2_11    EQU          (0x08000000);

;/* Legacy definitions */
ADC_TR2_LT2          EQU          ADC_AWD2TR_LT2
ADC_TR2_LT2_0        EQU          ADC_AWD2TR_LT2_0
ADC_TR2_LT2_1        EQU          ADC_AWD2TR_LT2_1
ADC_TR2_LT2_2        EQU          ADC_AWD2TR_LT2_2
ADC_TR2_LT2_3        EQU          ADC_AWD2TR_LT2_3
ADC_TR2_LT2_4        EQU          ADC_AWD2TR_LT2_4
ADC_TR2_LT2_5        EQU          ADC_AWD2TR_LT2_5
ADC_TR2_LT2_6        EQU          ADC_AWD2TR_LT2_6
ADC_TR2_LT2_7        EQU          ADC_AWD2TR_LT2_7
ADC_TR2_LT2_8        EQU          ADC_AWD2TR_LT2_8
ADC_TR2_LT2_9        EQU          ADC_AWD2TR_LT2_9
ADC_TR2_LT2_10       EQU          ADC_AWD2TR_LT2_10
ADC_TR2_LT2_11       EQU          ADC_AWD2TR_LT2_11

ADC_TR2_HT2          EQU          ADC_AWD2TR_HT2
ADC_TR2_HT2_0        EQU          ADC_AWD2TR_HT2_0
ADC_TR2_HT2_1        EQU          ADC_AWD2TR_HT2_1
ADC_TR2_HT2_2        EQU          ADC_AWD2TR_HT2_2
ADC_TR2_HT2_3        EQU          ADC_AWD2TR_HT2_3
ADC_TR2_HT2_4        EQU          ADC_AWD2TR_HT2_4
ADC_TR2_HT2_5        EQU          ADC_AWD2TR_HT2_5
ADC_TR2_HT2_6        EQU          ADC_AWD2TR_HT2_6
ADC_TR2_HT2_7        EQU          ADC_AWD2TR_HT2_7
ADC_TR2_HT2_8        EQU          ADC_AWD2TR_HT2_8
ADC_TR2_HT2_9        EQU          ADC_AWD2TR_HT2_9
ADC_TR2_HT2_10       EQU          ADC_AWD2TR_HT2_10
ADC_TR2_HT2_11       EQU          ADC_AWD2TR_HT2_11

;/********************  Bit definition for ADC_CHSELR register  ****************/
ADC_CHSELR_CHSEL      EQU         (0x0007FFFF);                    /*!< ADC group regular sequencer channels, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL18    EQU         (0x00040000);                  /*!< ADC group regular sequencer channel 18, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL17    EQU         (0x00020000);                  /*!< ADC group regular sequencer channel 17, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL16    EQU         (0x00010000);                  /*!< ADC group regular sequencer channel 16, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL15    EQU         (0x00008000);                  /*!< ADC group regular sequencer channel 15, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL14    EQU         (0x00004000);                  /*!< ADC group regular sequencer channel 14, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL13    EQU         (0x00002000);                  /*!< ADC group regular sequencer channel 13, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL12    EQU         (0x00001000);                  /*!< ADC group regular sequencer channel 12, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL11    EQU         (0x00000800);                  /*!< ADC group regular sequencer channel 11, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL10    EQU         (0x00000400);                  /*!< ADC group regular sequencer channel 10, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL9     EQU         (0x00000200);                   /*!< ADC group regular sequencer channel 9, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL8     EQU         (0x00000100);                   /*!< ADC group regular sequencer channel 8, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL7     EQU         (0x00000080);                   /*!< ADC group regular sequencer channel 7, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL6     EQU         (0x00000040);                   /*!< ADC group regular sequencer channel 6, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL5     EQU         (0x00000020);                   /*!< ADC group regular sequencer channel 5, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL4     EQU         (0x00000010);                   /*!< ADC group regular sequencer channel 4, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL3     EQU         (0x00000008);                   /*!< ADC group regular sequencer channel 3, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL2     EQU         (0x00000004);                   /*!< ADC group regular sequencer channel 2, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL1     EQU         (0x00000002);                   /*!< ADC group regular sequencer channel 1, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_CHSEL0     EQU         (0x00000001);                   /*!< ADC group regular sequencer channel 0, available when ADC_CFGR1_CHSELRMOD is reset */
ADC_CHSELR_SQ_ALL     EQU         (0xFFFFFFFF);                   /*!< ADC group regular sequencer all ranks, available when ADC_CFGR1_CHSELRMOD is set */
ADC_CHSELR_SQ8        EQU         (0xF0000000);                      /*!< ADC group regular sequencer rank 8, available when ADC_CFGR1_CHSELRMOD is set */

ADC_CHSELR_SQ8_0      EQU         (0x10000000 )
ADC_CHSELR_SQ8_1      EQU         (0x20000000 )
ADC_CHSELR_SQ8_2      EQU         (0x40000000 )
ADC_CHSELR_SQ8_3      EQU         (0x80000000 )
ADC_CHSELR_SQ7        EQU         (0x0F000000 );                     /*!< ADC group regular sequencer rank 7, available when ADC_CFGR1_CHSELRMOD is set */
ADC_CHSELR_SQ7_0      EQU         (0x01000000 );
ADC_CHSELR_SQ7_1      EQU         (0x02000000 );
ADC_CHSELR_SQ7_2      EQU         (0x04000000 );
ADC_CHSELR_SQ7_3      EQU         (0x08000000 );

ADC_CHSELR_SQ6        EQU         (0x00F00000 );                   /*!< ADC group regular sequencer rank 6, available when ADC_CFGR1_CHSELRMOD is set */
ADC_CHSELR_SQ6_0      EQU         (0x00100000 );
ADC_CHSELR_SQ6_1      EQU         (0x00200000 );
ADC_CHSELR_SQ6_2      EQU         (0x00400000 );
ADC_CHSELR_SQ6_3      EQU         (0x00800000 );


ADC_CHSELR_SQ5        EQU         (0x000F0000 );                   /*!< ADC group regular sequencer rank 5, available when ADC_CFGR1_CHSELRMOD is set */
ADC_CHSELR_SQ5_0      EQU         (0x00010000 );
ADC_CHSELR_SQ5_1      EQU         (0x00020000 );
ADC_CHSELR_SQ5_2      EQU         (0x00040000 );
ADC_CHSELR_SQ5_3      EQU         (0x00080000 );

ADC_CHSELR_SQ4        EQU         (0x0000F000 );                     /*!< ADC group regular sequencer rank 4, available when ADC_CFGR1_CHSELRMOD is set */
ADC_CHSELR_SQ4_0      EQU         (0x00001000 )
ADC_CHSELR_SQ4_1      EQU         (0x00002000 )
ADC_CHSELR_SQ4_2      EQU         (0x00004000 )
ADC_CHSELR_SQ4_3      EQU         (0x00008000 )
					  
ADC_CHSELR_SQ3        EQU         (0x00000F00);                      /*!< ADC group regular sequencer rank 3, available when ADC_CFGR1_CHSELRMOD is set */
ADC_CHSELR_SQ3_0      EQU         (0x00000100 )
ADC_CHSELR_SQ3_1      EQU         (0x00000200 )
ADC_CHSELR_SQ3_2      EQU         (0x00000400 )
ADC_CHSELR_SQ3_3      EQU         (0x00000800 )

ADC_CHSELR_SQ2        EQU         (0x000000F0 );                   /*!< ADC group regular sequencer rank 2, available when ADC_CFGR1_CHSELRMOD is set */
ADC_CHSELR_SQ2_0      EQU         (0x00000010 );
ADC_CHSELR_SQ2_1      EQU         (0x00000020 );
ADC_CHSELR_SQ2_2      EQU         (0x00000040 );
ADC_CHSELR_SQ2_3      EQU         (0x00000080 );


ADC_CHSELR_SQ1        EQU         (0x0000000F );                     /*!< ADC group regular sequencer rank 1, available when ADC_CFGR1_CHSELRMOD is set */
ADC_CHSELR_SQ1_0      EQU         (0x00000001)
ADC_CHSELR_SQ1_1      EQU         (0x00000002)
ADC_CHSELR_SQ1_2      EQU         (0x00000004)
ADC_CHSELR_SQ1_3      EQU         (0x00000008)

;/********************  Bit definition for ADC_AWD3TR register  *******************/
ADC_AWD3TR_LT3        EQU         (0x00000FFF  );                 /*!< ADC analog watchdog 3 threshold low */
ADC_AWD3TR_LT3_0      EQU         (0x00000001 );
ADC_AWD3TR_LT3_1      EQU         (0x00000002 );
ADC_AWD3TR_LT3_2      EQU         (0x00000004 );
ADC_AWD3TR_LT3_3      EQU         (0x00000008 );
ADC_AWD3TR_LT3_4      EQU         (0x00000010 );
ADC_AWD3TR_LT3_5      EQU         (0x00000020 );
ADC_AWD3TR_LT3_6      EQU         (0x00000040 );
ADC_AWD3TR_LT3_7      EQU         (0x00000080 );
ADC_AWD3TR_LT3_8      EQU         (0x00000100 );
ADC_AWD3TR_LT3_9      EQU         (0x00000200 );
ADC_AWD3TR_LT3_10     EQU         (0x00000400 );
ADC_AWD3TR_LT3_11     EQU         (0x00000800 );


ADC_AWD3TR_HT3        EQU         (0x0FFF0000 );                     /*!< ADC analog watchdog 3 threshold high */
ADC_AWD3TR_HT3_0      EQU         (0x00010000 )
ADC_AWD3TR_HT3_1      EQU         (0x00020000 )
ADC_AWD3TR_HT3_2      EQU         (0x00040000 )
ADC_AWD3TR_HT3_3      EQU         (0x00080000 )
ADC_AWD3TR_HT3_4      EQU         (0x00100000 )
ADC_AWD3TR_HT3_5      EQU         (0x00200000 )
ADC_AWD3TR_HT3_6      EQU         (0x00400000 )
ADC_AWD3TR_HT3_7      EQU         (0x00800000 )
ADC_AWD3TR_HT3_8      EQU         (0x01000000 )
ADC_AWD3TR_HT3_9      EQU         (0x02000000 )
ADC_AWD3TR_HT3_10     EQU         (0x04000000 )
ADC_AWD3TR_HT3_11     EQU         (0x08000000 )

;/* Legacy definitions */
ADC_TR3_LT3           EQU          ADC_AWD3TR_LT3
ADC_TR3_LT3_0         EQU          ADC_AWD3TR_LT3_0
ADC_TR3_LT3_1         EQU          ADC_AWD3TR_LT3_1
ADC_TR3_LT3_2         EQU          ADC_AWD3TR_LT3_2
ADC_TR3_LT3_3         EQU          ADC_AWD3TR_LT3_3
ADC_TR3_LT3_4         EQU          ADC_AWD3TR_LT3_4
ADC_TR3_LT3_5         EQU          ADC_AWD3TR_LT3_5
ADC_TR3_LT3_6         EQU          ADC_AWD3TR_LT3_6
ADC_TR3_LT3_7         EQU          ADC_AWD3TR_LT3_7
ADC_TR3_LT3_8         EQU          ADC_AWD3TR_LT3_8
ADC_TR3_LT3_9         EQU          ADC_AWD3TR_LT3_9
ADC_TR3_LT3_10        EQU          ADC_AWD3TR_LT3_10
ADC_TR3_LT3_11        EQU          ADC_AWD3TR_LT3_11
					          
ADC_TR3_HT3           EQU          ADC_AWD3TR_HT3
ADC_TR3_HT3_0         EQU          ADC_AWD3TR_HT3_0
ADC_TR3_HT3_1         EQU          ADC_AWD3TR_HT3_1
ADC_TR3_HT3_2         EQU          ADC_AWD3TR_HT3_2
ADC_TR3_HT3_3         EQU          ADC_AWD3TR_HT3_3
ADC_TR3_HT3_4         EQU          ADC_AWD3TR_HT3_4
ADC_TR3_HT3_5         EQU          ADC_AWD3TR_HT3_5
ADC_TR3_HT3_6         EQU          ADC_AWD3TR_HT3_6
ADC_TR3_HT3_7         EQU          ADC_AWD3TR_HT3_7
ADC_TR3_HT3_8         EQU          ADC_AWD3TR_HT3_8
ADC_TR3_HT3_9         EQU          ADC_AWD3TR_HT3_9
ADC_TR3_HT3_10        EQU          ADC_AWD3TR_HT3_10
ADC_TR3_HT3_11        EQU          ADC_AWD3TR_HT3_11


;/********************  Bit definition for ADC_DR register  ********************/
ADC_DR_DATA           EQU         (0x0000FFFF);                         /*!< ADC group regular conversion data */
ADC_DR_DATA_0         EQU         (0x00000001 )
ADC_DR_DATA_1         EQU         (0x00000002 )
ADC_DR_DATA_2         EQU         (0x00000004 )
ADC_DR_DATA_3         EQU         (0x00000008 )
ADC_DR_DATA_4         EQU         (0x00000010 )
ADC_DR_DATA_5         EQU         (0x00000020 )
ADC_DR_DATA_6         EQU         (0x00000040 )
ADC_DR_DATA_7         EQU         (0x00000080 )
ADC_DR_DATA_8         EQU         (0x00000100 )
ADC_DR_DATA_9         EQU         (0x00000200 )
ADC_DR_DATA_10        EQU         (0x00000400 )
ADC_DR_DATA_11        EQU         (0x00000800 )
ADC_DR_DATA_12        EQU         (0x00001000 )
ADC_DR_DATA_13        EQU         (0x00002000 )
ADC_DR_DATA_14        EQU         (0x00004000 )
ADC_DR_DATA_15        EQU         (0x00008000 )

;/********************  Bit definition for ADC_AWD2CR register  ****************/

ADC_AWD2CR_AWD2CH      EQU       (0x0007FFFF );                  /*!< ADC analog watchdog 2 monitored channel selection */
ADC_AWD2CR_AWD2CH_0    EQU       (0x00000001 );
ADC_AWD2CR_AWD2CH_1    EQU       (0x00000002 );
ADC_AWD2CR_AWD2CH_2    EQU       (0x00000004 );
ADC_AWD2CR_AWD2CH_3    EQU       (0x00000008 );
ADC_AWD2CR_AWD2CH_4    EQU       (0x00000010 );
ADC_AWD2CR_AWD2CH_5    EQU       (0x00000020 );
ADC_AWD2CR_AWD2CH_6    EQU       (0x00000040 );
ADC_AWD2CR_AWD2CH_7    EQU       (0x00000080 );
ADC_AWD2CR_AWD2CH_8    EQU       (0x00000100 );
ADC_AWD2CR_AWD2CH_9    EQU       (0x00000200 );
ADC_AWD2CR_AWD2CH_10   EQU       (0x00000400 );
ADC_AWD2CR_AWD2CH_11   EQU       (0x00000800 );
ADC_AWD2CR_AWD2CH_12   EQU       (0x00001000 );
ADC_AWD2CR_AWD2CH_13   EQU       (0x00002000 );
ADC_AWD2CR_AWD2CH_14   EQU       (0x00004000 );
ADC_AWD2CR_AWD2CH_15   EQU       (0x00008000 );
ADC_AWD2CR_AWD2CH_16   EQU       (0x00010000 );
ADC_AWD2CR_AWD2CH_17   EQU       (0x00020000 );
ADC_AWD2CR_AWD2CH_18   EQU       (0x00040000 );
					   
;/******************** Bit definition for ADC_AWD3CR register  ****************/
					   
ADC_AWD3CR_AWD3CH      EQU       (0x0007FFFF );                  /*!< ADC analog watchdog 3 monitored channel selection */
ADC_AWD3CR_AWD3CH_0    EQU       (0x00000001 );
ADC_AWD3CR_AWD3CH_1    EQU       (0x00000002 );
ADC_AWD3CR_AWD3CH_2    EQU       (0x00000004 );
ADC_AWD3CR_AWD3CH_3    EQU       (0x00000008 );
ADC_AWD3CR_AWD3CH_4    EQU       (0x00000010 );
ADC_AWD3CR_AWD3CH_5    EQU       (0x00000020 );
ADC_AWD3CR_AWD3CH_6    EQU       (0x00000040 );
ADC_AWD3CR_AWD3CH_7    EQU       (0x00000080 );
ADC_AWD3CR_AWD3CH_8    EQU       (0x00000100 );
ADC_AWD3CR_AWD3CH_9    EQU       (0x00000200 );
ADC_AWD3CR_AWD3CH_10   EQU       (0x00000400 );
ADC_AWD3CR_AWD3CH_11   EQU       (0x00000800 );
ADC_AWD3CR_AWD3CH_12   EQU       (0x00001000 );
ADC_AWD3CR_AWD3CH_13   EQU       (0x00002000 );
ADC_AWD3CR_AWD3CH_14   EQU       (0x00004000 );
ADC_AWD3CR_AWD3CH_15   EQU       (0x00008000 );
ADC_AWD3CR_AWD3CH_16   EQU       (0x00010000 );
ADC_AWD3CR_AWD3CH_17   EQU       (0x00020000 );
ADC_AWD3CR_AWD3CH_18   EQU       (0x00040000 );

;/********************  Bit definition for ADC_CALFACT register  ***************/

ADC_CALFACT_CALFACT     EQU       (0x0000007F);                 /*!< ADC calibration factor in single-ended mode */
ADC_CALFACT_CALFACT_0   EQU       (0x00000001 );
ADC_CALFACT_CALFACT_1   EQU       (0x00000002 );
ADC_CALFACT_CALFACT_2   EQU       (0x00000004 );
ADC_CALFACT_CALFACT_3   EQU       (0x00000008 );
ADC_CALFACT_CALFACT_4   EQU       (0x00000010 );
ADC_CALFACT_CALFACT_5   EQU       (0x00000020 );
ADC_CALFACT_CALFACT_6   EQU       (0x00000040 );

;/*************************  ADC Common registers  *****************************/
;/********************  Bit definition for ADC_CCR register  *******************/

ADC_CCR_PRESC           EQU       (0x003C0000 );                      /*!< ADC common clock prescaler, only for clock source asynchronous */
ADC_CCR_PRESC_0         EQU       (0x00040000 )
ADC_CCR_PRESC_1         EQU       (0x00080000 )
ADC_CCR_PRESC_2         EQU       (0x00100000 )
ADC_CCR_PRESC_3         EQU       (0x00200000 )

ADC_CCR_VREFEN          EQU       (0x00400000);                      /*!< ADC internal path to VrefInt enable */
ADC_CCR_TSEN            EQU       (0x00800000);                        /*!< ADC internal path to temperature sensor enable */
ADC_CCR_VBATEN          EQU       (0x01000000);                      /*!< ADC internal path to battery voltage enable */

;/* Legacy */
ADC_CCR_LFMEN           EQU       (0x02000000);   

;/******************************************************************************/
;/*                                                                            */
;/*                          CRC calculation unit                              */
;/*                                                                            */
;/******************************************************************************/
;/*******************  Bit definition for CRC_DR register  *********************/

CRC_DR_DR                EQU 			(0xFFFFFFFF);                                  /*!< Data register bits */

;/*******************  Bit definition for CRC_IDR register  ********************/

CRC_IDR_IDR              EQU            (0xFFFFFFFF )   ;                            /*!< General-purpose 32-bits data register bits */

;/********************  Bit definition for CRC_CR register  ********************/

CRC_CR_RESET             EQU          (0x00000001 );                              /*!< RESET the CRC computation unit bit */
						           
CRC_CR_POLYSIZE          EQU          (0x00000018);                            /*!< Polynomial size bits */
CRC_CR_POLYSIZE_0        EQU          (0x00000008 )
CRC_CR_POLYSIZE_1        EQU          (0x00000010 )
						           
CRC_CR_REV_IN            EQU          (0x00000060);                              /*!< REV_IN Reverse Input Data bits */
CRC_CR_REV_IN_0          EQU          (0x00000020 )
CRC_CR_REV_IN_1          EQU          (0x00000040 )
CRC_CR_REV_OUT           EQU          (0x00000080);                             /*!< REV_OUT Reverse Output Data bits */

;/*******************  Bit definition for CRC_INIT register  *******************/

CRC_INIT_INIT    		 EQU          (0xFFFFFFFF );                             /*!< Initial CRC value bits */

;/*******************  Bit definition for CRC_POL register  ********************/

CRC_POL_POL      		 EQU          (0xFFFFFFFF);                                /*!< Coefficients of the polynomial */


;/******************************************************************************/
;/*                                                                            */
;/*                                 Debug MCU                                  */
;/*                                                                            */
;/******************************************************************************/

;/******************************************************************************/
;/*                                                                            */
;/*                           DMA Controller (DMA)                             */
;/*                                                                            */
;/******************************************************************************/

;/*******************  Bit definition for DMA_ISR register  ********************/
DMA_ISR_GIF1        EQU         (  0x00000001 );                             /*!< Channel 1 Global interrupt flag */
DMA_ISR_TCIF1       EQU         (  0x00000002 );                            /*!< Channel 1 Transfer Complete flag */
DMA_ISR_HTIF1       EQU         (  0x00000004 );                            /*!< Channel 1 Half Transfer flag */
DMA_ISR_TEIF1       EQU         (  0x00000008 );                            /*!< Channel 1 Transfer Error flag */
DMA_ISR_GIF2        EQU         (  0x00000010 );                             /*!< Channel 2 Global interrupt flag */
DMA_ISR_TCIF2       EQU         (  0x00000020 );                            /*!< Channel 2 Transfer Complete flag */
DMA_ISR_HTIF2       EQU         (  0x00000040 );                            /*!< Channel 2 Half Transfer flag */
DMA_ISR_TEIF2       EQU         (  0x00000080 );                            /*!< Channel 2 Transfer Error flag */
DMA_ISR_GIF3        EQU         (  0x00000100 );                             /*!< Channel 3 Global interrupt flag */
DMA_ISR_TCIF3       EQU         (  0x00000200 );                            /*!< Channel 3 Transfer Complete flag */
DMA_ISR_HTIF3       EQU         (  0x00000400 );                            /*!< Channel 3 Half Transfer flag */
DMA_ISR_TEIF3       EQU         (  0x00000800 );                            /*!< Channel 3 Transfer Error flag */
DMA_ISR_GIF4        EQU         (  0x00001000 );                             /*!< Channel 4 Global interrupt flag */
DMA_ISR_TCIF4       EQU         (  0x00002000 );                            /*!< Channel 4 Transfer Complete flag */
DMA_ISR_HTIF4       EQU         (  0x00004000 );                            /*!< Channel 4 Half Transfer flag */
DMA_ISR_TEIF4       EQU         (  0x00008000 );                            /*!< Channel 4 Transfer Error flag */
DMA_ISR_GIF5        EQU         (  0x00010000 );                             /*!< Channel 5 Global interrupt flag */
DMA_ISR_TCIF5       EQU         (  0x00020000 );                            /*!< Channel 5 Transfer Complete flag */
DMA_ISR_HTIF5       EQU         (  0x00040000 );                            /*!< Channel 5 Half Transfer flag */
DMA_ISR_TEIF5       EQU         (  0x00080000 );                            /*!< Channel 5 Transfer Error flag */
DMA_ISR_GIF6        EQU         (  0x00100000 );                             /*!< Channel 6 Global interrupt flag */
DMA_ISR_TCIF6       EQU         (  0x00200000 );                            /*!< Channel 6 Transfer Complete flag */
DMA_ISR_HTIF6       EQU         (  0x00400000 );                            /*!< Channel 6 Half Transfer flag */
DMA_ISR_TEIF6       EQU         (  0x00800000 );                            /*!< Channel 6 Transfer Error flag */
DMA_ISR_GIF7        EQU         (  0x01000000 );                             /*!< Channel 7 Global interrupt flag */
DMA_ISR_TCIF7       EQU         (  0x02000000 );                            /*!< Channel 7 Transfer Complete flag */
DMA_ISR_HTIF7       EQU         (  0x04000000 );                            /*!< Channel 7 Half Transfer flag */
DMA_ISR_TEIF7       EQU         (  0x08000000 );                            /*!< Channel 7 Transfer Error flag */

;/*******************  Bit definition for DMA_IFCR register  *******************/
DMA_IFCR_CGIF1      EQU   		(   0x00000001);                           /*!< Channel 1 Global interrupt clearr */
DMA_IFCR_CTCIF1     EQU   		(   0x00000002);                          /*!< Channel 1 Transfer Complete clear */
DMA_IFCR_CHTIF1     EQU   		(   0x00000004);                          /*!< Channel 1 Half Transfer clear */
DMA_IFCR_CTEIF1     EQU   		(   0x00000008);                          /*!< Channel 1 Transfer Error clear */
DMA_IFCR_CGIF2      EQU   		(   0x00000010);                           /*!< Channel 2 Global interrupt clear */
DMA_IFCR_CTCIF2     EQU   		(   0x00000020);                          /*!< Channel 2 Transfer Complete clear */
DMA_IFCR_CHTIF2     EQU   		(   0x00000040);                          /*!< Channel 2 Half Transfer clear */
DMA_IFCR_CTEIF2     EQU   		(   0x00000080);                          /*!< Channel 2 Transfer Error clear */
DMA_IFCR_CGIF3      EQU   		(   0x00000100);                           /*!< Channel 3 Global interrupt clear */
DMA_IFCR_CTCIF3     EQU   		(   0x00000200);                          /*!< Channel 3 Transfer Complete clear */
DMA_IFCR_CHTIF3     EQU   		(   0x00000400);                          /*!< Channel 3 Half Transfer clear */
DMA_IFCR_CTEIF3     EQU   		(   0x00000800);                          /*!< Channel 3 Transfer Error clear */
DMA_IFCR_CGIF4      EQU   		(   0x00001000);                           /*!< Channel 4 Global interrupt clear */
DMA_IFCR_CTCIF4     EQU   		(   0x00002000);                          /*!< Channel 4 Transfer Complete clear */
DMA_IFCR_CHTIF4     EQU   		(   0x00004000);                          /*!< Channel 4 Half Transfer clear */
DMA_IFCR_CTEIF4     EQU   		(   0x00008000);                          /*!< Channel 4 Transfer Error clear */
DMA_IFCR_CGIF5      EQU   		(   0x00010000);                           /*!< Channel 5 Global interrupt clear */
DMA_IFCR_CTCIF5     EQU   		(   0x00020000);                          /*!< Channel 5 Transfer Complete clear */
DMA_IFCR_CHTIF5     EQU   		(   0x00040000);                          /*!< Channel 5 Half Transfer clear */
DMA_IFCR_CTEIF5     EQU   		(   0x00080000);                          /*!< Channel 5 Transfer Error clear */
DMA_IFCR_CGIF6      EQU   		(   0x00100000);                           /*!< Channel 6 Global interrupt clear */
DMA_IFCR_CTCIF6     EQU   		(   0x00200000);                          /*!< Channel 6 Transfer Complete clear */
DMA_IFCR_CHTIF6     EQU   		(   0x00400000);                          /*!< Channel 6 Half Transfer clear */
DMA_IFCR_CTEIF6     EQU   		(   0x00800000);                          /*!< Channel 6 Transfer Error clear */
DMA_IFCR_CGIF7      EQU   		(   0x01000000);                           /*!< Channel 7 Global interrupt clear */
DMA_IFCR_CTCIF7     EQU   		(   0x02000000);                          /*!< Channel 7 Transfer Complete clear */
DMA_IFCR_CHTIF7     EQU   		(   0x04000000);                          /*!< Channel 7 Half Transfer clear */
DMA_IFCR_CTEIF7     EQU   		(   0x08000000);                          /*!< Channel 7 Transfer Error clear */

;/*******************  Bit definition for DMA_CCR register  ********************/
DMA_CCR_EN          EQU           (0x00000001 );                                   /*!< Transfer complete interrupt enable  */
DMA_CCR_HTIE        EQU           (0x00000004 );                               /*!< Half Transfer interrupt enable      */
DMA_CCR_TEIE        EQU           (0x00000008 );                               /*!< Transfer error interrupt enable     */
DMA_CCR_DIR         EQU           (0x00000010 );                                /*!< Data transfer direction             */
DMA_CCR_CIRC        EQU           (0x00000020 );                               /*!< Circular mode                       */
DMA_CCR_PINC        EQU           (0x00000040 );                               /*!< Peripheral increment mode           */
DMA_CCR_MINC        EQU           (0x00000080 );                               /*!< Memory increment mode               */

DMA_CCR_PSIZE       EQU            (0x00000300 );                              /*!< PSIZE[1:0] bits (Peripheral size)   */
DMA_CCR_PSIZE_0     EQU           (0x00000100 )
DMA_CCR_PSIZE_1     EQU           (0x00000200 )

DMA_CCR_MSIZE       EQU            (0x00000C00  );                           /*!< MSIZE[1:0] bits (Memory size)       */
DMA_CCR_MSIZE_0     EQU            (0x00000400 );
DMA_CCR_MSIZE_1     EQU            (0x00000800 );
					            
DMA_CCR_PL          EQU            (0x00003000);                                  /*!< PL[1:0] bits(Channel Priority level)*/
DMA_CCR_PL_0        EQU            (0x00001000 )
DMA_CCR_PL_1        EQU            (0x00002000 )

DMA_CCR_MEM2MEM     EQU           (0x00004000);                             /*!< Memory to memory mode               */

;/******************  Bit definition for DMA_CNDTR register  *******************/
DMA_CNDTR_NDT 		EQU         	(0x0000FFFF);                               /*!< Number of data to Transfer          */
	
;/******************  Bit definition for DMA_CPAR register  ********************/
DMA_CPAR_PA         EQU  			(0xFFFFFFFF);                                 /*!< Peripheral Address                  */

;/******************  Bit definition for DMA_CMAR register  ********************/

DMA_CMAR_MA 		EQU  			(0xFFFFFFFF);                                      /*!< Memory Address                      */


;/******************************************************************************/
;/*                                                                            */
;/*                             DMAMUX Controller                              */
;/*                                                                            */
;/******************************************************************************/
;/********************  Bits definition for DMAMUX_CxCR register  **************/
DMAMUX_CxCR_DMAREQ_ID        EQU         (0x0000003F );            /*!< DMA Request ID   */
DMAMUX_CxCR_DMAREQ_ID_0      EQU         (0x00000001 )
DMAMUX_CxCR_DMAREQ_ID_1      EQU         (0x00000002 )
DMAMUX_CxCR_DMAREQ_ID_2      EQU         (0x00000004 )
DMAMUX_CxCR_DMAREQ_ID_3      EQU         (0x00000008 )
DMAMUX_CxCR_DMAREQ_ID_4      EQU         (0x00000010 )
DMAMUX_CxCR_DMAREQ_ID_5      EQU         (0x00000020 )
DMAMUX_CxCR_DMAREQ_ID_6      EQU         (0x00000040 )
DMAMUX_CxCR_SOIE             EQU         (0x00000100);             /*!< Synchro overrun interrupt enable     */
DMAMUX_CxCR_EGE              EQU         (0x00000200);              /*!< Event generation interrupt enable    */
DMAMUX_CxCR_SE               EQU         (0x00010000) ;              /*!< Synchronization enable               */
DMAMUX_CxCR_SPOL             EQU         (0x00060000 );            /*!< Synchronization polarity             */
DMAMUX_CxCR_SPOL_0           EQU         (0x00020000 )
DMAMUX_CxCR_SPOL_1           EQU         (0x00040000 )
DMAMUX_CxCR_NBREQ            EQU         (0x00F80000 );            /*!< Number of request                    */
DMAMUX_CxCR_NBREQ_0          EQU         (0x00080000 )
DMAMUX_CxCR_NBREQ_1          EQU         (0x00100000 )
DMAMUX_CxCR_NBREQ_2          EQU         (0x00200000 )
DMAMUX_CxCR_NBREQ_3          EQU         (0x00400000 )
DMAMUX_CxCR_NBREQ_4          EQU         (0x00800000 )
DMAMUX_CxCR_SYNC_ID          EQU         (0x1F000000 );             /*!< Synchronization ID                   */
DMAMUX_CxCR_SYNC_ID_0        EQU         (0x01000000 )
DMAMUX_CxCR_SYNC_ID_1        EQU         (0x02000000 )
DMAMUX_CxCR_SYNC_ID_2        EQU         (0x04000000 )
DMAMUX_CxCR_SYNC_ID_3        EQU         (0x08000000 )
DMAMUX_CxCR_SYNC_ID_4        EQU         (0x10000000 )

;/*******************  Bits definition for DMAMUX_CSR register  **************/
DMAMUX_CSR_SOF0      EQU                 ( 0x00000001  );           /*!< Synchronization Overrun Flag 0       */
DMAMUX_CSR_SOF1      EQU                 ( 0x00000002  );           /*!< Synchronization Overrun Flag 1       */
DMAMUX_CSR_SOF2      EQU                 ( 0x00000004  );           /*!< Synchronization Overrun Flag 2       */
DMAMUX_CSR_SOF3      EQU                 ( 0x00000008  );           /*!< Synchronization Overrun Flag 3       */
DMAMUX_CSR_SOF4      EQU                 ( 0x00000010  );           /*!< Synchronization Overrun Flag 4       */
DMAMUX_CSR_SOF5      EQU                 ( 0x00000020  );           /*!< Synchronization Overrun Flag 5       */
DMAMUX_CSR_SOF6      EQU                 ( 0x00000040  );           /*!< Synchronization Overrun Flag 6       */

;/********************  Bits definition for DMAMUX_CFR register  **************/
DMAMUX_CFR_CSOF0      EQU                 ( 0x00000001  );              /*!< Clear Overrun Flag 0                 */
DMAMUX_CFR_CSOF1      EQU                 ( 0x00000002  );              /*!< Clear Overrun Flag 1                 */
DMAMUX_CFR_CSOF2      EQU                 ( 0x00000004  );              /*!< Clear Overrun Flag 2                 */
DMAMUX_CFR_CSOF3      EQU                 ( 0x00000008  );              /*!< Clear Overrun Flag 3                 */
DMAMUX_CFR_CSOF4      EQU                 ( 0x00000010  );              /*!< Clear Overrun Flag 4                 */
DMAMUX_CFR_CSOF5      EQU                 ( 0x00000020  );              /*!< Clear Overrun Flag 5                 */
DMAMUX_CFR_CSOF6      EQU                 ( 0x00000040  );              /*!< Clear Overrun Flag 6                 */

;/********************  Bits definition for DMAMUX_RGxCR register  ************/

DMAMUX_RGxCR_SIG_ID        EQU           (0x0000001F );            /*!< Signal ID                         */
DMAMUX_RGxCR_SIG_ID_0      EQU           (0x00000001 )
DMAMUX_RGxCR_SIG_ID_1      EQU           (0x00000002 )
DMAMUX_RGxCR_SIG_ID_2      EQU           (0x00000004 )
DMAMUX_RGxCR_SIG_ID_3      EQU           (0x00000008 )
DMAMUX_RGxCR_SIG_ID_4      EQU           (0x00000010 )
DMAMUX_RGxCR_OIE           EQU           (0x00000100);             /*!< Overrun interrupt enable             */
DMAMUX_RGxCR_GE            EQU           (0x00010000);              /*!< Generation enable                    */
DMAMUX_RGxCR_GPOL          EQU           (0x00060000);            /*!< Generation polarity                  */
DMAMUX_RGxCR_GPOL_0        EQU           (0x00020000 )
DMAMUX_RGxCR_GPOL_1        EQU           (0x00040000 )
DMAMUX_RGxCR_GNBREQ        EQU           (0x00F80000 );            /*!< Number of request                 */
DMAMUX_RGxCR_GNBREQ_0      EQU           (0x00080000 )
DMAMUX_RGxCR_GNBREQ_1      EQU           (0x00100000 )
DMAMUX_RGxCR_GNBREQ_2      EQU           (0x00200000 )
DMAMUX_RGxCR_GNBREQ_3      EQU           (0x00400000 )
DMAMUX_RGxCR_GNBREQ_4      EQU           (0x00800000 )

;/********************  Bits definition for DMAMUX_RGSR register  **************/
DMAMUX_RGSR_OF0            EQU           ( 0x00000001 );             /*!< Overrun flag 0                       */
DMAMUX_RGSR_OF1            EQU           ( 0x00000002 );             /*!< Overrun flag 1                       */
DMAMUX_RGSR_OF2            EQU           ( 0x00000004 );             /*!< Overrun flag 2                       */
DMAMUX_RGSR_OF3            EQU           ( 0x00000008 );             /*!< Overrun flag 3                       */
											  
;/********************  Bits definition for DMAMUX_RGCFR register  **************/

DMAMUX_RGCFR_COF0          EQU          ( 0x00000001 );           /*!< Clear Overrun flag 0                 */
DMAMUX_RGCFR_COF1          EQU          ( 0x00000002 );           /*!< Clear Overrun flag 1                 */
DMAMUX_RGCFR_COF2          EQU          ( 0x00000004 );           /*!< Clear Overrun flag 2                 */
DMAMUX_RGCFR_COF3          EQU          ( 0x00000008 );           /*!< Clear Overrun flag 3                 */

;/******************************************************************************/
;/*                                                                            */
;/*                    External Interrupt/Event Controller                     */
;/*                                                                            */
;/******************************************************************************/

;/******************  Bit definition for EXTI_RTSR1 register  ******************/
EXTI_RTSR1_RT0             EQU         (0x00000001 );                       /*!< Rising trigger configuration for input line 0 */
EXTI_RTSR1_RT1             EQU         (0x00000002 );                       /*!< Rising trigger configuration for input line 1 */
EXTI_RTSR1_RT2             EQU         (0x00000004 );                       /*!< Rising trigger configuration for input line 2 */
EXTI_RTSR1_RT3             EQU         (0x00000008 );                       /*!< Rising trigger configuration for input line 3 */
EXTI_RTSR1_RT4             EQU         (0x00000010 );                       /*!< Rising trigger configuration for input line 4 */
EXTI_RTSR1_RT5             EQU         (0x00000020 );                       /*!< Rising trigger configuration for input line 5 */
EXTI_RTSR1_RT6             EQU         (0x00000040 );                       /*!< Rising trigger configuration for input line 6 */
EXTI_RTSR1_RT7             EQU         (0x00000080 );                       /*!< Rising trigger configuration for input line 7 */
EXTI_RTSR1_RT8             EQU         (0x00000100 );                       /*!< Rising trigger configuration for input line 8 */
EXTI_RTSR1_RT9             EQU         (0x00000200 );                       /*!< Rising trigger configuration for input line 9 */
EXTI_RTSR1_RT10            EQU         (0x00000400 );                      /*!< Rising trigger configuration for input line 10 */
EXTI_RTSR1_RT11            EQU         (0x00000800 );                      /*!< Rising trigger configuration for input line 11 */
EXTI_RTSR1_RT12            EQU         (0x00001000 );                      /*!< Rising trigger configuration for input line 12 */
EXTI_RTSR1_RT13            EQU         (0x00002000 );                      /*!< Rising trigger configuration for input line 13 */
EXTI_RTSR1_RT14            EQU         (0x00004000 );                      /*!< Rising trigger configuration for input line 14 */
EXTI_RTSR1_RT15            EQU         (0x00008000 );                      /*!< Rising trigger configuration for input line 15 */
EXTI_RTSR1_RT16            EQU         (0x00010000 );                      /*!< Rising trigger configuration for input line 16 */

;/******************  Bit definition for EXTI_FTSR1 register  ******************/
EXTI_FTSR1_FT0             EQU         (0x00000001 );                      /*!< Falling trigger configuration for input line 0 */
EXTI_FTSR1_FT1             EQU         (0x00000002 );                      /*!< Falling trigger configuration for input line 1 */
EXTI_FTSR1_FT2             EQU         (0x00000004 );                      /*!< Falling trigger configuration for input line 2 */
EXTI_FTSR1_FT3             EQU         (0x00000008 );                      /*!< Falling trigger configuration for input line 3 */
EXTI_FTSR1_FT4             EQU         (0x00000010 );                      /*!< Falling trigger configuration for input line 4 */
EXTI_FTSR1_FT5             EQU         (0x00000020 );                      /*!< Falling trigger configuration for input line 5 */
EXTI_FTSR1_FT6             EQU         (0x00000040 );                      /*!< Falling trigger configuration for input line 6 */
EXTI_FTSR1_FT7             EQU         (0x00000080 );                      /*!< Falling trigger configuration for input line 7 */
EXTI_FTSR1_FT8             EQU         (0x00000100 );                      /*!< Falling trigger configuration for input line 8 */
EXTI_FTSR1_FT9             EQU         (0x00000200 );                      /*!< Falling trigger configuration for input line 9 */
EXTI_FTSR1_FT10            EQU         (0x00000400 );                      /*!< Falling trigger configuration for input line 10 */
EXTI_FTSR1_FT11            EQU         (0x00000800 );                      /*!< Falling trigger configuration for input line 11 */
EXTI_FTSR1_FT12            EQU         (0x00001000 );                      /*!< Falling trigger configuration for input line 12 */
EXTI_FTSR1_FT13            EQU         (0x00002000 );                      /*!< Falling trigger configuration for input line 13 */
EXTI_FTSR1_FT14            EQU         (0x00004000 );                      /*!< Falling trigger configuration for input line 14 */
EXTI_FTSR1_FT15            EQU         (0x00008000 );                      /*!< Falling trigger configuration for input line 15 */
EXTI_FTSR1_FT16            EQU         (0x00010000 );                      /*!< Falling trigger configuration for input line 16 */

;/******************  Bit definition for EXTI_SWIER1 register  *****************/

EXTI_SWIER1_SWI0            EQU         (0x00000001 );                          /*!< Software Interrupt on line 0 */
EXTI_SWIER1_SWI1            EQU         (0x00000002 );                          /*!< Software Interrupt on line 1 */
EXTI_SWIER1_SWI2            EQU         (0x00000004 );                          /*!< Software Interrupt on line 2 */
EXTI_SWIER1_SWI3            EQU         (0x00000008 );                          /*!< Software Interrupt on line 3 */
EXTI_SWIER1_SWI4            EQU         (0x00000010 );                          /*!< Software Interrupt on line 4 */
EXTI_SWIER1_SWI5            EQU         (0x00000020 );                          /*!< Software Interrupt on line 5 */
EXTI_SWIER1_SWI6            EQU         (0x00000040 );                          /*!< Software Interrupt on line 6 */
EXTI_SWIER1_SWI7            EQU         (0x00000080 );                          /*!< Software Interrupt on line 7 */
EXTI_SWIER1_SWI8            EQU         (0x00000100 );                          /*!< Software Interrupt on line 8 */
EXTI_SWIER1_SWI9            EQU         (0x00000200 );                          /*!< Software Interrupt on line 9 */
EXTI_SWIER1_SWI10           EQU         (0x00000400 );                          /*!< Software Interrupt on line 10 */
EXTI_SWIER1_SWI11           EQU         (0x00000800 );                          /*!< Software Interrupt on line 11 */
EXTI_SWIER1_SWI12           EQU         (0x00001000 );                          /*!< Software Interrupt on line 12 */
EXTI_SWIER1_SWI13           EQU         (0x00002000 );                          /*!< Software Interrupt on line 13 */
EXTI_SWIER1_SWI14           EQU         (0x00004000 );                          /*!< Software Interrupt on line 14 */
EXTI_SWIER1_SWI15           EQU         (0x00008000 );                          /*!< Software Interrupt on line 15 */
EXTI_SWIER1_SWI16           EQU         (0x00010000 );                          /*!< Software Interrupt on line 16 */

;/*******************  Bit definition for EXTI_RPR1 register  ******************/

EXTI_RPR1_RPIF0             EQU         (0x00000001 );                      /*!< Rising Pending Interrupt Flag on line 0 */
EXTI_RPR1_RPIF1             EQU         (0x00000002 );                      /*!< Rising Pending Interrupt Flag on line 1 */
EXTI_RPR1_RPIF2             EQU         (0x00000004 );                      /*!< Rising Pending Interrupt Flag on line 2 */
EXTI_RPR1_RPIF3             EQU         (0x00000008 );                      /*!< Rising Pending Interrupt Flag on line 3 */
EXTI_RPR1_RPIF4             EQU         (0x00000010 );                      /*!< Rising Pending Interrupt Flag on line 4 */
EXTI_RPR1_RPIF5             EQU         (0x00000020 );                      /*!< Rising Pending Interrupt Flag on line 5 */
EXTI_RPR1_RPIF6             EQU         (0x00000040 );                      /*!< Rising Pending Interrupt Flag on line 6 */
EXTI_RPR1_RPIF7             EQU         (0x00000080 );                      /*!< Rising Pending Interrupt Flag on line 7 */
EXTI_RPR1_RPIF8             EQU         (0x00000100 );                      /*!< Rising Pending Interrupt Flag on line 8 */
EXTI_RPR1_RPIF9             EQU         (0x00000200 );                      /*!< Rising Pending Interrupt Flag on line 9 */
EXTI_RPR1_RPIF10            EQU         (0x00000400 );                      /*!< Rising Pending Interrupt Flag on line 10 */
EXTI_RPR1_RPIF11            EQU         (0x00000800 );                      /*!< Rising Pending Interrupt Flag on line 11 */
EXTI_RPR1_RPIF12            EQU         (0x00001000 );                      /*!< Rising Pending Interrupt Flag on line 12 */
EXTI_RPR1_RPIF13            EQU         (0x00002000 );                      /*!< Rising Pending Interrupt Flag on line 13 */
EXTI_RPR1_RPIF14            EQU         (0x00004000 );                      /*!< Rising Pending Interrupt Flag on line 14 */
EXTI_RPR1_RPIF15            EQU         (0x00008000 );                      /*!< Rising Pending Interrupt Flag on line 15 */
EXTI_RPR1_RPIF16            EQU         (0x00010000 );                      /*!< Rising Pending Interrupt Flag on line 16 */

;/*******************  Bit definition for EXTI_FPR1 register  ******************/

EXTI_FPR1_FPIF0            EQU         (0x00000001 );                       /*!< Falling Pending Interrupt Flag on line 0 */
EXTI_FPR1_FPIF1            EQU         (0x00000002 );                       /*!< Falling Pending Interrupt Flag on line 1 */
EXTI_FPR1_FPIF2            EQU         (0x00000004 );                       /*!< Falling Pending Interrupt Flag on line 2 */
EXTI_FPR1_FPIF3            EQU         (0x00000008 );                       /*!< Falling Pending Interrupt Flag on line 3 */
EXTI_FPR1_FPIF4            EQU         (0x00000010 );                       /*!< Falling Pending Interrupt Flag on line 4 */
EXTI_FPR1_FPIF5            EQU         (0x00000020 );                       /*!< Falling Pending Interrupt Flag on line 5 */
EXTI_FPR1_FPIF6            EQU         (0x00000040 );                       /*!< Falling Pending Interrupt Flag on line 6 */
EXTI_FPR1_FPIF7            EQU         (0x00000080 );                       /*!< Falling Pending Interrupt Flag on line 7 */
EXTI_FPR1_FPIF8            EQU         (0x00000100 );                       /*!< Falling Pending Interrupt Flag on line 8 */
EXTI_FPR1_FPIF9            EQU         (0x00000200 );                       /*!< Falling Pending Interrupt Flag on line 9 */
EXTI_FPR1_FPIF10           EQU         (0x00000400 );                       /*!< Falling Pending Interrupt Flag on line 10 */
EXTI_FPR1_FPIF11           EQU         (0x00000800 );                       /*!< Falling Pending Interrupt Flag on line 11 */
EXTI_FPR1_FPIF12           EQU         (0x00001000 );                       /*!< Falling Pending Interrupt Flag on line 12 */
EXTI_FPR1_FPIF13           EQU         (0x00002000 );                       /*!< Falling Pending Interrupt Flag on line 13 */
EXTI_FPR1_FPIF14           EQU         (0x00004000 );                       /*!< Falling Pending Interrupt Flag on line 14 */
EXTI_FPR1_FPIF15           EQU         (0x00008000 );                       /*!< Falling Pending Interrupt Flag on line 15 */
EXTI_FPR1_FPIF16           EQU         (0x00010000 );                       /*!< Falling Pending Interrupt Flag on line 16 */

;/*****************  Bit definition for EXTI_EXTICR1 register  **************/
EXTI_EXTICR1_EXTI0         EQU           (0x00000007);                /*!< EXTI 0 configuration */
EXTI_EXTICR1_EXTI0_0       EQU           (0x00000001);
EXTI_EXTICR1_EXTI0_1       EQU           (0x00000002);
EXTI_EXTICR1_EXTI0_2       EQU           (0x00000004);
							
EXTI_EXTICR1_EXTI1         EQU           (0x00000700);                /*!< EXTI 1 configuration */
EXTI_EXTICR1_EXTI1_0       EQU           (0x00000100);
EXTI_EXTICR1_EXTI1_1       EQU           (0x00000200);
EXTI_EXTICR1_EXTI1_2       EQU           (0x00000400);
							
EXTI_EXTICR1_EXTI2         EQU           (0x00070000);                /*!< EXTI 2 configuration */
EXTI_EXTICR1_EXTI2_0       EQU           (0x00010000);
EXTI_EXTICR1_EXTI2_1       EQU           (0x00020000);
EXTI_EXTICR1_EXTI2_2       EQU           (0x00040000);
							
EXTI_EXTICR1_EXTI3         EQU           (0x07000000);                /*!< EXTI 3 configuration */
EXTI_EXTICR1_EXTI3_0       EQU           (0x01000000);
EXTI_EXTICR1_EXTI3_1       EQU           (0x02000000);
EXTI_EXTICR1_EXTI3_2       EQU           (0x04000000);

;/*****************  Bit definition for EXTI_EXTICR2 register  **************/

EXTI_EXTICR2_EXTI4         EQU           (0x00000007);               /*!< EXTI 4 configuration */
EXTI_EXTICR2_EXTI4_0       EQU           (0x00000001);     /*!< 0x00000001 */
EXTI_EXTICR2_EXTI4_1       EQU           (0x00000002);     /*!< 0x00000002 */
EXTI_EXTICR2_EXTI4_2       EQU           (0x00000004);     /*!< 0x00000004 */
                        	
EXTI_EXTICR2_EXTI5         EQU           (0x00000700);               /*!< EXTI 5 configuration */
EXTI_EXTICR2_EXTI5_0       EQU           (0x00000100);     /*!< 0x00000100 */
EXTI_EXTICR2_EXTI5_1       EQU           (0x00000200);     /*!< 0x00000200 */
EXTI_EXTICR2_EXTI5_2       EQU           (0x00000400);     /*!< 0x00000400 */
                        	
EXTI_EXTICR2_EXTI6         EQU           (0x00070000);               /*!< EXTI 6 configuration */
EXTI_EXTICR2_EXTI6_0       EQU           (0x00010000);     /*!< 0x00010000 */
EXTI_EXTICR2_EXTI6_1       EQU           (0x00020000);     /*!< 0x00020000 */
EXTI_EXTICR2_EXTI6_2       EQU           (0x00040000);     /*!< 0x00040000 */
                        	
EXTI_EXTICR2_EXTI7         EQU           (0x07000000);               /*!< EXTI 7 configuration */
EXTI_EXTICR2_EXTI7_0       EQU           (0x01000000);     /*!< 0x01000000 */
EXTI_EXTICR2_EXTI7_1       EQU           (0x02000000);     /*!< 0x02000000 */
EXTI_EXTICR2_EXTI7_2       EQU           (0x04000000);     /*!< 0x04000000 */

;/*****************  Bit definition for EXTI_EXTICR3 register  **************/

EXTI_EXTICR3_EXTI8       EQU           (0x00000007);           /*!< EXTI 8 configuration */
EXTI_EXTICR3_EXTI8_0     EQU           (0x00000001); /*!< 0x00000001 */
EXTI_EXTICR3_EXTI8_1     EQU           (0x00000002); /*!< 0x00000002 */
EXTI_EXTICR3_EXTI8_2     EQU           (0x00000004); /*!< 0x00000004 */
                      	
EXTI_EXTICR3_EXTI9       EQU           (0x00000700);           /*!< EXTI 9 configuration */
EXTI_EXTICR3_EXTI9_0     EQU           (0x00000100); /*!< 0x00000100 */
EXTI_EXTICR3_EXTI9_1     EQU           (0x00000200); /*!< 0x00000200 */
EXTI_EXTICR3_EXTI9_2     EQU           (0x00000400); /*!< 0x00000400 */
                      	
EXTI_EXTICR3_EXTI10      EQU           (0x00070000);           /*!< EXTI 10 configuration */
EXTI_EXTICR3_EXTI10_0    EQU           (0x00010000); /*!< 0x00010000 */
EXTI_EXTICR3_EXTI10_1    EQU           (0x00020000); /*!< 0x00020000 */
EXTI_EXTICR3_EXTI10_2    EQU           (0x00040000); /*!< 0x00040000 */
                      	
EXTI_EXTICR3_EXTI11      EQU           (0x07000000);           /*!< EXTI 11 configuration */
EXTI_EXTICR3_EXTI11_0    EQU           (0x01000000); /*!< 0x01000000 */
EXTI_EXTICR3_EXTI11_1    EQU           (0x02000000); /*!< 0x02000000 */
EXTI_EXTICR3_EXTI11_2    EQU           (0x04000000); /*!< 0x04000000 */

;/*****************  Bit definition for EXTI_EXTICR4 register  **************/

EXTI_EXTICR4_EXTI12        EQU           (0x00000007);       /*!< EXTI 12 configuration */
EXTI_EXTICR4_EXTI12_0      EQU           (0x00000001);       /*!< 0x00000001 */
EXTI_EXTICR4_EXTI12_1      EQU           (0x00000002);       /*!< 0x00000002 */
EXTI_EXTICR4_EXTI12_2      EQU           (0x00000004);       /*!< 0x00000004 */
                         
EXTI_EXTICR4_EXTI13        EQU           (0x00000700);       /*!< EXTI 13 configuration */
EXTI_EXTICR4_EXTI13_0      EQU           (0x00000100);       /*!< 0x00000100 */
EXTI_EXTICR4_EXTI13_1      EQU           (0x00000200);      /*!< 0x00000200 */
EXTI_EXTICR4_EXTI13_2      EQU           (0x00000400);        /*!< 0x00000400 */
                         
EXTI_EXTICR4_EXTI14        EQU           (0x00070000);       /*!< EXTI 14 configuration */
EXTI_EXTICR4_EXTI14_0      EQU           (0x00010000);       /*!< 0x00010000 */
EXTI_EXTICR4_EXTI14_1      EQU           (0x00020000);       /*!< 0x00020000 */
EXTI_EXTICR4_EXTI14_2      EQU           (0x00040000);       /*!< 0x00040000 */
                         
EXTI_EXTICR4_EXTI15        EQU           (0x07000000);       /*!< EXTI 15 configuration */
EXTI_EXTICR4_EXTI15_0      EQU           (0x01000000);       /*!< 0x01000000 */
EXTI_EXTICR4_EXTI15_1      EQU           (0x02000000);       /*!< 0x02000000 */
EXTI_EXTICR4_EXTI15_2      EQU           (0x04000000);       /*!< 0x04000000 */

;/*******************  Bit definition for EXTI_IMR1 register  ******************/

EXTI_IMR1_IM0              EQU              (0x00000001 );                        /*!< Interrupt Mask on line 0 */
EXTI_IMR1_IM1              EQU              (0x00000002 );                        /*!< Interrupt Mask on line 1 */
EXTI_IMR1_IM2              EQU              (0x00000004 );                        /*!< Interrupt Mask on line 2 */
EXTI_IMR1_IM3              EQU              (0x00000008 );                        /*!< Interrupt Mask on line 3 */
EXTI_IMR1_IM4              EQU              (0x00000010 );                        /*!< Interrupt Mask on line 4 */
EXTI_IMR1_IM5              EQU              (0x00000020 );                        /*!< Interrupt Mask on line 5 */
EXTI_IMR1_IM6              EQU              (0x00000040 );                        /*!< Interrupt Mask on line 6 */
EXTI_IMR1_IM7              EQU              (0x00000080 );                        /*!< Interrupt Mask on line 7 */
EXTI_IMR1_IM8              EQU              (0x00000100 );                        /*!< Interrupt Mask on line 8 */
EXTI_IMR1_IM9              EQU              (0x00000200 );                        /*!< Interrupt Mask on line 9 */
EXTI_IMR1_IM10             EQU              (0x00000400 );                       /*!< Interrupt Mask on line 10 */
EXTI_IMR1_IM11             EQU              (0x00000800 );                       /*!< Interrupt Mask on line 11 */
EXTI_IMR1_IM12             EQU              (0x00001000 );                       /*!< Interrupt Mask on line 12 */
EXTI_IMR1_IM13             EQU              (0x00002000 );                       /*!< Interrupt Mask on line 13 */
EXTI_IMR1_IM14             EQU              (0x00004000 );                       /*!< Interrupt Mask on line 14 */
EXTI_IMR1_IM15             EQU              (0x00008000 );                       /*!< Interrupt Mask on line 15 */
EXTI_IMR1_IM16             EQU              (0x00010000 );                       /*!< Interrupt Mask on line 16 */
EXTI_IMR1_IM19             EQU              (0x00080000 );                       /*!< Interrupt Mask on line 19 */
EXTI_IMR1_IM21             EQU              (0x00200000 );                       /*!< Interrupt Mask on line 21 */
EXTI_IMR1_IM23             EQU              (0x00800000 );                       /*!< Interrupt Mask on line 23 */
EXTI_IMR1_IM25             EQU              (0x02000000 );                       /*!< Interrupt Mask on line 25 */
EXTI_IMR1_IM28             EQU              (0x10000000 );                       /*!< Interrupt Mask on line 28 */
EXTI_IMR1_IM29             EQU              (0x20000000 );                       /*!< Interrupt Mask on line 29 */
EXTI_IMR1_IM30             EQU              (0x40000000 );                       /*!< Interrupt Mask on line 30 */
EXTI_IMR1_IM31             EQU              (0x80000000 );                       /*!< Interrupt Mask on line 31 */
EXTI_IMR1_IM               EQU              (0xF2A9FFFF );                         /*!< Interrupt Mask All */

;;/*******************  Bit definition for EXTI_EMR1 register  ******************/
EXTI_EMR1_EM0              EQU              (0x00000001 );                        /*!< event Mask on line 0 */
EXTI_EMR1_EM1              EQU              (0x00000002 );                        /*!< event Mask on line 1 */
EXTI_EMR1_EM2              EQU              (0x00000004 );                        /*!< event Mask on line 2 */
EXTI_EMR1_EM3              EQU              (0x00000008 );                        /*!< event Mask on line 3 */
EXTI_EMR1_EM4              EQU              (0x00000010 );                        /*!< event Mask on line 4 */
EXTI_EMR1_EM5              EQU              (0x00000020 );                        /*!< event Mask on line 5 */
EXTI_EMR1_EM6              EQU              (0x00000040 );                        /*!< event Mask on line 6 */
EXTI_EMR1_EM7              EQU              (0x00000080 );                        /*!< event Mask on line 7 */
EXTI_EMR1_EM8              EQU              (0x00000100 );                        /*!< event Mask on line 8 */
EXTI_EMR1_EM9              EQU              (0x00000200 );                        /*!< event Mask on line 9 */
EXTI_EMR1_EM10             EQU              (0x00000400 );                       /*!< event Mask on line 10 */
EXTI_EMR1_EM11             EQU              (0x00000800 );                       /*!< event Mask on line 11 */
EXTI_EMR1_EM12             EQU              (0x00001000 );                       /*!< event Mask on line 12 */
EXTI_EMR1_EM13             EQU              (0x00002000 );                       /*!< event Mask on line 13 */
EXTI_EMR1_EM14             EQU              (0x00004000 );                       /*!< event Mask on line 14 */
EXTI_EMR1_EM15             EQU              (0x00008000 );                       /*!< event Mask on line 15 */
EXTI_EMR1_EM16             EQU              (0x00010000 );                       /*!< event Mask on line 16 */
EXTI_EMR1_EM19             EQU              (0x00080000 );                       /*!< event Mask on line 19 */
EXTI_EMR1_EM21             EQU              (0x00200000 );                       /*!< event Mask on line 21 */
EXTI_EMR1_EM23             EQU              (0x00800000 );                       /*!< event Mask on line 23 */
EXTI_EMR1_EM25             EQU              (0x02000000 );                       /*!< event Mask on line 25 */
EXTI_EMR1_EM28             EQU              (0x10000000 );                       /*!< event Mask on line 28 */
EXTI_EMR1_EM29             EQU              (0x20000000 );                       /*!< event Mask on line 29 */
EXTI_EMR1_EM30             EQU              (0x40000000 );                       /*!< event Mask on line 30 */
EXTI_EMR1_EM31             EQU              (0x80000000 );                       /*!< event Mask on line 31 */
EXTI_EMR1_EM               EQU              (0xF2A9FFFF );                         /*!< event Mask All */


;/******************************************************************************/
;/*                                                                            */
;/*                                    FLASH                                   */
;/*                                                                            */
;/******************************************************************************/
;GPIO_NRST_CONFIG_SUPPORT         /*!< GPIO feature available only on specific devices: Configure NRST pin */
;FLASH_SECURABLE_MEMORY_SUPPORT   /*!< Flash feature available only on specific devices: allow to secure memory */
;FLASH_PCROP_SUPPORT              /*!< Flash feature available only on specific devices: proprietary code read protection areas selected by option */

;/*******************  Bits definition for FLASH_ACR register  *****************/

FLASH_ACR_LATENCY                  EQU               (0x00000007);
FLASH_ACR_LATENCY_0                EQU               (0x00000001);
FLASH_ACR_LATENCY_1                EQU               (0x00000002);
FLASH_ACR_LATENCY_2                EQU               (0x00000004);
FLASH_ACR_PRFTEN                   EQU               (0x00000100);
FLASH_ACR_ICEN                     EQU               (0x00000200);
FLASH_ACR_ICRST                    EQU               (0x00000800);
FLASH_ACR_PROGEMPTY                EQU               (0x00010000);
FLASH_ACR_DBG_SWEN                 EQU               (0x00040000);

;/*******************  Bits definition for FLASH_SR register  ******************/

FLASH_SR_EOP                       EQU                  (0x00000001 )
FLASH_SR_OPERR                     EQU                  (0x00000002 )
FLASH_SR_PROGERR                   EQU                  (0x00000008 )
FLASH_SR_WRPERR                    EQU                  (0x00000010 )
FLASH_SR_PGAERR                    EQU                  (0x00000020 )
FLASH_SR_SIZERR                    EQU                  (0x00000040 )
FLASH_SR_PGSERR                    EQU                  (0x00000080 )
FLASH_SR_MISERR                    EQU                  (0x00000100 )
FLASH_SR_FASTERR                   EQU                  (0x00000200 )
FLASH_SR_RDERR                     EQU                  (0x00004000 )
FLASH_SR_OPTVERR                   EQU                  (0x00008000 )
FLASH_SR_BSY1                      EQU                  (0x00010000 )
FLASH_SR_CFGBSY                    EQU                  (0x00040000 )

;/*******************  Bits definition for FLASH_CR register  ******************/

FLASH_CR_PG                EQU                     (0x00000001 )
FLASH_CR_PER               EQU                     (0x00000002 )
FLASH_CR_MER1              EQU                     (0x00000004 )
FLASH_CR_PNB               EQU                     (0x00001FF8 )
FLASH_CR_STRT              EQU                     (0x00010000 )
FLASH_CR_OPTSTRT           EQU                     (0x00020000 )
FLASH_CR_FSTPG             EQU                     (0x00040000 )
FLASH_CR_EOPIE             EQU                     (0x01000000 )
FLASH_CR_ERRIE             EQU                     (0x02000000 )
FLASH_CR_RDERRIE           EQU                     (0x04000000 )
FLASH_CR_OBL_LAUNCH        EQU                     (0x08000000 )
FLASH_CR_SEC_PROT          EQU                     (0x10000000 )
FLASH_CR_OPTLOCK           EQU                     (0x40000000 )
FLASH_CR_LOCK              EQU                     (0x80000000 )

;/*******************  Bits definition for FLASH_ECCR register  ****************/

FLASH_ECCR_ADDR_ECC        EQU                        (0x00003FFF )
FLASH_ECCR_SYSF_ECC        EQU                        (0x00100000 )
FLASH_ECCR_ECCCIE          EQU                        (0x01000000 )
FLASH_ECCR_ECCC            EQU                        (0x40000000 )
FLASH_ECCR_ECCD            EQU                        (0x80000000 )

;/*******************  Bits definition for FLASH_OPTR register  ****************/

FLASH_OPTR_RDP               EQU                (0x000000FF )
FLASH_OPTR_BOR_EN            EQU                (0x00000100 )
FLASH_OPTR_BORR_LEV          EQU                (0x00000600 )
FLASH_OPTR_BORR_LEV_0        EQU                (0x00000200 )
FLASH_OPTR_BORR_LEV_1        EQU                (0x00000400 )
FLASH_OPTR_BORF_LEV          EQU                (0x00001800 )
FLASH_OPTR_BORF_LEV_0        EQU                (0x00000800 )
FLASH_OPTR_BORF_LEV_1        EQU                (0x00001000 )
FLASH_OPTR_nRST_STOP         EQU                (0x00002000 )
FLASH_OPTR_nRST_STDBY        EQU                (0x00004000 )
FLASH_OPTR_nRST_SHDW         EQU                (0x00008000 )
FLASH_OPTR_IWDG_SW           EQU                (0x00010000 )
FLASH_OPTR_IWDG_STOP         EQU                (0x00020000 )
FLASH_OPTR_IWDG_STDBY        EQU                (0x00040000 )
FLASH_OPTR_WWDG_SW           EQU                (0x00080000 )
FLASH_OPTR_RAM_PARITY_CHECK  EQU                (0x00400000 )
FLASH_OPTR_nBOOT_SEL         EQU                (0x01000000 )
FLASH_OPTR_nBOOT1            EQU                (0x02000000 )
FLASH_OPTR_nBOOT0            EQU                (0x04000000 )
FLASH_OPTR_NRST_MODE         EQU                (0x18000000 )
FLASH_OPTR_NRST_MODE_0       EQU                (0x08000000 )
FLASH_OPTR_NRST_MODE_1       EQU                (0x10000000 )
FLASH_OPTR_IRHEN             EQU                (0x20000000 )

;/******************  Bits definition for FLASH_PCROP1ASR register  ************/

FLASH_PCROP1ASR_PCROP1A_STRT EQU          (0x0000007F)

;/******************  Bits definition for FLASH_PCROP1AER register  ************/

FLASH_PCROP1AER_PCROP1A_END     EQU       (0x0000007F)
FLASH_PCROP1AER_PCROP_RDP       EQU       (0x80000000)

;/******************  Bits definition for FLASH_WRP1AR register  ***************/

FLASH_WRP1AR_WRP1A_STRT         EQU       (0x0000001F)
FLASH_WRP1AR_WRP1A_END          EQU       (0x001F0000)

;/******************  Bits definition for FLASH_WRP1BR register  ***************/

FLASH_WRP1BR_WRP1B_STRT         EQU       (0x0000001F)
FLASH_WRP1BR_WRP1B_END          EQU       (0x001F0000)

;/******************  Bits definition for FLASH_PCROP1BSR register  ************/

FLASH_PCROP1BSR_PCROP1B_STRT    EQU       (0x0000007F)

;/******************  Bits definition for FLASH_PCROP1BER register  ************/

FLASH_PCROP1BER_PCROP1B_END     EQU       (0x0000007F)


;/******************  Bits definition for FLASH_SECR register  *****************/

FLASH_SECR_SEC_SIZE             EQU       (0x0000003F)
FLASH_SECR_BOOT_LOCK            EQU       (0x00010000)

;/******************************************************************************/
;/*                                                                            */
;/*                            General Purpose I/O                             */
;/*                                                                            */
;/******************************************************************************/
;/******************  Bits definition for GPIO_MODER register  *****************/
GPIO_MODER_MODE0                     EQU                                 (0x00000003);   
GPIO_MODER_MODE0_0                   EQU                                 (0x00000001);   */
GPIO_MODER_MODE0_1                   EQU                                 (0x00000002);   */
GPIO_MODER_MODE1                     EQU                                 (0x0000000C);   
GPIO_MODER_MODE1_0                   EQU                                 (0x00000004);   */
GPIO_MODER_MODE1_1                   EQU                                 (0x00000008);   */
GPIO_MODER_MODE2                     EQU                                 (0x00000030);   
GPIO_MODER_MODE2_0                   EQU                                 (0x00000010);   */
GPIO_MODER_MODE2_1                   EQU                                 (0x00000020);   */
GPIO_MODER_MODE3                     EQU                                 (0x000000C0);   
GPIO_MODER_MODE3_0                   EQU                                 (0x00000040);   (0x1UL << GPIO_MODER_MODE3_Pos)          /*!< 0x00000040 */
GPIO_MODER_MODE3_1                   EQU                                 (0x00000080);   (0x2UL << GPIO_MODER_MODE3_Pos)          /*!< 0x00000080 */
GPIO_MODER_MODE4                     EQU                                 (0x00000300);   
GPIO_MODER_MODE4_0                   EQU                                 (0x00000100);    (0x1UL << GPIO_MODER_MODE4_Pos)          /*!< 0x00000100 */
GPIO_MODER_MODE4_1                   EQU                                 (0x00000200);    (0x2UL << GPIO_MODER_MODE4_Pos)          /*!< 0x00000200 */
GPIO_MODER_MODE5                     EQU                                 (0x00000C00);   
GPIO_MODER_MODE5_0                   EQU                                 (0x00000400);    (0x1UL << GPIO_MODER_MODE5_Pos)          /*!< 0x00000400 */
GPIO_MODER_MODE5_1                   EQU                                 (0x00000800);    (0x2UL << GPIO_MODER_MODE5_Pos)          /*!< 0x00000800 */
GPIO_MODER_MODE6                     EQU                                 (0x00003000);   
GPIO_MODER_MODE6_0                   EQU                                 (0x00001000);   (0x1UL << GPIO_MODER_MODE6_Pos)          /*!< 0x00001000 */
GPIO_MODER_MODE6_1                   EQU                                 (0x00002000);   (0x2UL << GPIO_MODER_MODE6_Pos)          /*!< 0x00002000 */
GPIO_MODER_MODE7                     EQU                                 (0x0000C000);   
GPIO_MODER_MODE7_0                   EQU                                 (0x00004000);    (0x1UL << GPIO_MODER_MODE7_Pos)          /*!< 0x00004000 */
GPIO_MODER_MODE7_1                   EQU                                 (0x00008000);    (0x2UL << GPIO_MODER_MODE7_Pos)          /*!< 0x00008000 */
GPIO_MODER_MODE8                     EQU                                 (0x00030000);   
GPIO_MODER_MODE8_0                   EQU                                 (0x00010000);   (0x1UL << GPIO_MODER_MODE8_Pos)          /*!< 0x00010000 */
GPIO_MODER_MODE8_1                   EQU                                 (0x00020000);   (0x2UL << GPIO_MODER_MODE8_Pos)          /*!< 0x00020000 */
GPIO_MODER_MODE9                     EQU                                 (0x000C0000);   
GPIO_MODER_MODE9_0                   EQU                                 (0x00040000);   (0x1UL << GPIO_MODER_MODE9_Pos)          /*!< 0x00040000 */
GPIO_MODER_MODE9_1                   EQU                                 (0x00080000);   (0x2UL << GPIO_MODER_MODE9_Pos)          /*!< 0x00080000 */
GPIO_MODER_MODE10                    EQU                                 (0x00300000);   
GPIO_MODER_MODE10_0                  EQU                                 (0x00100000);   (0x1UL << GPIO_MODER_MODE10_Pos)         /*!< 0x00100000 */
GPIO_MODER_MODE10_1                  EQU                                 (0x00200000);   (0x2UL << GPIO_MODER_MODE10_Pos)         /*!< 0x00200000 */
GPIO_MODER_MODE11                    EQU                                 (0x00C00000);   
GPIO_MODER_MODE11_0                  EQU                                 (0x00400000);   (0x1UL << GPIO_MODER_MODE11_Pos)         /*!< 0x00400000 */
GPIO_MODER_MODE11_1                  EQU                                 (0x00800000);   (0x2UL << GPIO_MODER_MODE11_Pos)         /*!< 0x00800000 */
GPIO_MODER_MODE12                    EQU                                 (0x03000000);   
GPIO_MODER_MODE12_0                  EQU                                 (0x01000000);   (0x1UL << GPIO_MODER_MODE12_Pos)         /*!< 0x01000000 */
GPIO_MODER_MODE12_1                  EQU                                 (0x02000000);   0x2UL << GPIO_MODER_MODE12_Pos)         /*!< 0x02000000 */
GPIO_MODER_MODE13                    EQU                                 (0x0C000000);   
GPIO_MODER_MODE13_0                  EQU                                 (0x04000000);   (0x1UL << GPIO_MODER_MODE13_Pos)         /*!< 0x04000000 */
GPIO_MODER_MODE13_1                  EQU                                 (0x08000000);   (0x2UL << GPIO_MODER_MODE13_Pos)         /*!< 0x08000000 */
GPIO_MODER_MODE14                    EQU                                 (0x30000000);   
GPIO_MODER_MODE14_0                  EQU                                 (0x10000000);   (0x1UL << GPIO_MODER_MODE14_Pos)         /*!< 0x10000000 */
GPIO_MODER_MODE14_1                  EQU                                 (0x20000000);   (0x2UL << GPIO_MODER_MODE14_Pos)         /*!< 0x20000000 */
GPIO_MODER_MODE15                    EQU                                 (0xC0000000);   
GPIO_MODER_MODE15_0                  EQU                                 (0x40000000);    (0x1UL << GPIO_MODER_MODE15_Pos)         /*!< 0x40000000 */
GPIO_MODER_MODE15_1                  EQU                                 (0x80000000);    (0x2UL << GPIO_MODER_MODE15_Pos)         /*!< 0x80000000 */

;/******************  Bits definition for GPIO_OTYPER register  ****************/

GPIO_OTYPER_OT0                     EQU                               ( 0x00000001 )
GPIO_OTYPER_OT1                     EQU                               ( 0x00000002 )
GPIO_OTYPER_OT2                     EQU                               ( 0x00000004 )
GPIO_OTYPER_OT3                     EQU                               ( 0x00000008 )
GPIO_OTYPER_OT4                     EQU                               ( 0x00000010 )
GPIO_OTYPER_OT5                     EQU                               ( 0x00000020 )
GPIO_OTYPER_OT6                     EQU                               ( 0x00000040 )
GPIO_OTYPER_OT7                     EQU                               ( 0x00000080 )
GPIO_OTYPER_OT8                     EQU                               ( 0x00000100 )
GPIO_OTYPER_OT9                     EQU                               ( 0x00000200 )
GPIO_OTYPER_OT10                    EQU                               ( 0x00000400 )
GPIO_OTYPER_OT11                    EQU                               ( 0x00000800 )
GPIO_OTYPER_OT12                    EQU                               ( 0x00001000 )
GPIO_OTYPER_OT13                    EQU                               ( 0x00002000 )
GPIO_OTYPER_OT14                    EQU                               ( 0x00004000 )
GPIO_OTYPER_OT15                    EQU                               ( 0x00008000 )

;/******************  Bits definition for GPIO_OSPEEDR register  ***************/

GPIO_OSPEEDR_OSPEED0                     EQU                                 (0x00000003);   
GPIO_OSPEEDR_OSPEED0_0                   EQU                                 (0x00000001);   */
GPIO_OSPEEDR_OSPEED0_1                   EQU                                 (0x00000002);   */
GPIO_OSPEEDR_OSPEED1                     EQU                                 (0x0000000C);   
GPIO_OSPEEDR_OSPEED1_0                   EQU                                 (0x00000004);   */
GPIO_OSPEEDR_OSPEED1_1                   EQU                                 (0x00000008);   */
GPIO_OSPEEDR_OSPEED2                     EQU                                 (0x00000030);   
GPIO_OSPEEDR_OSPEED2_0                   EQU                                 (0x00000010);   */
GPIO_OSPEEDR_OSPEED2_1                   EQU                                 (0x00000020);   */
GPIO_OSPEEDR_OSPEED3                     EQU                                 (0x000000C0);   
GPIO_OSPEEDR_OSPEED3_0                   EQU                                 (0x00000040);   (0x1UL << GPIO_OSPEEDR_OSPEED3_Pos)          /*!< 0x00000040 */
GPIO_OSPEEDR_OSPEED3_1                   EQU                                 (0x00000080);   (0x2UL << GPIO_OSPEEDR_OSPEED3_Pos)          /*!< 0x00000080 */
GPIO_OSPEEDR_OSPEED4                     EQU                                 (0x00000300);   
GPIO_OSPEEDR_OSPEED4_0                   EQU                                 (0x00000100);    (0x1UL << GPIO_OSPEEDR_OSPEED4_Pos)          /*!< 0x00000100 */
GPIO_OSPEEDR_OSPEED4_1                   EQU                                 (0x00000200);    (0x2UL << GPIO_OSPEEDR_OSPEED4_Pos)          /*!< 0x00000200 */
GPIO_OSPEEDR_OSPEED5                     EQU                                 (0x00000C00);   
GPIO_OSPEEDR_OSPEED5_0                   EQU                                 (0x00000400);    (0x1UL << GPIO_OSPEEDR_OSPEED5_Pos)          /*!< 0x00000400 */
GPIO_OSPEEDR_OSPEED5_1                   EQU                                 (0x00000800);    (0x2UL << GPIO_OSPEEDR_OSPEED5_Pos)          /*!< 0x00000800 */
GPIO_OSPEEDR_OSPEED6                     EQU                                 (0x00003000);   
GPIO_OSPEEDR_OSPEED6_0                   EQU                                 (0x00001000);   (0x1UL << GPIO_OSPEEDR_OSPEED6_Pos)          /*!< 0x00001000 */
GPIO_OSPEEDR_OSPEED6_1                   EQU                                 (0x00002000);   (0x2UL << GPIO_OSPEEDR_OSPEED6_Pos)          /*!< 0x00002000 */
GPIO_OSPEEDR_OSPEED7                     EQU                                 (0x0000C000);   
GPIO_OSPEEDR_OSPEED7_0                   EQU                                 (0x00004000);    (0x1UL << GPIO_OSPEEDR_OSPEED7_Pos)          /*!< 0x00004000 */
GPIO_OSPEEDR_OSPEED7_1                   EQU                                 (0x00008000);    (0x2UL << GPIO_OSPEEDR_OSPEED7_Pos)          /*!< 0x00008000 */
GPIO_OSPEEDR_OSPEED8                     EQU                                 (0x00030000);   
GPIO_OSPEEDR_OSPEED8_0                   EQU                                 (0x00010000);   (0x1UL << GPIO_OSPEEDR_OSPEED8_Pos)          /*!< 0x00010000 */
GPIO_OSPEEDR_OSPEED8_1                   EQU                                 (0x00020000);   (0x2UL << GPIO_OSPEEDR_OSPEED8_Pos)          /*!< 0x00020000 */
GPIO_OSPEEDR_OSPEED9                     EQU                                 (0x000C0000);   
GPIO_OSPEEDR_OSPEED9_0                   EQU                                 (0x00040000);   (0x1UL << GPIO_OSPEEDR_OSPEED9_Pos)          /*!< 0x00040000 */
GPIO_OSPEEDR_OSPEED9_1                   EQU                                 (0x00080000);   (0x2UL << GPIO_OSPEEDR_OSPEED9_Pos)          /*!< 0x00080000 */
GPIO_OSPEEDR_OSPEED10                    EQU                                 (0x00300000);   
GPIO_OSPEEDR_OSPEED10_0                  EQU                                 (0x00100000);   (0x1UL << GPIO_OSPEEDR_OSPEED10_Pos)         /*!< 0x00100000 */
GPIO_OSPEEDR_OSPEED10_1                  EQU                                 (0x00200000);   (0x2UL << GPIO_OSPEEDR_OSPEED10_Pos)         /*!< 0x00200000 */
GPIO_OSPEEDR_OSPEED11                    EQU                                 (0x00C00000);   
GPIO_OSPEEDR_OSPEED11_0                  EQU                                 (0x00400000);   (0x1UL << GPIO_OSPEEDR_OSPEED11_Pos)         /*!< 0x00400000 */
GPIO_OSPEEDR_OSPEED11_1                  EQU                                 (0x00800000);   (0x2UL << GPIO_OSPEEDR_OSPEED11_Pos)         /*!< 0x00800000 */
GPIO_OSPEEDR_OSPEED12                    EQU                                 (0x03000000);   
GPIO_OSPEEDR_OSPEED12_0                  EQU                                 (0x01000000);   (0x1UL << GPIO_OSPEEDR_OSPEED12_Pos)         /*!< 0x01000000 */
GPIO_OSPEEDR_OSPEED12_1                  EQU                                 (0x02000000);   0x2UL << GPIO_OSPEEDR_OSPEED12_Pos)         /*!< 0x02000000 */
GPIO_OSPEEDR_OSPEED13                    EQU                                 (0x0C000000);   
GPIO_OSPEEDR_OSPEED13_0                  EQU                                 (0x04000000);   (0x1UL << GPIO_OSPEEDR_OSPEED13_Pos)         /*!< 0x04000000 */
GPIO_OSPEEDR_OSPEED13_1                  EQU                                 (0x08000000);   (0x2UL << GPIO_OSPEEDR_OSPEED13_Pos)         /*!< 0x08000000 */
GPIO_OSPEEDR_OSPEED14                    EQU                                 (0x30000000);   
GPIO_OSPEEDR_OSPEED14_0                  EQU                                 (0x10000000);   (0x1UL << GPIO_OSPEEDR_OSPEED14_Pos)         /*!< 0x10000000 */
GPIO_OSPEEDR_OSPEED14_1                  EQU                                 (0x20000000);   (0x2UL << GPIO_OSPEEDR_OSPEED14_Pos)         /*!< 0x20000000 */
GPIO_OSPEEDR_OSPEED15                    EQU                                 (0xC0000000);   
GPIO_OSPEEDR_OSPEED15_0                  EQU                                 (0x40000000);    (0x1UL << GPIO_OSPEEDR_OSPEED15_Pos)         /*!< 0x40000000 */
GPIO_OSPEEDR_OSPEED15_1                  EQU                                 (0x80000000);    (0x2UL << GPIO_OSPEEDR_OSPEED15_Pos)         /*!< 0x80000000 */



;/******************  Bits definition for GPIO_PUPDR register  *****************/


GPIO_PUPDR_PUPD0                     EQU                                 (0x00000003);   
GPIO_PUPDR_PUPD0_0                   EQU                                 (0x00000001);   */
GPIO_PUPDR_PUPD0_1                   EQU                                 (0x00000002);   */
GPIO_PUPDR_PUPD1                     EQU                                 (0x0000000C);   
GPIO_PUPDR_PUPD1_0                   EQU                                 (0x00000004);   */
GPIO_PUPDR_PUPD1_1                   EQU                                 (0x00000008);   */
GPIO_PUPDR_PUPD2                     EQU                                 (0x00000030);   
GPIO_PUPDR_PUPD2_0                   EQU                                 (0x00000010);   */
GPIO_PUPDR_PUPD2_1                   EQU                                 (0x00000020);   */
GPIO_PUPDR_PUPD3                     EQU                                 (0x000000C0);   
GPIO_PUPDR_PUPD3_0                   EQU                                 (0x00000040);   (0x1UL << GPIO_PUPDR_PUPD3_Pos)          /*!< 0x00000040 */
GPIO_PUPDR_PUPD3_1                   EQU                                 (0x00000080);   (0x2UL << GPIO_PUPDR_PUPD3_Pos)          /*!< 0x00000080 */
GPIO_PUPDR_PUPD4                     EQU                                 (0x00000300);   
GPIO_PUPDR_PUPD4_0                   EQU                                 (0x00000100);    (0x1UL << GPIO_PUPDR_PUPD4_Pos)          /*!< 0x00000100 */
GPIO_PUPDR_PUPD4_1                   EQU                                 (0x00000200);    (0x2UL << GPIO_PUPDR_PUPD4_Pos)          /*!< 0x00000200 */
GPIO_PUPDR_PUPD5                     EQU                                 (0x00000C00);   
GPIO_PUPDR_PUPD5_0                   EQU                                 (0x00000400);    (0x1UL << GPIO_PUPDR_PUPD5_Pos)          /*!< 0x00000400 */
GPIO_PUPDR_PUPD5_1                   EQU                                 (0x00000800);    (0x2UL << GPIO_PUPDR_PUPD5_Pos)          /*!< 0x00000800 */
GPIO_PUPDR_PUPD6                     EQU                                 (0x00003000);   
GPIO_PUPDR_PUPD6_0                   EQU                                 (0x00001000);   (0x1UL << GPIO_PUPDR_PUPD6_Pos)          /*!< 0x00001000 */
GPIO_PUPDR_PUPD6_1                   EQU                                 (0x00002000);   (0x2UL << GPIO_PUPDR_PUPD6_Pos)          /*!< 0x00002000 */
GPIO_PUPDR_PUPD7                     EQU                                 (0x0000C000);   
GPIO_PUPDR_PUPD7_0                   EQU                                 (0x00004000);    (0x1UL << GPIO_PUPDR_PUPD7_Pos)          /*!< 0x00004000 */
GPIO_PUPDR_PUPD7_1                   EQU                                 (0x00008000);    (0x2UL << GPIO_PUPDR_PUPD7_Pos)          /*!< 0x00008000 */
GPIO_PUPDR_PUPD8                     EQU                                 (0x00030000);   
GPIO_PUPDR_PUPD8_0                   EQU                                 (0x00010000);   (0x1UL << GPIO_PUPDR_PUPD8_Pos)          /*!< 0x00010000 */
GPIO_PUPDR_PUPD8_1                   EQU                                 (0x00020000);   (0x2UL << GPIO_PUPDR_PUPD8_Pos)          /*!< 0x00020000 */
GPIO_PUPDR_PUPD9                     EQU                                 (0x000C0000);   
GPIO_PUPDR_PUPD9_0                   EQU                                 (0x00040000);   (0x1UL << GPIO_PUPDR_PUPD9_Pos)          /*!< 0x00040000 */
GPIO_PUPDR_PUPD9_1                   EQU                                 (0x00080000);   (0x2UL << GPIO_PUPDR_PUPD9_Pos)          /*!< 0x00080000 */
GPIO_PUPDR_PUPD10                    EQU                                 (0x00300000);   
GPIO_PUPDR_PUPD10_0                  EQU                                 (0x00100000);   (0x1UL << GPIO_PUPDR_PUPD10_Pos)         /*!< 0x00100000 */
GPIO_PUPDR_PUPD10_1                  EQU                                 (0x00200000);   (0x2UL << GPIO_PUPDR_PUPD10_Pos)         /*!< 0x00200000 */
GPIO_PUPDR_PUPD11                    EQU                                 (0x00C00000);   
GPIO_PUPDR_PUPD11_0                  EQU                                 (0x00400000);   (0x1UL << GPIO_PUPDR_PUPD11_Pos)         /*!< 0x00400000 */
GPIO_PUPDR_PUPD11_1                  EQU                                 (0x00800000);   (0x2UL << GPIO_PUPDR_PUPD11_Pos)         /*!< 0x00800000 */
GPIO_PUPDR_PUPD12                    EQU                                 (0x03000000);   
GPIO_PUPDR_PUPD12_0                  EQU                                 (0x01000000);   (0x1UL << GPIO_PUPDR_PUPD12_Pos)         /*!< 0x01000000 */
GPIO_PUPDR_PUPD12_1                  EQU                                 (0x02000000);   0x2UL << GPIO_PUPDR_PUPD12_Pos)         /*!< 0x02000000 */
GPIO_PUPDR_PUPD13                    EQU                                 (0x0C000000);   
GPIO_PUPDR_PUPD13_0                  EQU                                 (0x04000000);   (0x1UL << GPIO_PUPDR_PUPD13_Pos)         /*!< 0x04000000 */
GPIO_PUPDR_PUPD13_1                  EQU                                 (0x08000000);   (0x2UL << GPIO_PUPDR_PUPD13_Pos)         /*!< 0x08000000 */
GPIO_PUPDR_PUPD14                    EQU                                 (0x30000000);   
GPIO_PUPDR_PUPD14_0                  EQU                                 (0x10000000);   (0x1UL << GPIO_PUPDR_PUPD14_Pos)         /*!< 0x10000000 */
GPIO_PUPDR_PUPD14_1                  EQU                                 (0x20000000);   (0x2UL << GPIO_PUPDR_PUPD14_Pos)         /*!< 0x20000000 */
GPIO_PUPDR_PUPD15                    EQU                                 (0xC0000000);   
GPIO_PUPDR_PUPD15_0                  EQU                                 (0x40000000);    (0x1UL << GPIO_PUPDR_PUPD15_Pos)         /*!< 0x40000000 */
GPIO_PUPDR_PUPD15_1                  EQU                                 (0x80000000);    (0x2UL << GPIO_PUPDR_PUPD15_Pos)         /*!< 0x80000000 */




;/******************  Bits definition for GPIO_IDR register  *******************/

GPIO_IDR_ID0                     EQU                               ( 0x00000001 )
GPIO_IDR_ID1                     EQU                               ( 0x00000002 )
GPIO_IDR_ID2                     EQU                               ( 0x00000004 )
GPIO_IDR_ID3                     EQU                               ( 0x00000008 )
GPIO_IDR_ID4                     EQU                               ( 0x00000010 )
GPIO_IDR_ID5                     EQU                               ( 0x00000020 )
GPIO_IDR_ID6                     EQU                               ( 0x00000040 )
GPIO_IDR_ID7                     EQU                               ( 0x00000080 )
GPIO_IDR_ID8                     EQU                               ( 0x00000100 )
GPIO_IDR_ID9                     EQU                               ( 0x00000200 )
GPIO_IDR_ID10                    EQU                               ( 0x00000400 )
GPIO_IDR_ID11                    EQU                               ( 0x00000800 )
GPIO_IDR_ID12                    EQU                               ( 0x00001000 )
GPIO_IDR_ID13                    EQU                               ( 0x00002000 )
GPIO_IDR_ID14                    EQU                               ( 0x00004000 )
GPIO_IDR_ID15                    EQU                               ( 0x00008000 )


;/******************  Bits definition for GPIO_ODR register  *******************/
GPIO_ODR_OD0                     EQU                               ( 0x00000001 )
GPIO_ODR_OD1                     EQU                               ( 0x00000002 )
GPIO_ODR_OD2                     EQU                               ( 0x00000004 )
GPIO_ODR_OD3                     EQU                               ( 0x00000008 )
GPIO_ODR_OD4                     EQU                               ( 0x00000010 )
GPIO_ODR_OD5                     EQU                               ( 0x00000020 )
GPIO_ODR_OD6                     EQU                               ( 0x00000040 )
GPIO_ODR_OD7                     EQU                               ( 0x00000080 )
GPIO_ODR_OD8                     EQU                               ( 0x00000100 )
GPIO_ODR_OD9                     EQU                               ( 0x00000200 )
GPIO_ODR_OD10                    EQU                               ( 0x00000400 )
GPIO_ODR_OD11                    EQU                               ( 0x00000800 )
GPIO_ODR_OD12                    EQU                               ( 0x00001000 )
GPIO_ODR_OD13                    EQU                               ( 0x00002000 )
GPIO_ODR_OD14                    EQU                               ( 0x00004000 )
GPIO_ODR_OD15                    EQU                               ( 0x00008000 )
	

;/******************  Bits definition for GPIO_BSRR register  ******************/

GPIO_BSRR_BS0                     EQU                               ( 0x00000001 )
GPIO_BSRR_BS1                     EQU                               ( 0x00000002 )
GPIO_BSRR_BS2                     EQU                               ( 0x00000004 )
GPIO_BSRR_BS3                     EQU                               ( 0x00000008 )
GPIO_BSRR_BS4                     EQU                               ( 0x00000010 )
GPIO_BSRR_BS5                     EQU                               ( 0x00000020 )
GPIO_BSRR_BS6                     EQU                               ( 0x00000040 )
GPIO_BSRR_BS7                     EQU                               ( 0x00000080 )
GPIO_BSRR_BS8                     EQU                               ( 0x00000100 )
GPIO_BSRR_BS9                     EQU                               ( 0x00000200 )
GPIO_BSRR_BS10                    EQU                               ( 0x00000400 )
GPIO_BSRR_BS11                    EQU                               ( 0x00000800 )
GPIO_BSRR_BS12                    EQU                               ( 0x00001000 )
GPIO_BSRR_BS13                    EQU                               ( 0x00002000 )
GPIO_BSRR_BS14                    EQU                               ( 0x00004000 )
GPIO_BSRR_BS15                    EQU                               ( 0x00008000 )
	

;/****************** Bit definition for GPIO_LCKR register *********************/

GPIO_LCKR_LCK0                     EQU                               ( 0x00000001 )
GPIO_LCKR_LCK1                     EQU                               ( 0x00000002 )
GPIO_LCKR_LCK2                     EQU                               ( 0x00000004 )
GPIO_LCKR_LCK3                     EQU                               ( 0x00000008 )
GPIO_LCKR_LCK4                     EQU                               ( 0x00000010 )
GPIO_LCKR_LCK5                     EQU                               ( 0x00000020 )
GPIO_LCKR_LCK6                     EQU                               ( 0x00000040 )
GPIO_LCKR_LCK7                     EQU                               ( 0x00000080 )
GPIO_LCKR_LCK8                     EQU                               ( 0x00000100 )
GPIO_LCKR_LCK9                     EQU                               ( 0x00000200 )
GPIO_LCKR_LCK10                    EQU                               ( 0x00000400 )
GPIO_LCKR_LCK11                    EQU                               ( 0x00000800 )
GPIO_LCKR_LCK12                    EQU                               ( 0x00001000 )
GPIO_LCKR_LCK13                    EQU                               ( 0x00002000 )
GPIO_LCKR_LCK14                    EQU                               ( 0x00004000 )
GPIO_LCKR_LCK15                    EQU                               ( 0x00008000 )
	
GPIO_LCKR_LCKK                 	   EQU 								 ( 0x00010000 )



;/****************** Bit definition for GPIO_AFRL register *********************/

GPIO_AFRL_AFSEL0                EQU                                  ( 0x0000000F  );
GPIO_AFRL_AFSEL0_0              EQU                                  ( 0x00000001  ); (0x1UL << GPIO_AFRL_AFSEL0_Pos)          /*!< 0x00000001 */
GPIO_AFRL_AFSEL0_1              EQU                                  ( 0x00000002  ); (0x2UL << GPIO_AFRL_AFSEL0_Pos)          /*!< 0x00000002 */
GPIO_AFRL_AFSEL0_2              EQU                                  ( 0x00000004  ); (0x4UL << GPIO_AFRL_AFSEL0_Pos)          /*!< 0x00000004 */
GPIO_AFRL_AFSEL0_3              EQU                                  ( 0x00000008  ); (0x8UL << GPIO_AFRL_AFSEL0_Pos)          /*!< 0x00000008 */

GPIO_AFRL_AFSEL1                EQU                                  (  0x000000F0 );
GPIO_AFRL_AFSEL1_0              EQU                                  (  0x00000010 ); (0x1UL << GPIO_AFRL_AFSEL1_Pos)          /*!< 0x00000010 */
GPIO_AFRL_AFSEL1_1              EQU                                  (  0x00000020 ); (0x2UL << GPIO_AFRL_AFSEL1_Pos)          /*!< 0x00000020 */
GPIO_AFRL_AFSEL1_2              EQU                                  (  0x00000040 ); (0x4UL << GPIO_AFRL_AFSEL1_Pos)          /*!< 0x00000040 */
GPIO_AFRL_AFSEL1_3              EQU                                  (  0x00000080 ); (0x8UL << GPIO_AFRL_AFSEL1_Pos)          /*!< 0x00000080 */

GPIO_AFRL_AFSEL2                EQU                                  (  0x00000F00 );
GPIO_AFRL_AFSEL2_0              EQU                                  (  0x00000100 ); (0x1UL << GPIO_AFRL_AFSEL2_Pos)          /*!< 0x00000100 */
GPIO_AFRL_AFSEL2_1              EQU                                  (  0x00000200 ); (0x2UL << GPIO_AFRL_AFSEL2_Pos)          /*!< 0x00000200 */
GPIO_AFRL_AFSEL2_2              EQU                                  (  0x00000400 ); (0x4UL << GPIO_AFRL_AFSEL2_Pos)          /*!< 0x00000400 */
GPIO_AFRL_AFSEL2_3              EQU                                  (  0x00000800 ); (0x8UL << GPIO_AFRL_AFSEL2_Pos)          /*!< 0x00000800 */

GPIO_AFRL_AFSEL3                EQU                                  (  0x0000F000 );
GPIO_AFRL_AFSEL3_0              EQU                                  (  0x00001000 ); (0x1UL << GPIO_AFRL_AFSEL3_Pos)          /*!< 0x00001000 */
GPIO_AFRL_AFSEL3_1              EQU                                  (  0x00002000 ); (0x2UL << GPIO_AFRL_AFSEL3_Pos)          /*!< 0x00002000 */
GPIO_AFRL_AFSEL3_2              EQU                                  (  0x00004000 ); (0x4UL << GPIO_AFRL_AFSEL3_Pos)          /*!< 0x00004000 */
GPIO_AFRL_AFSEL3_3              EQU                                  (  0x00008000 ); (0x8UL << GPIO_AFRL_AFSEL3_Pos)          /*!< 0x00008000 */

GPIO_AFRL_AFSEL4                EQU                                  (  0x000F0000 );
GPIO_AFRL_AFSEL4_0              EQU                                  (  0x00010000 );(0x1UL << GPIO_AFRL_AFSEL4_Pos)          /*!< 0x00010000 */
GPIO_AFRL_AFSEL4_1              EQU                                  (  0x00020000 );(0x2UL << GPIO_AFRL_AFSEL4_Pos)          /*!< 0x00020000 */
GPIO_AFRL_AFSEL4_2              EQU                                  (  0x00040000 );(0x4UL << GPIO_AFRL_AFSEL4_Pos)          /*!< 0x00040000 */
GPIO_AFRL_AFSEL4_3              EQU                                  (  0x00080000 );(0x8UL << GPIO_AFRL_AFSEL4_Pos)          /*!< 0x00080000 */

GPIO_AFRL_AFSEL5                EQU                                  (  0x00F00000 );
GPIO_AFRL_AFSEL5_0              EQU                                  (  0x00100000 ); (0x1UL << GPIO_AFRL_AFSEL5_Pos)          /*!< 0x00100000 */
GPIO_AFRL_AFSEL5_1              EQU                                  (  0x00200000 ); (0x2UL << GPIO_AFRL_AFSEL5_Pos)          /*!< 0x00200000 */
GPIO_AFRL_AFSEL5_2              EQU                                  (  0x00400000 ); (0x4UL << GPIO_AFRL_AFSEL5_Pos)          /*!< 0x00400000 */
GPIO_AFRL_AFSEL5_3              EQU                                  (  0x00800000 ); (0x8UL << GPIO_AFRL_AFSEL5_Pos)          /*!< 0x00800000 */

GPIO_AFRL_AFSEL6                EQU                                  (  0x0F000000 );
GPIO_AFRL_AFSEL6_0              EQU                                  (  0x01000000 ); (0x1UL << GPIO_AFRL_AFSEL6_Pos)          /*!< 0x01000000 */
GPIO_AFRL_AFSEL6_1              EQU                                  (  0x02000000 ); (0x2UL << GPIO_AFRL_AFSEL6_Pos)          /*!< 0x02000000 */
GPIO_AFRL_AFSEL6_2              EQU                                  (  0x04000000 ); (0x4UL << GPIO_AFRL_AFSEL6_Pos)          /*!< 0x04000000 */
GPIO_AFRL_AFSEL6_3              EQU                                  (  0x08000000 ); (0x8UL << GPIO_AFRL_AFSEL6_Pos)          /*!< 0x08000000 */

GPIO_AFRL_AFSEL7                EQU                                  (  0xF0000000 );
GPIO_AFRL_AFSEL7_0              EQU                                  (  0x10000000 ); (0x1UL << GPIO_AFRL_AFSEL7_Pos)          /*!< 0x10000000 */
GPIO_AFRL_AFSEL7_1              EQU                                  (  0x20000000 ); (0x2UL << GPIO_AFRL_AFSEL7_Pos)          /*!< 0x20000000 */
GPIO_AFRL_AFSEL7_2              EQU                                  (  0x40000000 ); (0x4UL << GPIO_AFRL_AFSEL7_Pos)          /*!< 0x40000000 */
GPIO_AFRL_AFSEL7_3              EQU                                  (  0x80000000 ); (0x8UL << GPIO_AFRL_AFSEL7_Pos)          /*!< 0x80000000 */

;/****************** Bit definition for GPIO_AFRH register *********************/

GPIO_AFRH_AFSEL8                EQU                                  ( 0x0000000F  );
GPIO_AFRH_AFSEL8_0              EQU                                  ( 0x00000001  ); (0x1UL << GPIO_AFRH_AFSEL8_Pos)          /*!< 0x00000001 */
GPIO_AFRH_AFSEL8_1              EQU                                  ( 0x00000002  ); (0x2UL << GPIO_AFRH_AFSEL8_Pos)          /*!< 0x00000002 */
GPIO_AFRH_AFSEL8_2              EQU                                  ( 0x00000004  ); (0x4UL << GPIO_AFRH_AFSEL8_Pos)          /*!< 0x00000004 */
GPIO_AFRH_AFSEL8_3              EQU                                  ( 0x00000008  ); (0x8UL << GPIO_AFRH_AFSEL8_Pos)          /*!< 0x00000008 */

GPIO_AFRH_AFSEL9                EQU                                  (  0x000000F0 );
GPIO_AFRH_AFSEL9_0              EQU                                  (  0x00000010 ); (0x1UL << GPIO_AFRH_AFSEL9_Pos)          /*!< 0x00000010 */
GPIO_AFRH_AFSEL9_1              EQU                                  (  0x00000020 ); (0x2UL << GPIO_AFRH_AFSEL9_Pos)          /*!< 0x00000020 */
GPIO_AFRH_AFSEL9_2              EQU                                  (  0x00000040 ); (0x4UL << GPIO_AFRH_AFSEL9_Pos)          /*!< 0x00000040 */
GPIO_AFRH_AFSEL9_3              EQU                                  (  0x00000080 ); (0x8UL << GPIO_AFRH_AFSEL9_Pos)          /*!< 0x00000080 */

GPIO_AFRH_AFSEL10                EQU                                  (  0x00000F00 );
GPIO_AFRH_AFSEL10_0              EQU                                  (  0x00000100 ); (0x1UL << GPIO_AFRH_AFSEL10_Pos)          /*!< 0x00000100 */
GPIO_AFRH_AFSEL10_1              EQU                                  (  0x00000200 ); (0x2UL << GPIO_AFRH_AFSEL10_Pos)          /*!< 0x00000200 */
GPIO_AFRH_AFSEL10_2              EQU                                  (  0x00000400 ); (0x4UL << GPIO_AFRH_AFSEL10_Pos)          /*!< 0x00000400 */
GPIO_AFRH_AFSEL10_3              EQU                                  (  0x00000800 ); (0x8UL << GPIO_AFRH_AFSEL10_Pos)          /*!< 0x00000800 */

GPIO_AFRH_AFSEL11                EQU                                  (  0x0000F000 );
GPIO_AFRH_AFSEL11_0              EQU                                  (  0x00001000 ); (0x1UL << GPIO_AFRH_AFSEL11_Pos)          /*!< 0x00001000 */
GPIO_AFRH_AFSEL11_1              EQU                                  (  0x00002000 ); (0x2UL << GPIO_AFRH_AFSEL11_Pos)          /*!< 0x00002000 */
GPIO_AFRH_AFSEL11_2              EQU                                  (  0x00004000 ); (0x4UL << GPIO_AFRH_AFSEL11_Pos)          /*!< 0x00004000 */
GPIO_AFRH_AFSEL11_3              EQU                                  (  0x00008000 ); (0x8UL << GPIO_AFRH_AFSEL11_Pos)          /*!< 0x00008000 */

GPIO_AFRH_AFSEL12                EQU                                  (  0x000F0000 );
GPIO_AFRH_AFSEL12_0              EQU                                  (  0x00010000 );(0x1UL << GPIO_AFRH_AFSEL12_Pos)          /*!< 0x00010000 */
GPIO_AFRH_AFSEL12_1              EQU                                  (  0x00020000 );(0x2UL << GPIO_AFRH_AFSEL12_Pos)          /*!< 0x00020000 */
GPIO_AFRH_AFSEL12_2              EQU                                  (  0x00040000 );(0x4UL << GPIO_AFRH_AFSEL12_Pos)          /*!< 0x00040000 */
GPIO_AFRH_AFSEL12_3              EQU                                  (  0x00080000 );(0x8UL << GPIO_AFRH_AFSEL12_Pos)          /*!< 0x00080000 */

GPIO_AFRH_AFSEL13                EQU                                  (  0x00F00000 );
GPIO_AFRH_AFSEL13_0              EQU                                  (  0x00100000 ); (0x1UL << GPIO_AFRH_AFSEL13_Pos)          /*!< 0x00100000 */
GPIO_AFRH_AFSEL13_1              EQU                                  (  0x00200000 ); (0x2UL << GPIO_AFRH_AFSEL13_Pos)          /*!< 0x00200000 */
GPIO_AFRH_AFSEL13_2              EQU                                  (  0x00400000 ); (0x4UL << GPIO_AFRH_AFSEL13_Pos)          /*!< 0x00400000 */
GPIO_AFRH_AFSEL13_3              EQU                                  (  0x00800000 ); (0x8UL << GPIO_AFRH_AFSEL13_Pos)          /*!< 0x00800000 */

GPIO_AFRH_AFSEL14                EQU                                  (  0x0F000000 );
GPIO_AFRH_AFSEL14_0              EQU                                  (  0x01000000 ); (0x1UL << GPIO_AFRH_AFSEL14_Pos)          /*!< 0x01000000 */
GPIO_AFRH_AFSEL14_1              EQU                                  (  0x02000000 ); (0x2UL << GPIO_AFRH_AFSEL14_Pos)          /*!< 0x02000000 */
GPIO_AFRH_AFSEL14_2              EQU                                  (  0x04000000 ); (0x4UL << GPIO_AFRH_AFSEL14_Pos)          /*!< 0x04000000 */
GPIO_AFRH_AFSEL14_3              EQU                                  (  0x08000000 ); (0x8UL << GPIO_AFRH_AFSEL14_Pos)          /*!< 0x08000000 */

GPIO_AFRH_AFSEL15                EQU                                  (  0xF0000000 );
GPIO_AFRH_AFSEL15_0              EQU                                  (  0x10000000 ); (0x1UL << GPIO_AFRH_AFSEL15_Pos)          /*!< 0x10000000 */
GPIO_AFRH_AFSEL15_1              EQU                                  (  0x20000000 ); (0x2UL << GPIO_AFRH_AFSEL15_Pos)          /*!< 0x20000000 */
GPIO_AFRH_AFSEL15_2              EQU                                  (  0x40000000 ); (0x4UL << GPIO_AFRH_AFSEL15_Pos)          /*!< 0x40000000 */
GPIO_AFRH_AFSEL15_3              EQU                                  (  0x80000000 ); (0x8UL << GPIO_AFRH_AFSEL15_Pos)          /*!< 0x80000000 */



;/******************  Bits definition for GPIO_BRR register  ******************/

GPIO_BRR_BR0                     EQU                               ( 0x00000001 )
GPIO_BRR_BR1                     EQU                               ( 0x00000002 )
GPIO_BRR_BR2                     EQU                               ( 0x00000004 )
GPIO_BRR_BR3                     EQU                               ( 0x00000008 )
GPIO_BRR_BR4                     EQU                               ( 0x00000010 )
GPIO_BRR_BR5                     EQU                               ( 0x00000020 )
GPIO_BRR_BR6                     EQU                               ( 0x00000040 )
GPIO_BRR_BR7                     EQU                               ( 0x00000080 )
GPIO_BRR_BR8                     EQU                               ( 0x00000100 )
GPIO_BRR_BR9                     EQU                               ( 0x00000200 )
GPIO_BRR_BR10                    EQU                               ( 0x00000400 )
GPIO_BRR_BR11                    EQU                               ( 0x00000800 )
GPIO_BRR_BR12                    EQU                               ( 0x00001000 )
GPIO_BRR_BR13                    EQU                               ( 0x00002000 )
GPIO_BRR_BR14                    EQU                               ( 0x00004000 )
GPIO_BRR_BR15                    EQU                               ( 0x00008000 )



;/******************************************************************************/
;/*                                                                            */
;/*                      Inter-integrated Circuit Interface (I2C)              */
;/*                                                                            */
;/******************************************************************************/
;/*******************  Bit definition for I2C_CR1 register  *******************/

I2C_CR1_PE                      EQU                     (  0x00000001  ) ;                       /*!< Peripheral enable */						        
I2C_CR1_TXIE                    EQU                     (  0x00000002  ) ;                     /*!< TX interrupt enable */						      
I2C_CR1_RXIE                    EQU                     (  0x00000004  ) ;                     /*!< RX interrupt enable */						        
I2C_CR1_ADDRIE                  EQU                     (  0x00000008  ) ;                   /*!< Address match interrupt enable */						    
I2C_CR1_NACKIE                  EQU                     (  0x00000010  ) ;                   /*!< NACK received interrupt enable */	        
I2C_CR1_STOPIE                  EQU                     (  0x00000020  ) ;                   /*!< STOP detection interrupt enable */
I2C_CR1_TCIE                    EQU                     (  0x00000040  ) ;                     /*!< Transfer complete interrupt enable */
I2C_CR1_ERRIE                   EQU                     (  0x00000080  ) ;                    /*!< Errors interrupt enable */
I2C_CR1_DNF                     EQU                     (  0x00000F00  ) ;                      /*!< Digital noise filter */
I2C_CR1_ANFOFF                  EQU                     (  0x00001000  ) ;                   /*!< Analog noise filter OFF */
I2C_CR1_SWRST                   EQU                     (  0x00002000  ) ;                    /*!< Software reset */
I2C_CR1_TXDMAEN                 EQU                     (  0x00004000  ) ;                  /*!< DMA transmission requests enable */
I2C_CR1_RXDMAEN                 EQU                     (  0x00008000  ) ;                  /*!< DMA reception requests enable */
I2C_CR1_SBC                     EQU                     (  0x00010000  ) ;                      /*!< Slave byte control */
I2C_CR1_NOSTRETCH               EQU                     (  0x00020000  ) ;                /*!< Clock stretching disable */
I2C_CR1_WUPEN                   EQU                     (  0x00040000  ) ;                    /*!< Wakeup from STOP enable */
I2C_CR1_GCEN                    EQU                     (  0x00080000  ) ;                     /*!< General call enable */
I2C_CR1_SMBHEN                  EQU                     (  0x00100000  ) ;                   /*!< SMBus host address enable */
I2C_CR1_SMBDEN                  EQU                     (  0x00200000  ) ;                   /*!< SMBus device default address enable */
I2C_CR1_ALERTEN                 EQU                     (  0x00400000  ) ;                  /*!< SMBus alert enable */
I2C_CR1_PECEN                   EQU                     (  0x00800000  ) ;                    /*!< PEC enable */

;/******************  Bit definition for I2C_CR2 register  ********************/

I2C_CR2_SADD                     EQU                            ( 0x000003FF  );                        /*!< Slave address (master mode) */
I2C_CR2_RD_WRN                   EQU                            ( 0x00000400  );                      /*!< Transfer direction (master mode) */
I2C_CR2_ADD10                    EQU                            ( 0x00000800  );                       /*!< 10-bit addressing mode (master mode) */
I2C_CR2_HEAD10R                  EQU                            ( 0x00001000  );                     /*!< 10-bit address header only read direction (master mode) */
I2C_CR2_START                    EQU                            ( 0x00002000  );                       /*!< START generation */
I2C_CR2_STOP                     EQU                            ( 0x00004000  );                        /*!< STOP generation (master mode) */
I2C_CR2_NACK                     EQU                            ( 0x00008000  );                        /*!< NACK generation (slave mode) */
I2C_CR2_NBYTES                   EQU                            ( 0x00FF0000  );                      /*!< Number of bytes */
I2C_CR2_RELOAD                   EQU                            ( 0x01000000  );                      /*!< NBYTES reload mode */
I2C_CR2_AUTOEND                  EQU                            ( 0x02000000  );                     /*!< Automatic end mode (master mode) */
I2C_CR2_PECBYTE                  EQU                            ( 0x04000000  );                     /*!< Packet error checking byte */

;/*******************  Bit definition for I2C_OAR1 register  ******************/

I2C_OAR1_OA1                      EQU                    (   0x000003FF   );                       /*!< Interface own address 1 */
I2C_OAR1_OA1MODE                  EQU                    (   0x00000400   );                   /*!< Own address 1 10-bit mode */
I2C_OAR1_OA1EN                    EQU                    (   0x00008000   );                     /*!< Own address 1 enable */

;/*******************  Bit definition for I2C_OAR2 register  ******************/

I2C_OAR2_OA2                      EQU              ( 0x000000FE );                         /*!< Interface own address 2 */
I2C_OAR2_OA2MSK                   EQU              ( 0x00000700 );                      /*!< Own address 2 masks */
I2C_OAR2_OA2MASK01                EQU              ( 0x00000100 );                   /*!< OA2[1] is masked, Only OA2[7:2] are compared   */
I2C_OAR2_OA2MASK02                EQU              ( 0x00000200 );                   /*!< OA2[2:1] is masked, Only OA2[7:3] are compared */
I2C_OAR2_OA2MASK03                EQU              ( 0x00000300 );                   /*!< OA2[3:1] is masked, Only OA2[7:4] are compared */
I2C_OAR2_OA2MASK04                EQU              ( 0x00000400 );                   /*!< OA2[4:1] is masked, Only OA2[7:5] are compared */
I2C_OAR2_OA2MASK05                EQU              ( 0x00000500 );                   /*!< OA2[5:1] is masked, Only OA2[7:6] are compared */
I2C_OAR2_OA2MASK06                EQU              ( 0x00000600 );                   /*!< OA2[6:1] is masked, Only OA2[7] are compared   */
I2C_OAR2_OA2MASK07                EQU              ( 0x00000700 );                   /*!< OA2[7:1] is masked, No comparison is done      */
I2C_OAR2_OA2EN                    EQU              ( 0x00008000 );                       /*!< Own address 2 enable */

;/*******************  Bit definition for I2C_TIMINGR register *******************/

I2C_TIMINGR_SCLL                  EQU               (    0x000000FF  );                   /*!< SCL low period (master mode) */
I2C_TIMINGR_SCLH                  EQU               (    0x0000FF00  );                   /*!< SCL high period (master mode) */
I2C_TIMINGR_SDADEL                EQU               (    0x000F0000  );                 /*!< Data hold time */
I2C_TIMINGR_SCLDEL                EQU               (    0x00F00000  );                 /*!< Data setup time */
I2C_TIMINGR_PRESC                 EQU               (    0xF0000000  );                  /*!< Timings prescaler */

;/******************* Bit definition for I2C_TIMEOUTR register *******************/

I2C_TIMEOUTR_TIMEOUTA             EQU                       ( 0x00000FFF ); I2C_TIMEOUTR_TIMEOUTA_Msk                 /*!< Bus timeout A */
I2C_TIMEOUTR_TIDLE                EQU                       ( 0x00001000 );                   /*!< Idle clock timeout detection */
I2C_TIMEOUTR_TIMOUTEN             EQU                       ( 0x00008000 ); I2C_TIMEOUTR_TIMOUTEN_Msk                 /*!< Clock timeout enable */
I2C_TIMEOUTR_TIMEOUTB             EQU                       ( 0x0FFF0000 );I2C_TIMEOUTR_TIMEOUTB_Msk                 /*!< Bus timeout B*/
I2C_TIMEOUTR_TEXTEN               EQU                       ( 0x80000000 );I2C_TIMEOUTR_TEXTEN_Msk                   /*!< Extended clock timeout enable */

;/******************  Bit definition for I2C_ISR register  *********************/

I2C_ISR_TXE                     EQU                   (  0x00000001  );                        /*!< Transmit data register empty */
I2C_ISR_TXIS                    EQU                   (  0x00000002  );                       /*!< Transmit interrupt status */
I2C_ISR_RXNE                    EQU                   (  0x00000004  );                       /*!< Receive data register not empty */
I2C_ISR_ADDR                    EQU                   (  0x00000008  );                       /*!< Address matched (slave mode)*/
I2C_ISR_NACKF                   EQU                   (  0x00000010  );                      /*!< NACK received flag */
I2C_ISR_STOPF                   EQU                   (  0x00000020  );                      /*!< STOP detection flag */
I2C_ISR_TC                      EQU                   (  0x00000040  );                         /*!< Transfer complete (master mode) */
I2C_ISR_TCR                     EQU                   (  0x00000080  );                        /*!< Transfer complete reload */
I2C_ISR_BERR                    EQU                   (  0x00000100  );                       /*!< Bus error */
I2C_ISR_ARLO                    EQU                   (  0x00000200  );                       /*!< Arbitration lost */
I2C_ISR_OVR                     EQU                   (  0x00000400  );                        /*!< Overrun/Underrun */
I2C_ISR_PECERR                  EQU                   (  0x00000800  );                     /*!< PEC error in reception */
I2C_ISR_TIMEOUT                 EQU                   (  0x00001000  );                    /*!< Timeout or Tlow detection flag */
I2C_ISR_ALERT                   EQU                   (  0x00002000  );                      /*!< SMBus alert */
I2C_ISR_BUSY                    EQU                   (  0x00008000  );                       /*!< Bus busy */
I2C_ISR_DIR                     EQU                   (  0x00010000  );                        /*!< Transfer direction (slave mode) */
I2C_ISR_ADDCODE                 EQU                   (  0x00FE0000  );                    /*!< Address match code (slave mode) */

;/******************  Bit definition for I2C_ICR register  *********************/

I2C_ICR_ADDRCF                  EQU                       (   0x00000008   );                     /*!< Address matched clear flag */
I2C_ICR_NACKCF                  EQU                       (   0x00000010   );                     /*!< NACK clear flag */
I2C_ICR_STOPCF                  EQU                       (   0x00000020   );                     /*!< STOP detection clear flag */
I2C_ICR_BERRCF                  EQU                       (   0x00000100   );                     /*!< Bus error clear flag */
I2C_ICR_ARLOCF                  EQU                       (   0x00000200   );                     /*!< Arbitration lost clear flag */
I2C_ICR_OVRCF                   EQU                       (   0x00000400   );                      /*!< Overrun/Underrun clear flag */
I2C_ICR_PECCF                   EQU                       (   0x00000800   );                      /*!< PAC error clear flag */
I2C_ICR_TIMOUTCF                EQU                       (   0x00001000   );                   /*!< Timeout clear flag */
I2C_ICR_ALERTCF                 EQU                       (   0x00002000   );                    /*!< Alert clear flag */

;/******************  Bit definition for I2C_PECR register  *********************/

I2C_PECR_PEC                 EQU             (0x000000FF );                         /*!< PEC register */

;/******************  Bit definition for I2C_RXDR register  *********************/

I2C_RXDR_RXDATA              EQU             (0x000000FF );                      /*!< 8-bit receive data */

;/******************  Bit definition for I2C_TXDR register  *********************/

I2C_TXDR_TXDATA              EQU             (0x000000FF );                      /*!< 8-bit transmit data */

;/******************************************************************************/
;/*                                                                            */
;/*                        Independent WATCHDOG (IWDG)                         */
;/*                         BITs Definition to be defined (TBD)                */
;/******************************************************************************/


;/******************************************************************************/
;/*                                                                            */
;/*                        POWER CONTROL (PWR)                         */
;/*                         BITs Definition to be defined (TBD)                */
;/******************************************************************************/


;/******************************************************************************/
;/*                                                                            */
;/*                           Reset and Clock Control                          */
;/*                                                                            */
;/******************************************************************************/
;/*
;* @brief Specific device feature definitions  (not present on all devices in the STM32G0 series)
;*/
;;RCC_PLLQ_SUPPORT

;/********************  Bit definition for RCC_CR register  *****************/

RCC_CR_HSION             EQU      (  0x00000100 );                     /*!< Internal High Speed clock enable */
RCC_CR_HSIKERON          EQU      (  0x00000200 );                  /*!< Internal High Speed clock enable for some IPs Kernel */
RCC_CR_HSIRDY            EQU      (  0x00000400 );                    /*!< Internal High Speed clock ready flag */
RCC_CR_HSIDIV            EQU      (  0x00003800 );                    /*!< HSIDIV[13:11] Internal High Speed clock division factor */
RCC_CR_HSIDIV_0          EQU      (  0x00000800);  (0x1UL << RCC_CR_HSIDIV_Pos)          /*!< 0x00000800 */
RCC_CR_HSIDIV_1          EQU      (  0x00001000);  (0x2UL << RCC_CR_HSIDIV_Pos)          /*!< 0x00001000 */
RCC_CR_HSIDIV_2          EQU      (  0x00002000);  (0x4UL << RCC_CR_HSIDIV_Pos)          /*!< 0x00002000 */
RCC_CR_HSEON             EQU      (  0x00010000 );                     /*!< External High Speed clock enable */
RCC_CR_HSERDY            EQU      (  0x00020000 );                    /*!< External High Speed clock ready */
RCC_CR_HSEBYP            EQU      (  0x00040000 );                    /*!< External High Speed clock Bypass */
RCC_CR_CSSON             EQU      (  0x00080000 );                     /*!< HSE Clock Security System enable */
RCC_CR_PLLON             EQU      (  0x01000000 );                     /*!< System PLL clock enable */
RCC_CR_PLLRDY            EQU      (  0x02000000 );                    /*!< System PLL clock ready */

;/********************  Bit definition for RCC_ICSCR register  ***************/
;/*!< HSICAL configuration */

RCC_ICSCR_HSICAL          EQU            (0x000000FF);  RCC_ICSCR_HSICAL_Msk                  /*!< HSICAL[7:0] bits */
RCC_ICSCR_HSICAL_0        EQU            (0x00000001);  (0x01UL << RCC_ICSCR_HSICAL_Pos)      /*!< 0x00000001 */
RCC_ICSCR_HSICAL_1        EQU            (0x00000002);  (0x02UL << RCC_ICSCR_HSICAL_Pos)      /*!< 0x00000002 */
RCC_ICSCR_HSICAL_2        EQU            (0x00000004);  (0x04UL << RCC_ICSCR_HSICAL_Pos)      /*!< 0x00000004 */
RCC_ICSCR_HSICAL_3        EQU            (0x00000008);  (0x08UL << RCC_ICSCR_HSICAL_Pos)      /*!< 0x00000008 */
RCC_ICSCR_HSICAL_4        EQU            (0x00000010);  (0x10UL << RCC_ICSCR_HSICAL_Pos)      /*!< 0x00000010 */
RCC_ICSCR_HSICAL_5        EQU            (0x00000020);  (0x20UL << RCC_ICSCR_HSICAL_Pos)      /*!< 0x00000020 */
RCC_ICSCR_HSICAL_6        EQU            (0x00000040);  (0x40UL << RCC_ICSCR_HSICAL_Pos)      /*!< 0x00000040 */
RCC_ICSCR_HSICAL_7        EQU            (0x00000080);  (0x80UL << RCC_ICSCR_HSICAL_Pos)      /*!< 0x00000080 */

;/*!< HSITRIM configuration */

RCC_ICSCR_HSITRIM        EQU      ( 0x00007F00 );  RCC_ICSCR_HSITRIM_Msk                 /*!< HSITRIM[14:8] bits */
RCC_ICSCR_HSITRIM_0      EQU      ( 0x00000100 );     (0x01UL << RCC_ICSCR_HSITRIM_Pos)     /*!< 0x00000100 */
RCC_ICSCR_HSITRIM_1      EQU      ( 0x00000200 );     (0x02UL << RCC_ICSCR_HSITRIM_Pos)     /*!< 0x00000200 */
RCC_ICSCR_HSITRIM_2      EQU      ( 0x00000400 );     (0x04UL << RCC_ICSCR_HSITRIM_Pos)     /*!< 0x00000400 */
RCC_ICSCR_HSITRIM_3      EQU      ( 0x00000800 );     (0x08UL << RCC_ICSCR_HSITRIM_Pos)     /*!< 0x00000800 */
RCC_ICSCR_HSITRIM_4      EQU      ( 0x00001000 );     (0x10UL << RCC_ICSCR_HSITRIM_Pos)     /*!< 0x00001000 */
RCC_ICSCR_HSITRIM_5      EQU      ( 0x00002000 );     (0x20UL << RCC_ICSCR_HSITRIM_Pos)     /*!< 0x00002000 */
RCC_ICSCR_HSITRIM_6      EQU      ( 0x00004000 );     (0x40UL << RCC_ICSCR_HSITRIM_Pos)     /*!< 0x00004000 */

;/********************  Bit definition for RCC_CFGR register  ***************/
;/*!< SW configuration */

RCC_CFGR_SW              EQU     (0x00000007);    RCC_CFGR_SW_Msk                         /*!< SW[2:0] bits (System clock Switch) */
RCC_CFGR_SW_0            EQU     (0x00000001); (0x1UL << RCC_CFGR_SW_Pos)              /*!< 0x00000001 */
RCC_CFGR_SW_1            EQU     (0x00000002); (0x2UL << RCC_CFGR_SW_Pos)              /*!< 0x00000002 */
RCC_CFGR_SW_2            EQU     (0x00000004); (0x4UL << RCC_CFGR_SW_Pos)              /*!< 0x00000004 */

;/*!< SWS configuration */

RCC_CFGR_SWS             EQU     (0x00000038);  RCC_CFGR_SWS_Msk                        /*!< SWS[2:0] bits (System Clock Switch Status) */
RCC_CFGR_SWS_0           EQU     (0x00000008); (0x1UL << RCC_CFGR_SWS_Pos)             /*!< 0x00000008 */
RCC_CFGR_SWS_1           EQU     (0x00000010); (0x2UL << RCC_CFGR_SWS_Pos)             /*!< 0x00000010 */
RCC_CFGR_SWS_2           EQU     (0x00000020); (0x4UL << RCC_CFGR_SWS_Pos)             /*!< 0x00000020 */

;/*!< HPRE configuration */

RCC_CFGR_HPRE            EQU     (0x00000F00);     RCC_CFGR_HPRE_Msk                       /*!< HPRE[3:0] bits (AHB prescaler) */
RCC_CFGR_HPRE_0          EQU     (0x00000100);    (0x1UL << RCC_CFGR_HPRE_Pos)            /*!< 0x00000100 */
RCC_CFGR_HPRE_1          EQU     (0x00000200);    (0x2UL << RCC_CFGR_HPRE_Pos)            /*!< 0x00000200 */
RCC_CFGR_HPRE_2          EQU     (0x00000400);    (0x4UL << RCC_CFGR_HPRE_Pos)            /*!< 0x00000400 */
RCC_CFGR_HPRE_3          EQU     (0x00000800);    (0x8UL << RCC_CFGR_HPRE_Pos)            /*!< 0x00000800 */

;/*!< PPRE configuration */

RCC_CFGR_PPRE            EQU     (0x00007000 );                      /*!< PRE1[2:0] bits (APB prescaler) */
RCC_CFGR_PPRE_0          EQU     (0x00001000 );  (0x1UL << RCC_CFGR_PPRE_Pos)            /*!< 0x00001000 */
RCC_CFGR_PPRE_1          EQU     (0x00002000 );  (0x2UL << RCC_CFGR_PPRE_Pos)            /*!< 0x00002000 */
RCC_CFGR_PPRE_2          EQU     (0x00004000 );  (0x4UL << RCC_CFGR_PPRE_Pos)            /*!< 0x00004000 */


;/*!< MCOSEL configuration */

RCC_CFGR_MCOSEL          EQU      (0x07000000);                     /*!< MCOSEL [2:0] bits (Clock output selection) */
RCC_CFGR_MCOSEL_0        EQU      (0x01000000);  (0x1UL << RCC_CFGR_MCOSEL_Pos)          /*!< 0x01000000 */
RCC_CFGR_MCOSEL_1        EQU      (0x02000000); ( 0x2UL << RCC_CFGR_MCOSEL_Pos)          /*!< 0x02000000 */
RCC_CFGR_MCOSEL_2        EQU      (0x04000000);  (0x4UL << RCC_CFGR_MCOSEL_Pos)          /*!< 0x04000000 */
						 
;/*!< MCO Prescaler configuration */

RCC_CFGR_MCOPRE         EQU   (0x70000000);                    /*!< MCO prescaler [2:0] */
RCC_CFGR_MCOPRE_0       EQU   (0x10000000);  (0x1UL << RCC_CFGR_MCOPRE_Pos)          /*!< 0x10000000 */
RCC_CFGR_MCOPRE_1       EQU   (0x20000000);  (0x2UL << RCC_CFGR_MCOPRE_Pos)          /*!< 0x20000000 */
RCC_CFGR_MCOPRE_2       EQU   (0x40000000);  (0x4UL << RCC_CFGR_MCOPRE_Pos)          /*!< 0x40000000 */

;/********************  Bit definition for RCC_PLLCFGR register  ***************/

RCC_PLLCFGR_PLLSRC      EQU       (0x00000003);
RCC_PLLCFGR_PLLSRC_0    EQU       (0x00000001); (0x1UL << RCC_PLLCFGR_PLLSRC_Pos)     /*!< 0x00000001 */
RCC_PLLCFGR_PLLSRC_1    EQU       (0x00000002); (0x2UL << RCC_PLLCFGR_PLLSRC_Pos)     /*!< 0x00000002 */

RCC_PLLCFGR_PLLSRC_NONE  EQU        (0x00000000)  ;                      /*!< No clock sent to PLL      */

RCC_PLLCFGR_PLLSRC_HSI   EQU        (0x00000002 );           /*!< HSI source clock selected */
RCC_PLLCFGR_PLLSRC_HSE   EQU        (0x00000003 );           /*!< HSE source clock selected */


RCC_PLLCFGR_PLLM         EQU   (      0x00000070 );
RCC_PLLCFGR_PLLM_0       EQU   (      0x00000010 ); (0x1UL << RCC_PLLCFGR_PLLM_Pos)       /*!< 0x00000010 */
RCC_PLLCFGR_PLLM_1       EQU   (      0x00000020 ); (0x2UL << RCC_PLLCFGR_PLLM_Pos)       /*!< 0x00000020 */
RCC_PLLCFGR_PLLM_2       EQU   (      0x00000040 ); (0x4UL << RCC_PLLCFGR_PLLM_Pos)       /*!< 0x00000040 */


RCC_PLLCFGR_PLLN         EQU      (0x00007F00 );
RCC_PLLCFGR_PLLN_0       EQU      (0x00000100 );      (0x01UL << RCC_PLLCFGR_PLLN_Pos)      /*!< 0x00000100 */
RCC_PLLCFGR_PLLN_1       EQU      (0x00000200 );      (0x02UL << RCC_PLLCFGR_PLLN_Pos)      /*!< 0x00000200 */
RCC_PLLCFGR_PLLN_2       EQU      (0x00000400 );      (0x04UL << RCC_PLLCFGR_PLLN_Pos)      /*!< 0x00000400 */
RCC_PLLCFGR_PLLN_3       EQU      (0x00000800 );      (0x08UL << RCC_PLLCFGR_PLLN_Pos)      /*!< 0x00000800 */
RCC_PLLCFGR_PLLN_4       EQU      (0x00001000 );      (0x10UL << RCC_PLLCFGR_PLLN_Pos)      /*!< 0x00001000 */
RCC_PLLCFGR_PLLN_5       EQU      (0x00002000 );      (0x20UL << RCC_PLLCFGR_PLLN_Pos)      /*!< 0x00002000 */
RCC_PLLCFGR_PLLN_6       EQU      (0x00004000 );      (0x40UL << RCC_PLLCFGR_PLLN_Pos)      /*!< 0x00004000 */


RCC_PLLCFGR_PLLPEN       EQU       ( 0x00010000);


RCC_PLLCFGR_PLLP          EQU     (  0x003E0000   );
RCC_PLLCFGR_PLLP_0        EQU     (  0x00020000   );         0x01UL << RCC_PLLCFGR_PLLP_Pos)     /*!< 0x00020000 */
RCC_PLLCFGR_PLLP_1        EQU     (  0x00040000   );         0x02UL << RCC_PLLCFGR_PLLP_Pos)     /*!< 0x00040000 */
RCC_PLLCFGR_PLLP_2        EQU     (  0x00080000   );         0x04UL << RCC_PLLCFGR_PLLP_Pos)     /*!< 0x00080000 */
RCC_PLLCFGR_PLLP_3        EQU     (  0x00100000   );         0x08UL << RCC_PLLCFGR_PLLP_Pos)     /*!< 0x00100000 */
RCC_PLLCFGR_PLLP_4        EQU     (  0x00200000   );         0x10UL << RCC_PLLCFGR_PLLP_Pos)     /*!< 0x00200000 */


RCC_PLLCFGR_PLLQEN        EQU      ( 0x01000000)


RCC_PLLCFGR_PLLQ         EQU       (0x0E000000);
RCC_PLLCFGR_PLLQ_0       EQU       (0x02000000);  (0x1UL << RCC_PLLCFGR_PLLQ_Pos)       /*!< 0x02000000 */
RCC_PLLCFGR_PLLQ_1       EQU       (0x04000000);  (0x2UL << RCC_PLLCFGR_PLLQ_Pos)       /*!< 0x04000000 */
RCC_PLLCFGR_PLLQ_2       EQU       (0x08000000);  (0x4UL << RCC_PLLCFGR_PLLQ_Pos)       /*!< 0x08000000 */


RCC_PLLCFGR_PLLREN       EQU        (0x10000000);


RCC_PLLCFGR_PLLR         EQU        (0xE0000000);
RCC_PLLCFGR_PLLR_0       EQU        (0x20000000);   (0x1UL << RCC_PLLCFGR_PLLR_Pos)       /*!< 0x20000000 */
RCC_PLLCFGR_PLLR_1       EQU        (0x40000000);   (0x2UL << RCC_PLLCFGR_PLLR_Pos)       /*!< 0x40000000 */
RCC_PLLCFGR_PLLR_2       EQU        (0x80000000);   (0x4UL << RCC_PLLCFGR_PLLR_Pos)       /*!< 0x80000000 */

;/********************  Bit definition for RCC_CIER register  ******************/

RCC_CIER_LSIRDYIE        EQU        (0x00000001  );
RCC_CIER_LSERDYIE        EQU        (0x00000002  );
RCC_CIER_HSIRDYIE        EQU        (0x00000008  );
RCC_CIER_HSERDYIE        EQU        (0x00000010  );
RCC_CIER_PLLRDYIE        EQU        (0x00000020  );

;/********************  Bit definition for RCC_CIFR register  ******************/

RCC_CIFR_LSIRDYF         EQU       (0x00000001 );
RCC_CIFR_LSERDYF         EQU       (0x00000002 );
RCC_CIFR_HSIRDYF         EQU       (0x00000008 );
RCC_CIFR_HSERDYF         EQU       (0x00000010 );
RCC_CIFR_PLLRDYF         EQU       (0x00000020 );
RCC_CIFR_CSSF            EQU       (0x00000100 );
RCC_CIFR_LSECSSF         EQU       (0x00000200 );

;/********************  Bit definition for RCC_CICR register  ******************/

RCC_CICR_LSIRDYC         EQU        (0x00000001 );
RCC_CICR_LSERDYC         EQU        (0x00000002 );
RCC_CICR_HSIRDYC         EQU        (0x00000008 );
RCC_CICR_HSERDYC         EQU        (0x00000010 );
RCC_CICR_PLLRDYC         EQU        (0x00000020 );
RCC_CICR_CSSC            EQU        (0x00000100 );
RCC_CICR_LSECSSC         EQU        (0x00000200 );

;/********************  Bit definition for RCC_IOPRSTR register  ****************/
RCC_IOPRSTR_GPIOARST     EQU        (0x00000001 );
RCC_IOPRSTR_GPIOBRST     EQU        (0x00000002 );
RCC_IOPRSTR_GPIOCRST     EQU        (0x00000004 );
RCC_IOPRSTR_GPIODRST     EQU        (0x00000008 );
RCC_IOPRSTR_GPIOFRST     EQU        (0x00000020 );

;/********************  Bit definition for RCC_AHBRSTR register  ***************/
RCC_AHBRSTR_DMA1RST      EQU        (0x00000001 );
RCC_AHBRSTR_FLASHRST     EQU        (0x00000100 );
RCC_AHBRSTR_CRCRST       EQU        (0x00001000 );

;/********************  Bit definition for RCC_APBRSTR1 register  **************/

RCC_APBRSTR1_TIM2RST       EQU     ( 0x00000001    );
RCC_APBRSTR1_TIM3RST       EQU     ( 0x00000002    );
RCC_APBRSTR1_SPI2RST       EQU     ( 0x00004000    );
RCC_APBRSTR1_USART2RST     EQU     ( 0x00020000    );
RCC_APBRSTR1_LPUART1RST    EQU     ( 0x00100000   );
RCC_APBRSTR1_I2C1RST       EQU     ( 0x00200000   );
RCC_APBRSTR1_I2C2RST       EQU     ( 0x00400000   );
RCC_APBRSTR1_DBGRST        EQU     ( 0x08000000   );
RCC_APBRSTR1_PWRRST        EQU     ( 0x10000000   );
RCC_APBRSTR1_LPTIM2RST     EQU     ( 0x40000000   );
RCC_APBRSTR1_LPTIM1RST     EQU     ( 0x80000000    );

;/********************  Bit definition for RCC_APBRSTR2 register  **************/
RCC_APBRSTR2_SYSCFGRST     EQU        ( 0x00000001   );               RCC_APBRSTR2_SYSCFGRST_Msk
RCC_APBRSTR2_TIM1RST       EQU        ( 0x00000800   );               RCC_APBRSTR2_TIM1RST_Msk
RCC_APBRSTR2_SPI1RST       EQU        ( 0x00001000   );               RCC_APBRSTR2_SPI1RST_Msk
RCC_APBRSTR2_USART1RST     EQU        ( 0x00004000   );               RCC_APBRSTR2_USART1RST_Msk
RCC_APBRSTR2_TIM14RST      EQU        ( 0x00008000   );               RCC_APBRSTR2_TIM14RST_Msk
RCC_APBRSTR2_TIM16RST      EQU        ( 0x00020000   );               RCC_APBRSTR2_TIM16RST_Msk
RCC_APBRSTR2_TIM17RST      EQU        ( 0x00040000   );               RCC_APBRSTR2_TIM17RST_Msk
RCC_APBRSTR2_ADCRST        EQU        ( 0x00100000   );               RCC_APBRSTR2_ADCRST_Msk

;/********************  Bit definition for RCC_IOPENR register  ****************/

RCC_IOPENR_GPIOAEN         EQU             (0x00000001);                               RCC_IOPENR_GPIOAEN_Msk
RCC_IOPENR_GPIOBEN         EQU             (0x00000002);                               RCC_IOPENR_GPIOBEN_Msk
RCC_IOPENR_GPIOCEN         EQU             (0x00000004);                               RCC_IOPENR_GPIOCEN_Msk
RCC_IOPENR_GPIODEN         EQU             (0x00000008);                               RCC_IOPENR_GPIODEN_Msk
RCC_IOPENR_GPIOFEN         EQU             (0x00000020);                               RCC_IOPENR_GPIOFEN_Msk

;/********************  Bit definition for RCC_AHBENR register  ****************/

RCC_AHBENR_DMA1EN           EQU     (0x00000001)
RCC_AHBENR_FLASHEN          EQU     (0x00000100)
RCC_AHBENR_CRCEN            EQU     (0x00001000)

;/********************  Bit definition for RCC_APBENR1 register  ***************/

RCC_APBENR1_TIM2EN          EQU             (0x00000001);                             RCC_APBENR1_TIM2EN_Msk
RCC_APBENR1_TIM3EN          EQU             (0x00000002);                             RCC_APBENR1_TIM3EN_Msk
RCC_APBENR1_RTCAPBEN        EQU             (0x00000400);                             RCC_APBENR1_RTCAPBEN_Msk
RCC_APBENR1_WWDGEN          EQU             (0x00000800);                             RCC_APBENR1_WWDGEN_Msk
RCC_APBENR1_SPI2EN          EQU             (0x00004000);                             RCC_APBENR1_SPI2EN_Msk
RCC_APBENR1_USART2EN        EQU             (0x00020000);                             RCC_APBENR1_USART2EN_Msk
RCC_APBENR1_LPUART1EN       EQU             (0x00100000);                             RCC_APBENR1_LPUART1EN_Msk
RCC_APBENR1_I2C1EN          EQU             (0x00200000);                             RCC_APBENR1_I2C1EN_Msk
RCC_APBENR1_I2C2EN          EQU             (0x00400000);                             RCC_APBENR1_I2C2EN_Msk
RCC_APBENR1_DBGEN           EQU             (0x08000000);                             RCC_APBENR1_DBGEN_Msk
RCC_APBENR1_PWREN           EQU             (0x10000000);                             RCC_APBENR1_PWREN_Msk
RCC_APBENR1_LPTIM2EN        EQU             (0x40000000);                             RCC_APBENR1_LPTIM2EN_Msk
RCC_APBENR1_LPTIM1EN        EQU             (0x80000000);                             RCC_APBENR1_LPTIM1EN_Msk

;/********************  Bit definition for RCC_APBENR2 register  **************/

RCC_APBENR2_SYSCFGEN        EQU                          (0x00000001);                  RCC_APBENR2_SYSCFGEN_Msk
RCC_APBENR2_TIM1EN          EQU                          (0x00000800);                  RCC_APBENR2_TIM1EN_Msk
RCC_APBENR2_SPI1EN          EQU                          (0x00001000);                  RCC_APBENR2_SPI1EN_Msk
RCC_APBENR2_USART1EN        EQU                          (0x00004000);                  RCC_APBENR2_USART1EN_Msk
RCC_APBENR2_TIM14EN         EQU                          (0x00008000);                  RCC_APBENR2_TIM14EN_Msk
RCC_APBENR2_TIM16EN         EQU                          (0x00020000);                  RCC_APBENR2_TIM16EN_Msk
RCC_APBENR2_TIM17EN         EQU                          (0x00040000);                  RCC_APBENR2_TIM17EN_Msk
RCC_APBENR2_ADCEN           EQU                          (0x00100000);                  RCC_APBENR2_ADCEN_Msk

;/********************  Bit definition for RCC_IOPSMENR register  *************/

RCC_IOPSMENR_GPIOASMEN      EQU                      (0x00000001);              RCC_IOPSMENR_GPIOASMEN_Msk
RCC_IOPSMENR_GPIOBSMEN      EQU                      (0x00000002);              RCC_IOPSMENR_GPIOBSMEN_Msk
RCC_IOPSMENR_GPIOCSMEN      EQU                      (0x00000004);              RCC_IOPSMENR_GPIOCSMEN_Msk
RCC_IOPSMENR_GPIODSMEN      EQU                      (0x00000008);              RCC_IOPSMENR_GPIODSMEN_Msk
RCC_IOPSMENR_GPIOFSMEN      EQU                      (0x00000020);              RCC_IOPSMENR_GPIOFSMEN_Msk

;/********************  Bit definition for RCC_AHBSMENR register  *************/

RCC_AHBSMENR_DMA1SMEN        EQU                 (0x00000001);                RCC_AHBSMENR_DMA1SMEN_Msk
RCC_AHBSMENR_FLASHSMEN       EQU                 (0x00000100);                RCC_AHBSMENR_FLASHSMEN_Msk
RCC_AHBSMENR_SRAMSMEN        EQU                 (0x00000200);                RCC_AHBSMENR_SRAMSMEN_Msk
RCC_AHBSMENR_CRCSMEN         EQU                 (0x00001000);                RCC_AHBSMENR_CRCSMEN_Msk

;/********************  Bit definition for RCC_APBSMENR1 register  *************/

RCC_APBSMENR1_TIM2SMEN         EQU                           (0x00000001 );*/                                        RCC_APBSMENR1_TIM2SMEN_Msk
RCC_APBSMENR1_TIM3SMEN         EQU                           (0x00000002 );*/                                        RCC_APBSMENR1_TIM3SMEN_Msk
RCC_APBSMENR1_RTCAPBSMEN       EQU                           (0x00000400 );*/                                        RCC_APBSMENR1_RTCAPBSMEN_Msk
RCC_APBSMENR1_WWDGSMEN         EQU                           (0x00000800 );*/                                        RCC_APBSMENR1_WWDGSMEN_Msk
RCC_APBSMENR1_SPI2SMEN         EQU                           (0x00004000 );*/                                        RCC_APBSMENR1_SPI2SMEN_Msk
RCC_APBSMENR1_USART2SMEN       EQU                           (0x00020000 );*/                                        RCC_APBSMENR1_USART2SMEN_Msk
RCC_APBSMENR1_LPUART1SMEN      EQU                           (0x00100000 );*/                                        RCC_APBSMENR1_LPUART1SMEN_Msk
RCC_APBSMENR1_I2C1SMEN         EQU                           (0x00200000 );*/                                        RCC_APBSMENR1_I2C1SMEN_Msk
RCC_APBSMENR1_I2C2SMEN         EQU                           (0x00400000 );*/                                        RCC_APBSMENR1_I2C2SMEN_Msk
RCC_APBSMENR1_DBGSMEN          EQU                           (0x08000000 );*/                                        RCC_APBSMENR1_DBGSMEN_Msk
RCC_APBSMENR1_PWRSMEN          EQU                           (0x10000000 );*/                                        RCC_APBSMENR1_PWRSMEN_Msk
RCC_APBSMENR1_LPTIM2SMEN       EQU                           (0x40000000 );*/                                        RCC_APBSMENR1_LPTIM2SMEN_Msk
RCC_APBSMENR1_LPTIM1SMEN       EQU                           (0x80000000 );*/                                        RCC_APBSMENR1_LPTIM1SMEN_Msk

;/********************  Bit definition for RCC_APBSMENR2 register  *************/

RCC_APBSMENR2_SYSCFGSMEN       EQU                           (0x00000001 );                                 RCC_APBSMENR2_SYSCFGSMEN_Msk
RCC_APBSMENR2_TIM1SMEN         EQU                           (0x00000800 );                                  RCC_APBSMENR2_TIM1SMEN_Msk
RCC_APBSMENR2_SPI1SMEN         EQU                           (0x00001000 );                                  RCC_APBSMENR2_SPI1SMEN_Msk
RCC_APBSMENR2_USART1SMEN       EQU                           (0x00004000 );                                 RCC_APBSMENR2_USART1SMEN_Msk
RCC_APBSMENR2_TIM14SMEN        EQU                           (0x00008000 );                                  RCC_APBSMENR2_TIM14SMEN_Msk
RCC_APBSMENR2_TIM16SMEN        EQU                           (0x00020000 );                                  RCC_APBSMENR2_TIM16SMEN_Msk
RCC_APBSMENR2_TIM17SMEN        EQU                           (0x00040000 );                                  RCC_APBSMENR2_TIM17SMEN_Msk
RCC_APBSMENR2_ADCSMEN          EQU                           (0x00100000 );                                  RCC_APBSMENR2_ADCSMEN_Msk

;/********************  Bit definition for RCC_CCIPR register  ******************/

RCC_CCIPR_USART1SEL            EQU                	(0x00000003);
RCC_CCIPR_USART1SEL_0          EQU                	(0x00000001);(0x1UL << RCC_CCIPR_USART1SEL_Pos)     /*!< 0x00000001 */
RCC_CCIPR_USART1SEL_1          EQU                	(0x00000002);(0x2UL << RCC_CCIPR_USART1SEL_Pos)     /*!< 0x00000002 */

RCC_CCIPR_LPUART1SEL           EQU                 	(0x00000C00);  
RCC_CCIPR_LPUART1SEL_0         EQU                 	(0x00000400);  (0x1UL << RCC_CCIPR_LPUART1SEL_Pos)    /*!< 0x00000400 */
RCC_CCIPR_LPUART1SEL_1         EQU                 	(0x00000800);  (0x2UL << RCC_CCIPR_LPUART1SEL_Pos)    /*!< 0x00000800 */


RCC_CCIPR_I2C1SEL              EQU   				(0x00003000);                               RCC_CCIPR_I2C1SEL_Msk
RCC_CCIPR_I2C1SEL_0            EQU   				(0x00001000);                               (0x1UL << RCC_CCIPR_I2C1SEL_Pos)       /*!< 0x00001000 */
RCC_CCIPR_I2C1SEL_1            EQU   				(0x00002000);                            (0x2UL << RCC_CCIPR_I2C1SEL_Pos)       /*!< 0x00002000 */
                                          
RCC_CCIPR_I2S1SEL              EQU  				(0x0000C000)
RCC_CCIPR_I2S1SEL_0            EQU   				(0x00004000);   (0x1UL << RCC_CCIPR_I2S1SEL_Pos)       /*!< 0x00004000 */
RCC_CCIPR_I2S1SEL_1            EQU  				(0x00008000);  (0x2UL << RCC_CCIPR_I2S1SEL_Pos)       /*!< 0x00008000 */
		
		
RCC_CCIPR_LPTIM1SEL    			EQU         		(0x000C0000);
RCC_CCIPR_LPTIM1SEL_0  			EQU         		(0x00040000);		(0x1UL << RCC_CCIPR_LPTIM1SEL_Pos)     /*!< 0x00040000 */
RCC_CCIPR_LPTIM1SEL_1  			EQU         		(0x00080000);		(0x2UL << RCC_CCIPR_LPTIM1SEL_Pos)     /*!< 0x00080000 */


RCC_CCIPR_LPTIM2SEL             EQU   				(0x00300000);
RCC_CCIPR_LPTIM2SEL_0           EQU   				(0x00100000);  (0x1UL << RCC_CCIPR_LPTIM2SEL_Pos)     /*!< 0x00100000 */
RCC_CCIPR_LPTIM2SEL_1           EQU   				(0x00200000);  (0x2UL << RCC_CCIPR_LPTIM2SEL_Pos)     /*!< 0x00200000 */


RCC_CCIPR_TIM1SEL               EQU					(0x00400000);




RCC_CCIPR_ADCSEL                EQU                 (0xC0000000);
RCC_CCIPR_ADCSEL_0              EQU                 (0x40000000);                                  (0x1UL << RCC_CCIPR_ADCSEL_Pos)        /*!< 0x40000000 */
RCC_CCIPR_ADCSEL_1              EQU                 (0x80000000);                                  (0x2UL << RCC_CCIPR_ADCSEL_Pos)        /*!< 0x80000000 */


;/********************  Bit definition for RCC_BDCR register  ******************/

RCC_BDCR_LSEON                 EQU                 (0x00000001 );            RCC_BDCR_LSEON_Msk
RCC_BDCR_LSERDY                EQU                 (0x00000002 );            RCC_BDCR_LSERDY_Msk
RCC_BDCR_LSEBYP                EQU                 (0x00000004 );            RCC_BDCR_LSEBYP_Msk						                                 
RCC_BDCR_LSEDRV                EQU                 (0x00000018 );            RCC_BDCR_LSEDRV_Msk
RCC_BDCR_LSEDRV_0              EQU                 (0x00000008 );            (0x1UL << RCC_BDCR_LSEDRV_Pos)         /*!< 0x00000008 */
RCC_BDCR_LSEDRV_1              EQU                 (0x00000010 );            (0x2UL << RCC_BDCR_LSEDRV_Pos)         /*!< 0x00000010 */
								                                  
RCC_BDCR_LSECSSON              EQU                 (0x00000020 );            RCC_BDCR_LSECSSON_Msk
RCC_BDCR_LSECSSD               EQU                 (0x00000040 );            RCC_BDCR_LSECSSD_Msk
								                                  
RCC_BDCR_RTCSEL                EQU                 (0x00000300 );            RCC_BDCR_RTCSEL_Msk
RCC_BDCR_RTCSEL_0              EQU                 (0x00000100 );            (0x1UL << RCC_BDCR_RTCSEL_Pos)         /*!< 0x00000100 */
RCC_BDCR_RTCSEL_1              EQU                 (0x00000200 );            (0x2UL << RCC_BDCR_RTCSEL_Pos)         /*!< 0x00000200 */
								                                  

RCC_BDCR_RTCEN                 EQU                  (0x00008000 );            RCC_BDCR_RTCEN_Msk
RCC_BDCR_BDRST                 EQU                  (0x00010000 );            RCC_BDCR_BDRST_Msk
								                                  
RCC_BDCR_LSCOEN                EQU                  (0x01000000 );            RCC_BDCR_LSCOEN_Msk
RCC_BDCR_LSCOSEL               EQU                  (0x02000000 );            RCC_BDCR_LSCOSEL_Msk

;/********************  Bit definition for RCC_CSR register  *******************/

RCC_CSR_LSION                  EQU                      (0x00000001 );                      RCC_CSR_LSION_Msk
RCC_CSR_LSIRDY                 EQU                      (0x00000002 );                      RCC_CSR_LSIRDY_Msk								                                           
RCC_CSR_RMVF                   EQU                      (0x00800000 );                      RCC_CSR_RMVF_Msk
RCC_CSR_OBLRSTF                EQU                      (0x02000000 );                      RCC_CSR_OBLRSTF_Msk
RCC_CSR_PINRSTF                EQU                      (0x04000000 );                      RCC_CSR_PINRSTF_Msk
RCC_CSR_PWRRSTF                EQU                      (0x08000000 );                      RCC_CSR_PWRRSTF_Msk
RCC_CSR_SFTRSTF                EQU                      (0x10000000 );                      RCC_CSR_SFTRSTF_Msk
RCC_CSR_IWDGRSTF               EQU                      (0x20000000 );                      RCC_CSR_IWDGRSTF_Msk
RCC_CSR_WWDGRSTF               EQU                      (0x40000000 );                      RCC_CSR_WWDGRSTF_Msk
RCC_CSR_LPWRRSTF               EQU                      (0x80000000 );                      RCC_CSR_LPWRRSTF_Msk

;/******************************************************************************/
;/*                                                                            */
;/*                        Real Time Clock (RTC)                         */
;/*                         BITs Definition to be defined (TBD)                */
;/******************************************************************************/


;/******************************************************************************/
;/*                                                                            */
;/*                        TAMPER (TAMP)                         */
;/*                         BITs Definition to be defined (TBD)                */
;/******************************************************************************/


;/******************************************************************************/
;/*                                                                            */
;/*                        Serial Peripheral Interface (SPI)                   */
;/*                                                                            */
;/******************************************************************************/
;/*
; * @brief Specific device feature definitions (not present on all devices in the STM32G0 series)
; */
;#define SPI_I2S_SUPPORT                       /*!< I2S support */

;/*******************  Bit definition for SPI_CR1 register  ********************/

SPI_CR1_CPHA                         EQU                       (0x00000001);                          /*!<Clock Phase      */
SPI_CR1_CPOL                         EQU                       (0x00000002);                          /*!<Clock Polarity   */
SPI_CR1_MSTR                         EQU                       (0x00000004);                          /*!<Master Selection */
							                                
SPI_CR1_BR                           EQU                       (0x00000038);                             /*!<BR[2:0] bits (Baud Rate Control) */
SPI_CR1_BR_0                         EQU                       (0x00000008);    ;(0x1UL << SPI_CR1_BR_Pos)                  /*!< 0x00000008 */
SPI_CR1_BR_1                         EQU                       (0x00000010);    ;(0x2UL << SPI_CR1_BR_Pos)                  /*!< 0x00000010 */
SPI_CR1_BR_2                         EQU                       (0x00000020);    ;(0x4UL << SPI_CR1_BR_Pos)                  /*!< 0x00000020 */
							                                
							                                
SPI_CR1_SPE                          EQU                       (0x00000040);                            /*!<SPI Enable                          */
							                                
SPI_CR1_LSBFIRST                     EQU                       (0x00000080);                       /*!<Frame Format                        */
SPI_CR1_SSI                          EQU                       (0x00000100);                            /*!<Internal slave select               */
SPI_CR1_SSM                          EQU                       (0x00000200);                            /*!<Software slave management           */
SPI_CR1_RXONLY                       EQU                       (0x00000400);                         /*!<Receive only                        */
SPI_CR1_CRCL                         EQU                       (0x00000800);                           /*!< CRC Length */
SPI_CR1_CRCNEXT                      EQU                       (0x00001000);                        /*!<Transmit CRC next                   */
SPI_CR1_CRCEN                        EQU                       (0x00002000);                          /*!<Hardware CRC calculation enable     */
SPI_CR1_BIDIOE                       EQU                       (0x00004000);                         /*!<Output enable in bidirectional mode */
SPI_CR1_BIDIMODE                     EQU                       (0x00008000);                       /*!<Bidirectional data mode enable      */

;/*******************  Bit definition for SPI_CR2 register  ********************/

SPI_CR2_RXDMAEN                     EQU                          (0x00000001);                        /*!< Rx Buffer DMA Enable */
SPI_CR2_TXDMAEN                     EQU                          (0x00000002);                        /*!< Tx Buffer DMA Enable */
SPI_CR2_SSOE                        EQU                          (0x00000004);                           /*!< SS Output Enable */
SPI_CR2_NSSP                        EQU                          (0x00000008);                           /*!< NSS pulse management Enable */
SPI_CR2_FRF                         EQU                          (0x00000010);                            /*!< Frame Format Enable */
SPI_CR2_ERRIE                       EQU                          (0x00000020);                          /*!< Error Interrupt Enable */
SPI_CR2_RXNEIE                      EQU                          (0x00000040);                         /*!< RX buffer Not Empty Interrupt Enable */
SPI_CR2_TXEIE                       EQU                          (0x00000080);                          /*!< Tx buffer Empty Interrupt Enable */

SPI_CR2_DS                          EQU                          (0x00000F00);                             /*!< DS[3:0] Data Size */
SPI_CR2_DS_0                        EQU                          (0x00000100);						(0x1UL << SPI_CR2_DS_Pos)                  /*!< 0x00000100 */
SPI_CR2_DS_1                        EQU                          (0x00000200);						(0x2UL << SPI_CR2_DS_Pos)                  /*!< 0x00000200 */
SPI_CR2_DS_2                        EQU                          (0x00000400);						(0x4UL << SPI_CR2_DS_Pos)                  /*!< 0x00000400 */
SPI_CR2_DS_3                        EQU                          (0x00000800);						(0x8UL << SPI_CR2_DS_Pos)                  /*!< 0x00000800 */
																			
SPI_CR2_FRXTH                       EQU                          (0x00001000);                          /*!< FIFO reception Threshold */
SPI_CR2_LDMARX                      EQU                          (0x00002000);                         /*!< Last DMA transfer for reception */
SPI_CR2_LDMATX                      EQU                          (0x00004000);                         /*!< Last DMA transfer for transmission */

;/********************  Bit definition for SPI_SR register  ********************/

SPI_SR_RXNE                 EQU                                  (0x00000001);                            /*!< Receive buffer Not Empty */
SPI_SR_TXE                  EQU                                  (0x00000002);                             /*!< Transmit buffer Empty */
SPI_SR_CHSIDE               EQU                                  (0x00000004);                          /*!< Channel side */
SPI_SR_UDR                  EQU                                  (0x00000008);                             /*!< Underrun flag */
SPI_SR_CRCERR               EQU                                  (0x00000010);                          /*!< CRC Error flag */
SPI_SR_MODF                 EQU                                  (0x00000020);                            /*!< Mode fault */
SPI_SR_OVR                  EQU                                  (0x00000040);                             /*!< Overrun flag */
SPI_SR_BSY                  EQU                                  (0x00000080);                             /*!< Busy flag */
SPI_SR_FRE                  EQU                                  (0x00000100);                             /*!< TI frame format error */

SPI_SR_FRLVL                EQU                                  (0x00000600);                           /*!< FIFO Reception Level */
SPI_SR_FRLVL_0              EQU                                  (0x00000200);           (0x1UL << SPI_SR_FRLVL_Pos)                /*!< 0x00000200 */
SPI_SR_FRLVL_1              EQU                                  (0x00000400);           (0x2UL << SPI_SR_FRLVL_Pos)                /*!< 0x00000400 */

SPI_SR_FTLVL                EQU                                  (0x00001800);                           /*!< FIFO Transmission Level */
SPI_SR_FTLVL_0              EQU                                  (0x00000800);          (0x1UL << SPI_SR_FTLVL_Pos)                /*!< 0x00000800 */
SPI_SR_FTLVL_1              EQU                                  (0x00001000);          (0x2UL << SPI_SR_FTLVL_Pos)                /*!< 0x00001000 */

;/********************  Bit definition for SPI_DR register  ********************/

SPI_DR_DR                   EQU 								 (0x0000FFFF);                              /*!<Data Register           */);

;/*******************  Bit definition for SPI_CRCPR register  ******************/

SPI_CRCPR_CRCPOLY           EQU 								 (0x0000FFFF);                      /*!<CRC polynomial register */

;/******************  Bit definition for SPI_RXCRCR register  ******************/

SPI_RXCRCR_RXCRC             EQU 								 (0x0000FFFF);                       /*!<Rx CRC Register         */

;/******************  Bit definition for SPI_TXCRCR register  ******************/

SPI_TXCRCR_TXCRC             EQU 								 (0x0000FFFF);                       /*!<Tx CRC Register         */

;/******************  Bit definition for SPI_I2SCFGR register  *****************/

SPI_I2SCFGR_CHLEN           EQU                       (0x00000001);                      /*!<Channel length (number of bits per audio channel) */

SPI_I2SCFGR_DATLEN          EQU                       (0x00000006);                     /*!<DATLEN[1:0] bits (Data length to be transferred) */
SPI_I2SCFGR_DATLEN_0        EQU                       (0x00000002);		(0x1UL << SPI_I2SCFGR_DATLEN_Pos)          /*!< 0x00000002 */
SPI_I2SCFGR_DATLEN_1        EQU                       (0x00000004);		(0x2UL << SPI_I2SCFGR_DATLEN_Pos)          /*!< 0x00000004 */

SPI_I2SCFGR_CKPOL           EQU                       (0x00000008);                      /*!<steady state clock polarity */

SPI_I2SCFGR_I2SSTD          EQU                       (0x00000030);                     /*!<I2SSTD[1:0] bits (I2S standard selection) */
SPI_I2SCFGR_I2SSTD_0        EQU                       (0x00000010);			(0x1UL << SPI_I2SCFGR_I2SSTD_Pos)          /*!< 0x00000010 */
SPI_I2SCFGR_I2SSTD_1        EQU                       (0x00000020);			(0x2UL << SPI_I2SCFGR_I2SSTD_Pos)          /*!< 0x00000020 */

SPI_I2SCFGR_PCMSYNC         EQU                       (0x00000080);                    /*!<PCM frame synchronization */

SPI_I2SCFGR_I2SCFG          EQU                       (0x00000300);                     /*!<I2SCFG[1:0] bits (I2S configuration mode) */
SPI_I2SCFGR_I2SCFG_0        EQU                       (0x00000100);      (0x1UL << SPI_I2SCFGR_I2SCFG_Pos)          /*!< 0x00000100 */
SPI_I2SCFGR_I2SCFG_1        EQU                       (0x00000200);      (0x2UL << SPI_I2SCFGR_I2SCFG_Pos)          /*!< 0x00000200 */

SPI_I2SCFGR_I2SE            EQU                       (0x00000400);                       /*!<I2S Enable */
SPI_I2SCFGR_I2SMOD          EQU                       (0x00000800);                     /*!<I2S mode selection */
SPI_I2SCFGR_ASTRTEN         EQU                       (0x00001000);                    /*!<Asynchronous start enable */

;/******************  Bit definition for SPI_I2SPR register  *******************/

SPI_I2SPR_I2SDIV            EQU                       (0x000000FF);                       /*!<I2S Linear prescaler */
SPI_I2SPR_ODD               EQU                       (0x00000100);                          /*!<Odd factor for the prescaler */
SPI_I2SPR_MCKOE             EQU                       (0x00000200);                        /*!<Master Clock Output Enable */

;/******************************************************************************/
;/*                                                                            */
;/*                                 SYSCFG                                     */
;/*                                                                            */
;/******************************************************************************/
;#define SYSCFG_CDEN_SUPPORT
;/*****************  Bit definition for SYSCFG_CFGR1 register  ****************/

SYSCFG_CFGR1_MEM_MODE                 EQU         (0x00000003);            /*!< SYSCFG_Memory Remap Config */
SYSCFG_CFGR1_MEM_MODE_0               EQU         (0x00000001);      (0x1UL << SYSCFG_CFGR1_MEM_MODE_Pos) /*!< 0x00000001 */
SYSCFG_CFGR1_MEM_MODE_1               EQU         (0x00000002);      (0x2UL << SYSCFG_CFGR1_MEM_MODE_Pos) /*!< 0x00000002 */

SYSCFG_CFGR1_PA11_RMP                 EQU         (0x00000008);            /*!< PA11 Remap */
SYSCFG_CFGR1_PA12_RMP                 EQU         (0x00000010);            /*!< PA12 Remap */
SYSCFG_CFGR1_IR_POL                   EQU         (0x00000020);            /*!< IROut Polarity Selection */

SYSCFG_CFGR1_IR_MOD                   EQU         (0x000000C0);            /*!< IRDA Modulation Envelope signal source selection */
SYSCFG_CFGR1_IR_MOD_0                 EQU         (0x00000040);    (0x1UL << SYSCFG_CFGR1_IR_MOD_Pos) /*!< 0x00000040 */
SYSCFG_CFGR1_IR_MOD_1                 EQU         (0x00000080);    (0x2UL << SYSCFG_CFGR1_IR_MOD_Pos) /*!< 0x00000080 */

SYSCFG_CFGR1_BOOSTEN                  EQU         (0x00000100);            /*!< I/O analog switch voltage booster enable */
SYSCFG_CFGR1_I2C_PB6_FMP              EQU         (0x00010000);             /*!< I2C PB6 Fast mode plus */
SYSCFG_CFGR1_I2C_PB7_FMP              EQU         (0x00020000);             /*!< I2C PB7 Fast mode plus */
SYSCFG_CFGR1_I2C_PB8_FMP              EQU         (0x00040000);             /*!< I2C PB8 Fast mode plus */
SYSCFG_CFGR1_I2C_PB9_FMP              EQU         (0x00080000);             /*!< I2C PB9 Fast mode plus */

SYSCFG_CFGR1_I2C1_FMP                 EQU         (0x00100000);                /*!< Enable Fast Mode Plus on PB10, PB11, PF6 and PF7  */
SYSCFG_CFGR1_I2C2_FMP                 EQU         (0x00200000);                /*!< Enable I2C2 Fast mode plus  */
SYSCFG_CFGR1_I2C_PA9_FMP              EQU         (0x00400000);             /*!< Enable Fast Mode Plus on PA9  */
SYSCFG_CFGR1_I2C_PA10_FMP             EQU         (0x00800000);            /*!< Enable Fast Mode Plus on PA10 */

;/******************  Bit definition for SYSCFG_CFGR2 register  ****************/

SYSCFG_CFGR2_CLL                      EQU         (0x00000001);              /*!< Enables and locks the LOCKUP (Hardfault) output of CortexM0 with Break Input of TIMER1 */
SYSCFG_CFGR2_SPL                      EQU         (0x00000002);              /*!< Enables and locks the SRAM_PARITY error signal with Break Input of TIMER1 */
SYSCFG_CFGR2_PVDL                     EQU         (0x00000004);             /*!< Enables and locks the PVD connection with Timer1 Break Input and also the PVD_EN and PVDSEL[2:0] bits of the Power Control Interface */
SYSCFG_CFGR2_ECCL                     EQU         (0x00000008);             /*!< ECCL */
SYSCFG_CFGR2_SPF                      EQU         (0x00000100);              /*!< SRAM Parity error flag */
SYSCFG_CFGR2_SRAM_PE                  EQU         (0x00000100);                  /*!< SRAM Parity error flag (define maintained for legacy purpose) */

SYSCFG_CFGR2_PA1_CDEN                 EQU         (0x00010000);              /*!< PA[1] Clamping Diode Enable */
SYSCFG_CFGR2_PA3_CDEN                 EQU         (0x00020000);              /*!< PA[3] Clamping Diode Enable */
SYSCFG_CFGR2_PA5_CDEN                 EQU         (0x00040000);              /*!< PA[5] Clamping Diode Enable */
SYSCFG_CFGR2_PA6_CDEN                 EQU         (0x00080000);              /*!< PA[6] Clamping Diode Enable */
SYSCFG_CFGR2_PA13_CDEN                EQU         (0x00100000);            /*!< PA[13] Clamping Diode Enable */
SYSCFG_CFGR2_PB0_CDEN                 EQU         (0x00200000);              /*!< PB[0] Clamping Diode Enable */
SYSCFG_CFGR2_PB1_CDEN                 EQU         (0x00400000);              /*!< PB[1] Clamping Diode Enable */
SYSCFG_CFGR2_PB2_CDEN                 EQU         (0x00800000);              /*!< PB[2] Clamping Diode Enable */

;/*****************  Bit definition for SYSCFG_ITLINEx ISR Wrapper register  ****************/

SYSCFG_ITLINE0_SR_EWDG                EQU         (0x00000001);      /*!< EWDG interrupt */

SYSCFG_ITLINE1_SR_PVDOUT              EQU         (0x00000001);     /*!< Power voltage detection -> exti[16] Interrupt */

SYSCFG_ITLINE2_SR_TAMPER              EQU         (0x00000001);     /*!< TAMPER -> exti[21] interrupt */

SYSCFG_ITLINE2_SR_RTC                 EQU         (0x00000002); /*!< RTC -> exti[19] interrupt .... */

SYSCFG_ITLINE3_SR_FLASH_ECC           EQU         (0x00000001);  /*!< Flash ITF ECC interrupt */

SYSCFG_ITLINE3_SR_FLASH_ITF           EQU         (0x00000002);  /*!< FLASH ITF interrupt */

SYSCFG_ITLINE4_SR_CLK_CTRL            EQU         (0x00000001);   /*!< RCC interrupt */

SYSCFG_ITLINE5_SR_EXTI0               EQU         (0x00000001);      /*!< External Interrupt 0 */

SYSCFG_ITLINE5_SR_EXTI1               EQU         (0x00000002);      /*!< External Interrupt 1 */

SYSCFG_ITLINE6_SR_EXTI2               EQU         (0x00000001);      /*!< External Interrupt 2 */

SYSCFG_ITLINE6_SR_EXTI3               EQU         (0x00000002);      /*!< External Interrupt 3 */

SYSCFG_ITLINE7_SR_EXTI4               EQU         (0x00000001);      /*!< External Interrupt 4 */

SYSCFG_ITLINE7_SR_EXTI5               EQU         (0x00000002);      /*!< External Interrupt 5 */

SYSCFG_ITLINE7_SR_EXTI6               EQU         (0x00000004);      /*!< External Interrupt 6 */

SYSCFG_ITLINE7_SR_EXTI7               EQU         (0x00000008);      /*!< External Interrupt 7 */

SYSCFG_ITLINE7_SR_EXTI8               EQU         (0x00000010);      /*!< External Interrupt 8 */

SYSCFG_ITLINE7_SR_EXTI9               EQU         (0x00000020);      /*!< External Interrupt 9 */

SYSCFG_ITLINE7_SR_EXTI10              EQU         (0x00000040);     /*!< External Interrupt 10 */

SYSCFG_ITLINE7_SR_EXTI11              EQU         (0x00000080);     /*!< External Interrupt 11 */

SYSCFG_ITLINE7_SR_EXTI12              EQU         (0x00000100);     /*!< External Interrupt 12 */

SYSCFG_ITLINE7_SR_EXTI13              EQU         (0x00000200);     /*!< External Interrupt 13 */

SYSCFG_ITLINE7_SR_EXTI14              EQU         (0x00000400);     /*!< External Interrupt 14 */

SYSCFG_ITLINE7_SR_EXTI15              EQU         (0x00000800);     /*!< External Interrupt 15 */

SYSCFG_ITLINE9_SR_DMA1_CH1            EQU         (0x00000001);   /*!< DMA1 Channel 1 Interrupt */

SYSCFG_ITLINE10_SR_DMA1_CH2           EQU         (0x00000001);  /*!< DMA1 Channel 2 Interrupt */

SYSCFG_ITLINE10_SR_DMA1_CH3           EQU         (0x00000002);  /*!< DMA2 Channel 3 Interrupt */

SYSCFG_ITLINE11_SR_DMAMUX1            EQU         (0x00000001);    /*!< DMAMUX Interrupt */

SYSCFG_ITLINE11_SR_DMA1_CH4           EQU         (0x00000002);  /*!< DMA1 Channel 4 Interrupt */

SYSCFG_ITLINE11_SR_DMA1_CH5           EQU         (0x00000004);  /*!< DMA1 Channel 5 Interrupt */

SYSCFG_ITLINE12_SR_ADC                EQU         (0x00000001);       /*!< ADC Interrupt */

SYSCFG_ITLINE13_SR_TIM1_CCU           EQU         (0x00000001);  /*!< TIM1 CCU Interrupt */

SYSCFG_ITLINE13_SR_TIM1_TRG           EQU         (0x00000002);  /*!< TIM1 TRG Interrupt */

SYSCFG_ITLINE13_SR_TIM1_UPD           EQU         (0x00000004);  /*!< TIM1 UPD Interrupt */

SYSCFG_ITLINE13_SR_TIM1_BRK           EQU         (0x00000008);  /*!< TIM1 BRK Interrupt */

SYSCFG_ITLINE14_SR_TIM1_CC            EQU         (0x00000001);   /*!< TIM1 CC Interrupt */

SYSCFG_ITLINE15_SR_TIM2_GLB           EQU         (0x00000001);  /*!< TIM2 GLB Interrupt */

SYSCFG_ITLINE16_SR_TIM3_GLB           EQU         (0x00000001);  /*!< TIM3 GLB Interrupt */

SYSCFG_ITLINE17_SR_LPTIM1_GLB         EQU         (0x00000004); /*!< LPTIM1 -> exti[29] Interrupt */

SYSCFG_ITLINE18_SR_LPTIM2_GLB         EQU         (0x00000002); /*!< LPTIM2 -> exti[30] Interrupt */

SYSCFG_ITLINE19_SR_TIM14_GLB          EQU         (0x00000001); /*!< TIM14 GLB Interrupt */

SYSCFG_ITLINE21_SR_TIM16_GLB          EQU         (0x00000001); /*!< TIM16 GLB Interrupt */

SYSCFG_ITLINE22_SR_TIM17_GLB          EQU         (0x00000001); /*!< TIM17 GLB Interrupt */

SYSCFG_ITLINE23_SR_I2C1_GLB           EQU         (0x00000001);  /*!< I2C1 GLB Interrupt -> exti[23] */

SYSCFG_ITLINE24_SR_I2C2_GLB           EQU         (0x00000001);  /*!< I2C2 GLB Interrupt  -> exti[22]*/

SYSCFG_ITLINE25_SR_SPI1               EQU         (0x00000001);      /*!< SPI1 Interrupt */

SYSCFG_ITLINE26_SR_SPI2               EQU         (0x00000001);      /*!< SPI2  Interrupt */

SYSCFG_ITLINE27_SR_USART1_GLB         EQU         (0x00000001); /*!< USART1 GLB Interrupt -> exti[25] */

SYSCFG_ITLINE28_SR_USART2_GLB         EQU         (0x00000001); /*!< USART2 GLB Interrupt -> exti[26] */

SYSCFG_ITLINE29_SR_LPUART1_GLB        EQU         (0x00000004); /*!< LPUART1 GLB Interrupt -> exti[28] */


;/******************************************************************************/
;/*                                                                            */
;/*                                    TIM                                     */
;/*                                                                            */
;/******************************************************************************/

;/*******************  Bit definition for TIM_CR1 register  ********************/

TIM_CR1_CEN               EQU         (0x00000001);                              /*!<Counter enable */

TIM_CR1_UDIS              EQU         (0x00000002);                             /*!<Update disable */

TIM_CR1_URS               EQU         (0x00000004);                              /*!<Update request source */

TIM_CR1_OPM               EQU         (0x00000008);                              /*!<One pulse mode */

TIM_CR1_DIR               EQU         (0x00000010);                              /*!<Direction */


TIM_CR1_CMS               EQU         (0x00000060);                              /*!<CMS[1:0] bits (Center-aligned mode selection) */
TIM_CR1_CMS_0             EQU         (0x00000020);(0x1UL << TIM_CR1_CMS_Pos)                   /*!< 0x00000020 */
TIM_CR1_CMS_1             EQU         (0x00000040);(0x2UL << TIM_CR1_CMS_Pos)                   /*!< 0x00000040 */


TIM_CR1_ARPE              EQU         (0x00000080);                             /*!<Auto-reload preload enable */


TIM_CR1_CKD               EQU         (0x00000300);                              /*!<CKD[1:0] bits (clock division) */
TIM_CR1_CKD_0             EQU         (0x00000100);(0x1UL << TIM_CR1_CKD_Pos)                   /*!< 0x00000100 */
TIM_CR1_CKD_1             EQU         (0x00000200);(0x2UL << TIM_CR1_CKD_Pos)                   /*!< 0x00000200 */


TIM_CR1_UIFREMAP          EQU         (0x00000800);                         /*!<Update interrupt flag remap */

;/*******************  Bit definition for TIM_CR2 register  ********************/

TIM_CR2_CCPC              EQU         (0x00000001);                               /*!<Capture/Compare Preloaded Control */

TIM_CR2_CCUS              EQU         (0x00000004);                               /*!<Capture/Compare Control Update Selection */

TIM_CR2_CCDS              EQU         (0x00000008);                               /*!<Capture/Compare DMA Selection */

TIM_CR2_MMS               EQU         (0x00000070);                                /*!<MMS[2:0] bits (Master Mode Selection) */
TIM_CR2_MMS_0             EQU         (0x00000010);  (0x1UL << TIM_CR2_MMS_Pos)                   /*!< 0x00000010 */
TIM_CR2_MMS_1             EQU         (0x00000020);  (0x2UL << TIM_CR2_MMS_Pos)                   /*!< 0x00000020 */
TIM_CR2_MMS_2             EQU         (0x00000040);  (0x4UL << TIM_CR2_MMS_Pos)                   /*!< 0x00000040 */

TIM_CR2_TI1S              EQU         (0x00000080);                               /*!<TI1 Selection */

TIM_CR2_OIS1              EQU         (0x00000100);                               /*!<Output Idle state 1 (OC1 output) */

TIM_CR2_OIS1N             EQU         (0x00000200);                              /*!<Output Idle state 1 (OC1N output) */

TIM_CR2_OIS2              EQU         (0x00000400);                               /*!<Output Idle state 2 (OC2 output) */

TIM_CR2_OIS2N             EQU         (0x00000800);                              /*!<Output Idle state 2 (OC2N output) */

TIM_CR2_OIS3              EQU         (0x00001000);                               /*!<Output Idle state 3 (OC3 output) */

TIM_CR2_OIS3N             EQU         (0x00002000);                              /*!<Output Idle state 3 (OC3N output) */

TIM_CR2_OIS4              EQU         (0x00004000);                               /*!<Output Idle state 4 (OC4 output) */

TIM_CR2_OIS5              EQU         (0x00010000);                               /*!<Output Idle state 5 (OC5 output) */

TIM_CR2_OIS6              EQU         (0x00040000);                               /*!<Output Idle state 6 (OC6 output) */


TIM_CR2_MMS2              EQU         (0x00F00000);                               /*!<MMS[2:0] bits (Master Mode Selection) */
TIM_CR2_MMS2_0            EQU         (0x00100000);  (0x1UL << TIM_CR2_MMS2_Pos)                  /*!< 0x00100000 */
TIM_CR2_MMS2_1            EQU         (0x00200000);  (0x2UL << TIM_CR2_MMS2_Pos)                  /*!< 0x00200000 */
TIM_CR2_MMS2_2            EQU         (0x00400000);  (0x4UL << TIM_CR2_MMS2_Pos)                  /*!< 0x00400000 */
TIM_CR2_MMS2_3            EQU         (0x00800000);  (0x8UL << TIM_CR2_MMS2_Pos)                  /*!< 0x00800000 */

;/*******************  Bit definition for TIM_SMCR register  *******************/

TIM_SMCR_SMS              EQU         (0x00010007);                             /*!<SMS[2:0] bits (Slave mode selection) */
TIM_SMCR_SMS_0            EQU         (0x00000001); (0x00001UL << TIM_SMCR_SMS_Pos)              /*!< 0x00000001 */
TIM_SMCR_SMS_1            EQU         (0x00000002); (0x00002UL << TIM_SMCR_SMS_Pos)              /*!< 0x00000002 */
TIM_SMCR_SMS_2            EQU         (0x00000004); (0x00004UL << TIM_SMCR_SMS_Pos)              /*!< 0x00000004 */
TIM_SMCR_SMS_3            EQU         (0x00010000); (0x10000UL << TIM_SMCR_SMS_Pos)              /*!< 0x00010000 */


TIM_SMCR_OCCS             EQU         (0x00000008);                            /*!< OCREF clear selection */


TIM_SMCR_TS               EQU         (0x00300070);                   /*!<TS[2:0] bits (Trigger selection) */
TIM_SMCR_TS_0             EQU         (0x00000010);(0x00001UL << TIM_SMCR_TS_Pos)               /*!< 0x00000010 */
TIM_SMCR_TS_1             EQU         (0x00000020);(0x00002UL << TIM_SMCR_TS_Pos)               /*!< 0x00000020 */
TIM_SMCR_TS_2             EQU         (0x00000040);(0x00004UL << TIM_SMCR_TS_Pos)               /*!< 0x00000040 */
TIM_SMCR_TS_3             EQU         (0x00100000);(0x10000UL << TIM_SMCR_TS_Pos)               /*!< 0x00100000 */
TIM_SMCR_TS_4             EQU         (0x00200000);(0x20000UL << TIM_SMCR_TS_Pos)               /*!< 0x00200000 */


TIM_SMCR_MSM              EQU         (0x00000080);                             /*!<Master/slave mode */


TIM_SMCR_ETF              EQU         (0x00000F00);TIM_SMCR_ETF_Msk                             /*!<ETF[3:0] bits (External trigger filter) */
TIM_SMCR_ETF_0            EQU         (0x00000100);(0x1UL << TIM_SMCR_ETF_Pos)                  /*!< 0x00000100 */
TIM_SMCR_ETF_1            EQU         (0x00000200);(0x2UL << TIM_SMCR_ETF_Pos)                  /*!< 0x00000200 */
TIM_SMCR_ETF_2            EQU         (0x00000400);(0x4UL << TIM_SMCR_ETF_Pos)                  /*!< 0x00000400 */
TIM_SMCR_ETF_3            EQU         (0x00000800);(0x8UL << TIM_SMCR_ETF_Pos)                  /*!< 0x00000800 */


TIM_SMCR_ETPS             EQU         (0x00003000);                            /*!<ETPS[1:0] bits (External trigger prescaler) */
TIM_SMCR_ETPS_0           EQU         (0x00001000);(0x1UL << TIM_SMCR_ETPS_Pos)                 /*!< 0x00001000 */
TIM_SMCR_ETPS_1           EQU         (0x00002000);(0x2UL << TIM_SMCR_ETPS_Pos)                 /*!< 0x00002000 */


TIM_SMCR_ECE              EQU         (0x00004000);                             /*!<External clock enable */

TIM_SMCR_ETP              EQU         (0x00008000);                             /*!<External trigger polarity */

;/*******************  Bit definition for TIM_DIER register  *******************/

TIM_DIER_UIE              EQU         (0x00000001);                             /*!<Update interrupt enable */


TIM_DIER_CC1IE            EQU         (0x00000002);                           /*!<Capture/Compare 1 interrupt enable */


TIM_DIER_CC2IE            EQU         (0x00000004);                           /*!<Capture/Compare 2 interrupt enable */


TIM_DIER_CC3IE            EQU         (0x00000008);                           /*!<Capture/Compare 3 interrupt enable */


TIM_DIER_CC4IE            EQU         (0x00000010);                           /*!<Capture/Compare 4 interrupt enable */


TIM_DIER_COMIE            EQU         (0x00000020);                           /*!<COM interrupt enable */


TIM_DIER_TIE              EQU         (0x00000040);                             /*!<Trigger interrupt enable */


TIM_DIER_BIE              EQU         (0x00000080);                             /*!<Break interrupt enable */


TIM_DIER_UDE              EQU         (0x00000100);                             /*!<Update DMA request enable */


TIM_DIER_CC1DE            EQU         (0x00000200);                           /*!<Capture/Compare 1 DMA request enable */


TIM_DIER_CC2DE            EQU         (0x00000400);                           /*!<Capture/Compare 2 DMA request enable */


TIM_DIER_CC3DE            EQU         (0x00000800);                           /*!<Capture/Compare 3 DMA request enable */


TIM_DIER_CC4DE            EQU         (0x00001000);                           /*!<Capture/Compare 4 DMA request enable */


TIM_DIER_COMDE            EQU         (0x00002000);                           /*!<COM DMA request enable */


TIM_DIER_TDE              EQU         (0x00004000);                             /*!<Trigger DMA request enable */

;/********************  Bit definition for TIM_SR register  ********************/


TIM_SR_UIF                         EQU         (0x00000001);                                             TIM_SR_UIF_Msk                               /*!<Update interrupt Flag */


TIM_SR_CC1IF                       EQU         (0x00000002);                                             TIM_SR_CC1IF_Msk                             /*!<Capture/Compare 1 interrupt Flag */


TIM_SR_CC2IF                       EQU         (0x00000004);                                             TIM_SR_CC2IF_Msk                             /*!<Capture/Compare 2 interrupt Flag */


TIM_SR_CC3IF                       EQU         (0x00000008);                                             TIM_SR_CC3IF_Msk                             /*!<Capture/Compare 3 interrupt Flag */


TIM_SR_CC4IF                       EQU         (0x00000010);                                             TIM_SR_CC4IF_Msk                             /*!<Capture/Compare 4 interrupt Flag */


TIM_SR_COMIF                       EQU         (0x00000020);                                             TIM_SR_COMIF_Msk                             /*!<COM interrupt Flag */


TIM_SR_TIF                         EQU         (0x00000040);                                             TIM_SR_TIF_Msk                               /*!<Trigger interrupt Flag */


TIM_SR_BIF                         EQU         (0x00000080);                                             TIM_SR_BIF_Msk                               /*!<Break interrupt Flag */


TIM_SR_B2IF                        EQU         (0x00000100);                                             TIM_SR_B2IF_Msk                              /*!<Break 2 interrupt Flag */


TIM_SR_CC1OF                       EQU         (0x00000200);                                             TIM_SR_CC1OF_Msk                             /*!<Capture/Compare 1 Overcapture Flag */


TIM_SR_CC2OF                       EQU         (0x00000400);                                             TIM_SR_CC2OF_Msk                             /*!<Capture/Compare 2 Overcapture Flag */


TIM_SR_CC3OF                       EQU         (0x00000800);                                             TIM_SR_CC3OF_Msk                             /*!<Capture/Compare 3 Overcapture Flag */


TIM_SR_CC4OF                       EQU         (0x00001000);                                             TIM_SR_CC4OF_Msk                             /*!<Capture/Compare 4 Overcapture Flag */


TIM_SR_SBIF                        EQU         (0x00002000);                                             TIM_SR_SBIF_Msk                              /*!<System Break interrupt Flag */


TIM_SR_CC5IF                       EQU         (0x00010000);                                             TIM_SR_CC5IF_Msk                             /*!<Capture/Compare 5 interrupt Flag */


TIM_SR_CC6IF                       EQU         (0x00020000);                  							 TIM_SR_CC6IF_Msk                             /*!<Capture/Compare 6 interrupt Flag */


;/*******************  Bit definition for TIM_EGR register  ********************/

TIM_EGR_UG                EQU         (0x00000001); TIM_EGR_UG_Msk                               /*!<Update Generation */


TIM_EGR_CC1G              EQU         (0x00000002); TIM_EGR_CC1G_Msk                             /*!<Capture/Compare 1 Generation */


TIM_EGR_CC2G              EQU         (0x00000004); TIM_EGR_CC2G_Msk                             /*!<Capture/Compare 2 Generation */


TIM_EGR_CC3G              EQU         (0x00000008); TIM_EGR_CC3G_Msk                             /*!<Capture/Compare 3 Generation */


TIM_EGR_CC4G              EQU         (0x00000010); TIM_EGR_CC4G_Msk                             /*!<Capture/Compare 4 Generation */


TIM_EGR_COMG              EQU         (0x00000020); TIM_EGR_COMG_Msk                             /*!<Capture/Compare Control Update Generation */


TIM_EGR_TG                EQU         (0x00000040); TIM_EGR_TG_Msk                               /*!<Trigger Generation */


TIM_EGR_BG                EQU         (0x00000080); TIM_EGR_BG_Msk                               /*!<Break Generation */


TIM_EGR_B2G               EQU         (0x00000100); TIM_EGR_B2G_Msk                              /*!<Break 2 Generation */


;/******************  Bit definition for TIM_CCMR1 register  *******************/

TIM_CCMR1_CC1S            EQU         (0x00000003);TIM_CCMR1_CC1S_Msk                           /*!<CC1S[1:0] bits (Capture/Compare 1 Selection) */
TIM_CCMR1_CC1S_0          EQU         (0x00000001);(0x1UL << TIM_CCMR1_CC1S_Pos)                /*!< 0x00000001 */
TIM_CCMR1_CC1S_1          EQU         (0x00000002);(0x2UL << TIM_CCMR1_CC1S_Pos)                /*!< 0x00000002 */


TIM_CCMR1_OC1FE           EQU         (0x00000004);TIM_CCMR1_OC1FE_Msk                          /*!<Output Compare 1 Fast enable */

TIM_CCMR1_OC1PE           EQU         (0x00000008);TIM_CCMR1_OC1PE_Msk                          /*!<Output Compare 1 Preload enable */


TIM_CCMR1_OC1M            EQU         (0x00010070);TIM_CCMR1_OC1M_Msk                           /*!<OC1M[2:0] bits (Output Compare 1 Mode) */
TIM_CCMR1_OC1M_0          EQU         (0x00000010);(0x0001UL << TIM_CCMR1_OC1M_Pos)             /*!< 0x00000010 */
TIM_CCMR1_OC1M_1          EQU         (0x00000020);(0x0002UL << TIM_CCMR1_OC1M_Pos)             /*!< 0x00000020 */
TIM_CCMR1_OC1M_2          EQU         (0x00000040);(0x0004UL << TIM_CCMR1_OC1M_Pos)             /*!< 0x00000040 */
TIM_CCMR1_OC1M_3          EQU         (0x00010000);(0x1000UL << TIM_CCMR1_OC1M_Pos)             /*!< 0x00010000 */


TIM_CCMR1_OC1CE           EQU         (0x00000080);TIM_CCMR1_OC1CE_Msk                          /*!<Output Compare 1 Clear Enable */


TIM_CCMR1_CC2S            EQU         (0x00000300);TIM_CCMR1_CC2S_Msk                           /*!<CC2S[1:0] bits (Capture/Compare 2 Selection) */
TIM_CCMR1_CC2S_0          EQU 		  (0x00000100);(0x1UL << TIM_CCMR1_CC2S_Pos)                /*!< 0x00000100 */
TIM_CCMR1_CC2S_1          EQU 		  (0x00000200); (0x2UL << TIM_CCMR1_CC2S_Pos)                /*!< 0x00000200 */


TIM_CCMR1_OC2FE           EQU         (0x00000400);TIM_CCMR1_OC2FE_Msk                          /*!<Output Compare 2 Fast enable */

TIM_CCMR1_OC2PE           EQU         (0x00000800);TIM_CCMR1_OC2PE_Msk                          /*!<Output Compare 2 Preload enable */


TIM_CCMR1_OC2M            EQU         (0x01007000);TIM_CCMR1_OC2M_Msk                           /*!<OC2M[2:0] bits (Output Compare 2 Mode) */
TIM_CCMR1_OC2M_0          EQU         (0x00001000);(0x0001UL << TIM_CCMR1_OC2M_Pos)             /*!< 0x00001000 */
TIM_CCMR1_OC2M_1          EQU         (0x00002000);(0x0002UL << TIM_CCMR1_OC2M_Pos)             /*!< 0x00002000 */
TIM_CCMR1_OC2M_2          EQU         (0x00004000);(0x0004UL << TIM_CCMR1_OC2M_Pos)             /*!< 0x00004000 */
TIM_CCMR1_OC2M_3          EQU         (0x01000000);(0x1000UL << TIM_CCMR1_OC2M_Pos)             /*!< 0x01000000 */


TIM_CCMR1_OC2CE           EQU         (0x00008000);TIM_CCMR1_OC2CE_Msk                          /*!<Output Compare 2 Clear Enable */

;/*----------------------------------------------------------------------------*/

TIM_CCMR1_IC1PSC          EQU         (0x0000000C);                         /*!<IC1PSC[1:0] bits (Input Capture 1 Prescaler) */
TIM_CCMR1_IC1PSC_0        EQU         (0x00000004);(0x1UL << TIM_CCMR1_IC1PSC_Pos)              /*!< 0x00000004 */
TIM_CCMR1_IC1PSC_1        EQU         (0x00000008);(0x2UL << TIM_CCMR1_IC1PSC_Pos)              /*!< 0x00000008 */


TIM_CCMR1_IC1F            EQU         (0x000000F0);TIM_CCMR1_IC1F_Msk                           /*!<IC1F[3:0] bits (Input Capture 1 Filter) */
TIM_CCMR1_IC1F_0          EQU         (0x00000010);(0x1UL << TIM_CCMR1_IC1F_Pos)                /*!< 0x00000010 */
TIM_CCMR1_IC1F_1          EQU         (0x00000020);(0x2UL << TIM_CCMR1_IC1F_Pos)                /*!< 0x00000020 */
TIM_CCMR1_IC1F_2          EQU         (0x00000040);(0x4UL << TIM_CCMR1_IC1F_Pos)                /*!< 0x00000040 */
TIM_CCMR1_IC1F_3          EQU         (0x00000080);(0x8UL << TIM_CCMR1_IC1F_Pos)                /*!< 0x00000080 */


TIM_CCMR1_IC2PSC          EQU         (0x00000C00);TIM_CCMR1_IC2PSC_Msk                         /*!<IC2PSC[1:0] bits (Input Capture 2 Prescaler) */
TIM_CCMR1_IC2PSC_0        EQU         (0x00000400);(0x1UL << TIM_CCMR1_IC2PSC_Pos)              /*!< 0x00000400 */
TIM_CCMR1_IC2PSC_1        EQU         (0x00000800);(0x2UL << TIM_CCMR1_IC2PSC_Pos)              /*!< 0x00000800 */


TIM_CCMR1_IC2F            EQU         (0x0000F000);TIM_CCMR1_IC2F_Msk                           /*!<IC2F[3:0] bits (Input Capture 2 Filter) */
TIM_CCMR1_IC2F_0          EQU         (0x00001000);(0x1UL << TIM_CCMR1_IC2F_Pos)                /*!< 0x00001000 */
TIM_CCMR1_IC2F_1          EQU         (0x00002000);(0x2UL << TIM_CCMR1_IC2F_Pos)                /*!< 0x00002000 */
TIM_CCMR1_IC2F_2          EQU         (0x00004000);(0x4UL << TIM_CCMR1_IC2F_Pos)                /*!< 0x00004000 */
TIM_CCMR1_IC2F_3          EQU         (0x00008000);(0x8UL << TIM_CCMR1_IC2F_Pos)                /*!< 0x00008000 */

;/******************  Bit definition for TIM_CCMR2 register  *******************/

TIM_CCMR2_CC3S            EQU         (0x00000003);      TIM_CCMR2_CC3S_Msk                           /*!<CC3S[1:0] bits (Capture/Compare 3 Selection) */
TIM_CCMR2_CC3S_0          EQU         (0x00000001);      (0x1UL << TIM_CCMR2_CC3S_Pos)                /*!< 0x00000001 */
TIM_CCMR2_CC3S_1          EQU         (0x00000002);      (0x2UL << TIM_CCMR2_CC3S_Pos)                /*!< 0x00000002 */
						                            
						                            
TIM_CCMR2_OC3FE           EQU         (0x00000004);      TIM_CCMR2_OC3FE_Msk                          /*!<Output Compare 3 Fast enable */
						                            
TIM_CCMR2_OC3PE           EQU         (0x00000008);      TIM_CCMR2_OC3PE_Msk                          /*!<Output Compare 3 Preload enable */
						                            
						                            
TIM_CCMR2_OC3M            EQU         (0x00010070);      TIM_CCMR2_OC3M_Msk                           /*!<OC3M[2:0] bits (Output Compare 3 Mode) */
TIM_CCMR2_OC3M_0          EQU         (0x00000010);      (0x0001UL << TIM_CCMR2_OC3M_Pos)             /*!< 0x00000010 */
TIM_CCMR2_OC3M_1          EQU         (0x00000020);      (0x0002UL << TIM_CCMR2_OC3M_Pos)             /*!< 0x00000020 */
TIM_CCMR2_OC3M_2          EQU         (0x00000040);      (0x0004UL << TIM_CCMR2_OC3M_Pos)             /*!< 0x00000040 */
TIM_CCMR2_OC3M_3          EQU         (0x00010000);      (0x1000UL << TIM_CCMR2_OC3M_Pos)             /*!< 0x00010000 */
						                            
						                            
TIM_CCMR2_OC3CE           EQU         (0x00000080);      TIM_CCMR2_OC3CE_Msk                          /*!<Output Compare 3 Clear Enable */
						                            
						                            
TIM_CCMR2_CC4S            EQU         (0x00000300);      TIM_CCMR2_CC4S_Msk                           /*!<CC4S[1:0] bits (Capture/Compare 4 Selection) */
TIM_CCMR2_CC4S_0          EQU 		  (0x00000100);      (0x1UL << TIM_CCMR2_CC4S_Pos)                /*!< 0x00000100 */
TIM_CCMR2_CC4S_1          EQU 		  (0x00000200);      (0x2UL << TIM_CCMR2_CC4S_Pos)                /*!< 0x00000200 */
						                            
						                            
TIM_CCMR2_OC4FE           EQU         (0x00000400);      TIM_CCMR2_OC4FE_Msk                          /*!<Output Compare 4 Fast enable */
						                            
TIM_CCMR2_OC4PE           EQU         (0x00000800);      TIM_CCMR2_OC4PE_Msk                          /*!<Output Compare 4 Preload enable */
						                                            
						                                            
TIM_CCMR2_OC4M            EQU         (0x01007000);      TIM_CCMR2_OC4M_Msk                           /*!<OC4M[2:0] bits (Output Compare 4 Mode) */
TIM_CCMR2_OC4M_0          EQU         (0x00001000);      (0x0001UL << TIM_CCMR2_OC4M_Pos)             /*!< 0x00001000 */
TIM_CCMR2_OC4M_1          EQU         (0x00002000);      (0x0002UL << TIM_CCMR2_OC4M_Pos)             /*!< 0x00002000 */
TIM_CCMR2_OC4M_2          EQU         (0x00004000);      (0x0004UL << TIM_CCMR2_OC4M_Pos)             /*!< 0x00004000 */
TIM_CCMR2_OC4M_3          EQU         (0x01000000);      (0x1000UL << TIM_CCMR2_OC4M_Pos)             /*!< 0x01000000 */
                          
                          
TIM_CCMR2_OC4CE           EQU         (0x00008000);TIM_CCMR2_OC4CE_Msk                          /*!<Output Compare 4 Clear Enable */

;/*----------------------------------------------------------------------------*/

TIM_CCMR2_IC3PSC          EQU         (0x0000000C);TIM_CCMR2_IC3PSC_Msk                         /*!<IC3PSC[1:0] bits (Input Capture 3 Prescaler) */
TIM_CCMR2_IC3PSC_0        EQU         (0x00000004);(0x1UL << TIM_CCMR2_IC3PSC_Pos)              /*!< 0x00000004 */
TIM_CCMR2_IC3PSC_1        EQU         (0x00000008);(0x2UL << TIM_CCMR2_IC3PSC_Pos)              /*!< 0x00000008 */
                          
                          
TIM_CCMR2_IC3F            EQU         (0x000000F0);TIM_CCMR2_IC3F_Msk                           /*!<IC3F[3:0] bits (Input Capture 3 Filter) */
TIM_CCMR2_IC3F_0          EQU         (0x00000010);(0x1UL << TIM_CCMR2_IC3F_Pos)                /*!< 0x00000010 */
TIM_CCMR2_IC3F_1          EQU         (0x00000020);(0x2UL << TIM_CCMR2_IC3F_Pos)                /*!< 0x00000020 */
TIM_CCMR2_IC3F_2          EQU         (0x00000040);(0x4UL << TIM_CCMR2_IC3F_Pos)                /*!< 0x00000040 */
TIM_CCMR2_IC3F_3          EQU         (0x00000080);(0x8UL << TIM_CCMR2_IC3F_Pos)                /*!< 0x00000080 */
                          
                          
TIM_CCMR2_IC4PSC          EQU         (0x00000C00);TIM_CCMR2_IC4PSC_Msk                         /*!<IC4PSC[1:0] bits (Input Capture 4 Prescaler) */
TIM_CCMR2_IC4PSC_0        EQU         (0x00000400);(0x1UL << TIM_CCMR2_IC4PSC_Pos)              /*!< 0x00000400 */
TIM_CCMR2_IC4PSC_1        EQU         (0x00000800);(0x2UL << TIM_CCMR2_IC4PSC_Pos)              /*!< 0x00000800 */
                          
                          
TIM_CCMR2_IC4F            EQU         (0x0000F000);TIM_CCMR2_IC4F_Msk                           /*!<IC4F[3:0] bits (Input Capture 4 Filter) */
TIM_CCMR2_IC4F_0          EQU         (0x00001000);(0x1UL << TIM_CCMR2_IC4F_Pos)                /*!< 0x00001000 */
TIM_CCMR2_IC4F_1          EQU         (0x00002000);(0x2UL << TIM_CCMR2_IC4F_Pos)                /*!< 0x00002000 */
TIM_CCMR2_IC4F_2          EQU         (0x00004000);(0x4UL << TIM_CCMR2_IC4F_Pos)                /*!< 0x00004000 */
TIM_CCMR2_IC4F_3          EQU         (0x00008000);(0x8UL << TIM_CCMR2_IC4F_Pos)                /*!< 0x00008000 */

;/******************  Bit definition for TIM_CCMR3 register  *******************/

TIM_CCMR3_OC5FE           EQU         (0x00004000);                          /*!<Output Compare 5 Fast enable */

TIM_CCMR3_OC5PE           EQU         (0x00008000);                          /*!<Output Compare 5 Preload enable */


TIM_CCMR3_OC5M            EQU         (0x01007000);TIM_CCMR3_OC5M_Msk                           /*!<OC5M[3:0] bits (Output Compare 5 Mode) */
TIM_CCMR3_OC5M_0          EQU         (0x00001000);(0x0001UL << TIM_CCMR3_OC5M_Pos)             /*!< 0x00000010 */
TIM_CCMR3_OC5M_1          EQU         (0x00002000);(0x0002UL << TIM_CCMR3_OC5M_Pos)             /*!< 0x00000020 */
TIM_CCMR3_OC5M_2          EQU         (0x00004000);(0x0004UL << TIM_CCMR3_OC5M_Pos)             /*!< 0x00000040 */
TIM_CCMR3_OC5M_3          EQU         (0x01000000);(0x1000UL << TIM_CCMR3_OC5M_Pos)             /*!< 0x00010000 */


TIM_CCMR3_OC5CE           EQU         (0x00000080);                          /*!<Output Compare 5 Clear Enable */


TIM_CCMR3_OC6FE           EQU         (0x00000400);                          /*!<Output Compare 6 Fast enable */

TIM_CCMR3_OC6PE           EQU         (0x00000800);                          /*!<Output Compare 6 Preload enable */


TIM_CCMR3_OC6M            EQU         (0x01007000);             /*!<OC6M[3:0] bits (Output Compare 6 Mode) */
TIM_CCMR3_OC6M_0          EQU         (0x00001000);             /*!< 0x00001000 */
TIM_CCMR3_OC6M_1          EQU         (0x00002000);             /*!< 0x00002000 */
TIM_CCMR3_OC6M_2          EQU         (0x00004000);             /*!< 0x00004000 */
TIM_CCMR3_OC6M_3          EQU         (0x01000000);             /*!< 0x01000000 */


TIM_CCMR3_OC6CE           EQU         (0x00008000);                          /*!<Output Compare 6 Clear Enable */

;/*******************  Bit definition for TIM_CCER register  *******************/

TIM_CCER_CC1E             EQU         (0x00000001);                             /*!<Capture/Compare 1 output enable */
TIM_CCER_CC1P             EQU         (0x00000002);                             /*!<Capture/Compare 1 output Polarity */
TIM_CCER_CC1NE            EQU         (0x00000004);                            /*!<Capture/Compare 1 Complementary output enable */
TIM_CCER_CC1NP            EQU         (0x00000008);                            /*!<Capture/Compare 1 Complementary output Polarity */
TIM_CCER_CC2E             EQU         (0x00000010);                             /*!<Capture/Compare 2 output enable */
TIM_CCER_CC2P             EQU         (0x00000020);                             /*!<Capture/Compare 2 output Polarity */
TIM_CCER_CC2NE            EQU         (0x00000040);                            /*!<Capture/Compare 2 Complementary output enable */
TIM_CCER_CC2NP            EQU         (0x00000080);                            /*!<Capture/Compare 2 Complementary output Polarity */
TIM_CCER_CC3E             EQU         (0x00000100);                             /*!<Capture/Compare 3 output enable */
TIM_CCER_CC3P             EQU         (0x00000200);                             /*!<Capture/Compare 3 output Polarity */
TIM_CCER_CC3NE            EQU         (0x00000400);                            /*!<Capture/Compare 3 Complementary output enable */
TIM_CCER_CC3NP            EQU         (0x00000800);                            /*!<Capture/Compare 3 Complementary output Polarity */
TIM_CCER_CC4E             EQU         (0x00001000);                             /*!<Capture/Compare 4 output enable */

TIM_CCER_CC4P             EQU         (0x00002000);                             /*!<Capture/Compare 4 output Polarity */

TIM_CCER_CC4NP            EQU         (0x00008000);                            /*!<Capture/Compare 4 Complementary output Polarity */

TIM_CCER_CC5E             EQU         (0x00010000);                             /*!<Capture/Compare 5 output enable */

TIM_CCER_CC5P             EQU         (0x00020000);                             /*!<Capture/Compare 5 output Polarity */

TIM_CCER_CC6E             EQU         (0x00100000);                             /*!<Capture/Compare 6 output enable */

TIM_CCER_CC6P             EQU         (0x00200000);                             /*!<Capture/Compare 6 output Polarity */

;/*******************  Bit definition for TIM_CNT register  ********************/

TIM_CNT_CNT               EQU         (0xFFFFFFFF);                              /*!<Counter Value */

TIM_CNT_UIFCPY            EQU         (0x80000000);                           /*!<Update interrupt flag copy (if UIFREMAP=1) */

;/*******************  Bit definition for TIM_PSC register  ********************/

TIM_PSC_PSC               EQU         (0x0000FFFF);                              /*!<Prescaler Value */

;/*******************  Bit definition for TIM_ARR register  ********************/

TIM_ARR_ARR               EQU         (0xFFFFFFFF);                               /*!<Actual auto-reload Value */

;/*******************  Bit definition for TIM_RCR register  ********************/

TIM_RCR_REP               EQU         (0x0000FFFF);                              /*!<Repetition Counter Value */

;/*******************  Bit definition for TIM_CCR1 register  *******************/

TIM_CCR1_CCR1             EQU         (0x0000FFFF);                            /*!<Capture/Compare 1 Value */

;/*******************  Bit definition for TIM_CCR2 register  *******************/

TIM_CCR2_CCR2             EQU         (0x0000FFFF);                            /*!<Capture/Compare 2 Value */

;/*******************  Bit definition for TIM_CCR3 register  *******************/

TIM_CCR3_CCR3             EQU         (0x0000FFFF);                            /*!<Capture/Compare 3 Value */

;/*******************  Bit definition for TIM_CCR4 register  *******************/

TIM_CCR4_CCR4             EQU         (0x0000FFFF);                            /*!<Capture/Compare 4 Value */

;/*******************  Bit definition for TIM_CCR5 register  *******************/

TIM_CCR5_CCR5             EQU         (0xFFFFFFFF);                            /*!<Capture/Compare 5 Value */

TIM_CCR5_GC5C1            EQU         (0x20000000);                           /*!<Group Channel 5 and Channel 1 */

TIM_CCR5_GC5C2            EQU         (0x40000000);                           /*!<Group Channel 5 and Channel 2 */

TIM_CCR5_GC5C3            EQU         (0x80000000);                           /*!<Group Channel 5 and Channel 3 */

;/*******************  Bit definition for TIM_CCR6 register  *******************/

TIM_CCR6_CCR6             EQU         (0x0000FFFF);                            /*!<Capture/Compare 6 Value */

;/*******************  Bit definition for TIM_BDTR register  *******************/

TIM_BDTR_DTG              EQU         (0x000000FF);                             /*!<DTG[0:7] bits (Dead-Time Generator set-up) */
TIM_BDTR_DTG_0            EQU         (0x00000001);(0x01UL << TIM_BDTR_DTG_Pos)                 /*!< 0x00000001 */
TIM_BDTR_DTG_1            EQU         (0x00000002);(0x02UL << TIM_BDTR_DTG_Pos)                 /*!< 0x00000002 */
TIM_BDTR_DTG_2            EQU         (0x00000004);(0x04UL << TIM_BDTR_DTG_Pos)                 /*!< 0x00000004 */
TIM_BDTR_DTG_3            EQU         (0x00000008);(0x08UL << TIM_BDTR_DTG_Pos)                 /*!< 0x00000008 */
TIM_BDTR_DTG_4            EQU         (0x00000010);(0x10UL << TIM_BDTR_DTG_Pos)                 /*!< 0x00000010 */
TIM_BDTR_DTG_5            EQU         (0x00000020);(0x20UL << TIM_BDTR_DTG_Pos)                 /*!< 0x00000020 */
TIM_BDTR_DTG_6            EQU         (0x00000040);(0x40UL << TIM_BDTR_DTG_Pos)                 /*!< 0x00000040 */
TIM_BDTR_DTG_7            EQU         (0x00000080);(0x80UL << TIM_BDTR_DTG_Pos)                 /*!< 0x00000080 */


TIM_BDTR_LOCK             EQU         (0x00000300);                            /*!<LOCK[1:0] bits (Lock Configuration) */
TIM_BDTR_LOCK_0           EQU         (0x00000100);(0x1UL << TIM_BDTR_LOCK_Pos)                 /*!< 0x00000100 */
TIM_BDTR_LOCK_1           EQU         (0x00000200);(0x2UL << TIM_BDTR_LOCK_Pos)                 /*!< 0x00000200 */


TIM_BDTR_OSSI              EQU         (0x00000400);TIM_BDTR_OSSI_Msk                            /*!<Off-State Selection for Idle mode */

TIM_BDTR_OSSR              EQU         (0x00000800);TIM_BDTR_OSSR_Msk                            /*!<Off-State Selection for Run mode */

TIM_BDTR_BKE               EQU         (0x00001000);TIM_BDTR_BKE_Msk                             /*!<Break enable for Break 1 */

TIM_BDTR_BKP               EQU         (0x00002000);TIM_BDTR_BKP_Msk                             /*!<Break Polarity for Break 1 */

TIM_BDTR_AOE               EQU         (0x00004000);TIM_BDTR_AOE_Msk                             /*!<Automatic Output enable */

TIM_BDTR_MOE               EQU         (0x00008000);TIM_BDTR_MOE_Msk                             /*!<Main Output enable */


TIM_BDTR_BKF               EQU         (0x000F0000);TIM_BDTR_BKF_Msk                             /*!<Break Filter for Break 1 */

TIM_BDTR_BK2F              EQU         (0x00F00000);TIM_BDTR_BK2F_Msk                            /*!<Break Filter for Break 2 */


TIM_BDTR_BK2E              EQU         (0x01000000);TIM_BDTR_BK2E_Msk                            /*!<Break enable for Break 2 */

TIM_BDTR_BK2P              EQU         (0x02000000);TIM_BDTR_BK2P_Msk                            /*!<Break Polarity for Break 2 */


TIM_BDTR_BKDSRM            EQU         (0x04000000);TIM_BDTR_BKDSRM_Msk                          /*!<Break disarming/re-arming */

TIM_BDTR_BK2DSRM           EQU         (0x08000000);TIM_BDTR_BK2DSRM_Msk                         /*!<Break2 disarming/re-arming */


TIM_BDTR_BKBID             EQU         (0x10000000);TIM_BDTR_BKBID_Msk                           /*!<Break BIDirectional */

TIM_BDTR_BK2BID            EQU         (0x20000000);TIM_BDTR_BK2BID_Msk                          /*!<Break2 BIDirectional */

;/*******************  Bit definition for TIM_DCR register  ********************/

TIM_DCR_DBA               EQU         (0x0000001F);                              /*!<DBA[4:0] bits (DMA Base Address) */
TIM_DCR_DBA_0             EQU         (0x00000001);(0x01UL << TIM_DCR_DBA_Pos)                  /*!< 0x00000001 */
TIM_DCR_DBA_1             EQU         (0x00000002);(0x02UL << TIM_DCR_DBA_Pos)                  /*!< 0x00000002 */
TIM_DCR_DBA_2             EQU         (0x00000004);(0x04UL << TIM_DCR_DBA_Pos)                  /*!< 0x00000004 */
TIM_DCR_DBA_3             EQU         (0x00000008);(0x08UL << TIM_DCR_DBA_Pos)                  /*!< 0x00000008 */
TIM_DCR_DBA_4             EQU         (0x00000010);(0x10UL << TIM_DCR_DBA_Pos)                  /*!< 0x00000010 */


TIM_DCR_DBL               EQU         (0x00001F00);TIM_DCR_DBL_Msk                              /*!<DBL[4:0] bits (DMA Burst Length) */
TIM_DCR_DBL_0             EQU         (0x00000100);(0x01UL << TIM_DCR_DBL_Pos)                  /*!< 0x00000100 */
TIM_DCR_DBL_1             EQU         (0x00000200);(0x02UL << TIM_DCR_DBL_Pos)                  /*!< 0x00000200 */
TIM_DCR_DBL_2             EQU         (0x00000400);(0x04UL << TIM_DCR_DBL_Pos)                  /*!< 0x00000400 */
TIM_DCR_DBL_3             EQU         (0x00000800);(0x08UL << TIM_DCR_DBL_Pos)                  /*!< 0x00000800 */
TIM_DCR_DBL_4             EQU         (0x00001000);(0x10UL << TIM_DCR_DBL_Pos)                  /*!< 0x00001000 */

;/*******************  Bit definition for TIM_DMAR register  *******************/

TIM_DMAR_DMAB             EQU         (0x0000FFFF);TIM_DMAR_DMAB_Msk                            /*!<DMA register for burst accesses */

;/*******************  Bit definition for TIM1_OR1 register  *******************/

TIM1_OR1_OCREF_CLR         EQU         (0x00000001);                      /*!<OCREF clear input selection */

;/*******************  Bit definition for TIM1_AF1 register  *******************/

TIM1_AF1_BKINE            EQU         (0x00000001);                           /*!<BRK BKIN input enable */


TIM1_AF1_BKCMP1E          EQU         (0x00000002);                         /*!<BRK COMP1 enable */


TIM1_AF1_BKCMP2E          EQU         (0x00000004);                         /*!<BRK COMP2 enable */


TIM1_AF1_BKINP            EQU         (0x00000200);                           /*!<BRK BKIN input polarity */


TIM1_AF1_BKCMP1P          EQU         (0x00000400);                         /*!<BRK COMP1 input polarity */


TIM1_AF1_BKCMP2P          EQU         (0x00000800);                         /*!<BRK COMP2 input polarity */


TIM1_AF1_ETRSEL           EQU         (0x0003C000);                          /*!<ETRSEL[3:0] bits (TIM1 ETR source selection) */
TIM1_AF1_ETRSEL_0         EQU         (0x00004000);(0x1UL << TIM1_AF1_ETRSEL_Pos)               /*!< 0x00004000 */
TIM1_AF1_ETRSEL_1         EQU         (0x00008000);(0x2UL << TIM1_AF1_ETRSEL_Pos)               /*!< 0x00008000 */
TIM1_AF1_ETRSEL_2         EQU         (0x00010000);(0x4UL << TIM1_AF1_ETRSEL_Pos)               /*!< 0x00010000 */
TIM1_AF1_ETRSEL_3         EQU         (0x00020000);(0x8UL << TIM1_AF1_ETRSEL_Pos)               /*!< 0x00020000 */

;/*******************  Bit definition for TIM1_AF2 register  *******************/

TIM1_AF2_BK2INE            EQU         (0x00000001);                                        TIM1_AF2_BK2INE_Msk                          /*!<BRK2 BKIN2 input enable */

TIM1_AF2_BK2CMP1E          EQU         (0x00000002);                                        TIM1_AF2_BK2CMP1E_Msk                        /*!<BRK2 COMP1 enable */

TIM1_AF2_BK2CMP2E          EQU         (0x00000004);                                        TIM1_AF2_BK2CMP2E_Msk                        /*!<BRK2 COMP2 enable */

TIM1_AF2_BK2INP            EQU         (0x00000200);                                        TIM1_AF2_BK2INP_Msk                          /*!<BRK2 BKIN2 input polarity */

TIM1_AF2_BK2CMP1P          EQU         (0x00000400);                                        TIM1_AF2_BK2CMP1P_Msk                        /*!<BRK2 COMP1 input polarity */

TIM1_AF2_BK2CMP2P          EQU         (0x00000800);                                        TIM1_AF2_BK2CMP2P_Msk                        /*!<BRK2 COMP2 input polarity */

;/*******************  Bit definition for TIM2_OR1 register  *******************/

TIM2_OR1_OCREF_CLR         EQU         (0x00000001);                       /*!<OCREF clear input selection */

;/*******************  Bit definition for TIM2_AF1 register  *******************/

TIM2_AF1_ETRSEL           EQU         (0x0003C000); TIM2_AF1_ETRSEL_Msk                          /*!<ETRSEL[3:0] bits (TIM2 ETR source selection) */
TIM2_AF1_ETRSEL_0         EQU         (0x00004000); (0x1UL << TIM2_AF1_ETRSEL_Pos)               /*!< 0x00004000 */
TIM2_AF1_ETRSEL_1         EQU         (0x00008000); (0x2UL << TIM2_AF1_ETRSEL_Pos)               /*!< 0x00008000 */
TIM2_AF1_ETRSEL_2         EQU         (0x00010000); (0x4UL << TIM2_AF1_ETRSEL_Pos)               /*!< 0x00010000 */
TIM2_AF1_ETRSEL_3         EQU         (0x00020000); (0x8UL << TIM2_AF1_ETRSEL_Pos)               /*!< 0x00020000 */

;/*******************  Bit definition for TIM3_OR1 register  *******************/

TIM3_OR1_OCREF_CLR         EQU         (0x00000001);                      /*!<OCREF clear input selection */

;/*******************  Bit definition for TIM3_AF1 register  *******************/

TIM3_AF1_ETRSEL           EQU         (0x0003C000); TIM3_AF1_ETRSEL_Msk                          /*!<ETRSEL[3:0] bits (TIM3 ETR source selection) */
TIM3_AF1_ETRSEL_0         EQU         (0x00004000); (0x1UL << TIM3_AF1_ETRSEL_Pos)               /*!< 0x00004000 */
TIM3_AF1_ETRSEL_1         EQU         (0x00008000); (0x2UL << TIM3_AF1_ETRSEL_Pos)               /*!< 0x00008000 */
TIM3_AF1_ETRSEL_2         EQU         (0x00010000); (0x4UL << TIM3_AF1_ETRSEL_Pos)               /*!< 0x00010000 */
TIM3_AF1_ETRSEL_3         EQU         (0x00020000); (0x8UL << TIM3_AF1_ETRSEL_Pos)               /*!< 0x00020000 */

;/*******************  Bit definition for TIM14_AF1 register  *******************/

TIM14_AF1_ETRSEL          EQU         (0x0003C000);TIM14_AF1_ETRSEL_Msk                         /*!<ETRSEL[3:0] bits (TIM14 ETR source selection) */
TIM14_AF1_ETRSEL_0        EQU         (0x00004000);(0x1UL << TIM14_AF1_ETRSEL_Pos)              /*!< 0x00004000 */
TIM14_AF1_ETRSEL_1        EQU         (0x00008000);(0x2UL << TIM14_AF1_ETRSEL_Pos)              /*!< 0x00008000 */
TIM14_AF1_ETRSEL_2        EQU         (0x00010000);(0x4UL << TIM14_AF1_ETRSEL_Pos)              /*!< 0x00010000 */
TIM14_AF1_ETRSEL_3        EQU         (0x00020000);(0x8UL << TIM14_AF1_ETRSEL_Pos)              /*!< 0x00020000 */


;/*******************  Bit definition for TIM16_AF1 register  ******************/

TIM16_AF1_BKINE          EQU         (0x00000001);TIM16_AF1_BKINE_Msk                           /*!<BRK BKIN input enable */


TIM16_AF1_BKCMP1E        EQU         (0x00000002);TIM16_AF1_BKCMP1E_Msk                         /*!<BRK COMP1 enable */


TIM16_AF1_BKCMP2E        EQU         (0x00000004);TIM16_AF1_BKCMP2E_Msk                         /*!<BRK COMP2 enable */


TIM16_AF1_BKINP          EQU         (0x00000200);TIM16_AF1_BKINP_Msk                           /*!<BRK BKIN input polarity */


TIM16_AF1_BKCMP1P        EQU         (0x00000400);TIM16_AF1_BKCMP1P_Msk                         /*!<BRK COMP1 input polarity */


TIM16_AF1_BKCMP2P        EQU         (0x00000800);TIM16_AF1_BKCMP2P_Msk                         /*!<BRK COMP2 input polarity */

;/*******************  Bit definition for TIM17_AF1 register  ******************/

TIM17_AF1_BKINE         EQU         (0x00000001); TIM17_AF1_BKINE_Msk                           /*!<BRK BKIN input enable */


TIM17_AF1_BKCMP1E       EQU         (0x00000002); TIM17_AF1_BKCMP1E_Msk                         /*!<BRK COMP1 enable */


TIM17_AF1_BKCMP2E       EQU         (0x00000004); TIM17_AF1_BKCMP2E_Msk                         /*!<BRK COMP2 enable */


TIM17_AF1_BKINP         EQU         (0x00000200); TIM17_AF1_BKINP_Msk                           /*!<BRK BKIN input polarity */


TIM17_AF1_BKCMP1P       EQU         (0x00000400); TIM17_AF1_BKCMP1P_Msk                         /*!<BRK COMP1 input polarity */

TIM17_AF1_BKCMP2P       EQU         (0x00000800); TIM17_AF1_BKCMP2P_Msk                         /*!<BRK COMP2 input polarity */

;/*******************  Bit definition for TIM_TISEL register  *********************/

TIM_TISEL_TI1SEL          EQU         (0x0000000F); TIM_TISEL_TI1SEL_Msk                         /*!<TI1SEL[3:0] bits (TIM TI1 SEL)*/
TIM_TISEL_TI1SEL_0        EQU         (0x00000001); (0x1UL << TIM_TISEL_TI1SEL_Pos)              /*!< 0x00000001 */
TIM_TISEL_TI1SEL_1        EQU         (0x00000002); (0x2UL << TIM_TISEL_TI1SEL_Pos)              /*!< 0x00000002 */
TIM_TISEL_TI1SEL_2        EQU         (0x00000004); (0x4UL << TIM_TISEL_TI1SEL_Pos)              /*!< 0x00000004 */
TIM_TISEL_TI1SEL_3        EQU         (0x00000008); (0x8UL << TIM_TISEL_TI1SEL_Pos)              /*!< 0x00000008 */


TIM_TISEL_TI2SEL          EQU         (0x00000F00);TIM_TISEL_TI2SEL_Msk                         /*!<TI2SEL[3:0] bits (TIM TI2 SEL)*/
TIM_TISEL_TI2SEL_0        EQU         (0x00000100);(0x1UL << TIM_TISEL_TI2SEL_Pos)              /*!< 0x00000100 */
TIM_TISEL_TI2SEL_1        EQU         (0x00000200);(0x2UL << TIM_TISEL_TI2SEL_Pos)              /*!< 0x00000200 */
TIM_TISEL_TI2SEL_2        EQU         (0x00000400);(0x4UL << TIM_TISEL_TI2SEL_Pos)              /*!< 0x00000400 */
TIM_TISEL_TI2SEL_3        EQU         (0x00000800);(0x8UL << TIM_TISEL_TI2SEL_Pos)              /*!< 0x00000800 */


TIM_TISEL_TI3SEL          EQU         (0x000F0000);TIM_TISEL_TI3SEL_Msk                         /*!<TI3SEL[3:0] bits (TIM TI3 SEL)*/
TIM_TISEL_TI3SEL_0        EQU         (0x00010000);(0x1UL << TIM_TISEL_TI3SEL_Pos)              /*!< 0x00010000 */
TIM_TISEL_TI3SEL_1        EQU         (0x00020000);(0x2UL << TIM_TISEL_TI3SEL_Pos)              /*!< 0x00020000 */
TIM_TISEL_TI3SEL_2        EQU         (0x00040000);(0x4UL << TIM_TISEL_TI3SEL_Pos)              /*!< 0x00040000 */
TIM_TISEL_TI3SEL_3        EQU         (0x00080000);(0x8UL << TIM_TISEL_TI3SEL_Pos)              /*!< 0x00080000 */


TIM_TISEL_TI4SEL          EQU         (0x0F000000);TIM_TISEL_TI4SEL_Msk                         /*!<TI4SEL[3:0] bits (TIM TI4 SEL)*/
TIM_TISEL_TI4SEL_0        EQU         (0x01000000);(0x1UL << TIM_TISEL_TI4SEL_Pos)              /*!< 0x01000000 */
TIM_TISEL_TI4SEL_1        EQU         (0x02000000);(0x2UL << TIM_TISEL_TI4SEL_Pos)              /*!< 0x02000000 */
TIM_TISEL_TI4SEL_2        EQU         (0x04000000);(0x4UL << TIM_TISEL_TI4SEL_Pos)              /*!< 0x04000000 */
TIM_TISEL_TI4SEL_3        EQU         (0x08000000);(0x8UL << TIM_TISEL_TI4SEL_Pos)              /*!< 0x08000000 */

;/******************************************************************************/
;/*                                                                            */
;/*                         Low Power Timer (LPTIM)                            */
;/*                                                                            */
;/******************************************************************************/
;/******************  Bit definition for LPTIM_ISR register (TBD)***************/


;/******************************************************************************/
;/*                                                                            */
;/*      Universal Synchronous Asynchronous Receiver Transmitter (USART)       */
;/*                                                                            */
;/******************************************************************************/
;/******************  Bit definition for USART_CR1 register  *******************/

USART_CR1_UE                 EQU         (0x00000001);                          /*!< USART Enable */


USART_CR1_UESM               EQU         (0x00000002);                        /*!< USART Enable in STOP Mode */


USART_CR1_RE                 EQU         (0x00000004);                          /*!< Receiver Enable */


USART_CR1_TE                 EQU         (0x00000008);                          /*!< Transmitter Enable */


USART_CR1_IDLEIE             EQU         (0x00000010);                      /*!< IDLE Interrupt Enable */


USART_CR1_RXNEIE_RXFNEIE     EQU         (0x00000020);            /*!< RXNE/RXFIFO not empty Interrupt Enable */


USART_CR1_TCIE               EQU         (0x00000040);                        /*!< Transmission Complete Interrupt Enable */


USART_CR1_TXEIE_TXFNFIE       EQU        (0x00000080);              /*!< TXE/TXFIFO not full Interrupt Enable */


USART_CR1_PEIE               EQU         (0x00000100);                        /*!< PE Interrupt Enable */


USART_CR1_PS                 EQU         (0x00000200);                          /*!< Parity Selection */


USART_CR1_PCE                EQU         (0x00000400);                         /*!< Parity Control Enable */


USART_CR1_WAKE               EQU         (0x00000800);                        /*!< Receiver Wakeup method */


USART_CR1_M                  EQU         (0x10001000);                           /*!< Word length */


USART_CR1_M0                 EQU         (0x00001000);                          /*!< Word length - Bit 0 */


USART_CR1_MME                EQU         (0x00002000);                         /*!< Mute Mode Enable */


USART_CR1_CMIE               EQU         (0x00004000);                        /*!< Character match interrupt enable */


USART_CR1_OVER8              EQU         (0x00008000);                       /*!< Oversampling by 8-bit or 16-bit mode */


USART_CR1_DEDT               EQU         (0x001F0000);                        /*!< DEDT[4:0] bits (Driver Enable Deassertion Time) */
USART_CR1_DEDT_0             EQU         (0x00010000);(0x01UL << USART_CR1_DEDT_Pos)            /*!< 0x00010000 */
USART_CR1_DEDT_1             EQU         (0x00020000);(0x02UL << USART_CR1_DEDT_Pos)            /*!< 0x00020000 */
USART_CR1_DEDT_2             EQU         (0x00040000);(0x04UL << USART_CR1_DEDT_Pos)            /*!< 0x00040000 */
USART_CR1_DEDT_3             EQU         (0x00080000);(0x08UL << USART_CR1_DEDT_Pos)            /*!< 0x00080000 */
USART_CR1_DEDT_4             EQU         (0x00100000);(0x10UL << USART_CR1_DEDT_Pos)            /*!< 0x00100000 */


USART_CR1_DEAT               EQU         (0x03E00000);USART_CR1_DEAT_Msk                        /*!< DEAT[4:0] bits (Driver Enable Assertion Time) */
USART_CR1_DEAT_0             EQU         (0x00200000);(0x01UL << USART_CR1_DEAT_Pos)            /*!< 0x00200000 */
USART_CR1_DEAT_1             EQU         (0x00400000);(0x02UL << USART_CR1_DEAT_Pos)            /*!< 0x00400000 */
USART_CR1_DEAT_2             EQU         (0x00800000);(0x04UL << USART_CR1_DEAT_Pos)            /*!< 0x00800000 */
USART_CR1_DEAT_3             EQU         (0x01000000);(0x08UL << USART_CR1_DEAT_Pos)            /*!< 0x01000000 */
USART_CR1_DEAT_4             EQU         (0x02000000);(0x10UL << USART_CR1_DEAT_Pos)            /*!< 0x02000000 */


USART_CR1_RTOIE              EQU         (0x04000000);USART_CR1_RTOIE_Msk                       /*!< Receive Time Out interrupt enable */


USART_CR1_EOBIE              EQU         (0x08000000);USART_CR1_EOBIE_Msk                       /*!< End of Block interrupt enable */


USART_CR1_M1                 EQU         (0x10000000);USART_CR1_M1_Msk                          /*!< Word length - Bit 1 */


USART_CR1_FIFOEN             EQU         (0x20000000);USART_CR1_FIFOEN_Msk                      /*!< FIFO mode enable */


USART_CR1_TXFEIE             EQU         (0x40000000);USART_CR1_TXFEIE_Msk                      /*!< TXFIFO empty interrupt enable */

USART_CR1_RXFFIE             EQU         (0x80000000);USART_CR1_RXFFIE_Msk                      /*!< RXFIFO Full interrupt enable */

;/******************  Bit definition for USART_CR2 register  *******************/

USART_CR2_SLVEN              EQU         (0x00000001);USART_CR2_SLVEN_Msk                       /*!< Synchronous Slave mode enable */


USART_CR2_DIS_NSS            EQU         (0x00000008);USART_CR2_DIS_NSS_Msk                     /*!< NSS input pin disable for SPI slave selection */


USART_CR2_ADDM7              EQU         (0x00000010);USART_CR2_ADDM7_Msk                       /*!< 7-bit or 4-bit Address Detection */


USART_CR2_LBDL               EQU         (0x00000020);USART_CR2_LBDL_Msk                        /*!< LIN Break Detection Length */


USART_CR2_LBDIE              EQU         (0x00000040);USART_CR2_LBDIE_Msk                       /*!< LIN Break Detection Interrupt Enable */


USART_CR2_LBCL               EQU         (0x00000100);USART_CR2_LBCL_Msk                        /*!< Last Bit Clock pulse */


USART_CR2_CPHA               EQU         (0x00000200);USART_CR2_CPHA_Msk                        /*!< Clock Phase */


USART_CR2_CPOL               EQU         (0x00000400);USART_CR2_CPOL_Msk                        /*!< Clock Polarity */


USART_CR2_CLKEN              EQU         (0x00000800);USART_CR2_CLKEN_Msk                       /*!< Clock Enable */


USART_CR2_STOP               EQU         (0x00003000);USART_CR2_STOP_Msk                        /*!< STOP[1:0] bits (STOP bits) */
USART_CR2_STOP_0             EQU         (0x00001000);(0x1UL << USART_CR2_STOP_Pos)             /*!< 0x00001000 */
USART_CR2_STOP_1             EQU         (0x00002000);(0x2UL << USART_CR2_STOP_Pos)             /*!< 0x00002000 */


USART_CR2_LINEN              EQU         (0x00004000);                       /*!< LIN mode enable */


USART_CR2_SWAP               EQU         (0x00008000);                        /*!< SWAP TX/RX pins */


USART_CR2_RXINV              EQU         (0x00010000);                       /*!< RX pin active level inversion */


USART_CR2_TXINV              EQU         (0x00020000);                       /*!< TX pin active level inversion */


USART_CR2_DATAINV            EQU         (0x00040000);                     /*!< Binary data inversion */


USART_CR2_MSBFIRST           EQU         (0x00080000);                    /*!< Most Significant Bit First */


USART_CR2_ABREN              EQU         (0x00100000);                       /*!< Auto Baud-Rate Enable*/


USART_CR2_ABRMODE            EQU         (0x80000000);                     /*!< ABRMOD[1:0] bits (Auto Baud-Rate Mode) */
USART_CR2_ABRMODE_0          EQU         (0x00200000);(0x1UL << USART_CR2_ABRMODE_Pos)          /*!< 0x00200000 */
USART_CR2_ABRMODE_1          EQU         (0x00400000);(0x2UL << USART_CR2_ABRMODE_Pos)          /*!< 0x00400000 */


USART_CR2_RTOEN              EQU         (0x00800000);                       /*!< Receiver Time-Out enable */


USART_CR2_ADD                EQU         (0xFF000000);                         /*!< Address of the USART node */

;/******************  Bit definition for USART_CR3 register  *******************/

USART_CR3_EIE                EQU         (0x00000001);                         /*!< Error Interrupt Enable */


USART_CR3_IREN               EQU         (0x00000002);                        /*!< IrDA mode Enable */


USART_CR3_IRLP               EQU         (0x00000004);                        /*!< IrDA Low-Power */


USART_CR3_HDSEL              EQU         (0x00000008);                       /*!< Half-Duplex Selection */


USART_CR3_NACK               EQU         (0x00000010);                        /*!< SmartCard NACK enable */


USART_CR3_SCEN               EQU		 (0x00000020);                        /*!< SmartCard mode enable */


USART_CR3_DMAR               EQU         (0x00000040);                        /*!< DMA Enable Receiver */


USART_CR3_DMAT               EQU         (0x00000080);                        /*!< DMA Enable Transmitter */


USART_CR3_RTSE               EQU         (0x00000100);                        /*!< RTS Enable */


USART_CR3_CTSE               EQU         (0x00000200);                        /*!< CTS Enable */


USART_CR3_CTSIE              EQU         (0x00000400);                       /*!< CTS Interrupt Enable */


USART_CR3_ONEBIT             EQU         (0x00000800);                      /*!< One sample bit method enable */


USART_CR3_OVRDIS             EQU         (0x00001000);                      /*!< Overrun Disable */


USART_CR3_DDRE               EQU         (0x00002000);                        /*!< DMA Disable on Reception Error */


USART_CR3_DEM                EQU         (0x00004000);                         /*!< Driver Enable Mode */


USART_CR3_DEP                EQU         (0x00008000);                         /*!< Driver Enable Polarity Selection */


USART_CR3_SCARCNT            EQU         (0x000E0000);                     /*!< SCARCNT[2:0] bits (SmartCard Auto-Retry Count) */
USART_CR3_SCARCNT_0          EQU         (0x00020000);(0x1UL << USART_CR3_SCARCNT_Pos)          /*!< 0x00020000 */
USART_CR3_SCARCNT_1          EQU         (0x00040000);(0x2UL << USART_CR3_SCARCNT_Pos)          /*!< 0x00040000 */
USART_CR3_SCARCNT_2          EQU         (0x00080000);(0x4UL << USART_CR3_SCARCNT_Pos)          /*!< 0x00080000 */


USART_CR3_WUS                EQU         (0x00300000);                         /*!< WUS[1:0] bits (Wake UP Interrupt Flag Selection) */
USART_CR3_WUS_0              EQU         (0x00100000);(0x1UL << USART_CR3_WUS_Pos)              /*!< 0x00100000 */
USART_CR3_WUS_1              EQU         (0x00200000);(0x2UL << USART_CR3_WUS_Pos)              /*!< 0x00200000 */


USART_CR3_WUFIE              EQU         (0x00400000);                       /*!< Wake Up Interrupt Enable */


USART_CR3_TXFTIE             EQU         (0x00800000);                      /*!< TXFIFO threshold interrupt enable */


USART_CR3_TCBGTIE            EQU         (0x01000000);                     /*!< Transmission Complete Before Guard Time Interrupt Enable */


USART_CR3_RXFTCFG            EQU         (0x0E000000);                     /*!< RXFIFO FIFO threshold configuration */
USART_CR3_RXFTCFG_0          EQU         (0x02000000);(0x1UL << USART_CR3_RXFTCFG_Pos)          /*!< 0x02000000 */
USART_CR3_RXFTCFG_1          EQU         (0x04000000);(0x2UL << USART_CR3_RXFTCFG_Pos)          /*!< 0x04000000 */
USART_CR3_RXFTCFG_2          EQU         (0x08000000);(0x4UL << USART_CR3_RXFTCFG_Pos)          /*!< 0x08000000 */


USART_CR3_RXFTIE             EQU         (0x10000000);                      /*!< RXFIFO threshold interrupt enable */


USART_CR3_TXFTCFG            EQU         (0xE0000000);                     /*!< TXFIFO threshold configuration */
USART_CR3_TXFTCFG_0          EQU         (0x20000000);(0x1UL << USART_CR3_TXFTCFG_Pos)          /*!< 0x20000000 */
USART_CR3_TXFTCFG_1          EQU         (0x40000000);(0x2UL << USART_CR3_TXFTCFG_Pos)          /*!< 0x40000000 */
USART_CR3_TXFTCFG_2          EQU         (0x80000000);(0x4UL << USART_CR3_TXFTCFG_Pos)          /*!< 0x80000000 */

;/******************  Bit definition for USART_BRR register  *******************/

USART_BRR_LPUART             EQU         (0x000FFFFF);                      /*!< LPUART Baud rate register [19:0] */
USART_BRR_BRR                EQU         (0x000FFFFF);((uint16_t)0xFFFF)                        /*!< USART  Baud rate register [15:0] */

;/******************  Bit definition for USART_GTPR register  ******************/

USART_GTPR_PSC                EQU         (0x000000FF);                         /*!< PSC[7:0] bits (Prescaler value) */

USART_GTPR_GT                 EQU         (0x0000FF00);                          /*!< GT[7:0] bits (Guard time value) */

;/*******************  Bit definition for USART_RTOR register  *****************/

USART_RTOR_RTO               EQU         (0x00FFFFFF);                        /*!< Receiver Time Out Value */


USART_RTOR_BLEN              EQU         (0xFF000000);                       /*!< Block Length */

;/*******************  Bit definition for USART_RQR register  ******************/
USART_RQR_ABRRQ        EQU         (0x00000001);((uint16_t)0x0001)                              /*!< Auto-Baud Rate Request */
USART_RQR_SBKRQ        EQU         (0x00000002);((uint16_t)0x0002)                              /*!< Send Break Request */
USART_RQR_MMRQ         EQU         (0x00000004);((uint16_t)0x0004)                              /*!< Mute Mode Request */
USART_RQR_RXFRQ        EQU         (0x00000008);((uint16_t)0x0008)                              /*!< Receive Data flush Request */
USART_RQR_TXFRQ        EQU         (0x00000010);((uint16_t)0x0010)                              /*!< Transmit data flush Request */

;/*******************  Bit definition for USART_ISR register  ******************/

USART_ISR_PE                 EQU         (0x00000001);USART_ISR_PE_Msk                          /*!< Parity Error */


USART_ISR_FE                 EQU         (0x00000002);USART_ISR_FE_Msk                          /*!< Framing Error */


USART_ISR_NE                 EQU         (0x00000004);USART_ISR_NE_Msk                          /*!< Noise detected Flag */


USART_ISR_ORE                EQU         (0x00000008);USART_ISR_ORE_Msk                         /*!< OverRun Error */


USART_ISR_IDLE               EQU         (0x00000010);USART_ISR_IDLE_Msk                        /*!< IDLE line detected */


USART_ISR_RXNE_RXFNE         EQU		 (0x00000020);USART_ISR_RXNE_RXFNE_Msk                  /*!< Read Data Register Not Empty/RXFIFO Not Empty */


USART_ISR_TC                 EQU         (0x00000040);USART_ISR_TC_Msk                          /*!< Transmission Complete */


USART_ISR_TXE_TXFNF          EQU         (0x00000080);USART_ISR_TXE_TXFNF_Msk                   /*!< Transmit Data Register Empty/TXFIFO Not Full */


USART_ISR_LBDF               EQU         (0x00000100);USART_ISR_LBDF_Msk                        /*!< LIN Break Detection Flag */


USART_ISR_CTSIF              EQU         (0x00000200);USART_ISR_CTSIF_Msk                       /*!< CTS interrupt flag */


USART_ISR_CTS                EQU         (0x00000400);USART_ISR_CTS_Msk                         /*!< CTS flag */


USART_ISR_RTOF               EQU         (0x00000800);USART_ISR_RTOF_Msk                        /*!< Receiver Time Out */


USART_ISR_EOBF               EQU         (0x00001000);USART_ISR_EOBF_Msk                        /*!< End Of Block Flag */


USART_ISR_UDR                EQU         (0x00002000); USART_ISR_UDR_Msk                        /*!< SPI Slave Underrun Error Flag */


USART_ISR_ABRE               EQU         (0x00004000);USART_ISR_ABRE_Msk                        /*!< Auto-Baud Rate Error */


USART_ISR_ABRF               EQU         (0x00008000);USART_ISR_ABRF_Msk                        /*!< Auto-Baud Rate Flag */


USART_ISR_BUSY               EQU         (0x00010000);USART_ISR_BUSY_Msk                        /*!< Busy Flag */


USART_ISR_CMF                EQU         (0x00020000);                         /*!< Character Match Flag */


USART_ISR_SBKF               EQU         (0x00040000);USART_ISR_SBKF_Msk                        /*!< Send Break Flag */


USART_ISR_RWU                EQU         (0x00080000);                         /*!< Receive Wake Up from mute mode Flag */


USART_ISR_WUF                EQU         (0x00100000);USART_ISR_WUF_Msk                         /*!< Wake Up from stop mode Flag */


USART_ISR_TEACK              EQU         (0x00200000);(                       /*!< Transmit Enable Acknowledge Flag */


USART_ISR_REACK              EQU         (0x00400000);USART_ISR_REACK_Msk                       /*!< Receive Enable Acknowledge Flag */


USART_ISR_TXFE               EQU         (0x00800000);                        /*!< TXFIFO Empty Flag */


USART_ISR_RXFF               EQU         (0x01000000);USART_ISR_RXFF_Msk                        /*!< RXFIFO Full Flag */


USART_ISR_TCBGT              EQU         (0x02000000);                       /*!< Transmission Complete Before Guard Time Completion Flag */


USART_ISR_RXFT               EQU         (0x04000000);USART_ISR_RXFT_Msk                        /*!< RXFIFO Threshold Flag */


USART_ISR_TXFT               EQU         (0x08000000);                        /*!< TXFIFO Threshold Flag */

;/*******************  Bit definition for USART_ICR register  ******************/

USART_ICR_PECF                EQU         (0x00000001);USART_ICR_PECF_Msk                        /*!< Parity Error Clear Flag */

USART_ICR_FECF                EQU         (0x00000002);USART_ICR_FECF_Msk                        /*!< Framing Error Clear Flag */

USART_ICR_NECF                EQU         (0x00000004);USART_ICR_NECF_Msk                        /*!< Noise Error detected Clear Flag */

USART_ICR_ORECF               EQU         (0x00000008);USART_ICR_ORECF_Msk                       /*!< OverRun Error Clear Flag */

USART_ICR_IDLECF              EQU         (0x00000010);USART_ICR_IDLECF_Msk                      /*!< IDLE line detected Clear Flag */

USART_ICR_TXFECF              EQU		 (0x00000020);USART_ICR_TXFECF_Msk                      /*!< TXFIFO Empty Clear Flag */

USART_ICR_TCCF                EQU         (0x00000040);USART_ICR_TCCF_Msk                        /*!< Transmission Complete Clear Flag */

USART_ICR_TCBGTCF             EQU         (0x00000080);USART_ICR_TCBGTCF_Msk                     /*!< Transmission Complete Before Guard Time Clear Flag */

USART_ICR_LBDCF               EQU         (0x00000100);USART_ICR_LBDCF_Msk                       /*!< LIN Break Detection Clear Flag */

USART_ICR_CTSCF               EQU         (0x00000200);USART_ICR_CTSCF_Msk                       /*!< CTS Interrupt Clear Flag */

USART_ICR_RTOCF               EQU         (0x00000800);USART_ICR_RTOCF_Msk                       /*!< Receiver Time Out Clear Flag */

USART_ICR_EOBCF               EQU         (0x00001000);USART_ICR_EOBCF_Msk                       /*!< End Of Block Clear Flag */

USART_ICR_UDRCF               EQU         (0x00002000);USART_ICR_UDRCF_Msk                       /*!< SPI Slave Underrun Clear Flag */

USART_ICR_CMCF                EQU         (0x00020000);USART_ICR_CMCF_Msk                        /*!< Character Match Clear Flag */

USART_ICR_WUCF                EQU         (0x00100000);USART_ICR_WUCF_Msk                        /*!< Wake Up from stop mode Clear Flag */
                             
;/*******************  Bit definition for USART_RDR register  ******************/

USART_RDR_RDR                 EQU         (0x000001FF);                        /*!< RDR[8:0] bits (Receive Data value) */
                             
;/*******************  Bit definition for USART_TDR register  ******************/

USART_TDR_TDR                 EQU         (0x000001FF);                        /*!< TDR[8:0] bits (Transmit Data value) */
                             
;/*******************  Bit def EQU         (0x00040000);inition for USART_PRESC register  ****************/

USART_PRESC_PRESCALER        EQU         (0x0000000F);USART_PRESC_PRESCALER_Msk                 /*!< PRESCALER[3:0] bits (Clock prescaler) */
USART_PRESC_PRESCALER_0      EQU         (0x00000001); (0x1UL << USART_PRESC_PRESCALER_Pos)      /*!< 0x00000001 */
USART_PRESC_PRESCALER_1      EQU         (0x00000002); (0x2UL << USART_PRESC_PRESCALER_Pos)      /*!< 0x00000002 */
USART_PRESC_PRESCALER_2      EQU         (0x00000004); (0x4UL << USART_PRESC_PRESCALER_Pos)      /*!< 0x00000004 */
USART_PRESC_PRESCALER_3      EQU         (0x00000008); (0x8UL << USART_PRESC_PRESCALER_Pos)      /*!< 0x00000008 */

;/******************************************************************************/
;/*                                                                            */
;/*                                 VREFBUF  (TBD)                             */
;/*                                                                            */
;/******************************************************************************/
;/*******************  Bit definition for VREFBUF_CSR register  ****************/




	END											