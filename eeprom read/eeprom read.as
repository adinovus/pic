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
# 4 "F:\pic projects\eeprom read\eeprom.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "F:\pic projects\eeprom read\eeprom.c"
	dw 0x3f72 ;#
	FNCALL	_main,_DelayMs
	FNCALL	_main,_i2c_init
	FNCALL	_main,_serial_init
	FNCALL	_main,_printf
	FNCALL	_main,_I2CWrite
	FNCALL	_main,_I2CRead
	FNCALL	_I2CRead,_WaitMSSP
	FNCALL	_I2CRead,_putch
	FNCALL	_I2CRead,_DelayMs
	FNCALL	_I2CWrite,_WaitMSSP
	FNCALL	_printf,_putch
	FNROOT	_main
	global	_data
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	14

;initializer for _data
	retlw	049h
	retlw	032h
	retlw	043h
	retlw	020h
	retlw	054h
	retlw	065h
	retlw	073h
	retlw	074h
	retlw	020h
	retlw	050h
	retlw	072h
	retlw	06Fh
	retlw	067h
	retlw	072h
	retlw	061h
	retlw	06Dh
	retlw	0
	global	_i
	global	_RCSTA
_RCSTA	set	24
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_SSPIF
_SSPIF	set	99
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_SSPADD
_SSPADD	set	147
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TXSTA
_TXSTA	set	152
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
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
	retlw	103	;'g'
	retlw	103	;'g'
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	0
psect	strings
	
STR_2:	
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	0
psect	strings
	file	"eeprom read.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"F:\pic projects\eeprom read\eeprom.c"
_data:
       ds      17

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+17)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_i2c_init
?_i2c_init:	; 0 bytes @ 0x0
	global	??_i2c_init
??_i2c_init:	; 0 bytes @ 0x0
	global	?_serial_init
?_serial_init:	; 0 bytes @ 0x0
	global	??_serial_init
??_serial_init:	; 0 bytes @ 0x0
	global	?_I2CWrite
?_I2CWrite:	; 0 bytes @ 0x0
	global	??_I2CWrite
??_I2CWrite:	; 0 bytes @ 0x0
	global	?_I2CRead
?_I2CRead:	; 0 bytes @ 0x0
	global	?_WaitMSSP
?_WaitMSSP:	; 0 bytes @ 0x0
	global	??_WaitMSSP
??_WaitMSSP:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	putch@Data
putch@Data:	; 1 bytes @ 0x0
	global	DelayMs@Ms
DelayMs@Ms:	; 2 bytes @ 0x0
	ds	1
	global	??_printf
??_printf:	; 0 bytes @ 0x1
	ds	1
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x2
	global	printf@ap
printf@ap:	; 1 bytes @ 0x2
	global	DelayMs@delay_cnst
DelayMs@delay_cnst:	; 2 bytes @ 0x2
	ds	1
	global	printf@f
printf@f:	; 1 bytes @ 0x3
	ds	1
	global	??_I2CRead
??_I2CRead:	; 0 bytes @ 0x4
	global	printf@c
printf@c:	; 1 bytes @ 0x4
	global	I2CRead@y
