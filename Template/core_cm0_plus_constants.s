;******************** (C) Younes LAHBIB ***************************************************************
; @file    core_cm0_plus_constant.s
; @author  Younes LAHBIB
; @version V1.0.0
; @date    June-14-2023
; @note    based on the C code core_cm0plus.h (C) V5.0.7 13. March 2019 STMicroelectronics
; @brief   Assembly version of Cortex M0 plus core


;******************************************************************************************************

;******************************************************************************************************
;               Register Abstraction
; Core Register contain:
; - Core Register
; - Core NVIC Register
; - Core SCB Register
; - Core SysTick Register
; - Core MPU Register

;******************************************************************************************************

	; Structure type to access the System Control Block (SCB).
	;=========================================================

SCB_CPUID         EQU   0x000; Offset: 0x000 (R/ )  CPUID Base Register                                   
SCB_ICSR          EQU   0x004; Offset: 0x004 (R/W)  Interrupt Control and State Register                  
SCB_VTOR          EQU   0x008; Offset: 0x008 (R/W)  Vector Table Offset Register                          
SCB_AIRCR         EQU   0x00C; Offset: 0x00C (R/W)  Application Interrupt and Reset Control Register      
SCB_SCR           EQU   0x010; Offset: 0x010 (R/W)  System Control Register                               
SCB_CCR           EQU   0x014; Offset: 0x014 (R/W)  Configuration Control Register                        
SCB_SHP           EQU   0x01C; System Handlers Priority Registers (0xE000ED1C SHPR2  & 0xE000ED20 SHPR3) 
SCB_SHCSR         EQU   0x024; Offset: 0x024 (R/W)  System Handler Control and State Register             

	; SCB CPUID Register Definitions 
SCB_CPUID_IMPLEMENTER_Pos          EQU 24                                           ; SCB CPUID: IMPLEMENTER Position 
SCB_CPUID_IMPLEMENTER_Msk          EQU (0xFF << SCB_CPUID_IMPLEMENTER_Pos)          ; SCB CPUID: IMPLEMENTER Mask 

SCB_CPUID_VARIANT_Pos              EQU 20                                             ; SCB CPUID: VARIANT Position 
SCB_CPUID_VARIANT_Msk              EQU (0xF << SCB_CPUID_VARIANT_Pos)               ; SCB CPUID: VARIANT Mask 

SCB_CPUID_ARCHITECTURE_Pos         EQU 16                                             ; SCB CPUID: ARCHITECTURE Position 
SCB_CPUID_ARCHITECTURE_Msk         EQU (0xF << SCB_CPUID_ARCHITECTURE_Pos)          ; SCB CPUID: ARCHITECTURE Mask 

SCB_CPUID_PARTNO_Pos               EQU  4                                             ; SCB CPUID: PARTNO Position 
SCB_CPUID_PARTNO_Msk               EQU (0xFFF << SCB_CPUID_PARTNO_Pos)              ; SCB CPUID: PARTNO Mask 

SCB_CPUID_REVISION_Pos             EQU  0                                             ; SCB CPUID: REVISION Position 
SCB_CPUID_REVISION_Msk             EQU (0xF << SCB_CPUID_REVISION_Pos)              ; SCB CPUID: REVISION Mask 

	; SCB Interrupt Control State Register Definitions 
SCB_ICSR_NMIPENDSET_Pos            EQU 31                                             ; SCB ICSR: NMIPENDSET Position 
SCB_ICSR_NMIPENDSET_Msk            EQU (0x1 << SCB_ICSR_NMIPENDSET_Pos)               ; SCB ICSR: NMIPENDSET Mask 

SCB_ICSR_PENDSVSET_Pos             EQU 28                                             ; SCB ICSR: PENDSVSET Position 
SCB_ICSR_PENDSVSET_Msk             EQU (0x1 << SCB_ICSR_PENDSVSET_Pos)                ; SCB ICSR: PENDSVSET Mask 

SCB_ICSR_PENDSVCLR_Pos             EQU 27                                             ; SCB ICSR: PENDSVCLR Position 
SCB_ICSR_PENDSVCLR_Msk             EQU (0x1 << SCB_ICSR_PENDSVCLR_Pos)                ; SCB ICSR: PENDSVCLR Mask 

SCB_ICSR_PENDSTSET_Pos             EQU 26                                             ; SCB ICSR: PENDSTSET Position 
SCB_ICSR_PENDSTSET_Msk             EQU (0x1 << SCB_ICSR_PENDSTSET_Pos)                ; SCB ICSR: PENDSTSET Mask 

