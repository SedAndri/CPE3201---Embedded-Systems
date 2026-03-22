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
	FNCALL	_main,_delay_ms
	FNCALL	_main,_display_counter
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_main,_read_keypad_code
	FNCALL	_read_keypad_code,_delay_ms
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
	global	_stoppedFlag
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	30

;initializer for _counter
	retlw	0Eh
	line	28

;initializer for _stoppedFlag
	retlw	01h
	global	_tmr0OvCount
	global	_countingFlag
	global	_keypadMode
	global	_rb0ToggleReq
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
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_RD4
_RD4	set	0x44
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
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_tmr0OvCount:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_countingFlag:
       ds      1

_keypadMode:
       ds      1

_rb0ToggleReq:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	30
_counter:
       ds      1

psect	dataBANK0
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	28
_stoppedFlag:
       ds      1

	file	"Bordario_Premid.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
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
?_read_keypad_code:	; 1 bytes @ 0x0
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
??_read_keypad_code:	; 0 bytes @ 0x1
	ds	1
	global	read_keypad_code@code
read_keypad_code@code:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	delay@start
delay@start:	; 2 bytes @ 0x4
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
	global	main@k2
main@k2:	; 1 bytes @ 0xF
	ds	1
	global	main@key
main@key:	; 1 bytes @ 0x10
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       9
;!    BANK0            80     17      22
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
;!    _main->_delay_ms
;!    _main->_instCtrl
;!    _read_keypad_code->_delay_ms
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
;!    _read_keypad_code->_delay_ms
;!    _initLCD->_delay_ms
;!    _initLCD->_instCtrl
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
;! (0) _main                                                 3     3      0    2720
;!                                             14 BANK0      3     3      0
;!                           _dataCtrl
;!                              _delay
;!                           _delay_ms
;!                    _display_counter
;!                            _initLCD
;!                           _instCtrl
;!                   _read_keypad_code
;! ---------------------------------------------------------------------------------
;! (1) _read_keypad_code                                     2     2      0     325
;!                                              1 BANK0      2     2      0
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     322
;!                           _delay_ms
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             3     1      2     291
;!                                              5 COMMON     2     0      2
;!                                              0 BANK0      1     1      0
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
;! (1) _delay                                                8     6      2     260
;!                                              5 COMMON     2     0      2
;!                                              0 BANK0      6     6      0
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
;!   _delay_ms
;!   _display_counter
;!     ___awdiv
;!     ___awmod
;!     _dataCtrl
;!     _instCtrl
;!   _initLCD
;!     _delay_ms
;!     _instCtrl
;!   _instCtrl
;!   _read_keypad_code
;!     _delay_ms
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
;!BANK0               50     11      16       5       27.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      7       9       1       64.3%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      1F      12        0.0%
;!ABS                  0      0      1F       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 126 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k2              1   15[BANK0 ] unsigned char 
;;  key             1   16[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;;		_delay
;;		_delay_ms
;;		_display_counter
;;		_initLCD
;;		_instCtrl
;;		_read_keypad_code
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	126
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	126
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
l1233:	
;Bordario_Premid.c: 127: TRISB = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	128
	
l1235:	
;Bordario_Premid.c: 128: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	129
	
l1237:	
;Bordario_Premid.c: 129: TRISD = 0x1F;
	movlw	(01Fh)
	movwf	(136)^080h	;volatile
	line	132
	
l1239:	
;Bordario_Premid.c: 132: INTEDG = 1;
	bsf	(1038/8)^080h,(1038)&7	;volatile
	line	133
	
l1241:	
;Bordario_Premid.c: 133: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	134
	
l1243:	
;Bordario_Premid.c: 134: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	136
	
l1245:	
;Bordario_Premid.c: 136: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	137
	
l1247:	
;Bordario_Premid.c: 137: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	139
	
l1249:	
;Bordario_Premid.c: 139: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	140
;Bordario_Premid.c: 140: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	142
	
l1251:	
;Bordario_Premid.c: 142: initLCD();
	fcall	_initLCD
	line	143
	
l1253:	
;Bordario_Premid.c: 143: instCtrl(0xC6);
	movlw	(0C6h)
	fcall	_instCtrl
	line	145
	
l1255:	
;Bordario_Premid.c: 145: dataCtrl('T');
	movlw	(054h)
	fcall	_dataCtrl
	line	146
	
l1257:	
;Bordario_Premid.c: 146: dataCtrl('I');
	movlw	(049h)
	fcall	_dataCtrl
	line	147
	
l1259:	
;Bordario_Premid.c: 147: dataCtrl('M');
	movlw	(04Dh)
	fcall	_dataCtrl
	line	148
	
l1261:	
;Bordario_Premid.c: 148: dataCtrl('E');
	movlw	(045h)
	fcall	_dataCtrl
	line	149
	
l1263:	
;Bordario_Premid.c: 149: dataCtrl('R');
	movlw	(052h)
	fcall	_dataCtrl
	line	151
	
l1265:	
;Bordario_Premid.c: 151: instCtrl(0x9B);
	movlw	(09Bh)
	fcall	_instCtrl
	line	152
	
l1267:	
;Bordario_Premid.c: 152: dataCtrl('1');
	movlw	(031h)
	fcall	_dataCtrl
	line	153
	
l1269:	
;Bordario_Premid.c: 153: dataCtrl('4');
	movlw	(034h)
	fcall	_dataCtrl
	line	155
	
l1271:	
;Bordario_Premid.c: 155: counter = 0x0E;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_counter)
	line	156
	