I2CRead@y:	; 2 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
;;Data sizes: Strings 9, constant 0, data 17, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       7
;; BANK0           80      0      17
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; printf@f	PTR const unsigned char  size(1) Largest target is 5
;;		 -> STR_2(CODE[4]), STR_1(CODE[5]), 
;;
;; printf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_printf(COMMON[2]), 
;;
;; S1288$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_I2CRead
;;   _I2CRead->_DelayMs
;;   _printf->_putch
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
;; (0) _main                                                 0     0      0     180
;;                            _DelayMs
;;                           _i2c_init
;;                        _serial_init
;;                             _printf
;;                           _I2CWrite
;;                            _I2CRead
;; ---------------------------------------------------------------------------------
;; (1) _I2CRead                                              2     2      0      90
;;                                              4 COMMON     2     2      0
;;                           _WaitMSSP
;;                              _putch
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (1) _I2CWrite                                             1     1      0       0
;;                                              0 COMMON     1     1      0
;;                           _WaitMSSP
;; ---------------------------------------------------------------------------------
;; (1) _printf                                              10    10      0      45
;;                                              1 COMMON     4     4      0
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (2) _putch                                                1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _WaitMSSP                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _serial_init                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _i2c_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _DelayMs                                              4     2      2      45
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _DelayMs
;;   _i2c_init
;;   _serial_init
;;   _printf
;;     _putch
;;   _I2CWrite
;;     _WaitMSSP
;;   _I2CRead
;;     _WaitMSSP
;;     _putch
;;     _DelayMs
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      1A      12        0.0%
;;ABS                  0      0      18       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      0      11       5       21.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       7       1       50.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 22 in file "F:\pic projects\eeprom read\eeprom.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DelayMs
;;		_i2c_init
;;		_serial_init
;;		_printf
;;		_I2CWrite
;;		_I2CRead
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l2774:	
;eeprom.c: 23: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	24
	
l2776:	
;eeprom.c: 24: i2c_init();
	fcall	_i2c_init
	line	25
	
l2778:	
;eeprom.c: 25: serial_init();
	fcall	_serial_init
	line	26
	
l2780:	
;eeprom.c: 26: printf("ggda");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_printf
	line	27
	
