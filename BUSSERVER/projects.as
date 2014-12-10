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
# 3 "F:\pic projects\BUSSERVER\servertest.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "F:\pic projects\BUSSERVER\servertest.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_delay
	FNCALL	_main,_display
	FNCALL	_main,_lcddata
	FNCALL	_main,_TXS
	FNCALL	_main,_TX
	FNCALL	_display,_lcddata
	FNCALL	_display,_delay
	FNCALL	_TXS,_TX
	FNCALL	_TXS,_delay
	FNCALL	_lcddata,_delay
	FNCALL	_lcdcmd,_delay
	FNROOT	_main
	FNCALL	intlevel1,_receive
	global	intlevel1
	FNROOT	intlevel1
	global	_aa
	global	_gg
	global	_ii
	global	_intrf
	global	_MSG
	global	_OF
	global	_ON
	global	_serial_chk
	global	_AA
	global	_TT
	global	__SMS
	global	_ff
	global	_hh
	global	_qq
	global	_b
	global	_bb
	global	_c
	global	_d
	global	_INTCON
psect	text372,local,class=CODE,delta=2
global __ptext372
__ptext372:
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RCIF
_RCIF	set	101
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_RCIE
_RCIE	set	1125
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TRMT
_TRMT	set	1217
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
	
STR_33:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	113	;'q'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	32	;' '
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	113	;'q'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	68	;'D'
	retlw	101	;'e'
	retlw	112	;'p'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	102	;'f'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	102	;'f'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	121	;'y'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	32	;' '
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	71	;'G'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	97	;'a'
	retlw	121	;'y'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	65	;'A'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	98	;'b'
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_29:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_23:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_30:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_24:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_31:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	51	;'3'
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	51	;'3'
	retlw	0
psect	stringtext
	
STR_25:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	51	;'3'
	retlw	0
psect	stringtext
	
STR_32:	
	retlw	36	;'$'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	49	;'1'
	retlw	51	;'3'
	retlw	0
psect	stringtext
STR_20	equ	STR_13+0
STR_27	equ	STR_13+0
STR_34	equ	STR_13+0
STR_14	equ	STR_7+0
STR_21	equ	STR_7+0
STR_28	equ	STR_7+0
STR_19	equ	STR_12+0
STR_26	equ	STR_12+0
	file	"projects.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_TT:
       ds      1

__SMS:
       ds      1

_ff:
       ds      1

_hh:
       ds      1

_qq:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_aa:
       ds      50

_gg:
       ds      2

_ii:
       ds      2

_intrf:
       ds      2

_MSG:
       ds      1

_OF:
       ds      1

_ON:
       ds      1

_serial_chk:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_b:
       ds      20

_bb:
       ds      20

_c:
       ds      20

_d:
       ds      20

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_AA:
       ds      25

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+03Ch)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+050h)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+019h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	?_TX
?_TX:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_receive
?_receive:	; 0 bytes @ 0x0
	global	??_receive
??_receive:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_TX
??_TX:	; 0 bytes @ 0x0
	global	TX@TX_BYTE
TX@TX_BYTE:	; 1 bytes @ 0x0
	global	delay@d
delay@d:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	delay@h
delay@h:	; 2 bytes @ 0x2
	ds	2
	global	delay@k
delay@k:	; 2 bytes @ 0x4
	ds	2
	global	?_lcdcmd
?_lcdcmd:	; 0 bytes @ 0x6
	global	?_lcddata
?_lcddata:	; 0 bytes @ 0x6
	global	?_TXS
?_TXS:	; 0 bytes @ 0x6
	global	TXS@s
TXS@s:	; 2 bytes @ 0x6
	global	lcdcmd@value
lcdcmd@value:	; 2 bytes @ 0x6
	global	lcddata@value
lcddata@value:	; 2 bytes @ 0x6
	ds	2
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x8
	global	?_display
?_display:	; 0 bytes @ 0x8
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x8
	global	??_TXS
??_TXS:	; 0 bytes @ 0x8
	global	display@p
display@p:	; 2 bytes @ 0x8
	ds	2
	global	??_display
