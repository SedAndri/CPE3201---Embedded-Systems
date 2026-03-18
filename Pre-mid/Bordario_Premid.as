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
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_delay
	FNCALL	_main,_display_counter
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_delay_ms
	FNCALL	_initLCD,_instCtrl
	FNCALL	_display_counter,___awdiv
	FNCALL	_display_counter,___awmod
	FNCALL	_display_counter,_dataCtrl
	FNCALL	_display_counter,_instCtrl
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_counter
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	20

;initializer for _counter
	retlw	0Eh
	global	_myINTF
	global	_myTMR0IF
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RB0
_RB0	set	0x30
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_INTEDG
_INTEDG	set	0x40E
; #config settings
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
	file	"Bordario_Premid.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_myINTF:
       ds      1

_myTMR0IF:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	20
_counter:
       ds      1

	file	"Bordario_Premid.as"
	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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
?_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_display_counter:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	5
?_delay_ms:	; 0 bytes @ 0x5
??_instCtrl:	; 0 bytes @ 0x5
??_dataCtrl:	; 0 bytes @ 0x5
?_delay:	; 0 bytes @ 0x5
??___awdiv:	; 0 bytes @ 0x5
??___awmod:	; 0 bytes @ 0x5
	global	delay_ms@ms
delay_ms@ms:	; 2 bytes @ 0x5
	global	delay@count
delay@count:	; 2 bytes @ 0x5
	ds	2
??_initLCD:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_delay_ms:	; 0 bytes @ 0x0
??_delay:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	instCtrl@cmd
instCtrl@cmd:	; 1 bytes @ 0x0
	global	dataCtrl@data
dataCtrl@data:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	delay@of_count
delay@of_count:	; 2 bytes @ 0x1
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
??_display_counter:	; 0 bytes @ 0x8
	ds	3
	global	display_counter@tens
display_counter@tens:	; 1 bytes @ 0xB
	ds	1
	global	display_counter@ones
display_counter@ones:	; 1 bytes @ 0xC
	ds	1
	global	display_counter@value
display_counter@value:	; 1 bytes @ 0xD
	ds	1
??_main:	; 0 bytes @ 0xE
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       9
;!    BANK0            80     15      15
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
;!    _main->_dataCtrl
;!    _main->_delay
;!    _main->_instCtrl
;!    _initLCD->_delay_ms
;!    _initLCD->_instCtrl
;!    _display_counter->_dataCtrl
;!    _display_counter->_instCtrl
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_display_counter
;!    _initLCD->_delay_ms
;!    _display_counter->___awdiv
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
;! (0) _main                                                 1     1      0    1688
;!                                             14 BANK0      1     1      0
;!                           _dataCtrl
;!                              _delay
;!                    _display_counter
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     163
;!                           _delay_ms
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             4     2      2     132
;!                                              5 COMMON     2     0      2
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _display_counter                                      6     6      0    1330
;!                                              8 BANK0      6     6      0
;!                            ___awdiv
;!                            ___awmod
;!                           _dataCtrl
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             3     3      0      31
;!                                              5 COMMON     2     2      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             3     3      0      31
;!                                              5 COMMON     2     2      0
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     563
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     575
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2     133
;!                                              5 COMMON     2     0      2
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!   _delay
;!   _display_counter
;!     ___awdiv
;!     ___awmod
;!     _dataCtrl
;!     _instCtrl
;!   _initLCD
;!     _delay_ms
;!     _instCtrl
;!   _instCtrl
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      F       F       5       18.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       9       1       64.3%
;!BITCOMMON            E      0       1       0        7.1%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      18      12        0.0%
;!ABS                  0      0      18       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 101 in file "Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_display_counter
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	101
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	101
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	102
	
l1023:	
;Bordario_Premid.c: 102: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	103
	
l1025:	
;Bordario_Premid.c: 103: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	104
	
l1027:	
;Bordario_Premid.c: 104: TRISD = 0x1F;
	movlw	(01Fh)
	movwf	(136)^080h	;volatile
	line	106
	
l1029:	
;Bordario_Premid.c: 106: INTEDG = 1;
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	107
	
l1031:	
;Bordario_Premid.c: 107: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	108
	