l1273:	
;Bordario_Premid.c: 156: countingFlag = 0;
	clrf	(_countingFlag)	;volatile
	line	157
;Bordario_Premid.c: 157: stoppedFlag = 1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_stoppedFlag)	;volatile
	line	158
	
l1275:	
;Bordario_Premid.c: 158: keypadMode = 0;
	clrf	(_keypadMode)	;volatile
	line	159
	
l1277:	
;Bordario_Premid.c: 159: rb0ToggleReq = 0;
	clrf	(_rb0ToggleReq)	;volatile
	line	160
	
l1279:	
;Bordario_Premid.c: 160: tmr0OvCount = 0;
	clrf	(_tmr0OvCount)	;volatile
	clrf	(_tmr0OvCount+1)	;volatile
	line	162
	
l1281:	
;Bordario_Premid.c: 162: OPTION_REG = 0xC4;
	movlw	(0C4h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	goto	l1283
	line	164
;Bordario_Premid.c: 164: while(1){
	
l85:	
	line	166
	
l1283:	
;Bordario_Premid.c: 166: if (rb0ToggleReq)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_rb0ToggleReq),w	;volatile
	skipz
	goto	u1040
	goto	l1297
u1040:
	line	168
	
l1285:	
;Bordario_Premid.c: 167: {
;Bordario_Premid.c: 168: rb0ToggleReq = 0;
	clrf	(_rb0ToggleReq)	;volatile
	line	170
	
l1287:	
;Bordario_Premid.c: 170: countingFlag = !countingFlag;
	movf	(_countingFlag)	;volatile
	movlw	0
	skipnz
	movlw	1
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_countingFlag)	;volatile
	line	171
	
l1289:	
;Bordario_Premid.c: 171: if (countingFlag)
	movf	(_countingFlag),w	;volatile
	skipz
	goto	u1050
	goto	l1293
u1050:
	line	173
	
l1291:	
;Bordario_Premid.c: 172: {
;Bordario_Premid.c: 173: stoppedFlag = 0;
	clrf	(_stoppedFlag)	;volatile
	line	174
;Bordario_Premid.c: 174: keypadMode = 0;
	clrf	(_keypadMode)	;volatile
	line	175
;Bordario_Premid.c: 175: }
	goto	l1295
	line	176
	
l87:	
	line	178
	
l1293:	
;Bordario_Premid.c: 176: else
;Bordario_Premid.c: 177: {
;Bordario_Premid.c: 178: stoppedFlag = 1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_stoppedFlag)	;volatile
	goto	l1295
	line	179
	
l88:	
	line	182
	
l1295:	
;Bordario_Premid.c: 179: }
;Bordario_Premid.c: 182: delay_ms(120);
	movlw	low(078h)
	movwf	(delay_ms@ms)
	movlw	high(078h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1297
	line	183
	
l86:	
	line	185
	
l1297:	
;Bordario_Premid.c: 183: }
;Bordario_Premid.c: 185: if (countingFlag && !stoppedFlag){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_countingFlag),w	;volatile
	skipz
	goto	u1060
	goto	l1311
