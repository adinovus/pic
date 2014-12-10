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
	FNCALL	_main,_water_level
	FNROOT	_main
	global	_CARRY
psect	text76,local,class=CODE,delta=2
global __ptext76
__ptext76:
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
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TRISC
_TRISC	set	135
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
	file	"water level and moisture.as"
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
	global	?_water_level
?_water_level:	; 0 bytes @ 0x0
	global	??_water_level
??_water_level:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	main@i
main@i:	; 2 bytes @ 0x0
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                 4     4      0      60
;;                                              0 COMMON     4     4      0
;;                        _water_level
;; ---------------------------------------------------------------------------------
;; (1) _water_level                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _water_level
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
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
;;		line 12 in file "F:\pic projects\water level and moisture\water level.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2    2[COMMON] unsigned int 
;;  i               2    0[COMMON] unsigned int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_water_level
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\water level and moisture\water level.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l2619:	
;water level.c: 14: unsigned int i,j;
;water level.c: 15: TRISC=0xff;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	16
	
l2621:	
;water level.c: 16: TRISD=0;
	clrf	(136)^080h	;volatile
	line	17
	
l2623:	
;water level.c: 17: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	18
	
l2625:	
;water level.c: 18: RD3=0;
	bcf	(67/8),(67)&7
	goto	l2627
	line	19
;water level.c: 19: while(1)
	
l687:	
	line	22
	
l2627:	
;water level.c: 20: {
;water level.c: 22: if (RC3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2651
u2270:
	line	26
	
l2629:	
;water level.c: 24: {
;water level.c: 26: for(i=0;i<500;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2631:	
	movlw	high(01F4h)
	subwf	(main@i+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(main@i),w
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l2635
u2280:
	goto	l2627
	
l2633:	
	goto	l2627
	line	27
	
l689:	
	line	28
	
l2635:	
;water level.c: 27: {
;water level.c: 28: for(j=0;j<1500;j++)
	clrf	(main@j)
	clrf	(main@j+1)
	
l2637:	
	movlw	high(05DCh)
	subwf	(main@j+1),w
	movlw	low(05DCh)
	skipnz
	subwf	(main@j),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2641
u2290:
	goto	l2649
	
l2639:	
	goto	l2649
	line	29
	
l691:	
	line	30
	
l2641:	
;water level.c: 29: {
;water level.c: 30: water_level();
	fcall	_water_level
	line	31
	
l2643:	
;water level.c: 31: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	28
	
l2645:	
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l2647:	
	movlw	high(05DCh)
	subwf	(main@j+1),w
	movlw	low(05DCh)
	skipnz
	subwf	(main@j),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l2641
u2300:
	goto	l2649
	
l692:	
	line	26
	
l2649:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	movlw	high(01F4h)
	subwf	(main@i+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(main@i),w
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2635
u2310:
	goto	l2627
	
l690:	
	line	34
;water level.c: 32: }
;water level.c: 33: }
;water level.c: 34: }
	goto	l2627
	line	35
	
l688:	
	line	37
	
l2651:	
;water level.c: 35: else
;water level.c: 36: {
;water level.c: 37: water_level();
	fcall	_water_level
	line	38
	
l2653:	
;water level.c: 38: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	goto	l2627
	line	39
	
l693:	
	goto	l2627
	line	44
	
l694:	
	line	19
	goto	l2627
	
l695:	
	line	48
	
l696:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_water_level
psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:

;; *************** function _water_level *****************
;; Defined at:
;;		line 52 in file "F:\pic projects\water level and moisture\water level.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text77
	file	"F:\pic projects\water level and moisture\water level.c"
	line	52
	global	__size_of_water_level
	__size_of_water_level	equ	__end_of_water_level-_water_level
	
_water_level:	
	opt	stack 7
; Regs used in _water_level: []
	line	54
	
l1749:	
;water level.c: 54: if(RC1==0 && RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u11
	goto	u10
u11:
	goto	l699
u10:
	
l1751:	
	btfss	(58/8),(58)&7
	goto	u21
	goto	u20
u21:
	goto	l699
u20:
	line	57
	
l1753:	
;water level.c: 56: {
;water level.c: 57: RD2 = 1;
	bsf	(66/8),(66)&7
	line	59
	
l699:	
	line	60
;water level.c: 59: }
;water level.c: 60: if (RC1==1 && RC0==1)
	btfss	(57/8),(57)&7
	goto	u31
	goto	u30
u31:
	goto	l700
u30:
	
l1755:	
	btfss	(56/8),(56)&7
	goto	u41
	goto	u40
u41:
	goto	l700
u40:
	line	63
	
l1757:	
;water level.c: 61: {
;water level.c: 63: RD2 = 0;
	bcf	(66/8),(66)&7
	line	65
	
l700:	
	line	67
;water level.c: 65: }
;water level.c: 67: if(RC2==0)
	btfsc	(58/8),(58)&7
	goto	u51
	goto	u50
u51:
	goto	l702
u50:
	line	70
	
l1759:	
;water level.c: 69: {
;water level.c: 70: RD2 = 0;
	bcf	(66/8),(66)&7
	goto	l702
	line	72
	
l701:	
	line	76
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_water_level
	__end_of_water_level:
;; =============== function _water_level ends ============

	signat	_water_level,88
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