l1033:	
;Bordario_Premid.c: 108: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	110
	
l1035:	
;Bordario_Premid.c: 110: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	111
	
l1037:	
;Bordario_Premid.c: 111: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	113
	
l1039:	
;Bordario_Premid.c: 113: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	114
;Bordario_Premid.c: 114: PORTC = 0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	116
	
l1041:	
;Bordario_Premid.c: 116: initLCD();
	fcall	_initLCD
	line	117
	
l1043:	
;Bordario_Premid.c: 117: instCtrl(0xC6);
	movlw	(0C6h)
	fcall	_instCtrl
	line	119
	
l1045:	
;Bordario_Premid.c: 119: dataCtrl('T');
	movlw	(054h)
	fcall	_dataCtrl
	line	120
	
l1047:	
;Bordario_Premid.c: 120: dataCtrl('I');
	movlw	(049h)
	fcall	_dataCtrl
	line	121
	
l1049:	
;Bordario_Premid.c: 121: dataCtrl('M');
	movlw	(04Dh)
	fcall	_dataCtrl
	line	122
	
l1051:	
;Bordario_Premid.c: 122: dataCtrl('E');
	movlw	(045h)
	fcall	_dataCtrl
	line	123
	
l1053:	
;Bordario_Premid.c: 123: dataCtrl('R');
	movlw	(052h)
	fcall	_dataCtrl
	line	125
	
l1055:	
;Bordario_Premid.c: 125: instCtrl(0x9B);
	movlw	(09Bh)
	fcall	_instCtrl
	line	126
	
l1057:	
;Bordario_Premid.c: 126: dataCtrl('1');
	movlw	(031h)
	fcall	_dataCtrl
	line	127
	
l1059:	
;Bordario_Premid.c: 127: dataCtrl('4');
	movlw	(034h)
	fcall	_dataCtrl
	line	130
	
l1061:	
;Bordario_Premid.c: 130: counter = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_counter)
	line	132
	
