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
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_delay
	FNCALL	_main,_display
	FNCALL	_main,_TXS
	FNCALL	_display,_lcddata
	FNCALL	_display,_delay
	FNCALL	_lcddata,_delay
	FNCALL	_TXS,_TX
	FNCALL	_TXS,_delay
	FNCALL	_lcdcmd,_delay
	FNROOT	_main
	FNCALL	_receive,i1_lcddata
	FNCALL	i1_lcddata,i1_delay
	FNCALL	intlevel1,_receive
	global	intlevel1
	FNROOT	intlevel1
	global	_b
	global	_c
	global	_gg
	global	_ii
	global	_intrf
	global	_MSG
	global	_OF
	global	_ON
	global	_TT
	global	__SMS
	global	_ff
	global	_hh
	global	_qq
	global	_aa
	global	_AA
	global	_bb
	global	_d
	global	_INTCON
psect	text307,local,class=CODE,delta=2
global __ptext307
__ptext307:
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
	global	_RCIF
_RCIF	set	101
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
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	0
psect	strings
	file	"uart1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_b:
       ds      20

_c:
       ds      20

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

_ff:
       ds      1

_hh:
       ds      1

_qq:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_AA:
       ds      25

_bb:
       ds      20

_d:
       ds      20

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
_aa:
       ds      50

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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+036h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+041h)
	fcall	clear_ram
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+032h)
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
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	?_TXS
?_TXS:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_TX
?_TX:	; 0 bytes @ 0x0
	global	?_receive
?_receive:	; 0 bytes @ 0x0
	global	?i1_delay
?i1_delay:	; 0 bytes @ 0x0
	global	i1delay@d
i1delay@d:	; 2 bytes @ 0x0
	ds	2
	global	??i1_delay
??i1_delay:	; 0 bytes @ 0x2
	global	i1delay@h
i1delay@h:	; 2 bytes @ 0x2
	ds	2
	global	i1delay@k
i1delay@k:	; 2 bytes @ 0x4
	ds	2
	global	?i1_lcddata
?i1_lcddata:	; 0 bytes @ 0x6
	global	i1lcddata@value
i1lcddata@value:	; 2 bytes @ 0x6
	ds	2
	global	??_receive
??_receive:	; 0 bytes @ 0x8
	global	??i1_lcddata
??i1_lcddata:	; 0 bytes @ 0x8
	ds	6
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
	global	??_TXS
??_TXS:	; 0 bytes @ 0x6
	global	?_lcddata
?_lcddata:	; 0 bytes @ 0x6
	global	lcdcmd@value
lcdcmd@value:	; 2 bytes @ 0x6
	global	lcddata@value
lcddata@value:	; 2 bytes @ 0x6
	ds	1
	global	TXS@s
TXS@s:	; 1 bytes @ 0x7
	ds	1
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x8
	global	??_display
??_display:	; 0 bytes @ 0x8
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x8
	ds	2
	global	display@p
