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
# 3 "F:\pic projects\solar charge\solar charge.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "F:\pic projects\solar charge\solar charge.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_PWM1_Init
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_delay
	FNCALL	_main,_display
	FNCALL	_main,_ADC_Read
	FNCALL	_main,_adc_to_volt
	FNCALL	_main,_lcddata
	FNCALL	_main,_PWM1_Stop
	FNCALL	_main,_PWM1_Start
	FNCALL	_main,_PWM1_Duty
	FNCALL	_PWM1_Duty,___lwtoft
	FNCALL	_PWM1_Duty,___ftdiv
	FNCALL	_PWM1_Duty,_PWM_Max_Duty
	FNCALL	_PWM1_Duty,___awtoft
	FNCALL	_PWM1_Duty,___ftmul
	FNCALL	_PWM1_Duty,___fttol
	FNCALL	_adc_to_volt,___wmul
	FNCALL	_adc_to_volt,___lwdiv
	FNCALL	_adc_to_volt,_lcdcmd
	FNCALL	_adc_to_volt,_delay
	FNCALL	_adc_to_volt,_lcddata
	FNCALL	_adc_to_volt,___lwmod
	FNCALL	_display,_lcddata
	FNCALL	_display,_delay
	FNCALL	___lwtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_PWM_Max_Duty,___aldiv
	FNCALL	_lcddata,_delay
	FNCALL	_ADC_Read,_delay
	FNCALL	_lcdcmd,_delay
	FNCALL	_PWM1_Init,___aldiv
	FNROOT	_main
	global	_u
	global	_ADCON0
psect	text518,local,class=CODE,delta=2
global __ptext518
__ptext518:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTB
_PORTB	set	6
	global	_CARRY
_CARRY	set	24
	global	_CCP1M2
_CCP1M2	set	186
	global	_CCP1M3
_CCP1M3	set	187
	global	_CCP1X
_CCP1X	set	189
	global	_CCP1Y
_CCP1Y	set	188
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RC2
_RC2	set	58
	global	_RC4
_RC4	set	60
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_TMR2ON
_TMR2ON	set	146
	global	_ADCON1
_ADCON1	set	159
	global	_PR2
_PR2	set	146
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISC2
_TRISC2	set	1082
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
	global	_freq
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_freq:
       ds      4

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
	
STR_6:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	67	;'C'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	83	;'S'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	71	;'G'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	98	;'b'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	102	;'f'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	66	;'B'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	42	;'*'
	retlw	42	;'*'
	retlw	0
psect	strings
	
STR_3:	
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	61	;'='
	retlw	0
psect	strings
	
STR_4:	
	retlw	98	;'b'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	61	;'='
	retlw	0
psect	strings
	file	"solar.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_u:
       ds      3

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	?_adc_to_volt
?_adc_to_volt:	; 0 bytes @ 0x0
	global	?_PWM1_Stop
?_PWM1_Stop:	; 0 bytes @ 0x0
	global	??_PWM1_Stop
??_PWM1_Stop:	; 0 bytes @ 0x0
	global	?_PWM1_Start
?_PWM1_Start:	; 0 bytes @ 0x0
	global	??_PWM1_Start
??_PWM1_Start:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	delay@d
delay@d:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	delay@h
delay@h:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	delay@k
delay@k:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
	global	?_lcdcmd
?_lcdcmd:	; 0 bytes @ 0x6
	global	?_lcddata
?_lcddata:	; 0 bytes @ 0x6
	global	?_ADC_Read
?_ADC_Read:	; 2 bytes @ 0x6
	global	lcdcmd@value
lcdcmd@value:	; 2 bytes @ 0x6
	global	lcddata@value
lcddata@value:	; 2 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x8
	global	??_display
??_display:	; 0 bytes @ 0x8
	global	??_ADC_Read
??_ADC_Read:	; 0 bytes @ 0x8
	global	??_adc_to_volt
??_adc_to_volt:	; 0 bytes @ 0x8
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x8
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x8
	ds	1
	global	??_PWM1_Init
??_PWM1_Init:	; 0 bytes @ 0x9
	global	??___fttol
??___fttol:	; 0 bytes @ 0x9
	ds	1
	global	display@p
display@p:	; 1 bytes @ 0xA
	global	ADC_Read@channel
ADC_Read@channel:	; 1 bytes @ 0xA
	ds	3
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	adc_to_volt@ad_value
adc_to_volt@ad_value:	; 1 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	global	adc_to_volt@volt2
adc_to_volt@volt2:	; 2 bytes @ 0x1
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	1
	global	adc_to_volt@voltage
adc_to_volt@voltage:	; 2 bytes @ 0x3
	ds	3
	global	?_PWM1_Init
?_PWM1_Init:	; 2 bytes @ 0x6
	global	?___fttol
?___fttol:	; 4 bytes @ 0x6
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x6
	global	PWM1_Init@fre
PWM1_Init@fre:	; 4 bytes @ 0x6
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xA
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xB
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xF
	ds	1
	global	?_PWM_Max_Duty
?_PWM_Max_Duty:	; 2 bytes @ 0x10
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x10
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x10
	ds	2
	global	??_PWM_Max_Duty
??_PWM_Max_Duty:	; 0 bytes @ 0x12
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x13
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x13
	ds	3
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x16
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x19
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x19
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1D
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1E
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x21
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x22
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x23
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x23
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x26
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x29
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2D
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2E
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x31
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x32
	ds	1
	global	?_PWM1_Duty
?_PWM1_Duty:	; 2 bytes @ 0x33
	global	PWM1_Duty@duty
PWM1_Duty@duty:	; 2 bytes @ 0x33
	ds	2
	global	??_PWM1_Duty
??_PWM1_Duty:	; 0 bytes @ 0x35
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x37
	ds	1
	global	main@battery
main@battery:	; 1 bytes @ 0x38
	ds	1
	global	main@panel
main@panel:	; 1 bytes @ 0x39
	ds	1