l1063:	
;Bordario_Premid.c: 132: OPTION_REG = 0xC4;
	movlw	(0C4h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	goto	l1065
	line	133
;Bordario_Premid.c: 133: while(1){
	
l80:	
	line	134
	
l1065:	
;Bordario_Premid.c: 134: if(RB0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u761
	goto	u760
u761:
	goto	l1075
u760:
	line	136
	
l1067:	
;Bordario_Premid.c: 136: if(counter > 0x00){
	movf	(_counter),w
	skipz
	goto	u770
	goto	l1065
u770:
	line	137
	
l1069:	
;Bordario_Premid.c: 137: counter--;
	movlw	low(01h)
	subwf	(_counter),f
	line	138
	
l1071:	
;Bordario_Premid.c: 138: display_counter(counter);
	movf	(_counter),w
	fcall	_display_counter
	line	139
	
l1073:	
;Bordario_Premid.c: 139: delay(79);
	movlw	low(04Fh)
	movwf	(delay@count)
	movlw	high(04Fh)
	movwf	((delay@count))+1
	fcall	_delay
	line	140
;Bordario_Premid.c: 140: }
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1065
	line	141
	
l82:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1065
	line	143
;Bordario_Premid.c: 141: else{
	
l83:	
	line	144
;Bordario_Premid.c: 143: }
;Bordario_Premid.c: 144: }
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1065
	line	145
	
l81:	
	line	147
	
l1075:	
;Bordario_Premid.c: 145: else{
;Bordario_Premid.c: 147: if(counter != 0x0E){
	movf	(_counter),w
	xorlw	0Eh
	skipnz
	goto	u781
	goto	u780
u781:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1065
u780:
	line	148
	
l1077:	
;Bordario_Premid.c: 148: counter = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_counter)
	line	149
	
l1079:	
;Bordario_Premid.c: 149: display_counter(counter);
	movf	(_counter),w
	fcall	_display_counter
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1065
	line	150
	
l85:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1065
	line	151
	
l84:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1065
	line	152
	
l86:	
	line	133
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1065
	
l87:	
	line	153
	
l88:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 69 in file "Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	69
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	69
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	71
	
l1013:	
;Bordario_Premid.c: 71: delay_ms(20);
	movlw	low(014h)
	movwf	(delay_ms@ms)
	movlw	high(014h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	72
;Bordario_Premid.c: 72: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	73
;Bordario_Premid.c: 73: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	74
;Bordario_Premid.c: 74: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	75
;Bordario_Premid.c: 75: delay_ms(2);
	movlw	low(02h)
	movwf	(delay_ms@ms)
	movlw	high(02h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	76
;Bordario_Premid.c: 76: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	77
;Bordario_Premid.c: 77: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	78
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 42 in file "Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;  ms              2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	42
global __ptext2
__ptext2:	;psect for function _delay_ms
psect	text2
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	42
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 5
; Regs used in _delay_ms: [wreg]
	line	44
	
l907:	
;Bordario_Premid.c: 44: while(ms--)
	goto	l55
	
l56:	
	line	45
	
l909:	
;Bordario_Premid.c: 45: _delay((unsigned long)((1)*(40000000/4000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_delay_ms+0)+0+1),f
	movlw	251
movwf	((??_delay_ms+0)+0),f
u797:
	decfsz	((??_delay_ms+0)+0),f
	goto	u797
	decfsz	((??_delay_ms+0)+0+1),f
	goto	u797
	nop2
opt asmopt_on

	
l55:	
	line	44
	movlw	low(01h)
	subwf	(delay_ms@ms),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms+1),f
	subwf	(delay_ms@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay_ms@ms+1)),w
	skipz
	goto	u545
	movlw	low(0FFFFh)
	xorwf	((delay_ms@ms)),w
u545:

	skipz
	goto	u541
	goto	u540
u541:
	goto	l909
u540:
	goto	l58
	
l57:	
	line	46
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_display_counter

;; *************** function _display_counter *****************
;; Defined at:
;;		line 90 in file "Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   13[BANK0 ] unsigned char 
;;  ones            1   12[BANK0 ] unsigned char 
;;  tens            1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_dataCtrl
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	90
global __ptext3
__ptext3:	;psect for function _display_counter
psect	text3
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	90
	global	__size_of_display_counter
	__size_of_display_counter	equ	__end_of_display_counter-_display_counter
	
_display_counter:	
;incstack = 0
	opt	stack 5
; Regs used in _display_counter: [wreg+status,2+status,0+pclath+cstack]
;display_counter@value stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display_counter@value)
	line	92
	
l1021:	
;Bordario_Premid.c: 92: unsigned char tens = value / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(display_counter@value),w
	movwf	(??_display_counter+0)+0
	clrf	(??_display_counter+0)+0+1
	movf	0+(??_display_counter+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_display_counter+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_display_counter+2)+0
	movf	(??_display_counter+2)+0,w
	movwf	(display_counter@tens)
	line	93
;Bordario_Premid.c: 93: unsigned char ones = value % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(display_counter@value),w
	movwf	(??_display_counter+0)+0
	clrf	(??_display_counter+0)+0+1
	movf	0+(??_display_counter+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_display_counter+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_display_counter+2)+0
	movf	(??_display_counter+2)+0,w
	movwf	(display_counter@ones)
	line	96
;Bordario_Premid.c: 96: instCtrl(0x9B);
	movlw	(09Bh)
	fcall	_instCtrl
	line	97
;Bordario_Premid.c: 97: dataCtrl('0' + tens);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_counter@tens),w
	addlw	030h
	fcall	_dataCtrl
	line	98
;Bordario_Premid.c: 98: dataCtrl('0' + ones);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_counter@ones),w
	addlw	030h
	fcall	_dataCtrl
	line	99
	
l77:	
	return
	opt stack 0
GLOBAL	__end_of_display_counter
	__end_of_display_counter:
	signat	_display_counter,4216
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 48 in file "Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;;		_display_counter
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	48
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	48
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg]
;instCtrl@cmd stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@cmd)
	line	50
	
l911:	
;Bordario_Premid.c: 50: PORTC = cmd;
	movf	(instCtrl@cmd),w
	movwf	(7)	;volatile
	line	51
	
l913:	
;Bordario_Premid.c: 51: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	52
	
l915:	
;Bordario_Premid.c: 52: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	53
	