u1060:
	
l1299:	
	movf	(_stoppedFlag),f	;volatile
	skipz
	goto	u1071
	goto	u1070
u1071:
	goto	l1311
u1070:
	line	186
	
l1301:	
;Bordario_Premid.c: 186: delay(79);
	movlw	low(04Fh)
	movwf	(delay@count)
	movlw	high(04Fh)
	movwf	((delay@count))+1
	fcall	_delay
	line	188
	
l1303:	
;Bordario_Premid.c: 188: if (counter > 0x00){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_counter),w
	skipz
	goto	u1080
	goto	l1307
u1080:
	line	189
	
l1305:	
;Bordario_Premid.c: 189: counter--;
	movlw	low(01h)
	subwf	(_counter),f
	line	190
;Bordario_Premid.c: 190: }
	goto	l1309
	line	191
	
l90:	
	line	192
	
l1307:	
;Bordario_Premid.c: 191: else{
;Bordario_Premid.c: 192: counter = 0x0E;
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_counter)
	goto	l1309
	line	193
	
l91:	
	line	195
	
l1309:	
;Bordario_Premid.c: 193: }
;Bordario_Premid.c: 195: display_counter(counter);
	movf	(_counter),w
	fcall	_display_counter
	line	196
;Bordario_Premid.c: 196: }
	goto	l1283
	line	197
	
l89:	
	
l1311:	
;Bordario_Premid.c: 197: else if (stoppedFlag){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_stoppedFlag),w	;volatile
	skipz
	goto	u1090
	goto	l1283
u1090:
	line	198
	
l1313:	
;Bordario_Premid.c: 198: unsigned char key = read_keypad_code();
	fcall	_read_keypad_code
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@key)
	line	200
	
l1315:	
;Bordario_Premid.c: 200: if (key == 0x0D){
	movf	(main@key),w
	xorlw	0Dh
	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l1323
u1100:
	line	201
	
l1317:	
;Bordario_Premid.c: 201: counter = 0x0E;
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_counter)
	line	202
	
l1319:	
;Bordario_Premid.c: 202: display_counter(counter);
	movf	(_counter),w
	fcall	_display_counter
	line	203
	
l1321:	
;Bordario_Premid.c: 203: keypadMode = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_keypadMode)	;volatile
	line	204
;Bordario_Premid.c: 204: }
	goto	l95
	line	205
	
l94:	
	
l1323:	
;Bordario_Premid.c: 205: else if (key == 0x0C){
	movf	(main@key),w
	xorlw	0Ch
	skipz
	goto	u1111
	goto	u1110
u1111:
	goto	l1327
u1110:
	line	206
	
l1325:	
;Bordario_Premid.c: 206: keypadMode = 1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_keypadMode)	;volatile
	line	207
;Bordario_Premid.c: 207: }
	goto	l95
	line	208
	
l96:	
	
l1327:	
;Bordario_Premid.c: 208: else if (key == 0x0E){
	movf	(main@key),w
	xorlw	0Eh
	skipz
	goto	u1121
	goto	u1120
u1121:
	goto	l95
u1120:
	line	209
	
l1329:	
;Bordario_Premid.c: 209: keypadMode = 2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_keypadMode)	;volatile
	goto	l95
	line	210
	
l98:	
	goto	l95
	line	212
	
l97:	
	
l95:	
;Bordario_Premid.c: 210: }
;Bordario_Premid.c: 212: if (keypadMode == 1){
	movf	(_keypadMode),w	;volatile
	xorlw	01h
	skipz
	goto	u1131
	goto	u1130
u1131:
	goto	l1343
u1130:
	line	213
	
l1331:	
;Bordario_Premid.c: 213: delay(79);
	movlw	low(04Fh)
	movwf	(delay@count)
	movlw	high(04Fh)
	movwf	((delay@count))+1
	fcall	_delay
	line	215
	
l1333:	
;Bordario_Premid.c: 215: if (counter > 0x00){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_counter),w
	skipz
	goto	u1140
	goto	l1337
u1140:
	line	216
	
l1335:	
;Bordario_Premid.c: 216: counter--;
	movlw	low(01h)
	subwf	(_counter),f
	line	217
;Bordario_Premid.c: 217: }
	goto	l1341
	line	218
	