SCB_ICSR_PENDSTCLR_Pos             EQU 25                                             ; SCB ICSR: PENDSTCLR Position 
SCB_ICSR_PENDSTCLR_Msk             EQU (0x1 << SCB_ICSR_PENDSTCLR_Pos)                ; SCB ICSR: PENDSTCLR Mask 

SCB_ICSR_ISRPREEMPT_Pos            EQU 23                                             ; SCB ICSR: ISRPREEMPT Position 
SCB_ICSR_ISRPREEMPT_Msk            EQU (0x1 << SCB_ICSR_ISRPREEMPT_Pos)               ; SCB ICSR: ISRPREEMPT Mask 

SCB_ICSR_ISRPENDING_Pos            EQU 22                                             ; SCB ICSR: ISRPENDING Position 
SCB_ICSR_ISRPENDING_Msk            EQU (0x1 << SCB_ICSR_ISRPENDING_Pos)               ; SCB ICSR: ISRPENDING Mask 

SCB_ICSR_VECTPENDING_Pos           EQU 12                                             ; SCB ICSR: VECTPENDING Position 
SCB_ICSR_VECTPENDING_Msk           EQU (0x1FF << SCB_ICSR_VECTPENDING_Pos)            ; SCB ICSR: VECTPENDING Mask 

SCB_ICSR_VECTACTIVE_Pos            EQU  0                                           ; SCB ICSR: VECTACTIVE Position 
SCB_ICSR_VECTACTIVE_Msk            EQU (0x1FF << SCB_ICSR_VECTACTIVE_Pos)           ; SCB ICSR: VECTACTIVE Mask	
	
	; SCB Vector Table Offset Register Definitions 
SCB_VTOR_TBLOFF_Pos                EQU  7                                             ; SCB VTOR: TBLOFF Position 
SCB_VTOR_TBLOFF_Msk                EQU (0x1FFFFFF << SCB_VTOR_TBLOFF_Pos)           ; SCB VTOR: TBLOFF Mask 

	; SCB Application Interrupt and Reset Control Register Definitions 
SCB_AIRCR_VECTKEY_Pos              EQU 16                                             ; SCB AIRCR: VECTKEY Position 
SCB_AIRCR_VECTKEY_Msk              EQU (0xFFFF << SCB_AIRCR_VECTKEY_Pos)            ; SCB AIRCR: VECTKEY Mask 

SCB_AIRCR_VECTKEYSTAT_Pos          EQU 16                                             ; SCB AIRCR: VECTKEYSTAT Position 
SCB_AIRCR_VECTKEYSTAT_Msk          EQU (0xFFFF << SCB_AIRCR_VECTKEYSTAT_Pos)        ; SCB AIRCR: VECTKEYSTAT Mask 

SCB_AIRCR_ENDIANESS_Pos            EQU 15                                             ; SCB AIRCR: ENDIANESS Position 
SCB_AIRCR_ENDIANESS_Msk            EQU (0x1 << SCB_AIRCR_ENDIANESS_Pos)               ; SCB AIRCR: ENDIANESS Mask 

SCB_AIRCR_SYSRESETREQ_Pos          EQU  2                                             ; SCB AIRCR: SYSRESETREQ Position 
SCB_AIRCR_SYSRESETREQ_Msk          EQU (0x1 << SCB_AIRCR_SYSRESETREQ_Pos)             ; SCB AIRCR: SYSRESETREQ Mask 

SCB_AIRCR_VECTCLRACTIVE_Pos        EQU  1                                             ; SCB AIRCR: VECTCLRACTIVE Position 
SCB_AIRCR_VECTCLRACTIVE_Msk        EQU (0x1 << SCB_AIRCR_VECTCLRACTIVE_Pos)           ; SCB AIRCR: VECTCLRACTIVE Mask 

	; SCB System Control Register Definitions 
SCB_SCR_SEVONPEND_Pos              EQU  4                                             ; SCB SCR: SEVONPEND Position 
SCB_SCR_SEVONPEND_Msk              EQU (0x1 << SCB_SCR_SEVONPEND_Pos)                 ; SCB SCR: SEVONPEND Mask 

SCB_SCR_SLEEPDEEP_Pos              EQU  2                                             ; SCB SCR: SLEEPDEEP Position 
SCB_SCR_SLEEPDEEP_Msk              EQU (0x1 << SCB_SCR_SLEEPDEEP_Pos)                 ; SCB SCR: SLEEPDEEP Mask 

SCB_SCR_SLEEPONEXIT_Pos            EQU  1                                             ; SCB SCR: SLEEPONEXIT Position 
SCB_SCR_SLEEPONEXIT_Msk            EQU (0x1 << SCB_SCR_SLEEPONEXIT_Pos)               ; SCB SCR: SLEEPONEXIT Mask 

	; SCB Configuration Control Register Definitions 