;;Data sizes: Strings 104, constant 0, data 0, bss 3, persistent 4 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     58      65
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?_PWM_Max_Duty	int  size(1) Largest target is 4
;;		 -> freq(BANK0[4]), 
;;
;; ?___aldiv	long  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?_ADC_Read	unsigned int  size(1) Largest target is 0
;;
;; display@p	PTR unsigned char  size(1) Largest target is 17
;;		 -> STR_7(CODE[17]), STR_6(CODE[17]), STR_5(CODE[16]), STR_4(CODE[10]), 
;;		 -> STR_3(CODE[10]), STR_2(CODE[17]), STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _PWM1_Duty->___lwtoft
;;   _PWM1_Duty->___awtoft
;;   _adc_to_volt->___lwdiv
;;   _adc_to_volt->_lcdcmd
;;   _adc_to_volt->_lcddata
;;   _display->_lcddata
;;   ___lwtoft->___fttol
;;   ___awtoft->___fttol
;;   ___ftmul->___lwtoft
;;   ___ftmul->___awtoft
;;   ___ftdiv->___lwtoft
;;   _PWM_Max_Duty->___fttol
;;   _lcddata->_delay
;;   _ADC_Read->_delay
;;   _lcdcmd->_delay
;;   _PWM1_Init->___aldiv
;;   ___fttol->___aldiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_PWM1_Duty
;;   _PWM1_Duty->___ftmul
;;   ___lwtoft->___fttol
;;   ___awtoft->_PWM_Max_Duty
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___lwtoft
;;   _PWM_Max_Duty->___fttol
;;   _PWM1_Init->___aldiv
;;   ___fttol->___aldiv
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    4496
;;                                             55 BANK0      3     3      0
;;                           _ADC_Init
;;                          _PWM1_Init
;;                             _lcdcmd
;;                              _delay
;;                            _display
;;                           _ADC_Read
;;                        _adc_to_volt
;;                            _lcddata
;;                          _PWM1_Stop
;;                         _PWM1_Start
;;                          _PWM1_Duty
;; ---------------------------------------------------------------------------------
;; (1) _PWM1_Duty                                            4     2      2    2196
;;                                             51 BANK0      4     2      2
;;                           ___lwtoft
;;                            ___ftdiv
;;                       _PWM_Max_Duty
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (1) _adc_to_volt                                          7     7      0    1005
;;                                              8 COMMON     2     2      0
;;                                              0 BANK0      5     5      0
;;                             ___wmul
;;                            ___lwdiv
;;                             _lcdcmd
;;                              _delay
;;                            _lcddata
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _display                                              3     3      0     251
;;                                              8 COMMON     3     3      0
;;                            _lcddata
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___lwtoft                                             4     1      3     231
;;                                             13 COMMON     1     1      0
;;                                             16 BANK0      3     0      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                             13 COMMON     1     1      0
;;                                             22 BANK0      5     2      3
;;                           ___ftpack
;;                       _PWM_Max_Duty (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             35 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___lwtoft (ARG)
;;                           ___awtoft (ARG)
;;                       _PWM_Max_Duty (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     489
;;                                             19 BANK0     16    10      6
;;                           ___ftpack
;;                           ___lwtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _PWM_Max_Duty                                         6     4      2     300
;;                                             16 BANK0      6     4      2
;;                            ___aldiv
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _lcddata                                              2     0      2     114
;;                                              6 COMMON     2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Read                                             5     3      2     136
;;                                              6 COMMON     5     3      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcdcmd                                               2     0      2     114
;;                                              6 COMMON     2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _PWM1_Init                                            8     4      4     322
;;                                              9 COMMON     4     4      0
;;                                              6 BANK0      4     0      4
;;                            ___aldiv
;; ---------------------------------------------------------------------------------
;; (3) ___aldiv                                             15     7      8     300
;;                                              0 COMMON     9     1      8
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     252
;;                                              9 COMMON     4     4      0
;;                                              6 BANK0     10     6      4
;;                           ___ftpack (ARG)
;;                            ___aldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _PWM1_Start                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _PWM1_Stop                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                6     4      2      92
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _ADC_Init
;;   _PWM1_Init
;;     ___aldiv
;;   _lcdcmd
;;     _delay
;;   _delay
;;   _display
;;     _lcddata
;;       _delay
;;     _delay
;;   _ADC_Read
;;     _delay
;;   _adc_to_volt
;;     ___wmul
;;     ___lwdiv
;;     _lcdcmd
;;       _delay
;;     _delay
;;     _lcddata
;;       _delay
;;     ___lwmod
;;   _lcddata
;;     _delay
;;   _PWM1_Stop
;;   _PWM1_Start
;;   _PWM1_Duty
;;     ___lwtoft
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___ftdiv
;;       ___ftpack
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _PWM_Max_Duty
;;       ___aldiv
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___awtoft
;;       ___ftpack
;;       _PWM_Max_Duty (ARG)
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         _PWM_Max_Duty (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _PWM_Max_Duty (ARG)
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___aldiv (ARG)
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
;;ABS                  0      0      4F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3A      41       5       81.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      52      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  panel           1   57[BANK0 ] unsigned char 
;;  battery         1   56[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Init
;;		_PWM1_Init
;;		_lcdcmd
;;		_delay
;;		_display
;;		_ADC_Read
;;		_adc_to_volt
;;		_lcddata
;;		_PWM1_Stop
;;		_PWM1_Start
;;		_PWM1_Duty
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\solar charge\solar charge.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	32
	
l3657:	
;solar charge.c: 31: unsigned char panel,battery;
;solar charge.c: 32: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	33
	
l3659:	
;solar charge.c: 33: TRISD=0x0F;
	movlw	(0Fh)
	movwf	(136)^080h	;volatile
	line	34
	
l3661:	
;solar charge.c: 34: TRISC=0X00;
	clrf	(135)^080h	;volatile
	line	35
	
l3663:	
;solar charge.c: 35: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	36
	
l3665:	
;solar charge.c: 36: ADC_Init();
	fcall	_ADC_Init
	line	37
	
l3667:	
;solar charge.c: 37: PWM1_Init(5000);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM1_Init+3)
	movlw	0
	movwf	(?_PWM1_Init+2)
	movlw	013h
	movwf	(?_PWM1_Init+1)
	movlw	088h
	movwf	(?_PWM1_Init)

	fcall	_PWM1_Init
	line	38
	
l3669:	
;solar charge.c: 38: lcdcmd(0x38);
	movlw	low(038h)
	movwf	(?_lcdcmd)
	movlw	high(038h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	39
	
l3671:	
;solar charge.c: 39: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	40
	
l3673:	
;solar charge.c: 40: lcdcmd(0x0C);
	movlw	low(0Ch)
	movwf	(?_lcdcmd)
	movlw	high(0Ch)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	41
	
l3675:	
;solar charge.c: 41: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	42
	
l3677:	
;solar charge.c: 42: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	43
	
l3679:	
;solar charge.c: 43: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	44
	
l3681:	
;solar charge.c: 44: lcdcmd(0x01);
	movlw	low(01h)
	movwf	(?_lcdcmd)
	movlw	high(01h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	45
	
l3683:	
;solar charge.c: 45: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	46
	
l3685:	
;solar charge.c: 46: display("  SOLAR CHARGE  ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_display
	line	48
	
l3687:	
;solar charge.c: 48: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	49
	
l3689:	
;solar charge.c: 49: lcdcmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	50
	
l3691:	
;solar charge.c: 50: display("   CONTROLLER   ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_display
	line	51
	
l3693:	
;solar charge.c: 51: delay(1500);
	movlw	low(05DCh)
	movwf	(?_delay)
	movlw	high(05DCh)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3695
	line	53
;solar charge.c: 53: while(1)
	
l711:	
	line	57
	
l3695:	
;solar charge.c: 54: {
;solar charge.c: 57: panel =ADC_Read(0);
	movlw	(0)
	fcall	_ADC_Read
	movf	(0+(?_ADC_Read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@panel)
	line	58
	
l3697:	
;solar charge.c: 58: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	59
	
l3699:	
;solar charge.c: 59: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	60
	
l3701:	
;solar charge.c: 60: display("panel   =");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_display
	line	61
	
l3703:	
;solar charge.c: 61: adc_to_volt(panel);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@panel),w
	fcall	_adc_to_volt
	line	62
	
l3705:	
;solar charge.c: 62: lcddata('V');
	movlw	low(056h)
	movwf	(?_lcddata)
	movlw	high(056h)
	movwf	((?_lcddata))+1
	fcall	_lcddata
	line	64
	
l3707:	
;solar charge.c: 64: PWM1_Stop();
	fcall	_PWM1_Stop
	line	65
	
l3709:	
;solar charge.c: 65: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	66
	
l3711:	
;solar charge.c: 66: delay(2500);
	movlw	low(09C4h)
	movwf	(?_delay)
	movlw	high(09C4h)
	movwf	((?_delay))+1
	fcall	_delay
	line	67
	
l3713:	
;solar charge.c: 67: battery =ADC_Read(1);
	movlw	(01h)
	fcall	_ADC_Read
	movf	(0+(?_ADC_Read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@battery)
	line	68
	
l3715:	
;solar charge.c: 68: lcdcmd(0x80);
	movlw	low(080h)
	movwf	(?_lcdcmd)
	movlw	high(080h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	69
	
l3717:	
;solar charge.c: 69: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	70
	
l3719:	
;solar charge.c: 70: display("battery =");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_display
	line	71
	
l3721:	
;solar charge.c: 71: adc_to_volt(battery);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@battery),w
	fcall	_adc_to_volt
	line	72
	
l3723:	
;solar charge.c: 72: lcddata('V');
	movlw	low(056h)
	movwf	(?_lcddata)
	movlw	high(056h)
	movwf	((?_lcddata))+1
	fcall	_lcddata
	line	74
	
l3725:	
;solar charge.c: 74: if(battery<=100)
	movlw	(065h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@battery),w
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l3735
u3620:
	line	76
	
l3727:	
;solar charge.c: 75: {
;solar charge.c: 76: lcdcmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	77
;solar charge.c: 77: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	78
	
l3729:	
;solar charge.c: 78: display("**Battery low**");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_display
	line	79
	
l3731:	
;solar charge.c: 79: PWM1_Start();
	fcall	_PWM1_Start
	line	80
	
l3733:	
;solar charge.c: 80: RC4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	goto	l3735
	line	81
	
l712:	
	line	82
	
l3735:	
;solar charge.c: 81: }
;solar charge.c: 82: if(battery>100 && battery<135 )
	movlw	(065h)
	subwf	(main@battery),w
	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l3747
u3630:
	
l3737:	
	movlw	(087h)
	subwf	(main@battery),w
	skipnc
	goto	u3641
	goto	u3640
u3641:
	goto	l3747
u3640:
	line	84
	
l3739:	
;solar charge.c: 83: {
;solar charge.c: 84: lcdcmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	85
;solar charge.c: 85: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	86
	
l3741:	
;solar charge.c: 86: display("                ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_display
	line	87
	
l3743:	
;solar charge.c: 87: PWM1_Start();
	fcall	_PWM1_Start
	line	88
	
l3745:	
;solar charge.c: 88: RC4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	goto	l3747
	line	89
	
l713:	
	line	91
	
l3747:	
;solar charge.c: 89: }
;solar charge.c: 91: if(battery>=135 )
	movlw	(087h)
	subwf	(main@battery),w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l3759
u3650:
	line	93
	
l3749:	
;solar charge.c: 92: {
;solar charge.c: 93: lcdcmd(0xC0);
	movlw	low(0C0h)
	movwf	(?_lcdcmd)
	movlw	high(0C0h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	94
;solar charge.c: 94: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	95
	
l3751:	
;solar charge.c: 95: display("  battery full  ");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_display
	line	96
	
l3753:	
;solar charge.c: 96: PWM1_Stop();
	fcall	_PWM1_Stop
	line	97
	
l3755:	
;solar charge.c: 97: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	98
	
l3757:	
;solar charge.c: 98: RC4=1;
	bsf	(60/8),(60)&7
	goto	l3759
	line	99
	
l714:	
	line	105
	
l3759:	
;solar charge.c: 99: }
;solar charge.c: 105: if(panel<130)
	movlw	(082h)
	subwf	(main@panel),w
	skipnc
	goto	u3661
	goto	u3660
u3661:
	goto	l3763
u3660:
	line	107
	
l3761:	
;solar charge.c: 106: {
;solar charge.c: 107: PWM1_Duty(1022);
	movlw	low(03FEh)
	movwf	(?_PWM1_Duty)
	movlw	high(03FEh)
	movwf	((?_PWM1_Duty))+1
	fcall	_PWM1_Duty
	goto	l3763
	line	108
	
l715:	
	line	109
	
l3763:	
;solar charge.c: 108: }
;solar charge.c: 109: if(panel<145 && panel>=130)
	movlw	(091h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@panel),w
	skipnc
	goto	u3671
	goto	u3670
u3671:
	goto	l3769
u3670:
	
l3765:	
	movlw	(082h)
	subwf	(main@panel),w
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l3769
u3680:
	line	111
	
l3767:	
;solar charge.c: 110: {
;solar charge.c: 111: PWM1_Duty(950);
	movlw	low(03B6h)
	movwf	(?_PWM1_Duty)
	movlw	high(03B6h)
	movwf	((?_PWM1_Duty))+1
	fcall	_PWM1_Duty
	goto	l3769
	line	112
	
l716:	
	line	113
	
l3769:	
;solar charge.c: 112: }
;solar charge.c: 113: if(panel<180 && panel>=145)
	movlw	(0B4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@panel),w
	skipnc
	goto	u3691
	goto	u3690
u3691:
	goto	l717
u3690:
	
l3771:	
	movlw	(091h)
	subwf	(main@panel),w
	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l717
u3700:
	line	115
	
l3773:	
;solar charge.c: 114: {
;solar charge.c: 115: PWM1_Duty(800);
	movlw	low(0320h)
	movwf	(?_PWM1_Duty)
	movlw	high(0320h)
	movwf	((?_PWM1_Duty))+1
	fcall	_PWM1_Duty
	line	116
	
l717:	
	line	117
;solar charge.c: 116: }
;solar charge.c: 117: delay(2500);
	movlw	low(09C4h)
	movwf	(?_delay)
	movlw	high(09C4h)
	movwf	((?_delay))+1
	fcall	_delay
	line	118
	
l3775:	
;solar charge.c: 118: if(panel>180 )
	movlw	(0B5h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@panel),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l718
u3710:
	line	120
	
l3777:	
;solar charge.c: 119: {
;solar charge.c: 120: PWM1_Duty(600);
	movlw	low(0258h)
	movwf	(?_PWM1_Duty)
	movlw	high(0258h)
	movwf	((?_PWM1_Duty))+1
	fcall	_PWM1_Duty
	line	121
	
l718:	
	line	122
;solar charge.c: 121: }
;solar charge.c: 122: delay(2500);
	movlw	low(09C4h)
	movwf	(?_delay)
	movlw	high(09C4h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3695
	line	123
	
l719:	
	line	53
	goto	l3695
	
l720:	
	line	125
	
l721:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_PWM1_Duty
psect	text519,local,class=CODE,delta=2
global __ptext519
__ptext519:

;; *************** function _PWM1_Duty *****************
;; Defined at:
;;		line 239 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;  duty            2   51[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   51[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwtoft
;;		___ftdiv
;;		_PWM_Max_Duty
;;		___awtoft
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text519
	file	"F:\pic projects\solar charge\solar charge.c"
	line	239
	global	__size_of_PWM1_Duty
	__size_of_PWM1_Duty	equ	__end_of_PWM1_Duty-_PWM1_Duty
	
_PWM1_Duty:	
	opt	stack 5
; Regs used in _PWM1_Duty: [wreg+status,2+status,0+pclath+cstack]
	line	240
	
l3647:	
;solar charge.c: 240: if(duty<1024)
	movlw	high(0400h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(PWM1_Duty@duty+1),w
	movlw	low(0400h)
	skipnz
	subwf	(PWM1_Duty@duty),w
	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l764
u3580:
	line	242
	
l3649:	
;solar charge.c: 241: {
;solar charge.c: 242: duty = ((float)duty/1023)*PWM_Max_Duty();
	movf	(PWM1_Duty@duty+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(PWM1_Duty@duty),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftdiv)+03h
	movlw	0xc0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	_PWM_Max_Duty
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_PWM_Max_Duty)),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(0+(?_PWM_Max_Duty)),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(PWM1_Duty@duty+1)
	addwf	(PWM1_Duty@duty+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(PWM1_Duty@duty)
	addwf	(PWM1_Duty@duty)

	line	243
	
l3651:	
;solar charge.c: 243: CCP1X = duty & 2;
	bcf	(189/8),(189)&7
	line	244
	
l3653:	
;solar charge.c: 244: CCP1Y = duty & 1;
	btfsc	(PWM1_Duty@duty),0
	goto	u3591
	goto	u3590
	
u3591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(188/8),(188)&7
	goto	u3604
u3590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(188/8),(188)&7
u3604:
	line	245
	
l3655:	
;solar charge.c: 245: CCPR1L = duty>>2;
	movf	(PWM1_Duty@duty+1),w
	movwf	(??_PWM1_Duty+0)+0+1
	movf	(PWM1_Duty@duty),w
	movwf	(??_PWM1_Duty+0)+0
	movlw	02h
u3615:
	clrc
	rrf	(??_PWM1_Duty+0)+1,f
	rrf	(??_PWM1_Duty+0)+0,f
	addlw	-1
	skipz
	goto	u3615
	movf	0+(??_PWM1_Duty+0)+0,w
	movwf	(21)	;volatile
	goto	l764
	line	246
	
l763:	
	line	247
	
l764:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_Duty
	__end_of_PWM1_Duty:
;; =============== function _PWM1_Duty ends ============

	signat	_PWM1_Duty,4218
	global	_adc_to_volt
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:

;; *************** function _adc_to_volt *****************
;; Defined at:
;;		line 199 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;  ad_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ad_value        1    0[BANK0 ] unsigned char 
;;  voltage         2    3[BANK0 ] unsigned int 
;;  volt2           2    1[BANK0 ] unsigned int 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       5       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___wmul
;;		___lwdiv
;;		_lcdcmd
;;		_delay
;;		_lcddata
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text520
	file	"F:\pic projects\solar charge\solar charge.c"
	line	199
	global	__size_of_adc_to_volt
	__size_of_adc_to_volt	equ	__end_of_adc_to_volt-_adc_to_volt
	
_adc_to_volt:	
	opt	stack 5
; Regs used in _adc_to_volt: [wreg+status,2+status,0+pclath+cstack]
;adc_to_volt@ad_value stored from wreg
	line	201
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(adc_to_volt@ad_value)
	
l3645:	
;solar charge.c: 200: unsigned int voltage,volt2;
;solar charge.c: 201: voltage = ad_value * 60;
	movf	(adc_to_volt@ad_value),w
	movwf	(??_adc_to_volt+0)+0
	clrf	(??_adc_to_volt+0)+0+1
	movf	0+(??_adc_to_volt+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_adc_to_volt+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(03Ch)
	movwf	0+(?___wmul)+02h
	movlw	high(03Ch)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc_to_volt@voltage+1)
	addwf	(adc_to_volt@voltage+1)
	movf	(0+(?___wmul)),w
	clrf	(adc_to_volt@voltage)
	addwf	(adc_to_volt@voltage)

	line	202
;solar charge.c: 202: volt2 =voltage/10000;
	movlw	low(02710h)
	movwf	(?___lwdiv)
	movlw	high(02710h)
	movwf	((?___lwdiv))+1
	movf	(adc_to_volt@voltage+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(adc_to_volt@voltage),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc_to_volt@volt2+1)
	addwf	(adc_to_volt@volt2+1)
	movf	(0+(?___lwdiv)),w
	clrf	(adc_to_volt@volt2)
	addwf	(adc_to_volt@volt2)

	line	203
;solar charge.c: 203: lcdcmd(0x89);
	movlw	low(089h)
	movwf	(?_lcdcmd)
	movlw	high(089h)
	movwf	((?_lcdcmd))+1
	fcall	_lcdcmd
	line	204
;solar charge.c: 204: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	205
;solar charge.c: 205: lcddata(volt2+0x30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc_to_volt@volt2),w
	addlw	low(030h)
	movwf	(?_lcddata)
	movf	(adc_to_volt@volt2+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_lcddata)
	fcall	_lcddata
	line	206
;solar charge.c: 206: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	207
;solar charge.c: 207: voltage =voltage%10000;
	movlw	low(02710h)
	movwf	(?___lwmod)
	movlw	high(02710h)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc_to_volt@voltage+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(adc_to_volt@voltage),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc_to_volt@voltage+1)
	addwf	(adc_to_volt@voltage+1)
	movf	(0+(?___lwmod)),w
	clrf	(adc_to_volt@voltage)
	addwf	(adc_to_volt@voltage)

	line	208
;solar charge.c: 208: volt2 =voltage/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(adc_to_volt@voltage+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(adc_to_volt@voltage),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc_to_volt@volt2+1)
	addwf	(adc_to_volt@volt2+1)
	movf	(0+(?___lwdiv)),w
	clrf	(adc_to_volt@volt2)
	addwf	(adc_to_volt@volt2)

	line	209
;solar charge.c: 209: lcddata(volt2+0x30);
	movf	(adc_to_volt@volt2),w
	addlw	low(030h)
	movwf	(?_lcddata)
	movf	(adc_to_volt@volt2+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_lcddata)
	fcall	_lcddata
	line	210
;solar charge.c: 210: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	211
;solar charge.c: 211: lcddata('.');
	movlw	low(02Eh)
	movwf	(?_lcddata)
	movlw	high(02Eh)
	movwf	((?_lcddata))+1
	fcall	_lcddata
	line	212
;solar charge.c: 212: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	213
;solar charge.c: 213: voltage =voltage%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc_to_volt@voltage+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(adc_to_volt@voltage),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc_to_volt@voltage+1)
	addwf	(adc_to_volt@voltage+1)
	movf	(0+(?___lwmod)),w
	clrf	(adc_to_volt@voltage)
	addwf	(adc_to_volt@voltage)

	line	214
;solar charge.c: 214: volt2 =voltage/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(adc_to_volt@voltage+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(adc_to_volt@voltage),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc_to_volt@volt2+1)
	addwf	(adc_to_volt@volt2+1)
	movf	(0+(?___lwdiv)),w
	clrf	(adc_to_volt@volt2)
	addwf	(adc_to_volt@volt2)

	line	215
;solar charge.c: 215: lcddata(volt2+0x30);
	movf	(adc_to_volt@volt2),w
	addlw	low(030h)
	movwf	(?_lcddata)
	movf	(adc_to_volt@volt2+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_lcddata)
	fcall	_lcddata
	line	216
;solar charge.c: 216: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	217
;solar charge.c: 217: voltage =voltage%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc_to_volt@voltage+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(adc_to_volt@voltage),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc_to_volt@voltage+1)
	addwf	(adc_to_volt@voltage+1)
	movf	(0+(?___lwmod)),w
	clrf	(adc_to_volt@voltage)
	addwf	(adc_to_volt@voltage)

	line	218
;solar charge.c: 218: volt2 =voltage/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(adc_to_volt@voltage+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(adc_to_volt@voltage),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc_to_volt@volt2+1)
	addwf	(adc_to_volt@volt2+1)
	movf	(0+(?___lwdiv)),w
	clrf	(adc_to_volt@volt2)
	addwf	(adc_to_volt@volt2)

	line	219
;solar charge.c: 219: lcddata(volt2+0x30);
	movf	(adc_to_volt@volt2),w
	addlw	low(030h)
	movwf	(?_lcddata)
	movf	(adc_to_volt@volt2+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_lcddata)
	fcall	_lcddata
	line	220
;solar charge.c: 220: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	222
	
l754:	
	return
	opt stack 0
GLOBAL	__end_of_adc_to_volt
	__end_of_adc_to_volt:
;; =============== function _adc_to_volt ends ============

	signat	_adc_to_volt,4216
	global	_display
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

;; *************** function _display *****************
;; Defined at:
;;		line 168 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;  p               1    wreg     PTR unsigned char 
;;		 -> STR_7(17), STR_6(17), STR_5(16), STR_4(10), 
;;		 -> STR_3(10), STR_2(17), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  p               1   10[COMMON] PTR unsigned char 
;;		 -> STR_7(17), STR_6(17), STR_5(16), STR_4(10), 
;;		 -> STR_3(10), STR_2(17), STR_1(17), 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcddata
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text521
	file	"F:\pic projects\solar charge\solar charge.c"
	line	168
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;display@p stored from wreg
	movwf	(display@p)
	line	169
	
l3635:	
;solar charge.c: 169: while (*p)
	goto	l3643
	
l739:	
	line	171
	
l3637:	
;solar charge.c: 170: {
;solar charge.c: 171: lcddata(*p);
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
	line	172
	
l3639:	
;solar charge.c: 172: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	173
	
l3641:	
;solar charge.c: 173: p++;
	movlw	(01h)
	movwf	(??_display+0)+0
	movf	(??_display+0)+0,w
	addwf	(display@p),f
	goto	l3643
	line	174
	
l738:	
	line	169
	
l3643:	
	movf	(display@p),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l3637
u3570:
	goto	l741
	
l740:	
	line	176
;solar charge.c: 174: }
;solar charge.c: 175: return;
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	___lwtoft
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_Duty
;; This function uses a non-reentrant model
;;
psect	text522
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l3631:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l1676
	
l3633:	
	line	31
	
l1676:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___awtoft
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_Duty
;; This function uses a non-reentrant model
;;
psect	text523
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3623:	
	clrf	(___awtoft@sign)
	line	37
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awtoft@c+1),7
	goto	u3561
	goto	u3560
u3561:
	goto	l3627
u3560:
	line	38
	
l3625:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l3627
	line	40
	
l1589:	
	line	41
	
l3627:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l1590
	
l3629:	
	line	42
	
l1590:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   35[BANK0 ] float 
;;  f2              3   38[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   46[BANK0 ] unsigned um
;;  sign            1   50[BANK0 ] unsigned char 
;;  cntr            1   49[BANK0 ] unsigned char 
;;  exp             1   45[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   35[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_Duty
;; This function uses a non-reentrant model
;;
psect	text524
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3573:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l3579
u3420:
	line	57
	
l3575:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1552
	
l3577:	
	goto	l1552
	
l1551:	
	line	58
	
l3579:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l3585
u3430:
	line	59
	
l3581:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1552
	
l3583:	
	goto	l1552
	
l1553:	
	line	60
	
l3585:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3445:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3440:
	addlw	-1
	skipz
	goto	u3445
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3455:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3450:
	addlw	-1
	skipz
	goto	u3455
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l3587:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3589:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3591:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3593:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l3595:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3597
	line	70
	
l1554:	
	line	71
	
l3597:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l3601
u3460:
	line	72
	
l3599:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3471
	addwf	(___ftmul@f3_as_product+1),f
u3471:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3472
	addwf	(___ftmul@f3_as_product+2),f
u3472:

	goto	l3601
	
l1555:	
	line	73
	
l3601:	
	movlw	01h
u3485:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3485

	line	74
	
l3603:	
	movlw	01h
u3495:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3495
	line	75
	
l3605:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l3597
u3500:
	goto	l3607
	
l1556:	
	line	76
	
l3607:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3609
	line	77
	
l1557:	
	line	78
	
l3609:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l3613
u3510:
	line	79
	
l3611:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3521
	addwf	(___ftmul@f3_as_product+1),f
u3521:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3522
	addwf	(___ftmul@f3_as_product+2),f
u3522:

	goto	l3613
	
l1558:	
	line	80
	
l3613:	
	movlw	01h
u3535:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3535

	line	81
	
l3615:	
	movlw	01h
u3545:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3545

	line	82
	
l3617:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l3609
u3550:
	goto	l3619
	
l1559:	
	line	83
	
l3619:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1552
	
l3621:	
	line	84
	
l1552:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text525,local,class=CODE,delta=2
global __ptext525
__ptext525:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   19[BANK0 ] float 
;;  f1              3   22[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   30[BANK0 ] float 
;;  sign            1   34[BANK0 ] unsigned char 
;;  exp             1   33[BANK0 ] unsigned char 
;;  cntr            1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   19[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_Duty
;; This function uses a non-reentrant model
;;
psect	text525
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l3531:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l3537
u3340:
	line	56
	
l3533:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1542
	
l3535:	
	goto	l1542
	
l1541:	
	line	57
	
l3537:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l3543
u3350:
	line	58
	
l3539:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1542
	
l3541:	
	goto	l1542
	
l1543:	
	line	59
	
l3543:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l3545:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l3547:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3365:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3360:
	addlw	-1
	skipz
	goto	u3365
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l3549:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3375:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3370:
	addlw	-1
	skipz
	goto	u3375
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l3551:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l3553:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l3555:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l3557
	line	69
	
l1544:	
	line	70
	
l3557:	
	movlw	01h
u3385:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3385
	line	71
	
l3559:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3395
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3395
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3395:
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3565
u3390:
	line	72
	
l3561:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l3563:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l3565
	line	74
	
l1545:	
	line	75
	
l3565:	
	movlw	01h
u3405:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3405
	line	76
	
l3567:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l3557
u3410:
	goto	l3569
	
l1546:	
	line	77
	
l3569:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1542
	
l3571:	
	line	78
	
l1542:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_PWM_Max_Duty
psect	text526,local,class=CODE,delta=2
global __ptext526
__ptext526:

;; *************** function _PWM_Max_Duty *****************
;; Defined at:
;;		line 229 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_PWM1_Duty
;; This function uses a non-reentrant model
;;
psect	text526
	file	"F:\pic projects\solar charge\solar charge.c"
	line	229
	global	__size_of_PWM_Max_Duty
	__size_of_PWM_Max_Duty	equ	__end_of_PWM_Max_Duty-_PWM_Max_Duty
	
_PWM_Max_Duty:	
	opt	stack 5
; Regs used in _PWM_Max_Duty: [wreg+status,2+status,0+pclath+cstack]
	line	230
	
l3527:	
;solar charge.c: 230: return(20000000/(freq*4);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_freq),w
	movwf	(??_PWM_Max_Duty+0)+0
	movf	(_freq+1),w
	movwf	((??_PWM_Max_Duty+0)+0+1)
	movf	(_freq+2),w
	movwf	((??_PWM_Max_Duty+0)+0+2)
	movf	(_freq+3),w
	movwf	((??_PWM_Max_Duty+0)+0+3)
	movlw	02h
u3335:
	clrc
	rlf	(??_PWM_Max_Duty+0)+0,f
	rlf	(??_PWM_Max_Duty+0)+1,f
	rlf	(??_PWM_Max_Duty+0)+2,f
	rlf	(??_PWM_Max_Duty+0)+3,f
u3330:
	addlw	-1
	skipz
	goto	u3335
	movf	3+(??_PWM_Max_Duty+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_PWM_Max_Duty+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_PWM_Max_Duty+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_PWM_Max_Duty+0)+0,w
	movwf	(?___aldiv)

	movlw	01h
	movwf	3+(?___aldiv)+04h
	movlw	031h
	movwf	2+(?___aldiv)+04h
	movlw	02Dh
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_PWM_Max_Duty+1)
	addwf	(?_PWM_Max_Duty+1)
	movf	0+(((0+(?___aldiv)))),w
	clrf	(?_PWM_Max_Duty)
	addwf	(?_PWM_Max_Duty)

	goto	l757
	
l3529:	
	line	231
	
l757:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Max_Duty
	__end_of_PWM_Max_Duty:
;; =============== function _PWM_Max_Duty ends ============

	signat	_PWM_Max_Duty,90
	global	_lcddata
psect	text527,local,class=CODE,delta=2
global __ptext527
__ptext527:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 156 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;  value           2    6[COMMON] unsigned int 
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
;;		_delay
;; This function is called by:
;;		_main
;;		_display
;;		_adc_to_volt
;; This function uses a non-reentrant model
;;
psect	text527
	file	"F:\pic projects\solar charge\solar charge.c"
	line	156
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 6
; Regs used in _lcddata: [wreg+status,2+status,0+pclath+cstack]
	line	157
	
l3515:	
;solar charge.c: 157: PORTB=value;
	movf	(lcddata@value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	158
	
l3517:	
;solar charge.c: 158: RD6=1;
	bsf	(70/8),(70)&7
	line	160
	
l3519:	
;solar charge.c: 160: RD7=1;
	bsf	(71/8),(71)&7
	line	161
	
l3521:	
;solar charge.c: 161: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	162
	
l3523:	
;solar charge.c: 162: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	goto	l735
	line	163
	
l3525:	
	line	164
;solar charge.c: 163: return;
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_ADC_Read
psect	text528,local,class=CODE,delta=2
global __ptext528
__ptext528:

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 185 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text528
	file	"F:\pic projects\solar charge\solar charge.c"
	line	185
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
	opt	stack 6
; Regs used in _ADC_Read: [wreg+status,2+status,0+pclath+cstack]
;ADC_Read@channel stored from wreg
	movwf	(ADC_Read@channel)
	line	186
	
l3499:	
;solar charge.c: 186: if(channel > 7)
	movlw	(08h)
	subwf	(ADC_Read@channel),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l3505
u3300:
	line	187
	
l3501:	
;solar charge.c: 187: return 0;
	clrf	(?_ADC_Read)
	clrf	(?_ADC_Read+1)
	goto	l748
	
l3503:	
	goto	l748
	
l747:	
	line	189
	
l3505:	
;solar charge.c: 189: ADCON0 &= 0xC5;
	movlw	(0C5h)
	movwf	(??_ADC_Read+0)+0
	movf	(??_ADC_Read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	190
;solar charge.c: 190: ADCON0 |= channel<<3;
	movf	(ADC_Read@channel),w
	movwf	(??_ADC_Read+0)+0
	movlw	(03h)-1
u3315:
	clrc
	rlf	(??_ADC_Read+0)+0,f
	addlw	-1
	skipz
	goto	u3315
	clrc
	rlf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+1)+0
	movf	(??_ADC_Read+1)+0,w
	iorwf	(31),f	;volatile
	line	191
	
l3507:	
;solar charge.c: 191: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	192
	
l3509:	
;solar charge.c: 192: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	193
;solar charge.c: 193: while(GO_nDONE);
	goto	l749
	
l750:	
	
l749:	
	btfsc	(250/8),(250)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l749
u3320:
	goto	l3511
	
l751:	
	line	195
	
l3511:	
;solar charge.c: 195: return ((ADRESH);
	movf	(30),w	;volatile
	movwf	(??_ADC_Read+0)+0
	clrf	(??_ADC_Read+0)+0+1
	movf	0+(??_ADC_Read+0)+0,w
	movwf	(?_ADC_Read)
	movf	1+(??_ADC_Read+0)+0,w
	movwf	(?_ADC_Read+1)
	goto	l748
	
l3513:	
	line	196
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
;; =============== function _ADC_Read ends ============

	signat	_ADC_Read,4218
	global	_lcdcmd
psect	text529,local,class=CODE,delta=2
global __ptext529
__ptext529:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 145 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;  value           2    6[COMMON] unsigned int 
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
;;		_delay
;; This function is called by:
;;		_main
;;		_adc_to_volt
;; This function uses a non-reentrant model
;;
psect	text529
	file	"F:\pic projects\solar charge\solar charge.c"
	line	145
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 5
; Regs used in _lcdcmd: [wreg+status,2+status,0+pclath+cstack]
	line	146
	
l3487:	
;solar charge.c: 146: PORTB=value;
	movf	(lcdcmd@value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	147
	
l3489:	
;solar charge.c: 147: RD6=0;
	bcf	(70/8),(70)&7
	line	148
	
l3491:	
;solar charge.c: 148: RD7=1;
	bsf	(71/8),(71)&7
	line	149
	
l3493:	
;solar charge.c: 149: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	line	150
	
l3495:	
;solar charge.c: 150: RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
	goto	l732
	line	151
	
l3497:	
	line	152
;solar charge.c: 151: return;
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_PWM1_Init
psect	text530,local,class=CODE,delta=2
global __ptext530
__ptext530:

;; *************** function _PWM1_Init *****************
;; Defined at:
;;		line 234 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;  fre             4    6[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text530
	file	"F:\pic projects\solar charge\solar charge.c"
	line	234
	global	__size_of_PWM1_Init
	__size_of_PWM1_Init	equ	__end_of_PWM1_Init-_PWM1_Init
	
_PWM1_Init:	
	opt	stack 6
; Regs used in _PWM1_Init: [wreg+status,2+status,0+pclath+cstack]
	line	235
	
l3483:	
;solar charge.c: 235: PR2 = (20000000/(freq*4*4)) - 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_freq),w
	movwf	(??_PWM1_Init+0)+0
	movf	(_freq+1),w
	movwf	((??_PWM1_Init+0)+0+1)
	movf	(_freq+2),w
	movwf	((??_PWM1_Init+0)+0+2)
	movf	(_freq+3),w
	movwf	((??_PWM1_Init+0)+0+3)
	movlw	02h
u3285:
	clrc
	rlf	(??_PWM1_Init+0)+0,f
	rlf	(??_PWM1_Init+0)+1,f
	rlf	(??_PWM1_Init+0)+2,f
	rlf	(??_PWM1_Init+0)+3,f
u3280:
	addlw	-1
	skipz
	goto	u3285
	movlw	02h
u3295:
	clrc
	rlf	(??_PWM1_Init+0)+0,f
	rlf	(??_PWM1_Init+0)+1,f
	rlf	(??_PWM1_Init+0)+2,f
	rlf	(??_PWM1_Init+0)+3,f
u3290:
	addlw	-1
	skipz
	goto	u3295
	movf	3+(??_PWM1_Init+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_PWM1_Init+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_PWM1_Init+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_PWM1_Init+0)+0,w
	movwf	(?___aldiv)

	movlw	01h
	movwf	3+(?___aldiv)+04h
	movlw	031h
	movwf	2+(?___aldiv)+04h
	movlw	02Dh
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	0+(((0+(?___aldiv)))),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	236
	
l3485:	
;solar charge.c: 236: freq = fre;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM1_Init@fre+3),w
	movwf	(_freq+3)
	movf	(PWM1_Init@fre+2),w
	movwf	(_freq+2)
	movf	(PWM1_Init@fre+1),w
	movwf	(_freq+1)
	movf	(PWM1_Init@fre),w
	movwf	(_freq)

	line	237
	
l760:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_Init
	__end_of_PWM1_Init:
;; =============== function _PWM1_Init ends ============

	signat	_PWM1_Init,4218
	global	___aldiv
psect	text531,local,class=CODE,delta=2
global __ptext531
__ptext531:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] long 
;;  dividend        4    4[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK0 ] long 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM_Max_Duty
;;		_PWM1_Init
;; This function uses a non-reentrant model
;;
psect	text531
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 5
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l3399:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u3121
	goto	u3120
u3121:
	goto	l3405
u3120:
	line	11
	
l3401:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	
l3403:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l3405
	line	13
	
l1648:	
	line	14
	
l3405:	
	btfss	(___aldiv@dividend+3),7
	goto	u3131
	goto	u3130
u3131:
	goto	l3411
u3130:
	line	15
	
l3407:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
l3409:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l3411
	line	17
	
l1649:	
	line	18
	
l3411:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l3413:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u3141
	goto	u3140
u3141:
	goto	l3433
u3140:
	line	20
	
l3415:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l3419
	
l1652:	
	line	22
	
l3417:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u3155:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u3155
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l3419
	line	24
	
l1651:	
	line	21
	
l3419:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l3417
u3160:
	goto	l3421
	
l1653:	
	goto	l3421
	line	25
	
l1654:	
	line	26
	
l3421:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u3175:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u3175
	line	27
	
l3423:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u3185
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u3185
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u3185
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u3185:
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l3429
u3180:
	line	28
	
l3425:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	29
	
l3427:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l3429
	line	30
	
l1655:	
	line	31
	
l3429:	
	movlw	01h
u3195:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u3195

	line	32
	
l3431:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l3421
u3200:
	goto	l3433
	
l1656:	
	goto	l3433
	line	33
	
l1650:	
	line	34
	
l3433:	
	movf	(___aldiv@sign),w
	skipz
	goto	u3210
	goto	l3437
u3210:
	line	35
	
l3435:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	goto	l3437
	
l1657:	
	line	36
	
l3437:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l1658
	
l3439:	
	line	37
	
l1658:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___fttol
psect	text532,local,class=CODE,delta=2
global __ptext532
__ptext532:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   11[BANK0 ] unsigned long 
;;  exp1            1   15[BANK0 ] unsigned char 
;;  sign1           1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_Duty
;; This function uses a non-reentrant model
;;
psect	text532
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3343:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l3349
u3010:
	line	50
	
l3345:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1563
	
l3347:	
	goto	l1563
	
l1562:	
	line	51
	
l3349:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3025:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3020:
	addlw	-1
	skipz
	goto	u3025
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3351:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3353:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3355:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3357:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3359:	
	btfss	(___fttol@exp1),7
	goto	u3031
	goto	u3030
u3031:
	goto	l3369
u3030:
	line	57
	
l3361:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3041
	goto	u3040
u3041:
	goto	l3367
u3040:
	line	58
	
l3363:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1563
	
l3365:	
	goto	l1563
	
l1565:	
	goto	l3367
	line	59
	
l1566:	
	line	60
	
l3367:	
	movlw	01h
u3055:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3055

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l3367
u3060:
	goto	l3379
	
l1567:	
	line	62
	goto	l3379
	
l1564:	
	line	63
	
l3369:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l3377
u3070:
	line	64
	
l3371:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1563
	
l3373:	
	goto	l1563
	
l1569:	
	line	65
	goto	l3377
	
l1571:	
	line	66
	
l3375:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3085:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3085
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l3377
	line	68
	
l1570:	
	line	65
	
l3377:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l3375
u3090:
	goto	l3379
	
l1572:	
	goto	l3379
	line	69
	
l1568:	
	line	70
	
l3379:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3100
	goto	l3383
u3100:
	line	71
	
l3381:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l3383
	
l1573:	
	line	72
	
l3383:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1563
	
l3385:	
	line	73
	
l1563:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lwtoft
;;		___ftadd
;;		___lbtoft
;;		___abtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text533
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3307:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2900
	goto	l3311
u2900:
	
l3309:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l3317
u2910:
	goto	l3311
	
l1787:	
	line	65
	
l3311:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1788
	
l3313:	
	goto	l1788
	
l1785:	
	line	66
	goto	l3317
	
l1790:	
	line	67
	
l3315:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2925:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2925

	goto	l3317
	line	69
	
l1789:	
	line	66
	
l3317:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l3315
u2930:
	goto	l1792
	
l1791:	
	line	70
	goto	l1792
	
l1793:	
	line	71
	
l3319:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3321:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l3323:	
	movlw	01h
u2945:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2945

	line	74
	
l1792:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l3319
u2950:
	goto	l3327
	
l1794:	
	line	75
	goto	l3327
	
l1796:	
	line	76
	
l3325:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2965:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2965
	goto	l3327
	line	78
	
l1795:	
	line	75
	
l3327:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l3325
u2970:
	
l1797:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l1798
u2980:
	line	80
	
l3329:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1798:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3331:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2995:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2990:
	addlw	-1
	skipz
	goto	u2995
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3333:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3000
	goto	l1799
u3000:
	line	84
	
l3335:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1799:	
	line	85
	line	86
	
l1788:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lwmod
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc_to_volt
;; This function uses a non-reentrant model
;;
psect	text534
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3215:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2601
	goto	u2600
u2601:
	goto	l3233
u2600:
	line	9
	
l3217:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l3223
	
l1471:	
	line	11
	
l3219:	
	movlw	01h
	
u2615:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2615
	line	12
	
l3221:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3223
	line	13
	
l1470:	
	line	10
	
l3223:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l3219
u2620:
	goto	l3225
	
l1472:	
	goto	l3225
	line	14
	
l1473:	
	line	15
	
l3225:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2635
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2635:
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l3229
u2630:
	line	16
	
l3227:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3229
	
l1474:	
	line	17
	
l3229:	
	movlw	01h
	
u2645:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2645
	line	18
	
l3231:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l3225
u2650:
	goto	l3233
	
l1475:	
	goto	l3233
	line	19
	
l1469:	
	line	20
	
l3233:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1476
	
l3235:	
	line	21
	
l1476:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc_to_volt
;; This function uses a non-reentrant model
;;
psect	text535
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3189:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3191:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2531
	goto	u2530
u2531:
	goto	l3211
u2530:
	line	11
	
l3193:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l3199
	
l1461:	
	line	13
	
l3195:	
	movlw	01h
	
u2545:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2545
	line	14
	
l3197:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l3199
	line	15
	
l1460:	
	line	12
	
l3199:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l3195
u2550:
	goto	l3201
	
l1462:	
	goto	l3201
	line	16
	
l1463:	
	line	17
	
l3201:	
	movlw	01h
	
u2565:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2565
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2575
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2575:
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l3207
u2570:
	line	19
	
l3203:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3205:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3207
	line	21
	
l1464:	
	line	22
	
l3207:	
	movlw	01h
	
u2585:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2585
	line	23
	
l3209:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l3201
u2590:
	goto	l3211
	
l1465:	
	goto	l3211
	line	24
	
l1459:	
	line	25
	
l3211:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1466
	
l3213:	
	line	26
	
l1466:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text536,local,class=CODE,delta=2
global __ptext536
__ptext536:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc_to_volt
;; This function uses a non-reentrant model
;;
psect	text536
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3177:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3179
	line	6
	
l1453:	
	line	7
	
l3179:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l1454
u2490:
	line	8
	
l3181:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1454:	
	line	9
	movlw	01h
	
u2505:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2505
	line	10
	
l3183:	
	movlw	01h
	
u2515:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2515
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l3179
u2520:
	goto	l3185
	
l1455:	
	line	12
	
l3185:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1456
	
l3187:	
	line	13
	
l1456:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_PWM1_Start
psect	text537,local,class=CODE,delta=2
global __ptext537
__ptext537:

;; *************** function _PWM1_Start *****************
;; Defined at:
;;		line 250 in file "F:\pic projects\solar charge\solar charge.c"
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
psect	text537
	file	"F:\pic projects\solar charge\solar charge.c"
	line	250
	global	__size_of_PWM1_Start
	__size_of_PWM1_Start	equ	__end_of_PWM1_Start-_PWM1_Start
	
_PWM1_Start:	
	opt	stack 7
; Regs used in _PWM1_Start: []
	line	251
	
l3175:	
;solar charge.c: 251: CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(187/8),(187)&7
	line	252
;solar charge.c: 252: CCP1M2 = 1;
	bsf	(186/8),(186)&7
	line	253
;solar charge.c: 253: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	254
;solar charge.c: 254: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	255
	
l767:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_Start
	__end_of_PWM1_Start:
;; =============== function _PWM1_Start ends ============

	signat	_PWM1_Start,88
	global	_PWM1_Stop
psect	text538,local,class=CODE,delta=2
global __ptext538
__ptext538:

;; *************** function _PWM1_Stop *****************
;; Defined at:
;;		line 258 in file "F:\pic projects\solar charge\solar charge.c"
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
psect	text538
	file	"F:\pic projects\solar charge\solar charge.c"
	line	258
	global	__size_of_PWM1_Stop
	__size_of_PWM1_Stop	equ	__end_of_PWM1_Stop-_PWM1_Stop
	
_PWM1_Stop:	
	opt	stack 7
; Regs used in _PWM1_Stop: []
	line	259
	
l3173:	
;solar charge.c: 259: CCP1M3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(187/8),(187)&7
	line	260
;solar charge.c: 260: CCP1M2 = 0;
	bcf	(186/8),(186)&7
	line	261
	
l770:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_Stop
	__end_of_PWM1_Stop:
;; =============== function _PWM1_Stop ends ============

	signat	_PWM1_Stop,88
	global	_delay
psect	text539,local,class=CODE,delta=2
global __ptext539
__ptext539:

;; *************** function _delay *****************
;; Defined at:
;;		line 129 in file "F:\pic projects\solar charge\solar charge.c"
;; Parameters:    Size  Location     Type
;;  d               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  k               2    4[COMMON] unsigned int 
;;  h               2    2[COMMON] unsigned int 
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
;;		_main
;;		_lcdcmd
;;		_lcddata
;;		_display
;;		_ADC_Read
;;		_adc_to_volt
;; This function uses a non-reentrant model
;;
psect	text539
	file	"F:\pic projects\solar charge\solar charge.c"
	line	129
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	131
	
l3161:	
;solar charge.c: 130: unsigned int k,h;
;solar charge.c: 131: for(h=0;h<d;h++)
	clrf	(delay@h)
	clrf	(delay@h+1)
	goto	l724
	line	133
	
l725:	
	line	134
	
l3163:	
;solar charge.c: 133: {
;solar charge.c: 134: for(k=0;k<=250;k++)
	clrf	(delay@k)
	clrf	(delay@k+1)
	
l3165:	
	movlw	high(0FBh)
	subwf	(delay@k+1),w
	movlw	low(0FBh)
	skipnz
	subwf	(delay@k),w
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l3169
u2460:
	goto	l3171
	
l3167:	
	goto	l3171
	line	135
	
l726:	
	line	134
	
l3169:	
;solar charge.c: 135: {
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
	goto	u2471
	goto	u2470
u2471:
	goto	l3169
u2470:
	goto	l3171
	
l727:	
	line	131
	
l3171:	
	movlw	low(01h)
	addwf	(delay@h),f
	skipnc
	incf	(delay@h+1),f
	movlw	high(01h)
	addwf	(delay@h+1),f
	
l724:	
	movf	(delay@d+1),w
	subwf	(delay@h+1),w
	skipz
	goto	u2485
	movf	(delay@d),w
	subwf	(delay@h),w
u2485:
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l3163
u2480:
	goto	l729
	
l728:	
	line	139
;solar charge.c: 136: }
;solar charge.c: 137: }
;solar charge.c: 138: return;
	
l729:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_ADC_Init
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 178 in file "F:\pic projects\solar charge\solar charge.c"
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
psect	text540
	file	"F:\pic projects\solar charge\solar charge.c"
	line	178
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 7
; Regs used in _ADC_Init: [wreg]
	line	179
	
l3159:	
;solar charge.c: 179: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	180
;solar charge.c: 180: ADCON1 = 0x40;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	182
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
