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
	FNCALL	_main,_Lcd_Clear
	FNCALL	_main,_Lcd_Init
	FNCALL	_main,_Lcd_Set_Cursor
	FNCALL	_main,_Lcd_Write_String
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_Lcd_Write_String,_dataCtrl
	FNCALL	_dataCtrl,_delay
	FNCALL	_Lcd_Set_Cursor,_instCtrl
	FNCALL	_Lcd_Init,_initLCD
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_Lcd_Clear,_delay
	FNCALL	_Lcd_Clear,_instCtrl
	FNCALL	_instCtrl,_delay
	FNROOT	_main
	FNCALL	_ISR,___awdiv
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_period
	global	_period_ready
	global	_TMR1
_TMR1	set	0xE
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1H
_CCPR1H	set	0x16
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_PORTB
_PORTB	set	0x6
	global	_T1CON
_T1CON	set	0x10
	global	_CCP1IF
_CCP1IF	set	0x62
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_TRISC
_TRISC	set	0x87
	global	_CCP1IE
_CCP1IE	set	0x462
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	80	;'P'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	115	;'s'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
	file	"Bordario_PA4-6.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_period:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_period_ready:
       ds      2

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_Lcd_Init:	; 0 bytes @ 0x0
?_Lcd_Clear:	; 0 bytes @ 0x0
?_Lcd_Write_String:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
??___awdiv:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_ISR:	; 0 bytes @ 0x0
	ds	6
?_delay:	; 0 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	_delay$0
_delay$0:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	2
??_delay:	; 0 bytes @ 0x8
??_instCtrl:	; 0 bytes @ 0x8
??_dataCtrl:	; 0 bytes @ 0x8
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x8
	global	dataCtrl@INST
dataCtrl@INST:	; 1 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	1
??_initLCD:	; 0 bytes @ 0x9
??_Lcd_Init:	; 0 bytes @ 0x9
??_Lcd_Clear:	; 0 bytes @ 0x9
?_Lcd_Set_Cursor:	; 0 bytes @ 0x9
??_Lcd_Write_String:	; 0 bytes @ 0x9
	global	Lcd_Set_Cursor@col
Lcd_Set_Cursor@col:	; 1 bytes @ 0x9
	ds	1
??_Lcd_Set_Cursor:	; 0 bytes @ 0xA
??___lwdiv:	; 0 bytes @ 0xA
	global	Lcd_Write_String@str
Lcd_Write_String@str:	; 1 bytes @ 0xA
	ds	1
	global	Lcd_Set_Cursor@row
Lcd_Set_Cursor@row:	; 1 bytes @ 0xB
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	1
	global	Lcd_Set_Cursor@address
Lcd_Set_Cursor@address:	; 1 bytes @ 0xC
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xE
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xE
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x10
	ds	2
??___lwmod:	; 0 bytes @ 0x12
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x13
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x14
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x14
	ds	3
??_sprintf:	; 0 bytes @ 0x17
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x1A
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1B
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x1C
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x1D
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x21
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x22
	ds	1
??_main:	; 0 bytes @ 0x23
	ds	1
	global	main@lcd_buffer
main@lcd_buffer:	; 16 bytes @ 0x24
	ds	16