SCB_CCR_STKALIGN_Pos               EQU  9                                             ; SCB CCR: STKALIGN Position 
SCB_CCR_STKALIGN_Msk               EQU (0x1 << SCB_CCR_STKALIGN_Pos)                  ; SCB CCR: STKALIGN Mask 

SCB_CCR_UNALIGN_TRP_Pos            EQU  3                                             ; SCB CCR: UNALIGN_TRP Position 
SCB_CCR_UNALIGN_TRP_Msk            EQU (0x1 << SCB_CCR_UNALIGN_TRP_Pos)               ; SCB CCR: UNALIGN_TRP Mask 

	; SCB System Handler Control and State Register Definitions 
SCB_SHCSR_SVCALLPENDED_Pos         EQU 15                                             ; SCB SHCSR: SVCALLPENDED Position 
SCB_SHCSR_SVCALLPENDED_Msk         EQU (0x1 << SCB_SHCSR_SVCALLPENDED_Pos)            ; SCB SHCSR: SVCALLPENDED Mask 

	;CMSIS_core_register
	; CMSIS_SysTick     System Tick Timer (SysTick)
	; Type definitions for the System Timer Registers.

	; Structure type to access the System Timer (SysTick).
	;=========================================================

SysTick_CTRL      EQU 0x000              ; Offset: 0x000 (R/W)  SysTick Control and Status Register 
SysTick_LOAD      EQU 0x004              ; Offset: 0x004 (R/W)  SysTick Reload Value Register       
SysTick_VAL       EQU 0x008              ; Offset: 0x008 (R/W)  SysTick Current Value Register      
SysTick_CALIB     EQU 0x00C              ; Offset: 0x00C (R/ )  SysTick Calibration Register        

; SysTick Control / Status Register Definitions 
SysTick_CTRL_COUNTFLAG_Pos         EQU 16                                             ; SysTick CTRL: COUNTFLAG Position 
SysTick_CTRL_COUNTFLAG_Msk         EQU (0x1 << SysTick_CTRL_COUNTFLAG_Pos)            ; SysTick CTRL: COUNTFLAG Mask 

SysTick_CTRL_CLKSOURCE_Pos         EQU  2                                             ; SysTick CTRL: CLKSOURCE Position 
SysTick_CTRL_CLKSOURCE_Msk         EQU (0x1 << SysTick_CTRL_CLKSOURCE_Pos)            ; SysTick CTRL: CLKSOURCE Mask 

SysTick_CTRL_TICKINT_Pos           EQU  1                                             ; SysTick CTRL: TICKINT Position 
SysTick_CTRL_TICKINT_Msk           EQU (0x1 << SysTick_CTRL_TICKINT_Pos)              ; SysTick CTRL: TICKINT Mask 

SysTick_CTRL_ENABLE_Pos            EQU  0                                             ; SysTick CTRL: ENABLE Position 
SysTick_CTRL_ENABLE_Msk            EQU (0x1 << SysTick_CTRL_ENABLE_Pos)               ; SysTick CTRL: ENABLE Mask 

; SysTick Reload Register Definitions 
SysTick_LOAD_RELOAD_Pos            EQU  0                                             ; SysTick LOAD: RELOAD Position 
SysTick_LOAD_RELOAD_Msk            EQU (0xFFFFFF << SysTick_LOAD_RELOAD_Pos)        ; SysTick LOAD: RELOAD Mask 

; SysTick Current Register Definitions 
SysTick_VAL_CURRENT_Pos            EQU  0                                             ; SysTick VAL: CURRENT Position 
SysTick_VAL_CURRENT_Msk            EQU (0xFFFFFF << SysTick_VAL_CURRENT_Pos)        ; SysTick VAL: CURRENT Mask 

; SysTick Calibration Register Definitions 
SysTick_CALIB_NOREF_Pos            EQU 31                                             ; SysTick CALIB: NOREF Position 
SysTick_CALIB_NOREF_Msk            EQU (0x1 << SysTick_CALIB_NOREF_Pos)               ; SysTick CALIB: NOREF Mask 

SysTick_CALIB_SKEW_Pos             EQU 30                                             ; SysTick CALIB: SKEW Position 
SysTick_CALIB_SKEW_Msk             EQU (0x1 << SysTick_CALIB_SKEW_Pos)                ; SysTick CALIB: SKEW Mask 

