opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 10920"

opt pagewidth 120

	opt pm

	processor	16F877
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
# 11 "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitLCD
	FNCALL	_main,_InitI2C
	FNCALL	_main,_Write_Byte_To_24LC64_EEPROM
	FNCALL	_main,_Read_Byte_From_24LC64_EEPROM
	FNCALL	_main,_Write_Page_To_24LC64_EEPROM
	FNCALL	_main,_Read_Bytes_From_24LC64_EEPROM
	FNCALL	_main,_WriteDataToLCD
	FNCALL	_InitLCD,_ToggleEpinOfLCD
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_WriteDataToLCD,_ToggleEpinOfLCD
	FNCALL	_WriteCommandToLCD,_ToggleEpinOfLCD
	FNCALL	_Read_Bytes_From_24LC64_EEPROM,_I2C_Start
	FNCALL	_Read_Bytes_From_24LC64_EEPROM,_I2C_ReStart
	FNCALL	_Read_Bytes_From_24LC64_EEPROM,_I2C_Write_Byte
	FNCALL	_Read_Bytes_From_24LC64_EEPROM,_I2C_Read_Byte
	FNCALL	_Read_Bytes_From_24LC64_EEPROM,_I2C_Send_ACK
	FNCALL	_Read_Bytes_From_24LC64_EEPROM,_I2C_Send_NACK
	FNCALL	_Read_Bytes_From_24LC64_EEPROM,_I2C_Stop
	FNCALL	_Write_Page_To_24LC64_EEPROM,_I2C_Start
	FNCALL	_Write_Page_To_24LC64_EEPROM,_I2C_ReStart
	FNCALL	_Write_Page_To_24LC64_EEPROM,_I2C_Write_Byte
	FNCALL	_Write_Page_To_24LC64_EEPROM,_I2C_Stop
	FNCALL	_Read_Byte_From_24LC64_EEPROM,_I2C_Start
	FNCALL	_Read_Byte_From_24LC64_EEPROM,_I2C_ReStart
	FNCALL	_Read_Byte_From_24LC64_EEPROM,_I2C_Write_Byte
	FNCALL	_Read_Byte_From_24LC64_EEPROM,_I2C_Read_Byte
	FNCALL	_Read_Byte_From_24LC64_EEPROM,_I2C_Send_NACK
	FNCALL	_Read_Byte_From_24LC64_EEPROM,_I2C_Stop
	FNCALL	_Write_Byte_To_24LC64_EEPROM,_I2C_Start
	FNCALL	_Write_Byte_To_24LC64_EEPROM,_I2C_ReStart
	FNCALL	_Write_Byte_To_24LC64_EEPROM,_I2C_Write_Byte
	FNCALL	_Write_Byte_To_24LC64_EEPROM,_I2C_Stop
	FNROOT	_main
	global	main@F1062
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\Main.c"
	line	18

;initializer for main@F1062
	retlw	053h
	retlw	061h
	retlw	065h
	retlw	065h
	global	_PORTB
_PORTB	set	6
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_SSPIF
_SSPIF	set	99
	global	_SSPADD
_SSPADD	set	147
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	file	"EEPROM_Access.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\Main.c"
main@F1062:
       ds      4

; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_InitI2C
?_InitI2C:	; 0 bytes @ 0x0
	global	??_InitI2C
??_InitI2C:	; 0 bytes @ 0x0
	global	?_I2C_Start
?_I2C_Start:	; 0 bytes @ 0x0
	global	??_I2C_Start
??_I2C_Start:	; 0 bytes @ 0x0
	global	?_I2C_ReStart
?_I2C_ReStart:	; 0 bytes @ 0x0
	global	??_I2C_ReStart
??_I2C_ReStart:	; 0 bytes @ 0x0
	global	?_I2C_Stop
?_I2C_Stop:	; 0 bytes @ 0x0
	global	??_I2C_Stop
??_I2C_Stop:	; 0 bytes @ 0x0
	global	?_I2C_Send_ACK
?_I2C_Send_ACK:	; 0 bytes @ 0x0
	global	??_I2C_Send_ACK
??_I2C_Send_ACK:	; 0 bytes @ 0x0
	global	?_I2C_Send_NACK
?_I2C_Send_NACK:	; 0 bytes @ 0x0
	global	??_I2C_Send_NACK
??_I2C_Send_NACK:	; 0 bytes @ 0x0
	global	?_I2C_Write_Byte
?_I2C_Write_Byte:	; 1 bit 
	global	??_I2C_Write_Byte
??_I2C_Write_Byte:	; 0 bytes @ 0x0
	global	??_I2C_Read_Byte
??_I2C_Read_Byte:	; 0 bytes @ 0x0
	global	?_ToggleEpinOfLCD
?_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	??_ToggleEpinOfLCD
??_ToggleEpinOfLCD:	; 0 bytes @ 0x0
	global	?_WriteCommandToLCD
?_WriteCommandToLCD:	; 0 bytes @ 0x0
	global	?_WriteDataToLCD
?_WriteDataToLCD:	; 0 bytes @ 0x0
	global	?_InitLCD
?_InitLCD:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_I2C_Read_Byte
?_I2C_Read_Byte:	; 1 bytes @ 0x0
	global	I2C_Write_Byte@Byte
I2C_Write_Byte@Byte:	; 1 bytes @ 0x0
	ds	1
	global	?_Write_Byte_To_24LC64_EEPROM
?_Write_Byte_To_24LC64_EEPROM:	; 0 bytes @ 0x1
	global	?_Write_Page_To_24LC64_EEPROM
?_Write_Page_To_24LC64_EEPROM:	; 0 bytes @ 0x1
	global	?_Read_Bytes_From_24LC64_EEPROM
?_Read_Bytes_From_24LC64_EEPROM:	; 0 bytes @ 0x1
	global	?_Read_Byte_From_24LC64_EEPROM
?_Read_Byte_From_24LC64_EEPROM:	; 1 bytes @ 0x1
	global	Write_Byte_To_24LC64_EEPROM@Address
Write_Byte_To_24LC64_EEPROM@Address:	; 2 bytes @ 0x1
	global	Read_Byte_From_24LC64_EEPROM@Address