l917:	
;Bordario_Premid.c: 53: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	54
;Bordario_Premid.c: 54: _delay((unsigned long)((2)*(40000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_instCtrl+0)+0+1),f
	movlw	248
movwf	((??_instCtrl+0)+0),f
u807:
	decfsz	((??_instCtrl+0)+0),f
	goto	u807
	decfsz	((??_instCtrl+0)+0+1),f
	goto	u807
	nop
opt asmopt_on

	line	55
	
l919:	
;Bordario_Premid.c: 55: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	57
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 59 in file "Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_counter
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	59
global __ptext5
__ptext5:	;psect for function _dataCtrl
psect	text5
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	59
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg]
;dataCtrl@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@data)
	line	61
	
l921:	
;Bordario_Premid.c: 61: PORTC = data;
	movf	(dataCtrl@data),w
	movwf	(7)	;volatile
	line	62
	
l923:	
;Bordario_Premid.c: 62: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	63
	
l925:	
;Bordario_Premid.c: 63: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	64
	
l927:	
;Bordario_Premid.c: 64: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	65
;Bordario_Premid.c: 65: _delay((unsigned long)((2)*(40000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_dataCtrl+0)+0+1),f
	movlw	248
movwf	((??_dataCtrl+0)+0),f
u817:
	decfsz	((??_dataCtrl+0)+0),f
	goto	u817
	decfsz	((??_dataCtrl+0)+0+1),f
	goto	u817
	nop
opt asmopt_on

	line	66
	
l929:	
;Bordario_Premid.c: 66: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	67
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_counter
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___awmod
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l975:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l977:	
	btfss	(___awmod@dividend+1),7
	goto	u651
	goto	u650
u651:
	goto	l983
u650:
	line	15
	
l979:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l981:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l983
	line	17
	
l307:	
	line	18
	
l983:	
	btfss	(___awmod@divisor+1),7
	goto	u661
	goto	u660
u661:
	goto	l987
u660:
	line	19
	
l985:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l987
	
l308:	
	line	20
	
l987:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u671
	goto	u670
u671:
	goto	l1005
u670:
	line	21
	
l989:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l995
	
l311:	
	line	23
	
l991:	
	movlw	01h
	
u685:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u685
	line	24
	
l993:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l995
	line	25
	
l310:	
	line	22
	
l995:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u691
	goto	u690
u691:
	goto	l991
u690:
	goto	l997
	
l312:	
	goto	l997
	line	26
	
l313:	
	line	27
	
l997:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u705
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u705:
	skipc
	goto	u701
	goto	u700
u701:
	goto	l1001
u700:
	line	28
	
l999:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1001
	
l314:	
	line	29
	
l1001:	
	movlw	01h
	
u715:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u715
	line	30
	
l1003:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u721
	goto	u720
u721:
	goto	l997
u720:
	goto	l1005
	
l315:	
	goto	l1005
	line	31
	
l309:	
	line	32
	
l1005:	
	movf	(___awmod@sign),w
	skipz
	goto	u730
	goto	l1009
u730:
	line	33
	
l1007:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1009
	
l316:	
	line	34
	
l1009:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l317
	
l1011:	
	line	35
	
l317:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       8       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_counter
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___awdiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l931:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l933:	
	btfss	(___awdiv@divisor+1),7
	goto	u551
	goto	u550
u551:
	goto	l939
u550:
	line	16
	
l935:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l937:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l939
	line	18
	
l294:	
	line	19
	
l939:	
	btfss	(___awdiv@dividend+1),7
	goto	u561
	goto	u560
u561:
	goto	l945
u560:
	line	20
	
l941:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l943:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l945
	line	22
	
l295:	
	line	23
	
l945:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l947:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u571
	goto	u570
u571:
	goto	l967
u570:
	line	25
	
l949:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l955
	
l298:	
	line	27
	
l951:	
	movlw	01h
	
u585:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u585
	line	28
	
l953:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l955
	line	29
	
l297:	
	line	26
	
l955:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u591
	goto	u590
u591:
	goto	l951
u590:
	goto	l957
	
l299:	
	goto	l957
	line	30
	
l300:	
	line	31
	
l957:	
	movlw	01h
	
u605:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u605
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u615
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u615:
	skipc
	goto	u611
	goto	u610
u611:
	goto	l963
u610:
	line	33
	
l959:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l961:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l963
	line	35
	
l301:	
	line	36
	
l963:	
	movlw	01h
	
u625:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u625
	line	37
	
l965:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u631
	goto	u630
u631:
	goto	l957
u630:
	goto	l967
	
l302:	
	goto	l967
	line	38
	
l296:	
	line	39
	
l967:	
	movf	(___awdiv@sign),w
	skipz
	goto	u640
	goto	l971
u640:
	line	40
	
l969:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l971
	
l303:	
	line	41
	
l971:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l304
	
l973:	
	line	42
	
l304:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 80 in file "Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;  count           2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  of_count        2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	80
global __ptext8
__ptext8:	;psect for function _delay
psect	text8
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	80
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	81
	
l1015:	
;Bordario_Premid.c: 81: int of_count = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@of_count)
	clrf	(delay@of_count+1)
	line	82
