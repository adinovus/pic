opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

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
	FNCALL	_main,_delay
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_display
	FNCALL	_display,_lcddata
	FNCALL	_display,_delay
	FNCALL	_lcd_init,_delay
	FNCALL	_lcd_init,_lcd_init_write
	FNCALL	_lcd_init,_lcdcmd
	FNCALL	_lcd_init_write,_delay
	FNCALL	_lcddata,_delay
	FNCALL	_lcdcmd,_delay
	FNROOT	_main
	global	_PORTC
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
	
STR_1:	
	retlw	32	;' '
	retlw	97	;'a'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	111	;'o'
	retlw	120	;'x'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	51	;'3'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	52	;'4'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	107	;'k'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	111	;'o'
	retlw	101	;'e'
	retlw	0
psect	stringtext
STR_15	equ	STR_12+0
STR_18	equ	STR_12+0
STR_21	equ	STR_12+0
	file	"automatic shoe rack.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_lcd_init_write
?_lcd_init_write:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@itime
delay@itime:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	ds	1
	global	delay@i
delay@i:	; 2 bytes @ 0x3
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x5
	ds	2
	global	?_lcdcmd
?_lcdcmd:	; 0 bytes @ 0x7
	global	?_lcddata
?_lcddata:	; 0 bytes @ 0x7
	global	??_lcd_init_write
??_lcd_init_write:	; 0 bytes @ 0x7
	global	lcd_init_write@a
lcd_init_write@a:	; 1 bytes @ 0x7
	global	lcdcmd@value
lcdcmd@value:	; 2 bytes @ 0x7
	global	lcddata@value
lcddata@value:	; 2 bytes @ 0x7
	ds	2
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x9
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x9
	ds	2
	global	lcdcmd@temp
lcdcmd@temp:	; 1 bytes @ 0xB
	global	lcddata@temp
lcddata@temp:	; 1 bytes @ 0xB
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0xC
	global	?_display
?_display:	; 0 bytes @ 0xC
	global	display@p
display@p:	; 2 bytes @ 0xC
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_display
??_display:	; 0 bytes @ 0x0
	ds	2
;;Data sizes: Strings 279, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      2       2
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; display@p	PTR unsigned char  size(2) Largest target is 17
;;		 -> STR_21(CODE[14]), STR_20(CODE[15]), STR_19(CODE[15]), STR_18(CODE[14]), 
;;		 -> STR_17(CODE[15]), STR_16(CODE[15]), STR_15(CODE[14]), STR_14(CODE[15]), 
;;		 -> STR_13(CODE[15]), STR_12(CODE[14]), STR_11(CODE[15]), STR_10(CODE[15]), 
;;		 -> STR_9(CODE[15]), STR_8(CODE[16]), STR_7(CODE[16]), STR_6(CODE[16]), 
;;		 -> STR_5(CODE[16]), STR_4(CODE[15]), STR_3(CODE[17]), STR_2(CODE[17]), 
;;		 -> STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_display
;;   _display->_lcddata
;;   _lcd_init->_lcdcmd
;;   _lcd_init_write->_delay
;;   _lcddata->_delay
;;   _lcdcmd->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_display
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     660
;;                              _delay
;;                           _lcd_init
;;                             _lcdcmd
;;                            _display
;; ---------------------------------------------------------------------------------
;; (1) _display                                              4     2      2     225
;;                                             12 COMMON     2     0      2
;;                                              0 BANK0      2     2      0
;;                            _lcddata
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0     255
;;                              _delay
;;                     _lcd_init_write
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init_write                                       1     1      0      75
;;                                              7 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcddata                                              5     3      2     120
;;                                              7 COMMON     5     3      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcdcmd                                               5     3      2     120
;;                                              7 COMMON     5     3      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                7     5      2      60
;;                                              0 COMMON     7     5      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;   _lcd_init
;;     _delay
;;     _lcd_init_write
;;       _delay
;;     _lcdcmd
;;       _delay
;;   _lcdcmd
;;     _delay
;;   _display
;;     _lcddata
;;       _delay
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      2       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "F:\pic projects\shoe rack controller\shoe 2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;;		_lcd_init
;;		_lcdcmd
;;		_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\shoe rack controller\shoe 2.c"
	line	41
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	43
	
l3145:	
;shoe 2.c: 43: TRISB=0XFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	44
	
l3147:	
;shoe 2.c: 44: TRISC=0X00;
	clrf	(135)^080h	;volatile
	line	45
	
l3149:	
;shoe 2.c: 45: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	46
;shoe 2.c: 46: TRISA=0XFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	47
;shoe 2.c: 47: TRISE=0X07;
	movlw	(07h)
	movwf	(137)^080h	;volatile
	line	48
	
l3151:	
;shoe 2.c: 48: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	49
	
l3153:	
;shoe 2.c: 49: ADCON1 = 0x07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	50
	
l3155:	
;shoe 2.c: 50: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	51
	
l3157:	
;shoe 2.c: 51: lcd_init();
	fcall	_lcd_init
	line	52
	
l3159:	
;shoe 2.c: 52: lcd_init();
	fcall	_lcd_init
	line	53
	
l3161:	
;shoe 2.c: 53: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	54
	
