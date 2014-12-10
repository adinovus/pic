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
	FNCALL	_main,_uart_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_StorTempl
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_display
	FNCALL	_main,_delay
	FNCALL	_main,_SrchFinger
	FNCALL	_SrchFinger,_Readfinger
	FNCALL	_SrchFinger,_storChar1
	FNCALL	_SrchFinger,_storChar2
	FNCALL	_SrchFinger,_Sendstring
	FNCALL	_SrchFinger,_lcdcmd
	FNCALL	_SrchFinger,_delay
	FNCALL	_SrchFinger,_display
	FNCALL	_SrchFinger,_errorDisplay
	FNCALL	_StorTempl,_lcdcmd
	FNCALL	_StorTempl,_delay
	FNCALL	_StorTempl,_display
	FNCALL	_StorTempl,_Readfinger
	FNCALL	_StorTempl,_storChar1
	FNCALL	_StorTempl,_storChar2
	FNCALL	_StorTempl,_Sendstring
	FNCALL	_StorTempl,_TX
	FNCALL	_StorTempl,_errorDisplay
	FNCALL	_errorDisplay,_lcdcmd
	FNCALL	_errorDisplay,_delay
	FNCALL	_errorDisplay,_display
	FNCALL	_storChar2,_Sendstring
	FNCALL	_storChar1,_Sendstring
	FNCALL	_Readfinger,_Sendstring
	FNCALL	_display,_lcddata
	FNCALL	_display,_delay
	FNCALL	_lcd_init,_delay
	FNCALL	_lcd_init,_lcd_init_write
	FNCALL	_lcd_init,_lcdcmd
	FNCALL	_Sendstring,_TX
	FNCALL	_Sendstring,_delay
	FNCALL	_lcd_init_write,_delay
	FNCALL	_lcddata,_delay
	FNCALL	_lcdcmd,_delay
	FNROOT	_main
	FNCALL	intlevel1,_receive
	global	intlevel1
	FNROOT	intlevel1
	global	_Stortemplate
	global	_Srchtemplate
	global	_Genchar1
	global	_Genchar2
	global	_GenImg
	global	_Gentemplate
	global	_Rdvlidtempl
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	37

;initializer for _Stortemplate
	retlw	0EFh
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	0
	retlw	06h
	retlw	06h
	retlw	01h
	retlw	0
	retlw	02h
	retlw	0
	retlw	010h
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	line	38

;initializer for _Srchtemplate
	retlw	0EFh
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	0
	retlw	08h
	retlw	04h
	retlw	01h
	retlw	0
	retlw	01h
	retlw	0
	retlw	03Fh
	retlw	0
	retlw	04Eh
psect	idataBANK1
	line	33

;initializer for _Genchar1
	retlw	0EFh
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	0
	retlw	04h
	retlw	02h
	retlw	01h
	retlw	0
	retlw	08h
	line	34

;initializer for _Genchar2
	retlw	0EFh
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	0
	retlw	04h
	retlw	02h
	retlw	02h
	retlw	0
	retlw	09h
	line	32

;initializer for _GenImg
	retlw	0EFh
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	0
	retlw	03h
	retlw	01h
	retlw	0
	retlw	05h
	line	35

;initializer for _Gentemplate
	retlw	0EFh
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	0
	retlw	03h
	retlw	05h
	retlw	0
	retlw	09h
	line	36

;initializer for _Rdvlidtempl
	retlw	0EFh
	retlw	01h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	0
	retlw	03h
	retlw	01Dh
	retlw	0
	retlw	021h
	global	_aa
	global	_gg
	global	_ii
	global	_intrf
	global	_MSG
	global	_OF
	global	_ON
	global	_TT
	global	__SMS
	global	_chk
	global	_AA
	global	_bb
	global	_b
	global	_c
	global	_d
	global	_i
	global	_ff
	global	_hh
	global	_qq
	global	_INTCON
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
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_OERR
_OERR	set	193
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RCIF
_RCIF	set	101
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
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
	global	_BRGH
_BRGH	set	1218
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
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	98	;'b'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	78	;'N'
	retlw	101	;'e'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	121	;'y'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_20:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	stringtext
	
STR_22:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	110	;'n'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	102	;'f'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
STR_4	equ	STR_2+0
STR_12	equ	STR_8+0
STR_23	equ	STR_16+1
STR_9	equ	STR_5+0
STR_3	equ	STR_1+0
	file	"finger voting.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

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

_TT:
       ds      1

__SMS:
       ds      1

_chk:
       ds      1

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	37
_Stortemplate:
       ds      15

psect	dataBANK1
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	33
_Genchar1:
       ds      13

psect	dataBANK1
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	34
_Genchar2:
       ds      13

psect	dataBANK1
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	32
_GenImg:
       ds      12

psect	dataBANK1
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	35
_Gentemplate:
       ds      12

psect	dataBANK1
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	36
_Rdvlidtempl:
       ds      12

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_b:
       ds      20

_c:
       ds      20

_d:
       ds      20

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	38
_Srchtemplate:
       ds      17

psect	bssBANK2,class=BANK2,space=1
global __pbssBANK2
__pbssBANK2:
_AA:
       ds      25

_bb:
       ds      20

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
	movlw	low((__pbssBANK0)+03Eh)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+03Ch)
	fcall	clear_ram
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK2)
	movwf	fsr
	movlw	low((__pbssBANK2)+02Dh)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	movlw low(__pdataBANK3+17)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+77)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	StorTempl@chksum
StorTempl@chksum:	; 1 bytes @ 0x0
	ds	1
	global	StorTempl@addr1
StorTempl@addr1:	; 1 bytes @ 0x1
	ds	1
	global	StorTempl@addr2
StorTempl@addr2:	; 1 bytes @ 0x2
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_StorTempl
?_StorTempl:	; 0 bytes @ 0x0
	global	?_SrchFinger
?_SrchFinger:	; 0 bytes @ 0x0
	global	?_errorDisplay
?_errorDisplay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_TX
?_TX:	; 0 bytes @ 0x0
	global	?_receive
?_receive:	; 0 bytes @ 0x0
	global	??_receive
??_receive:	; 0 bytes @ 0x0
	global	?_lcd_init_write
?_lcd_init_write:	; 0 bytes @ 0x0
	global	?_Readfinger
?_Readfinger:	; 0 bytes @ 0x0
	global	?_storChar1
?_storChar1:	; 0 bytes @ 0x0
	global	?_storChar2
?_storChar2:	; 0 bytes @ 0x0
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
	global	??_lcd_init_write
??_lcd_init_write:	; 0 bytes @ 0x6
	global	?_Sendstring
?_Sendstring:	; 0 bytes @ 0x6
	global	lcd_init_write@a
lcd_init_write@a:	; 1 bytes @ 0x6
	global	lcdcmd@value
lcdcmd@value:	; 2 bytes @ 0x6
	global	lcddata@value
lcddata@value:	; 2 bytes @ 0x6
	global	Sendstring@strng
Sendstring@strng:	; 2 bytes @ 0x6
	ds	2
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x8
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x8
	global	Sendstring@length
Sendstring@length:	; 1 bytes @ 0x8
	ds	1
	global	??_Sendstring
??_Sendstring:	; 0 bytes @ 0x9
	ds	1
	global	lcdcmd@temp
lcdcmd@temp:	; 1 bytes @ 0xA
	global	lcddata@temp
lcddata@temp:	; 1 bytes @ 0xA
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0xB
	global	?_display
?_display:	; 0 bytes @ 0xB
	global	display@p
display@p:	; 2 bytes @ 0xB
	ds	1
	global	??_Readfinger