display@p:	; 1 bytes @ 0xA
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xB
;;Data sizes: Strings 17, constant 0, data 0, bss 169, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     11      65
;; BANK1           80      0      65
;; BANK3           96      0      50
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; display@p	PTR unsigned char  size(1) Largest target is 11
;;		 -> STR_1(CODE[11]), 
;;
;; TXS@s	PTR unsigned char  size(1) Largest target is 6
;;		 -> STR_2(CODE[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _receive in COMMON
;;
;;   _receive->i1_lcddata
;;   i1_lcddata->i1_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_display
;;   _display->_lcddata
;;   _lcddata->_delay
;;   _TXS->_delay
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     616
;;                          _uart_init
;;                             _lcdcmd
;;                              _delay
;;                            _display
;;                                _TXS
;; ---------------------------------------------------------------------------------
;; (1) _display                                              3     3      0     251
;;                                              8 BANK0      3     3      0
;;                            _lcddata
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcddata                                              2     0      2     114
;;                                              6 BANK0      2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _TXS                                                  2     2      0     159
;;                                              6 BANK0      2     2      0
;;                                 _TX
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcdcmd                                               2     0      2     114
;;                                              6 BANK0      2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _TX                                                   1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                6     4      2      92
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _receive                                              8     8      0     373
;;                                              8 COMMON     6     6      0
;;                          i1_lcddata
;; ---------------------------------------------------------------------------------
;; (5) i1_lcddata                                            2     0      2     373
;;                                              6 COMMON     2     0      2
;;                            i1_delay
;; ---------------------------------------------------------------------------------
;; (6) i1_delay                                              6     4      2     300
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
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
;;   _TXS
;;     _TX
;;     _delay
;;
;; _receive (ROOT)
;;   i1_lcddata
;;     i1_delay
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
;;STACK                0      0       9       2        0.0%
;;ABS                  0      0      C2       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      B      41       5       81.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0      41       7       81.3%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0      32       9       52.1%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      CB      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 23 in file "F:\pic projects\uart\uart1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_uart_init
;;		_lcdcmd
;;		_delay
;;		_display
;;		_TXS
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\uart\uart1.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l2938:	
;uart1.c: 25: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	26
	
l2940:	
;uart1.c: 26: TRISD=0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	27
	
l2942:	
;uart1.c: 27: TRISC=0X0F;
	movlw	(0Fh)
	movwf	(135)^080h	;volatile
	line	28
;uart1.c: 28: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	29
	
l2944:	
;uart1.c: 29: uart_init();
	fcall	_uart_init
	line	30
	
l2946:	
;uart1.c: 30: lcdcmd(0x38);
	movlw	low(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(038h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	31
	
l2948:	
;uart1.c: 31: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	32
	
l2950:	
;uart1.c: 32: lcdcmd(0x0c);
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0Ch)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	33
	
l2952:	
;uart1.c: 33: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	34
	
l2954:	
;uart1.c: 34: lcdcmd(0x80);
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	35
	
l2956:	
;uart1.c: 35: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	36
	
l2958:	
;uart1.c: 36: lcdcmd(0x01);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	37
	
l2960:	
;uart1.c: 37: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	38
	
l2962:	
;uart1.c: 38: display("  animal  ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_display
	line	39
	
l2964:	
;uart1.c: 39: lcdcmd(0xc0);
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	40
	
l2966:	
;uart1.c: 40: delay(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	41
	
l2968:	
;uart1.c: 41: TXS("hello");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_TXS
	goto	l732
	line	42
;uart1.c: 42: while(1);
	
l731:	
	
l732:	
	goto	l732
	
l733:	
	line	43
	
l734:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text308,local,class=CODE,delta=2
global __ptext308
__ptext308:

;; *************** function _display *****************
;; Defined at:
;;		line 138 in file "F:\pic projects\uart\uart1.c"
;; Parameters:    Size  Location     Type
;;  p               1    wreg     PTR unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  p               1   10[BANK0 ] PTR unsigned char 
;;		 -> STR_1(11), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcddata
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text308
	file	"F:\pic projects\uart\uart1.c"
	line	138
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 2
; Regs used in _display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;display@p stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(display@p)
	line	139
	
l2928:	
;uart1.c: 139: while (*p)
	goto	l2936
	
l771:	
	line	141
	
l2930:	
;uart1.c: 140: {
;uart1.c: 141: lcddata(*p);
	movf	(display@p),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_display+0)+0
	clrf	(??_display+0)+0+1
	movf	0+(??_display+0)+0,w
	movwf	(?_lcddata)
	movf	1+(??_display+0)+0,w
	movwf	(?_lcddata+1)
	fcall	_lcddata
	line	142
	
l2932:	
;uart1.c: 142: delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	143
	
l2934:	
;uart1.c: 143: p++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_display+0)+0
	movf	(??_display+0)+0,w
	addwf	(display@p),f
	goto	l2936
	line	144
	
l770:	
	line	139
	
l2936:	
	movf	(display@p),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l2930
u2460:
	goto	l773
	
l772:	
	line	146
;uart1.c: 144: }
;uart1.c: 145: return;
	
l773:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_lcddata
psect	text309,local,class=CODE,delta=2
global __ptext309
__ptext309:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 126 in file "F:\pic projects\uart\uart1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text309
	file	"F:\pic projects\uart\uart1.c"
	line	126
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 2
; Regs used in _lcddata: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
l2916:	
;uart1.c: 127: PORTB=value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcddata@value),w
	movwf	(6)	;volatile
	line	128
	
l2918:	
;uart1.c: 128: RD6=1;
	bsf	(70/8),(70)&7
	line	130
	
l2920:	
;uart1.c: 130: RD7=1;
	bsf	(71/8),(71)&7
	line	131
	
l2922:	
;uart1.c: 131: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	132
	
l2924:	
;uart1.c: 132: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	goto	l767
	line	133
	
l2926:	
	line	134
;uart1.c: 133: return;
	
l767:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_TXS
psect	text310,local,class=CODE,delta=2
global __ptext310
__ptext310:

;; *************** function _TXS *****************
;; Defined at:
;;		line 56 in file "F:\pic projects\uart\uart1.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR unsigned char 
;;		 -> STR_2(6), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[BANK0 ] PTR unsigned char 
;;		 -> STR_2(6), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_TX
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text310
	file	"F:\pic projects\uart\uart1.c"
	line	56
	global	__size_of_TXS
	__size_of_TXS	equ	__end_of_TXS-_TXS
	
_TXS:	
	opt	stack 3
; Regs used in _TXS: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;TXS@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(TXS@s)
	line	57
	
l2906:	
;uart1.c: 57: while (*s)
	goto	l2914
	
l744:	
	line	59
	
l2908:	
;uart1.c: 58: {
;uart1.c: 59: TX(*s);
	movf	(TXS@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_TX
	line	60
	
l2910:	
;uart1.c: 60: delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	61
	
l2912:	
;uart1.c: 61: s++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_TXS+0)+0
	movf	(??_TXS+0)+0,w
	addwf	(TXS@s),f
	goto	l2914
	line	62
	
l743:	
	line	57
	
l2914:	
	movf	(TXS@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2908
u2450:
	goto	l746
	
l745:	
	line	64
;uart1.c: 62: }
;uart1.c: 63: return;
	
l746:	
	return
	opt stack 0
GLOBAL	__end_of_TXS
	__end_of_TXS:
;; =============== function _TXS ends ============

	signat	_TXS,4216
	global	_lcdcmd
psect	text311,local,class=CODE,delta=2
global __ptext311
__ptext311:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 115 in file "F:\pic projects\uart\uart1.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text311
	file	"F:\pic projects\uart\uart1.c"
	line	115
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 3
; Regs used in _lcdcmd: [wreg+status,2+status,0+pclath+cstack]
	line	116
	
l2894:	
;uart1.c: 116: PORTB=value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcdcmd@value),w
	movwf	(6)	;volatile
	line	117
	
l2896:	
;uart1.c: 117: RD6=0;
	bcf	(70/8),(70)&7
	line	118
	
l2898:	
;uart1.c: 118: RD7=1;
	bsf	(71/8),(71)&7
	line	119
	
l2900:	
;uart1.c: 119: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	120
	
l2902:	
;uart1.c: 120: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	goto	l764
	line	121
	
l2904:	
	line	122
;uart1.c: 121: return;
	
l764:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_TX
psect	text312,local,class=CODE,delta=2
global __ptext312
__ptext312:

;; *************** function _TX *****************
;; Defined at:
;;		line 47 in file "F:\pic projects\uart\uart1.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TXS
;; This function uses a non-reentrant model
;;
psect	text312
	file	"F:\pic projects\uart\uart1.c"
	line	47
	global	__size_of_TX
	__size_of_TX	equ	__end_of_TX-_TX
	
_TX:	
	opt	stack 3
; Regs used in _TX: [wreg]
;TX@TX_BYTE stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(TX@TX_BYTE)
	line	48
	
l2856:	
;uart1.c: 48: TXREG = TX_BYTE;
	movf	(TX@TX_BYTE),w
	movwf	(25)	;volatile
	line	49
;uart1.c: 49: while(!TRMT);
	goto	l737
	
l738:	
	
l737:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l737
u2390:
	
l739:	
	line	50
;uart1.c: 50: TRMT=0;
	bcf	(1217/8)^080h,(1217)&7
	line	52
;uart1.c: 51: return;
	
l740:	
	return
	opt stack 0
GLOBAL	__end_of_TX
	__end_of_TX:
;; =============== function _TX ends ============

	signat	_TX,4216
	global	_delay
psect	text313,local,class=CODE,delta=2
global __ptext313
__ptext313:

;; *************** function _delay *****************
;; Defined at:
;;		line 99 in file "F:\pic projects\uart\uart1.c"
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
;; Hardware stack levels required when called:    3
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
psect	text313
	file	"F:\pic projects\uart\uart1.c"
	line	99
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 3
; Regs used in _delay: [wreg+status,2]
	line	101
	
l2844:	
;uart1.c: 100: unsigned int k,h;
;uart1.c: 101: for(h=0;h<d;h++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@h)
	clrf	(delay@h+1)
	goto	l756
	line	103
	
l757:	
	line	104
	
l2846:	
;uart1.c: 103: {
;uart1.c: 104: for(k=0;k<=250;k++)
	clrf	(delay@k)
	clrf	(delay@k+1)
	
l2848:	
	movlw	high(0FBh)
	subwf	(delay@k+1),w
	movlw	low(0FBh)
	skipnz
	subwf	(delay@k),w
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2852
u2360:
	goto	l2854
	
l2850:	
	goto	l2854
	line	105
	
l758:	
	line	104
	
l2852:	
;uart1.c: 105: {
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
	goto	u2371
	goto	u2370
u2371:
	goto	l2852
u2370:
	goto	l2854
	
l759:	
	line	101
	
l2854:	
	movlw	low(01h)
	addwf	(delay@h),f
	skipnc
	incf	(delay@h+1),f
	movlw	high(01h)
	addwf	(delay@h+1),f
	
l756:	
	movf	(delay@d+1),w
	subwf	(delay@h+1),w
	skipz
	goto	u2385
	movf	(delay@d),w
	subwf	(delay@h),w
u2385:
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2846
u2380:
	goto	l761
	
l760:	
	line	109
;uart1.c: 106: }
;uart1.c: 107: }
;uart1.c: 108: return;
	
l761:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_uart_init
psect	text314,local,class=CODE,delta=2
global __ptext314
__ptext314:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 83 in file "F:\pic projects\uart\uart1.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text314
	file	"F:\pic projects\uart\uart1.c"
	line	83
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 4
; Regs used in _uart_init: [wreg]
	line	84
	
l2836:	
;uart1.c: 84: TRISC7 =1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	85
;uart1.c: 85: TRISC6 =0;
	bcf	(1086/8)^080h,(1086)&7
	line	86
	
l2838:	
;uart1.c: 86: SPBRG = 129;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	87
;uart1.c: 87: INTCON=0xc0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	88
	
l2840:	
;uart1.c: 88: RCIE =1;
	bsf	(1125/8)^080h,(1125)&7
	line	89
;uart1.c: 89: TXSTA = 0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	90
;uart1.c: 90: RCSTA = 0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	goto	l753
	line	91
	
l2842:	
	line	92
;uart1.c: 91: return;
	
l753:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_receive
psect	text315,local,class=CODE,delta=2
global __ptext315
__ptext315:

;; *************** function _receive *****************
;; Defined at:
;;		line 68 in file "F:\pic projects\uart\uart1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2    0        int 
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
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_lcddata
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text315
	file	"F:\pic projects\uart\uart1.c"
	line	68
	global	__size_of_receive
	__size_of_receive	equ	__end_of_receive-_receive
	
_receive:	
	opt	stack 2
; Regs used in _receive: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_receive+2)
	movf	fsr0,w
	movwf	(??_receive+3)
	movf	pclath,w
	movwf	(??_receive+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_receive+5)
	ljmp	_receive
psect	text315
	line	70
	
i1l2858:	
;uart1.c: 70: if(RCIE && RCIF)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l750
u240_20:
	
i1l2860:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l750
u241_20:
	line	73
	
i1l2862:	
;uart1.c: 71: {
;uart1.c: 72: int k;
;uart1.c: 73: RCIF =0;
	bcf	(101/8),(101)&7
	line	74
	
i1l2864:	
;uart1.c: 74: aa[ii]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_receive+0)+0
	movf	(_ii),w
	addlw	_aa&0ffh
	movwf	fsr0
	movf	(??_receive+0)+0,w
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	75
	
i1l2866:	
;uart1.c: 75: lcddata(aa[ii]);
	movf	(_ii),w
	addlw	_aa&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_receive+0)+0
	clrf	(??_receive+0)+0+1
	movf	0+(??_receive+0)+0,w
	movwf	(?i1_lcddata)
	movf	1+(??_receive+0)+0,w
	movwf	(?i1_lcddata+1)
	fcall	i1_lcddata
	line	76
	
