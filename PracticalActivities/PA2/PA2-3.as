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
	FNCALL	_main,_decodeKey
	FNCALL	_main,_delay_ms
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_delay_ms
	FNCALL	_initLCD,_instCtrl
	FNROOT	_main
	global	decodeKey@table
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
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
	line	62
decodeKey@table:
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	041h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	042h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	043h
	retlw	02Ah
	retlw	030h
	retlw	023h
	retlw	044h
	global __end_ofdecodeKey@table
__end_ofdecodeKey@table:
	global	decodeKey@table
	global	_cursorPos
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RD4
_RD4	set	0x44
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
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
	file	"PA2-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_cursorPos:
       ds      1

	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay_ms:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
??_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
??_dataCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
??_decodeKey:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_decodeKey:	; 1 bytes @ 0x0
	global	decodeKey@key
decodeKey@key:	; 1 bytes @ 0x0
	global	delay_ms@ms
delay_ms@ms:	; 2 bytes @ 0x0
	ds	2
??_delay_ms:	; 0 bytes @ 0x2
	global	instCtrl@cmd
instCtrl@cmd:	; 1 bytes @ 0x2
	global	dataCtrl@data
dataCtrl@data:	; 1 bytes @ 0x2
	ds	2
??_initLCD:	; 0 bytes @ 0x4
??_main:	; 0 bytes @ 0x4
	ds	1
	global	main@key
main@key:	; 1 bytes @ 0x5
	ds	1
	global	main@displayChar
main@displayChar:	; 1 bytes @ 0x6
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    16
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       8
;!    BANK0            80      0       0
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
;!    _main->_delay_ms
;!    _initLCD->_delay_ms
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0     378
;!                                              4 COMMON     3     3      0
;!                           _dataCtrl
;!                          _decodeKey
;!                           _delay_ms
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     159
;!                           _delay_ms
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             3     3      0      15
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             4     2      2     144
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _decodeKey                                            1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             3     3      0      15
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _dataCtrl
;!   _decodeKey
;!   _delay_ms
;!   _initLCD
;!     _delay_ms
;!     _instCtrl
;!   _instCtrl
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       8       1       57.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       8       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       8      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 71 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  displayChar     1    6[COMMON] unsigned char 
;;  key             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;;		_decodeKey
;;		_delay_ms
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
	line	71
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
	line	71
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	73
	
l536:	
;PA2-3.c: 73: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	74
;PA2-3.c: 74: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	75
	
l538:	
;PA2-3.c: 75: TRISD = 0x1F;
	movlw	(01Fh)
	movwf	(136)^080h	;volatile
	line	77
	
l540:	
;PA2-3.c: 77: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	78
	
l542:	
;PA2-3.c: 78: PORTC = 0x00;
	clrf	(7)	;volatile
	line	80
	
l544:	
;PA2-3.c: 80: initLCD();
	fcall	_initLCD
	goto	l546
	line	85
;PA2-3.c: 82: unsigned char key;
;PA2-3.c: 83: char displayChar;
;PA2-3.c: 85: while(1)
	
l45:	
	line	87
	
l546:	
;PA2-3.c: 86: {
;PA2-3.c: 87: if(RD4 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l546
u20:
	line	89
	
l548:	
;PA2-3.c: 88: {
;PA2-3.c: 89: key = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@key)
	line	90
	
l550:	
;PA2-3.c: 90: displayChar = decodeKey(key);
	movf	(main@key),w
	fcall	_decodeKey
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@displayChar)
	line	92
	
l552:	
;PA2-3.c: 92: dataCtrl(displayChar);
	movf	(main@displayChar),w
	fcall	_dataCtrl
	line	93
	
l554:	
;PA2-3.c: 93: cursorPos++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_cursorPos),f
	line	95
	
l556:	
;PA2-3.c: 95: if(cursorPos >= 32)
	movlw	(020h)
	subwf	(_cursorPos),w
	skipc
	goto	u31
	goto	u30
u31:
	goto	l48
u30:
	line	97
	