l100:	
	line	219
	
l1337:	
;Bordario_Premid.c: 218: else{
;Bordario_Premid.c: 219: counter = 0x0E;
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_counter)
	line	220
	
l1339:	
;Bordario_Premid.c: 220: keypadMode = 0;
	clrf	(_keypadMode)	;volatile
	goto	l1341
	line	221
	
l101:	
	line	222
	
l1341:	
;Bordario_Premid.c: 221: }
;Bordario_Premid.c: 222: display_counter(counter);
	movf	(_counter),w
	fcall	_display_counter
	line	223
;Bordario_Premid.c: 223: }
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1283
	line	224
	
l99:	
	
l1343:	
;Bordario_Premid.c: 224: else if (keypadMode == 2){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_keypadMode),w	;volatile
	xorlw	02h
	skipz
	goto	u1151
	goto	u1150
u1151:
	goto	l1283
u1150:
	line	225
	
l1345:	
;Bordario_Premid.c: 225: delay(79);
	movlw	low(04Fh)
	movwf	(delay@count)
	movlw	high(04Fh)
	movwf	((delay@count))+1
	fcall	_delay
	line	227
;Bordario_Premid.c: 227: unsigned char k2 = read_keypad_code();
	fcall	_read_keypad_code
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@k2)
	line	228
	
l1347:	
;Bordario_Premid.c: 228: if (k2 == 0x0D){
	movf	(main@k2),w
	xorlw	0Dh
	skipz
	goto	u1161
	goto	u1160
u1161:
	goto	l1355
u1160:
	line	229
	
l1349:	
;Bordario_Premid.c: 229: counter = 0x0E;
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_counter)
	line	230
	
l1351:	
;Bordario_Premid.c: 230: display_counter(counter);
	movf	(_counter),w
	fcall	_display_counter
	line	231
	
l1353:	
;Bordario_Premid.c: 231: keypadMode = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_keypadMode)	;volatile
	line	232
;Bordario_Premid.c: 232: }
	goto	l1283
	line	233
	
l104:	
	line	234
	
l1355:	
;Bordario_Premid.c: 233: else{
;Bordario_Premid.c: 234: counter++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_counter),f
	line	235
	
l1357:	
;Bordario_Premid.c: 235: display_counter(counter);
	movf	(_counter),w
	fcall	_display_counter
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1283
	line	236
	
l105:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1283
	line	237
	
l103:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1283
	line	238
	
l102:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1283
	
l93:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1283
	line	239
	
l92:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1283
	
l106:	
	line	164
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l1283
	
l107:	
	line	240
	
l108:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_read_keypad_code

;; *************** function _read_keypad_code *****************
;; Defined at:
;;		line 110 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  code            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	110
global __ptext1
__ptext1:	;psect for function _read_keypad_code
psect	text1
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	110
	global	__size_of_read_keypad_code
	__size_of_read_keypad_code	equ	__end_of_read_keypad_code-_read_keypad_code
	
_read_keypad_code:	
;incstack = 0
	opt	stack 5
; Regs used in _read_keypad_code: [wreg+status,2+status,0+pclath+cstack]
	line	113
	
l1219:	
;Bordario_Premid.c: 113: if (RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u1021
	goto	u1020
u1021:
	goto	l1229
u1020:
	line	115
	
l1221:	
;Bordario_Premid.c: 114: {
;Bordario_Premid.c: 115: unsigned char code = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_read_keypad_code+0)+0
	movf	(??_read_keypad_code+0)+0,w
	movwf	(read_keypad_code@code)
	line	118
;Bordario_Premid.c: 118: while (RD4 == 1);
	goto	l79
	
l80:	
	
l79:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u1031
	goto	u1030
u1031:
	goto	l79
u1030:
	goto	l1223
	
l81:	
	line	119
	
l1223:	
;Bordario_Premid.c: 119: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	121
	
l1225:	
;Bordario_Premid.c: 121: return code;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(read_keypad_code@code),w
	goto	l82
	
l1227:	
	goto	l82
	line	122
	
l78:	
	line	123
	
l1229:	
;Bordario_Premid.c: 122: }
;Bordario_Premid.c: 123: return 0xFF;
	movlw	(0FFh)
	goto	l82
	