;!
;!Data Sizes:
;!    Strings     14
;!    Constant    10
;!    Data        0
;!    BSS         4
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      11
;!    BANK0            80     52      54
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 14
;!		 -> STR_1(CODE[14]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 16
;!		 -> main@lcd_buffer(BANK0[16]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S89$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    Lcd_Write_String@str	PTR const unsigned char  size(1) Largest target is 16
;!		 -> main@lcd_buffer(BANK0[16]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->___awdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _Lcd_Write_String->_dataCtrl
;!    _dataCtrl->_delay
;!    _Lcd_Set_Cursor->_instCtrl
;!    _initLCD->_instCtrl
;!    _Lcd_Clear->_instCtrl
;!    _instCtrl->_delay
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
;! (0) _main                                                17    17      0    1687
;!                                             35 BANK0     17    17      0
;!                          _Lcd_Clear
;!                           _Lcd_Init
;!                     _Lcd_Set_Cursor
;!                   _Lcd_Write_String
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             15    12      3    1090
;!                                             20 BANK0     15    12      3
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     265
;!                                             14 BANK0      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     268
;!                                              6 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Write_String                                     2     2      0     134
;!                                              9 BANK0      2     2      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0      62
;!                                              8 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Set_Cursor                                       4     3      1     205
;!                                              9 BANK0      4     3      1
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Init                                             0     0      0     102
;!                            _initLCD
;! ---------------------------------------------------------------------------------
;! (2) _initLCD                                              0     0      0     102
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _Lcd_Clear                                            0     0      0     102
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _instCtrl                                             1     1      0      62
;!                                              8 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                2     0      2      40
;!                                              6 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  6     6      0     406
;!                                              0 BANK0      6     6      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (6) ___awdiv                                              9     5      4     406
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Lcd_Clear
;!     _delay
;!     _instCtrl
;!       _delay
;!   _Lcd_Init
;!     _initLCD
;!       _delay
;!       _instCtrl
;!         _delay
;!   _Lcd_Set_Cursor
;!     _instCtrl
;!       _delay
;!   _Lcd_Write_String
;!     _dataCtrl
;!       _delay
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!
;! _ISR (ROOT)
;!   ___awdiv
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       B       1       78.6%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      41       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     34      36       5       67.5%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      41      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 83 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  lcd_buffer     16   36[BANK0 ] unsigned char [16]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      16       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Lcd_Clear
;;		_Lcd_Init
;;		_Lcd_Set_Cursor
;;		_Lcd_Write_String
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	83
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	83
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [allreg]
	line	86
	
l1003:	
;Bordario_PA4-6.c: 84: char lcd_buffer[16];
;Bordario_PA4-6.c: 86: TRISC = 0x04;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	87
;Bordario_PA4-6.c: 87: T1CON = 0x30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	88
;Bordario_PA4-6.c: 88: CCP1CON = 0x05;
	movlw	(05h)
	movwf	(23)	;volatile
	line	90
	
l1005:	
;Bordario_PA4-6.c: 90: Lcd_Init();
	fcall	_Lcd_Init
	line	91
	
l1007:	
;Bordario_PA4-6.c: 91: Lcd_Clear();
	fcall	_Lcd_Clear
	line	93
	
l1009:	
;Bordario_PA4-6.c: 93: CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1122/8)^080h,(1122)&7	;volatile
	line	94
	
l1011:	
;Bordario_PA4-6.c: 94: CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(98/8),(98)&7	;volatile
	line	95
	
l1013:	
;Bordario_PA4-6.c: 95: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	96
	
l1015:	
;Bordario_PA4-6.c: 96: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	97
	
l1017:	
;Bordario_PA4-6.c: 97: TMR1ON = 1;
	bsf	(128/8),(128)&7	;volatile
	line	99
;Bordario_PA4-6.c: 99: for(;;) {
	
l71:	
	line	100
;Bordario_PA4-6.c: 100: if (period_ready) {
	movf	(_period_ready+1),w
	iorwf	(_period_ready),w
	skipnz
	goto	u701
	goto	u700
u701:
	goto	l71
u700:
	line	101
	
l1019:	
;Bordario_PA4-6.c: 101: sprintf(lcd_buffer, "Period: %d ms", period);
	movlw	((STR_1)-__stringbase)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(sprintf@f)
	movf	(_period+1),w
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(_period),w
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(main@lcd_buffer)&0ffh
	fcall	_sprintf
	line	102
	
l1021:	
;Bordario_PA4-6.c: 102: Lcd_Set_Cursor(1,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Lcd_Set_Cursor@col)
	incf	(Lcd_Set_Cursor@col),f
	movlw	(01h)
	fcall	_Lcd_Set_Cursor
	line	103
	
l1023:	
;Bordario_PA4-6.c: 103: Lcd_Write_String(lcd_buffer);
	movlw	(main@lcd_buffer)&0ffh
	fcall	_Lcd_Write_String
	line	104
	
l1025:	
;Bordario_PA4-6.c: 104: period_ready = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_period_ready)
	clrf	(_period_ready+1)
	goto	l71
	line	105
	
l72:	
	line	106
;Bordario_PA4-6.c: 105: }
;Bordario_PA4-6.c: 106: }
	goto	l71
	
l73:	
	line	107
	
l74:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@lcd_buffer(16), 
;;  f               1   20[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  sp              1   33[BANK0 ] PTR unsigned char 
;;		 -> main@lcd_buffer(16), 
;;  _val            4   29[BANK0 ] struct .
;;  c               1   34[BANK0 ] char 
;;  prec            1   28[BANK0 ] char 
;;  flag            1   27[BANK0 ] unsigned char 
;;  ap              1   26[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   20[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	line	542
	
l887:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l939
	
l84:	
	line	547
	
l889:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u511
	goto	u510
u511:
	goto	l895
u510:
	line	550
	
l891:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l893:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	551
;doprnt.c: 551: continue;
	goto	l939
	line	552
	
l85:	
	line	557
	
l895:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l899
	line	646
;doprnt.c: 646: case 0:
	
l87:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l941
	line	706
;doprnt.c: 706: case 'd':
	
l89:	
	goto	l901
	line	707
	
l90:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l901
	line	811
;doprnt.c: 811: default:
	
l92:	
	line	822
;doprnt.c: 822: continue;
	goto	l939
	line	831
	
l897:	
;doprnt.c: 831: }
	goto	l901
	line	644
	
l86:	
	
l899:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l941
	xorlw	100^0	; case 100
	skipnz
	goto	l901
	xorlw	105^100	; case 105
	skipnz
	goto	l901
	goto	l939
	opt asmopt_on

	line	831
	
l91:	
	line	1268
	
l901:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l903:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1270
	
l905:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1),7
	goto	u521
	goto	u520
u521:
	goto	l911
u520:
	line	1271
	
l907:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	1272
	
l909:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	goto	l911
	line	1273
	
l93:	
	line	1314
	
l911:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u531
	goto	u530
u531:
	goto	l915
u530:
	goto	l923
	
l913:	
	goto	l923
	line	1315
	
l94:	
	
l915:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u545
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u545:
	skipnc
	goto	u541
	goto	u540
u541:
	goto	l919
u540:
	goto	l923
	line	1316
	
l917:	
;doprnt.c: 1316: break;
	goto	l923
	
l96:	
	line	1314
	
l919:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l921:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u551
	goto	u550
u551:
	goto	l915
u550:
	goto	l923
	
l95:	
	line	1447
	
l923:	
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u561
	goto	u560
u561:
	goto	l929
u560:
	line	1448
	
l925:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l927:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l929
	
l97:	
	line	1481
	
l929:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l937
	
l99:	
	line	1498
	
l931:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)
	movf	(sprintf@_val+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(sprintf@_val),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1533
	
l933:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l935:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l937
	line	1534
	
l98:	
	line	1483
	
l937:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u571
	goto	u570
u571:
	goto	l931
u570:
	goto	l939
	
l100:	
	goto	l939
	line	1542
	
l83:	
	line	545
	
l939:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u581
	goto	u580
u581:
	goto	l889
u580:
	goto	l941
	
l101:	
	goto	l941
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l88:	
	line	1547
	
l941:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l102
	line	1549
	
l943:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l102:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   14[BANK0 ] unsigned int 
;;  dividend        2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext2
__ptext2:	;psect for function ___lwmod
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l845:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u431
	goto	u430
u431:
	goto	l863
u430:
	line	14
	
l847:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l853
	
l527:	
	line	16
	
l849:	
	movlw	01h
	
u445:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u445
	line	17
	
l851:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l853
	line	18
	
l526:	
	line	15
	
l853:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u451
	goto	u450
u451:
	goto	l849
u450:
	goto	l855
	
l528:	
	goto	l855
	line	19
	
l529:	
	line	20
	
l855:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u465
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u465:
	skipc
	goto	u461
	goto	u460
u461:
	goto	l859
u460:
	line	21
	
l857:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l859
	
l530:	
	line	22
	
l859:	
	movlw	01h
	
u475:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u475
	line	23
	
l861:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u481
	goto	u480
u481:
	goto	l855
u480:
	goto	l863
	
l531:	
	goto	l863
	line	24
	
l525:	
	line	25
	
l863:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l532
	
l865:	
	line	26
	
l532:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] unsigned int 
;;  dividend        2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[BANK0 ] unsigned int 
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwdiv
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l819:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l821:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u361
	goto	u360
u361:
	goto	l841
u360:
	line	16
	
l823:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l829
	
l517:	
	line	18
	
l825:	
	movlw	01h
	
u375:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u375
	line	19
	
l827:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l829
	line	20
	
l516:	
	line	17
	
l829:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u381
	goto	u380
u381:
	goto	l825
u380:
	goto	l831
	
l518:	
	goto	l831
	line	21
	
l519:	
	line	22
	
l831:	
	movlw	01h
	
u395:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u395
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u405
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u405:
	skipc
	goto	u401
	goto	u400
u401:
	goto	l837
u400:
	line	24
	
l833:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l835:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l837
	line	26
	
l520:	
	line	27
	
l837:	
	movlw	01h
	
u415:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u415
	line	28
	
l839:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u421
	goto	u420
u421:
	goto	l831
u420:
	goto	l841
	
l521:	
	goto	l841
	line	29
	
l515:	
	line	30
	
l841:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l522
	
l843:	
	line	31
	
l522:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Lcd_Write_String

;; *************** function _Lcd_Write_String *****************
;; Defined at:
;;		line 77 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> main@lcd_buffer(16), 
;; Auto vars:     Size  Location     Type
;;  str             1   10[BANK0 ] PTR const unsigned char 
;;		 -> main@lcd_buffer(16), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	77
global __ptext4
__ptext4:	;psect for function _Lcd_Write_String
psect	text4
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	77
	global	__size_of_Lcd_Write_String
	__size_of_Lcd_Write_String	equ	__end_of_Lcd_Write_String-_Lcd_Write_String
	
_Lcd_Write_String:	
;incstack = 0
	opt	stack 3
; Regs used in _Lcd_Write_String: [allreg]
;Lcd_Write_String@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Write_String@str)
	line	78
	
