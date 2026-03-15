opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_overflow_count
	global	_count_flag
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PORTAbits
_PORTAbits	set	0x5
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_TRISAbits
_TRISAbits	set	0x85
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _ISR
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"Bordario_PA3-2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_overflow_count:
       ds      2

_count_flag:
       ds      1

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_delay:	; 0 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	ds	5
	global	ISR@code
ISR@code:	; 1 bytes @ 0x5
	ds	1
	global	ISR@digit
ISR@digit:	; 1 bytes @ 0x6
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_delay:	; 0 bytes @ 0x0
??_main:	; 0 bytes @ 0x0
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      10
;!    BANK0            80      1       1
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0       0
;!                                              0 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  7     7      0      30
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       B       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      1       1       5        1.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       B      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 65 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\PracticalActivities\PA3\Bordario_PA3-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   51[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\PracticalActivities\PA3\Bordario_PA3-2.c"
	line	65
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\PracticalActivities\PA3\Bordario_PA3-2.c"
	line	65
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l642:	
;Bordario_PA3-2.c: 67: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	68
	
l644:	
;Bordario_PA3-2.c: 68: TRISAbits.TRISA0 = 0;
	bcf	(133)^080h,0	;volatile
	line	69
	
l646:	
;Bordario_PA3-2.c: 69: TRISBbits.TRISB0 = 1;
	bsf	(134)^080h,0	;volatile
	line	70
	
l648:	
;Bordario_PA3-2.c: 70: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	71
	
l650:	
;Bordario_PA3-2.c: 71: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	73
	
l652:	
;Bordario_PA3-2.c: 73: PORTAbits.RA0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(5),0	;volatile
	line	74
;Bordario_PA3-2.c: 74: PORTC = 0x00;
	clrf	(7)	;volatile
	line	77
	
l654:	
;Bordario_PA3-2.c: 77: OPTION_REGbits.INTEDG = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(129)^080h,6	;volatile
	line	78
	
l656:	
;Bordario_PA3-2.c: 78: INTCONbits.INTE = 1;
	bsf	(11),4	;volatile
	line	79
	
l658:	
;Bordario_PA3-2.c: 79: INTCONbits.INTF = 0;
	bcf	(11),1	;volatile
	line	82
	
l660:	
;Bordario_PA3-2.c: 82: OPTION_REGbits.T0CS = 0;
	bcf	(129)^080h,5	;volatile
	line	83
	
l662:	
;Bordario_PA3-2.c: 83: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	84
	
l664:	
;Bordario_PA3-2.c: 84: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	85
	
l666:	
;Bordario_PA3-2.c: 85: OPTION_REGbits.PS1 = 0;
	bcf	(129)^080h,1	;volatile
	line	86
	
l668:	
;Bordario_PA3-2.c: 86: OPTION_REGbits.PS0 = 0;
	bcf	(129)^080h,0	;volatile
	line	88
	
l670:	
;Bordario_PA3-2.c: 88: INTCONbits.T0IE = 1;
	bsf	(11),5	;volatile
	line	89
	
l672:	
;Bordario_PA3-2.c: 89: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	line	91
	
l674:	
;Bordario_PA3-2.c: 91: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	goto	l676
	line	94
;Bordario_PA3-2.c: 94: while (1) {
	
l52:	
	line	95
	
l676:	
;Bordario_PA3-2.c: 95: PORTAbits.RA0 ^= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	andlw	(1<<1)-1
	movwf	((??_main+0)+0)
	movlw	low(01h)
	xorwf	(??_main+0)+0,f
	movf	(5),w	;volatile
	xorwf	((??_main+0)+0),w
	andlw	not ((1<<1)-1)
	xorwf	((??_main+0)+0),w
	movwf	(5)	;volatile
	line	96
	
l678:	
;Bordario_PA3-2.c: 96: delay();
	fcall	_delay
	goto	l676
	line	97
	
l53:	
	line	94
	goto	l676
	
l54:	
	line	100
;Bordario_PA3-2.c: 97: }
;Bordario_PA3-2.c: 99: return 0;
;	Return value of _main is never used
	
l55:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 60 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\PracticalActivities\PA3\Bordario_PA3-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	60
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\PracticalActivities\PA3\Bordario_PA3-2.c"
	line	60
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	61
	
l638:	
;Bordario_PA3-2.c: 61: count_flag = 0;
	clrf	(_count_flag)	;volatile
	line	62
;Bordario_PA3-2.c: 62: while (count_flag == 0);
	goto	l640
	
l47:	
	goto	l640
	
l46:	
	
l640:	
	movf	(_count_flag),w	;volatile
	skipz
	goto	u50
	goto	l640
u50:
	goto	l49
	
l48:	
	line	63
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 19 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\PracticalActivities\PA3\Bordario_PA3-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  digit           1    6[COMMON] unsigned char 
;;  code            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	19
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\PracticalActivities\PA3\Bordario_PA3-2.c"
	line	19
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text2
	line	20
	
i1l516:	
;Bordario_PA3-2.c: 20: INTCONbits.GIE = 0;
	bcf	(11),7	;volatile
	line	23
;Bordario_PA3-2.c: 23: if (INTCONbits.INTF) {
	btfss	(11),1	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l550
u2_20:
	line	24
	
i1l518:	
;Bordario_PA3-2.c: 24: INTCONbits.INTF = 0;
	bcf	(11),1	;volatile
	line	26
	
i1l520:	
;Bordario_PA3-2.c: 26: unsigned char code = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@code)
	line	27
	
i1l522:	
;Bordario_PA3-2.c: 27: unsigned char digit = 0;
	clrf	(ISR@digit)
	line	29
;Bordario_PA3-2.c: 29: switch (code) {
	goto	i1l546
	line	30
;Bordario_PA3-2.c: 30: case 0x00: digit = 1; break;
	
i1l29:	
	clrf	(ISR@digit)
	incf	(ISR@digit),f
	goto	i1l548
	line	31
;Bordario_PA3-2.c: 31: case 0x01: digit = 2; break;
	
i1l31:	
	
i1l524:	
	movlw	(02h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	32
;Bordario_PA3-2.c: 32: case 0x02: digit = 3; break;
	
i1l32:	
	
i1l526:	
	movlw	(03h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	33
;Bordario_PA3-2.c: 33: case 0x04: digit = 4; break;
	
i1l33:	
	
i1l528:	
	movlw	(04h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	34
;Bordario_PA3-2.c: 34: case 0x05: digit = 5; break;
	
i1l34:	
	
i1l530:	
	movlw	(05h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	35
;Bordario_PA3-2.c: 35: case 0x06: digit = 6; break;
	
i1l35:	
	
i1l532:	
	movlw	(06h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	36
;Bordario_PA3-2.c: 36: case 0x08: digit = 7; break;
	
i1l36:	
	
i1l534:	
	movlw	(07h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	37
;Bordario_PA3-2.c: 37: case 0x09: digit = 8; break;
	
i1l37:	
	
i1l536:	
	movlw	(08h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	38
;Bordario_PA3-2.c: 38: case 0x0A: digit = 9; break;
	
i1l38:	
	
i1l538:	
	movlw	(09h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	39
;Bordario_PA3-2.c: 39: case 0x0D: digit = 0; break;
	
i1l39:	
	
i1l540:	
	clrf	(ISR@digit)
	goto	i1l548
	line	40
;Bordario_PA3-2.c: 40: default: digit = PORTC; break;
	
i1l40:	
	
i1l542:	
	movf	(7),w	;volatile
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(ISR@digit)
	goto	i1l548
	line	41
	
i1l544:	
;Bordario_PA3-2.c: 41: }
	goto	i1l548
	line	29
	
i1l28:	
	
i1l546:	
	movf	(ISR@code),w
	; Switch size 1, requested type "space"
; Number of cases is 10, Range of values is 0 to 13
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           31    16 (average)
; direct_byte           50     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l29
	xorlw	1^0	; case 1
	skipnz
	goto	i1l524
	xorlw	2^1	; case 2
	skipnz
	goto	i1l526
	xorlw	4^2	; case 4
	skipnz
	goto	i1l528
	xorlw	5^4	; case 5
	skipnz
	goto	i1l530
	xorlw	6^5	; case 6
	skipnz
	goto	i1l532
	xorlw	8^6	; case 8
	skipnz
	goto	i1l534
	xorlw	9^8	; case 9
	skipnz
	goto	i1l536
	xorlw	10^9	; case 10
	skipnz
	goto	i1l538
	xorlw	13^10	; case 13
	skipnz
	goto	i1l540
	goto	i1l542
	opt asmopt_on

	line	41
	
i1l30:	
	line	42
	
i1l548:	
;Bordario_PA3-2.c: 42: PORTC = digit;
	movf	(ISR@digit),w
	movwf	(7)	;volatile
	goto	i1l550
	line	43
	
i1l27:	
	line	46
	
i1l550:	
;Bordario_PA3-2.c: 43: }
;Bordario_PA3-2.c: 46: if (INTCONbits.T0IF) {
	btfss	(11),2	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l560
u3_20:
	line	47
	
i1l552:	
;Bordario_PA3-2.c: 47: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	line	48
	
i1l554:	
;Bordario_PA3-2.c: 48: overflow_count++;
	movlw	low(01h)
	addwf	(_overflow_count),f	;volatile
	skipnc
	incf	(_overflow_count+1),f	;volatile
	movlw	high(01h)
	addwf	(_overflow_count+1),f	;volatile
	line	50
;Bordario_PA3-2.c: 50: if (overflow_count >= 122) {
	movlw	high(07Ah)
	subwf	(_overflow_count+1),w	;volatile
	movlw	low(07Ah)
	skipnz
	subwf	(_overflow_count),w	;volatile
	skipc
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l560
u4_20:
	line	51
	
i1l556:	
;Bordario_PA3-2.c: 51: count_flag = 1;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_count_flag)	;volatile
	line	52
	
i1l558:	
;Bordario_PA3-2.c: 52: overflow_count = 0;
	clrf	(_overflow_count)	;volatile
	clrf	(_overflow_count+1)	;volatile
	goto	i1l560
	line	53
	
i1l42:	
	goto	i1l560
	line	54
	
i1l41:	
	line	56
	
i1l560:	
;Bordario_PA3-2.c: 53: }
;Bordario_PA3-2.c: 54: }
;Bordario_PA3-2.c: 56: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	57
	
i1l43:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