l1231:	
	line	124
	
l82:	
	return
	opt stack 0
GLOBAL	__end_of_read_keypad_code
	__end_of_read_keypad_code:
	signat	_read_keypad_code,89
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 80 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
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
psect	text2,local,class=CODE,delta=2,merge=1
	line	80
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	80
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	82
	
l1211:	
;Bordario_Premid.c: 82: delay_ms(20);
	movlw	low(014h)
	movwf	(delay_ms@ms)
	movlw	high(014h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	83
;Bordario_Premid.c: 83: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	84
;Bordario_Premid.c: 84: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	85
;Bordario_Premid.c: 85: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	86
;Bordario_Premid.c: 86: delay_ms(2);
	movlw	low(02h)
	movwf	(delay_ms@ms)
	movlw	high(02h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	87
;Bordario_Premid.c: 87: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	88
;Bordario_Premid.c: 88: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	89
	
l66:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 54 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;;		_read_keypad_code
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	54
global __ptext3
__ptext3:	;psect for function _delay_ms
psect	text3
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	54
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 5
; Regs used in _delay_ms: [wreg]
	line	56
	
l1105:	
;Bordario_Premid.c: 56: while(ms--)
	goto	l54
	
l55:	
	line	57
	
l1107:	
;Bordario_Premid.c: 57: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_delay_ms+0)+0,f
u1177:
	nop
decfsz	(??_delay_ms+0)+0,f
	goto	u1177
	nop2	;nop
	nop
opt asmopt_on

	
l54:	
	line	56
	movlw	low(01h)
	subwf	(delay_ms@ms),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms+1),f
	subwf	(delay_ms@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay_ms@ms+1)),w
	skipz
	goto	u815
	movlw	low(0FFFFh)
	xorwf	((delay_ms@ms)),w
u815:

	skipz
	goto	u811
	goto	u810
u811:
	goto	l1107
u810:
	goto	l57
	
l56:	
	line	58
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_display_counter

;; *************** function _display_counter *****************
;; Defined at:
;;		line 100 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
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
psect	text4,local,class=CODE,delta=2,merge=1
	line	100
global __ptext4
__ptext4:	;psect for function _display_counter
psect	text4
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	100
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
	line	102
	
l1217:	
;Bordario_Premid.c: 102: unsigned char tens = value / 10;
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
	line	103
;Bordario_Premid.c: 103: unsigned char ones = value % 10;
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
	line	105
;Bordario_Premid.c: 105: instCtrl(0x9B);
	movlw	(09Bh)
	fcall	_instCtrl
	line	106
;Bordario_Premid.c: 106: dataCtrl('0' + tens);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_counter@tens),w
	addlw	030h
	fcall	_dataCtrl
	line	107
;Bordario_Premid.c: 107: dataCtrl('0' + ones);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display_counter@ones),w
	addlw	030h
	fcall	_dataCtrl
	line	108
	
l75:	
	return
	opt stack 0
GLOBAL	__end_of_display_counter
	__end_of_display_counter:
	signat	_display_counter,4216
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 60 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
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
psect	text5,local,class=CODE,delta=2,merge=1
	line	60
global __ptext5
__ptext5:	;psect for function _instCtrl
psect	text5
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	60
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
	line	62
	
l1109:	
;Bordario_Premid.c: 62: PORTC = cmd;
	movf	(instCtrl@cmd),w
	movwf	(7)	;volatile
	line	63
	
l1111:	
;Bordario_Premid.c: 63: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	64
	
l1113:	
;Bordario_Premid.c: 64: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	65
	
l1115:	
;Bordario_Premid.c: 65: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	66
;Bordario_Premid.c: 66: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_instCtrl+0)+0+1),f
	movlw	151
movwf	((??_instCtrl+0)+0),f
u1187:
	decfsz	((??_instCtrl+0)+0),f
	goto	u1187
	decfsz	((??_instCtrl+0)+0+1),f
	goto	u1187
	nop2