??_Readfinger:	; 0 bytes @ 0xC
	global	??_storChar1
??_storChar1:	; 0 bytes @ 0xC
	global	??_storChar2
??_storChar2:	; 0 bytes @ 0xC
	ds	1
	global	??_display
??_display:	; 0 bytes @ 0xD
	ds	2
	global	??_StorTempl
??_StorTempl:	; 0 bytes @ 0xF
	global	??_SrchFinger
??_SrchFinger:	; 0 bytes @ 0xF
	global	??_errorDisplay
??_errorDisplay:	; 0 bytes @ 0xF
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x10
;;Data sizes: Strings 266, constant 0, data 94, bss 172, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80     16      78
;; BANK1           80      3      80
;; BANK3           96      0      77
;; BANK2           96      0      45

;;
;; Pointer list with targets:

;; Sendstring@strng	PTR unsigned char  size(2) Largest target is 17
;;		 -> Srchtemplate(BANK3[17]), Rdvlidtempl(BANK1[12]), Gentemplate(BANK1[12]), Genchar2(BANK1[13]), 
;;		 -> Genchar1(BANK1[13]), GenImg(BANK1[12]), 
;;
;; display@p	PTR unsigned char  size(2) Largest target is 17
;;		 -> STR_23(CODE[9]), STR_22(CODE[13]), STR_21(CODE[16]), STR_20(CODE[14]), 
;;		 -> STR_19(CODE[14]), STR_18(CODE[9]), STR_17(CODE[14]), STR_16(CODE[10]), 
;;		 -> STR_15(CODE[17]), STR_14(CODE[17]), STR_13(CODE[17]), STR_12(CODE[14]), 
;;		 -> STR_11(CODE[13]), STR_10(CODE[17]), STR_9(CODE[17]), STR_8(CODE[14]), 
;;		 -> STR_7(CODE[13]), STR_6(CODE[17]), STR_5(CODE[17]), STR_4(CODE[17]), 
;;		 -> STR_3(CODE[17]), STR_2(CODE[17]), STR_1(CODE[17]), 
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
;;   _main->_StorTempl
;;   _main->_SrchFinger
;;   _SrchFinger->_display
;;   _StorTempl->_display
;;   _errorDisplay->_display
;;   _storChar2->_Sendstring
;;   _storChar1->_Sendstring
;;   _Readfinger->_Sendstring
;;   _display->_lcddata
;;   _lcd_init->_lcdcmd
;;   _Sendstring->_delay
;;   _lcd_init_write->_delay
;;   _lcddata->_delay
;;   _lcdcmd->_delay
;;
;; Critical Paths under _receive in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_StorTempl
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    7007
;;                          _uart_init
;;                           _lcd_init
;;                          _StorTempl
;;                             _lcdcmd
;;                            _display
;;                              _delay
;;                         _SrchFinger
;; ---------------------------------------------------------------------------------
;; (1) _SrchFinger                                           1     1      0    2678
;;                                             15 BANK0      1     1      0
;;                         _Readfinger
;;                          _storChar1
;;                          _storChar2
;;                         _Sendstring
;;                             _lcdcmd
;;                              _delay
;;                            _display
;;                       _errorDisplay
;; ---------------------------------------------------------------------------------
;; (1) _StorTempl                                            4     4      0    2873
;;                                             15 BANK0      1     1      0
;;                                              0 BANK1      3     3      0
;;                             _lcdcmd
;;                              _delay
;;                            _display
;;                         _Readfinger
;;                          _storChar1
;;                          _storChar2
;;                         _Sendstring
;;                                 _TX
;;                       _errorDisplay
;; ---------------------------------------------------------------------------------
;; (2) _errorDisplay                                         0     0      0     881
;;                             _lcdcmd
;;                              _delay
;;                            _display
;; ---------------------------------------------------------------------------------
;; (2) _storChar2                                            1     1      0     229
;;                                             12 BANK0      1     1      0
;;                         _Sendstring
;; ---------------------------------------------------------------------------------
;; (2) _storChar1                                            1     1      0     229
;;                                             12 BANK0      1     1      0
;;                         _Sendstring
;; ---------------------------------------------------------------------------------
;; (2) _Readfinger                                           1     1      0     229
;;                                             12 BANK0      1     1      0
;;                         _Sendstring
;; ---------------------------------------------------------------------------------
;; (3) _display                                              4     2      2     473
;;                                             11 BANK0      4     2      2
;;                            _lcddata
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             0     0      0     575
;;                              _delay
;;                     _lcd_init_write
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (2) _Sendstring                                           6     3      3     229
;;                                              6 BANK0      6     3      3
;;                                 _TX
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_init_write                                       1     1      0     167
;;                                              6 BANK0      1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (4) _lcddata                                              5     3      2     272
;;                                              6 BANK0      5     3      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _lcdcmd                                               5     3      2     272
;;                                              6 BANK0      5     3      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _TX                                                   1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _delay                                                6     4      2     136
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _receive                                              7     7      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _lcd_init
;;     _delay
;;     _lcd_init_write
;;       _delay
;;     _lcdcmd
;;       _delay
;;   _StorTempl
;;     _lcdcmd
;;       _delay
;;     _delay
;;     _display
;;       _lcddata
;;         _delay
;;       _delay
;;     _Readfinger
;;       _Sendstring
;;         _TX
;;         _delay
;;     _storChar1
;;       _Sendstring
;;         _TX
;;         _delay
;;     _storChar2
;;       _Sendstring
;;         _TX
;;         _delay
;;     _Sendstring
;;       _TX
;;       _delay
;;     _TX
;;     _errorDisplay
;;       _lcdcmd
;;         _delay
;;       _delay
;;       _display
;;         _lcddata
;;           _delay
;;         _delay
;;   _lcdcmd
;;     _delay
;;   _display
;;     _lcddata
;;       _delay
;;     _delay
;;   _delay
;;   _SrchFinger
;;     _Readfinger
;;       _Sendstring
;;         _TX
;;         _delay
;;     _storChar1
;;       _Sendstring
;;         _TX
;;         _delay
;;     _storChar2
;;       _Sendstring
;;         _TX
;;         _delay
;;     _Sendstring
;;       _TX
;;       _delay
;;     _lcdcmd
;;       _delay
;;     _delay
;;     _display
;;       _lcddata
;;         _delay
;;       _delay
;;     _errorDisplay
;;       _lcdcmd
;;         _delay
;;       _delay
;;       _display
;;         _lcddata
;;           _delay
;;         _delay
;;
;; _receive (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      4D       9       80.2%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0      2D      11       46.9%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      3      50       7      100.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0     127      12        0.0%
;;ABS                  0      0     122       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50     10      4E       5       97.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 48 in file "F:\pic projects\finger voting machine\finger test.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_uart_init
;;		_lcd_init
;;		_StorTempl
;;		_lcdcmd
;;		_display
;;		_delay
;;		_SrchFinger
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	50
	
l4022:	
;finger test.c: 50: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	51
;finger test.c: 51: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	52
	
l4024:	
;finger test.c: 52: TRISC=0X0F;
	movlw	(0Fh)
	movwf	(135)^080h	;volatile
	line	53
	
l4026:	
;finger test.c: 53: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	54
	
l4028:	
;finger test.c: 54: RD2=0;
	bcf	(66/8),(66)&7
	line	55
	
l4030:	
;finger test.c: 55: RD3=0;
	bcf	(67/8),(67)&7
	line	57
	
l4032:	
;finger test.c: 57: uart_init();
	fcall	_uart_init
	line	66
	
l4034:	
;finger test.c: 66: lcd_init();
	fcall	_lcd_init
	line	67
	
l4036:	
;finger test.c: 67: if(RC0==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l4042
u3920:
	goto	l754
	line	69
	
l4038:	
;finger test.c: 68: {
;finger test.c: 69: while(RC0==0);
	goto	l754
	
l755:	
	
l754:	
	btfss	(56/8),(56)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l754
u3930:
	goto	l4040
	
l756:	
	line	71
	
l4040:	
;finger test.c: 71: StorTempl();
	fcall	_StorTempl
	goto	l4042
	line	73
	
l753:	
	line	75
	
l4042:	
;finger test.c: 73: }
;finger test.c: 75: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	76
	
l4044:	
;finger test.c: 76: display("   biometric    ");
	movlw	low(STR_1|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_1|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	77
;finger test.c: 77: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	78
	
l4046:	
;finger test.c: 78: display("door lock system");
	movlw	low(STR_2|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_2|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	79
	
l4048:	
;finger test.c: 79: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	82
	
l4050:	
;finger test.c: 82: delay(150);
	movlw	low(096h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(096h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l4052
	line	83
;finger test.c: 83: while(1)
	
l757:	
	line	86
	
l4052:	
;finger test.c: 84: {
;finger test.c: 86: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	87
;finger test.c: 87: display("   biometric    ");
	movlw	low(STR_3|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_3|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	88
	
l4054:	
;finger test.c: 88: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	89
	
l4056:	
;finger test.c: 89: display("door lock system");
	movlw	low(STR_4|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_4|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	90
;finger test.c: 90: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	110
	
l4058:	
;finger test.c: 110: if(RC2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(58/8),(58)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l4092
u3940:
	line	112
	
l4060:	
;finger test.c: 111: {
;finger test.c: 112: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	113
	
l4062:	
;finger test.c: 113: display("  enter finger  ");
	movlw	low(STR_5|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_5|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	114
	
l4064:	
;finger test.c: 114: lcdcmd(0xC0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	115
;finger test.c: 115: display(" for close door ");
	movlw	low(STR_6|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_6|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	116
;finger test.c: 116: while(RC2==0);
	goto	l759
	
l760:	
	
l759:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l759
u3950:
	goto	l4066
	
l761:	
	line	117
	
l4066:	
;finger test.c: 117: SrchFinger();
	fcall	_SrchFinger
	line	118
	
l4068:	
;finger test.c: 118: if(chk==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_chk),w
	xorlw	01h
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l4086
u3960:
	line	120
	
l4070:	
;finger test.c: 119: {
;finger test.c: 120: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	121
;finger test.c: 121: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	122
	
l4072:	
;finger test.c: 122: display("door closing");
	movlw	low(STR_7|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_7|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	123
	
l4074:	
;finger test.c: 123: chk=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_chk)
	line	124
	
l4076:	
;finger test.c: 124: RD2=0;
	bcf	(66/8),(66)&7
	line	125
	
l4078:	
;finger test.c: 125: RD3=1;
	bsf	(67/8),(67)&7
	line	126
	
l4080:	
;finger test.c: 126: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	127
	
l4082:	
;finger test.c: 127: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	128
	
l4084:	
;finger test.c: 128: RD3=0;
	bcf	(67/8),(67)&7
	line	129
;finger test.c: 129: }
	goto	l763
	line	130
	
l762:	
	line	131
	
l4086:	
;finger test.c: 130: else
;finger test.c: 131: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	
l763:	
	line	132
;finger test.c: 132: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	133
	
l4088:	
;finger test.c: 133: display("access denied");
	movlw	low(STR_8|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_8|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	134
	
l4090:	
;finger test.c: 134: delay(1000);
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l4092
	line	135
	
l758:	
	line	138
	
l4092:	
;finger test.c: 135: }
;finger test.c: 138: if(RC1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l4052
u3970:
	line	140
	
l4094:	
;finger test.c: 139: {
;finger test.c: 140: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	141
	
l4096:	
;finger test.c: 141: display("  enter finger  ");
	movlw	low(STR_9|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_9|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	142
	
l4098:	
;finger test.c: 142: lcdcmd(0xC0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	143
;finger test.c: 143: display(" for open door  ");
	movlw	low(STR_10|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_10|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	144
;finger test.c: 144: while(RC1==0);
	goto	l765
	
l766:	
	
l765:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l765
u3980:
	goto	l4100
	
l767:	
	line	145
	
l4100:	
;finger test.c: 145: SrchFinger();
	fcall	_SrchFinger
	line	146
	
l4102:	
;finger test.c: 146: if(chk==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_chk),w
	xorlw	01h
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l4120
u3990:
	line	148
	
l4104:	
;finger test.c: 147: {
;finger test.c: 148: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	149
;finger test.c: 149: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	150
	
l4106:	
;finger test.c: 150: display("door opening");
	movlw	low(STR_11|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_11|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	151
	
l4108:	
;finger test.c: 151: chk=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_chk)
	line	152
	
l4110:	
;finger test.c: 152: RD2=1;
	bsf	(66/8),(66)&7
	line	153
	
l4112:	
;finger test.c: 153: RD3=0;
	bcf	(67/8),(67)&7
	line	154
	
l4114:	
;finger test.c: 154: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	155
	
l4116:	
;finger test.c: 155: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	156
	
l4118:	
;finger test.c: 156: RD3=0;
	bcf	(67/8),(67)&7
	line	157
;finger test.c: 157: }
	goto	l4052
	line	158
	
l768:	
	line	160
	
l4120:	
;finger test.c: 158: else
;finger test.c: 159: {
;finger test.c: 160: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	161
;finger test.c: 161: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	162
	
l4122:	
;finger test.c: 162: display("access denied");
	movlw	low(STR_12|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_12|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	163
	
l4124:	
;finger test.c: 163: delay(1000);
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l4052
	line	164
	
l769:	
	goto	l4052
	line	165
	
l764:	
	goto	l4052
	line	170
	
l770:	
	line	83
	goto	l4052
	
l771:	
	line	171
	
l772:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SrchFinger
psect	text555,local,class=CODE,delta=2
global __ptext555
__ptext555:

;; *************** function _SrchFinger *****************
;; Defined at:
;;		line 504 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Readfinger
;;		_storChar1
;;		_storChar2
;;		_Sendstring
;;		_lcdcmd
;;		_delay
;;		_display
;;		_errorDisplay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text555
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	504
	global	__size_of_SrchFinger
	__size_of_SrchFinger	equ	__end_of_SrchFinger-_SrchFinger
	
_SrchFinger:	
	opt	stack 2
; Regs used in _SrchFinger: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	505
	
l3952:	
;finger test.c: 505: Readfinger();
	fcall	_Readfinger
	line	506
	
l3954:	
;finger test.c: 506: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l878
u3770:
	
l3956:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l878
u3780:
	line	508
	
l3958:	
;finger test.c: 507: {
;finger test.c: 508: storChar1();
	fcall	_storChar1
	line	509
	
l3960:	
;finger test.c: 509: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l878
u3790:
	
l3962:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l878
u3800:
	line	511
	
l3964:	
;finger test.c: 510: {
;finger test.c: 511: Readfinger();
	fcall	_Readfinger
	line	512
	
l3966:	
;finger test.c: 512: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l878
u3810:
	
l3968:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l878
u3820:
	line	514
	
l3970:	
;finger test.c: 513: {
;finger test.c: 514: storChar2();
	fcall	_storChar2
	line	515
	
l3972:	
;finger test.c: 515: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l878
u3830:
	
l3974:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l878
u3840:
	line	517
	
l3976:	
;finger test.c: 516: {
;finger test.c: 517: Sendstring(Gentemplate,12);
	movlw	(_Gentemplate&0ffh)
	movwf	(?_Sendstring)
	movlw	(0x1/2)
	movwf	(?_Sendstring+1)
	movlw	(0Ch)
	movwf	(??_SrchFinger+0)+0
	movf	(??_SrchFinger+0)+0,w
	movwf	0+(?_Sendstring)+02h
	fcall	_Sendstring
	line	519
	
l3978:	
;finger test.c: 519: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l878
u3850:
	
l3980:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l878
u3860:
	line	522
	
l3982:	
;finger test.c: 520: {
;finger test.c: 522: for(i=0;i<20;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l3984:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3875
	movlw	low(014h)
	subwf	(_i),w
u3875:

	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l3988
u3870:
	goto	l3994
	
l3986:	
	goto	l3994
	line	523
	
l872:	
	line	524
	
l3988:	
;finger test.c: 523: {
;finger test.c: 524: aa[i]=0x00;
	movf	(_i),w
	addlw	_aa&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	522
	
l3990:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l3992:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3885
	movlw	low(014h)
	subwf	(_i),w
u3885:

	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l3988
u3880:
	goto	l3994
	
l873:	
	line	526
	
l3994:	
;finger test.c: 525: }
;finger test.c: 526: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	527
;finger test.c: 527: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	528
	
l3996:	
;finger test.c: 528: display("  searching  ");
	movlw	low(STR_20|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_20|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	529
	
l3998:	
;finger test.c: 529: Sendstring(Srchtemplate,17);
	movlw	(_Srchtemplate&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Sendstring)
	movlw	(0x3/2)
	movwf	(?_Sendstring+1)
	movlw	(011h)
	movwf	(??_SrchFinger+0)+0
	movf	(??_SrchFinger+0)+0,w
	movwf	0+(?_Sendstring)+02h
	fcall	_Sendstring
	line	533
	
l4000:	
;finger test.c: 533: delay(1000);
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	534
	
l4002:	
;finger test.c: 534: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l4014
u3890:
	
l4004:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l4014
u3900:
	line	536
	
l4006:	
;finger test.c: 535: {
;finger test.c: 536: chk=1;
	clrf	(_chk)
	bsf	status,0
	rlf	(_chk),f
	line	537
	
l4008:	
;finger test.c: 537: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	538
	
l4010:	
;finger test.c: 538: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	539
	
l4012:	
;finger test.c: 539: display("  match found  ");
	movlw	low(STR_21|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_21|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	540
;finger test.c: 540: }
	goto	l878
	line	541
	
l874:	
	
l4014:	
;finger test.c: 541: else if(aa[9]==0x09)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_aa)+09h,w
	xorlw	09h
	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l4020
u3910:
	line	543
	
l4016:	
;finger test.c: 542: {
;finger test.c: 543: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	544
;finger test.c: 544: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	545
	
l4018:	
;finger test.c: 545: display("  no match  ");
	movlw	low(STR_22|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_22|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	546
;finger test.c: 546: }
	goto	l878
	line	547
	
l876:	
	line	548
	
l4020:	
;finger test.c: 547: else
;finger test.c: 548: errorDisplay();
	fcall	_errorDisplay
	goto	l878
	
l877:	
	goto	l878
	
l875:	
	goto	l878
	line	549
	
l871:	
	goto	l878
	line	550
	
l870:	
	goto	l878
	line	551
	
l869:	
	goto	l878
	line	552
	
l868:	
	goto	l878
	line	553
	
l867:	
	line	554
	
l878:	
	return
	opt stack 0
GLOBAL	__end_of_SrchFinger
	__end_of_SrchFinger:
;; =============== function _SrchFinger ends ============

	signat	_SrchFinger,88
	global	_StorTempl
psect	text556,local,class=CODE,delta=2
global __ptext556
__ptext556:

;; *************** function _StorTempl *****************
;; Defined at:
;;		line 385 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  addr2           1    2[BANK1 ] unsigned char 
;;  addr1           1    1[BANK1 ] unsigned char 
;;  chksum          1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       3       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       3       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdcmd
;;		_delay
;;		_display
;;		_Readfinger
;;		_storChar1
;;		_storChar2
;;		_Sendstring
;;		_TX
;;		_errorDisplay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text556
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	385
	global	__size_of_StorTempl
	__size_of_StorTempl	equ	__end_of_StorTempl-_StorTempl
	
_StorTempl:	
	opt	stack 2
; Regs used in _StorTempl: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	387
	
l3826:	
;finger test.c: 386: char addr1,addr2, chksum;
;finger test.c: 387: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	388
;finger test.c: 388: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	389
	
l3828:	
;finger test.c: 389: display("  place finger  ");
	movlw	low(STR_13|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_13|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	390
	
l3830:	
;finger test.c: 390: delay(2000);
	movlw	low(07D0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	391
	
l3832:	
;finger test.c: 391: Readfinger();
	fcall	_Readfinger
	line	392
	
l3834:	
;finger test.c: 392: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l3918
u3530:
	
l3836:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l3918
u3540:
	line	394
	
l3838:	
;finger test.c: 393: {
;finger test.c: 394: storChar1();
	fcall	_storChar1
	line	395
	
l3840:	
;finger test.c: 395: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l3916
u3550:
	
l3842:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l3916
u3560:
	line	397
	
l3844:	
;finger test.c: 396: {
;finger test.c: 397: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	398
;finger test.c: 398: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	399
	
l3846:	
;finger test.c: 399: display("put finger again");
	movlw	low(STR_14|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_14|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	400
	
l3848:	
;finger test.c: 400: delay(2000);
	movlw	low(07D0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	401
	
l3850:	
;finger test.c: 401: Readfinger();
	fcall	_Readfinger
	line	402
	
l3852:	
;finger test.c: 402: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l3940
u3570:
	
l3854:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l3940
u3580:
	line	404
	
l3856:	
;finger test.c: 403: {
;finger test.c: 404: storChar2();
	fcall	_storChar2
	line	405
	
l3858:	
;finger test.c: 405: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l3914
u3590:
	
l3860:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l3914
u3600:
	line	407
	
l3862:	
;finger test.c: 406: {
;finger test.c: 407: Sendstring(Gentemplate,12);
	movlw	(_Gentemplate&0ffh)
	movwf	(?_Sendstring)
	movlw	(0x1/2)
	movwf	(?_Sendstring+1)
	movlw	(0Ch)
	movwf	(??_StorTempl+0)+0
	movf	(??_StorTempl+0)+0,w
	movwf	0+(?_Sendstring)+02h
	fcall	_Sendstring
	line	409
	
l3864:	
;finger test.c: 409: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l3940
u3610:
	
l3866:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l3940
u3620:
	line	411
	
l3868:	
;finger test.c: 410: {
;finger test.c: 411: Sendstring(Rdvlidtempl,12 );
	movlw	(_Rdvlidtempl&0ffh)
	movwf	(?_Sendstring)
	movlw	(0x1/2)
	movwf	(?_Sendstring+1)
	movlw	(0Ch)
	movwf	(??_StorTempl+0)+0
	movf	(??_StorTempl+0)+0,w
	movwf	0+(?_Sendstring)+02h
	fcall	_Sendstring
	line	412
	
l3870:	
;finger test.c: 412: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l3940
u3630:
	
l3872:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l3940
u3640:
	line	414
	
l3874:	
;finger test.c: 413: {
;finger test.c: 414: addr1=aa[10];
	movf	0+(_aa)+0Ah,w
	movwf	(??_StorTempl+0)+0
	movf	(??_StorTempl+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(StorTempl@addr1)^080h
	line	415
;finger test.c: 415: addr2=aa[11];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_aa)+0Bh,w
	movwf	(??_StorTempl+0)+0
	movf	(??_StorTempl+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(StorTempl@addr2)^080h
	line	416
	
l3876:	
;finger test.c: 416: chksum = 0x0e +addr1 +addr2;
	movf	(StorTempl@addr2)^080h,w
	addwf	(StorTempl@addr1)^080h,w
	addlw	0Eh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_StorTempl+0)+0
	movf	(??_StorTempl+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(StorTempl@chksum)^080h
	line	417
	
l3878:	
;finger test.c: 417: for(i=0;i<15;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l3880:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3655
	movlw	low(0Fh)
	subwf	(_i),w
u3655:

	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l3884
u3650:
	goto	l3902
	
l3882:	
	goto	l3902
	line	418
	
l843:	
	line	419
	
l3884:	
;finger test.c: 418: {
;finger test.c: 419: if(i==11)
	movlw	0Bh
	xorwf	(_i),w
	iorwf	(_i+1),w
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l3888
u3660:
	line	421
	
l3886:	
;finger test.c: 420: {
;finger test.c: 421: TX(addr1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(StorTempl@addr1)^080h,w
	fcall	_TX
	line	422
;finger test.c: 422: }
	goto	l3898
	line	423
	
l845:	
	
l3888:	
;finger test.c: 423: else if(i==12)
	movlw	0Ch
	xorwf	(_i),w
	iorwf	(_i+1),w
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l3892
u3670:
	line	425
	
l3890:	
;finger test.c: 424: {
;finger test.c: 425: TX(addr2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(StorTempl@addr2)^080h,w
	fcall	_TX
	line	426
;finger test.c: 426: }
	goto	l3898
	line	427
	
l847:	
	
l3892:	
;finger test.c: 427: else if(i==14)
	movlw	0Eh
	xorwf	(_i),w
	iorwf	(_i+1),w
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l3896
u3680:
	line	429
	
l3894:	
;finger test.c: 428: {
;finger test.c: 429: TX(chksum);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(StorTempl@chksum)^080h,w
	fcall	_TX
	line	430
;finger test.c: 430: }
	goto	l3898
	line	432
	
l849:	
	line	433
	
l3896:	
;finger test.c: 432: else
;finger test.c: 433: TX(Stortemplate[i]);
	movf	(_i),w
	addlw	_Stortemplate&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_TX
	goto	l3898
	
l850:	
	goto	l3898
	
l848:	
	goto	l3898
	
l846:	
	line	417
	
l3898:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l3900:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3695
	movlw	low(0Fh)
	subwf	(_i),w
u3695:

	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l3884
u3690:
	goto	l3902
	
l844:	
	line	437
	
l3902:	
;finger test.c: 435: }
;finger test.c: 437: delay(300);
	movlw	low(012Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(012Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	438
	
l3904:	
;finger test.c: 438: if(aa[0]==0xef && aa[9]==0x00)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_aa),w
	xorlw	0EFh
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l3912
u3700:
	
l3906:	
	movf	0+(_aa)+09h,f
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l3912
u3710:
	line	440
	
l3908:	
;finger test.c: 439: {
;finger test.c: 440: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	441
;finger test.c: 441: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	442
	
l3910:	
;finger test.c: 442: display("New finger added");
	movlw	low(STR_15|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_15|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	443
;finger test.c: 443: }
	goto	l3940
	line	444
	
l851:	
	line	445
	
l3912:	
;finger test.c: 444: else
;finger test.c: 445: errorDisplay();
	fcall	_errorDisplay
	goto	l3940
	
l852:	
	goto	l3940
	line	447
	
l842:	
	goto	l3940
	line	452
	
l841:	
	line	455
;finger test.c: 447: }
;finger test.c: 452: }
;finger test.c: 455: }
	goto	l3940
	line	456
	
l840:	
	line	457
	
l3914:	
;finger test.c: 456: else
;finger test.c: 457: errorDisplay();
	fcall	_errorDisplay
	goto	l3940
	
l853:	
	goto	l3940
	line	458
	
l839:	
	line	459
;finger test.c: 458: }
;finger test.c: 459: }
	goto	l3940
	line	460
	
l838:	
	line	461
	
l3916:	
;finger test.c: 460: else
;finger test.c: 461: errorDisplay();
	fcall	_errorDisplay
	goto	l3940
	
l854:	
	line	463
;finger test.c: 463: }
	goto	l3940
	line	468
	
l837:	
	
l3918:	
;finger test.c: 468: else if(aa[9]==0x01)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_aa)+09h,w
	xorlw	01h
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l3924
u3720:
	line	470
	
l3920:	
;finger test.c: 469: {
;finger test.c: 470: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	471
;finger test.c: 471: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	472
	
l3922:	
;finger test.c: 472: display("  error  ");
	movlw	low(STR_16|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_16|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	473
;finger test.c: 473: }
	goto	l3940
	line	474
	
l856:	
	
l3924:	
;finger test.c: 474: else if(aa[9]==0x02)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_aa)+09h,w
	xorlw	02h
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l3930
u3730:
	line	476
	
l3926:	
;finger test.c: 475: {
;finger test.c: 476: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	477
;finger test.c: 477: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	478
	
l3928:	
;finger test.c: 478: display("  no finger  ");
	movlw	low(STR_17|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_17|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	479
;finger test.c: 479: }
	goto	l3940
	line	480
	
l858:	
	
l3930:	
;finger test.c: 480: else if(aa[9]==0x03)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_aa)+09h,w
	xorlw	03h
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l3936
u3740:
	line	482
	
l3932:	
;finger test.c: 481: {
;finger test.c: 482: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	483
;finger test.c: 483: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	484
	
l3934:	
;finger test.c: 484: display("  fail  ");
	movlw	low(STR_18|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_18|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	485
;finger test.c: 485: }
	goto	l3940
	line	486
	
l860:	
	line	488
	
l3936:	
;finger test.c: 486: else
;finger test.c: 487: {
;finger test.c: 488: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	489
;finger test.c: 489: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	490
	
l3938:	
;finger test.c: 490: display("  com error  ");
	movlw	low(STR_19|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_19|8000h)
	movwf	((?_display))+1
	fcall	_display
	goto	l3940
	line	491
	
l861:	
	goto	l3940
	
l859:	
	goto	l3940
	
l857:	
	goto	l3940
	
l855:	
	line	492
	
l3940:	
;finger test.c: 491: }
;finger test.c: 492: for(i=0;i<12;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l3942:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3755
	movlw	low(0Ch)
	subwf	(_i),w
u3755:

	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l3946
u3750:
	goto	l864
	
l3944:	
	goto	l864
	line	493
	
l862:	
	line	494
	
l3946:	
;finger test.c: 493: {
;finger test.c: 494: aa[ii]=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ii),w
	addlw	_aa&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	492
	
l3948:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l3950:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3765
	movlw	low(0Ch)
	subwf	(_i),w
u3765:

	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3946
u3760:
	goto	l864
	
l863:	
	line	500
	
l864:	
	return
	opt stack 0
GLOBAL	__end_of_StorTempl
	__end_of_StorTempl:
;; =============== function _StorTempl ends ============

	signat	_StorTempl,88
	global	_errorDisplay
psect	text557,local,class=CODE,delta=2
global __ptext557
__ptext557:

;; *************** function _errorDisplay *****************
;; Defined at:
;;		line 562 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcdcmd
;;		_delay
;;		_display
;; This function is called by:
;;		_StorTempl
;;		_SrchFinger
;; This function uses a non-reentrant model
;;
psect	text557
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	562
	global	__size_of_errorDisplay
	__size_of_errorDisplay	equ	__end_of_errorDisplay-_errorDisplay
	
_errorDisplay:	
	opt	stack 2
; Regs used in _errorDisplay: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	563
	
l3822:	
;finger test.c: 563: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	564
;finger test.c: 564: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	565
	
l3824:	
;finger test.c: 565: display(" error  ");
	movlw	low(STR_23|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_display)
	movlw	high(STR_23|8000h)
	movwf	((?_display))+1
	fcall	_display
	line	566
	
l881:	
	return
	opt stack 0
GLOBAL	__end_of_errorDisplay
	__end_of_errorDisplay:
;; =============== function _errorDisplay ends ============

	signat	_errorDisplay,88
	global	_storChar2
psect	text558,local,class=CODE,delta=2
global __ptext558
__ptext558:

;; *************** function _storChar2 *****************
;; Defined at:
;;		line 378 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Sendstring
;; This function is called by:
;;		_StorTempl
;;		_SrchFinger
;; This function uses a non-reentrant model
;;
psect	text558
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	378
	global	__size_of_storChar2
	__size_of_storChar2	equ	__end_of_storChar2-_storChar2
	
_storChar2:	
	opt	stack 3
; Regs used in _storChar2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	379
	
l3820:	
;finger test.c: 379: Sendstring(Genchar2,13);
	movlw	(_Genchar2&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Sendstring)
	movlw	(0x1/2)
	movwf	(?_Sendstring+1)
	movlw	(0Dh)
	movwf	(??_storChar2+0)+0
	movf	(??_storChar2+0)+0,w
	movwf	0+(?_Sendstring)+02h
	fcall	_Sendstring
	line	380
	
l834:	
	return
	opt stack 0
GLOBAL	__end_of_storChar2
	__end_of_storChar2:
;; =============== function _storChar2 ends ============

	signat	_storChar2,88
	global	_storChar1
psect	text559,local,class=CODE,delta=2
global __ptext559
__ptext559:

;; *************** function _storChar1 *****************
;; Defined at:
;;		line 371 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Sendstring
;; This function is called by:
;;		_StorTempl
;;		_SrchFinger
;; This function uses a non-reentrant model
;;
psect	text559
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	371
	global	__size_of_storChar1
	__size_of_storChar1	equ	__end_of_storChar1-_storChar1
	
_storChar1:	
	opt	stack 3
; Regs used in _storChar1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	372
	
l3818:	
;finger test.c: 372: Sendstring(Genchar1,13);
	movlw	(_Genchar1&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Sendstring)
	movlw	(0x1/2)
	movwf	(?_Sendstring+1)
	movlw	(0Dh)
	movwf	(??_storChar1+0)+0
	movf	(??_storChar1+0)+0,w
	movwf	0+(?_Sendstring)+02h
	fcall	_Sendstring
	line	373
	
l831:	
	return
	opt stack 0
GLOBAL	__end_of_storChar1
	__end_of_storChar1:
;; =============== function _storChar1 ends ============

	signat	_storChar1,88
	global	_Readfinger
psect	text560,local,class=CODE,delta=2
global __ptext560
__ptext560:

;; *************** function _Readfinger *****************
;; Defined at:
;;		line 364 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Sendstring
;; This function is called by:
;;		_StorTempl
;;		_SrchFinger
;; This function uses a non-reentrant model
;;
psect	text560
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	364
	global	__size_of_Readfinger
	__size_of_Readfinger	equ	__end_of_Readfinger-_Readfinger
	
_Readfinger:	
	opt	stack 3
; Regs used in _Readfinger: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	365
	
l3816:	
;finger test.c: 365: Sendstring(GenImg,12);
	movlw	(_GenImg&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Sendstring)
	movlw	(0x1/2)
	movwf	(?_Sendstring+1)
	movlw	(0Ch)
	movwf	(??_Readfinger+0)+0
	movf	(??_Readfinger+0)+0,w
	movwf	0+(?_Sendstring)+02h
	fcall	_Sendstring
	line	366
	
l828:	
	return
	opt stack 0
GLOBAL	__end_of_Readfinger
	__end_of_Readfinger:
;; =============== function _Readfinger ends ============

	signat	_Readfinger,88
	global	_display
psect	text561,local,class=CODE,delta=2
global __ptext561
__ptext561:

;; *************** function _display *****************
;; Defined at:
;;		line 340 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;  p               2   11[BANK0 ] PTR unsigned char 
;;		 -> STR_23(9), STR_22(13), STR_21(16), STR_20(14), 
;;		 -> STR_19(14), STR_18(9), STR_17(14), STR_16(10), 
;;		 -> STR_15(17), STR_14(17), STR_13(17), STR_12(14), 
;;		 -> STR_11(13), STR_10(17), STR_9(17), STR_8(14), 
;;		 -> STR_7(13), STR_6(17), STR_5(17), STR_4(17), 
;;		 -> STR_3(17), STR_2(17), STR_1(17), 
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
;;		_StorTempl
;;		_SrchFinger
;;		_errorDisplay
;; This function uses a non-reentrant model
;;
psect	text561
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	340
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 2
; Regs used in _display: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	341
	
l3806:	
;finger test.c: 341: while (*p)
	goto	l3814
	
l817:	
	line	343
	
l3808:	
;finger test.c: 342: {
;finger test.c: 343: lcddata(*p);
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
	line	344
	
l3810:	
;finger test.c: 344: delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	345
	
l3812:	
;finger test.c: 345: p++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(display@p),f
	skipnc
	incf	(display@p+1),f
	movlw	high(01h)
	addwf	(display@p+1),f
	goto	l3814
	line	346
	
l816:	
	line	341
	
l3814:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(display@p+1),w
	movwf	btemp+1
	movf	(display@p),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l3808
u3520:
	goto	l819
	
l818:	
	line	348
;finger test.c: 346: }
;finger test.c: 347: return;
	
l819:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_lcd_init
psect	text562,local,class=CODE,delta=2
global __ptext562
__ptext562:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 312 in file "F:\pic projects\finger voting machine\finger test.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;;		_lcd_init_write
;;		_lcdcmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text562
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	312
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	313
	
l3804:	
;finger test.c: 313: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	314
;finger test.c: 314: lcd_init_write(0x28);
	movlw	(028h)
	fcall	_lcd_init_write
	line	315
;finger test.c: 315: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	322
;finger test.c: 322: lcdcmd(0x28);
	movlw	low(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(028h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	323
;finger test.c: 323: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	324
;finger test.c: 324: lcdcmd(4);
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(04h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	325
;finger test.c: 325: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	326
;finger test.c: 326: lcdcmd(0x0c);
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0Ch)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	327
;finger test.c: 327: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	328
;finger test.c: 328: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	329
;finger test.c: 329: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	330
;finger test.c: 330: lcdcmd(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	331
;finger test.c: 331: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	332
	
l813:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_Sendstring
psect	text563,local,class=CODE,delta=2
global __ptext563
__ptext563:

;; *************** function _Sendstring *****************
;; Defined at:
;;		line 354 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;  strng           2    6[BANK0 ] PTR unsigned char 
;;		 -> Srchtemplate(17), Rdvlidtempl(12), Gentemplate(12), Genchar2(13), 
;;		 -> Genchar1(13), GenImg(12), 
;;  length          1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_TX
;;		_delay
;; This function is called by:
;;		_Readfinger
;;		_storChar1
;;		_storChar2
;;		_StorTempl
;;		_SrchFinger
;; This function uses a non-reentrant model
;;
psect	text563
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	354
	global	__size_of_Sendstring
	__size_of_Sendstring	equ	__end_of_Sendstring-_Sendstring
	
_Sendstring:	
	opt	stack 4
; Regs used in _Sendstring: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	355
	
l3794:	
;finger test.c: 355: for(i=0;i<length;i++)
	clrf	(_i)
	clrf	(_i+1)
	goto	l3800
	line	356
	
l823:	
	line	357
	
l3796:	
;finger test.c: 356: {
;finger test.c: 357: TX(strng[i]);
	movf	(_i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Sendstring@strng),w
	movwf	(??_Sendstring+1)+0
	movf	(Sendstring@strng+1),w
	movwf	(??_Sendstring+0)+0
	skipnc
	incf	(??_Sendstring+0)+0,f
	btfss	(_i),7
	goto	u3500
	decf	(??_Sendstring+0)+0,f
u3500:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_Sendstring+0)+0,w
	movwf	0+((??_Sendstring+1)+0)+1
	movf	0+(??_Sendstring+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_Sendstring+1)+0,0
	bcf	status,7
	movf	indf,w
	fcall	_TX
	line	355
	
l3798:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	goto	l3800
	
l822:	
	
l3800:	
	movf	(_i+1),w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Sendstring+0)+0
	movlw	80h
	subwf	(??_Sendstring+0)+0,w
	skipz
	goto	u3515
	movf	(Sendstring@length),w
	subwf	(_i),w
u3515:

	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l3796
u3510:
	goto	l3802
	
l824:	
	line	359
	
l3802:	
;finger test.c: 358: }
;finger test.c: 359: delay(600);
	movlw	low(0258h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0258h)
	movwf	((?_delay))+1
	fcall	_delay
	line	360
	
l825:	
	return
	opt stack 0
GLOBAL	__end_of_Sendstring
	__end_of_Sendstring:
;; =============== function _Sendstring ends ============

	signat	_Sendstring,8312
	global	_lcd_init_write
psect	text564,local,class=CODE,delta=2
global __ptext564
__ptext564:

;; *************** function _lcd_init_write *****************
;; Defined at:
;;		line 302 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text564
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	302
	global	__size_of_lcd_init_write
	__size_of_lcd_init_write	equ	__end_of_lcd_init_write-_lcd_init_write
	
_lcd_init_write:	
	opt	stack 4
; Regs used in _lcd_init_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_init_write@a stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_init_write@a)
	line	303
	
l3784:	
;finger test.c: 303: RB1=0;
	bcf	(49/8),(49)&7
	line	304
	
l3786:	
;finger test.c: 304: PORTB=a;
	movf	(lcd_init_write@a),w
	movwf	(6)	;volatile
	line	305
	
l3788:	
;finger test.c: 305: RB2=1;
	bsf	(50/8),(50)&7
	line	306
	
l3790:	
;finger test.c: 306: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	307
	
l3792:	
;finger test.c: 307: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	308
	
l810:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init_write
	__end_of_lcd_init_write:
;; =============== function _lcd_init_write ends ============

	signat	_lcd_init_write,4216
	global	_lcddata
psect	text565,local,class=CODE,delta=2
global __ptext565
__ptext565:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 280 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;  value           2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  temp            1   10[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text565
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	280
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 2
; Regs used in _lcddata: [wreg+status,2+status,0+pclath+cstack]
	line	283
	
l3752:	
;finger test.c: 281: unsigned char temp;
;finger test.c: 283: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	284
	
l3754:	
;finger test.c: 284: temp= value;
	movf	(lcddata@value),w
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	movwf	(lcddata@temp)
	line	285
	
l3756:	
;finger test.c: 285: temp&=0xf0;
	movlw	(0F0h)
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	andwf	(lcddata@temp),f
	line	286
	
l3758:	
;finger test.c: 286: PORTB&=0x0f;
	movlw	(0Fh)
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	andwf	(6),f	;volatile
	line	287
	
l3760:	
;finger test.c: 287: PORTB|=temp;
	movf	(lcddata@temp),w
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	iorwf	(6),f	;volatile
	line	288
	
l3762:	
;finger test.c: 288: RB2=1;
	bsf	(50/8),(50)&7
	line	289
	
l3764:	
;finger test.c: 289: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	290
	
l3766:	
;finger test.c: 290: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	291
	
l3768:	
;finger test.c: 291: temp=value<<4;
	movf	(lcddata@value),w
	movwf	(??_lcddata+0)+0
	movlw	(04h)-1
u3495:
	clrc
	rlf	(??_lcddata+0)+0,f
	addlw	-1
	skipz
	goto	u3495
	clrc
	rlf	(??_lcddata+0)+0,w
	movwf	(??_lcddata+1)+0
	movf	(??_lcddata+1)+0,w
	movwf	(lcddata@temp)
	line	292
	
l3770:	
;finger test.c: 292: temp&=0xf0;
	movlw	(0F0h)
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	andwf	(lcddata@temp),f
	line	293
	
l3772:	
;finger test.c: 293: PORTB&=0x0f;
	movlw	(0Fh)
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	andwf	(6),f	;volatile
	line	294
	
l3774:	
;finger test.c: 294: PORTB|=temp;
	movf	(lcddata@temp),w
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	iorwf	(6),f	;volatile
	line	295
	
l3776:	
;finger test.c: 295: RB2=1;
	bsf	(50/8),(50)&7
	line	296
	
l3778:	
;finger test.c: 296: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	297
	
l3780:	
;finger test.c: 297: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	goto	l807
	line	298
	
l3782:	
	line	299
;finger test.c: 298: return;
	
l807:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdcmd
psect	text566,local,class=CODE,delta=2
global __ptext566
__ptext566:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 257 in file "F:\pic projects\finger voting machine\finger test.c"
;; Parameters:    Size  Location     Type
;;  value           2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  temp            1   10[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_init
;;		_StorTempl
;;		_SrchFinger
;;		_errorDisplay
;; This function uses a non-reentrant model
;;
psect	text566
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	257
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 3
; Regs used in _lcdcmd: [wreg+status,2+status,0+pclath+cstack]
	line	260
	
l3720:	
;finger test.c: 258: unsigned char temp;
;finger test.c: 260: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	261
	
l3722:	
;finger test.c: 261: temp= value;
	movf	(lcdcmd@value),w
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	movwf	(lcdcmd@temp)
	line	262
	
l3724:	
;finger test.c: 262: temp&=0xf0;
	movlw	(0F0h)
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	andwf	(lcdcmd@temp),f
	line	263
	
l3726:	
;finger test.c: 263: PORTB&=0x0f;
	movlw	(0Fh)
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	andwf	(6),f	;volatile
	line	264
	
l3728:	
;finger test.c: 264: PORTB|=temp;
	movf	(lcdcmd@temp),w
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	iorwf	(6),f	;volatile
	line	265
	
l3730:	
;finger test.c: 265: RB2=1;
	bsf	(50/8),(50)&7
	line	266
	
l3732:	
;finger test.c: 266: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	267
	
l3734:	
;finger test.c: 267: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	268
	
l3736:	
;finger test.c: 268: temp=value<<4;
	movf	(lcdcmd@value),w
	movwf	(??_lcdcmd+0)+0
	movlw	(04h)-1
u3485:
	clrc
	rlf	(??_lcdcmd+0)+0,f
	addlw	-1
	skipz
	goto	u3485
	clrc
	rlf	(??_lcdcmd+0)+0,w
	movwf	(??_lcdcmd+1)+0
	movf	(??_lcdcmd+1)+0,w
	movwf	(lcdcmd@temp)
	line	269
	
l3738:	
;finger test.c: 269: temp&=0xf0;
	movlw	(0F0h)
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	andwf	(lcdcmd@temp),f
	line	270
	
l3740:	
;finger test.c: 270: PORTB&=0x0f;
	movlw	(0Fh)
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	andwf	(6),f	;volatile
	line	271
	
l3742:	
;finger test.c: 271: PORTB|=temp;
	movf	(lcdcmd@temp),w
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	iorwf	(6),f	;volatile
	line	272
	
l3744:	
;finger test.c: 272: RB2=1;
	bsf	(50/8),(50)&7
	line	273
	
l3746:	
;finger test.c: 273: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	274
	
l3748:	
;finger test.c: 274: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	goto	l804
	line	275
	
l3750:	
	line	276
;finger test.c: 275: return;
	
l804:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_TX
psect	text567,local,class=CODE,delta=2
global __ptext567
__ptext567:

;; *************** function _TX *****************
;; Defined at:
;;		line 175 in file "F:\pic projects\finger voting machine\finger test.c"
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
;;		_Sendstring
;;		_StorTempl
;;		_TXS
;; This function uses a non-reentrant model
;;
psect	text567
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	175
	global	__size_of_TX
	__size_of_TX	equ	__end_of_TX-_TX
	
_TX:	
	opt	stack 4
; Regs used in _TX: [wreg]
;TX@TX_BYTE stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(TX@TX_BYTE)
	line	176
	
l3710:	
;finger test.c: 176: TXREG = TX_BYTE;
	movf	(TX@TX_BYTE),w
	movwf	(25)	;volatile
	line	177
;finger test.c: 177: while(!TRMT);
	goto	l775
	
l776:	
	
l775:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l775
u3460:
	
l777:	
	line	178
;finger test.c: 178: TRMT=0;
	bcf	(1217/8)^080h,(1217)&7
	line	180
;finger test.c: 179: return;
	
l778:	
	return
	opt stack 0
GLOBAL	__end_of_TX
	__end_of_TX:
;; =============== function _TX ends ============

	signat	_TX,4216
	global	_delay
psect	text568,local,class=CODE,delta=2
global __ptext568
__ptext568:

;; *************** function _delay *****************
;; Defined at:
;;		line 241 in file "F:\pic projects\finger voting machine\finger test.c"
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
;;		_lcdcmd
;;		_lcddata
;;		_lcd_init_write
;;		_lcd_init
;;		_display
;;		_Sendstring
;;		_StorTempl
;;		_SrchFinger
;;		_errorDisplay
;;		_TXS
;; This function uses a non-reentrant model
;;
psect	text568
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	241
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 3
; Regs used in _delay: [wreg+status,2]
	line	243
	
l3698:	
;finger test.c: 242: unsigned int k,h;
;finger test.c: 243: for(h=0;h<d;h++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@h)
	clrf	(delay@h+1)
	goto	l796
	line	245
	
l797:	
	line	246
	
l3700:	
;finger test.c: 245: {
;finger test.c: 246: for(k=0;k<=250;k++)
	clrf	(delay@k)
	clrf	(delay@k+1)
	
l3702:	
	movlw	high(0FBh)
	subwf	(delay@k+1),w
	movlw	low(0FBh)
	skipnz
	subwf	(delay@k),w
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3706
u3430:
	goto	l3708
	
l3704:	
	goto	l3708
	line	247
	
l798:	
	line	246
	
l3706:	
;finger test.c: 247: {
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
	goto	u3441
	goto	u3440
u3441:
	goto	l3706
u3440:
	goto	l3708
	
l799:	
	line	243
	
l3708:	
	movlw	low(01h)
	addwf	(delay@h),f
	skipnc
	incf	(delay@h+1),f
	movlw	high(01h)
	addwf	(delay@h+1),f
	
l796:	
	movf	(delay@d+1),w
	subwf	(delay@h+1),w
	skipz
	goto	u3455
	movf	(delay@d),w
	subwf	(delay@h),w
u3455:
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l3700
u3450:
	goto	l801
	
l800:	
	line	251
;finger test.c: 248: }
;finger test.c: 249: }
;finger test.c: 250: return;
	
l801:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_uart_init
psect	text569,local,class=CODE,delta=2
global __ptext569
__ptext569:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 223 in file "F:\pic projects\finger voting machine\finger test.c"
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
psect	text569
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	223
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 6
; Regs used in _uart_init: [wreg]
	line	224
	
l3690:	
;finger test.c: 224: TRISC7 =1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	225
;finger test.c: 225: TRISC6 =0;
	bcf	(1086/8)^080h,(1086)&7
	line	226
;finger test.c: 226: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	line	227
	
l3692:	
;finger test.c: 227: SPBRG = 20;
	movlw	(014h)
	movwf	(153)^080h	;volatile
	line	229
;finger test.c: 229: INTCON=0xc0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	230
	
l3694:	
;finger test.c: 230: RCIE =1;
	bsf	(1125/8)^080h,(1125)&7
	line	231
;finger test.c: 231: TXSTA = 0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	232
;finger test.c: 232: RCSTA = 0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	goto	l793
	line	233
	
l3696:	
	line	234
;finger test.c: 233: return;
	
l793:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_receive
psect	text570,local,class=CODE,delta=2
global __ptext570
__ptext570:

;; *************** function _receive *****************
;; Defined at:
;;		line 196 in file "F:\pic projects\finger voting machine\finger test.c"
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
psect	text570
	file	"F:\pic projects\finger voting machine\finger test.c"
	line	196
	global	__size_of_receive
	__size_of_receive	equ	__end_of_receive-_receive
	
_receive:	
	opt	stack 2
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
psect	text570
	line	198
	
i1l3268:	
;finger test.c: 198: if(RCIE && RCIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l790
u287_20:
	
i1l3270:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l790
u288_20:
	line	201
	
i1l3272:	
;finger test.c: 199: {
;finger test.c: 201: if(OERR)
	btfss	(193/8),(193)&7
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l788
u289_20:
	line	203
	
i1l3274:	
;finger test.c: 202: {
;finger test.c: 203: CREN = 0;
	bcf	(196/8),(196)&7
	line	204
;finger test.c: 204: CREN = 1;
	bsf	(196/8),(196)&7
	line	205
	
i1l788:	
	line	207
;finger test.c: 205: }
;finger test.c: 206: int k;
;finger test.c: 207: RCIF =0;
	bcf	(101/8),(101)&7
	line	209
	
i1l3276:	
;finger test.c: 209: if(RCREG==0xEF)
	movf	(26),w	;volatile
	xorlw	0EFh
	skipz
	goto	u290_21
	goto	u290_20
u290_21:
	goto	i1l3280
u290_20:
	line	211
	
i1l3278:	
;finger test.c: 210: {
;finger test.c: 211: ii=0;
	clrf	(_ii)
	clrf	(_ii+1)
	goto	i1l3280
	line	212
	
i1l789:	
	line	213
	
i1l3280:	
;finger test.c: 212: }
;finger test.c: 213: aa[ii]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_receive+0)+0
	movf	(_ii),w
	addlw	_aa&0ffh
	movwf	fsr0
	movf	(??_receive+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	216
	
i1l3282:	
;finger test.c: 216: ii++;
	movlw	low(01h)
	addwf	(_ii),f
	skipnc
	incf	(_ii+1),f
	movlw	high(01h)
	addwf	(_ii+1),f
	goto	i1l790
	line	218
	
i1l787:	
	line	220
	
i1l790:	
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
psect	text571,local,class=CODE,delta=2
global __ptext571
__ptext571:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
