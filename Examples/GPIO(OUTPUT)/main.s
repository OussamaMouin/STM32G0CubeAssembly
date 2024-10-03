;----Includes BEGIN

 INCLUDE stm32G0_constants.s
 INCLUDE core_cm0_plus_constants.s

;----Includes END
 AREA main,Code,READONLY
 EXPORT __main
__main PROC
;USER CODE BEGIN 1


 BL RCC_CONFIG
 BL GPIOA12_Config

;USER CODE END 1
;While loop begin
loop
;USER CODE BEGIN 2
	LDR r1, [r0, #GPIO_ODR]
	LDR r2, =(GPIO_ODR_OD12) ;1<<12
	ORRS r1, r1, r2 
	STR r1, [r0, #GPIO_ODR]

   BL Delay	
	
	LDR r1, [r0, #GPIO_ODR]
	LDR r2, =(GPIO_ODR_OD12) ;1<<12
	BICS r1, r1, r2; 
	STR r1, [r0, #GPIO_ODR]
	BL Delay	
;USER CODE END 2
 B loop
 ENDP
RCC_CONFIG PROC

 LDR r0, =RCC_BASE
 LDR r1, [r0, #RCC_IOPENR]
 LDR r2, =RCC_IOPENR_GPIOAEN
 ORRS r1, r1, r2
 STR r1, [r0, #RCC_IOPENR]
 ENDP
GPIOA12_Config PROC
 LDR r0, =GPIOA_BASE
 LDR r1, [r0, #GPIO_MODER]
 LDR r2, =GPIO_MODER_MODE12 ;3<<2*12
 BICS r1, r1, r2
 LDR r2, =GPIO_MODER_MODE12_0   ;1<<2*12
 ORRS r1, r1, r2
 STR r1, [r0, #GPIO_MODER]
 ENDP
Delay PROC
    PUSH {LR}
    LDR R1,=1000000 ; Number of cycles per millisecond
Lop
    SUBS R1, R1, #1
    BNE Lop
    POP {PC}
	
	ENDP
 ALIGN 4
 END