l558:	
;PA2-3.c: 96: {
;PA2-3.c: 97: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	98
;PA2-3.c: 98: delay_ms(2);
	movlw	low(02h)
	movwf	(delay_ms@ms)
	movlw	high(02h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	99
	
l560:	
;PA2-3.c: 99: cursorPos = 0;
	clrf	(_cursorPos)
	goto	l48
	line	100
	
l47:	
	line	102
;PA2-3.c: 100: }
;PA2-3.c: 102: while(RD4 == 1);
	goto	l48
	
l49:	
	
l48:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(68/8),(68)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l48
u40:
	goto	l546
	
l50:	
	goto	l546
	line	103
	
l46:	
	goto	l546
	line	104
	
l51:	
	line	85
	goto	l546
	
l52:	
	line	105
	
l53:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 48 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	48
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
	line	48
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 6
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	50
	
l530:	
;PA2-3.c: 50: delay_ms(20);
	movlw	low(014h)
	movwf	(delay_ms@ms)
	movlw	high(014h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	52
;PA2-3.c: 52: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	53
;PA2-3.c: 53: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	54
;PA2-3.c: 54: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	55
;PA2-3.c: 55: delay_ms(2);
	movlw	low(02h)
	movwf	(delay_ms@ms)
	movlw	high(02h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	56
;PA2-3.c: 56: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	57
;PA2-3.c: 57: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	58
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 30 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    2[COMMON] unsigned char 
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
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	30
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
	line	30
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 7
; Regs used in _instCtrl: [wreg]
;instCtrl@cmd stored from wreg
	movwf	(instCtrl@cmd)
	line	32
	
l514:	
;PA2-3.c: 32: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7	;volatile
	line	33
	
l516:	
;PA2-3.c: 33: PORTB = cmd;
	movf	(instCtrl@cmd),w
	movwf	(6)	;volatile
	line	34
	
l518:	
;PA2-3.c: 34: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	35
;PA2-3.c: 35: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_instCtrl+0)+0+1),f
	movlw	251
movwf	((??_instCtrl+0)+0),f
u57:
	decfsz	((??_instCtrl+0)+0),f
	goto	u57
	decfsz	((??_instCtrl+0)+0+1),f
	goto	u57
	nop2
opt asmopt_on

	line	36
	
l520:	
;PA2-3.c: 36: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	37
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 24 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMMON] unsigned int 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	24
global __ptext3
__ptext3:	;psect for function _delay_ms
psect	text3
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
	line	24
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 6
; Regs used in _delay_ms: [wreg]
	line	26
	
l510:	
;PA2-3.c: 26: while(ms--)
	goto	l25
	
l26:	
	line	27
	
l512:	
;PA2-3.c: 27: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_delay_ms+0)+0+1),f
	movlw	125
movwf	((??_delay_ms+0)+0),f
u67:
	decfsz	((??_delay_ms+0)+0),f
	goto	u67
	decfsz	((??_delay_ms+0)+0+1),f
	goto	u67
opt asmopt_on

	
l25:	
	line	26
	movlw	low(01h)
	subwf	(delay_ms@ms),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ms+1),f
	subwf	(delay_ms@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay_ms@ms+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay_ms@ms)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l512
u10:
	goto	l28
	
l27:	
	line	28
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_decodeKey

;; *************** function _decodeKey *****************
;; Defined at:
;;		line 60 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	60
global __ptext4
__ptext4:	;psect for function _decodeKey
psect	text4
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
	line	60
	global	__size_of_decodeKey
	__size_of_decodeKey	equ	__end_of_decodeKey-_decodeKey
	
_decodeKey:	
;incstack = 0
	opt	stack 6
; Regs used in _decodeKey: [wreg-fsr0h+status,2+status,0+pclath]
;decodeKey@key stored from wreg
	movwf	(decodeKey@key)
	line	68
	
l532:	
;PA2-3.c: 62: const char table[16] =
;PA2-3.c: 63: {'1','2','3','A',
;PA2-3.c: 64: '4','5','6','B',
;PA2-3.c: 65: '7','8','9','C',
;PA2-3.c: 66: '*','0','#','D'};
;PA2-3.c: 68: return table[key];
	movf	(decodeKey@key),w
	addlw	low((decodeKey@table)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	goto	l42
	
l534:	
	line	69
	
l42:	
	return
	opt stack 0
GLOBAL	__end_of_decodeKey
	__end_of_decodeKey:
	signat	_decodeKey,4217
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 39 in file "Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
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
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	39
global __ptext5
__ptext5:	;psect for function _dataCtrl
psect	text5
	file	"Z:\CPE3201 - Bordario\PracticalActivities\PA2\PA2-3.c"
	line	39
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 7
; Regs used in _dataCtrl: [wreg]
;dataCtrl@data stored from wreg
	movwf	(dataCtrl@data)
	line	41
	
l522:	
;PA2-3.c: 41: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7	;volatile
	line	42
	
l524:	
;PA2-3.c: 42: PORTB = data;
	movf	(dataCtrl@data),w
	movwf	(6)	;volatile
	line	43
	
l526:	
;PA2-3.c: 43: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	44
;PA2-3.c: 44: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_dataCtrl+0)+0+1),f
	movlw	251
movwf	((??_dataCtrl+0)+0),f
u77:
	decfsz	((??_dataCtrl+0)+0),f
	goto	u77
	decfsz	((??_dataCtrl+0)+0+1),f
	goto	u77
	nop2
opt asmopt_on

	line	45
	
l528:	
;PA2-3.c: 45: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	46
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
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