l2782:	
;eeprom.c: 27: DelayMs(20);
	movlw	low(014h)
	movwf	(?_DelayMs)
	movlw	high(014h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	28
;eeprom.c: 28: I2CWrite();
	fcall	_I2CWrite
	line	29
	
l2784:	
;eeprom.c: 29: DelayMs(50);
	movlw	low(032h)
	movwf	(?_DelayMs)
	movlw	high(032h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	30
	
l2786:	
;eeprom.c: 30: printf("hai");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_printf
	line	31
;eeprom.c: 31: while(1)
	
l705:	
	line	33
;eeprom.c: 32: {
;eeprom.c: 33: I2CRead();
	fcall	_I2CRead
	line	34
	
l2788:	
;eeprom.c: 34: TXREG='\n';
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	35
;eeprom.c: 35: while(TXIF==0);
	goto	l706
	
l707:	
	
l706:	
	btfss	(100/8),(100)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l706
u2320:
	goto	l2790
	
l708:	
	line	36
	
l2790:	
;eeprom.c: 36: TXREG='\r';
	movlw	(0Dh)
	movwf	(25)	;volatile
	line	37
	
l2792:	
;eeprom.c: 37: DelayMs(500);
	movlw	low(01F4h)
	movwf	(?_DelayMs)
	movlw	high(01F4h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l705
	line	38
	
l709:	
	line	31
	goto	l705
	
l710:	
	line	39
	
l711:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_I2CRead
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:

;; *************** function _I2CRead *****************
;; Defined at:
;;		line 58 in file "F:\pic projects\eeprom read\eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  y               2    4[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_WaitMSSP
;;		_putch
;;		_DelayMs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text149
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	58
	global	__size_of_I2CRead
	__size_of_I2CRead	equ	__end_of_I2CRead-_I2CRead
	
_I2CRead:	
	opt	stack 6
; Regs used in _I2CRead: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	60
	
l2728:	
;eeprom.c: 59: int y;
;eeprom.c: 60: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	61
	
l2730:	
;eeprom.c: 61: WaitMSSP();
	fcall	_WaitMSSP
	line	62
	
l2732:	
;eeprom.c: 62: SSPBUF=0xa0;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	63
	
l2734:	
;eeprom.c: 63: WaitMSSP();
	fcall	_WaitMSSP
	line	64
	
l2736:	
;eeprom.c: 64: SSPBUF=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	65
	
l2738:	
;eeprom.c: 65: WaitMSSP();
	fcall	_WaitMSSP
	line	66
	
l2740:	
;eeprom.c: 66: for(y=0;y<16;y++)
	clrf	(I2CRead@y)
	clrf	(I2CRead@y+1)
	
l2742:	
	movf	(I2CRead@y+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(010h)
	subwf	(I2CRead@y),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l719
u2300:
	goto	l720
	
l2744:	
	goto	l720
	line	67
	
l719:	
	line	68
;eeprom.c: 67: {
;eeprom.c: 68: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	69
	
l2746:	
;eeprom.c: 69: WaitMSSP();
	fcall	_WaitMSSP
	line	70
	
l2748:	
;eeprom.c: 70: SSPBUF=0xa1;
	movlw	(0A1h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	71
	
l2750:	
;eeprom.c: 71: WaitMSSP();
	fcall	_WaitMSSP
	line	72
	
l2752:	
;eeprom.c: 72: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	73
	
l2754:	
;eeprom.c: 73: WaitMSSP();
	fcall	_WaitMSSP
	line	74
	
l2756:	
;eeprom.c: 74: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	75
	
l2758:	
;eeprom.c: 75: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	76
	
l2760:	
;eeprom.c: 76: PEN=1;
	bsf	(1162/8)^080h,(1162)&7
	line	77
	
l2762:	
;eeprom.c: 77: WaitMSSP();
	fcall	_WaitMSSP
	line	78
	
l2764:	
;eeprom.c: 78: putch(SSPBUF);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	fcall	_putch
	line	79
	
l2766:	
;eeprom.c: 79: DelayMs(30);
	movlw	low(01Eh)
	movwf	(?_DelayMs)
	movlw	high(01Eh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	66
	
l2768:	
	movlw	low(01h)
	addwf	(I2CRead@y),f
	skipnc
	incf	(I2CRead@y+1),f
	movlw	high(01h)
	addwf	(I2CRead@y+1),f
	
l2770:	
	movf	(I2CRead@y+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(010h)
	subwf	(I2CRead@y),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l719
u2310:
	
l720:	
	line	81
;eeprom.c: 80: }
;eeprom.c: 81: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	82
	
l2772:	
;eeprom.c: 82: WaitMSSP();
	fcall	_WaitMSSP
	line	83
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_I2CRead
	__end_of_I2CRead:
;; =============== function _I2CRead ends ============

	signat	_I2CRead,88
	global	_I2CWrite
psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:

;; *************** function _I2CWrite *****************
;; Defined at:
;;		line 41 in file "F:\pic projects\eeprom read\eeprom.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_WaitMSSP
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text150
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	41
	global	__size_of_I2CWrite
	__size_of_I2CWrite	equ	__end_of_I2CWrite-_I2CWrite
	
_I2CWrite:	
	opt	stack 6
; Regs used in _I2CWrite: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	42
	
l2700:	
;eeprom.c: 42: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	43
	
l2702:	
;eeprom.c: 43: WaitMSSP();
	fcall	_WaitMSSP
	line	44
	
l2704:	
;eeprom.c: 44: SSPBUF=0xa0;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	45
	
l2706:	
;eeprom.c: 45: WaitMSSP();
	fcall	_WaitMSSP
	line	46
	
l2708:	
;eeprom.c: 46: SSPBUF=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	47
	
l2710:	
;eeprom.c: 47: WaitMSSP();
	fcall	_WaitMSSP
	line	48
	
l2712:	
;eeprom.c: 48: for(i=0;i<16;i++)
	clrf	(_i)
	
l2714:	
	movlw	(010h)
	subwf	(_i),w
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l2718
u2280:
	goto	l715
	
l2716:	
	goto	l715
	line	49
	
l714:	
	line	50
	
l2718:	
;eeprom.c: 49: {
;eeprom.c: 50: SSPBUF=data[i];
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	52
	
l2720:	
;eeprom.c: 52: WaitMSSP();
	fcall	_WaitMSSP
	line	48
	
l2722:	
	movlw	(01h)
	movwf	(??_I2CWrite+0)+0
	movf	(??_I2CWrite+0)+0,w
	addwf	(_i),f
	
l2724:	
	movlw	(010h)
	subwf	(_i),w
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2718
u2290:
	
l715:	
	line	54
;eeprom.c: 53: }
;eeprom.c: 54: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	55
	
l2726:	
;eeprom.c: 55: WaitMSSP();
	fcall	_WaitMSSP
	line	56
	
l716:	
	return
	opt stack 0
GLOBAL	__end_of_I2CWrite
	__end_of_I2CWrite:
;; =============== function _I2CWrite ends ============

	signat	_I2CWrite,88
	global	_printf
psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:

;; *************** function _printf *****************
;; Defined at:
;;		line 461 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     PTR const unsigned char 
;;		 -> STR_2(4), STR_1(5), 
;; Auto vars:     Size  Location     Type
;;  f               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_2(4), STR_1(5), 
;;  _val            4    0        struct .
;;  c               1    4[COMMON] char 
;;  ap              1    2[COMMON] PTR void [1]
;;		 -> ?_printf(2), 
;;  flag            1    0        unsigned char 
;;  prec            1    0        char 
;; Return value:  Size  Location     Type
;;                  2  694[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text151
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\doprnt.c"
	line	461
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:	
	opt	stack 6
; Regs used in _printf: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;printf@f stored from wreg
	line	537
	movwf	(printf@f)
	
l2694:	
	movlw	(?_printf)&0ffh
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@ap)
	line	540
	goto	l2698
	
l755:	
	line	545
	
l2696:	
	movf	(printf@c),w
	fcall	_putch
	line	546
	goto	l2698
	line	1525
	
l754:	
	line	540
	
l2698:	
	movlw	01h
	addwf	(printf@f),f
	movlw	-01h
	addwf	(printf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_printf+0)+0
	movf	(??_printf+0)+0,w
	movwf	(printf@c)
	movf	((printf@c)),f
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l2696
u2270:
	goto	l757
	
l756:	
	line	1533
;	Return value of _printf is never used
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
;; =============== function _printf ends ============

	signat	_printf,602
	global	_putch
psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:

;; *************** function _putch *****************
;; Defined at:
;;		line 108 in file "F:\pic projects\eeprom read\eeprom.c"
;; Parameters:    Size  Location     Type
;;  Data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Data            1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2CRead
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text152
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	108
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 6
; Regs used in _putch: [wreg]
;putch@Data stored from wreg
	movwf	(putch@Data)
	line	109
	
l1832:	
;eeprom.c: 109: while(TXIF==0);
	goto	l736
	
l737:	
	
l736:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u51
	goto	u50
u51:
	goto	l736
u50:
	goto	l1834
	
l738:	
	line	110
	
l1834:	
;eeprom.c: 110: TXREG = Data;
	movf	(putch@Data),w
	movwf	(25)	;volatile
	line	111
	
l739:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_WaitMSSP
psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:

;; *************** function _WaitMSSP *****************
;; Defined at:
;;		line 85 in file "F:\pic projects\eeprom read\eeprom.c"
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
;;		_I2CWrite
;;		_I2CRead
;; This function uses a non-reentrant model
;;
psect	text153
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	85
	global	__size_of_WaitMSSP
	__size_of_WaitMSSP	equ	__end_of_WaitMSSP-_WaitMSSP
	
_WaitMSSP:	
	opt	stack 6
; Regs used in _WaitMSSP: []
	line	86
	
l1830:	
;eeprom.c: 86: while(!SSPIF);
	goto	l724
	
l725:	
	
l724:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u41
	goto	u40
u41:
	goto	l724
u40:
	
l726:	
	line	87
;eeprom.c: 87: SSPIF=0;
	bcf	(99/8),(99)&7
	line	88
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_WaitMSSP
	__end_of_WaitMSSP:
;; =============== function _WaitMSSP ends ============

	signat	_WaitMSSP,88
	global	_serial_init
psect	text154,local,class=CODE,delta=2
global __ptext154
__ptext154:

;; *************** function _serial_init *****************
;; Defined at:
;;		line 99 in file "F:\pic projects\eeprom read\eeprom.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text154
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	99
	global	__size_of_serial_init
	__size_of_serial_init	equ	__end_of_serial_init-_serial_init
	
_serial_init:	
	opt	stack 7
; Regs used in _serial_init: [wreg]
	line	100
	
l1824:	
;eeprom.c: 100: TRISC6=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1086/8)^080h,(1086)&7
	line	101
;eeprom.c: 101: TRISC7=1;
	bsf	(1087/8)^080h,(1087)&7
	line	102
	
l1826:	
;eeprom.c: 102: TXSTA=0x24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	103
;eeprom.c: 103: SPBRG=(char)(10000/ (16 * 9.6 )) - 1;;
	movlw	(040h)
	movwf	(153)^080h	;volatile
	line	104
;eeprom.c: 104: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	105
	
l1828:	
;eeprom.c: 105: TXIF=1;
	bsf	(100/8),(100)&7
	line	106
	
l733:	
	return
	opt stack 0
GLOBAL	__end_of_serial_init
	__end_of_serial_init:
;; =============== function _serial_init ends ============

	signat	_serial_init,88
	global	_i2c_init
psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 90 in file "F:\pic projects\eeprom read\eeprom.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text155
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	90
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
	opt	stack 7
; Regs used in _i2c_init: [wreg]
	line	91
	
l1820:	
;eeprom.c: 91: TRISC3=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	92
;eeprom.c: 92: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	93
	
l1822:	
;eeprom.c: 93: SSPCON=0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	95
;eeprom.c: 95: SSPADD=(10000 / (4 * 100)) - 1;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(147)^080h	;volatile
	line	96
;eeprom.c: 96: SSPSTAT=80;
	movlw	(050h)
	movwf	(148)^080h	;volatile
	line	97
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
;; =============== function _i2c_init ends ============

	signat	_i2c_init,88
	global	_DelayMs
psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 113 in file "F:\pic projects\eeprom read\eeprom.c"
;; Parameters:    Size  Location     Type
;;  Ms              2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  delay_cnst      2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_I2CRead
;; This function uses a non-reentrant model
;;
psect	text156
	file	"F:\pic projects\eeprom read\eeprom.c"
	line	113
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 6
; Regs used in _DelayMs: [wreg+status,2+status,0+btemp+1]
	line	115
	
l1804:	
;eeprom.c: 114: int delay_cnst;
;eeprom.c: 115: while(Ms>0)
	goto	l1818
	
l743:	
	line	117
	
l1806:	
;eeprom.c: 116: {
;eeprom.c: 117: Ms--;
	movlw	low(01h)
	subwf	(DelayMs@Ms),f
	movlw	high(01h)
	skipc
	decf	(DelayMs@Ms+1),f
	subwf	(DelayMs@Ms+1),f
	line	118
	
l1808:	
;eeprom.c: 118: for(delay_cnst = 0;delay_cnst <220;delay_cnst++);
	clrf	(DelayMs@delay_cnst)
	clrf	(DelayMs@delay_cnst+1)
	
l1810:	
	movf	(DelayMs@delay_cnst+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0DCh))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(0DCh)
	subwf	(DelayMs@delay_cnst),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l1814
u10:
	goto	l1818
	
l1812:	
	goto	l1818
	
l744:	
	
l1814:	
	movlw	low(01h)
	addwf	(DelayMs@delay_cnst),f
	skipnc
	incf	(DelayMs@delay_cnst+1),f
	movlw	high(01h)
	addwf	(DelayMs@delay_cnst+1),f
	
l1816:	
	movf	(DelayMs@delay_cnst+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0DCh))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(0DCh)
	subwf	(DelayMs@delay_cnst),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l1814
u20:
	goto	l1818
	
l745:	
	goto	l1818
	line	119
	
l742:	
	line	115
	
l1818:	
	movf	((DelayMs@Ms+1)),w
	iorwf	((DelayMs@Ms)),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1806
u30:
	goto	l747
	
l746:	
	line	120
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