Read_Byte_From_24LC64_EEPROM@Address:	; 2 bytes @ 0x1
	global	Write_Page_To_24LC64_EEPROM@Address
Write_Page_To_24LC64_EEPROM@Address:	; 2 bytes @ 0x1
	global	Read_Bytes_From_24LC64_EEPROM@Address
Read_Bytes_From_24LC64_EEPROM@Address:	; 2 bytes @ 0x1
	ds	1
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x2
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x2
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x2
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x2
	ds	1
	global	??_Read_Byte_From_24LC64_EEPROM
??_Read_Byte_From_24LC64_EEPROM:	; 0 bytes @ 0x3
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x3
	global	Write_Byte_To_24LC64_EEPROM@DataByte
Write_Byte_To_24LC64_EEPROM@DataByte:	; 1 bytes @ 0x3
	global	Read_Byte_From_24LC64_EEPROM@Byte
Read_Byte_From_24LC64_EEPROM@Byte:	; 1 bytes @ 0x3
	global	Write_Page_To_24LC64_EEPROM@pData
Write_Page_To_24LC64_EEPROM@pData:	; 1 bytes @ 0x3
	global	Read_Bytes_From_24LC64_EEPROM@pData
Read_Bytes_From_24LC64_EEPROM@pData:	; 1 bytes @ 0x3
	ds	1
	global	??_Write_Byte_To_24LC64_EEPROM
??_Write_Byte_To_24LC64_EEPROM:	; 0 bytes @ 0x4
	global	Write_Page_To_24LC64_EEPROM@NoOfBytes
Write_Page_To_24LC64_EEPROM@NoOfBytes:	; 1 bytes @ 0x4
	global	Read_Bytes_From_24LC64_EEPROM@NoOfBytes
Read_Bytes_From_24LC64_EEPROM@NoOfBytes:	; 2 bytes @ 0x4
	ds	1
	global	??_Write_Page_To_24LC64_EEPROM
??_Write_Page_To_24LC64_EEPROM:	; 0 bytes @ 0x5
	ds	1
	global	??_Read_Bytes_From_24LC64_EEPROM
??_Read_Bytes_From_24LC64_EEPROM:	; 0 bytes @ 0x6
	ds	1
	global	Write_Page_To_24LC64_EEPROM@i
Write_Page_To_24LC64_EEPROM@i:	; 2 bytes @ 0x7
	global	Read_Bytes_From_24LC64_EEPROM@i
Read_Bytes_From_24LC64_EEPROM@i:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@TxArray
main@TxArray:	; 4 bytes @ 0x0
	ds	4
	global	main@RxArray
main@RxArray:	; 4 bytes @ 0x4
	ds	4
	global	main@RxByte
main@RxByte:	; 1 bytes @ 0x8
	ds	1