l879:	
;Bordario_PA4-6.c: 78: while (*str) {
	goto	l885
	
l66:	
	line	79
	
l881:	
;Bordario_PA4-6.c: 79: dataCtrl(*str++);
	movf	(Lcd_Write_String@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_dataCtrl
	
l883:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Lcd_Write_String+0)+0
	movf	(??_Lcd_Write_String+0)+0,w
	addwf	(Lcd_Write_String@str),f
	goto	l885
	line	80
	
l65:	
	line	78
	
l885:	
	movf	(Lcd_Write_String@str),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u501
	goto	u500
u501:
	goto	l881
u500:
	goto	l68
	
l67:	
	line	81
	
l68:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Write_String
	__end_of_Lcd_Write_String:
	signat	_Lcd_Write_String,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 47 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_Lcd_Write_String
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	47
global __ptext5
__ptext5:	;psect for function _dataCtrl
psect	text5
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	47
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 3
; Regs used in _dataCtrl: [allreg]
;dataCtrl@INST stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@INST)
	line	48
	
l807:	
;Bordario_PA4-6.c: 48: PORTB = INST;
	movf	(dataCtrl@INST),w
	movwf	(6)	;volatile
	line	49
	
l809:	
;Bordario_PA4-6.c: 49: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	50
	
l811:	
;Bordario_PA4-6.c: 50: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	51
	