SysTick_CALIB_TENMS_Pos            EQU  0                                             ; SysTick CALIB: TENMS Position 
SysTick_CALIB_TENMS_Msk            EQU (0xFFFFFF << SysTick_CALIB_TENMS_Pos)        ; SysTick CALIB: TENMS Mask 

	;CMSIS_core_register
	; CMSIS_MPU     Memory Protection Unit (MPU)
	; Type definitions for the Memory Protection Unit (MPU)
	; Structure type to access the Memory Protection Unit (MPU).
	;==============================================================
	
MPU_TYPE     EQU 0x000      ; Offset: 0x000 (R/ )  MPU Type Register                              
MPU_CTRL     EQU 0x004      ; Offset: 0x004 (R/W)  MPU Control Register                           
MPU_RNR      EQU 0x008      ; Offset: 0x008 (R/W)  MPU Region RNRber Register                     
MPU_RBAR     EQU 0x00C      ; Offset: 0x00C (R/W)  MPU Region Base Address Register               
MPU_RASR     EQU 0x010      ; Offset: 0x010 (R/W)  MPU Region Attribute and Size Register         

MPU_TYPE_RALIASES 				   EQU 1
	
	; MPU Type Register 
MPU_TYPE_IREGION_Pos               EQU 16                                             ; MPU TYPE: IREGION Position 
MPU_TYPE_IREGION_Msk               EQU (0xFF << MPU_TYPE_IREGION_Pos)               ; MPU TYPE: IREGION Mask 

MPU_TYPE_DREGION_Pos               EQU  8                                             ; MPU TYPE: DREGION Position 
MPU_TYPE_DREGION_Msk               EQU (0xFF << MPU_TYPE_DREGION_Pos)               ; MPU TYPE: DREGION Mask 

MPU_TYPE_SEPARATE_Pos              EQU  0                                             ; MPU TYPE: SEPARATE Position 
MPU_TYPE_SEPARATE_Msk              EQU (0x1 << MPU_TYPE_SEPARATE_Pos)                 ; MPU TYPE: SEPARATE Mask 

	; MPU Control Register 
MPU_CTRL_PRIVDEFENA_Pos            EQU  2                                             ; MPU CTRL: PRIVDEFENA Position 
MPU_CTRL_PRIVDEFENA_Msk            EQU (0x1 << MPU_CTRL_PRIVDEFENA_Pos)               ; MPU CTRL: PRIVDEFENA Mask 

MPU_CTRL_HFNMIENA_Pos              EQU  1                                             ; MPU CTRL: HFNMIENA Position 
MPU_CTRL_HFNMIENA_Msk              EQU (0x1 << MPU_CTRL_HFNMIENA_Pos)                 ; MPU CTRL: HFNMIENA Mask 

MPU_CTRL_ENABLE_Pos                EQU  0                                             ; MPU CTRL: ENABLE Position 
MPU_CTRL_ENABLE_Msk                EQU (0x1 << MPU_CTRL_ENABLE_Pos)                   ; MPU CTRL: ENABLE Mask 

	; MPU Region Number Register 
MPU_RNR_REGION_Pos                 EQU  0                                             ; MPU RNR: REGION Position 
MPU_RNR_REGION_Msk                 EQU (0xFF << MPU_RNR_REGION_Pos)                 ; MPU RNR: REGION Mask 

	; MPU Region Base Address Register 
MPU_RBAR_ADDR_Pos                  EQU  8                                             ; MPU RBAR: ADDR Position 
MPU_RBAR_ADDR_Msk                  EQU (0xFFFFFF << MPU_RBAR_ADDR_Pos)             ; MPU RBAR: ADDR Mask 

MPU_RBAR_VALID_Pos                 EQU  4                                             ; MPU RBAR: VALID Position 
MPU_RBAR_VALID_Msk                 EQU (0x1 << MPU_RBAR_VALID_Pos)                    ; MPU RBAR: VALID Mask 

MPU_RBAR_REGION_Pos                EQU  0                                             ; MPU RBAR: REGION Position 
MPU_RBAR_REGION_Msk                EQU (0xF << MPU_RBAR_REGION_Pos)                 ; MPU RBAR: REGION Mask 


	; MPU Region Attribute and Size Register 
MPU_RASR_ATTRS_Pos                 EQU 16                                             ; MPU RASR: MPU Region Attribute field Position 
MPU_RASR_ATTRS_Msk                 EQU (0xFFFF << MPU_RASR_ATTRS_Pos)               ; MPU RASR: MPU Region Attribute field Mask 

MPU_RASR_XN_Pos                    EQU 28                                             ; MPU RASR: ATTRS.XN Position 
MPU_RASR_XN_Msk                    EQU (0x1 << MPU_RASR_XN_Pos)                       ; MPU RASR: ATTRS.XN Mask 