l3163:	
;shoe 2.c: 54: display(" auto shoe rack ");
	movlw	low(STR_1|8000h)
	movwf	(?_display)
	movlw	high(STR_1|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	55
	
l3165:	
;shoe 2.c: 55: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3167
	line	56
;shoe 2.c: 56: while(1)
	
l711:	
	line	58
	
l3167:	
;shoe 2.c: 57: {
;shoe 2.c: 58: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	59
	
l3169:	
;shoe 2.c: 59: display("put shoe on box ");
	movlw	low(STR_2|8000h)
	movwf	(?_display)
	movlw	high(STR_2|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	60
	
l3171:	
;shoe 2.c: 60: lcdcmd(0xc0);
	movlw	low(0C0h)
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	61
	
l3173:	
;shoe 2.c: 61: display("or give rack num");
	movlw	low(STR_3|8000h)
	movwf	(?_display)
	movlw	high(STR_3|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	65
	
l3175:	
;shoe 2.c: 65: if(RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l712
u2660:
	line	67
	
l3177:	
;shoe 2.c: 66: {
;shoe 2.c: 67: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	68
	
l3179:	
;shoe 2.c: 68: display("   pls wait   ");
	movlw	low(STR_4|8000h)
	movwf	(?_display)
	movlw	high(STR_4|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	70
	
l3181:	
;shoe 2.c: 70: if(RB5==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l713
u2670:
	line	72
	
l3183:	
;shoe 2.c: 71: {
;shoe 2.c: 72: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l714
u2680:
	line	74
	
l3185:	
;shoe 2.c: 73: {
;shoe 2.c: 74: RC2=1;
	bsf	(58/8),(58)&7
	line	75
;shoe 2.c: 75: while(RE1==0);
	goto	l715
	
l716:	
	
l715:	
	btfss	(73/8),(73)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l715
u2690:
	
l717:	
	line	76
;shoe 2.c: 76: RC2=0;
	bcf	(58/8),(58)&7
	line	77
;shoe 2.c: 77: RC0=1;
	bsf	(56/8),(56)&7
	line	78
	
l3187:	
;shoe 2.c: 78: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	79
	
l3189:	
;shoe 2.c: 79: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	80
;shoe 2.c: 80: }
	goto	l718
	line	81
	
l714:	
	line	83
;shoe 2.c: 81: else
;shoe 2.c: 82: {
;shoe 2.c: 83: RC4=1;
	bsf	(60/8),(60)&7
	line	84
;shoe 2.c: 84: RC5=0;
	bcf	(61/8),(61)&7
	line	85
;shoe 2.c: 85: while(RB1==0);
	goto	l719
	
l720:	
	
l719:	
	btfss	(49/8),(49)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l719
u2700:
	
l721:	
	line	86
;shoe 2.c: 86: RC4=0;
	bcf	(60/8),(60)&7
	line	87
;shoe 2.c: 87: RC5=0;
	bcf	(61/8),(61)&7
	line	89
;shoe 2.c: 89: RC2=1;
	bsf	(58/8),(58)&7
	line	90
;shoe 2.c: 90: while(RE1==0);
	goto	l722
	
l723:	
	
l722:	
	btfss	(73/8),(73)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l722
u2710:
	
l724:	
	line	91
;shoe 2.c: 91: RC2=0;
	bcf	(58/8),(58)&7
	line	92
;shoe 2.c: 92: RC0=1;
	bsf	(56/8),(56)&7
	line	93
	
l3191:	
;shoe 2.c: 93: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	94
	
l3193:	
;shoe 2.c: 94: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	95
	
l718:	
	line	96
;shoe 2.c: 95: }
;shoe 2.c: 96: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	97
	
l3195:	
;shoe 2.c: 97: display("shoe on rack #1");
	movlw	low(STR_5|8000h)
	movwf	(?_display)
	movlw	high(STR_5|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	98
	
l3197:	
;shoe 2.c: 98: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	100
;shoe 2.c: 100: }
	goto	l3167
	line	104
	
l713:	
;shoe 2.c: 104: else if(RB6==0)
	btfsc	(54/8),(54)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l726
u2720:
	line	106
	
l3199:	
;shoe 2.c: 105: {
;shoe 2.c: 106: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l727
u2730:
	line	108
	
l3201:	
;shoe 2.c: 107: {
;shoe 2.c: 108: RC2=1;
	bsf	(58/8),(58)&7
	line	109
;shoe 2.c: 109: while(RE2==0);
	goto	l728
	
l729:	
	
l728:	
	btfss	(74/8),(74)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l728
u2740:
	
l730:	
	line	110
;shoe 2.c: 110: RC2=0;
	bcf	(58/8),(58)&7
	line	111
;shoe 2.c: 111: RC0=1;
	bsf	(56/8),(56)&7
	line	112
	
l3203:	
;shoe 2.c: 112: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	113
	
l3205:	
;shoe 2.c: 113: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	114
;shoe 2.c: 114: }
	goto	l731
	line	115
	
l727:	
	line	117
;shoe 2.c: 115: else
;shoe 2.c: 116: {
;shoe 2.c: 117: RC4=0;
	bcf	(60/8),(60)&7
	line	118
;shoe 2.c: 118: RC5=1;
	bsf	(61/8),(61)&7
	line	119
;shoe 2.c: 119: while(RB1==0);
	goto	l732
	
l733:	
	
l732:	
	btfss	(49/8),(49)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l732
u2750:
	
l734:	
	line	120
;shoe 2.c: 120: RC4=0;
	bcf	(60/8),(60)&7
	line	121
;shoe 2.c: 121: RC5=0;
	bcf	(61/8),(61)&7
	line	123
;shoe 2.c: 123: RC2=1;
	bsf	(58/8),(58)&7
	line	124
;shoe 2.c: 124: while(RE2==0);
	goto	l735
	
l736:	
	
l735:	
	btfss	(74/8),(74)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l735
u2760:
	
l737:	
	line	125
;shoe 2.c: 125: RC2=0;
	bcf	(58/8),(58)&7
	line	126
;shoe 2.c: 126: RC0=1;
	bsf	(56/8),(56)&7
	line	127
	
l3207:	
;shoe 2.c: 127: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	128
	
l3209:	
;shoe 2.c: 128: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	129
	
l731:	
	line	131
;shoe 2.c: 129: }
;shoe 2.c: 131: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	132
	
l3211:	
;shoe 2.c: 132: display("shoe on rack #2");
	movlw	low(STR_6|8000h)
	movwf	(?_display)
	movlw	high(STR_6|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	134
	
l3213:	
;shoe 2.c: 134: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	135
;shoe 2.c: 135: }
	goto	l3167
	line	136
	
l726:	
;shoe 2.c: 136: else if(RB7==0)
	btfsc	(55/8),(55)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l739
u2770:
	line	138
	
l3215:	
;shoe 2.c: 137: {
;shoe 2.c: 138: RD0=1;
	bsf	(64/8),(64)&7
	line	139
;shoe 2.c: 139: RD1=0;
	bcf	(65/8),(65)&7
	line	140
	
l3217:	
;shoe 2.c: 140: delay(15000);
	movlw	low(03A98h)
	movwf	(?_delay)
	movlw	high(03A98h)
	movwf	((?_delay))+1
	fcall	_delay
	line	141
	
l3219:	
;shoe 2.c: 141: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	142
	
l3221:	
;shoe 2.c: 142: RD1=0;
	bcf	(65/8),(65)&7
	line	144
	
l3223:	
;shoe 2.c: 144: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l740
u2780:
	line	146
	
l3225:	
;shoe 2.c: 145: {
;shoe 2.c: 146: RC2=1;
	bsf	(58/8),(58)&7
	line	147
;shoe 2.c: 147: while(RE1);
	goto	l741
	
l742:	
	
l741:	
	btfsc	(73/8),(73)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l741
u2790:
	
l743:	
	line	148
;shoe 2.c: 148: RC2=0;
	bcf	(58/8),(58)&7
	line	149
;shoe 2.c: 149: RC0=1;
	bsf	(56/8),(56)&7
	line	150
	
l3227:	
;shoe 2.c: 150: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	151
	
l3229:	
;shoe 2.c: 151: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	152
;shoe 2.c: 152: }
	goto	l3235
	line	153
	
l740:	
	line	155
;shoe 2.c: 153: else
;shoe 2.c: 154: {
;shoe 2.c: 155: RC4=1;
	bsf	(60/8),(60)&7
	line	156
;shoe 2.c: 156: RC5=0;
	bcf	(61/8),(61)&7
	line	157
;shoe 2.c: 157: while(RB1==0);
	goto	l745
	
l746:	
	
l745:	
	btfss	(49/8),(49)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l745
u2800:
	
l747:	
	line	158
;shoe 2.c: 158: RC4=0;
	bcf	(60/8),(60)&7
	line	159
;shoe 2.c: 159: RC5=0;
	bcf	(61/8),(61)&7
	line	161
;shoe 2.c: 161: RC2=1;
	bsf	(58/8),(58)&7
	line	162
;shoe 2.c: 162: while(RE1==0);
	goto	l748
	
l749:	
	
l748:	
	btfss	(73/8),(73)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l748
u2810:
	
l750:	
	line	163
;shoe 2.c: 163: RC2=0;
	bcf	(58/8),(58)&7
	line	164
;shoe 2.c: 164: RC0=1;
	bsf	(56/8),(56)&7
	line	165
	
l3231:	
;shoe 2.c: 165: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	166
	
l3233:	
;shoe 2.c: 166: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	goto	l3235
	line	167
	
l744:	
	line	168
	
l3235:	
;shoe 2.c: 167: }
;shoe 2.c: 168: RD0=0;
	bcf	(64/8),(64)&7
	line	169
	
l3237:	
;shoe 2.c: 169: RD1=1;
	bsf	(65/8),(65)&7
	line	170
;shoe 2.c: 170: delay(15000);
	movlw	low(03A98h)
	movwf	(?_delay)
	movlw	high(03A98h)
	movwf	((?_delay))+1
	fcall	_delay
	line	171
	
l3239:	
;shoe 2.c: 171: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	172
	
l3241:	
;shoe 2.c: 172: RD1=0;
	bcf	(65/8),(65)&7
	line	175
;shoe 2.c: 175: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	176
	
l3243:	
;shoe 2.c: 176: display("shoe on rack #3");
	movlw	low(STR_7|8000h)
	movwf	(?_display)
	movlw	high(STR_7|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	177
	
l3245:	
;shoe 2.c: 177: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	179
;shoe 2.c: 179: }
	goto	l3167
	line	183
	
l739:	
;shoe 2.c: 183: else if(RE0==0)
	btfsc	(72/8),(72)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l3279
u2820:
	line	185
	
l3247:	
;shoe 2.c: 184: {
;shoe 2.c: 185: RD0=1;
	bsf	(64/8),(64)&7
	line	186
;shoe 2.c: 186: RD1=0;
	bcf	(65/8),(65)&7
	line	187
	
l3249:	
;shoe 2.c: 187: delay(15000);
	movlw	low(03A98h)
	movwf	(?_delay)
	movlw	high(03A98h)
	movwf	((?_delay))+1
	fcall	_delay
	line	188
	
l3251:	
;shoe 2.c: 188: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	189
	
l3253:	
;shoe 2.c: 189: RD1=0;
	bcf	(65/8),(65)&7
	line	191
	
l3255:	
;shoe 2.c: 191: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l753
u2830:
	line	193
	
l3257:	
;shoe 2.c: 192: {
;shoe 2.c: 193: RC2=1;
	bsf	(58/8),(58)&7
	line	194
;shoe 2.c: 194: while(RE2==0);
	goto	l754
	
l755:	
	
l754:	
	btfss	(74/8),(74)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l754
u2840:
	
l756:	
	line	195
;shoe 2.c: 195: RC2=0;
	bcf	(58/8),(58)&7
	line	196
;shoe 2.c: 196: RC0=1;
	bsf	(56/8),(56)&7
	line	197
	
l3259:	
;shoe 2.c: 197: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	198
	
l3261:	
;shoe 2.c: 198: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	199
;shoe 2.c: 199: }
	goto	l3267
	line	200
	
l753:	
	line	202
;shoe 2.c: 200: else
;shoe 2.c: 201: {
;shoe 2.c: 202: RC4=0;
	bcf	(60/8),(60)&7
	line	203
;shoe 2.c: 203: RC5=1;
	bsf	(61/8),(61)&7
	line	204
;shoe 2.c: 204: while(RB1==0);
	goto	l758
	
l759:	
	
l758:	
	btfss	(49/8),(49)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l758
u2850:
	
l760:	
	line	205
;shoe 2.c: 205: RC4=0;
	bcf	(60/8),(60)&7
	line	206
;shoe 2.c: 206: RC5=0;
	bcf	(61/8),(61)&7
	line	208
;shoe 2.c: 208: RC2=1;
	bsf	(58/8),(58)&7
	line	209
;shoe 2.c: 209: while(RE2==0);
	goto	l761
	
l762:	
	
l761:	
	btfss	(74/8),(74)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l761
u2860:
	
l763:	
	line	210
;shoe 2.c: 210: RC2=0;
	bcf	(58/8),(58)&7
	line	211
;shoe 2.c: 211: RC0=1;
	bsf	(56/8),(56)&7
	line	212
	
l3263:	
;shoe 2.c: 212: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	213
	
l3265:	
;shoe 2.c: 213: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	goto	l3267
	line	214
	
l757:	
	line	216
	
l3267:	
;shoe 2.c: 214: }
;shoe 2.c: 216: RD0=0;
	bcf	(64/8),(64)&7
	line	217
	
l3269:	
;shoe 2.c: 217: RD1=1;
	bsf	(65/8),(65)&7
	line	218
;shoe 2.c: 218: delay(15000);
	movlw	low(03A98h)
	movwf	(?_delay)
	movlw	high(03A98h)
	movwf	((?_delay))+1
	fcall	_delay
	line	219
	
l3271:	
;shoe 2.c: 219: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	220
	
l3273:	
;shoe 2.c: 220: RD1=0;
	bcf	(65/8),(65)&7
	line	222
;shoe 2.c: 222: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	223
	
l3275:	
;shoe 2.c: 223: display("shoe on rack #4");
	movlw	low(STR_8|8000h)
	movwf	(?_display)
	movlw	high(STR_8|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	224
	
l3277:	
;shoe 2.c: 224: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	225
;shoe 2.c: 225: }
	goto	l3167
	line	226
	
l752:	
	line	228
	
l3279:	
;shoe 2.c: 226: else
;shoe 2.c: 227: {
;shoe 2.c: 228: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	229
	
l3281:	
;shoe 2.c: 229: display("sorry no space");
	movlw	low(STR_9|8000h)
	movwf	(?_display)
	movlw	high(STR_9|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	230
	
l3283:	
;shoe 2.c: 230: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3167
	line	232
	
l764:	
	goto	l3167
	
l751:	
	goto	l3167
	
l738:	
	goto	l3167
	
l725:	
	line	235
;shoe 2.c: 232: }
;shoe 2.c: 235: }
	goto	l3167
	line	237
	
l712:	
;shoe 2.c: 237: else if(RA0==0)
	btfsc	(40/8),(40)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l766
u2870:
	line	240
	
l3285:	
;shoe 2.c: 238: {
;shoe 2.c: 240: if(RB5==0)
	btfsc	(53/8),(53)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l3293
u2880:
	line	242
	
l3287:	
;shoe 2.c: 241: {
;shoe 2.c: 242: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	243
	
l3289:	
;shoe 2.c: 243: display("rack 1 is emty");
	movlw	low(STR_10|8000h)
	movwf	(?_display)
	movlw	high(STR_10|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	244
	
l3291:	
;shoe 2.c: 244: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	245
;shoe 2.c: 245: }
	goto	l3167
	line	246
	
l767:	
	line	248
	
l3293:	
;shoe 2.c: 246: else
;shoe 2.c: 247: {
;shoe 2.c: 248: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	249
	
l3295:	
;shoe 2.c: 249: display("getting rack 1");
	movlw	low(STR_11|8000h)
	movwf	(?_display)
	movlw	high(STR_11|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	250
	
l3297:	
;shoe 2.c: 250: if(RB3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l769
u2890:
	line	252
	
l3299:	
;shoe 2.c: 251: {
;shoe 2.c: 252: RC1=1;
	bsf	(57/8),(57)&7
	line	253
	
l3301:	
;shoe 2.c: 253: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	254
	
l3303:	
;shoe 2.c: 254: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	255
	
l3305:	
;shoe 2.c: 255: RC2=1;
	bsf	(58/8),(58)&7
	line	256
;shoe 2.c: 256: delay(8000);
	movlw	low(01F40h)
	movwf	(?_delay)
	movlw	high(01F40h)
	movwf	((?_delay))+1
	fcall	_delay
	line	257
	
l3307:	
;shoe 2.c: 257: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	258
;shoe 2.c: 258: }
	goto	l770
	line	259
	
l769:	
	line	261
;shoe 2.c: 259: else
;shoe 2.c: 260: {
;shoe 2.c: 261: RC6=0;
	bcf	(62/8),(62)&7
	line	262
;shoe 2.c: 262: RC7=1;
	bsf	(63/8),(63)&7
	line	263
;shoe 2.c: 263: while(RB3==0);
	goto	l771
	
l772:	
	
l771:	
	btfss	(51/8),(51)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l771
u2900:
	
l773:	
	line	264
;shoe 2.c: 264: RC6=0;
	bcf	(62/8),(62)&7
	line	265
;shoe 2.c: 265: RC7=0;
	bcf	(63/8),(63)&7
	line	267
;shoe 2.c: 267: RC1=1;
	bsf	(57/8),(57)&7
	line	268
	
l3309:	
;shoe 2.c: 268: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	269
	
l3311:	
;shoe 2.c: 269: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	270
	
l3313:	
;shoe 2.c: 270: RC2==1;
	line	271
;shoe 2.c: 271: delay(18000);
	movlw	low(04650h)
	movwf	(?_delay)
	movlw	high(04650h)
	movwf	((?_delay))+1
	fcall	_delay
	line	272
	
l3315:	
;shoe 2.c: 272: RC2==0;
	line	273
	
l770:	
	line	275
;shoe 2.c: 273: }
;shoe 2.c: 275: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	276
	
l3317:	
;shoe 2.c: 276: display("pls take shoe");
	movlw	low(STR_12|8000h)
	movwf	(?_display)
	movlw	high(STR_12|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	277
	
l3319:	
;shoe 2.c: 277: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3167
	line	278
	
l768:	
	line	279
;shoe 2.c: 278: }
;shoe 2.c: 279: }
	goto	l3167
	line	285
	
l766:	
;shoe 2.c: 285: else if(RA1==0)
	btfsc	(41/8),(41)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l775
u2910:
	line	287
	
l3321:	
;shoe 2.c: 286: {
;shoe 2.c: 287: if(RB6==0)
	btfsc	(54/8),(54)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l3329
u2920:
	line	289
	
l3323:	
;shoe 2.c: 288: {
;shoe 2.c: 289: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	290
	
l3325:	
;shoe 2.c: 290: display("rack 2 is emty");
	movlw	low(STR_13|8000h)
	movwf	(?_display)
	movlw	high(STR_13|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	291
	
l3327:	
;shoe 2.c: 291: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	292
;shoe 2.c: 292: }
	goto	l3167
	line	293
	
l776:	
	line	295
	
l3329:	
;shoe 2.c: 293: else
;shoe 2.c: 294: {
;shoe 2.c: 295: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	296
	
l3331:	
;shoe 2.c: 296: display("getting rack 2");
	movlw	low(STR_14|8000h)
	movwf	(?_display)
	movlw	high(STR_14|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	297
	
l3333:	
;shoe 2.c: 297: if(RB4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l778
u2930:
	line	299
	
l3335:	
;shoe 2.c: 298: {
;shoe 2.c: 299: RC1=1;
	bsf	(57/8),(57)&7
	line	300
	
l3337:	
;shoe 2.c: 300: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	301
	
l3339:	
;shoe 2.c: 301: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	302
	
l3341:	
;shoe 2.c: 302: RC2==1;
	line	303
;shoe 2.c: 303: delay(18000);
	movlw	low(04650h)
	movwf	(?_delay)
	movlw	high(04650h)
	movwf	((?_delay))+1
	fcall	_delay
	line	304
	
l3343:	
;shoe 2.c: 304: RC2==0;
	line	305
;shoe 2.c: 305: }
	goto	l779
	line	306
	
l778:	
	line	308
;shoe 2.c: 306: else
;shoe 2.c: 307: {
;shoe 2.c: 308: RC6=1;
	bsf	(62/8),(62)&7
	line	309
;shoe 2.c: 309: RC7=0;
	bcf	(63/8),(63)&7
	line	310
;shoe 2.c: 310: while(RB4==0);
	goto	l780
	
l781:	
	
l780:	
	btfss	(52/8),(52)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l780
u2940:
	
l782:	
	line	311
;shoe 2.c: 311: RC6=0;
	bcf	(62/8),(62)&7
	line	312
;shoe 2.c: 312: RC7=0;
	bcf	(63/8),(63)&7
	line	314
;shoe 2.c: 314: RC1=1;
	bsf	(57/8),(57)&7
	line	315
	
l3345:	
;shoe 2.c: 315: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	316
	
l3347:	
;shoe 2.c: 316: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	317
	
l3349:	
;shoe 2.c: 317: RC2==1;
	line	318
;shoe 2.c: 318: delay(18000);
	movlw	low(04650h)
	movwf	(?_delay)
	movlw	high(04650h)
	movwf	((?_delay))+1
	fcall	_delay
	line	319
	
l3351:	
;shoe 2.c: 319: RC2==0;
	line	320
	
l779:	
	line	321
;shoe 2.c: 320: }
;shoe 2.c: 321: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	322
	
l3353:	
;shoe 2.c: 322: display("pls take shoe");
	movlw	low(STR_15|8000h)
	movwf	(?_display)
	movlw	high(STR_15|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	323
	
l3355:	
;shoe 2.c: 323: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3167
	line	324
	
l777:	
	line	325
;shoe 2.c: 324: }
;shoe 2.c: 325: }
	goto	l3167
	line	330
	
l775:	
;shoe 2.c: 330: else if(RA2==0)
	btfsc	(42/8),(42)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l784
u2950:
	line	332
	
l3357:	
;shoe 2.c: 331: {
;shoe 2.c: 332: if(RB7==0)
	btfsc	(55/8),(55)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l3365
u2960:
	line	334
	
l3359:	
;shoe 2.c: 333: {
;shoe 2.c: 334: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	335
	
l3361:	
;shoe 2.c: 335: display("rack 3 is emty");
	movlw	low(STR_16|8000h)
	movwf	(?_display)
	movlw	high(STR_16|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	336
	
l3363:	
;shoe 2.c: 336: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	337
;shoe 2.c: 337: }
	goto	l3167
	line	338
	
l785:	
	line	340
	
l3365:	
;shoe 2.c: 338: else
;shoe 2.c: 339: {
;shoe 2.c: 340: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	341
	
l3367:	
;shoe 2.c: 341: display("getting rack 3");
	movlw	low(STR_17|8000h)
	movwf	(?_display)
	movlw	high(STR_17|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	342
	
l3369:	
;shoe 2.c: 342: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	343
	
l3371:	
;shoe 2.c: 343: RD1=0;
	bcf	(65/8),(65)&7
	line	344
	
l3373:	
;shoe 2.c: 344: delay(15000);
	movlw	low(03A98h)
	movwf	(?_delay)
	movlw	high(03A98h)
	movwf	((?_delay))+1
	fcall	_delay
	line	345
	
l3375:	
;shoe 2.c: 345: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	346
	
l3377:	
;shoe 2.c: 346: RD1=0;
	bcf	(65/8),(65)&7
	line	347
	
l3379:	
;shoe 2.c: 347: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l787
u2970:
	line	349
	
l3381:	
;shoe 2.c: 348: {
;shoe 2.c: 349: RC1=1;
	bsf	(57/8),(57)&7
	line	350
	
l3383:	
;shoe 2.c: 350: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	351
	
l3385:	
;shoe 2.c: 351: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	352
	
l3387:	
;shoe 2.c: 352: RC2==1;
	line	353
;shoe 2.c: 353: delay(18000);
	movlw	low(04650h)
	movwf	(?_delay)
	movlw	high(04650h)
	movwf	((?_delay))+1
	fcall	_delay
	line	354
	
l3389:	
;shoe 2.c: 354: RC2==0;
	line	355
;shoe 2.c: 355: }
	goto	l788
	line	356
	
l787:	
	line	358
;shoe 2.c: 356: else
;shoe 2.c: 357: {
;shoe 2.c: 358: RC6=0;
	bcf	(62/8),(62)&7
	line	359
;shoe 2.c: 359: RC7=1;
	bsf	(63/8),(63)&7
	line	360
;shoe 2.c: 360: while(RB3==0);
	goto	l789
	
l790:	
	
l789:	
	btfss	(51/8),(51)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l789
u2980:
	
l791:	
	line	361
;shoe 2.c: 361: RC6=0;
	bcf	(62/8),(62)&7
	line	362
;shoe 2.c: 362: RC7=0;
	bcf	(63/8),(63)&7
	line	364
;shoe 2.c: 364: RC1=1;
	bsf	(57/8),(57)&7
	line	365
	
l3391:	
;shoe 2.c: 365: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	366
	
l3393:	
;shoe 2.c: 366: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	367
	
l3395:	
;shoe 2.c: 367: RC2==1;
	line	368
;shoe 2.c: 368: delay(18000);
	movlw	low(04650h)
	movwf	(?_delay)
	movlw	high(04650h)
	movwf	((?_delay))+1
	fcall	_delay
	line	369
	
l3397:	
;shoe 2.c: 369: RC2==0;
	line	371
	
l3399:	
;shoe 2.c: 371: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	372
	
l3401:	
;shoe 2.c: 372: RD1=1;
	bsf	(65/8),(65)&7
	line	373
;shoe 2.c: 373: delay(15000);
	movlw	low(03A98h)
	movwf	(?_delay)
	movlw	high(03A98h)
	movwf	((?_delay))+1
	fcall	_delay
	line	374
	
l3403:	
;shoe 2.c: 374: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	375
	
l3405:	
;shoe 2.c: 375: RD1=0;
	bcf	(65/8),(65)&7
	line	376
	
l788:	
	line	379
;shoe 2.c: 376: }
;shoe 2.c: 379: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	380
	
l3407:	
;shoe 2.c: 380: display("pls take shoe");
	movlw	low(STR_18|8000h)
	movwf	(?_display)
	movlw	high(STR_18|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	381
	
l3409:	
;shoe 2.c: 381: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3167
	line	382
	
l786:	
	line	383
;shoe 2.c: 382: }
;shoe 2.c: 383: }
	goto	l3167
	line	384
	
l784:	
;shoe 2.c: 384: else if(RA3==0)
	btfsc	(43/8),(43)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l3465
u2990:
	line	386
	
l3411:	
;shoe 2.c: 385: {
;shoe 2.c: 386: if(RE0==0)
	btfsc	(72/8),(72)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l3419
u3000:
	line	388
	
l3413:	
;shoe 2.c: 387: {
;shoe 2.c: 388: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	389
	
l3415:	
;shoe 2.c: 389: display("rack 4 is emty");
	movlw	low(STR_19|8000h)
	movwf	(?_display)
	movlw	high(STR_19|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	390
	
l3417:	
;shoe 2.c: 390: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	391
;shoe 2.c: 391: }
	goto	l3167
	line	392
	
l794:	
	line	395
	
l3419:	
;shoe 2.c: 392: else
;shoe 2.c: 393: {
;shoe 2.c: 395: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	396
	
l3421:	
;shoe 2.c: 396: display("getting rack 4");
	movlw	low(STR_20|8000h)
	movwf	(?_display)
	movlw	high(STR_20|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	397
	
l3423:	
;shoe 2.c: 397: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	398
	
l3425:	
;shoe 2.c: 398: RD1=0;
	bcf	(65/8),(65)&7
	line	399
	
l3427:	
;shoe 2.c: 399: delay(15000);
	movlw	low(03A98h)
	movwf	(?_delay)
	movlw	high(03A98h)
	movwf	((?_delay))+1
	fcall	_delay
	line	400
	
l3429:	
;shoe 2.c: 400: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	401
	
l3431:	
;shoe 2.c: 401: RD1=0;
	bcf	(65/8),(65)&7
	line	402
	
l3433:	
;shoe 2.c: 402: if(RB4==1)
	btfss	(52/8),(52)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l796
u3010:
	line	404
	
l3435:	
;shoe 2.c: 403: {
;shoe 2.c: 404: RC1=1;
	bsf	(57/8),(57)&7
	line	405
	
l3437:	
;shoe 2.c: 405: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	406
	
l3439:	
;shoe 2.c: 406: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	407
	
l3441:	
;shoe 2.c: 407: RC2==1;
	line	408
;shoe 2.c: 408: delay(18000);
	movlw	low(04650h)
	movwf	(?_delay)
	movlw	high(04650h)
	movwf	((?_delay))+1
	fcall	_delay
	line	409
	
l3443:	
;shoe 2.c: 409: RC2==0;
	line	410
;shoe 2.c: 410: }
	goto	l797
	line	411
	
l796:	
	line	413
;shoe 2.c: 411: else
;shoe 2.c: 412: {
;shoe 2.c: 413: RC6=0;
	bcf	(62/8),(62)&7
	line	414
;shoe 2.c: 414: RC7=1;
	bsf	(63/8),(63)&7
	line	415
;shoe 2.c: 415: while(RB4==0);
	goto	l798
	
l799:	
	
l798:	
	btfss	(52/8),(52)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l798
u3020:
	
l800:	
	line	416
;shoe 2.c: 416: RC6=0;
	bcf	(62/8),(62)&7
	line	417
;shoe 2.c: 417: RC7=0;
	bcf	(63/8),(63)&7
	line	419
;shoe 2.c: 419: RC1=1;
	bsf	(57/8),(57)&7
	line	420
	
l3445:	
;shoe 2.c: 420: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	421
	
l3447:	
;shoe 2.c: 421: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	422
	
l3449:	
;shoe 2.c: 422: RC2==1;
	line	423
;shoe 2.c: 423: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	424
	
l3451:	
;shoe 2.c: 424: RC2==0;
	line	426
	
l3453:	
;shoe 2.c: 426: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	427
	
l3455:	
;shoe 2.c: 427: RD1=1;
	bsf	(65/8),(65)&7
	line	428
;shoe 2.c: 428: delay(15000);
	movlw	low(03A98h)
	movwf	(?_delay)
	movlw	high(03A98h)
	movwf	((?_delay))+1
	fcall	_delay
	line	429
	
l3457:	
;shoe 2.c: 429: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	430
	
l3459:	
;shoe 2.c: 430: RD1=0;
	bcf	(65/8),(65)&7
	line	431
	
l797:	
	line	433
;shoe 2.c: 431: }
;shoe 2.c: 433: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	434
	
l3461:	
;shoe 2.c: 434: display("pls take shoe");
	movlw	low(STR_21|8000h)
	movwf	(?_display)
	movlw	high(STR_21|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	435
	
l3463:	
;shoe 2.c: 435: delay(8000);
	movlw	low(01F40h)
	movwf	(?_delay)
	movlw	high(01F40h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3167
	line	436
	
l795:	
	line	437
;shoe 2.c: 436: }
;shoe 2.c: 437: }
	goto	l3167
	line	438
	
l793:	
	line	440
	
l3465:	
;shoe 2.c: 438: else
;shoe 2.c: 439: {
;shoe 2.c: 440: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l3167
	line	441
	
l801:	
	goto	l3167
	
l792:	
	goto	l3167
	
l783:	
	goto	l3167
	
l774:	
	goto	l3167
	
l765:	
	goto	l3167
	line	447
	
l802:	
	line	56
	goto	l3167
	
l803:	
	line	453
	
l804:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text189,local,class=CODE,delta=2
global __ptext189
__ptext189:

;; *************** function _display *****************
;; Defined at:
;;		line 103 in file "F:\pic projects\shoe rack controller\lcd.h"
;; Parameters:    Size  Location     Type
;;  p               2   12[COMMON] PTR unsigned char 
;;		 -> STR_21(14), STR_20(15), STR_19(15), STR_18(14), 
;;		 -> STR_17(15), STR_16(15), STR_15(14), STR_14(15), 
;;		 -> STR_13(15), STR_12(14), STR_11(15), STR_10(15), 
;;		 -> STR_9(15), STR_8(16), STR_7(16), STR_6(16), 
;;		 -> STR_5(16), STR_4(15), STR_3(17), STR_2(17), 
;;		 -> STR_1(17), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcddata
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text189
	file	"F:\pic projects\shoe rack controller\lcd.h"
	line	103
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	104
	
l3135:	
;lcd.h: 104: while (*p)
	goto	l3143
	
l706:	
	line	106
	
l3137:	
;lcd.h: 105: {
;lcd.h: 106: lcddata(*p);
	movf	(display@p+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(display@p),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_display+0)+0
	clrf	(??_display+0)+0+1
	movf	0+(??_display+0)+0,w
	movwf	(?_lcddata)
	movf	1+(??_display+0)+0,w
	movwf	(?_lcddata+1)
	fcall	_lcddata
	line	107
	
l3139:	
;lcd.h: 107: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	108
	
l3141:	
;lcd.h: 108: p++;
	movlw	low(01h)
	addwf	(display@p),f
	skipnc
	incf	(display@p+1),f
	movlw	high(01h)
	addwf	(display@p+1),f
	goto	l3143
	line	109
	
l705:	
	line	104
	
l3143:	
	movf	(display@p+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(display@p),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l3137
u2650:
	goto	l708
	
l707:	
	line	111
;lcd.h: 109: }
;lcd.h: 110: return;
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_lcd_init
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 75 in file "F:\pic projects\shoe rack controller\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_delay
;;		_lcd_init_write
;;		_lcdcmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text190
	file	"F:\pic projects\shoe rack controller\lcd.h"
	line	75
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 5
; Regs used in _lcd_init: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	76
	
l2801:	
;lcd.h: 76: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	77
;lcd.h: 77: lcd_init_write(0x28);
	movlw	(028h)
	fcall	_lcd_init_write
	line	78
;lcd.h: 78: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	85
;lcd.h: 85: lcdcmd(0x28);
	movlw	low(028h)
	movwf	(?_lcdcmd)
	movlw	high(028h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	86
;lcd.h: 86: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	87
;lcd.h: 87: lcdcmd(4);
	movlw	low(04h)
	movwf	(?_lcdcmd)
	movlw	high(04h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	88
;lcd.h: 88: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	89
;lcd.h: 89: lcdcmd(0x0c);
	movlw	low(0Ch)
	movwf	(?_lcdcmd)
	movlw	high(0Ch)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	90
;lcd.h: 90: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	91
;lcd.h: 91: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	92
;lcd.h: 92: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	93
;lcd.h: 93: lcdcmd(1);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	94
;lcd.h: 94: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	95
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcd_init_write
psect	text191,local,class=CODE,delta=2
global __ptext191
__ptext191:

;; *************** function _lcd_init_write *****************
;; Defined at:
;;		line 65 in file "F:\pic projects\shoe rack controller\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text191
	file	"F:\pic projects\shoe rack controller\lcd.h"
	line	65
	global	__size_of_lcd_init_write
	__size_of_lcd_init_write	equ	__end_of_lcd_init_write-_lcd_init_write
	
_lcd_init_write:	
	opt	stack 5
; Regs used in _lcd_init_write: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcd_init_write@a stored from wreg
	movwf	(lcd_init_write@a)
	line	66
	
l2791:	
;lcd.h: 66: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	67
	
l2793:	
;lcd.h: 67: PORTD=a;
	movf	(lcd_init_write@a),w
	movwf	(8)	;volatile
	line	68
	
l2795:	
;lcd.h: 68: RD2=1;
	bsf	(66/8),(66)&7
	line	69
	
l2797:	
;lcd.h: 69: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	70
	
l2799:	
;lcd.h: 70: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	71
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init_write
	__end_of_lcd_init_write:
;; =============== function _lcd_init_write ends ============

	signat	_lcd_init_write,4216
	global	_lcddata
psect	text192,local,class=CODE,delta=2
global __ptext192
__ptext192:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 42 in file "F:\pic projects\shoe rack controller\lcd.h"
;; Parameters:    Size  Location     Type
;;  value           2    7[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  temp            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text192
	file	"F:\pic projects\shoe rack controller\lcd.h"
	line	42
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 5
; Regs used in _lcddata: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l2757:	
;lcd.h: 43: unsigned char temp;
;lcd.h: 45: RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	46
	
l2759:	
;lcd.h: 46: temp= value;
	movf	(lcddata@value),w
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	movwf	(lcddata@temp)
	line	47
	
l2761:	
;lcd.h: 47: temp&=0xf0;
	movlw	(0F0h)
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	andwf	(lcddata@temp),f
	line	48
	
l2763:	
;lcd.h: 48: PORTD&=0x0f;
	movlw	(0Fh)
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	andwf	(8),f	;volatile
	line	49
	
l2765:	
;lcd.h: 49: PORTD|=temp;
	movf	(lcddata@temp),w
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	iorwf	(8),f	;volatile
	line	50
	
l2767:	
;lcd.h: 50: RD2=1;
	bsf	(66/8),(66)&7
	line	51
	
l2769:	
;lcd.h: 51: delay(3);
	movlw	low(03h)
	movwf	(?_delay)
	movlw	high(03h)
	movwf	((?_delay))+1
	fcall	_delay
	line	52
	
l2771:	
;lcd.h: 52: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	53
	
l2773:	
;lcd.h: 53: temp=value<<4;
	movf	(lcddata@value),w
	movwf	(??_lcddata+0)+0
	movlw	(04h)-1
u2265:
	clrc
	rlf	(??_lcddata+0)+0,f
	addlw	-1
	skipz
	goto	u2265
	clrc
	rlf	(??_lcddata+0)+0,w
	movwf	(??_lcddata+1)+0
	movf	(??_lcddata+1)+0,w
	movwf	(lcddata@temp)
	line	54
	
l2775:	
;lcd.h: 54: temp&=0xf0;
	movlw	(0F0h)
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	andwf	(lcddata@temp),f
	line	55
	
l2777:	
;lcd.h: 55: PORTD&=0x0f;
	movlw	(0Fh)
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	andwf	(8),f	;volatile
	line	56
	
l2779:	
;lcd.h: 56: PORTD|=temp;
	movf	(lcddata@temp),w
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	iorwf	(8),f	;volatile
	line	57
	
l2781:	
;lcd.h: 57: RD2=1;
	bsf	(66/8),(66)&7
	line	58
	
l2783:	
;lcd.h: 58: delay(3);
	movlw	low(03h)
	movwf	(?_delay)
	movlw	high(03h)
	movwf	((?_delay))+1
	fcall	_delay
	line	59
	
l2785:	
;lcd.h: 59: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	60
	
l2787:	
;lcd.h: 60: delay(3);
	movlw	low(03h)
	movwf	(?_delay)
	movlw	high(03h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l696
	line	61
	
l2789:	
	line	62
;lcd.h: 61: return;
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdcmd
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 18 in file "F:\pic projects\shoe rack controller\lcd.h"
;; Parameters:    Size  Location     Type
;;  value           2    7[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  temp            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;;		_main
;; This function uses a non-reentrant model
;;
psect	text193
	file	"F:\pic projects\shoe rack controller\lcd.h"
	line	18
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 6
; Regs used in _lcdcmd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l2723:	
;lcd.h: 19: unsigned char temp;
;lcd.h: 21: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	22
	
l2725:	
;lcd.h: 22: temp= value;
	movf	(lcdcmd@value),w
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	movwf	(lcdcmd@temp)
	line	23
	
l2727:	
;lcd.h: 23: temp&=0xf0;
	movlw	(0F0h)
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	andwf	(lcdcmd@temp),f
	line	24
	
l2729:	
;lcd.h: 24: PORTD&=0x0f;
	movlw	(0Fh)
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	andwf	(8),f	;volatile
	line	25
	
l2731:	
;lcd.h: 25: PORTD|=temp;
	movf	(lcdcmd@temp),w
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	iorwf	(8),f	;volatile
	line	26
	
l2733:	
;lcd.h: 26: RD2=1;
	bsf	(66/8),(66)&7
	line	27
	
l2735:	
;lcd.h: 27: delay(3);
	movlw	low(03h)
	movwf	(?_delay)
	movlw	high(03h)
	movwf	((?_delay))+1
	fcall	_delay
	line	28
	
l2737:	
;lcd.h: 28: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	29
	
l2739:	
;lcd.h: 29: temp=value<<4;
	movf	(lcdcmd@value),w
	movwf	(??_lcdcmd+0)+0
	movlw	(04h)-1
u2255:
	clrc
	rlf	(??_lcdcmd+0)+0,f
	addlw	-1
	skipz
	goto	u2255
	clrc
	rlf	(??_lcdcmd+0)+0,w
	movwf	(??_lcdcmd+1)+0
	movf	(??_lcdcmd+1)+0,w
	movwf	(lcdcmd@temp)
	line	30
	
l2741:	
;lcd.h: 30: temp&=0xf0;
	movlw	(0F0h)
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	andwf	(lcdcmd@temp),f
	line	31
	
l2743:	
;lcd.h: 31: PORTD&=0x0f;
	movlw	(0Fh)
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	andwf	(8),f	;volatile
	line	32
	
l2745:	
;lcd.h: 32: PORTD|=temp;
	movf	(lcdcmd@temp),w
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	iorwf	(8),f	;volatile
	line	33
	
l2747:	
;lcd.h: 33: RD2=1;
	bsf	(66/8),(66)&7
	line	34
	
l2749:	
;lcd.h: 34: delay(3);
	movlw	low(03h)
	movwf	(?_delay)
	movlw	high(03h)
	movwf	((?_delay))+1
	fcall	_delay
	line	35
	
l2751:	
;lcd.h: 35: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	36
	
l2753:	
;lcd.h: 36: delay(3);
	movlw	low(03h)
	movwf	(?_delay)
	movlw	high(03h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l693
	line	37
	
l2755:	
	line	38
;lcd.h: 37: return;
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_delay
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _delay *****************
;; Defined at:
;;		line 9 in file "F:\pic projects\shoe rack controller\lcd.h"
;; Parameters:    Size  Location     Type
;;  itime           2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    5[COMMON] int 
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcdcmd
;;		_lcddata
;;		_lcd_init_write
;;		_lcd_init
;;		_display
;;		_main
;; This function uses a non-reentrant model
;;
psect	text194
	file	"F:\pic projects\shoe rack controller\lcd.h"
	line	9
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	11
	
l1851:	
;lcd.h: 10: int i,j;
;lcd.h: 11: for(i=0;i<itime;i++)
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l685
	line	12
	
l686:	
	
l1853:	
;lcd.h: 12: for(j=0;j<235;j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l1855:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0EBh))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(0EBh)
	subwf	(delay@j),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l1859
u10:
	goto	l1863
	
l1857:	
	goto	l1863
	
l687:	
	
l1859:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l1861:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0EBh))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0EBh)
	subwf	(delay@j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l1859
u20:
	goto	l1863
	
l688:	
	line	11
	
l1863:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l685:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@itime+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u35
	movf	(delay@itime),w
	subwf	(delay@i),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l1853
u30:
	goto	l690
	
l689:	
	line	14
;lcd.h: 13: return;
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