opt asmopt_on

	line	67
	
l1117:	
;Bordario_Premid.c: 67: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	68
	
l60:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 70 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
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
psect	text6,local,class=CODE,delta=2,merge=1
	line	70
global __ptext6
__ptext6:	;psect for function _dataCtrl
psect	text6
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	70
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
	line	72
	
l1119:	
;Bordario_Premid.c: 72: PORTC = data;
	movf	(dataCtrl@data),w
	movwf	(7)	;volatile
	line	73
	
l1121:	
;Bordario_Premid.c: 73: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	74
	
l1123:	
;Bordario_Premid.c: 74: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	75
	
l1125:	
;Bordario_Premid.c: 75: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	76
;Bordario_Premid.c: 76: _delay((unsigned long)((2)*(4000000/4000.0)));
	opt asmopt_off
movlw	3
movwf	((??_dataCtrl+0)+0+1),f
	movlw	151
movwf	((??_dataCtrl+0)+0),f
u1197:
	decfsz	((??_dataCtrl+0)+0),f
	goto	u1197
	decfsz	((??_dataCtrl+0)+0+1),f
	goto	u1197
	nop2
opt asmopt_on

	line	77
	
l1127:	
;Bordario_Premid.c: 77: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
	line	78
	
l63:	
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
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___awmod
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1173:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1175:	
	btfss	(___awmod@dividend+1),7
	goto	u921
	goto	u920
u921:
	goto	l1181
u920:
	line	15
	
l1177:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1179:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1181
	line	17
	
l327:	
	line	18
	
l1181:	
	btfss	(___awmod@divisor+1),7
	goto	u931
	goto	u930
u931:
	goto	l1185
u930:
	line	19
	
l1183:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1185
	
l328:	
	line	20
	
l1185:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u941
	goto	u940
u941:
	goto	l1203
u940:
	line	21
	
l1187:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1193
	
l331:	
	line	23
	
l1189:	
	movlw	01h
	
u955:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u955
	line	24
	
l1191:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1193
	line	25
	
l330:	
	line	22
	
l1193:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u961
	goto	u960
u961:
	goto	l1189
u960:
	goto	l1195
	
l332:	
	goto	l1195
	line	26
	
l333:	
	line	27
	
l1195:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u975
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u975:
	skipc
	goto	u971
	goto	u970
u971:
	goto	l1199
u970:
	line	28
	
l1197:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1199
	
l334:	
	line	29
	
l1199:	
	movlw	01h
	
u985:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u985
	line	30
	
l1201:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u991
	goto	u990
u991:
	goto	l1195
u990:
	goto	l1203
	
l335:	
	goto	l1203
	line	31
	
l329:	
	line	32
	
l1203:	
	movf	(___awmod@sign),w
	skipz
	goto	u1000
	goto	l1207
u1000:
	line	33
	
l1205:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1207
	
l336:	
	line	34
	
l1207:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l337
	
l1209:	
	line	35
	
l337:	
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
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___awdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1129:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1131:	
	btfss	(___awdiv@divisor+1),7
	goto	u821
	goto	u820
u821:
	goto	l1137
u820:
	line	16
	
l1133:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1135:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1137
	line	18
	
l314:	
	line	19
	
l1137:	
	btfss	(___awdiv@dividend+1),7
	goto	u831
	goto	u830
u831:
	goto	l1143
u830:
	line	20
	
l1139:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1141:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1143
	line	22
	
l315:	
	line	23
	
l1143:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1145:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u841
	goto	u840
u841:
	goto	l1165
u840:
	line	25
	
l1147:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1153
	
l318:	
	line	27
	
l1149:	
	movlw	01h
	
u855:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u855
	line	28
	
l1151:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1153
	line	29
	
l317:	
	line	26
	
l1153:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u861
	goto	u860
u861:
	goto	l1149
u860:
	goto	l1155
	
l319:	
	goto	l1155
	line	30
	
l320:	
	line	31
	
l1155:	
	movlw	01h
	
u875:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u875
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u885
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u885:
	skipc
	goto	u881
	goto	u880
u881:
	goto	l1161
u880:
	line	33
	