i1l2868:	
;uart1.c: 76: ii++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_ii),f
	skipnc
	incf	(_ii+1),f
	movlw	high(01h)
	addwf	(_ii+1),f
	goto	i1l750
	line	78
	
i1l749:	
	line	80
	
i1l750:	
	movf	(??_receive+5),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_receive+4),w
	movwf	pclath
	movf	(??_receive+3),w
	movwf	fsr0
	swapf	(??_receive+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_receive
	__end_of_receive:
;; =============== function _receive ends ============

	signat	_receive,88
	global	i1_lcddata
psect	text316,local,class=CODE,delta=2
global __ptext316
__ptext316:

;; *************** function i1_lcddata *****************
;; Defined at:
;;		line 126 in file "F:\pic projects\uart\uart1.c"
;; Parameters:    Size  Location     Type
;;  lcddata         2    6[COMMON] unsigned int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_delay
;; This function is called by:
;;		_receive
;; This function uses a non-reentrant model
;;
psect	text316
	file	"F:\pic projects\uart\uart1.c"
	line	126
	global	__size_ofi1_lcddata
	__size_ofi1_lcddata	equ	__end_ofi1_lcddata-i1_lcddata
	
i1_lcddata:	
	opt	stack 2
; Regs used in i1_lcddata: [wreg+status,2+status,0+pclath+cstack]
	line	127
	
i1l2882:	
;uart1.c: 127: PORTB=value;
	movf	(i1lcddata@value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	128
	
i1l2884:	
;uart1.c: 128: RD6=1;
	bsf	(70/8),(70)&7
	line	130
	
i1l2886:	
;uart1.c: 130: RD7=1;
	bsf	(71/8),(71)&7
	line	131
	
i1l2888:	
;uart1.c: 131: delay(1);
	movlw	low(01h)
	movwf	(?i1_delay)
	movlw	high(01h)
	movwf	((?i1_delay))+1
	fcall	i1_delay
	line	132
	
i1l2890:	
;uart1.c: 132: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	goto	i1l767
	line	133
	
i1l2892:	
	line	134
;uart1.c: 133: return;
	
i1l767:	
	return
	opt stack 0
GLOBAL	__end_ofi1_lcddata
	__end_ofi1_lcddata:
;; =============== function i1_lcddata ends ============

	signat	i1_lcddata,88
	global	i1_delay
psect	text317,local,class=CODE,delta=2
global __ptext317
__ptext317:

;; *************** function i1_delay *****************
;; Defined at:
;;		line 99 in file "F:\pic projects\uart\uart1.c"
;; Parameters:    Size  Location     Type
;;  delay           2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  delay           2    4[COMMON] unsigned int 
;;  delay           2    2[COMMON] unsigned int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_lcddata
;; This function uses a non-reentrant model
;;
psect	text317
	file	"F:\pic projects\uart\uart1.c"
	line	99
	global	__size_ofi1_delay
	__size_ofi1_delay	equ	__end_ofi1_delay-i1_delay
	
i1_delay:	
	opt	stack 2
; Regs used in i1_delay: [wreg+status,2]
	line	101
	
i1l2870:	
;uart1.c: 100: unsigned int k,h;
;uart1.c: 101: for(h=0;h<d;h++)
	clrf	(i1delay@h)
	clrf	(i1delay@h+1)
	goto	i1l756
	line	103
	
i1l757:	
	line	104
	
i1l2872:	
;uart1.c: 103: {
;uart1.c: 104: for(k=0;k<=250;k++)
	clrf	(i1delay@k)
	clrf	(i1delay@k+1)
	
i1l2874:	
	movlw	high(0FBh)
	subwf	(i1delay@k+1),w
	movlw	low(0FBh)
	skipnz
	subwf	(i1delay@k),w
	skipc
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l2878
u242_20:
	goto	i1l2880
	
i1l2876:	
	goto	i1l2880
	line	105
	
i1l758:	
	line	104
	
i1l2878:	
;uart1.c: 105: {
	movlw	low(01h)
	addwf	(i1delay@k),f
	skipnc
	incf	(i1delay@k+1),f
	movlw	high(01h)
	addwf	(i1delay@k+1),f
	movlw	high(0FBh)
	subwf	(i1delay@k+1),w
	movlw	low(0FBh)
	skipnz
	subwf	(i1delay@k),w
	skipc
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l2878
u243_20:
	goto	i1l2880
	
i1l759:	
	line	101
	
i1l2880:	
	movlw	low(01h)
	addwf	(i1delay@h),f
	skipnc
	incf	(i1delay@h+1),f
	movlw	high(01h)
	addwf	(i1delay@h+1),f
	
i1l756:	
	movf	(i1delay@d+1),w
	subwf	(i1delay@h+1),w
	skipz
	goto	u244_25
	movf	(i1delay@d),w
	subwf	(i1delay@h),w
u244_25:
	skipc
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l2872
u244_20:
	goto	i1l761
	
i1l760:	
	line	109
;uart1.c: 106: }
;uart1.c: 107: }
;uart1.c: 108: return;
	
i1l761:	
	return
	opt stack 0
GLOBAL	__end_ofi1_delay
	__end_ofi1_delay:
;; =============== function i1_delay ends ============

	signat	i1_delay,88
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