l813:	
;Bordario_PA4-6.c: 51: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	52
	
l815:	
;Bordario_PA4-6.c: 52: delay(1);
	movlw	low(01h)
	movwf	(_delay$0)
	movlw	high(01h)
	movwf	((_delay$0))+1
	fcall	_delay
	line	53
	
l817:	
;Bordario_PA4-6.c: 53: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	54
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_Lcd_Set_Cursor

;; *************** function _Lcd_Set_Cursor *****************
;; Defined at:
;;		line 65 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
;; Parameters:    Size  Location     Type
;;  row             1    wreg     unsigned char 
;;  col             1    9[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  row             1   11[BANK0 ] unsigned char 
;;  address         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	65
global __ptext6
__ptext6:	;psect for function _Lcd_Set_Cursor
psect	text6
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	65
	global	__size_of_Lcd_Set_Cursor
	__size_of_Lcd_Set_Cursor	equ	__end_of_Lcd_Set_Cursor-_Lcd_Set_Cursor
	
_Lcd_Set_Cursor:	
;incstack = 0
	opt	stack 3
; Regs used in _Lcd_Set_Cursor: [allreg]
;Lcd_Set_Cursor@row stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Lcd_Set_Cursor@row)
	line	68
	
l871:	
;Bordario_PA4-6.c: 66: unsigned char address;
;Bordario_PA4-6.c: 68: if (row == 1) {
	movf	(Lcd_Set_Cursor@row),w
	xorlw	01h
	skipz
	goto	u491
	goto	u490
u491:
	goto	l875
u490:
	line	69
	
l873:	
;Bordario_PA4-6.c: 69: address = 0x80 + (col - 1);
	movf	(Lcd_Set_Cursor@col),w
	addlw	07Fh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@address)
	line	70
