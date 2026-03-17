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
	FNCALL	_main,_clearLCD
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_main,_printString
	FNCALL	_main,_strcmp
	FNCALL	_printString,_dataCtrl
	FNCALL	_initLCD,_clearLCD
	FNCALL	_initLCD,_instCtrl
	FNCALL	_clearLCD,_instCtrl
	FNROOT	_main
	global	_keypad
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
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	22
_keypad:
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	020h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	020h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	020h
	retlw	02Ah
	retlw	030h
	retlw	023h
	retlw	020h
	retlw	0
	global __end_of_keypad
__end_of_keypad:
	global	_correctPIN
psect	strings
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	23
_correctPIN:
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	0
	global __end_of_correctPIN
__end_of_correctPIN:
	global	_keypad
	global	_correctPIN
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RD4
_RD4	set	0x44
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global __stringdata
__stringdata:
	
STR_2:	
	retlw	65	;'A'
	retlw	99	;'c'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	71	;'G'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_3:	
	retlw	65	;'A'
	retlw	99	;'c'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_1:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	58	;':'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
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
	file	"pin.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_initLCD:	; 0 bytes @ 0x0
?_clearLCD:	; 0 bytes @ 0x0
?_printString:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
??_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
??_dataCtrl:	; 0 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x0
	ds	2
??_strcmp:	; 0 bytes @ 0x2
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x2
	global	dataCtrl@INST
dataCtrl@INST:	; 1 bytes @ 0x2
	ds	1
??_clearLCD:	; 0 bytes @ 0x3
??_printString:	; 0 bytes @ 0x3
	ds	1
	global	printString@str
printString@str:	; 1 bytes @ 0x4
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	ds	1
??_initLCD:	; 0 bytes @ 0x5
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x5
	ds	2
??_main:	; 0 bytes @ 0x7
	ds	3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@enteredPIN
main@enteredPIN:	; 5 bytes @ 0x0
	ds	5
	global	main@keyIndex
main@keyIndex:	; 1 bytes @ 0x5
	ds	1
	global	main@keyChar
main@keyChar:	; 1 bytes @ 0x6
	ds	1
	global	main@pinCount
main@pinCount:	; 1 bytes @ 0x7
	ds	1
;!
;!Data Sizes:
;!    Strings     40
;!    Constant    22
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80      8       8
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strcmp@s2	PTR const unsigned char  size(1) Largest target is 5
;!		 -> correctPIN(CODE[5]), 
;!
;!    strcmp@s1	PTR const unsigned char  size(1) Largest target is 5
;!		 -> main@enteredPIN(BANK0[5]), 
;!
;!    printString@str	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_3(CODE[14]), STR_2(CODE[15]), STR_1(CODE[11]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_initLCD
;!    _printString->_dataCtrl
;!    _initLCD->_clearLCD
;!    _clearLCD->_instCtrl
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                11    11      0     616
;!                                              7 COMMON     3     3      0
;!                                              0 BANK0      8     8      0
;!                           _clearLCD
;!                           _dataCtrl
;!                            _initLCD
;!                           _instCtrl
;!                        _printString
;!                             _strcmp
;! ---------------------------------------------------------------------------------
;! (2) _strcmp                                               6     4      2     171
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _printString                                          2     2      0     148
;!                                              3 COMMON     2     2      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              2     2      0      44
;!                                              5 COMMON     2     2      0
;!                           _clearLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (2) _clearLCD                                             2     2      0      22
;!                                              3 COMMON     2     2      0
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             3     3      0      22
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _clearLCD
;!     _instCtrl
;!   _dataCtrl
;!   _initLCD
;!     _clearLCD
;!       _instCtrl
;!     _instCtrl
;!   _instCtrl
;!   _printString
;!     _dataCtrl
;!   _strcmp
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      8       8       5       10.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  keyChar         1    6[BANK0 ] unsigned char 
;;  enteredPIN      5    0[BANK0 ] unsigned char [5]
;;  pinCount        1    7[BANK0 ] unsigned char 
;;  keyIndex        1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   38[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       8       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_clearLCD
;;		_dataCtrl
;;		_initLCD
;;		_instCtrl
;;		_printString
;;		_strcmp
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	25
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	27
	
l689:	
;pin.c: 27: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	28
;pin.c: 28: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	29
	
l691:	
;pin.c: 29: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	31
	
l693:	
;pin.c: 31: initLCD();
	fcall	_initLCD
	line	35
	
l695:	
;pin.c: 33: unsigned char keyIndex;
;pin.c: 34: char enteredPIN[5];
;pin.c: 35: unsigned char pinCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@pinCount)
	goto	l697
	line	37
;pin.c: 37: while(1) {
	
l39:	
	line	39
	
l697:	
;pin.c: 39: clearLCD();
	fcall	_clearLCD
	line	40
	
l699:	
;pin.c: 40: printString("Enter PIN:");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_printString
	line	41
	
l701:	
;pin.c: 41: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	43
	
l703:	
;pin.c: 43: pinCount = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@pinCount)
	line	46
;pin.c: 46: while(pinCount < 4) {
	goto	l717
	
l41:	
	line	49
;pin.c: 49: if(RD4 == 1) {
	btfss	(68/8),(68)&7	;volatile
	goto	u121
	goto	u120
u121:
	goto	l717
u120:
	line	51
	
l705:	
;pin.c: 51: keyIndex = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@keyIndex)
	line	53
;pin.c: 53: while(RD4 == 1);
	goto	l43
	
l44:	
	
l43:	
	btfsc	(68/8),(68)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l43
u130:
	goto	l707
	
l45:	
	line	55
	
l707:	
;pin.c: 55: char keyChar = keypad[keyIndex];
	movf	(main@keyIndex),w
	addlw	low((_keypad)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@keyChar)
	line	58
	
l709:	
;pin.c: 58: if(keyChar != ' ') {
	movf	(main@keyChar),w
	xorlw	020h
	skipnz
	goto	u141
	goto	u140
u141:
	goto	l717
u140:
	line	59
	
l711:	
;pin.c: 59: enteredPIN[pinCount] = keyChar;
	movf	(main@keyChar),w
	movwf	(??_main+0)+0
	movf	(main@pinCount),w
	addlw	main@enteredPIN&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	60
	
l713:	
;pin.c: 60: dataCtrl('*');
	movlw	(02Ah)
	fcall	_dataCtrl
	line	61
	
l715:	
;pin.c: 61: pinCount++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@pinCount),f
	goto	l717
	line	62
	
l46:	
	goto	l717
	line	63
	
l42:	
	goto	l717
	line	64
	
l40:	
	line	46
	
l717:	
	movlw	(04h)
	subwf	(main@pinCount),w
	skipc
	goto	u151
	goto	u150
u151:
	goto	l41
u150:
	goto	l719
	
l47:	
	line	66
	
l719:	
;pin.c: 62: }
;pin.c: 63: }
;pin.c: 64: }
;pin.c: 66: enteredPIN[4] = '\0';
	clrf	0+(main@enteredPIN)+04h
	line	69
	