;;Data sizes: Strings 0, constant 0, data 4, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80      9      13
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Read_Bytes_From_24LC64_EEPROM@pData	PTR unsigned char  size(1) Largest target is 4
;;		 -> main@RxArray(BANK0[4]), 
;;
;; Write_Page_To_24LC64_EEPROM@pData	PTR unsigned char  size(1) Largest target is 4
;;		 -> main@TxArray(BANK0[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Write_Page_To_24LC64_EEPROM
;;   _main->_Read_Bytes_From_24LC64_EEPROM
;;   _InitLCD->_WriteCommandToLCD
;;   _WriteDataToLCD->_ToggleEpinOfLCD
;;   _WriteCommandToLCD->_ToggleEpinOfLCD
;;   _Read_Bytes_From_24LC64_EEPROM->_I2C_Write_Byte
;;   _Write_Page_To_24LC64_EEPROM->_I2C_Write_Byte
;;   _Read_Byte_From_24LC64_EEPROM->_I2C_Write_Byte
;;   _Write_Byte_To_24LC64_EEPROM->_I2C_Write_Byte
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
;; (0) _main                                                 9     9      0     766
;;                                              0 BANK0      9     9      0
;;                            _InitLCD
;;                            _InitI2C
;;        _Write_Byte_To_24LC64_EEPROM
;;       _Read_Byte_From_24LC64_EEPROM
;;        _Write_Page_To_24LC64_EEPROM
;;      _Read_Bytes_From_24LC64_EEPROM
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              3     3      0      44
;;                                              3 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (1) _WriteDataToLCD                                       1     1      0      44
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteCommandToLCD                                    1     1      0      44
;;                                              2 COMMON     1     1      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (1) _Read_Bytes_From_24LC64_EEPROM                        8     3      5     178
;;                                              1 COMMON     8     3      5
;;                          _I2C_Start
;;                        _I2C_ReStart
;;                     _I2C_Write_Byte
;;                      _I2C_Read_Byte
;;                       _I2C_Send_ACK
;;                      _I2C_Send_NACK
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (1) _Write_Page_To_24LC64_EEPROM                          8     4      4     156
;;                                              1 COMMON     8     4      4
;;                          _I2C_Start
;;                        _I2C_ReStart
;;                     _I2C_Write_Byte
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (1) _Read_Byte_From_24LC64_EEPROM                         3     1      2      90
;;                                              1 COMMON     3     1      2
;;                          _I2C_Start
;;                        _I2C_ReStart
;;                     _I2C_Write_Byte
;;                      _I2C_Read_Byte
;;                      _I2C_Send_NACK
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (1) _Write_Byte_To_24LC64_EEPROM                          3     0      3      88
;;                                              1 COMMON     3     0      3
;;                          _I2C_Start
;;                        _I2C_ReStart
;;                     _I2C_Write_Byte
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (2) _ToggleEpinOfLCD                                      2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Read_Byte                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Write_Byte                                       1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Send_NACK                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Send_ACK                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Stop                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_ReStart                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_Start                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _InitI2C                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitLCD
;;     _ToggleEpinOfLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _InitI2C
;;   _Write_Byte_To_24LC64_EEPROM
;;     _I2C_Start
;;     _I2C_ReStart
;;     _I2C_Write_Byte
;;     _I2C_Stop
;;   _Read_Byte_From_24LC64_EEPROM
;;     _I2C_Start
;;     _I2C_ReStart
;;     _I2C_Write_Byte
;;     _I2C_Read_Byte
;;     _I2C_Send_NACK
;;     _I2C_Stop
;;   _Write_Page_To_24LC64_EEPROM
;;     _I2C_Start
;;     _I2C_ReStart
;;     _I2C_Write_Byte
;;     _I2C_Stop
;;   _Read_Bytes_From_24LC64_EEPROM
;;     _I2C_Start
;;     _I2C_ReStart
;;     _I2C_Write_Byte
;;     _I2C_Read_Byte
;;     _I2C_Send_ACK
;;     _I2C_Send_NACK
;;     _I2C_Stop
;;   _WriteDataToLCD
;;     _ToggleEpinOfLCD
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
;;DATA                 0      0      19      12        0.0%
;;ABS                  0      0      16       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      9       D       5       16.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       9       1       64.3%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RxArray         4    4[BANK0 ] unsigned char [4]
;;  TxArray         4    0[BANK0 ] unsigned char [4]
;;  RxByte          1    8[BANK0 ] unsigned char 
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
;;      Locals:         0       9       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_InitLCD
;;		_InitI2C
;;		_Write_Byte_To_24LC64_EEPROM
;;		_Read_Byte_From_24LC64_EEPROM
;;		_Write_Page_To_24LC64_EEPROM
;;		_Read_Bytes_From_24LC64_EEPROM
;;		_WriteDataToLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\Main.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	17
	
l4107:	
	line	18
	
l4109:	
;Main.c: 18: unsigned char TxArray[4] = { 'S', 'a', 'e', 'e' };
	movf	(main@F1062+3),w
	movwf	(main@TxArray+3)
	movf	(main@F1062+2),w
	movwf	(main@TxArray+2)
	movf	(main@F1062+1),w
	movwf	(main@TxArray+1)
	movf	(main@F1062),w
	movwf	(main@TxArray)

	line	19
	
l4111:	
;Main.c: 19: unsigned char RxArray[4] = { 0 };
	clrf	(main@RxArray)
	clrf	(main@RxArray+1)
	clrf	(main@RxArray+2)
	clrf	(main@RxArray+3)
	line	22
	
l4113:	
;Main.c: 22: InitLCD();
	fcall	_InitLCD
	line	25
	
l4115:	
;Main.c: 25: InitI2C();
	fcall	_InitI2C
	line	28
	
l4117:	
;Main.c: 28: Write_Byte_To_24LC64_EEPROM(0x0001, 'd');
	clrf	(?_Write_Byte_To_24LC64_EEPROM)
	incf	(?_Write_Byte_To_24LC64_EEPROM),f
	clrf	(?_Write_Byte_To_24LC64_EEPROM+1)
	movlw	(064h)
	movwf	0+(?_Write_Byte_To_24LC64_EEPROM)+02h
	fcall	_Write_Byte_To_24LC64_EEPROM
	line	30
	
l4119:	
;Main.c: 30: RxByte = Read_Byte_From_24LC64_EEPROM(0x0001);
	clrf	(?_Read_Byte_From_24LC64_EEPROM)
	incf	(?_Read_Byte_From_24LC64_EEPROM),f
	clrf	(?_Read_Byte_From_24LC64_EEPROM+1)
	fcall	_Read_Byte_From_24LC64_EEPROM
	movwf	(main@RxByte)
	line	33
	
l4121:	
;Main.c: 33: Write_Page_To_24LC64_EEPROM(0x0020, TxArray, 4);
	movlw	020h
	movwf	(?_Write_Page_To_24LC64_EEPROM)
	clrf	(?_Write_Page_To_24LC64_EEPROM+1)
	movlw	(main@TxArray)&0ffh
	movwf	0+(?_Write_Page_To_24LC64_EEPROM)+02h
	movlw	(04h)
	movwf	0+(?_Write_Page_To_24LC64_EEPROM)+03h
	fcall	_Write_Page_To_24LC64_EEPROM
	line	35
	
l4123:	
;Main.c: 35: Read_Bytes_From_24LC64_EEPROM(0x0020, RxArray, 4);
	movlw	020h
	movwf	(?_Read_Bytes_From_24LC64_EEPROM)
	clrf	(?_Read_Bytes_From_24LC64_EEPROM+1)
	movlw	(main@RxArray)&0ffh
	movwf	0+(?_Read_Bytes_From_24LC64_EEPROM)+02h
	movlw	04h
	movwf	0+(?_Read_Bytes_From_24LC64_EEPROM)+03h
	clrf	1+(?_Read_Bytes_From_24LC64_EEPROM)+03h
	fcall	_Read_Bytes_From_24LC64_EEPROM
	line	38
	
l4125:	
;Main.c: 38: WriteDataToLCD(RxArray[0]);
	movf	(main@RxArray),w
	fcall	_WriteDataToLCD
	line	39
	
l4127:	
;Main.c: 39: WriteDataToLCD(RxArray[1]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(main@RxArray)+01h,w
	fcall	_WriteDataToLCD
	line	40
	
l4129:	
;Main.c: 40: WriteDataToLCD(RxArray[2]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(main@RxArray)+02h,w
	fcall	_WriteDataToLCD
	line	41
	
l4131:	
;Main.c: 41: WriteDataToLCD(RxArray[3]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(main@RxArray)+03h,w
	fcall	_WriteDataToLCD
	line	42
	
l4133:	
;Main.c: 42: WriteDataToLCD(RxByte);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@RxByte),w
	fcall	_WriteDataToLCD
	line	46
;Main.c: 45: {
	
l2004:	
	line	44
	goto	l2004
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	47
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_InitLCD
psect	text432,local,class=CODE,delta=2
global __ptext432
__ptext432:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 42 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ToggleEpinOfLCD
;;		_WriteCommandToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text432
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\LCD.c"
	line	42
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 5
; Regs used in _InitLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l4067:	
;LCD.c: 44: RB0 = 0;
	bcf	(48/8),(48)&7
	line	45
;LCD.c: 45: RB1 = 0;
	bcf	(49/8),(49)&7
	line	46
;LCD.c: 46: RB4 = 0;
	bcf	(52/8),(52)&7
	line	47
;LCD.c: 47: RB5 = 0;
	bcf	(53/8),(53)&7
	line	48
;LCD.c: 48: RB6 = 0;
	bcf	(54/8),(54)&7
	line	49
;LCD.c: 49: RB7 = 0;
	bcf	(55/8),(55)&7
	line	50
;LCD.c: 50: TRISB0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1072/8)^080h,(1072)&7
	line	51
;LCD.c: 51: TRISB1 = 0;
	bcf	(1073/8)^080h,(1073)&7
	line	52
;LCD.c: 52: TRISB4 = 0;
	bcf	(1076/8)^080h,(1076)&7
	line	53
;LCD.c: 53: TRISB5 = 0;
	bcf	(1077/8)^080h,(1077)&7
	line	54
;LCD.c: 54: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7
	line	55
;LCD.c: 55: TRISB7 = 0;
	bcf	(1079/8)^080h,(1079)&7
	line	58
	
l4069:	
;LCD.c: 58: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_InitLCD+0)+0+2),f
movlw	4
movwf	((??_InitLCD+0)+0+1),f
	movlw	186
movwf	((??_InitLCD+0)+0),f
u297:
	decfsz	((??_InitLCD+0)+0),f
	goto	u297
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u297
	decfsz	((??_InitLCD+0)+0+2),f
	goto	u297
	clrwdt
opt asmopt_on

	line	60
	
l4071:	
;LCD.c: 60: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	61
	
l4073:	
;LCD.c: 61: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	62
	
l4075:	
;LCD.c: 62: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	64
	
l4077:	
;LCD.c: 64: _delay((unsigned long)((6)*(20000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_InitLCD+0)+0+1),f
	movlw	245
movwf	((??_InitLCD+0)+0),f
u307:
	decfsz	((??_InitLCD+0)+0),f
	goto	u307
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u307
opt asmopt_on

	line	66
	
l4079:	
;LCD.c: 66: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	67
	
l4081:	
;LCD.c: 67: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	68
;LCD.c: 68: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	70
	
l4083:	
;LCD.c: 70: _delay((unsigned long)((300)*(20000000/4000000.0)));
	opt asmopt_off
movlw	214
movwf	(??_InitLCD+0)+0,f
u317:
	nop2
	nop2
decfsz	(??_InitLCD+0)+0,f
	goto	u317
	clrwdt
opt asmopt_on

	line	72
	
l4085:	
;LCD.c: 72: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	73
	
l4087:	
;LCD.c: 73: PORTB |= 0x30;
	movlw	(030h)
	iorwf	(6),f	;volatile
	line	74
	
l4089:	
;LCD.c: 74: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	76
;LCD.c: 76: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u327:
	decfsz	((??_InitLCD+0)+0),f
	goto	u327
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u327
	nop2
opt asmopt_on

	line	78
	
l4091:	
;LCD.c: 78: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	79
	
l4093:	
;LCD.c: 79: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	line	80
	
l4095:	
;LCD.c: 80: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	82
	
l4097:	
;LCD.c: 82: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u337:
	decfsz	((??_InitLCD+0)+0),f
	goto	u337
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u337
	nop2
opt asmopt_on

	line	84
	
l4099:	
;LCD.c: 84: WriteCommandToLCD(0x28);
	movlw	(028h)
	fcall	_WriteCommandToLCD
	line	85
	
l4101:	
;LCD.c: 85: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	86
	
l4103:	
;LCD.c: 86: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	87
	
l4105:	
;LCD.c: 87: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	88
	
l1335:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_WriteDataToLCD
psect	text433,local,class=CODE,delta=2
global __ptext433
__ptext433:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 28 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
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
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text433
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\LCD.c"
	line	28
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 6
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	29
	
l4055:	
;LCD.c: 29: RB1 = 1;
	bsf	(49/8),(49)&7
	line	31
	
l4057:	
;LCD.c: 31: PORTB &= 0x0F;
	movlw	(0Fh)
	andwf	(6),f	;volatile
	line	32
;LCD.c: 32: PORTB |= (LCDChar&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	33
	
l4059:	
;LCD.c: 33: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	35
	
l4061:	
;LCD.c: 35: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	36
	
l4063:	
;LCD.c: 36: PORTB |= ((LCDChar<<4)&0xF0);
	swapf	(WriteDataToLCD@LCDChar),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	37
	
l4065:	
;LCD.c: 37: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	38
	
l1332:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	_WriteCommandToLCD
psect	text434,local,class=CODE,delta=2
global __ptext434
__ptext434:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 14 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text434
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\LCD.c"
	line	14
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 5
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	15
	
l4043:	
;LCD.c: 15: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	17
	
l4045:	
;LCD.c: 17: PORTB &= 0x0F;
	movlw	(0Fh)
	andwf	(6),f	;volatile
	line	18
;LCD.c: 18: PORTB |= (Command&0xF0);
	movf	(WriteCommandToLCD@Command),w
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	19
	
l4047:	
;LCD.c: 19: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	21
	
l4049:	
;LCD.c: 21: PORTB &= 0x0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	22
	
l4051:	
;LCD.c: 22: PORTB |= ((Command<<4)&0xF0);
	swapf	(WriteCommandToLCD@Command),w
	andlw	(0ffh shl 4) & 0ffh
	andlw	0F0h
	iorwf	(6),f	;volatile
	line	23
	
l4053:	
;LCD.c: 23: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	24
	
l1329:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_Read_Bytes_From_24LC64_EEPROM
psect	text435,local,class=CODE,delta=2
global __ptext435
__ptext435:

;; *************** function _Read_Bytes_From_24LC64_EEPROM *****************
;; Defined at:
;;		line 82 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\24LC64.c"
;; Parameters:    Size  Location     Type
;;  Address         2    1[COMMON] unsigned int 
;;  pData           1    3[COMMON] PTR unsigned char 
;;		 -> main@RxArray(4), 
;;  NoOfBytes       2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    7[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Start
;;		_I2C_ReStart
;;		_I2C_Write_Byte
;;		_I2C_Read_Byte
;;		_I2C_Send_ACK
;;		_I2C_Send_NACK
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text435
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\24LC64.c"
	line	82
	global	__size_of_Read_Bytes_From_24LC64_EEPROM
	__size_of_Read_Bytes_From_24LC64_EEPROM	equ	__end_of_Read_Bytes_From_24LC64_EEPROM-_Read_Bytes_From_24LC64_EEPROM
	
_Read_Bytes_From_24LC64_EEPROM:	
	opt	stack 6
; Regs used in _Read_Bytes_From_24LC64_EEPROM: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	85
	
l4017:	
;24LC64.c: 83: unsigned int i;
;24LC64.c: 85: I2C_Start();
	fcall	_I2C_Start
	line	88
;24LC64.c: 88: while(I2C_Write_Byte(0xA0 + 0) == 1)
	goto	l4021
	line	89
	
l4019:	
;24LC64.c: 89: { I2C_ReStart(); }
	fcall	_I2C_ReStart
	line	88
	
l4021:	
	movlw	(0A0h)
	fcall	_I2C_Write_Byte
	btfsc	status,0
	goto	u271
	goto	u270
u271:
	goto	l4019
u270:
	line	91
	
l4023:	
;24LC64.c: 91: I2C_Write_Byte(Address>>8);
	movf	(Read_Bytes_From_24LC64_EEPROM@Address+1),w
	fcall	_I2C_Write_Byte
	line	92
;24LC64.c: 92: I2C_Write_Byte((unsigned char)Address);
	movf	(Read_Bytes_From_24LC64_EEPROM@Address),w
	fcall	_I2C_Write_Byte
	line	93
	
l4025:	
;24LC64.c: 93: I2C_ReStart();
	fcall	_I2C_ReStart
	line	96
	
l4027:	
;24LC64.c: 96: I2C_Write_Byte(0xA0 + 1);
	movlw	(0A1h)
	fcall	_I2C_Write_Byte
	line	98
	
l4029:	
;24LC64.c: 98: pData[0] = I2C_Read_Byte();
	movf	(Read_Bytes_From_24LC64_EEPROM@pData),w
	movwf	fsr0
	fcall	_I2C_Read_Byte
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	100
	
l4031:	
;24LC64.c: 100: for(i=1;i<NoOfBytes;i++)
	clrf	(Read_Bytes_From_24LC64_EEPROM@i)
	incf	(Read_Bytes_From_24LC64_EEPROM@i),f
	clrf	(Read_Bytes_From_24LC64_EEPROM@i+1)
	goto	l4039
	line	102
	
l4033:	
;24LC64.c: 101: {
;24LC64.c: 102: I2C_Send_ACK();
	fcall	_I2C_Send_ACK
	line	103
	
l4035:	
;24LC64.c: 103: pData[i] = I2C_Read_Byte();
	movf	(Read_Bytes_From_24LC64_EEPROM@i),w
	addwf	(Read_Bytes_From_24LC64_EEPROM@pData),w
	movwf	(??_Read_Bytes_From_24LC64_EEPROM+0)+0
	movf	0+(??_Read_Bytes_From_24LC64_EEPROM+0)+0,w
	movwf	fsr0
	fcall	_I2C_Read_Byte
	movwf	indf
	line	100
	
l4037:	
	incf	(Read_Bytes_From_24LC64_EEPROM@i),f
	skipnz
	incf	(Read_Bytes_From_24LC64_EEPROM@i+1),f
	
l4039:	
	movf	(Read_Bytes_From_24LC64_EEPROM@NoOfBytes+1),w
	subwf	(Read_Bytes_From_24LC64_EEPROM@i+1),w
	skipz
	goto	u285
	movf	(Read_Bytes_From_24LC64_EEPROM@NoOfBytes),w
	subwf	(Read_Bytes_From_24LC64_EEPROM@i),w
u285:
	skipc
	goto	u281
	goto	u280
u281:
	goto	l4033
u280:
	line	106
	
l4041:	
;24LC64.c: 104: }
;24LC64.c: 106: I2C_Send_NACK();
	fcall	_I2C_Send_NACK
	line	107
;24LC64.c: 107: I2C_Stop();
	fcall	_I2C_Stop
	line	108
	
l2688:	
	return
	opt stack 0
GLOBAL	__end_of_Read_Bytes_From_24LC64_EEPROM
	__end_of_Read_Bytes_From_24LC64_EEPROM:
;; =============== function _Read_Bytes_From_24LC64_EEPROM ends ============

	signat	_Read_Bytes_From_24LC64_EEPROM,12408
	global	_Write_Page_To_24LC64_EEPROM
psect	text436,local,class=CODE,delta=2
global __ptext436
__ptext436:

;; *************** function _Write_Page_To_24LC64_EEPROM *****************
;; Defined at:
;;		line 57 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\24LC64.c"
;; Parameters:    Size  Location     Type
;;  Address         2    1[COMMON] unsigned int 
;;  pData           1    3[COMMON] PTR unsigned char 
;;		 -> main@TxArray(4), 
;;  NoOfBytes       1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2    7[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Start
;;		_I2C_ReStart
;;		_I2C_Write_Byte
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text436
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\24LC64.c"
	line	57
	global	__size_of_Write_Page_To_24LC64_EEPROM
	__size_of_Write_Page_To_24LC64_EEPROM	equ	__end_of_Write_Page_To_24LC64_EEPROM-_Write_Page_To_24LC64_EEPROM
	
_Write_Page_To_24LC64_EEPROM:	
	opt	stack 6
; Regs used in _Write_Page_To_24LC64_EEPROM: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	60
	
l3999:	
;24LC64.c: 58: unsigned int i;
;24LC64.c: 60: I2C_Start();
	fcall	_I2C_Start
	line	63
;24LC64.c: 63: while(I2C_Write_Byte(0xA0 + 0) == 1)
	goto	l4003
	line	64
	
l4001:	
;24LC64.c: 64: { I2C_ReStart(); }
	fcall	_I2C_ReStart
	line	63
	
l4003:	
	movlw	(0A0h)
	fcall	_I2C_Write_Byte
	btfsc	status,0
	goto	u251
	goto	u250
u251:
	goto	l4001
u250:
	line	66
	
l4005:	
;24LC64.c: 66: I2C_Write_Byte(Address>>8);
	movf	(Write_Page_To_24LC64_EEPROM@Address+1),w
	fcall	_I2C_Write_Byte
	line	67
;24LC64.c: 67: I2C_Write_Byte((unsigned char)Address);
	movf	(Write_Page_To_24LC64_EEPROM@Address),w
	fcall	_I2C_Write_Byte
	line	69
	
l4007:	
;24LC64.c: 69: for(i=0;i<NoOfBytes;i++)
	clrf	(Write_Page_To_24LC64_EEPROM@i)
	clrf	(Write_Page_To_24LC64_EEPROM@i+1)
	goto	l4013
	line	70
	
l4009:	
;24LC64.c: 70: I2C_Write_Byte(pData[i]);
	movf	(Write_Page_To_24LC64_EEPROM@i),w
	addwf	(Write_Page_To_24LC64_EEPROM@pData),w
	movwf	(??_Write_Page_To_24LC64_EEPROM+0)+0
	movf	0+(??_Write_Page_To_24LC64_EEPROM+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_I2C_Write_Byte
	line	69
	
l4011:	
	incf	(Write_Page_To_24LC64_EEPROM@i),f
	skipnz
	incf	(Write_Page_To_24LC64_EEPROM@i+1),f
	
l4013:	
	movf	(Write_Page_To_24LC64_EEPROM@NoOfBytes),w
	movwf	(??_Write_Page_To_24LC64_EEPROM+0)+0
	clrf	(??_Write_Page_To_24LC64_EEPROM+0)+0+1
	movf	1+(??_Write_Page_To_24LC64_EEPROM+0)+0,w
	subwf	(Write_Page_To_24LC64_EEPROM@i+1),w
	skipz
	goto	u265
	movf	0+(??_Write_Page_To_24LC64_EEPROM+0)+0,w
	subwf	(Write_Page_To_24LC64_EEPROM@i),w
u265:
	skipc
	goto	u261
	goto	u260
u261:
	goto	l4009
u260:
	line	72
	
l4015:	
;24LC64.c: 72: I2C_Stop();
	fcall	_I2C_Stop
	line	73
	
l2679:	
	return
	opt stack 0
GLOBAL	__end_of_Write_Page_To_24LC64_EEPROM
	__end_of_Write_Page_To_24LC64_EEPROM:
;; =============== function _Write_Page_To_24LC64_EEPROM ends ============

	signat	_Write_Page_To_24LC64_EEPROM,12408
	global	_Read_Byte_From_24LC64_EEPROM
psect	text437,local,class=CODE,delta=2
global __ptext437
__ptext437:

;; *************** function _Read_Byte_From_24LC64_EEPROM *****************
;; Defined at:
;;		line 27 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\24LC64.c"
;; Parameters:    Size  Location     Type
;;  Address         2    1[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  Byte            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Start
;;		_I2C_ReStart
;;		_I2C_Write_Byte
;;		_I2C_Read_Byte
;;		_I2C_Send_NACK
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text437
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\24LC64.c"
	line	27
	global	__size_of_Read_Byte_From_24LC64_EEPROM
	__size_of_Read_Byte_From_24LC64_EEPROM	equ	__end_of_Read_Byte_From_24LC64_EEPROM-_Read_Byte_From_24LC64_EEPROM
	
_Read_Byte_From_24LC64_EEPROM:	
	opt	stack 6
; Regs used in _Read_Byte_From_24LC64_EEPROM: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l3975:	
	line	30
	
l3977:	
;24LC64.c: 30: I2C_Start();
	fcall	_I2C_Start
	line	33
;24LC64.c: 33: while(I2C_Write_Byte(0xA0 + 0) == 1)
	goto	l3981
	line	34
	
l3979:	
;24LC64.c: 34: { I2C_ReStart(); }
	fcall	_I2C_ReStart
	line	33
	
l3981:	
	movlw	(0A0h)
	fcall	_I2C_Write_Byte
	btfsc	status,0
	goto	u241
	goto	u240
u241:
	goto	l3979
u240:
	line	36
	
l3983:	
;24LC64.c: 36: I2C_Write_Byte(Address>>8);
	movf	(Read_Byte_From_24LC64_EEPROM@Address+1),w
	fcall	_I2C_Write_Byte
	line	37
;24LC64.c: 37: I2C_Write_Byte((unsigned char)Address);
	movf	(Read_Byte_From_24LC64_EEPROM@Address),w
	fcall	_I2C_Write_Byte
	line	38
	
l3985:	
;24LC64.c: 38: I2C_ReStart();
	fcall	_I2C_ReStart
	line	41
	
l3987:	
;24LC64.c: 41: I2C_Write_Byte(0xA0 + 1);
	movlw	(0A1h)
	fcall	_I2C_Write_Byte
	line	43
	
l3989:	
;24LC64.c: 43: Byte = I2C_Read_Byte();
	fcall	_I2C_Read_Byte
	movwf	(Read_Byte_From_24LC64_EEPROM@Byte)
	line	45
	
l3991:	
;24LC64.c: 45: I2C_Send_NACK();
	fcall	_I2C_Send_NACK
	line	46
	
l3993:	
;24LC64.c: 46: I2C_Stop();
	fcall	_I2C_Stop
	line	48
	
l3995:	
;24LC64.c: 48: return Byte;
	movf	(Read_Byte_From_24LC64_EEPROM@Byte),w
	line	49
	
l2670:	
	return
	opt stack 0
GLOBAL	__end_of_Read_Byte_From_24LC64_EEPROM
	__end_of_Read_Byte_From_24LC64_EEPROM:
;; =============== function _Read_Byte_From_24LC64_EEPROM ends ============

	signat	_Read_Byte_From_24LC64_EEPROM,4217
	global	_Write_Byte_To_24LC64_EEPROM
psect	text438,local,class=CODE,delta=2
global __ptext438
__ptext438:

;; *************** function _Write_Byte_To_24LC64_EEPROM *****************
;; Defined at:
;;		line 9 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\24LC64.c"
;; Parameters:    Size  Location     Type
;;  Address         2    1[COMMON] unsigned int 
;;  DataByte        1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Start
;;		_I2C_ReStart
;;		_I2C_Write_Byte
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text438
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\24LC64.c"
	line	9
	global	__size_of_Write_Byte_To_24LC64_EEPROM
	__size_of_Write_Byte_To_24LC64_EEPROM	equ	__end_of_Write_Byte_To_24LC64_EEPROM-_Write_Byte_To_24LC64_EEPROM
	
_Write_Byte_To_24LC64_EEPROM:	
	opt	stack 6
; Regs used in _Write_Byte_To_24LC64_EEPROM: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l3965:	
;24LC64.c: 10: I2C_Start();
	fcall	_I2C_Start
	line	13
;24LC64.c: 13: while(I2C_Write_Byte(0xA0 + 0) == 1)
	goto	l3969
	line	14
	
l3967:	
;24LC64.c: 14: { I2C_ReStart(); }
	fcall	_I2C_ReStart
	line	13
	
l3969:	
	movlw	(0A0h)
	fcall	_I2C_Write_Byte
	btfsc	status,0
	goto	u231
	goto	u230
u231:
	goto	l3967
u230:
	line	16
	
l3971:	
;24LC64.c: 16: I2C_Write_Byte(Address>>8);
	movf	(Write_Byte_To_24LC64_EEPROM@Address+1),w
	fcall	_I2C_Write_Byte
	line	17
;24LC64.c: 17: I2C_Write_Byte((unsigned char)Address);
	movf	(Write_Byte_To_24LC64_EEPROM@Address),w
	fcall	_I2C_Write_Byte
	line	18
;24LC64.c: 18: I2C_Write_Byte(DataByte);
	movf	(Write_Byte_To_24LC64_EEPROM@DataByte),w
	fcall	_I2C_Write_Byte
	line	19
	
l3973:	
;24LC64.c: 19: I2C_Stop();
	fcall	_I2C_Stop
	line	20
	
l2664:	
	return
	opt stack 0
GLOBAL	__end_of_Write_Byte_To_24LC64_EEPROM
	__end_of_Write_Byte_To_24LC64_EEPROM:
;; =============== function _Write_Byte_To_24LC64_EEPROM ends ============

	signat	_Write_Byte_To_24LC64_EEPROM,8312
	global	_ToggleEpinOfLCD
psect	text439,local,class=CODE,delta=2
global __ptext439
__ptext439:

;; *************** function _ToggleEpinOfLCD *****************
;; Defined at:
;;		line 5 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteCommandToLCD
;;		_WriteDataToLCD
;;		_InitLCD
;; This function uses a non-reentrant model
;;
psect	text439
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\LCD.c"
	line	5
	global	__size_of_ToggleEpinOfLCD
	__size_of_ToggleEpinOfLCD	equ	__end_of_ToggleEpinOfLCD-_ToggleEpinOfLCD
	
_ToggleEpinOfLCD:	
	opt	stack 6
; Regs used in _ToggleEpinOfLCD: [wreg]
	line	6
	
l3959:	
;LCD.c: 6: RB0 = 1;
	bsf	(48/8),(48)&7
	line	7
	
l3961:	
;LCD.c: 7: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u347:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u347
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u347
	nop2
opt asmopt_on

	line	8
	
l3963:	
;LCD.c: 8: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	9
;LCD.c: 9: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u357:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u357
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u357
	nop2
opt asmopt_on

	line	10
	
l1326:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleEpinOfLCD
	__end_of_ToggleEpinOfLCD:
;; =============== function _ToggleEpinOfLCD ends ============

	signat	_ToggleEpinOfLCD,88
	global	_I2C_Read_Byte
psect	text440,local,class=CODE,delta=2
global __ptext440
__ptext440:

;; *************** function _I2C_Read_Byte *****************
;; Defined at:
;;		line 78 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_Read_Byte_From_24LC64_EEPROM
;;		_Read_Bytes_From_24LC64_EEPROM
;; This function uses a non-reentrant model
;;
psect	text440
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
	line	78
	global	__size_of_I2C_Read_Byte
	__size_of_I2C_Read_Byte	equ	__end_of_I2C_Read_Byte-_I2C_Read_Byte
	
_I2C_Read_Byte:	
	opt	stack 6
; Regs used in _I2C_Read_Byte: [wreg]
	line	79
	
l3953:	
;I2C.c: 79: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	80
;I2C.c: 80: while(!SSPIF);
	
l680:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u221
	goto	u220
u221:
	goto	l680
u220:
	
l682:	
	line	81
;I2C.c: 81: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	83
	
l3955:	
;I2C.c: 83: return SSPBUF;
	movf	(19),w	;volatile
	line	84
	
l683:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read_Byte
	__end_of_I2C_Read_Byte:
;; =============== function _I2C_Read_Byte ends ============

	signat	_I2C_Read_Byte,89
	global	_I2C_Write_Byte
psect	text441,local,class=CODE,delta=2
global __ptext441
__ptext441:

;; *************** function _I2C_Write_Byte *****************
;; Defined at:
;;		line 67 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
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
;;		_Write_Byte_To_24LC64_EEPROM
;;		_Read_Byte_From_24LC64_EEPROM
;;		_Write_Page_To_24LC64_EEPROM
;;		_Read_Bytes_From_24LC64_EEPROM
;; This function uses a non-reentrant model
;;
psect	text441
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
	line	67
	global	__size_of_I2C_Write_Byte
	__size_of_I2C_Write_Byte	equ	__end_of_I2C_Write_Byte-_I2C_Write_Byte
	
_I2C_Write_Byte:	
	opt	stack 6
; Regs used in _I2C_Write_Byte: [wreg+status,2+status,0]
;I2C_Write_Byte@Byte stored from wreg
	movwf	(I2C_Write_Byte@Byte)
	line	68
	
l3945:	
;I2C.c: 68: SSPBUF = Byte;
	movf	(I2C_Write_Byte@Byte),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	69
;I2C.c: 69: while(!SSPIF);
	
l674:	
	btfss	(99/8),(99)&7
	goto	u201
	goto	u200
u201:
	goto	l674
u200:
	
l676:	
	line	70
;I2C.c: 70: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	72
;I2C.c: 72: return ACKSTAT;
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u211
	goto	u210
u211:
	goto	l3949
u210:
	
l3947:	
	clrc
	
	goto	l677
	
l3949:	
	setc
	
	line	73
	
l677:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write_Byte
	__end_of_I2C_Write_Byte:
;; =============== function _I2C_Write_Byte ends ============

	signat	_I2C_Write_Byte,4216
	global	_I2C_Send_NACK
psect	text442,local,class=CODE,delta=2
global __ptext442
__ptext442:

;; *************** function _I2C_Send_NACK *****************
;; Defined at:
;;		line 57 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_Read_Byte_From_24LC64_EEPROM
;;		_Read_Bytes_From_24LC64_EEPROM
;; This function uses a non-reentrant model
;;
psect	text442
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
	line	57
	global	__size_of_I2C_Send_NACK
	__size_of_I2C_Send_NACK	equ	__end_of_I2C_Send_NACK-_I2C_Send_NACK
	
_I2C_Send_NACK:	
	opt	stack 6
; Regs used in _I2C_Send_NACK: []
	line	58
	
l3943:	
;I2C.c: 58: ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	59
;I2C.c: 59: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	60
;I2C.c: 60: while(!SSPIF);
	
l668:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u191
	goto	u190
u191:
	goto	l668
u190:
	
l670:	
	line	61
;I2C.c: 61: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	62
	
l671:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send_NACK
	__end_of_I2C_Send_NACK:
;; =============== function _I2C_Send_NACK ends ============

	signat	_I2C_Send_NACK,88
	global	_I2C_Send_ACK
psect	text443,local,class=CODE,delta=2
global __ptext443
__ptext443:

;; *************** function _I2C_Send_ACK *****************
;; Defined at:
;;		line 47 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_Read_Bytes_From_24LC64_EEPROM
;; This function uses a non-reentrant model
;;
psect	text443
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
	line	47
	global	__size_of_I2C_Send_ACK
	__size_of_I2C_Send_ACK	equ	__end_of_I2C_Send_ACK-_I2C_Send_ACK
	
_I2C_Send_ACK:	
	opt	stack 6
; Regs used in _I2C_Send_ACK: []
	line	48
	
l3941:	
;I2C.c: 48: ACKDT = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	49
;I2C.c: 49: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	50
;I2C.c: 50: while(!SSPIF);
	
l662:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u181
	goto	u180
u181:
	goto	l662
u180:
	
l664:	
	line	51
;I2C.c: 51: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	52
	
l665:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send_ACK
	__end_of_I2C_Send_ACK:
;; =============== function _I2C_Send_ACK ends ============

	signat	_I2C_Send_ACK,88
	global	_I2C_Stop
psect	text444,local,class=CODE,delta=2
global __ptext444
__ptext444:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 37 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_Write_Byte_To_24LC64_EEPROM
;;		_Read_Byte_From_24LC64_EEPROM
;;		_Write_Page_To_24LC64_EEPROM
;;		_Read_Bytes_From_24LC64_EEPROM
;; This function uses a non-reentrant model
;;
psect	text444
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
	line	37
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 6
; Regs used in _I2C_Stop: []
	line	38
	
l3939:	
;I2C.c: 38: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	39
;I2C.c: 39: while(!SSPIF);
	
l656:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u171
	goto	u170
u171:
	goto	l656
u170:
	
l658:	
	line	40
;I2C.c: 40: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	41
	
l659:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_ReStart
psect	text445,local,class=CODE,delta=2
global __ptext445
__ptext445:

;; *************** function _I2C_ReStart *****************
;; Defined at:
;;		line 28 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_Write_Byte_To_24LC64_EEPROM
;;		_Read_Byte_From_24LC64_EEPROM
;;		_Write_Page_To_24LC64_EEPROM
;;		_Read_Bytes_From_24LC64_EEPROM
;; This function uses a non-reentrant model
;;
psect	text445
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
	line	28
	global	__size_of_I2C_ReStart
	__size_of_I2C_ReStart	equ	__end_of_I2C_ReStart-_I2C_ReStart
	
_I2C_ReStart:	
	opt	stack 6
; Regs used in _I2C_ReStart: []
	line	29
	
l3937:	
;I2C.c: 29: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	30
;I2C.c: 30: while(!SSPIF);
	
l650:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u161
	goto	u160
u161:
	goto	l650
u160:
	
l652:	
	line	31
;I2C.c: 31: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	32
	
l653:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_ReStart
	__end_of_I2C_ReStart:
;; =============== function _I2C_ReStart ends ============

	signat	_I2C_ReStart,88
	global	_I2C_Start
psect	text446,local,class=CODE,delta=2
global __ptext446
__ptext446:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 19 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_Write_Byte_To_24LC64_EEPROM
;;		_Read_Byte_From_24LC64_EEPROM
;;		_Write_Page_To_24LC64_EEPROM
;;		_Read_Bytes_From_24LC64_EEPROM
;; This function uses a non-reentrant model
;;
psect	text446
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
	line	19
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 6
; Regs used in _I2C_Start: []
	line	20
	
l3935:	
;I2C.c: 20: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	21
;I2C.c: 21: while(!SSPIF);
	
l644:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u151
	goto	u150
u151:
	goto	l644
u150:
	
l646:	
	line	22
;I2C.c: 22: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	23
	
l647:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
	global	_InitI2C
psect	text447,local,class=CODE,delta=2
global __ptext447
__ptext447:

;; *************** function _InitI2C *****************
;; Defined at:
;;		line 7 in file "C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
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
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
psect	text447
	file	"C:\Users\Saeed\Desktop\PIC16F877 EEPROM 24LC64 Code\Code\I2C.c"
	line	7
	global	__size_of_InitI2C
	__size_of_InitI2C	equ	__end_of_InitI2C-_InitI2C
	
_InitI2C:	
	opt	stack 7
; Regs used in _InitI2C: [wreg]
	line	8
	
l3931:	
;I2C.c: 8: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	9
;I2C.c: 9: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	11
	
l3933:	
;I2C.c: 11: SSPADD = ((20000000/4000)/100) - 1;
	movlw	(031h)
	movwf	(147)^080h	;volatile
	line	12
;I2C.c: 12: SSPSTAT = 0x80;
	movlw	(080h)
	movwf	(148)^080h	;volatile
	line	13
;I2C.c: 13: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	14
	
l641:	
	return
	opt stack 0
GLOBAL	__end_of_InitI2C
	__end_of_InitI2C:
;; =============== function _InitI2C ends ============

	signat	_InitI2C,88
psect	text448,local,class=CODE,delta=2
global __ptext448
__ptext448:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