;Bordario_PA4-6.c: 70: } else {
	goto	l877
	
l60:	
	line	71
	
l875:	
;Bordario_PA4-6.c: 71: address = 0xC0 + (col - 1);
	movf	(Lcd_Set_Cursor@col),w
	addlw	0BFh
	movwf	(??_Lcd_Set_Cursor+0)+0
	movf	(??_Lcd_Set_Cursor+0)+0,w
	movwf	(Lcd_Set_Cursor@address)
	goto	l877
	line	72
	
l61:	
	line	74
	
l877:	
;Bordario_PA4-6.c: 72: }
;Bordario_PA4-6.c: 74: instCtrl(address);
	movf	(Lcd_Set_Cursor@address),w
	fcall	_instCtrl
	line	75
	
l62:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Set_Cursor
	__end_of_Lcd_Set_Cursor:
	signat	_Lcd_Set_Cursor,8312
	global	_Lcd_Init

;; *************** function _Lcd_Init *****************
;; Defined at:
;;		line 56 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_initLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	56
global __ptext7
__ptext7:	;psect for function _Lcd_Init
psect	text7
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	56
	global	__size_of_Lcd_Init
	__size_of_Lcd_Init	equ	__end_of_Lcd_Init-_Lcd_Init
	
_Lcd_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _Lcd_Init: [allreg]
	line	57
	
l867:	
;Bordario_PA4-6.c: 57: initLCD();
	fcall	_initLCD
	line	58
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Init
	__end_of_Lcd_Init:
	signat	_Lcd_Init,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 38 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_Lcd_Init
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	38
global __ptext8
__ptext8:	;psect for function _initLCD
psect	text8
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	38
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 2
; Regs used in _initLCD: [allreg]
	line	39
	
l805:	
;Bordario_PA4-6.c: 39: delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_delay$0)
	movlw	high(01h)
	movwf	((_delay$0))+1
	fcall	_delay
	line	40
;Bordario_PA4-6.c: 40: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	41
;Bordario_PA4-6.c: 41: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	42
;Bordario_PA4-6.c: 42: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	43
;Bordario_PA4-6.c: 43: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	44
;Bordario_PA4-6.c: 44: instCtrl(0x0F);
	movlw	(0Fh)
	fcall	_instCtrl
	line	45
	
l48:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_Lcd_Clear

;; *************** function _Lcd_Clear *****************
;; Defined at:
;;		line 60 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	60
global __ptext9
__ptext9:	;psect for function _Lcd_Clear
psect	text9
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	60
	global	__size_of_Lcd_Clear
	__size_of_Lcd_Clear	equ	__end_of_Lcd_Clear-_Lcd_Clear
	
_Lcd_Clear:	
;incstack = 0
	opt	stack 3
; Regs used in _Lcd_Clear: [allreg]
	line	61
	
l869:	
;Bordario_PA4-6.c: 61: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	62
;Bordario_PA4-6.c: 62: delay(2);
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_delay$0)
	movlw	high(02h)
	movwf	((_delay$0))+1
	fcall	_delay
	line	63
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Clear
	__end_of_Lcd_Clear:
	signat	_Lcd_Clear,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 29 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_Lcd_Clear
;;		_Lcd_Set_Cursor
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	29
global __ptext10
__ptext10:	;psect for function _instCtrl
psect	text10
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	29
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 3
; Regs used in _instCtrl: [allreg]
;instCtrl@INST stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@INST)
	line	30
	
l793:	
;Bordario_PA4-6.c: 30: PORTB = INST;
	movf	(instCtrl@INST),w
	movwf	(6)	;volatile
	line	31
	
l795:	
;Bordario_PA4-6.c: 31: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	32
	
l797:	
;Bordario_PA4-6.c: 32: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	33
	
l799:	
;Bordario_PA4-6.c: 33: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	34
	
