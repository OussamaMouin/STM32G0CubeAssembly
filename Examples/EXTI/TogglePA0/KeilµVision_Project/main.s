	INCLUDE core_cm0_plus_constants.s		; Load Constant Definitions
	INCLUDE stm32G0_constants.s      

; Green LED <--> PA.5

	AREA    main, CODE, READONLY
	EXPORT	__main				; make __main visible to linker
	
	ENTRY			


				
__main	PROC
	
	
		
    ; Enable the clock to GPIO Port A	
	LDR r0, =RCC_BASE
	LDR r1, [r0, #RCC_IOPENR]   
	LDR r2, =RCC_IOPENR_GPIOAEN
	ORRS r1, r1, r2
	STR r1, [r0, #RCC_IOPENR]
	;enable the clock to SYSCFGEN for interuption
	LDR r0, =RCC_BASE
	LDR r1, [r0, #RCC_AHBENR]   
	LDR r2, =RCC_APBENR2_SYSCFGEN
	ORRS r1, r1, r2
	STR r1, [r0, #RCC_IOPENR]
	; MODE: 00: Input mode, 01: General purpose output mode
    ;       10: Alternate function mode, 11: Analog mode (reset state)
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_MODER]
	LDR r2, =GPIO_MODER_MODE12
	BICS r1, r1, r2;  	;#(3<<(2*LED_PIN))
	LDR r2, =GPIO_MODER_MODE12_0
	ORRS r1, r1, r2 		;#(1<<(2*LED_PIN))
	STR r1, [r0, #GPIO_MODER]

	
    
	;PA0 in input mode interrupt button
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_MODER]
	LDR r2, =GPIO_MODER_MODE0
	BICS r1, r1, r2 	
	STR r1, [r0, #GPIO_MODER]
    ;enabling pull-down resitor
    LDR r1, [r0, #GPIO_PUPDR]
	LDR r2, =GPIO_PUPDR_PUPD0
	BICS r1, r1, r2;  	;#(3<<(2*LED_PIN))
	LDR r2, =GPIO_PUPDR_PUPD0_1
	ORRS r1, r1, r2 		;#(1<<(2*LED_PIN))
	STR r1, [r0, #GPIO_PUPDR]
	
	; EXTI0 -> PA0 selection
	LDR r0, =EXTI_BASE
	LDR r1, [r0, #EXTI_EXTICR]   
	LDR r2, = EXTI_EXTICR1_EXTI0 
	BICS r1, r1, r2
	STR r1, [r0, #EXTI_EXTICR]
	
	;Rising_edge_selection
	;RTSR[0] -> 1
	LDR r0, =EXTI_BASE
	LDR r1, [r0, #EXTI_RTSR1]  
	LDR r2, = EXTI_RTSR1_RT0
	ORRS r1, r1, r2
	STR r1, [r0, #EXTI_RTSR1]
	;FTSR[0]-> 0
	LDR r0, =EXTI_BASE
	LDR r1, [r0, #EXTI_FTSR1]  ; EXTI_RTSR1_RT1
	LDR r2, = EXTI_FTSR1_FT0 ; EXTI_FPR1_FPIF1
	BICS r1, r1, r2  
	STR r1, [r0, #EXTI_FTSR1]
	
	; Unmasking The EXTI_0
	LDR r0, =EXTI_BASE + EXTI_IMR1
	LDR r1, [r0]  
	LDR r2, = EXTI_IMR1_IM0 
	ORRS r1, r1, r2
	STR r1, [r0]
	;Enable the interupt on the NVIC controller
	LDR r0, =NVIC_BASE
	LDR r1, [r0]  
	LDR r2, =0x00000020 
	ORRS r1, r1, r2
	STR r1, [r0]
	
    LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_ODR]
    LDR r2, =(GPIO_ODR_OD12) ;1<<12
	ORRS r1, r1, r2
	STR r1, [r0, #GPIO_ODR]
  
stop  
   
	
	        
	
	
    B 		stop     		; dead loop & program hangs here

	ENDP
		
		
Delay PROC
    PUSH {LR}
    LDR R4,=1000000 ; Number of cycles per millisecond
Lop
    SUBS R4, R4, #1
    BNE Lop
    POP {PC}           
    ENDP				
	
	ALIGN			
    AREA  EXTI0_1_IRQHandler, CODE, READONLY
    EXPORT __EXTI0_1_IRQHandler
__EXTI0_1_IRQHandler PROC
	             
				
				 
				 
			   	LDR r0, =GPIOA_BASE
				LDR r1, [r0, #GPIO_ODR]
				LDR r2, =(GPIO_ODR_OD12) ;1<<12
				EORS r1, r1, r2
				STR r1, [r0, #GPIO_ODR]
						
				LDR r0, =0x40021800
	            LDR r1, [r0,#0x00C]  
	            LDR r2, =0xFFFFFFFF
	            ORRS r1, r1, r2
	            STR r1, [r0,#0x00C]	
				 
				 BX LR
				 ENDP
	AREA    myData, DATA, READWRITE
	ALIGN
array	DCD   1, 2, 3, 4
	END