l1157:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1159:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1161
	line	35
	
l321:	
	line	36
	
l1161:	
	movlw	01h
	
u895:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u895
	line	37
	
l1163:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l1155
u900:
	goto	l1165
	
l322:	
	goto	l1165
	line	38
	
l316:	
	line	39
	
l1165:	
	movf	(___awdiv@sign),w
	skipz
	goto	u910
	goto	l1169
u910:
	line	40
	
l1167:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1169
	
l323:	
	line	41
	
l1169:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l324
	
l1171:	
	line	42
	
l324:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 91 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;  count           2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  start           2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	91
global __ptext9
__ptext9:	;psect for function _delay
psect	text9
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	91
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+status,0]
	line	93
	
l1213:	
;Bordario_Premid.c: 93: unsigned int start = tmr0OvCount;
	movf	(_tmr0OvCount+1),w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@start+1)
	addwf	(delay@start+1)
	movf	(_tmr0OvCount),w	;volatile
	clrf	(delay@start)
	addwf	(delay@start)

	line	94
;Bordario_Premid.c: 94: while ((unsigned int)(tmr0OvCount - start) < (unsigned int)count)
	goto	l1215
	
l70:	
	goto	l1215
	line	97
;Bordario_Premid.c: 95: {
;Bordario_Premid.c: 96: ;
	
l69:	
	line	94
	
l1215:	
	comf	(delay@start),w
	movwf	(??_delay+0)+0
	comf	(delay@start+1),w
	movwf	((??_delay+0)+0+1)
	incf	(??_delay+0)+0,f
	skipnz
	incf	((??_delay+0)+0+1),f
	movf	(_tmr0OvCount),w	;volatile
	addwf	0+(??_delay+0)+0,w
	movwf	(??_delay+2)+0
	movf	(_tmr0OvCount+1),w	;volatile
	skipnc
	incf	(_tmr0OvCount+1),w	;volatile
	addwf	1+(??_delay+0)+0,w
	movwf	1+(??_delay+2)+0
	movf	(delay@count+1),w
	subwf	1+(??_delay+2)+0,w
	skipz
	goto	u1015
	movf	(delay@count),w
	subwf	0+(??_delay+2)+0,w
u1015:
	skipc
	goto	u1011
	goto	u1010
u1011:
	goto	l1215
u1010:
	goto	l72
	
l71:	
	line	98
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 36 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
;; Parameters:    Size  Location     Type
;;		None
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
psect	text10,local,class=CODE,delta=2,merge=1
	line	36
global __ptext10
__ptext10:	;psect for function _ISR
psect	text10
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Pre-mid\Bordario_Premid.c"
	line	36
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 5
; Regs used in _ISR: [wreg]
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
psect	text10
	line	40
	
i1l963:	
;Bordario_Premid.c: 40: if (INTE && INTF)
	btfss	(92/8),(92)&7	;volatile
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l971
u64_20:
	
i1l965:	
	btfss	(89/8),(89)&7	;volatile
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l971
u65_20:
	line	42
	
i1l967:	
;Bordario_Premid.c: 41: {
;Bordario_Premid.c: 42: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	43
	
i1l969:	
;Bordario_Premid.c: 43: rb0ToggleReq = 1;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_rb0ToggleReq)	;volatile
	goto	i1l971
	line	44
	
i1l49:	
	line	47
	
i1l971:	
;Bordario_Premid.c: 44: }
;Bordario_Premid.c: 47: if (TMR0IE && TMR0IF)
	btfss	(93/8),(93)&7	;volatile
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l51
u66_20:
	
i1l973:	
	btfss	(90/8),(90)&7	;volatile
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l51
u67_20:
	line	49
	
i1l975:	
;Bordario_Premid.c: 48: {
;Bordario_Premid.c: 49: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	50
	
i1l977:	
;Bordario_Premid.c: 50: tmr0OvCount++;
	movlw	low(01h)
	addwf	(_tmr0OvCount),f	;volatile
	skipnc
	incf	(_tmr0OvCount+1),f	;volatile
	movlw	high(01h)
	addwf	(_tmr0OvCount+1),f	;volatile
	goto	i1l51
	line	51
	
i1l50:	
	line	52
	
i1l51:	
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
