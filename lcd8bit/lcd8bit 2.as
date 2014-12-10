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
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_delay
	FNCALL	_main,_lcddata
	FNCALL	_lcddata,_delay
	FNCALL	_lcdcmd,_delay
	FNROOT	_main
	global	_PORTD
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:
_PORTD	set	8
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
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
	file	"lcd8bit 2.as"
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
	global	?_lcdcmd
?_lcdcmd:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_lcddata
?_lcddata:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@z
delay@z:	; 2 bytes @ 0x0
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
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x7
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x7
	global	lcdcmd@x
lcdcmd@x:	; 1 bytes @ 0x7
	global	lcddata@y
lcddata@y:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcdcmd
;;   _main->_lcddata
;;   _lcddata->_delay
;;   _lcdcmd->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0     210
;;                             _lcdcmd
;;                              _delay
;;                            _lcddata
;; ---------------------------------------------------------------------------------
;; (1) _lcddata                                              1     1      0      75
;;                                              7 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcdcmd                                               1     1      0      75
;;                                              7 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                7     5      2      60
;;                                              0 COMMON     7     5      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcdcmd
;;     _delay
;;   _delay
;;   _lcddata
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 10 in file "F:\pic projects\mplab\lcd123\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcdcmd
;;		_delay
;;		_lcddata
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\mplab\lcd123\lcd.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	12
	
l2651:	
;lcd.c: 12: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	13
;lcd.c: 13: TRISD=0;
	clrf	(136)^080h	;volatile
	line	14
	
l2653:	
;lcd.c: 14: lcdcmd(0x38);
	movlw	(038h)
	fcall	_lcdcmd
	line	15
	
l2655:	
;lcd.c: 15: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	16
	
l2657:	
;lcd.c: 16: lcdcmd(0x0c);
	movlw	(0Ch)
	fcall	_lcdcmd
	line	17
	
l2659:	
;lcd.c: 17: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	18
	
l2661:	
;lcd.c: 18: lcdcmd(0xc5);
	movlw	(0C5h)
	fcall	_lcdcmd
	line	20
	
l2663:	
;lcd.c: 20: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l2665:	
;lcd.c: 21: lcddata(0x41);
	movlw	(041h)
	fcall	_lcddata
	line	22
	
l2667:	
;lcd.c: 22: lcddata('p');
	movlw	(070h)
	fcall	_lcddata
	line	23
	
l2669:	
;lcd.c: 23: lcddata('p');
	movlw	(070h)
	fcall	_lcddata
	line	24
	
l2671:	
;lcd.c: 24: lcddata('l');
	movlw	(06Ch)
	fcall	_lcddata
	line	25
	
l2673:	
;lcd.c: 25: lcddata('e');
	movlw	(065h)
	fcall	_lcddata
	line	26
	
l2675:	
;lcd.c: 26: delay(20);
	movlw	low(014h)
	movwf	(?_delay)
	movlw	high(014h)
	movwf	((?_delay))+1
	fcall	_delay
	line	27
	
l2677:	
;lcd.c: 27: lcdcmd(0x1c);
	movlw	(01Ch)
	fcall	_lcdcmd
	line	28
	
l2679:	
;lcd.c: 28: delay(60);
	movlw	low(03Ch)
	movwf	(?_delay)
	movlw	high(03Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l2681:	
;lcd.c: 29: lcdcmd(0x1c);
	movlw	(01Ch)
	fcall	_lcdcmd
	line	30
	
l2683:	
;lcd.c: 30: delay(60);
	movlw	low(03Ch)
	movwf	(?_delay)
	movlw	high(03Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	31
	
l2685:	
;lcd.c: 31: lcdcmd(0x1c);
	movlw	(01Ch)
	fcall	_lcdcmd
	line	32
	
l2687:	
;lcd.c: 32: delay(60);
	movlw	low(03Ch)
	movwf	(?_delay)
	movlw	high(03Ch)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l2689:	
;lcd.c: 33: lcdcmd(0x1c);
	movlw	(01Ch)
	fcall	_lcdcmd
	goto	l692
	line	34
;lcd.c: 34: while(1);
	
l691:	
	
l692:	
	goto	l692
	
l693:	
	line	37
	
l694:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcddata
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 55 in file "F:\pic projects\mplab\lcd123\lcd.c"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  y               1    7[COMMON] unsigned char 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text95
	file	"F:\pic projects\mplab\lcd123\lcd.c"
	line	55
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 6
; Regs used in _lcddata: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcddata@y stored from wreg
	line	57
	movwf	(lcddata@y)
	
l2639:	
;lcd.c: 57: PORTD=y;
	movf	(lcddata@y),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	59
	
l2641:	
;lcd.c: 59: RB7=1;
	bsf	(55/8),(55)&7
	line	60
	
l2643:	
;lcd.c: 60: RB6=0;
	bcf	(54/8),(54)&7
	line	61
	
l2645:	
;lcd.c: 61: RB5=1;
	bsf	(53/8),(53)&7
	line	62
	
l2647:	
;lcd.c: 62: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	63
	
l2649:	
;lcd.c: 63: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	65
	
l700:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdcmd
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 41 in file "F:\pic projects\mplab\lcd123\lcd.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    7[COMMON] unsigned char 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text96
	file	"F:\pic projects\mplab\lcd123\lcd.c"
	line	41
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 6
; Regs used in _lcdcmd: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;lcdcmd@x stored from wreg
	movwf	(lcdcmd@x)
	line	42
	
l2627:	
;lcd.c: 42: PORTD=x;
	movf	(lcdcmd@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	44
	
l2629:	
;lcd.c: 44: RB7=0;
	bcf	(55/8),(55)&7
	line	45
	
l2631:	
;lcd.c: 45: RB6=0;
	bcf	(54/8),(54)&7
	line	46
	
l2633:	
;lcd.c: 46: RB5=1;
	bsf	(53/8),(53)&7
	line	47
	
l2635:	
;lcd.c: 47: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	48
	
l2637:	
;lcd.c: 48: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	50
	
l697:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_delay
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _delay *****************
;; Defined at:
;;		line 68 in file "F:\pic projects\mplab\lcd123\lcd.c"
;; Parameters:    Size  Location     Type
;;  z               2    0[COMMON] int 
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
;;		_main
;;		_lcdcmd
;;		_lcddata
;; This function uses a non-reentrant model
;;
psect	text97
	file	"F:\pic projects\mplab\lcd123\lcd.c"
	line	68
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+status,2+btemp+1]
	line	70
	
l1755:	
;lcd.c: 69: int i,j;
;lcd.c: 70: for(i=0;i<z;i++)
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l703
	line	71
	
l704:	
	line	72
	
l1757:	
;lcd.c: 71: {
;lcd.c: 72: for(j=0;j<250;j++)
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l1759:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FAh))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(0FAh)
	subwf	(delay@j),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l1763
u10:
	goto	l1767
	
l1761:	
	goto	l1767
	line	73
	
l705:	
	line	72
	
l1763:	
;lcd.c: 73: {
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l1765:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0FAh))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0FAh)
	subwf	(delay@j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l1763
u20:
	goto	l1767
	
l706:	
	line	70
	
l1767:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l703:	
	movf	(delay@i+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@z+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u35
	movf	(delay@z),w
	subwf	(delay@i),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l1757
u30:
	goto	l708
	
l707:	
	line	78
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