l721:	
;pin.c: 69: clearLCD();
	fcall	_clearLCD
	line	70
	
l723:	
;pin.c: 70: if(strcmp(enteredPIN, correctPIN) == 0) {
	movlw	((_correctPIN)-__stringbase)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(strcmp@s2)
	movlw	(main@enteredPIN)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u161
	goto	u160
u161:
	goto	l727
u160:
	line	71
	
l725:	
;pin.c: 71: printString("Access Granted");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_printString
	line	73
;pin.c: 73: } else {
	goto	l729
	
l48:	
	line	74
	
l727:	
;pin.c: 74: printString("Access Denied");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_printString
	goto	l729
	line	75
	
l49:	
	line	78
	
l729:	
;pin.c: 75: }
;pin.c: 78: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
movwf	((??_main+0)+0+2),f
movlw	188
movwf	((??_main+0)+0+1),f
	movlw	16
movwf	((??_main+0)+0),f
u177:
	decfsz	((??_main+0)+0),f
	goto	u177
	decfsz	((??_main+0)+0+1),f
	goto	u177
	decfsz	((??_main+0)+0+2),f
	goto	u177
opt asmopt_on

	goto	l697
	line	79
	
l50:	
	line	37
	goto	l697
	
l51:	
	line	82
;pin.c: 79: }
;pin.c: 81: return 0;
;	Return value of _main is never used
	
l52:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_strcmp

;; *************** function _strcmp *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> main@enteredPIN(5), 
;;  s2              1    0[COMMON] PTR const unsigned char 
;;		 -> correctPIN(5), 
;; Auto vars:     Size  Location     Type
;;  s1              1    5[COMMON] PTR const unsigned char 
;;		 -> main@enteredPIN(5), 
;;  r               1    4[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strcmp.c"
	line	33
global __ptext1
__ptext1:	;psect for function _strcmp
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strcmp.c"
	line	33
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
;incstack = 0
	opt	stack 6
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0+pclath]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
l675:	
	goto	l681
	
l509:	
	line	38
	
l677:	
	movlw	(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s1),f
	line	39
	
l679:	
	movlw	(01h)
	movwf	(??_strcmp+0)+0
	movf	(??_strcmp+0)+0,w
	addwf	(strcmp@s2),f
	goto	l681
	line	40
	
l508:	
	line	37
	
l681:	
	movf	(strcmp@s1),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s2),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	addlw	1
	addwf	(??_strcmp+0)+0,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+1)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u101
	goto	u100
u101:
	goto	l685
u100:
	
l683:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u111
	goto	u110
u111:
	goto	l677
u110:
	goto	l685
	
l511:	
	goto	l685
	
l512:	
	line	41
	
l685:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l513
	
l687:	
	line	42
	
l513:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
	signat	_strcmp,8314
	global	_printString

;; *************** function _printString *****************
;; Defined at:
;;		line 119 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_3(14), STR_2(15), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  str             1    4[COMMON] PTR const unsigned char 
;;		 -> STR_3(14), STR_2(15), STR_1(11), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	119
global __ptext2
__ptext2:	;psect for function _printString
psect	text2
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	119
	global	__size_of_printString
	__size_of_printString	equ	__end_of_printString-_printString
	