;Bordario_Premid.c: 82: while (of_count < count){
	goto	l70
	
l71:	
	line	83
;Bordario_Premid.c: 83: if (myTMR0IF){
	btfss	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	u741
	goto	u740
u741:
	goto	l70
u740:
	line	84
	
l1017:	
;Bordario_Premid.c: 84: of_count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@of_count),f
	skipnc
	incf	(delay@of_count+1),f
	movlw	high(01h)
	addwf	(delay@of_count+1),f
	line	85
	
l1019:	
;Bordario_Premid.c: 85: myTMR0IF = 0;
	bcf	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	l70
	line	86
	
l72:	
	line	87
	
l70:	
	line	82
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@of_count+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@count+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u755
	movf	(delay@count),w
	subwf	(delay@of_count),w
u755:

	skipc
	goto	u751
	goto	u750
u751:
	goto	l71
u750:
	goto	l74
	
l73:	
	line	88
	
l74:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 22 in file "Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	22
global __ptext9
__ptext9:	;psect for function _ISR
psect	text9
	file	"Z:\CPE3201 - Bordario\Pre-mid\Bordario_Premid.c"
	line	22
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 5
; Regs used in _ISR: [wreg+status,2+status,0]
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
psect	text9
	line	23
	
i1l661:	
;Bordario_Premid.c: 23: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	24
;Bordario_Premid.c: 24: if(INTF){
	btfss	(89/8),(89)&7	;volatile
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l45
u23_20:
	line	25
	
i1l663:	
;Bordario_Premid.c: 25: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	27
	
i1l665:	
;Bordario_Premid.c: 27: if(PORTB == 0x00) { PORTC = 0x01; counter = 0x01; }
	movf	(6),w	;volatile
	skipz
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l671
u24_20:
	
i1l667:	
	movlw	(01h)
	movwf	(7)	;volatile
	
i1l669:	
	clrf	(_counter)
	incf	(_counter),f
	goto	i1l49
	line	29
	
i1l46:	
	
i1l671:	
;Bordario_Premid.c: 29: else if(PORTD == 0x0D) { PORTC = 0x00; counter = 0x0E; }
	movf	(8),w	;volatile
	xorlw	0Dh
	skipz
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l49
u25_20:
	
i1l673:	
	clrf	(7)	;volatile
	
i1l675:	
	movlw	(0Eh)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_counter)
	goto	i1l49
	
i1l48:	
	goto	i1l49
	line	31
	
i1l47:	
;Bordario_Premid.c: 31: } else if(TMR0IF){
	goto	i1l49
	
i1l45:	
	btfss	(90/8),(90)&7	;volatile
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l49
u26_20:
	line	32
	
i1l677:	
;Bordario_Premid.c: 32: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	33
;Bordario_Premid.c: 33: myTMR0IF = 1;
	bsf	(_myTMR0IF/8),(_myTMR0IF)&7
	goto	i1l49
	line	34
	
i1l50:	
	line	36
	
i1l49:	
;Bordario_Premid.c: 34: }
;Bordario_Premid.c: 36: if(RB0){
	line	38
	
i1l51:	
	line	39
;Bordario_Premid.c: 38: }
;Bordario_Premid.c: 39: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	40
	
i1l52:	
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