??_display:	; 0 bytes @ 0xA
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	2
;;Data sizes: Strings 282, constant 0, data 0, bss 170, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80     14      74
;; BANK1           80      0      80
;; BANK3           96      0      25
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; display@p	PTR unsigned char  size(2) Largest target is 18
;;		 -> STR_34(CODE[17]), STR_33(CODE[18]), STR_28(CODE[17]), STR_27(CODE[17]), 
;;		 -> STR_26(CODE[17]), STR_21(CODE[17]), STR_20(CODE[17]), STR_19(CODE[17]), 
;;		 -> STR_14(CODE[17]), STR_13(CODE[17]), STR_12(CODE[17]), STR_7(CODE[17]), 
;;		 -> STR_6(CODE[18]), STR_5(CODE[17]), STR_4(CODE[17]), STR_3(CODE[16]), 
;;		 -> STR_2(CODE[17]), STR_1(CODE[16]), 
;;
;; TXS@s	PTR unsigned char  size(2) Largest target is 7
;;		 -> STR_32(CODE[7]), STR_31(CODE[7]), STR_30(CODE[7]), STR_29(CODE[7]), 
;;		 -> STR_25(CODE[7]), STR_24(CODE[7]), STR_23(CODE[7]), STR_22(CODE[7]), 
;;		 -> STR_18(CODE[7]), STR_17(CODE[7]), STR_16(CODE[7]), STR_15(CODE[7]), 
;;		 -> STR_11(CODE[7]), STR_10(CODE[7]), STR_9(CODE[7]), STR_8(CODE[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _receive in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_display
;;   _display->_lcddata
;;   _TXS->_delay
;;   _lcddata->_delay
;;   _lcdcmd->_delay
;;
;; Critical Paths under _receive in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _receive in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _receive in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _receive in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    1101
;;                                             12 BANK0      2     2      0
;;                          _uart_init
;;                             _lcdcmd
;;                              _delay
;;                            _display
;;                            _lcddata
;;                                _TXS
;;                                 _TX
;; ---------------------------------------------------------------------------------
;; (1) _display                                              4     2      2     368
;;                                              8 BANK0      4     2      2
;;                            _lcddata
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _TXS                                                  2     0      2     232
;;                                              6 BANK0      2     0      2
;;                                 _TX
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcddata                                              2     0      2     167
;;                                              6 BANK0      2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcdcmd                                               2     0      2     167
;;                                              6 BANK0      2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _TX                                                   1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                6     4      2     136
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _receive                                              7     7      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _lcdcmd
;;     _delay
;;   _delay
;;   _display
;;     _lcddata
;;       _delay
;;     _delay
;;   _lcddata
;;     _delay
;;   _TXS
;;     _TX
;;     _delay
;;   _TX
;;
;; _receive (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      BD       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      E      4A       5       92.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0      50       7      100.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0      19       9       26.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      C0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 27 in file "F:\pic projects\BUSSERVER\servertest.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_uart_init
;;		_lcdcmd
;;		_delay
;;		_display
;;		_lcddata
;;		_TXS
;;		_TX
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l3614:	
;servertest.c: 29: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	30
	
l3616:	
;servertest.c: 30: TRISD=0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	31
	
l3618:	
;servertest.c: 31: TRISC=0X0F;
	movlw	(0Fh)
	movwf	(135)^080h	;volatile
	line	32
;servertest.c: 32: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	33
	
l3620:	
;servertest.c: 33: uart_init();
	fcall	_uart_init
	line	34
	
l3622:	
;servertest.c: 34: lcdcmd(0x38);
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(038h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	35
	
l3624:	
;servertest.c: 35: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	36
	
l3626:	
;servertest.c: 36: lcdcmd(0x0c);
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0Ch)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	37
	
l3628:	
;servertest.c: 37: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	38
	
l3630:	
;servertest.c: 38: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	39
	
l3632:	
;servertest.c: 39: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	40
	
l3634:	
;servertest.c: 40: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	41
	
l3636:	
;servertest.c: 41: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	42
	
l3638:	
;servertest.c: 42: display("  GEC Wayanad  ");
	movlw	low(STR_1|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_1|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	43
	
l3640:	
;servertest.c: 43: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	44
	
l3642:	
;servertest.c: 44: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	45
	
l3644:	
;servertest.c: 45: display("  Dept. of ece  ");
	movlw	low(STR_2|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_2|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	46
	
l3646:	
;servertest.c: 46: delay(1500);
	movlw	low(05DCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(05DCh)
	movwf	((?_delay))+1
	fcall	_delay
	line	47
	
l3648:	
;servertest.c: 47: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	48
	
l3650:	
;servertest.c: 48: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	49
	
l3652:	
;servertest.c: 49: display("  Automatic bus");
	movlw	low(STR_3|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_3|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	50
	
l3654:	
;servertest.c: 50: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	51
	
l3656:	
;servertest.c: 51: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	52
	
l3658:	
;servertest.c: 52: display("   fare System  ");
	movlw	low(STR_4|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_4|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	53
	
l3660:	
;servertest.c: 53: delay(2500);
	movlw	low(09C4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(09C4h)
	movwf	((?_delay))+1
	fcall	_delay
	line	54
	
l3662:	
;servertest.c: 54: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	goto	l3664
	line	55
;servertest.c: 55: while(1)
	
l735:	
	line	57
	
l3664:	
;servertest.c: 56: {
;servertest.c: 57: if(intrf==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_intrf),w
	iorwf	(_intrf+1),w
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l3708
u3800:
	line	59
	
l3666:	
;servertest.c: 58: {
;servertest.c: 59: intrf=0;
	clrf	(_intrf)
	clrf	(_intrf+1)
	line	61
	
l3668:	
;servertest.c: 61: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	62
	
l3670:	
;servertest.c: 62: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	63
	
l3672:	
;servertest.c: 63: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	64
	
l3674:	
;servertest.c: 64: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	65
;servertest.c: 65: for(gg=0;gg<32;gg++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_gg)
	clrf	(_gg+1)
	
l3676:	
	movf	(_gg+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(020h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3815
	movlw	low(020h)
	subwf	(_gg),w
u3815:

	skipc
	goto	u3811
	goto	u3810
u3811:
	goto	l3680
u3810:
	goto	l3704
	
l3678:	
	goto	l3704
	line	66
	
l737:	
	line	67
	
l3680:	
;servertest.c: 66: {
;servertest.c: 67: if(gg<=15)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gg+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3825
	movlw	low(010h)
	subwf	(_gg),w
u3825:

	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l3688
u3820:
	line	68
	
l3682:	
;servertest.c: 68: {if(aa[gg]!='&')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gg),w
	addlw	_aa&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	026h
	skipnz
	goto	u3831
	goto	u3830
u3831:
	goto	l3696
u3830:
	line	70
	
l3684:	
;servertest.c: 69: {
;servertest.c: 70: lcdcmd(0x80+gg);
	movf	(_gg),w
	addlw	low(080h)
	movwf	(?_lcdcmd)
	movf	(_gg+1),w
	skipnc
	addlw	1
	addlw	high(080h)
	movwf	1+(?_lcdcmd)
	fcall	_lcdcmd
	line	71
	
l3686:	
;servertest.c: 71: lcddata(aa[gg]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gg),w
	addlw	_aa&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcddata)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcddata+1)
	fcall	_lcddata
	goto	l3696
	line	72
	
l740:	
	line	73
;servertest.c: 72: }
;servertest.c: 73: }
	goto	l3696
	line	74
	
l739:	
	
l3688:	
;servertest.c: 74: else if(gg>16)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gg+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(011h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3845
	movlw	low(011h)
	subwf	(_gg),w
u3845:

	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l3696
u3840:
	line	76
	
l3690:	
;servertest.c: 75: {
;servertest.c: 76: if(aa[gg]!='&')
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gg),w
	addlw	_aa&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	026h
	skipnz
	goto	u3851
	goto	u3850
u3851:
	goto	l3696
u3850:
	line	78
	
l3692:	
;servertest.c: 77: {
;servertest.c: 78: lcdcmd(0xc0+gg-17);
	movf	(_gg),w
	addlw	low(0AFh)
	movwf	(?_lcdcmd)
	movf	(_gg+1),w
	skipnc
	addlw	1
	addlw	high(0AFh)
	movwf	1+(?_lcdcmd)
	fcall	_lcdcmd
	line	79
	
l3694:	
;servertest.c: 79: lcddata(aa[gg]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gg),w
	addlw	_aa&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcddata)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcddata+1)
	fcall	_lcddata
	goto	l3696
	line	80
	
l743:	
	goto	l3696
	line	81
	
l742:	
	goto	l3696
	line	83
	
l741:	
	
l3696:	
;servertest.c: 80: }
;servertest.c: 81: }
;servertest.c: 83: if(aa[gg]=='&') break;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_gg),w
	addlw	_aa&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	026h
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l3700
u3860:
	goto	l3704
	
l3698:	
	goto	l3704
	
l744:	
	line	65
	
l3700:	
	movlw	low(01h)
	addwf	(_gg),f
	skipnc
	incf	(_gg+1),f
	movlw	high(01h)
	addwf	(_gg+1),f
	
l3702:	
	movf	(_gg+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(020h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3875
	movlw	low(020h)
	subwf	(_gg),w
u3875:

	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l3680
u3870:
	goto	l3704
	
l738:	
	line	85
	
l3704:	
;servertest.c: 84: }
;servertest.c: 85: delay(4000);
	movlw	low(0FA0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0FA0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	86
;servertest.c: 86: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	87
;servertest.c: 87: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	89
	
l3706:	
;servertest.c: 89: ii=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ii)
	clrf	(_ii+1)
	goto	l3708
	line	91
	
l736:	
	line	93
	
l3708:	
;servertest.c: 91: }
;servertest.c: 93: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	94
	
l3710:	
;servertest.c: 94: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	95
	
l3712:	
;servertest.c: 95: display("     WELCOME    ");
	movlw	low(STR_5|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_5|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	96
	
l3714:	
;servertest.c: 96: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	97
	
l3716:	
;servertest.c: 97: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	98
	
l3718:	
;servertest.c: 98: display(" pls enter card  ");
	movlw	low(STR_6|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_6|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	102
	
l3720:	
;servertest.c: 102: if(RC0==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l745
u3880:
	goto	l746
	line	104
	
l3722:	
;servertest.c: 103: {
;servertest.c: 104: while(RC0==0);
	goto	l746
	
l747:	
	
l746:	
	btfss	(56/8),(56)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l746
u3890:
	goto	l3724
	
l748:	
	line	108
	
l3724:	
;servertest.c: 108: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	109
;servertest.c: 109: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	110
	
l3726:	
;servertest.c: 110: display(" enter location ");
	movlw	low(STR_7|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_7|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	112
;servertest.c: 112: while(RD0==1 && RD1==1 && RD2==1 && RD3==1);
	goto	l749
	
l750:	
	
l749:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l753
u3900:
	
l3728:	
	btfss	(65/8),(65)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l753
u3910:
	
l3730:	
	btfss	(66/8),(66)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l753
u3920:
	
l3732:	
	btfsc	(67/8),(67)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l749
u3930:
	goto	l753
	
l752:	
	
l753:	
	line	114
;servertest.c: 114: if(RD0==0)
	btfsc	(64/8),(64)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l3738
u3940:
	goto	l755
	line	116
	
l3734:	
;servertest.c: 115: {
;servertest.c: 116: while(RD0==0);
	goto	l755
	
l756:	
	
l755:	
	btfss	(64/8),(64)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l755
u3950:
	goto	l3736
	
l757:	
	line	117
	
l3736:	
;servertest.c: 117: TXS("$10010");
	movlw	low(STR_8|8000h)
	movwf	(?_TXS)
	movlw	high(STR_8|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3738
	line	119
	
l754:	
	line	120
	
l3738:	
;servertest.c: 119: }
;servertest.c: 120: if(RD1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(65/8),(65)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l3744
u3960:
	goto	l759
	line	122
	
l3740:	
;servertest.c: 121: {
;servertest.c: 122: while(RD1==0);
	goto	l759
	
l760:	
	
l759:	
	btfss	(65/8),(65)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l759
u3970:
	goto	l3742
	
l761:	
	line	123
	
l3742:	
;servertest.c: 123: TXS("$10011");
	movlw	low(STR_9|8000h)
	movwf	(?_TXS)
	movlw	high(STR_9|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3744
	line	125
	
l758:	
	line	126
	
l3744:	
;servertest.c: 125: }
;servertest.c: 126: if(RD2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(66/8),(66)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l3750
u3980:
	goto	l763
	line	128
	
l3746:	
;servertest.c: 127: {
;servertest.c: 128: while(RD2==0);
	goto	l763
	
l764:	
	
l763:	
	btfss	(66/8),(66)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l763
u3990:
	goto	l3748
	
l765:	
	line	129
	
l3748:	
;servertest.c: 129: TXS("$10012");
	movlw	low(STR_10|8000h)
	movwf	(?_TXS)
	movlw	high(STR_10|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3750
	line	131
	
l762:	
	line	132
	
l3750:	
;servertest.c: 131: }
;servertest.c: 132: if(RD3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(67/8),(67)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l3758
u4000:
	goto	l767
	line	134
	
l3752:	
;servertest.c: 133: {
;servertest.c: 134: while(RD3==0);
	goto	l767
	
l768:	
	
l767:	
	btfss	(67/8),(67)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l767
u4010:
	goto	l3754
	
l769:	
	line	135
	
l3754:	
;servertest.c: 135: TXS("$10013");
	movlw	low(STR_11|8000h)
	movwf	(?_TXS)
	movlw	high(STR_11|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	line	136
	
l3756:	
;servertest.c: 136: TX(13);
	movlw	(0Dh)
	fcall	_TX
	goto	l3758
	line	138
	
l766:	
	line	139
	
l3758:	
;servertest.c: 138: }
;servertest.c: 139: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	140
	
l3760:	
;servertest.c: 140: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	141
	
l3762:	
;servertest.c: 141: display("  request send  ");
	movlw	low(STR_12|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_12|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	142
;servertest.c: 142: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	143
;servertest.c: 143: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	144
	
l3764:	
;servertest.c: 144: display(" *** waiting ***");
	movlw	low(STR_13|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_13|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	145
;servertest.c: 145: while(intrf==0);
	goto	l3766
	
l771:	
	goto	l3766
	
l770:	
	
l3766:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_intrf+1),w
	iorwf	(_intrf),w
	skipnz
	goto	u4021
	goto	u4020
u4021:
	goto	l3766
u4020:
	goto	l745
	
l772:	
	line	146
	
l745:	
	line	153
;servertest.c: 146: }
;servertest.c: 153: if(RC1==0)
	btfsc	(57/8),(57)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l773
u4030:
	goto	l774
	line	155
	
l3768:	
;servertest.c: 154: {
;servertest.c: 155: while(RC1==0);
	goto	l774
	
l775:	
	
l774:	
	btfss	(57/8),(57)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l774
u4040:
	goto	l3770
	
l776:	
	line	159
	
l3770:	
;servertest.c: 159: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	160
;servertest.c: 160: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	161
	
l3772:	
;servertest.c: 161: display(" enter location ");
	movlw	low(STR_14|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_14|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	163
;servertest.c: 163: while(RD0==1 && RD1==1 && RD2==1 && RD3==1);
	goto	l777
	
l778:	
	
l777:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l781
u4050:
	
l3774:	
	btfss	(65/8),(65)&7
	goto	u4061
	goto	u4060
u4061:
	goto	l781
u4060:
	
l3776:	
	btfss	(66/8),(66)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l781
u4070:
	
l3778:	
	btfsc	(67/8),(67)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l777
u4080:
	goto	l781
	
l780:	
	
l781:	
	line	165
;servertest.c: 165: if(RD0==0)
	btfsc	(64/8),(64)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l3784
u4090:
	goto	l783
	line	167
	
l3780:	
;servertest.c: 166: {
;servertest.c: 167: while(RD0==0);
	goto	l783
	
l784:	
	
l783:	
	btfss	(64/8),(64)&7
	goto	u4101
	goto	u4100
u4101:
	goto	l783
u4100:
	goto	l3782
	
l785:	
	line	168
	
l3782:	
;servertest.c: 168: TXS("$10110");
	movlw	low(STR_15|8000h)
	movwf	(?_TXS)
	movlw	high(STR_15|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3784
	line	170
	
l782:	
	line	171
	
l3784:	
;servertest.c: 170: }
;servertest.c: 171: if(RD1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(65/8),(65)&7
	goto	u4111
	goto	u4110
u4111:
	goto	l3790
u4110:
	goto	l787
	line	173
	
l3786:	
;servertest.c: 172: {
;servertest.c: 173: while(RD1==0);
	goto	l787
	
l788:	
	
l787:	
	btfss	(65/8),(65)&7
	goto	u4121
	goto	u4120
u4121:
	goto	l787
u4120:
	goto	l3788
	
l789:	
	line	174
	
l3788:	
;servertest.c: 174: TXS("$10111");
	movlw	low(STR_16|8000h)
	movwf	(?_TXS)
	movlw	high(STR_16|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3790
	line	176
	
l786:	
	line	177
	
l3790:	
;servertest.c: 176: }
;servertest.c: 177: if(RD2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(66/8),(66)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l3796
u4130:
	goto	l791
	line	179
	
l3792:	
;servertest.c: 178: {
;servertest.c: 179: while(RD2==0);
	goto	l791
	
l792:	
	
l791:	
	btfss	(66/8),(66)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l791
u4140:
	goto	l3794
	
l793:	
	line	180
	
l3794:	
;servertest.c: 180: TXS("$10112");
	movlw	low(STR_17|8000h)
	movwf	(?_TXS)
	movlw	high(STR_17|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3796
	line	182
	
l790:	
	line	183
	
l3796:	
;servertest.c: 182: }
;servertest.c: 183: if(RD3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(67/8),(67)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l3802
u4150:
	goto	l795
	line	185
	
l3798:	
;servertest.c: 184: {
;servertest.c: 185: while(RD3==0);
	goto	l795
	
l796:	
	
l795:	
	btfss	(67/8),(67)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l795
u4160:
	goto	l3800
	
l797:	
	line	186
	
l3800:	
;servertest.c: 186: TXS("$10113");
	movlw	low(STR_18|8000h)
	movwf	(?_TXS)
	movlw	high(STR_18|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3802
	line	189
	
l794:	
	line	190
	
l3802:	
;servertest.c: 189: }
;servertest.c: 190: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	191
	
l3804:	
;servertest.c: 191: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	192
;servertest.c: 192: display("  request send  ");
	movlw	low(STR_19|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_19|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	193
	
l3806:	
;servertest.c: 193: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	194
	
l3808:	
;servertest.c: 194: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	195
;servertest.c: 195: display(" *** waiting ***");;
	movlw	low(STR_20|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_20|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	196
;servertest.c: 196: while(intrf==0);
	goto	l3810
	
l799:	
	goto	l3810
	
l798:	
	
l3810:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_intrf+1),w
	iorwf	(_intrf),w
	skipnz
	goto	u4171
	goto	u4170
u4171:
	goto	l3810
u4170:
	goto	l773
	
l800:	
	line	198
	
l773:	
	line	205
;servertest.c: 198: }
;servertest.c: 205: if(RC2==0)
	btfsc	(58/8),(58)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l801
u4180:
	goto	l802
	line	207
	
l3812:	
;servertest.c: 206: {
;servertest.c: 207: while(RC2==0);
	goto	l802
	
l803:	
	
l802:	
	btfss	(58/8),(58)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l802
u4190:
	goto	l3814
	
l804:	
	line	211
	
l3814:	
;servertest.c: 211: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	212
;servertest.c: 212: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	213
	
l3816:	
;servertest.c: 213: display(" enter location ");
	movlw	low(STR_21|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_21|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	215
;servertest.c: 215: while(RD0==1 && RD1==1 && RD2==1 && RD3==1);
	goto	l805
	
l806:	
	
l805:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l809
u4200:
	
l3818:	
	btfss	(65/8),(65)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l809
u4210:
	
l3820:	
	btfss	(66/8),(66)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l809
u4220:
	
l3822:	
	btfsc	(67/8),(67)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l805
u4230:
	goto	l809
	
l808:	
	
l809:	
	line	217
;servertest.c: 217: if(RD0==0)
	btfsc	(64/8),(64)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l3828
u4240:
	goto	l811
	line	219
	
l3824:	
;servertest.c: 218: {
;servertest.c: 219: while(RD0==0);
	goto	l811
	
l812:	
	
l811:	
	btfss	(64/8),(64)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l811
u4250:
	goto	l3826
	
l813:	
	line	220
	
l3826:	
;servertest.c: 220: TXS("$10210");
	movlw	low(STR_22|8000h)
	movwf	(?_TXS)
	movlw	high(STR_22|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3828
	line	222
	
l810:	
	line	223
	
l3828:	
;servertest.c: 222: }
;servertest.c: 223: if(RD1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(65/8),(65)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l3834
u4260:
	goto	l815
	line	225
	
l3830:	
;servertest.c: 224: {
;servertest.c: 225: while(RD1==0);
	goto	l815
	
l816:	
	
l815:	
	btfss	(65/8),(65)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l815
u4270:
	goto	l3832
	
l817:	
	line	226
	
l3832:	
;servertest.c: 226: TXS("$10211");
	movlw	low(STR_23|8000h)
	movwf	(?_TXS)
	movlw	high(STR_23|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3834
	line	228
	
l814:	
	line	229
	
l3834:	
;servertest.c: 228: }
;servertest.c: 229: if(RD2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(66/8),(66)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l3840
u4280:
	goto	l819
	line	231
	
l3836:	
;servertest.c: 230: {
;servertest.c: 231: while(RD2==0);
	goto	l819
	
l820:	
	
l819:	
	btfss	(66/8),(66)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l819
u4290:
	goto	l3838
	
l821:	
	line	232
	
l3838:	
;servertest.c: 232: TXS("$10212");
	movlw	low(STR_24|8000h)
	movwf	(?_TXS)
	movlw	high(STR_24|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3840
	line	234
	
l818:	
	line	235
	
l3840:	
;servertest.c: 234: }
;servertest.c: 235: if(RD3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(67/8),(67)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l3846
u4300:
	goto	l823
	line	237
	
l3842:	
;servertest.c: 236: {
;servertest.c: 237: while(RD3==0);
	goto	l823
	
l824:	
	
l823:	
	btfss	(67/8),(67)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l823
u4310:
	goto	l3844
	
l825:	
	line	238
	
l3844:	
;servertest.c: 238: TXS("$10213");
	movlw	low(STR_25|8000h)
	movwf	(?_TXS)
	movlw	high(STR_25|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3846
	line	241
	
l822:	
	line	242
	
l3846:	
;servertest.c: 241: }
;servertest.c: 242: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	243
	
l3848:	
;servertest.c: 243: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	244
;servertest.c: 244: display("  request send  ");
	movlw	low(STR_26|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_26|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	245
	
l3850:	
;servertest.c: 245: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	246
	
l3852:	
;servertest.c: 246: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	247
;servertest.c: 247: display(" *** waiting ***");;
	movlw	low(STR_27|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_27|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	248
;servertest.c: 248: while(intrf==0);
	goto	l3854
	
l827:	
	goto	l3854
	
l826:	
	
l3854:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_intrf+1),w
	iorwf	(_intrf),w
	skipnz
	goto	u4321
	goto	u4320
u4321:
	goto	l3854
u4320:
	goto	l801
	
l828:	
	line	250
	
l801:	
	line	256
;servertest.c: 250: }
;servertest.c: 256: if(RC3==0)
	btfsc	(59/8),(59)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l3664
u4330:
	goto	l830
	line	258
	
l3856:	
;servertest.c: 257: {
;servertest.c: 258: while(RC3==0);
	goto	l830
	
l831:	
	
l830:	
	btfss	(59/8),(59)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l830
u4340:
	goto	l3858
	
l832:	
	line	262
	
l3858:	
;servertest.c: 262: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	263
;servertest.c: 263: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	264
	
l3860:	
;servertest.c: 264: display(" enter location ");
	movlw	low(STR_28|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_28|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	266
;servertest.c: 266: while(RD0==1 && RD1==1 && RD2==1 && RD3==1);
	goto	l833
	
l834:	
	
l833:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u4351
	goto	u4350
u4351:
	goto	l837
u4350:
	
l3862:	
	btfss	(65/8),(65)&7
	goto	u4361
	goto	u4360
u4361:
	goto	l837
u4360:
	
l3864:	
	btfss	(66/8),(66)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l837
u4370:
	
l3866:	
	btfsc	(67/8),(67)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l833
u4380:
	goto	l837
	
l836:	
	
l837:	
	line	268
;servertest.c: 268: if(RD0==0)
	btfsc	(64/8),(64)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l3872
u4390:
	goto	l839
	line	270
	
l3868:	
;servertest.c: 269: {
;servertest.c: 270: while(RD0==0);
	goto	l839
	
l840:	
	
l839:	
	btfss	(64/8),(64)&7
	goto	u4401
	goto	u4400
u4401:
	goto	l839
u4400:
	goto	l3870
	
l841:	
	line	271
	
l3870:	
;servertest.c: 271: TXS("$10310");
	movlw	low(STR_29|8000h)
	movwf	(?_TXS)
	movlw	high(STR_29|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3872
	line	273
	
l838:	
	line	274
	
l3872:	
;servertest.c: 273: }
;servertest.c: 274: if(RD1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(65/8),(65)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l3878
u4410:
	goto	l843
	line	276
	
l3874:	
;servertest.c: 275: {
;servertest.c: 276: while(RD1==0);
	goto	l843
	
l844:	
	
l843:	
	btfss	(65/8),(65)&7
	goto	u4421
	goto	u4420
u4421:
	goto	l843
u4420:
	goto	l3876
	
l845:	
	line	277
	
l3876:	
;servertest.c: 277: TXS("$10311");
	movlw	low(STR_30|8000h)
	movwf	(?_TXS)
	movlw	high(STR_30|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3878
	line	279
	
l842:	
	line	280
	
l3878:	
;servertest.c: 279: }
;servertest.c: 280: if(RD2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(66/8),(66)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l3884
u4430:
	goto	l847
	line	282
	
l3880:	
;servertest.c: 281: {
;servertest.c: 282: while(RD2==0);
	goto	l847
	
l848:	
	
l847:	
	btfss	(66/8),(66)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l847
u4440:
	goto	l3882
	
l849:	
	line	283
	
l3882:	
;servertest.c: 283: TXS("$10312");
	movlw	low(STR_31|8000h)
	movwf	(?_TXS)
	movlw	high(STR_31|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3884
	line	285
	
l846:	
	line	287
	
l3884:	
;servertest.c: 285: }
;servertest.c: 287: if(RD3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(67/8),(67)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l3890
u4450:
	goto	l851
	line	289
	
l3886:	
;servertest.c: 288: {
;servertest.c: 289: while(RD3==0);
	goto	l851
	
l852:	
	
l851:	
	btfss	(67/8),(67)&7
	goto	u4461
	goto	u4460
u4461:
	goto	l851
u4460:
	goto	l3888
	
l853:	
	line	290
	
l3888:	
;servertest.c: 290: TXS("$10313");
	movlw	low(STR_32|8000h)
	movwf	(?_TXS)
	movlw	high(STR_32|8000h)
	movwf	((?_TXS))+1
	fcall	_TXS
	goto	l3890
	line	292
	
l850:	
	line	293
	
l3890:	
;servertest.c: 292: }
;servertest.c: 293: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	294
	
l3892:	
;servertest.c: 294: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	295
;servertest.c: 295: display("  request send   ");
	movlw	low(STR_33|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_33|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	296
	
l3894:	
;servertest.c: 296: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	297
	
l3896:	
;servertest.c: 297: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	298
;servertest.c: 298: display(" *** waiting ***");
	movlw	low(STR_34|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_34|8000h)
	movwf	((?_display))+1
	fcall	_display
	goto	l3664
	line	301
	
l829:	
	goto	l3664
	line	303
	
l854:	
	line	55
	goto	l3664
	
l855:	
	line	307
	
l856:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text373,local,class=CODE,delta=2
global __ptext373
__ptext373:

;; *************** function _display *****************
;; Defined at:
;;		line 416 in file "F:\pic projects\BUSSERVER\servertest.c"
;; Parameters:    Size  Location     Type
;;  p               2    8[BANK0 ] PTR unsigned char 
;;		 -> STR_34(17), STR_33(18), STR_28(17), STR_27(17), 
;;		 -> STR_26(17), STR_21(17), STR_20(17), STR_19(17), 
;;		 -> STR_14(17), STR_13(17), STR_12(17), STR_7(17), 
;;		 -> STR_6(18), STR_5(17), STR_4(17), STR_3(16), 
;;		 -> STR_2(17), STR_1(16), 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcddata
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text373
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	416
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 4
; Regs used in _display: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	417
	
l3604:	
;servertest.c: 417: while (*p)
	goto	l3612
	
l897:	
	line	419
	
l3606:	
;servertest.c: 418: {
;servertest.c: 419: lcddata(*p);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display@p+1),w
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
	line	420
	
l3608:	
;servertest.c: 420: delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	421
	
l3610:	
;servertest.c: 421: p++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display@p),f
	skipnc
	incf	(display@p+1),f
	movlw	high(01h)
	addwf	(display@p+1),f
	goto	l3612
	line	422
	
l896:	
	line	417
	
l3612:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display@p+1),w
	movwf	btemp+1
	movf	(display@p),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l3606
u3790:
	goto	l899
	
l898:	
	line	424
;servertest.c: 422: }
;servertest.c: 423: return;
	
l899:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_TXS
psect	text374,local,class=CODE,delta=2
global __ptext374
__ptext374:

;; *************** function _TXS *****************
;; Defined at:
;;		line 321 in file "F:\pic projects\BUSSERVER\servertest.c"
;; Parameters:    Size  Location     Type
;;  s               2    6[BANK0 ] PTR unsigned char 
;;		 -> STR_32(7), STR_31(7), STR_30(7), STR_29(7), 
;;		 -> STR_25(7), STR_24(7), STR_23(7), STR_22(7), 
;;		 -> STR_18(7), STR_17(7), STR_16(7), STR_15(7), 
;;		 -> STR_11(7), STR_10(7), STR_9(7), STR_8(7), 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_TX
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text374
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	321
	global	__size_of_TXS
	__size_of_TXS	equ	__end_of_TXS-_TXS
	
_TXS:	
	opt	stack 5
; Regs used in _TXS: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	322
	
l3594:	
;servertest.c: 322: while (*s)
	goto	l3602
	
l866:	
	line	324
	
l3596:	
;servertest.c: 323: {
;servertest.c: 324: TX(*s);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(TXS@s+1),w
	movwf	btemp+1
	movf	(TXS@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_TX
	line	325
	
l3598:	
;servertest.c: 325: delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	326
	
l3600:	
;servertest.c: 326: s++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(TXS@s),f
	skipnc
	incf	(TXS@s+1),f
	movlw	high(01h)
	addwf	(TXS@s+1),f
	goto	l3602
	line	327
	
l865:	
	line	322
	
l3602:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(TXS@s+1),w
	movwf	btemp+1
	movf	(TXS@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l3596
u3780:
	goto	l868
	
l867:	
	line	329
;servertest.c: 327: }
;servertest.c: 328: return;
	
l868:	
	return
	opt stack 0
GLOBAL	__end_of_TXS
	__end_of_TXS:
;; =============== function _TXS ends ============

	signat	_TXS,4216
	global	_lcddata
psect	text375,local,class=CODE,delta=2
global __ptext375
__ptext375:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 404 in file "F:\pic projects\BUSSERVER\servertest.c"
;; Parameters:    Size  Location     Type
;;  value           2    6[BANK0 ] unsigned int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_display
;; This function uses a non-reentrant model
;;
psect	text375
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	404
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 5
; Regs used in _lcddata: [wreg+status,2+status,0+pclath+cstack]
	line	405
	
l3582:	
;servertest.c: 405: PORTB=value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcddata@value),w
	movwf	(6)	;volatile
	line	406
	
l3584:	
;servertest.c: 406: RD6=1;
	bsf	(70/8),(70)&7
	line	408
	
l3586:	
;servertest.c: 408: RD7=1;
	bsf	(71/8),(71)&7
	line	409
	
l3588:	
;servertest.c: 409: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	410
	
l3590:	
;servertest.c: 410: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	goto	l893
	line	411
	
l3592:	
	line	412
;servertest.c: 411: return;
	
l893:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdcmd
psect	text376,local,class=CODE,delta=2
global __ptext376
__ptext376:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 393 in file "F:\pic projects\BUSSERVER\servertest.c"
;; Parameters:    Size  Location     Type
;;  value           2    6[BANK0 ] unsigned int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text376
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	393
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 5
; Regs used in _lcdcmd: [wreg+status,2+status,0+pclath+cstack]
	line	394
	
l3570:	
;servertest.c: 394: PORTB=value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcdcmd@value),w
	movwf	(6)	;volatile
	line	395
	
l3572:	
;servertest.c: 395: RD6=0;
	bcf	(70/8),(70)&7
	line	396
	
l3574:	
;servertest.c: 396: RD7=1;
	bsf	(71/8),(71)&7
	line	397
	
l3576:	
;servertest.c: 397: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	398
	
l3578:	
;servertest.c: 398: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	goto	l890
	line	399
	
l3580:	
	line	400
;servertest.c: 399: return;
	
l890:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_TX
psect	text377,local,class=CODE,delta=2
global __ptext377
__ptext377:

;; *************** function _TX *****************
;; Defined at:
;;		line 312 in file "F:\pic projects\BUSSERVER\servertest.c"
;; Parameters:    Size  Location     Type
;;  TX_BYTE         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  TX_BYTE         1    0[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_TXS
;; This function uses a non-reentrant model
;;
psect	text377
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	312
	global	__size_of_TX
	__size_of_TX	equ	__end_of_TX-_TX
	
_TX:	
	opt	stack 6
; Regs used in _TX: [wreg]
;TX@TX_BYTE stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(TX@TX_BYTE)
	line	313
	
l3568:	
;servertest.c: 313: TXREG = TX_BYTE;
	movf	(TX@TX_BYTE),w
	movwf	(25)	;volatile
	line	314
;servertest.c: 314: while(!TRMT);
	goto	l859
	
l860:	
	
l859:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l859
u3770:
	
l861:	
	line	315
;servertest.c: 315: TRMT=0;
	bcf	(1217/8)^080h,(1217)&7
	line	317
;servertest.c: 316: return;
	
l862:	
	return
	opt stack 0
GLOBAL	__end_of_TX
	__end_of_TX:
;; =============== function _TX ends ============

	signat	_TX,4216
	global	_delay
psect	text378,local,class=CODE,delta=2
global __ptext378
__ptext378:

;; *************** function _delay *****************
;; Defined at:
;;		line 377 in file "F:\pic projects\BUSSERVER\servertest.c"
;; Parameters:    Size  Location     Type
;;  d               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  k               2    4[BANK0 ] unsigned int 
;;  h               2    2[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_TXS
;;		_lcdcmd
;;		_lcddata
;;		_display
;; This function uses a non-reentrant model
;;
psect	text378
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	377
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg+status,2]
	line	379
	
l3556:	
;servertest.c: 378: unsigned int k,h;
;servertest.c: 379: for(h=0;h<d;h++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@h)
	clrf	(delay@h+1)
	goto	l882
	line	381
	
l883:	
	line	382
	
l3558:	
;servertest.c: 381: {
;servertest.c: 382: for(k=0;k<=250;k++)
	clrf	(delay@k)
	clrf	(delay@k+1)
	
l3560:	
	movlw	high(0FBh)
	subwf	(delay@k+1),w
	movlw	low(0FBh)
	skipnz
	subwf	(delay@k),w
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3564
u3740:
	goto	l3566
	
l3562:	
	goto	l3566
	line	383
	
l884:	
	line	382
	
l3564:	
;servertest.c: 383: {
	movlw	low(01h)
	addwf	(delay@k),f
	skipnc
	incf	(delay@k+1),f
	movlw	high(01h)
	addwf	(delay@k+1),f
	movlw	high(0FBh)
	subwf	(delay@k+1),w
	movlw	low(0FBh)
	skipnz
	subwf	(delay@k),w
	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l3564
u3750:
	goto	l3566
	
l885:	
	line	379
	
l3566:	
	movlw	low(01h)
	addwf	(delay@h),f
	skipnc
	incf	(delay@h+1),f
	movlw	high(01h)
	addwf	(delay@h+1),f
	
l882:	
	movf	(delay@d+1),w
	subwf	(delay@h+1),w
	skipz
	goto	u3765
	movf	(delay@d),w
	subwf	(delay@h),w
u3765:
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3558
u3760:
	goto	l887
	
l886:	
	line	387
;servertest.c: 384: }
;servertest.c: 385: }
;servertest.c: 386: return;
	
l887:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_uart_init
psect	text379,local,class=CODE,delta=2
global __ptext379
__ptext379:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 354 in file "F:\pic projects\BUSSERVER\servertest.c"
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
psect	text379
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	354
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 6
; Regs used in _uart_init: [wreg]
	line	355
	
l3548:	
;servertest.c: 355: TRISC7 =1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	356
;servertest.c: 356: TRISC6 =0;
	bcf	(1086/8)^080h,(1086)&7
	line	357
	
l3550:	
;servertest.c: 357: SPBRG = 129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	358
;servertest.c: 358: INTCON=0xc0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	359
	
l3552:	
;servertest.c: 359: RCIE =1;
	bsf	(1125/8)^080h,(1125)&7
	line	360
;servertest.c: 360: TXSTA = 0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	361
;servertest.c: 361: RCSTA = 0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	goto	l876
	line	362
	
l3554:	
	line	363
;servertest.c: 362: return;
	
l876:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_receive
psect	text380,local,class=CODE,delta=2
global __ptext380
__ptext380:

;; *************** function _receive *****************
;; Defined at:
;;		line 333 in file "F:\pic projects\BUSSERVER\servertest.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    0        int 
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
psect	text380
	file	"F:\pic projects\BUSSERVER\servertest.c"
	line	333
	global	__size_of_receive
	__size_of_receive	equ	__end_of_receive-_receive
	
_receive:	
	opt	stack 4
; Regs used in _receive: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_receive+1)
	movf	fsr0,w
	movwf	(??_receive+2)
	movf	pclath,w
	movwf	(??_receive+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_receive+4)
	ljmp	_receive
psect	text380
	line	335
	
i1l3198:	
;servertest.c: 335: if(RCIE && RCIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u302_21
	goto	u302_20
u302_21:
	goto	i1l873
u302_20:
	
i1l3200:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l873
u303_20:
	line	338
	
i1l3202:	
;servertest.c: 336: {
;servertest.c: 337: int k;
;servertest.c: 338: RCIF =0;
	bcf	(101/8),(101)&7
	line	340
	
i1l3204:	
;servertest.c: 340: aa[ii]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_receive+0)+0
	movf	(_ii),w
	addlw	_aa&0ffh
	movwf	fsr0
	movf	(??_receive+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	343
;servertest.c: 343: if(aa[ii]=='&')
	movf	(_ii),w
	addlw	_aa&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	026h
	skipz
	goto	u304_21
	goto	u304_20
u304_21:
	goto	i1l3212
u304_20:
	line	345
	
i1l3206:	
;servertest.c: 344: {
;servertest.c: 345: intrf=1;
	movlw	low(01h)
	movwf	(_intrf)
	movlw	high(01h)
	movwf	((_intrf))+1
	line	346
	
i1l3208:	
;servertest.c: 346: aa[ii++]='\0';
	movf	(_ii),w
	addlw	_aa&0ffh
	movwf	fsr0
	clrf	indf
	
i1l3210:	
	movlw	low(01h)
	addwf	(_ii),f
	skipnc
	incf	(_ii+1),f
	movlw	high(01h)
	addwf	(_ii+1),f
	goto	i1l3212
	line	347
	
i1l872:	
	line	348
	
i1l3212:	
;servertest.c: 347: }
;servertest.c: 348: ii++;
	movlw	low(01h)
	addwf	(_ii),f
	skipnc
	incf	(_ii+1),f
	movlw	high(01h)
	addwf	(_ii+1),f
	goto	i1l873
	line	349
	
i1l871:	
	line	351
	
i1l873:	
	movf	(??_receive+4),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_receive+3),w
	movwf	pclath
	movf	(??_receive+2),w
	movwf	fsr0
	swapf	(??_receive+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_receive
	__end_of_receive:
;; =============== function _receive ends ============

	signat	_receive,88
psect	text381,local,class=CODE,delta=2
global __ptext381
__ptext381:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