_printString:	
;incstack = 0
	opt	stack 6
; Regs used in _printString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;printString@str stored from wreg
	movwf	(printString@str)
	line	120
	
l667:	
;pin.c: 120: while(*str) {
	goto	l673
	
l68:	
	line	121
	
l669:	
;pin.c: 121: dataCtrl(*str++);
	movf	(printString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	
l671:	
	movlw	(01h)
	movwf	(??_printString+0)+0
	movf	(??_printString+0)+0,w
	addwf	(printString@str),f
	goto	l673
	line	122
	
l67:	
	line	120
	
l673:	
	movf	(printString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u91
	goto	u90
u91:
	goto	l669
u90:
	goto	l70
	
l69:	
	line	123
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_printString
	__end_of_printString:
	signat	_printString,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 96 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_printString
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	96
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	96
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg]
;dataCtrl@INST stored from wreg
	movwf	(dataCtrl@INST)
	line	97
	
l647:	
;pin.c: 97: PORTB = INST;
	movf	(dataCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	98
	
l649:	
;pin.c: 98: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	99
	
l651:	
;pin.c: 99: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	100
	
l653:	
;pin.c: 100: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	101
;pin.c: 101: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_dataCtrl+0)+0+1),f
	movlw	125
movwf	((??_dataCtrl+0)+0),f
u187:
	decfsz	((??_dataCtrl+0)+0),f
	goto	u187
	decfsz	((??_dataCtrl+0)+0+1),f
	goto	u187
opt asmopt_on

	line	102
	
l655:	
;pin.c: 102: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	103
;pin.c: 103: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_dataCtrl+0)+0+1),f
	movlw	125
movwf	((??_dataCtrl+0)+0),f
u197:
	decfsz	((??_dataCtrl+0)+0),f
	goto	u197
	decfsz	((??_dataCtrl+0)+0+1),f
	goto	u197
opt asmopt_on

	line	104
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 106 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_clearLCD
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	106
global __ptext4
__ptext4:	;psect for function _initLCD
psect	text4
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	106
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	107
	
l657:	
;pin.c: 107: _delay((unsigned long)((15)*(20000000/4000.0)));
	opt asmopt_off
movlw	98
movwf	((??_initLCD+0)+0+1),f
	movlw	101
movwf	((??_initLCD+0)+0),f
u207:
	decfsz	((??_initLCD+0)+0),f
	goto	u207
	decfsz	((??_initLCD+0)+0+1),f
	goto	u207
	nop2
opt asmopt_on

	line	108
	
l659:	
;pin.c: 108: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	109
	
l661:	
;pin.c: 109: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	110
	
l663:	
;pin.c: 110: clearLCD();
	fcall	_clearLCD
	line	111
	
l665:	
;pin.c: 111: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	112
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_clearLCD

;; *************** function _clearLCD *****************
;; Defined at:
;;		line 114 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	114
global __ptext5
__ptext5:	;psect for function _clearLCD
psect	text5
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	114
	global	__size_of_clearLCD
	__size_of_clearLCD	equ	__end_of_clearLCD-_clearLCD
	
_clearLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _clearLCD: [wreg+status,2+status,0+pclath+cstack]
	line	115
	
l643:	
;pin.c: 115: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	116
	
l645:	
;pin.c: 116: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_clearLCD+0)+0+1),f
	movlw	251
movwf	((??_clearLCD+0)+0),f
u217:
	decfsz	((??_clearLCD+0)+0),f
	goto	u217
	decfsz	((??_clearLCD+0)+0+1),f
	goto	u217
	nop2
opt asmopt_on

	line	117
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_clearLCD
	__end_of_clearLCD:
	signat	_clearLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 86 in file "C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_initLCD
;;		_clearLCD
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	86
global __ptext6
__ptext6:	;psect for function _instCtrl
psect	text6
	file	"C:\Users\user\OneDrive\Documents\COLLEGE\CPE3201---Embedded-Systems\Practice and Lecture Materials\Practice coding\pin\pin.c"
	line	86
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 7
; Regs used in _instCtrl: [wreg]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	87
	
l633:	
;pin.c: 87: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	88
	
l635:	
;pin.c: 88: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	89
	
l637:	
;pin.c: 89: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	90
	
l639:	
;pin.c: 90: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	91
;pin.c: 91: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_instCtrl+0)+0+1),f
	movlw	125
movwf	((??_instCtrl+0)+0),f
u227:
	decfsz	((??_instCtrl+0)+0),f
	goto	u227
	decfsz	((??_instCtrl+0)+0+1),f
	goto	u227
opt asmopt_on

	line	92
	
l641:	
;pin.c: 92: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	93
;pin.c: 93: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_instCtrl+0)+0+1),f
	movlw	125
movwf	((??_instCtrl+0)+0),f
u237:
	decfsz	((??_instCtrl+0)+0),f
	goto	u237
	decfsz	((??_instCtrl+0)+0+1),f
	goto	u237
opt asmopt_on

	line	94
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
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