MPU_RASR_AP_Pos                    EQU 24                                             ; MPU RASR: ATTRS.AP Position 
MPU_RASR_AP_Msk                    EQU (0x7 << MPU_RASR_AP_Pos)                     ; MPU RASR: ATTRS.AP Mask 

MPU_RASR_TEX_Pos                   EQU 19                                             ; MPU RASR: ATTRS.TEX Position 
MPU_RASR_TEX_Msk                   EQU (0x7 << MPU_RASR_TEX_Pos)                    ; MPU RASR: ATTRS.TEX Mask 

MPU_RASR_S_Pos                     EQU 18                                             ; MPU RASR: ATTRS.S Position 
MPU_RASR_S_Msk                     EQU (0x1 << MPU_RASR_S_Pos)                        ; MPU RASR: ATTRS.S Mask 

MPU_RASR_C_Pos                     EQU 17                                             ; MPU RASR: ATTRS.C Position 
MPU_RASR_C_Msk                     EQU (0x1 << MPU_RASR_C_Pos)                        ; MPU RASR: ATTRS.C Mask 

MPU_RASR_B_Pos                     EQU 16                                             ; MPU RASR: ATTRS.B Position 
MPU_RASR_B_Msk                     EQU (0x1 << MPU_RASR_B_Pos)                        ; MPU RASR: ATTRS.B Mask 

MPU_RASR_SRD_Pos                   EQU  8                                             ; MPU RASR: Sub-Region Disable Position 
MPU_RASR_SRD_Msk                   EQU (0xFF << MPU_RASR_SRD_Pos)                   ; MPU RASR: Sub-Region Disable Mask 

MPU_RASR_SIZE_Pos                  EQU  1                                             ; MPU RASR: Region Size Field Position 
MPU_RASR_SIZE_Msk                  EQU (0x1F << MPU_RASR_SIZE_Pos)                  ; MPU RASR: Region Size Field Mask 

MPU_RASR_ENABLE_Pos                EQU  0                                             ; MPU RASR: Region enable bit Position 
MPU_RASR_ENABLE_Msk                EQU (0x1 << MPU_RASR_ENABLE_Pos)                   ; MPU RASR: Region enable bit Disable Mask 


	;Structure type to access the Nested Vectored Interrupt Controller (NVIC).
	;=========================================================================
	
NVIC_ISER          EQU  0x000  ; Offset: 0x000 (R/W)  Interrupt Set Enable Register           
NVIC_ICER          EQU  0x080  ; Offset: 0x080 (R/W)  Interrupt Clear Enable Register         
NVIC_ISPR          EQU  0x100  ; Offset: 0x100 (R/W)  Interrupt Set Pending Register          
NVIC_ICPR          EQU  0x180  ; Offset: 0x180 (R/W)  Interrupt Clear Pending Register        
NVIC_IABR          EQU  0x200  ; Offset: 0x200 (R/W)  Interrupt Active bit Register           
NVIC_IP            EQU  0x300  ; Offset: 0x300 (R/W)  Interrupt Priority Register (8Bit wide) 



;******************************************************************************************************
; Memory mapping of Cortex-M0 plus Hardware :


;******************************************************************************************************


SCS_BASE            EQU (0xE000E000)             	; /*!< System Control Space Base Address */
SysTick_BASE        EQU (SCS_BASE +  0x0010)      	; /*!< SysTick Base Address */
NVIC_BASE           EQU (SCS_BASE +  0x0100)      	; /*!< NVIC Base Address */
SCB_BASE            EQU (SCS_BASE +  0x0D00)      	;/*!< System Control Block Base Address */

SCB                 EQU (     SCB_BASE      )   	; SCB configuration struct     #define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct */
SysTick             equ (     SysTick_BASE  )   	; SysTick configuration struct     #define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration struct */
NVIC                EQU (     NVIC_BASE     )   	; NVIC configuration struct    #define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struct */

 

;#if defined (__MPU_PRESENT) && (__MPU_PRESENT == 1U)
;  #define MPU_BASE          (SCS_BASE +  0x0D90UL)                    /*!< Memory Protection Unit */
;  #define MPU               ((MPU_Type       *)     MPU_BASE      )   /*!< Memory Protection Unit */
;#endif
MPU_BASE            EQU (SCS_BASE +  0x0D90)                    ; Memory Protection Unit             
MPU                 EQU (      MPU_BASE      )   ; Memory Protection Unit   

; This following is added to remove the compiler warning.
    AREA    __DEFINES_STM32G0_CORE_M0_Plus_xx_DUMMY, CODE, READONLY
    END