l801:	
;Bordario_PA4-6.c: 34: delay(1);
	movlw	low(01h)
	movwf	(_delay$0)
	movlw	high(01h)
	movwf	((_delay$0))+1
	fcall	_delay
	line	35
	
l803:	
;Bordario_PA4-6.c: 35: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	36
	
l45:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 17 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
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
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	17
global __ptext11
__ptext11:	;psect for function _ISR
psect	text11
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA4\Bordario_PA4-6.c"
	line	17
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text11
	line	18
	
i1l989:	
;Bordario_PA4-6.c: 18: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	19
;Bordario_PA4-6.c: 19: if (CCP1IF == 1) {
	btfss	(98/8),(98)&7	;volatile
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l1001
u69_20:
	line	20
	
i1l991:	
;Bordario_PA4-6.c: 20: CCP1IF = 0;
	bcf	(98/8),(98)&7	;volatile
	line	21
	
i1l993:	
;Bordario_PA4-6.c: 21: period = (CCPR1H << 8) | CCPR1L;
	movf	(22),w	;volatile
	clrf	(_period+1)
	addwf	(_period+1)
	movf	(21),w	;volatile
	clrf	(_period)
	addwf	(_period)

	line	22
	
i1l995:	
;Bordario_PA4-6.c: 22: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	23
	
i1l997:	
;Bordario_PA4-6.c: 23: period = (period / 1000) * 8;
	movlw	low(03E8h)
	movwf	(___awdiv@divisor)
	movlw	high(03E8h)
	movwf	((___awdiv@divisor))+1
	movf	(_period+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(_period),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+?___awdiv),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_ISR+0)+0+1)
	clrc
	rlf	(??_ISR+0)+0,f
	rlf	(??_ISR+0)+1,f
	clrc
	rlf	(??_ISR+0)+0,f
	rlf	(??_ISR+0)+1,f
	clrc
	rlf	(??_ISR+0)+0,f
	rlf	(??_ISR+0)+1,f
	movf	0+(??_ISR+0)+0,w
	movwf	(_period)
	movf	1+(??_ISR+0)+0,w
	movwf	(_period+1)
	line	24
	
i1l999:	
;Bordario_PA4-6.c: 24: period_ready = 1;
	movlw	low(01h)
	movwf	(_period_ready)
	movlw	high(01h)
	movwf	((_period_ready))+1
	goto	i1l1001
	line	25
	
i1l41:	
	line	26
	
i1l1001:	
;Bordario_PA4-6.c: 25: }
;Bordario_PA4-6.c: 26: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	27
	
i1l42:	
	movf	(??_ISR+5),w
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___awdiv
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
i1l945:	
	clrf	(___awdiv@sign)
	line	15
	
i1l947:	
	btfss	(___awdiv@divisor+1),7
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l953
u59_20:
	line	16
	
i1l949:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
i1l951:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	i1l953
	line	18
	
i1l308:	
	line	19
	
i1l953:	
	btfss	(___awdiv@dividend+1),7
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l959
u60_20:
	line	20
	
i1l955:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
i1l957:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	i1l959
	line	22
	
i1l309:	
	line	23
	
i1l959:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
i1l961:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l981
u61_20:
	line	25
	
i1l963:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	i1l969
	
i1l312:	
	line	27
	
i1l965:	
	movlw	01h
	
u62_25:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u62_25
	line	28
	
i1l967:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	i1l969
	line	29
	
i1l311:	
	line	26
	
i1l969:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l965
u63_20:
	goto	i1l971
	
i1l313:	
	goto	i1l971
	line	30
	
i1l314:	
	line	31
	
i1l971:	
	movlw	01h
	
u64_25:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u64_25
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u65_25
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u65_25:
	skipc
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l977
u65_20:
	line	33
	
i1l973:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
i1l975:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	i1l977
	line	35
	
i1l315:	
	line	36
	
i1l977:	
	movlw	01h
	
u66_25:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u66_25
	line	37
	
i1l979:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l971
u67_20:
	goto	i1l981
	
i1l316:	
	goto	i1l981
	line	38
	
i1l310:	
	line	39
	
i1l981:	
	movf	(___awdiv@sign),w
	skipz
	goto	u68_20
	goto	i1l985
u68_20:
	line	40
	
i1l983:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	i1l985
	
i1l317:	
	line	41
	
i1l985:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	i1l318
	
i1l987:	
	line	42
	
i1l318:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
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
