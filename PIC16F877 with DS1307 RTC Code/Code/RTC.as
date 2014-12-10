opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

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
# 11 "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 11 "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\Main.c"
	dw 0xFFFE & 0xFFFB & 0xFFF7 & 0xFFFF & 0xFFFF & 0xFF7F & 0xFFFF & 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_InitLCD
	FNCALL	_main,_InitI2C
	FNCALL	_main,_Set_DS1307_RTC_Time
	FNCALL	_main,_Set_DS1307_RTC_Date
	FNCALL	_main,_SetTime
	FNCALL	_main,_Get_DS1307_RTC_Time
	FNCALL	_main,_DisplayTimeToLCD
	FNCALL	_main,_Get_DS1307_RTC_Date
	FNCALL	_main,_DisplayDateOnLCD
	FNCALL	_SetTime,_Get_DS1307_RTC_Time
	FNCALL	_SetTime,_WriteCommandToLCD
	FNCALL	_SetTime,_DisplayTimeToLCD
	FNCALL	_SetTime,_Set_DS1307_RTC_Time
	FNCALL	_SetTime,_WriteStringToLCD
	FNCALL	_DisplayDateOnLCD,_WriteCommandToLCD
	FNCALL	_DisplayDateOnLCD,___awdiv
	FNCALL	_DisplayDateOnLCD,_WriteDataToLCD
	FNCALL	_DisplayDateOnLCD,___awmod
	FNCALL	_DisplayDateOnLCD,_WriteStringToLCD
	FNCALL	_DisplayTimeToLCD,_ClearLCDScreen
	FNCALL	_DisplayTimeToLCD,___awdiv
	FNCALL	_DisplayTimeToLCD,_WriteDataToLCD
	FNCALL	_DisplayTimeToLCD,___awmod
	FNCALL	_DisplayTimeToLCD,_WriteStringToLCD
	FNCALL	_ClearLCDScreen,_WriteCommandToLCD
	FNCALL	_WriteStringToLCD,_WriteDataToLCD
	FNCALL	_InitLCD,_ToggleEpinOfLCD
	FNCALL	_InitLCD,_WriteCommandToLCD
	FNCALL	_WriteDataToLCD,_ToggleEpinOfLCD
	FNCALL	_WriteCommandToLCD,_ToggleEpinOfLCD
	FNCALL	_Get_DS1307_RTC_Date,_Read_Bytes_From_DS1307_RTC
	FNCALL	_Get_DS1307_RTC_Date,___bmul
	FNCALL	_Set_DS1307_RTC_Date,___awmod
	FNCALL	_Set_DS1307_RTC_Date,___awdiv
	FNCALL	_Set_DS1307_RTC_Date,_Write_Bytes_To_DS1307_RTC
	FNCALL	_Get_DS1307_RTC_Time,_Read_Bytes_From_DS1307_RTC
	FNCALL	_Get_DS1307_RTC_Time,___bmul
	FNCALL	_Set_DS1307_RTC_Time,___awmod
	FNCALL	_Set_DS1307_RTC_Time,___awdiv
	FNCALL	_Set_DS1307_RTC_Time,_Write_Bytes_To_DS1307_RTC
	FNCALL	_Read_Bytes_From_DS1307_RTC,_I2C_Start
	FNCALL	_Read_Bytes_From_DS1307_RTC,_I2C_Write_Byte
	FNCALL	_Read_Bytes_From_DS1307_RTC,_I2C_ReStart
	FNCALL	_Read_Bytes_From_DS1307_RTC,_I2C_Read_Byte
	FNCALL	_Read_Bytes_From_DS1307_RTC,_I2C_Send_ACK
	FNCALL	_Read_Bytes_From_DS1307_RTC,_I2C_Send_NACK
	FNCALL	_Read_Bytes_From_DS1307_RTC,_I2C_Stop
	FNCALL	_Write_Bytes_To_DS1307_RTC,_I2C_Start
	FNCALL	_Write_Bytes_To_DS1307_RTC,_I2C_Write_Byte
	FNCALL	_Write_Bytes_To_DS1307_RTC,_I2C_Stop
	FNROOT	_main
	global	_pRTCArray
	global	_Temp
	global	_PORTB
psect	text573,local,class=CODE,delta=2
global __ptext573
__ptext573:
_PORTB	set	6
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
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
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
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
	
STR_11:	
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	107	;'k'
	retlw	0
psect	strings
	
STR_10:	
	retlw	63	;'?'
	retlw	63	;'?'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_5:	
	retlw	87	;'W'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_4:	
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	69	;'E'
	retlw	0
psect	strings
	
STR_7:	
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	0
psect	strings
	
STR_3:	
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_9:	
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	0
psect	strings
	
STR_8:	
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	strings
	
STR_6:	
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	85	;'U'
	retlw	0
psect	strings
	
STR_1:	
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	77	;'M'
	retlw	0
psect	strings
	file	"RTC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Temp:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_pRTCArray:
       ds      4

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_I2C_Start
?_I2C_Start:	; 0 bytes @ 0x0
	global	??_I2C_Start
??_I2C_Start:	; 0 bytes @ 0x0
	global	?_I2C_Write_Byte
?_I2C_Write_Byte:	; 1 bit 
	global	??_I2C_Write_Byte
??_I2C_Write_Byte:	; 0 bytes @ 0x0
	global	?_I2C_Stop
?_I2C_Stop:	; 0 bytes @ 0x0
	global	??_I2C_Stop
??_I2C_Stop:	; 0 bytes @ 0x0
	global	?_I2C_ReStart
?_I2C_ReStart:	; 0 bytes @ 0x0
	global	??_I2C_ReStart
??_I2C_ReStart:	; 0 bytes @ 0x0
	global	??_I2C_Read_Byte
??_I2C_Read_Byte:	; 0 bytes @ 0x0
	global	?_I2C_Send_NACK
?_I2C_Send_NACK:	; 0 bytes @ 0x0
	global	??_I2C_Send_NACK
??_I2C_Send_NACK:	; 0 bytes @ 0x0
	global	?_I2C_Send_ACK
?_I2C_Send_ACK:	; 0 bytes @ 0x0
	global	??_I2C_Send_ACK
??_I2C_Send_ACK:	; 0 bytes @ 0x0
	global	?_SetTime
?_SetTime:	; 0 bytes @ 0x0
	global	?_InitI2C
?_InitI2C:	; 0 bytes @ 0x0
	global	??_InitI2C
??_InitI2C:	; 0 bytes @ 0x0
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
	global	?_WriteStringToLCD
?_WriteStringToLCD:	; 0 bytes @ 0x0
	global	?_ClearLCDScreen
?_ClearLCDScreen:	; 0 bytes @ 0x0
	global	?_DisplayTimeToLCD
?_DisplayTimeToLCD:	; 0 bytes @ 0x0
	global	?_DisplayDateOnLCD
?_DisplayDateOnLCD:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_I2C_Read_Byte
?_I2C_Read_Byte:	; 1 bytes @ 0x0
	global	?_Get_DS1307_RTC_Time
?_Get_DS1307_RTC_Time:	; 1 bytes @ 0x0
	global	?_Get_DS1307_RTC_Date
?_Get_DS1307_RTC_Date:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	I2C_Write_Byte@Byte
I2C_Write_Byte@Byte:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	?_Write_Bytes_To_DS1307_RTC
?_Write_Bytes_To_DS1307_RTC:	; 0 bytes @ 0x1
	global	?_Read_Bytes_From_DS1307_RTC
?_Read_Bytes_From_DS1307_RTC:	; 0 bytes @ 0x1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	Write_Bytes_To_DS1307_RTC@pData
Write_Bytes_To_DS1307_RTC@pData:	; 1 bytes @ 0x1
	global	Read_Bytes_From_DS1307_RTC@pData
Read_Bytes_From_DS1307_RTC@pData:	; 1 bytes @ 0x1
	ds	1
	global	??_WriteCommandToLCD
??_WriteCommandToLCD:	; 0 bytes @ 0x2
	global	??_WriteDataToLCD
??_WriteDataToLCD:	; 0 bytes @ 0x2
	global	Write_Bytes_To_DS1307_RTC@NoOfBytes
Write_Bytes_To_DS1307_RTC@NoOfBytes:	; 1 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	Read_Bytes_From_DS1307_RTC@NoOfBytes
Read_Bytes_From_DS1307_RTC@NoOfBytes:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_Write_Bytes_To_DS1307_RTC
??_Write_Bytes_To_DS1307_RTC:	; 0 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
	global	??_Read_Bytes_From_DS1307_RTC
??_Read_Bytes_From_DS1307_RTC:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	WriteCommandToLCD@Command
WriteCommandToLCD@Command:	; 1 bytes @ 0x4
	global	WriteDataToLCD@LCDChar
WriteDataToLCD@LCDChar:	; 1 bytes @ 0x4
	ds	1
	global	??_InitLCD
??_InitLCD:	; 0 bytes @ 0x5
	global	??_WriteStringToLCD
??_WriteStringToLCD:	; 0 bytes @ 0x5
	global	??_ClearLCDScreen
??_ClearLCDScreen:	; 0 bytes @ 0x5
	global	Write_Bytes_To_DS1307_RTC@Address
Write_Bytes_To_DS1307_RTC@Address:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	Read_Bytes_From_DS1307_RTC@Address
Read_Bytes_From_DS1307_RTC@Address:	; 1 bytes @ 0x6
	global	WriteStringToLCD@s
WriteStringToLCD@s:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	Write_Bytes_To_DS1307_RTC@i
Write_Bytes_To_DS1307_RTC@i:	; 2 bytes @ 0x6
	ds	1
	global	Read_Bytes_From_DS1307_RTC@i
Read_Bytes_From_DS1307_RTC@i:	; 2 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?_Set_DS1307_RTC_Time
?_Set_DS1307_RTC_Time:	; 0 bytes @ 0x9
	global	??_Get_DS1307_RTC_Time
??_Get_DS1307_RTC_Time:	; 0 bytes @ 0x9
	global	?_Set_DS1307_RTC_Date
?_Set_DS1307_RTC_Date:	; 0 bytes @ 0x9
	global	??_Get_DS1307_RTC_Date
??_Get_DS1307_RTC_Date:	; 0 bytes @ 0x9
	global	??_DisplayTimeToLCD
??_DisplayTimeToLCD:	; 0 bytes @ 0x9
	global	??_DisplayDateOnLCD
??_DisplayDateOnLCD:	; 0 bytes @ 0x9
	global	Set_DS1307_RTC_Time@Hours
Set_DS1307_RTC_Time@Hours:	; 1 bytes @ 0x9
	global	Set_DS1307_RTC_Date@Month
Set_DS1307_RTC_Date@Month:	; 1 bytes @ 0x9
	ds	1
	global	Set_DS1307_RTC_Time@Mins
Set_DS1307_RTC_Time@Mins:	; 1 bytes @ 0xA
	global	Set_DS1307_RTC_Date@Year
Set_DS1307_RTC_Date@Year:	; 1 bytes @ 0xA
	ds	1
	global	Set_DS1307_RTC_Time@Secs
Set_DS1307_RTC_Time@Secs:	; 1 bytes @ 0xB
	global	Set_DS1307_RTC_Date@Day
Set_DS1307_RTC_Date@Day:	; 1 bytes @ 0xB
	global	DisplayTimeToLCD@pTimeArray
DisplayTimeToLCD@pTimeArray:	; 1 bytes @ 0xB
	global	DisplayDateOnLCD@pDateArray
DisplayDateOnLCD@pDateArray:	; 1 bytes @ 0xB
	ds	1
	global	Set_DS1307_RTC_Time@Mode
Set_DS1307_RTC_Time@Mode:	; 1 bytes @ 0xC
	global	Set_DS1307_RTC_Date@Date
Set_DS1307_RTC_Date@Date:	; 1 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_Set_DS1307_RTC_Time
??_Set_DS1307_RTC_Time:	; 0 bytes @ 0x0
	global	??_Set_DS1307_RTC_Date
??_Set_DS1307_RTC_Date:	; 0 bytes @ 0x0
	ds	8
	global	??_SetTime
??_SetTime:	; 0 bytes @ 0x8
	ds	3
	global	SetTime@hr_set
SetTime@hr_set:	; 1 bytes @ 0xB
	ds	1
	global	SetTime@min_set
SetTime@min_set:	; 1 bytes @ 0xC
	ds	1
	global	SetTime@sec_set
SetTime@sec_set:	; 1 bytes @ 0xD
	ds	1
	global	SetTime@disply_locat
SetTime@disply_locat:	; 1 bytes @ 0xE
	ds	1
	global	SetTime@limit
SetTime@limit:	; 1 bytes @ 0xF
	ds	1
	global	SetTime@store
SetTime@store:	; 1 bytes @ 0x10
	ds	1
	global	SetTime@temp1
SetTime@temp1:	; 1 bytes @ 0x11
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x12
	ds	3
;;Data sizes: Strings 50, constant 0, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      14
;; BANK0           80     21      25
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_Get_DS1307_RTC_Date	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;
;; ?_Get_DS1307_RTC_Time	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; SetTime@temp1	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;
;; DisplayDateOnLCD@pDateArray	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;
;; DisplayTimeToLCD@pTimeArray	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;
;; WriteStringToLCD@s	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_11(CODE[12]), STR_10(CODE[4]), STR_9(CODE[4]), STR_8(CODE[4]), 
;;		 -> STR_7(CODE[4]), STR_6(CODE[4]), STR_5(CODE[4]), STR_4(CODE[4]), 
;;		 -> STR_3(CODE[4]), STR_2(CODE[3]), STR_1(CODE[3]), 
;;
;; sp__Get_DS1307_RTC_Date	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;
;; sp__Get_DS1307_RTC_Time	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;
;; Read_Bytes_From_DS1307_RTC@pData	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;
;; Write_Bytes_To_DS1307_RTC@pData	PTR unsigned char  size(1) Largest target is 4
;;		 -> pRTCArray(BANK0[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Set_DS1307_RTC_Time
;;   _main->_Set_DS1307_RTC_Date
;;   _main->_Get_DS1307_RTC_Time
;;   _main->_Get_DS1307_RTC_Date
;;   _SetTime->_Get_DS1307_RTC_Time
;;   _SetTime->_Set_DS1307_RTC_Time
;;   _DisplayDateOnLCD->___awdiv
;;   _DisplayTimeToLCD->___awdiv
;;   _ClearLCDScreen->_WriteCommandToLCD
;;   _WriteStringToLCD->_WriteDataToLCD
;;   _InitLCD->_WriteCommandToLCD
;;   _WriteDataToLCD->_ToggleEpinOfLCD
;;   _WriteCommandToLCD->_ToggleEpinOfLCD
;;   _Get_DS1307_RTC_Date->_Read_Bytes_From_DS1307_RTC
;;   _Set_DS1307_RTC_Date->___awdiv
;;   _Get_DS1307_RTC_Time->_Read_Bytes_From_DS1307_RTC
;;   _Set_DS1307_RTC_Time->___awdiv
;;   _Read_Bytes_From_DS1307_RTC->_I2C_Write_Byte
;;   _Write_Bytes_To_DS1307_RTC->_I2C_Write_Byte
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_SetTime
;;   _SetTime->_Set_DS1307_RTC_Time
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    7102
;;                                             18 BANK0      3     3      0
;;                            _InitLCD
;;                            _InitI2C
;;                _Set_DS1307_RTC_Time
;;                _Set_DS1307_RTC_Date
;;                            _SetTime
;;                _Get_DS1307_RTC_Time
;;                   _DisplayTimeToLCD
;;                _Get_DS1307_RTC_Date
;;                   _DisplayDateOnLCD
;; ---------------------------------------------------------------------------------
;; (1) _SetTime                                             10    10      0    2918
;;                                              8 BANK0     10    10      0
;;                _Get_DS1307_RTC_Time
;;                  _WriteCommandToLCD
;;                   _DisplayTimeToLCD
;;                _Set_DS1307_RTC_Time
;;                   _WriteStringToLCD
;; ---------------------------------------------------------------------------------
;; (1) _DisplayDateOnLCD                                     3     3      0     927
;;                                              9 COMMON     3     3      0
;;                  _WriteCommandToLCD
;;                            ___awdiv
;;                     _WriteDataToLCD
;;                            ___awmod
;;                   _WriteStringToLCD
;; ---------------------------------------------------------------------------------
;; (1) _DisplayTimeToLCD                                     3     3      0     927
;;                                              9 COMMON     3     3      0
;;                     _ClearLCDScreen
;;                            ___awdiv
;;                     _WriteDataToLCD
;;                            ___awmod
;;                   _WriteStringToLCD
;; ---------------------------------------------------------------------------------
;; (2) _ClearLCDScreen                                       2     2      0      44
;;                                              5 COMMON     2     2      0
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteStringToLCD                                     2     2      0      89
;;                                              5 COMMON     2     2      0
;;                     _WriteDataToLCD
;; ---------------------------------------------------------------------------------
;; (1) _InitLCD                                              3     3      0      44
;;                                              5 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;;                  _WriteCommandToLCD
;; ---------------------------------------------------------------------------------
;; (3) _WriteDataToLCD                                       3     3      0      44
;;                                              2 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteCommandToLCD                                    3     3      0      44
;;                                              2 COMMON     3     3      0
;;                    _ToggleEpinOfLCD
;; ---------------------------------------------------------------------------------
;; (1) _Get_DS1307_RTC_Date                                  4     4      0     248
;;                                              9 COMMON     4     4      0
;;         _Read_Bytes_From_DS1307_RTC
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _Set_DS1307_RTC_Date                                 12     9      3     906
;;                                              9 COMMON     4     1      3
;;                                              0 BANK0      8     8      0
;;                            ___awmod
;;                            ___awdiv
;;          _Write_Bytes_To_DS1307_RTC
;; ---------------------------------------------------------------------------------
;; (1) _Get_DS1307_RTC_Time                                  4     4      0     248
;;                                              9 COMMON     4     4      0
;;         _Read_Bytes_From_DS1307_RTC
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (2) _Set_DS1307_RTC_Time                                 12     9      3     884
;;                                              9 COMMON     4     1      3
;;                                              0 BANK0      8     8      0
;;                            ___awmod
;;                            ___awdiv
;;          _Write_Bytes_To_DS1307_RTC
;; ---------------------------------------------------------------------------------
;; (4) _ToggleEpinOfLCD                                      2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _Read_Bytes_From_DS1307_RTC                           8     5      3     156
;;                                              1 COMMON     8     5      3
;;                          _I2C_Start
;;                     _I2C_Write_Byte
;;                        _I2C_ReStart
;;                      _I2C_Read_Byte
;;                       _I2C_Send_ACK
;;                      _I2C_Send_NACK
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (3) _Write_Bytes_To_DS1307_RTC                            7     5      2     134
;;                                              1 COMMON     7     5      2
;;                          _I2C_Start
;;                     _I2C_Write_Byte
;;                           _I2C_Stop
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               4     3      1      92
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (1) _InitI2C                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Send_ACK                                         0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Send_NACK                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Read_Byte                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _I2C_ReStart                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Stop                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Write_Byte                                       1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _I2C_Start                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _InitLCD
;;     _ToggleEpinOfLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;   _InitI2C
;;   _Set_DS1307_RTC_Time
;;     ___awmod
;;     ___awdiv
;;     _Write_Bytes_To_DS1307_RTC
;;       _I2C_Start
;;       _I2C_Write_Byte
;;       _I2C_Stop
;;   _Set_DS1307_RTC_Date
;;     ___awmod
;;     ___awdiv
;;     _Write_Bytes_To_DS1307_RTC
;;       _I2C_Start
;;       _I2C_Write_Byte
;;       _I2C_Stop
;;   _SetTime
;;     _Get_DS1307_RTC_Time
;;       _Read_Bytes_From_DS1307_RTC
;;         _I2C_Start
;;         _I2C_Write_Byte
;;         _I2C_ReStart
;;         _I2C_Read_Byte
;;         _I2C_Send_ACK
;;         _I2C_Send_NACK
;;         _I2C_Stop
;;       ___bmul
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;     _DisplayTimeToLCD
;;       _ClearLCDScreen
;;         _WriteCommandToLCD
;;           _ToggleEpinOfLCD
;;       ___awdiv
;;       _WriteDataToLCD
;;         _ToggleEpinOfLCD
;;       ___awmod
;;       _WriteStringToLCD
;;         _WriteDataToLCD
;;           _ToggleEpinOfLCD
;;     _Set_DS1307_RTC_Time
;;       ___awmod
;;       ___awdiv
;;       _Write_Bytes_To_DS1307_RTC
;;         _I2C_Start
;;         _I2C_Write_Byte
;;         _I2C_Stop
;;     _WriteStringToLCD
;;       _WriteDataToLCD
;;         _ToggleEpinOfLCD
;;   _Get_DS1307_RTC_Time
;;     _Read_Bytes_From_DS1307_RTC
;;       _I2C_Start
;;       _I2C_Write_Byte
;;       _I2C_ReStart
;;       _I2C_Read_Byte
;;       _I2C_Send_ACK
;;       _I2C_Send_NACK
;;       _I2C_Stop
;;     ___bmul
;;   _DisplayTimeToLCD
;;     _ClearLCDScreen
;;       _WriteCommandToLCD
;;         _ToggleEpinOfLCD
;;     ___awdiv
;;     _WriteDataToLCD
;;       _ToggleEpinOfLCD
;;     ___awmod
;;     _WriteStringToLCD
;;       _WriteDataToLCD
;;         _ToggleEpinOfLCD
;;   _Get_DS1307_RTC_Date
;;     _Read_Bytes_From_DS1307_RTC
;;       _I2C_Start
;;       _I2C_Write_Byte
;;       _I2C_ReStart
;;       _I2C_Read_Byte
;;       _I2C_Send_ACK
;;       _I2C_Send_NACK
;;       _I2C_Stop
;;     ___bmul
;;   _DisplayDateOnLCD
;;     _WriteCommandToLCD
;;       _ToggleEpinOfLCD
;;     ___awdiv
;;     _WriteDataToLCD
;;       _ToggleEpinOfLCD
;;     ___awmod
;;     _WriteStringToLCD
;;       _WriteDataToLCD
;;         _ToggleEpinOfLCD
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      27       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     15      19       5       31.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2C      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\Main.c"
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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_InitLCD
;;		_InitI2C
;;		_Set_DS1307_RTC_Time
;;		_Set_DS1307_RTC_Date
;;		_SetTime
;;		_Get_DS1307_RTC_Time
;;		_DisplayTimeToLCD
;;		_Get_DS1307_RTC_Date
;;		_DisplayDateOnLCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\Main.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	19
	
l6741:	
;Main.c: 19: InitLCD();
	fcall	_InitLCD
	line	20
;Main.c: 20: InitI2C();
	fcall	_InitI2C
	line	23
	
l6743:	
;Main.c: 23: Set_DS1307_RTC_Time(2, 12, 59, 50);
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Set_DS1307_RTC_Time)
	movlw	(03Bh)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_Set_DS1307_RTC_Time)+01h
	movlw	(032h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	0+(?_Set_DS1307_RTC_Time)+02h
	movlw	(02h)
	fcall	_Set_DS1307_RTC_Time
	line	26
	
l6745:	
;Main.c: 26: Set_DS1307_RTC_Date(15, 12, 12, 6);
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_Set_DS1307_RTC_Date)
	movlw	(0Ch)
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	movwf	0+(?_Set_DS1307_RTC_Date)+01h
	movlw	(06h)
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	0+(?_Set_DS1307_RTC_Date)+02h
	movlw	(0Fh)
	fcall	_Set_DS1307_RTC_Date
	goto	l6747
	line	28
;Main.c: 28: while(1)
	
l2733:	
	line	31
	
l6747:	
;Main.c: 29: {
;Main.c: 31: SetTime();
	fcall	_SetTime
	line	33
	
l6749:	
;Main.c: 33: DisplayTimeToLCD(Get_DS1307_RTC_Time());
	fcall	_Get_DS1307_RTC_Time
	fcall	_DisplayTimeToLCD
	line	36
	
l6751:	
;Main.c: 36: DisplayDateOnLCD(Get_DS1307_RTC_Date());
	fcall	_Get_DS1307_RTC_Date
	fcall	_DisplayDateOnLCD
	line	38
	
l6753:	
;Main.c: 38: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	138
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u3477:
	decfsz	((??_main+0)+0),f
	goto	u3477
	decfsz	((??_main+0)+0+1),f
	goto	u3477
	decfsz	((??_main+0)+0+2),f
	goto	u3477
	nop2
opt asmopt_on

	goto	l6747
	line	39
	
l2734:	
	line	28
	goto	l6747
	
l2735:	
	line	40
	
l2736:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SetTime
psect	text574,local,class=CODE,delta=2
global __ptext574
__ptext574:

;; *************** function _SetTime *****************
;; Defined at:
;;		line 6 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\Time set.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp1           1   17[BANK0 ] PTR unsigned char 
;;		 -> pRTCArray(4), 
;;  store           1   16[BANK0 ] unsigned char 
;;  limit           1   15[BANK0 ] unsigned char 
;;  disply_locat    1   14[BANK0 ] unsigned char 
;;  sec_set         1   13[BANK0 ] unsigned char 
;;  min_set         1   12[BANK0 ] unsigned char 
;;  hr_set          1   11[BANK0 ] unsigned char 
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
;;      Locals:         0       7       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Get_DS1307_RTC_Time
;;		_WriteCommandToLCD
;;		_DisplayTimeToLCD
;;		_Set_DS1307_RTC_Time
;;		_WriteStringToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text574
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\Time set.c"
	line	6
	global	__size_of_SetTime
	__size_of_SetTime	equ	__end_of_SetTime-_SetTime
	
_SetTime:	
	opt	stack 3
; Regs used in _SetTime: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l6649:	
;Time set.c: 7: char* temp1;
;Time set.c: 8: char hr_set=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SetTime@hr_set)
	line	9
;Time set.c: 9: char min_set=0;
	clrf	(SetTime@min_set)
	line	10
;Time set.c: 10: char sec_set=0;
	clrf	(SetTime@sec_set)
	line	11
;Time set.c: 11: char store=0;
	clrf	(SetTime@store)
	line	12
;Time set.c: 12: char disply_locat=0;
	clrf	(SetTime@disply_locat)
	line	13
;Time set.c: 13: char limit=0;
	clrf	(SetTime@limit)
	line	15
;Time set.c: 15: if(RD0==0)
	btfsc	(64/8),(64)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l3422
u3280:
	goto	l3388
	line	16
	
l6651:	
;Time set.c: 16: { while(RD0==0);
	goto	l3388
	
l3389:	
	
l3388:	
	btfss	(64/8),(64)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l3388
u3290:
	goto	l6653
	
l3390:	
	line	18
	
l6653:	
;Time set.c: 18: temp1 = Get_DS1307_RTC_Time();
	fcall	_Get_DS1307_RTC_Time
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(SetTime@temp1)
	line	19
	
l6655:	
;Time set.c: 19: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	20
	
l6657:	
;Time set.c: 20: DisplayTimeToLCD(temp1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetTime@temp1),w
	fcall	_DisplayTimeToLCD
	line	21
;Time set.c: 21: WriteCommandToLCD(0x81);
	movlw	(081h)
	fcall	_WriteCommandToLCD
	line	22
;Time set.c: 22: WriteCommandToLCD(0x0e);
	movlw	(0Eh)
	fcall	_WriteCommandToLCD
	goto	l3392
	line	23
;Time set.c: 23: menustart: while(RD1==1 && RD2==1 && RD3==1);
	
l3391:	
	goto	l3392
	
l3393:	
	
l3392:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l6663
u3300:
	
l6659:	
	btfss	(66/8),(66)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l6663
u3310:
	
l6661:	
	btfsc	(67/8),(67)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l3392
u3320:
	goto	l6663
	
l3395:	
	goto	l6663
	
l3396:	
	line	24
	
l6663:	
;Time set.c: 24: if(hr_set==0)
	movf	(SetTime@hr_set),f
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l6667
u3330:
	line	26
	
l6665:	
;Time set.c: 25: {
;Time set.c: 26: store=2;
	movlw	(02h)
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(SetTime@store)
	line	27
;Time set.c: 27: disply_locat=0x81;
	movlw	(081h)
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(SetTime@disply_locat)
	line	28
;Time set.c: 28: limit=12;
	movlw	(0Ch)
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(SetTime@limit)
	line	29
;Time set.c: 29: }
	goto	l6681
	line	30
	
l3397:	
	
l6667:	
;Time set.c: 30: else if(min_set==0)
	movf	(SetTime@min_set),f
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l6675
u3340:
	line	32
	
l6669:	
;Time set.c: 31: {
;Time set.c: 32: store=1;
	clrf	(SetTime@store)
	bsf	status,0
	rlf	(SetTime@store),f
	line	33
	
l6671:	
;Time set.c: 33: disply_locat=0x84;
	movlw	(084h)
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(SetTime@disply_locat)
	line	34
	
l6673:	
;Time set.c: 34: limit=60;
	movlw	(03Ch)
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(SetTime@limit)
	line	35
;Time set.c: 35: }
	goto	l6681
	line	36
	
l3399:	
	
l6675:	
;Time set.c: 36: else if(sec_set==0)
	movf	(SetTime@sec_set),f
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l6681
u3350:
	line	38
	
l6677:	
;Time set.c: 37: {
;Time set.c: 38: store=0;
	clrf	(SetTime@store)
	line	39
	
l6679:	
;Time set.c: 39: disply_locat=0x87;
	movlw	(087h)
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(SetTime@disply_locat)
	line	40
;Time set.c: 40: limit=60;
	movlw	(03Ch)
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(SetTime@limit)
	goto	l6681
	line	41
	
l3401:	
	goto	l6681
	line	45
	
l3400:	
	goto	l6681
	
l3398:	
	
l6681:	
;Time set.c: 41: }
;Time set.c: 45: if(RD2==0)
	btfsc	(66/8),(66)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l3402
u3360:
	goto	l3403
	line	47
	
l6683:	
;Time set.c: 46: {
;Time set.c: 47: while(RD2==0);
	goto	l3403
	
l3404:	
	
l3403:	
	btfss	(66/8),(66)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l3403
u3370:
	goto	l6685
	
l3405:	
	line	48
	
l6685:	
;Time set.c: 48: temp1[store]=temp1[store]+1;
	movf	(SetTime@store),w
	addwf	(SetTime@temp1),w
	movwf	(??_SetTime+0)+0
	movf	0+(??_SetTime+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	01h
	movwf	(??_SetTime+1)+0
	movf	(SetTime@store),w
	addwf	(SetTime@temp1),w
	movwf	(??_SetTime+2)+0
	movf	0+(??_SetTime+2)+0,w
	movwf	fsr0
	movf	(??_SetTime+1)+0,w
	movwf	indf
	line	49
;Time set.c: 49: if(temp1[store]>=limit)
	movf	(SetTime@store),w
	addwf	(SetTime@temp1),w
	movwf	(??_SetTime+0)+0
	movf	0+(??_SetTime+0)+0,w
	movwf	fsr0
	movf	(SetTime@limit),w
	subwf	indf,w
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l6689
u3380:
	line	51
	
l6687:	
;Time set.c: 50: {
;Time set.c: 51: temp1[store]=0;
	movf	(SetTime@store),w
	addwf	(SetTime@temp1),w
	movwf	(??_SetTime+0)+0
	movf	0+(??_SetTime+0)+0,w
	movwf	fsr0
	clrf	indf
	goto	l6689
	line	52
	
l3406:	
	line	53
	
l6689:	
;Time set.c: 52: }
;Time set.c: 53: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	54
	
l6691:	
;Time set.c: 54: DisplayTimeToLCD(temp1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetTime@temp1),w
	fcall	_DisplayTimeToLCD
	line	55
	
l6693:	
;Time set.c: 55: WriteCommandToLCD(disply_locat);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetTime@disply_locat),w
	fcall	_WriteCommandToLCD
	line	56
	
l6695:	
;Time set.c: 56: WriteCommandToLCD(0x0e);
	movlw	(0Eh)
	fcall	_WriteCommandToLCD
	line	57
;Time set.c: 57: goto menustart;
	goto	l3392
	line	58
	
l3402:	
	line	60
;Time set.c: 58: }
;Time set.c: 60: if(RD3==0)
	btfsc	(67/8),(67)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l3407
u3390:
	goto	l3408
	line	62
	
l6697:	
;Time set.c: 61: {
;Time set.c: 62: while(RD3==0);
	goto	l3408
	
l3409:	
	
l3408:	
	btfss	(67/8),(67)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l3408
u3400:
	goto	l6699
	
l3410:	
	line	63
	
l6699:	
;Time set.c: 63: if(temp1[store]<=0)
	movf	(SetTime@store),w
	addwf	(SetTime@temp1),w
	movwf	(??_SetTime+0)+0
	movf	0+(??_SetTime+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l3411
u3410:
	line	65
	
l6701:	
;Time set.c: 64: {
;Time set.c: 65: temp1[store]=limit+1;
	movf	(SetTime@limit),w
	addlw	01h
	movwf	(??_SetTime+0)+0
	movf	(SetTime@store),w
	addwf	(SetTime@temp1),w
	movwf	(??_SetTime+1)+0
	movf	0+(??_SetTime+1)+0,w
	movwf	fsr0
	movf	(??_SetTime+0)+0,w
	movwf	indf
	line	66
	
l3411:	
	line	67
;Time set.c: 66: }
;Time set.c: 67: temp1[store]=temp1[store]-1;
	movf	(SetTime@store),w
	addwf	(SetTime@temp1),w
	movwf	(??_SetTime+0)+0
	movf	0+(??_SetTime+0)+0,w
	movwf	fsr0
	movf	indf,w
	addlw	0FFh
	movwf	(??_SetTime+1)+0
	movf	(SetTime@store),w
	addwf	(SetTime@temp1),w
	movwf	(??_SetTime+2)+0
	movf	0+(??_SetTime+2)+0,w
	movwf	fsr0
	movf	(??_SetTime+1)+0,w
	movwf	indf
	line	69
	
l6703:	
;Time set.c: 69: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	70
	
l6705:	
;Time set.c: 70: DisplayTimeToLCD(temp1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetTime@temp1),w
	fcall	_DisplayTimeToLCD
	line	71
	
l6707:	
;Time set.c: 71: WriteCommandToLCD(disply_locat);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetTime@disply_locat),w
	fcall	_WriteCommandToLCD
	line	72
	
l6709:	
;Time set.c: 72: WriteCommandToLCD(0x0e);
	movlw	(0Eh)
	fcall	_WriteCommandToLCD
	line	73
;Time set.c: 73: goto menustart;
	goto	l3392
	line	74
	
l3407:	
	line	75
;Time set.c: 74: }
;Time set.c: 75: if(RD1==0)
	btfsc	(65/8),(65)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l3422
u3420:
	goto	l3413
	line	77
	
l6711:	
;Time set.c: 76: {
;Time set.c: 77: while(RD1==0);
	goto	l3413
	
l3414:	
	
l3413:	
	btfss	(65/8),(65)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l3413
u3430:
	goto	l6713
	
l3415:	
	line	78
	
l6713:	
;Time set.c: 78: if(hr_set==0)
	movf	(SetTime@hr_set),f
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l6721
u3440:
	line	80
	
l6715:	
;Time set.c: 79: {
;Time set.c: 80: WriteCommandToLCD(0x84);
	movlw	(084h)
	fcall	_WriteCommandToLCD
	line	81
;Time set.c: 81: WriteCommandToLCD(0x0e);
	movlw	(0Eh)
	fcall	_WriteCommandToLCD
	line	82
	
l6717:	
;Time set.c: 82: hr_set=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SetTime@hr_set)
	bsf	status,0
	rlf	(SetTime@hr_set),f
	line	83
;Time set.c: 83: goto menustart;
	goto	l3392
	line	84
	
l6719:	
;Time set.c: 84: }
	goto	l3422
	line	85
	
l3416:	
	
l6721:	
;Time set.c: 85: else if(min_set==0)
	movf	(SetTime@min_set),f
	skipz
	goto	u3451
	goto	u3450
u3451:
	goto	l6729
u3450:
	line	87
	
l6723:	
;Time set.c: 86: {
;Time set.c: 87: WriteCommandToLCD(0x87);
	movlw	(087h)
	fcall	_WriteCommandToLCD
	line	88
;Time set.c: 88: WriteCommandToLCD(0x0e);
	movlw	(0Eh)
	fcall	_WriteCommandToLCD
	line	89
	
l6725:	
;Time set.c: 89: min_set=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SetTime@min_set)
	bsf	status,0
	rlf	(SetTime@min_set),f
	line	90
;Time set.c: 90: goto menustart;
	goto	l3392
	line	91
	
l6727:	
;Time set.c: 91: }
	goto	l3422
	line	92
	
l3418:	
	
l6729:	
;Time set.c: 92: else if(sec_set==0)
	movf	(SetTime@sec_set),f
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l3420
u3460:
	line	94
	
l6731:	
;Time set.c: 93: {
;Time set.c: 94: sec_set=1;
	clrf	(SetTime@sec_set)
	bsf	status,0
	rlf	(SetTime@sec_set),f
	line	96
;Time set.c: 96: goto menustart;
	goto	l3392
	line	97
	
l6733:	
;Time set.c: 97: }
	goto	l3422
	line	98
	
l3420:	
	line	100
;Time set.c: 98: else
;Time set.c: 99: {
;Time set.c: 100: hr_set=0;
	clrf	(SetTime@hr_set)
	line	101
;Time set.c: 101: min_set=0;
	clrf	(SetTime@min_set)
	line	102
;Time set.c: 102: sec_set=0;
	clrf	(SetTime@sec_set)
	line	103
	
l6735:	
;Time set.c: 103: Set_DS1307_RTC_Time(2, temp1[2], temp1[1], temp1[0]);
	movf	(SetTime@temp1),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_SetTime+0)+0
	movf	(??_SetTime+0)+0,w
	movwf	(?_Set_DS1307_RTC_Time)
	movf	(SetTime@temp1),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_SetTime+1)+0
	movf	(??_SetTime+1)+0,w
	movwf	0+(?_Set_DS1307_RTC_Time)+01h
	movf	(SetTime@temp1),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_SetTime+2)+0
	movf	(??_SetTime+2)+0,w
	movwf	0+(?_Set_DS1307_RTC_Time)+02h
	movlw	(02h)
	fcall	_Set_DS1307_RTC_Time
	line	104
	
l6737:	
;Time set.c: 104: WriteCommandToLCD(0xc1);
	movlw	(0C1h)
	fcall	_WriteCommandToLCD
	line	105
	
l6739:	
;Time set.c: 105: WriteStringToLCD("time set ok");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l3422
	line	106
	
l3421:	
	goto	l3422
	
l3419:	
	goto	l3422
	
l3417:	
	goto	l3422
	line	107
	
l3412:	
	goto	l3422
	line	114
	
l3387:	
	line	118
	
l3422:	
	return
	opt stack 0
GLOBAL	__end_of_SetTime
	__end_of_SetTime:
;; =============== function _SetTime ends ============

	signat	_SetTime,88
	global	_DisplayDateOnLCD
psect	text575,local,class=CODE,delta=2
global __ptext575
__ptext575:

;; *************** function _DisplayDateOnLCD *****************
;; Defined at:
;;		line 146 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  pDateArray      1    wreg     PTR unsigned char 
;;		 -> pRTCArray(4), 
;; Auto vars:     Size  Location     Type
;;  pDateArray      1   11[COMMON] PTR unsigned char 
;;		 -> pRTCArray(4), 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_WriteCommandToLCD
;;		___awdiv
;;		_WriteDataToLCD
;;		___awmod
;;		_WriteStringToLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text575
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
	line	146
	global	__size_of_DisplayDateOnLCD
	__size_of_DisplayDateOnLCD	equ	__end_of_DisplayDateOnLCD-_DisplayDateOnLCD
	
_DisplayDateOnLCD:	
	opt	stack 4
; Regs used in _DisplayDateOnLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DisplayDateOnLCD@pDateArray stored from wreg
	movwf	(DisplayDateOnLCD@pDateArray)
	line	147
	
l6615:	
;LCD.c: 147: WriteCommandToLCD(0xc0);
	movlw	(0C0h)
	fcall	_WriteCommandToLCD
	line	150
	
l6617:	
;LCD.c: 150: WriteDataToLCD( (pDateArray[1]/10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayDateOnLCD+0)+0
	clrf	(??_DisplayDateOnLCD+0)+0+1
	movf	0+(??_DisplayDateOnLCD+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplayDateOnLCD+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	151
	
l6619:	
;LCD.c: 151: WriteDataToLCD( (pDateArray[1]%10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayDateOnLCD+0)+0
	clrf	(??_DisplayDateOnLCD+0)+0+1
	movf	0+(??_DisplayDateOnLCD+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplayDateOnLCD+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	154
;LCD.c: 154: WriteDataToLCD('/');
	movlw	(02Fh)
	fcall	_WriteDataToLCD
	line	157
	
l6621:	
;LCD.c: 157: WriteDataToLCD( (pDateArray[2]/10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayDateOnLCD+0)+0
	clrf	(??_DisplayDateOnLCD+0)+0+1
	movf	0+(??_DisplayDateOnLCD+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplayDateOnLCD+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	158
	
l6623:	
;LCD.c: 158: WriteDataToLCD( (pDateArray[2]%10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayDateOnLCD+0)+0
	clrf	(??_DisplayDateOnLCD+0)+0+1
	movf	0+(??_DisplayDateOnLCD+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplayDateOnLCD+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	161
;LCD.c: 161: WriteDataToLCD('/');
	movlw	(02Fh)
	fcall	_WriteDataToLCD
	line	164
	
l6625:	
;LCD.c: 164: WriteDataToLCD( (pDateArray[3]/10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayDateOnLCD+0)+0
	clrf	(??_DisplayDateOnLCD+0)+0+1
	movf	0+(??_DisplayDateOnLCD+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplayDateOnLCD+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	165
	
l6627:	
;LCD.c: 165: WriteDataToLCD( (pDateArray[3]%10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplayDateOnLCD@pDateArray),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayDateOnLCD+0)+0
	clrf	(??_DisplayDateOnLCD+0)+0+1
	movf	0+(??_DisplayDateOnLCD+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplayDateOnLCD+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	168
;LCD.c: 168: WriteDataToLCD(' ');
	movlw	(020h)
	fcall	_WriteDataToLCD
	line	171
;LCD.c: 171: switch(pDateArray[0])
	goto	l6647
	line	173
;LCD.c: 172: {
;LCD.c: 173: case 1: WriteStringToLCD("MON"); break;
	
l2063:	
	
l6629:	
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2072
	line	174
;LCD.c: 174: case 2: WriteStringToLCD("TUE"); break;
	
l2065:	
	
l6631:	
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2072
	line	175
;LCD.c: 175: case 3: WriteStringToLCD("WED"); break;
	
l2066:	
	
l6633:	
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2072
	line	176
;LCD.c: 176: case 4: WriteStringToLCD("THU"); break;
	
l2067:	
	
l6635:	
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2072
	line	177
;LCD.c: 177: case 5: WriteStringToLCD("FRI"); break;
	
l2068:	
	
l6637:	
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2072
	line	178
;LCD.c: 178: case 6: WriteStringToLCD("SAT"); break;
	
l2069:	
	
l6639:	
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2072
	line	179
;LCD.c: 179: case 7: WriteStringToLCD("SUN"); break;
	
l2070:	
	
l6641:	
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2072
	line	181
;LCD.c: 181: default: WriteStringToLCD("???"); break;
	
l2071:	
	
l6643:	
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2072
	line	182
	
l6645:	
;LCD.c: 182: }
	goto	l2072
	line	171
	
l2062:	
	
l6647:	
	movf	(DisplayDateOnLCD@pDateArray),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           32    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l6629
	xorlw	2^1	; case 2
	skipnz
	goto	l6631
	xorlw	3^2	; case 3
	skipnz
	goto	l6633
	xorlw	4^3	; case 4
	skipnz
	goto	l6635
	xorlw	5^4	; case 5
	skipnz
	goto	l6637
	xorlw	6^5	; case 6
	skipnz
	goto	l6639
	xorlw	7^6	; case 7
	skipnz
	goto	l6641
	goto	l6643
	opt asmopt_on

	line	182
	
l2064:	
	line	183
	
l2072:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayDateOnLCD
	__end_of_DisplayDateOnLCD:
;; =============== function _DisplayDateOnLCD ends ============

	signat	_DisplayDateOnLCD,4216
	global	_DisplayTimeToLCD
psect	text576,local,class=CODE,delta=2
global __ptext576
__ptext576:

;; *************** function _DisplayTimeToLCD *****************
;; Defined at:
;;		line 108 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  pTimeArray      1    wreg     PTR unsigned char 
;;		 -> pRTCArray(4), 
;; Auto vars:     Size  Location     Type
;;  pTimeArray      1   11[COMMON] PTR unsigned char 
;;		 -> pRTCArray(4), 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ClearLCDScreen
;;		___awdiv
;;		_WriteDataToLCD
;;		___awmod
;;		_WriteStringToLCD
;; This function is called by:
;;		_main
;;		_SetTime
;; This function uses a non-reentrant model
;;
psect	text576
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
	line	108
	global	__size_of_DisplayTimeToLCD
	__size_of_DisplayTimeToLCD	equ	__end_of_DisplayTimeToLCD-_DisplayTimeToLCD
	
_DisplayTimeToLCD:	
	opt	stack 4
; Regs used in _DisplayTimeToLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DisplayTimeToLCD@pTimeArray stored from wreg
	movwf	(DisplayTimeToLCD@pTimeArray)
	line	109
	
l6591:	
;LCD.c: 109: ClearLCDScreen();
	fcall	_ClearLCDScreen
	line	112
	
l6593:	
;LCD.c: 112: WriteDataToLCD( (pTimeArray[2]/10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayTimeToLCD+0)+0
	clrf	(??_DisplayTimeToLCD+0)+0+1
	movf	0+(??_DisplayTimeToLCD+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplayTimeToLCD+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	113
	
l6595:	
;LCD.c: 113: WriteDataToLCD( (pTimeArray[2]%10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayTimeToLCD+0)+0
	clrf	(??_DisplayTimeToLCD+0)+0+1
	movf	0+(??_DisplayTimeToLCD+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplayTimeToLCD+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	116
;LCD.c: 116: WriteDataToLCD(':');
	movlw	(03Ah)
	fcall	_WriteDataToLCD
	line	119
	
l6597:	
;LCD.c: 119: WriteDataToLCD( (pTimeArray[1]/10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayTimeToLCD+0)+0
	clrf	(??_DisplayTimeToLCD+0)+0+1
	movf	0+(??_DisplayTimeToLCD+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplayTimeToLCD+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	120
	
l6599:	
;LCD.c: 120: WriteDataToLCD( (pTimeArray[1]%10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayTimeToLCD+0)+0
	clrf	(??_DisplayTimeToLCD+0)+0+1
	movf	0+(??_DisplayTimeToLCD+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplayTimeToLCD+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	123
;LCD.c: 123: WriteDataToLCD(':');
	movlw	(03Ah)
	fcall	_WriteDataToLCD
	line	126
	
l6601:	
;LCD.c: 126: WriteDataToLCD( (pTimeArray[0]/10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayTimeToLCD@pTimeArray),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayTimeToLCD+0)+0
	clrf	(??_DisplayTimeToLCD+0)+0+1
	movf	0+(??_DisplayTimeToLCD+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplayTimeToLCD+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	127
	
l6603:	
;LCD.c: 127: WriteDataToLCD( (pTimeArray[0]%10)+0x30 );
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplayTimeToLCD@pTimeArray),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_DisplayTimeToLCD+0)+0
	clrf	(??_DisplayTimeToLCD+0)+0+1
	movf	0+(??_DisplayTimeToLCD+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplayTimeToLCD+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_WriteDataToLCD
	line	130
;LCD.c: 130: WriteDataToLCD(' ');
	movlw	(020h)
	fcall	_WriteDataToLCD
	line	133
;LCD.c: 133: switch(pTimeArray[3])
	goto	l6613
	line	135
;LCD.c: 134: {
;LCD.c: 135: case 0: WriteStringToLCD("AM"); break;
	
l2055:	
	
l6605:	
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2059
	line	136
;LCD.c: 136: case 1: WriteStringToLCD("PM"); break;
	
l2057:	
	
l6607:	
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_WriteStringToLCD
	goto	l2059
	line	138
;LCD.c: 138: default: WriteDataToLCD('H'); break;
	
l2058:	
	
l6609:	
	movlw	(048h)
	fcall	_WriteDataToLCD
	goto	l2059
	line	139
	
l6611:	
;LCD.c: 139: }
	goto	l2059
	line	133
	
l2054:	
	
l6613:	
	movf	(DisplayTimeToLCD@pTimeArray),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             6     6 (fixed)
; spacedrange           10     9 (fixed)
; locatedrange           2     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l6605
	xorlw	1^0	; case 1
	skipnz
	goto	l6607
	goto	l6609
	opt asmopt_on

	line	139
	
l2056:	
	line	140
	
l2059:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayTimeToLCD
	__end_of_DisplayTimeToLCD:
;; =============== function _DisplayTimeToLCD ends ============

	signat	_DisplayTimeToLCD,4216
	global	_ClearLCDScreen
psect	text577,local,class=CODE,delta=2
global __ptext577
__ptext577:

;; *************** function _ClearLCDScreen *****************
;; Defined at:
;;		line 99 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteCommandToLCD
;; This function is called by:
;;		_DisplayTimeToLCD
;; This function uses a non-reentrant model
;;
psect	text577
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
	line	99
	global	__size_of_ClearLCDScreen
	__size_of_ClearLCDScreen	equ	__end_of_ClearLCDScreen-_ClearLCDScreen
	
_ClearLCDScreen:	
	opt	stack 4
; Regs used in _ClearLCDScreen: [wreg+status,2+status,0+pclath+cstack]
	line	100
	
l6587:	
;LCD.c: 100: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	101
	
l6589:	
;LCD.c: 101: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_ClearLCDScreen+0)+0+1),f
	movlw	251
movwf	((??_ClearLCDScreen+0)+0),f
u3487:
	decfsz	((??_ClearLCDScreen+0)+0),f
	goto	u3487
	decfsz	((??_ClearLCDScreen+0)+0+1),f
	goto	u3487
	nop2
opt asmopt_on

	line	102
	
l2051:	
	return
	opt stack 0
GLOBAL	__end_of_ClearLCDScreen
	__end_of_ClearLCDScreen:
;; =============== function _ClearLCDScreen ends ============

	signat	_ClearLCDScreen,88
	global	_WriteStringToLCD
psect	text578,local,class=CODE,delta=2
global __ptext578
__ptext578:

;; *************** function _WriteStringToLCD *****************
;; Defined at:
;;		line 92 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_11(12), STR_10(4), STR_9(4), STR_8(4), 
;;		 -> STR_7(4), STR_6(4), STR_5(4), STR_4(4), 
;;		 -> STR_3(4), STR_2(3), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    6[COMMON] PTR const unsigned char 
;;		 -> STR_11(12), STR_10(4), STR_9(4), STR_8(4), 
;;		 -> STR_7(4), STR_6(4), STR_5(4), STR_4(4), 
;;		 -> STR_3(4), STR_2(3), STR_1(3), 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_WriteDataToLCD
;; This function is called by:
;;		_DisplayTimeToLCD
;;		_DisplayDateOnLCD
;;		_SetTime
;; This function uses a non-reentrant model
;;
psect	text578
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
	line	92
	global	__size_of_WriteStringToLCD
	__size_of_WriteStringToLCD	equ	__end_of_WriteStringToLCD-_WriteStringToLCD
	
_WriteStringToLCD:	
	opt	stack 4
; Regs used in _WriteStringToLCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;WriteStringToLCD@s stored from wreg
	movwf	(WriteStringToLCD@s)
	line	93
	
l6579:	
;LCD.c: 93: while(*s)
	goto	l6585
	
l2046:	
	line	94
	
l6581:	
;LCD.c: 94: WriteDataToLCD(*s++);
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_WriteDataToLCD
	
l6583:	
	movlw	(01h)
	movwf	(??_WriteStringToLCD+0)+0
	movf	(??_WriteStringToLCD+0)+0,w
	addwf	(WriteStringToLCD@s),f
	goto	l6585
	
l2045:	
	line	93
	
l6585:	
	movf	(WriteStringToLCD@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l6581
u3270:
	goto	l2048
	
l2047:	
	line	95
	
l2048:	
	return
	opt stack 0
GLOBAL	__end_of_WriteStringToLCD
	__end_of_WriteStringToLCD:
;; =============== function _WriteStringToLCD ends ============

	signat	_WriteStringToLCD,4216
	global	_InitLCD
psect	text579,local,class=CODE,delta=2
global __ptext579
__ptext579:

;; *************** function _InitLCD *****************
;; Defined at:
;;		line 42 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
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
psect	text579
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
	line	42
	global	__size_of_InitLCD
	__size_of_InitLCD	equ	__end_of_InitLCD-_InitLCD
	
_InitLCD:	
	opt	stack 5
; Regs used in _InitLCD: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l6539:	
;LCD.c: 44: RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bcf	status, 6	;RP1=0, select bank1
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
	
l6541:	
;LCD.c: 58: _delay((unsigned long)((40)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_InitLCD+0)+0+2),f
movlw	4
movwf	((??_InitLCD+0)+0+1),f
	movlw	186
movwf	((??_InitLCD+0)+0),f
u3497:
	decfsz	((??_InitLCD+0)+0),f
	goto	u3497
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u3497
	decfsz	((??_InitLCD+0)+0+2),f
	goto	u3497
	clrwdt
opt asmopt_on

	line	60
	
l6543:	
;LCD.c: 60: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	61
	
l6545:	
;LCD.c: 61: PORTB |= 0x30;
	movlw	(030h)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	62
	
l6547:	
;LCD.c: 62: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	64
	
l6549:	
;LCD.c: 64: _delay((unsigned long)((6)*(20000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_InitLCD+0)+0+1),f
	movlw	245
movwf	((??_InitLCD+0)+0),f
u3507:
	decfsz	((??_InitLCD+0)+0),f
	goto	u3507
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u3507
opt asmopt_on

	line	66
	
l6551:	
;LCD.c: 66: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	67
	
l6553:	
;LCD.c: 67: PORTB |= 0x30;
	movlw	(030h)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	68
;LCD.c: 68: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	70
	
l6555:	
;LCD.c: 70: _delay((unsigned long)((300)*(20000000/4000000.0)));
	opt asmopt_off
movlw	214
movwf	(??_InitLCD+0)+0,f
u3517:
	nop2
	nop2
decfsz	(??_InitLCD+0)+0,f
	goto	u3517
	clrwdt
opt asmopt_on

	line	72
	
l6557:	
;LCD.c: 72: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	73
	
l6559:	
;LCD.c: 73: PORTB |= 0x30;
	movlw	(030h)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	74
	
l6561:	
;LCD.c: 74: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	76
;LCD.c: 76: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u3527:
	decfsz	((??_InitLCD+0)+0),f
	goto	u3527
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u3527
	nop2
opt asmopt_on

	line	78
	
l6563:	
;LCD.c: 78: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_InitLCD+0)+0
	movf	(??_InitLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	79
	
l6565:	
;LCD.c: 79: PORTB |= 0x20;
	bsf	(6)+(5/8),(5)&7	;volatile
	line	80
	
l6567:	
;LCD.c: 80: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	82
	
l6569:	
;LCD.c: 82: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_InitLCD+0)+0+1),f
	movlw	251
movwf	((??_InitLCD+0)+0),f
u3537:
	decfsz	((??_InitLCD+0)+0),f
	goto	u3537
	decfsz	((??_InitLCD+0)+0+1),f
	goto	u3537
	nop2
opt asmopt_on

	line	84
	
l6571:	
;LCD.c: 84: WriteCommandToLCD(0x28);
	movlw	(028h)
	fcall	_WriteCommandToLCD
	line	85
	
l6573:	
;LCD.c: 85: WriteCommandToLCD(0x0c);
	movlw	(0Ch)
	fcall	_WriteCommandToLCD
	line	86
	
l6575:	
;LCD.c: 86: WriteCommandToLCD(0x01);
	movlw	(01h)
	fcall	_WriteCommandToLCD
	line	87
	
l6577:	
;LCD.c: 87: WriteCommandToLCD(0x06);
	movlw	(06h)
	fcall	_WriteCommandToLCD
	line	88
	
l2042:	
	return
	opt stack 0
GLOBAL	__end_of_InitLCD
	__end_of_InitLCD:
;; =============== function _InitLCD ends ============

	signat	_InitLCD,88
	global	_WriteDataToLCD
psect	text580,local,class=CODE,delta=2
global __ptext580
__ptext580:

;; *************** function _WriteDataToLCD *****************
;; Defined at:
;;		line 28 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDChar         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDChar         1    4[COMMON] unsigned char 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_WriteStringToLCD
;;		_DisplayTimeToLCD
;;		_DisplayDateOnLCD
;; This function uses a non-reentrant model
;;
psect	text580
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
	line	28
	global	__size_of_WriteDataToLCD
	__size_of_WriteDataToLCD	equ	__end_of_WriteDataToLCD-_WriteDataToLCD
	
_WriteDataToLCD:	
	opt	stack 4
; Regs used in _WriteDataToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataToLCD@LCDChar stored from wreg
	movwf	(WriteDataToLCD@LCDChar)
	line	29
	
l6527:	
;LCD.c: 29: RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	31
	
l6529:	
;LCD.c: 31: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_WriteDataToLCD+0)+0
	movf	(??_WriteDataToLCD+0)+0,w
	andwf	(6),f	;volatile
	line	32
;LCD.c: 32: PORTB |= (LCDChar&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	andlw	0F0h
	movwf	(??_WriteDataToLCD+0)+0
	movf	(??_WriteDataToLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	33
	
l6531:	
;LCD.c: 33: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	35
	
l6533:	
;LCD.c: 35: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_WriteDataToLCD+0)+0
	movf	(??_WriteDataToLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	36
	
l6535:	
;LCD.c: 36: PORTB |= ((LCDChar<<4)&0xF0);
	movf	(WriteDataToLCD@LCDChar),w
	movwf	(??_WriteDataToLCD+0)+0
	movlw	(04h)-1
u3265:
	clrc
	rlf	(??_WriteDataToLCD+0)+0,f
	addlw	-1
	skipz
	goto	u3265
	clrc
	rlf	(??_WriteDataToLCD+0)+0,w
	andlw	0F0h
	movwf	(??_WriteDataToLCD+1)+0
	movf	(??_WriteDataToLCD+1)+0,w
	iorwf	(6),f	;volatile
	line	37
	
l6537:	
;LCD.c: 37: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	38
	
l2039:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataToLCD
	__end_of_WriteDataToLCD:
;; =============== function _WriteDataToLCD ends ============

	signat	_WriteDataToLCD,4216
	global	_WriteCommandToLCD
psect	text581,local,class=CODE,delta=2
global __ptext581
__ptext581:

;; *************** function _WriteCommandToLCD *****************
;; Defined at:
;;		line 14 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
;; Parameters:    Size  Location     Type
;;  Command         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Command         1    4[COMMON] unsigned char 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ToggleEpinOfLCD
;; This function is called by:
;;		_InitLCD
;;		_ClearLCDScreen
;;		_DisplayDateOnLCD
;;		_SetTime
;; This function uses a non-reentrant model
;;
psect	text581
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
	line	14
	global	__size_of_WriteCommandToLCD
	__size_of_WriteCommandToLCD	equ	__end_of_WriteCommandToLCD-_WriteCommandToLCD
	
_WriteCommandToLCD:	
	opt	stack 5
; Regs used in _WriteCommandToLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCommandToLCD@Command stored from wreg
	movwf	(WriteCommandToLCD@Command)
	line	15
	
l6515:	
;LCD.c: 15: RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	17
	
l6517:	
;LCD.c: 17: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_WriteCommandToLCD+0)+0
	movf	(??_WriteCommandToLCD+0)+0,w
	andwf	(6),f	;volatile
	line	18
;LCD.c: 18: PORTB |= (Command&0xF0);
	movf	(WriteCommandToLCD@Command),w
	andlw	0F0h
	movwf	(??_WriteCommandToLCD+0)+0
	movf	(??_WriteCommandToLCD+0)+0,w
	iorwf	(6),f	;volatile
	line	19
	
l6519:	
;LCD.c: 19: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	21
	
l6521:	
;LCD.c: 21: PORTB &= 0x0F;
	movlw	(0Fh)
	movwf	(??_WriteCommandToLCD+0)+0
	movf	(??_WriteCommandToLCD+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(6),f	;volatile
	line	22
	
l6523:	
;LCD.c: 22: PORTB |= ((Command<<4)&0xF0);
	movf	(WriteCommandToLCD@Command),w
	movwf	(??_WriteCommandToLCD+0)+0
	movlw	(04h)-1
u3255:
	clrc
	rlf	(??_WriteCommandToLCD+0)+0,f
	addlw	-1
	skipz
	goto	u3255
	clrc
	rlf	(??_WriteCommandToLCD+0)+0,w
	andlw	0F0h
	movwf	(??_WriteCommandToLCD+1)+0
	movf	(??_WriteCommandToLCD+1)+0,w
	iorwf	(6),f	;volatile
	line	23
	
l6525:	
;LCD.c: 23: ToggleEpinOfLCD();
	fcall	_ToggleEpinOfLCD
	line	24
	
l2036:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCommandToLCD
	__end_of_WriteCommandToLCD:
;; =============== function _WriteCommandToLCD ends ============

	signat	_WriteCommandToLCD,4216
	global	_Get_DS1307_RTC_Date
psect	text582,local,class=CODE,delta=2
global __ptext582
__ptext582:

;; *************** function _Get_DS1307_RTC_Date *****************
;; Defined at:
;;		line 210 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_Bytes_From_DS1307_RTC
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text582
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
	line	210
	global	__size_of_Get_DS1307_RTC_Date
	__size_of_Get_DS1307_RTC_Date	equ	__end_of_Get_DS1307_RTC_Date-_Get_DS1307_RTC_Date
	
_Get_DS1307_RTC_Date:	
	opt	stack 5
; Regs used in _Get_DS1307_RTC_Date: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	212
	
l6497:	
;DS1307.c: 212: Read_Bytes_From_DS1307_RTC(0x03, pRTCArray, 4);
	movlw	(_pRTCArray)&0ffh
	movwf	(??_Get_DS1307_RTC_Date+0)+0
	movf	(??_Get_DS1307_RTC_Date+0)+0,w
	movwf	(?_Read_Bytes_From_DS1307_RTC)
	movlw	low(04h)
	movwf	0+(?_Read_Bytes_From_DS1307_RTC)+01h
	movlw	high(04h)
	movwf	(0+(?_Read_Bytes_From_DS1307_RTC)+01h)+1
	movlw	(03h)
	fcall	_Read_Bytes_From_DS1307_RTC
	line	215
	
l6499:	
;DS1307.c: 215: Temp = pRTCArray[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_pRTCArray)+01h,w
	movwf	(??_Get_DS1307_RTC_Date+0)+0
	movf	(??_Get_DS1307_RTC_Date+0)+0,w
	movwf	(_Temp)
	line	216
	
l6501:	
;DS1307.c: 216: pRTCArray[1] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(??_Get_DS1307_RTC_Date+0)+0
	movf	(??_Get_DS1307_RTC_Date+0)+0,w
	movwf	(?___bmul)
	movf	(_Temp),w
	movwf	(??_Get_DS1307_RTC_Date+1)+0
	movlw	04h
u3225:
	clrc
	rrf	(??_Get_DS1307_RTC_Date+1)+0,f
	addlw	-1
	skipz
	goto	u3225
	movf	0+(??_Get_DS1307_RTC_Date+1)+0,w
	fcall	___bmul
	movwf	(??_Get_DS1307_RTC_Date+2)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_Get_DS1307_RTC_Date+2)+0,w
	movwf	(??_Get_DS1307_RTC_Date+3)+0
	movf	(??_Get_DS1307_RTC_Date+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_pRTCArray)+01h
	line	219
	
l6503:	
;DS1307.c: 219: Temp = pRTCArray[2];
	movf	0+(_pRTCArray)+02h,w
	movwf	(??_Get_DS1307_RTC_Date+0)+0
	movf	(??_Get_DS1307_RTC_Date+0)+0,w
	movwf	(_Temp)
	line	220
	
l6505:	
;DS1307.c: 220: pRTCArray[2] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(??_Get_DS1307_RTC_Date+0)+0
	movf	(??_Get_DS1307_RTC_Date+0)+0,w
	movwf	(?___bmul)
	movf	(_Temp),w
	movwf	(??_Get_DS1307_RTC_Date+1)+0
	movlw	04h
u3235:
	clrc
	rrf	(??_Get_DS1307_RTC_Date+1)+0,f
	addlw	-1
	skipz
	goto	u3235
	movf	0+(??_Get_DS1307_RTC_Date+1)+0,w
	fcall	___bmul
	movwf	(??_Get_DS1307_RTC_Date+2)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_Get_DS1307_RTC_Date+2)+0,w
	movwf	(??_Get_DS1307_RTC_Date+3)+0
	movf	(??_Get_DS1307_RTC_Date+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_pRTCArray)+02h
	line	223
	
l6507:	
;DS1307.c: 223: Temp = pRTCArray[3];
	movf	0+(_pRTCArray)+03h,w
	movwf	(??_Get_DS1307_RTC_Date+0)+0
	movf	(??_Get_DS1307_RTC_Date+0)+0,w
	movwf	(_Temp)
	line	224
	
l6509:	
;DS1307.c: 224: pRTCArray[3] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(??_Get_DS1307_RTC_Date+0)+0
	movf	(??_Get_DS1307_RTC_Date+0)+0,w
	movwf	(?___bmul)
	movf	(_Temp),w
	movwf	(??_Get_DS1307_RTC_Date+1)+0
	movlw	04h
u3245:
	clrc
	rrf	(??_Get_DS1307_RTC_Date+1)+0,f
	addlw	-1
	skipz
	goto	u3245
	movf	0+(??_Get_DS1307_RTC_Date+1)+0,w
	fcall	___bmul
	movwf	(??_Get_DS1307_RTC_Date+2)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_Get_DS1307_RTC_Date+2)+0,w
	movwf	(??_Get_DS1307_RTC_Date+3)+0
	movf	(??_Get_DS1307_RTC_Date+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_pRTCArray)+03h
	line	226
	
l6511:	
;DS1307.c: 226: return pRTCArray;
	movlw	(_pRTCArray)&0ffh
	goto	l707
	
l6513:	
	line	227
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_Get_DS1307_RTC_Date
	__end_of_Get_DS1307_RTC_Date:
;; =============== function _Get_DS1307_RTC_Date ends ============

	signat	_Get_DS1307_RTC_Date,89
	global	_Set_DS1307_RTC_Date
psect	text583,local,class=CODE,delta=2
global __ptext583
__ptext583:

;; *************** function _Set_DS1307_RTC_Date *****************
;; Defined at:
;;		line 189 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
;; Parameters:    Size  Location     Type
;;  Date            1    wreg     unsigned char 
;;  Month           1    9[COMMON] unsigned char 
;;  Year            1   10[COMMON] unsigned char 
;;  Day             1   11[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Date            1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         4       8       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_Write_Bytes_To_DS1307_RTC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text583
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
	line	189
	global	__size_of_Set_DS1307_RTC_Date
	__size_of_Set_DS1307_RTC_Date	equ	__end_of_Set_DS1307_RTC_Date-_Set_DS1307_RTC_Date
	
_Set_DS1307_RTC_Date:	
	opt	stack 5
; Regs used in _Set_DS1307_RTC_Date: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Set_DS1307_RTC_Date@Date stored from wreg
	line	191
	movwf	(Set_DS1307_RTC_Date@Date)
	
l6493:	
;DS1307.c: 191: pRTCArray[0] = (((unsigned char)(Day/10))<<4)|((unsigned char)(Day%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Set_DS1307_RTC_Date@Day),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+0)+0
	clrf	(??_Set_DS1307_RTC_Date+0)+0+1
	movf	0+(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+?___awmod),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+2)+0
	movf	(1+?___awmod),w
	movwf	((??_Set_DS1307_RTC_Date+2)+0+1)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Set_DS1307_RTC_Date@Day),w
	movwf	(??_Set_DS1307_RTC_Date+4)+0
	clrf	(??_Set_DS1307_RTC_Date+4)+0+1
	movf	0+(??_Set_DS1307_RTC_Date+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Set_DS1307_RTC_Date+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+6)+0
	movlw	(04h)-1
u3185:
	clrc
	rlf	(??_Set_DS1307_RTC_Date+6)+0,f
	addlw	-1
	skipz
	goto	u3185
	clrc
	rlf	(??_Set_DS1307_RTC_Date+6)+0,w
	iorwf	0+(??_Set_DS1307_RTC_Date+2)+0,w
	movwf	(??_Set_DS1307_RTC_Date+7)+0
	movf	(??_Set_DS1307_RTC_Date+7)+0,w
	movwf	(_pRTCArray)
	line	192
;DS1307.c: 192: pRTCArray[1] = (((unsigned char)(Date/10))<<4)|((unsigned char)(Date%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Set_DS1307_RTC_Date@Date),w
	movwf	(??_Set_DS1307_RTC_Date+0)+0
	clrf	(??_Set_DS1307_RTC_Date+0)+0+1
	movf	0+(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+?___awmod),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+2)+0
	movf	(1+?___awmod),w
	movwf	((??_Set_DS1307_RTC_Date+2)+0+1)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Set_DS1307_RTC_Date@Date),w
	movwf	(??_Set_DS1307_RTC_Date+4)+0
	clrf	(??_Set_DS1307_RTC_Date+4)+0+1
	movf	0+(??_Set_DS1307_RTC_Date+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Set_DS1307_RTC_Date+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+6)+0
	movlw	(04h)-1
u3195:
	clrc
	rlf	(??_Set_DS1307_RTC_Date+6)+0,f
	addlw	-1
	skipz
	goto	u3195
	clrc
	rlf	(??_Set_DS1307_RTC_Date+6)+0,w
	iorwf	0+(??_Set_DS1307_RTC_Date+2)+0,w
	movwf	(??_Set_DS1307_RTC_Date+7)+0
	movf	(??_Set_DS1307_RTC_Date+7)+0,w
	movwf	0+(_pRTCArray)+01h
	line	193
;DS1307.c: 193: pRTCArray[2] = (((unsigned char)(Month/10))<<4)|((unsigned char)(Month%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Set_DS1307_RTC_Date@Month),w
	movwf	(??_Set_DS1307_RTC_Date+0)+0
	clrf	(??_Set_DS1307_RTC_Date+0)+0+1
	movf	0+(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+?___awmod),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+2)+0
	movf	(1+?___awmod),w
	movwf	((??_Set_DS1307_RTC_Date+2)+0+1)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Set_DS1307_RTC_Date@Month),w
	movwf	(??_Set_DS1307_RTC_Date+4)+0
	clrf	(??_Set_DS1307_RTC_Date+4)+0+1
	movf	0+(??_Set_DS1307_RTC_Date+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Set_DS1307_RTC_Date+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+6)+0
	movlw	(04h)-1
u3205:
	clrc
	rlf	(??_Set_DS1307_RTC_Date+6)+0,f
	addlw	-1
	skipz
	goto	u3205
	clrc
	rlf	(??_Set_DS1307_RTC_Date+6)+0,w
	iorwf	0+(??_Set_DS1307_RTC_Date+2)+0,w
	movwf	(??_Set_DS1307_RTC_Date+7)+0
	movf	(??_Set_DS1307_RTC_Date+7)+0,w
	movwf	0+(_pRTCArray)+02h
	line	194
;DS1307.c: 194: pRTCArray[3] = (((unsigned char)(Year/10))<<4)|((unsigned char)(Year%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Set_DS1307_RTC_Date@Year),w
	movwf	(??_Set_DS1307_RTC_Date+0)+0
	clrf	(??_Set_DS1307_RTC_Date+0)+0+1
	movf	0+(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+?___awmod),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+2)+0
	movf	(1+?___awmod),w
	movwf	((??_Set_DS1307_RTC_Date+2)+0+1)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Set_DS1307_RTC_Date@Year),w
	movwf	(??_Set_DS1307_RTC_Date+4)+0
	clrf	(??_Set_DS1307_RTC_Date+4)+0+1
	movf	0+(??_Set_DS1307_RTC_Date+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Set_DS1307_RTC_Date+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Date+6)+0
	movlw	(04h)-1
u3215:
	clrc
	rlf	(??_Set_DS1307_RTC_Date+6)+0,f
	addlw	-1
	skipz
	goto	u3215
	clrc
	rlf	(??_Set_DS1307_RTC_Date+6)+0,w
	iorwf	0+(??_Set_DS1307_RTC_Date+2)+0,w
	movwf	(??_Set_DS1307_RTC_Date+7)+0
	movf	(??_Set_DS1307_RTC_Date+7)+0,w
	movwf	0+(_pRTCArray)+03h
	line	197
	
l6495:	
;DS1307.c: 197: Write_Bytes_To_DS1307_RTC(0x03, pRTCArray, 4);
	movlw	(_pRTCArray)&0ffh
	movwf	(??_Set_DS1307_RTC_Date+0)+0
	movf	(??_Set_DS1307_RTC_Date+0)+0,w
	movwf	(?_Write_Bytes_To_DS1307_RTC)
	movlw	(04h)
	movwf	(??_Set_DS1307_RTC_Date+1)+0
	movf	(??_Set_DS1307_RTC_Date+1)+0,w
	movwf	0+(?_Write_Bytes_To_DS1307_RTC)+01h
	movlw	(03h)
	fcall	_Write_Bytes_To_DS1307_RTC
	line	198
	
l704:	
	return
	opt stack 0
GLOBAL	__end_of_Set_DS1307_RTC_Date
	__end_of_Set_DS1307_RTC_Date:
;; =============== function _Set_DS1307_RTC_Date ends ============

	signat	_Set_DS1307_RTC_Date,16504
	global	_Get_DS1307_RTC_Time
psect	text584,local,class=CODE,delta=2
global __ptext584
__ptext584:

;; *************** function _Get_DS1307_RTC_Time *****************
;; Defined at:
;;		line 146 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Read_Bytes_From_DS1307_RTC
;;		___bmul
;; This function is called by:
;;		_main
;;		_SetTime
;; This function uses a non-reentrant model
;;
psect	text584
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
	line	146
	global	__size_of_Get_DS1307_RTC_Time
	__size_of_Get_DS1307_RTC_Time	equ	__end_of_Get_DS1307_RTC_Time-_Get_DS1307_RTC_Time
	
_Get_DS1307_RTC_Time:	
	opt	stack 5
; Regs used in _Get_DS1307_RTC_Time: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	148
	
l6463:	
;DS1307.c: 148: Read_Bytes_From_DS1307_RTC(0x00, pRTCArray, 3);
	movlw	(_pRTCArray)&0ffh
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(?_Read_Bytes_From_DS1307_RTC)
	movlw	low(03h)
	movwf	0+(?_Read_Bytes_From_DS1307_RTC)+01h
	movlw	high(03h)
	movwf	(0+(?_Read_Bytes_From_DS1307_RTC)+01h)+1
	movlw	(0)
	fcall	_Read_Bytes_From_DS1307_RTC
	line	151
	
l6465:	
;DS1307.c: 151: Temp = pRTCArray[0];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pRTCArray),w
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(_Temp)
	line	152
	
l6467:	
;DS1307.c: 152: pRTCArray[0] = ((Temp&0x7F)>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(?___bmul)
	movf	(_Temp),w
	movwf	(??_Get_DS1307_RTC_Time+1)+0
	movlw	04h
u3125:
	clrc
	rrf	(??_Get_DS1307_RTC_Time+1)+0,f
	addlw	-1
	skipz
	goto	u3125
	movf	0+(??_Get_DS1307_RTC_Time+1)+0,w
	andlw	07h
	fcall	___bmul
	movwf	(??_Get_DS1307_RTC_Time+2)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_Get_DS1307_RTC_Time+2)+0,w
	movwf	(??_Get_DS1307_RTC_Time+3)+0
	movf	(??_Get_DS1307_RTC_Time+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pRTCArray)
	line	155
	
l6469:	
;DS1307.c: 155: Temp = pRTCArray[1];
	movf	0+(_pRTCArray)+01h,w
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(_Temp)
	line	156
	
l6471:	
;DS1307.c: 156: pRTCArray[1] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(?___bmul)
	movf	(_Temp),w
	movwf	(??_Get_DS1307_RTC_Time+1)+0
	movlw	04h
u3135:
	clrc
	rrf	(??_Get_DS1307_RTC_Time+1)+0,f
	addlw	-1
	skipz
	goto	u3135
	movf	0+(??_Get_DS1307_RTC_Time+1)+0,w
	fcall	___bmul
	movwf	(??_Get_DS1307_RTC_Time+2)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_Get_DS1307_RTC_Time+2)+0,w
	movwf	(??_Get_DS1307_RTC_Time+3)+0
	movf	(??_Get_DS1307_RTC_Time+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_pRTCArray)+01h
	line	159
	
l6473:	
;DS1307.c: 159: if(pRTCArray[2]&0x40)
	btfss	0+(_pRTCArray)+02h,(6)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l6483
u3140:
	line	161
	
l6475:	
;DS1307.c: 160: {
;DS1307.c: 161: if(pRTCArray[2]&0x20)
	btfss	0+(_pRTCArray)+02h,(5)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l698
u3150:
	line	162
	
l6477:	
;DS1307.c: 162: pRTCArray[3] = 1;
	clrf	0+(_pRTCArray)+03h
	bsf	status,0
	rlf	0+(_pRTCArray)+03h,f
	goto	l6479
	line	163
	
l698:	
	line	164
;DS1307.c: 163: else
;DS1307.c: 164: pRTCArray[3] = 0;
	clrf	0+(_pRTCArray)+03h
	goto	l6479
	
l699:	
	line	166
	
l6479:	
;DS1307.c: 166: Temp = pRTCArray[2];
	movf	0+(_pRTCArray)+02h,w
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(_Temp)
	line	167
	
l6481:	
;DS1307.c: 167: pRTCArray[2] = ((Temp&0x1F)>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(?___bmul)
	movf	(_Temp),w
	movwf	(??_Get_DS1307_RTC_Time+1)+0
	movlw	04h
u3165:
	clrc
	rrf	(??_Get_DS1307_RTC_Time+1)+0,f
	addlw	-1
	skipz
	goto	u3165
	movf	0+(??_Get_DS1307_RTC_Time+1)+0,w
	andlw	01h
	fcall	___bmul
	movwf	(??_Get_DS1307_RTC_Time+2)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_Get_DS1307_RTC_Time+2)+0,w
	movwf	(??_Get_DS1307_RTC_Time+3)+0
	movf	(??_Get_DS1307_RTC_Time+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_pRTCArray)+02h
	line	168
;DS1307.c: 168: }
	goto	l6489
	line	169
	
l697:	
	line	171
	
l6483:	
;DS1307.c: 169: else
;DS1307.c: 170: {
;DS1307.c: 171: Temp = pRTCArray[2];
	movf	0+(_pRTCArray)+02h,w
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(_Temp)
	line	172
	
l6485:	
;DS1307.c: 172: pRTCArray[2] = (Temp>>4)*10 + (Temp&0x0F);
	movlw	(0Ah)
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	(?___bmul)
	movf	(_Temp),w
	movwf	(??_Get_DS1307_RTC_Time+1)+0
	movlw	04h
u3175:
	clrc
	rrf	(??_Get_DS1307_RTC_Time+1)+0,f
	addlw	-1
	skipz
	goto	u3175
	movf	0+(??_Get_DS1307_RTC_Time+1)+0,w
	fcall	___bmul
	movwf	(??_Get_DS1307_RTC_Time+2)+0
	movf	(_Temp),w
	andlw	0Fh
	addwf	0+(??_Get_DS1307_RTC_Time+2)+0,w
	movwf	(??_Get_DS1307_RTC_Time+3)+0
	movf	(??_Get_DS1307_RTC_Time+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_pRTCArray)+02h
	line	173
	
l6487:	
;DS1307.c: 173: pRTCArray[3] = 2;
	movlw	(02h)
	movwf	(??_Get_DS1307_RTC_Time+0)+0
	movf	(??_Get_DS1307_RTC_Time+0)+0,w
	movwf	0+(_pRTCArray)+03h
	goto	l6489
	line	174
	
l700:	
	line	176
	
l6489:	
;DS1307.c: 174: }
;DS1307.c: 176: return pRTCArray;
	movlw	(_pRTCArray)&0ffh
	goto	l701
	
l6491:	
	line	177
	
l701:	
	return
	opt stack 0
GLOBAL	__end_of_Get_DS1307_RTC_Time
	__end_of_Get_DS1307_RTC_Time:
;; =============== function _Get_DS1307_RTC_Time ends ============

	signat	_Get_DS1307_RTC_Time,89
	global	_Set_DS1307_RTC_Time
psect	text585,local,class=CODE,delta=2
global __ptext585
__ptext585:

;; *************** function _Set_DS1307_RTC_Time *****************
;; Defined at:
;;		line 117 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
;; Parameters:    Size  Location     Type
;;  Mode            1    wreg     unsigned char 
;;  Hours           1    9[COMMON] unsigned char 
;;  Mins            1   10[COMMON] unsigned char 
;;  Secs            1   11[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Mode            1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       8       0       0       0
;;      Totals:         4       8       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_Write_Bytes_To_DS1307_RTC
;; This function is called by:
;;		_main
;;		_SetTime
;; This function uses a non-reentrant model
;;
psect	text585
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
	line	117
	global	__size_of_Set_DS1307_RTC_Time
	__size_of_Set_DS1307_RTC_Time	equ	__end_of_Set_DS1307_RTC_Time-_Set_DS1307_RTC_Time
	
_Set_DS1307_RTC_Time:	
	opt	stack 4
; Regs used in _Set_DS1307_RTC_Time: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Set_DS1307_RTC_Time@Mode stored from wreg
	line	119
	movwf	(Set_DS1307_RTC_Time@Mode)
	
l6453:	
;DS1307.c: 119: pRTCArray[0] = (((unsigned char)(Secs/10))<<4)|((unsigned char)(Secs%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Set_DS1307_RTC_Time@Secs),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Time+0)+0
	clrf	(??_Set_DS1307_RTC_Time+0)+0+1
	movf	0+(??_Set_DS1307_RTC_Time+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Set_DS1307_RTC_Time+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+?___awmod),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Time+2)+0
	movf	(1+?___awmod),w
	movwf	((??_Set_DS1307_RTC_Time+2)+0+1)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Set_DS1307_RTC_Time@Secs),w
	movwf	(??_Set_DS1307_RTC_Time+4)+0
	clrf	(??_Set_DS1307_RTC_Time+4)+0+1
	movf	0+(??_Set_DS1307_RTC_Time+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Set_DS1307_RTC_Time+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Time+6)+0
	movlw	(04h)-1
u3095:
	clrc
	rlf	(??_Set_DS1307_RTC_Time+6)+0,f
	addlw	-1
	skipz
	goto	u3095
	clrc
	rlf	(??_Set_DS1307_RTC_Time+6)+0,w
	iorwf	0+(??_Set_DS1307_RTC_Time+2)+0,w
	movwf	(??_Set_DS1307_RTC_Time+7)+0
	movf	(??_Set_DS1307_RTC_Time+7)+0,w
	movwf	(_pRTCArray)
	line	120
;DS1307.c: 120: pRTCArray[1] = (((unsigned char)(Mins/10))<<4)|((unsigned char)(Mins%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Set_DS1307_RTC_Time@Mins),w
	movwf	(??_Set_DS1307_RTC_Time+0)+0
	clrf	(??_Set_DS1307_RTC_Time+0)+0+1
	movf	0+(??_Set_DS1307_RTC_Time+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Set_DS1307_RTC_Time+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+?___awmod),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Time+2)+0
	movf	(1+?___awmod),w
	movwf	((??_Set_DS1307_RTC_Time+2)+0+1)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Set_DS1307_RTC_Time@Mins),w
	movwf	(??_Set_DS1307_RTC_Time+4)+0
	clrf	(??_Set_DS1307_RTC_Time+4)+0+1
	movf	0+(??_Set_DS1307_RTC_Time+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Set_DS1307_RTC_Time+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Time+6)+0
	movlw	(04h)-1
u3105:
	clrc
	rlf	(??_Set_DS1307_RTC_Time+6)+0,f
	addlw	-1
	skipz
	goto	u3105
	clrc
	rlf	(??_Set_DS1307_RTC_Time+6)+0,w
	iorwf	0+(??_Set_DS1307_RTC_Time+2)+0,w
	movwf	(??_Set_DS1307_RTC_Time+7)+0
	movf	(??_Set_DS1307_RTC_Time+7)+0,w
	movwf	0+(_pRTCArray)+01h
	line	121
;DS1307.c: 121: pRTCArray[2] = (((unsigned char)(Hours/10))<<4)|((unsigned char)(Hours%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Set_DS1307_RTC_Time@Hours),w
	movwf	(??_Set_DS1307_RTC_Time+0)+0
	clrf	(??_Set_DS1307_RTC_Time+0)+0+1
	movf	0+(??_Set_DS1307_RTC_Time+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_Set_DS1307_RTC_Time+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+?___awmod),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Time+2)+0
	movf	(1+?___awmod),w
	movwf	((??_Set_DS1307_RTC_Time+2)+0+1)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Set_DS1307_RTC_Time@Hours),w
	movwf	(??_Set_DS1307_RTC_Time+4)+0
	clrf	(??_Set_DS1307_RTC_Time+4)+0+1
	movf	0+(??_Set_DS1307_RTC_Time+4)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_Set_DS1307_RTC_Time+4)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Set_DS1307_RTC_Time+6)+0
	movlw	(04h)-1
u3115:
	clrc
	rlf	(??_Set_DS1307_RTC_Time+6)+0,f
	addlw	-1
	skipz
	goto	u3115
	clrc
	rlf	(??_Set_DS1307_RTC_Time+6)+0,w
	iorwf	0+(??_Set_DS1307_RTC_Time+2)+0,w
	movwf	(??_Set_DS1307_RTC_Time+7)+0
	movf	(??_Set_DS1307_RTC_Time+7)+0,w
	movwf	0+(_pRTCArray)+02h
	line	123
;DS1307.c: 123: switch(Mode)
	goto	l6459
	line	125
;DS1307.c: 124: {
;DS1307.c: 125: case 0: pRTCArray[2] |= 0x40; break;
	
l690:	
	bsf	0+(_pRTCArray)+02h+(6/8),(6)&7
	goto	l6461
	line	126
;DS1307.c: 126: case 1: pRTCArray[2] |= 0x60; break;
	
l692:	
	
l6455:	
	movlw	(060h)
	movwf	(??_Set_DS1307_RTC_Time+0)+0
	movf	(??_Set_DS1307_RTC_Time+0)+0,w
	iorwf	0+(_pRTCArray)+02h,f
	goto	l6461
	line	128
;DS1307.c: 128: default: break;
	
l693:	
	goto	l6461
	line	129
	
l6457:	
;DS1307.c: 129: }
	goto	l6461
	line	123
	
l689:	
	
l6459:	
	movf	(Set_DS1307_RTC_Time@Mode),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             6     6 (fixed)
; spacedrange           10     9 (fixed)
; locatedrange           2     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l690
	xorlw	1^0	; case 1
	skipnz
	goto	l6455
	goto	l6461
	opt asmopt_on

	line	129
	
l691:	
	line	132
	
l6461:	
;DS1307.c: 132: Write_Bytes_To_DS1307_RTC(0x00, pRTCArray, 3);
	movlw	(_pRTCArray)&0ffh
	movwf	(??_Set_DS1307_RTC_Time+0)+0
	movf	(??_Set_DS1307_RTC_Time+0)+0,w
	movwf	(?_Write_Bytes_To_DS1307_RTC)
	movlw	(03h)
	movwf	(??_Set_DS1307_RTC_Time+1)+0
	movf	(??_Set_DS1307_RTC_Time+1)+0,w
	movwf	0+(?_Write_Bytes_To_DS1307_RTC)+01h
	movlw	(0)
	fcall	_Write_Bytes_To_DS1307_RTC
	line	133
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_Set_DS1307_RTC_Time
	__end_of_Set_DS1307_RTC_Time:
;; =============== function _Set_DS1307_RTC_Time ends ============

	signat	_Set_DS1307_RTC_Time,16504
	global	_ToggleEpinOfLCD
psect	text586,local,class=CODE,delta=2
global __ptext586
__ptext586:

;; *************** function _ToggleEpinOfLCD *****************
;; Defined at:
;;		line 5 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
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
psect	text586
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\LCD.c"
	line	5
	global	__size_of_ToggleEpinOfLCD
	__size_of_ToggleEpinOfLCD	equ	__end_of_ToggleEpinOfLCD-_ToggleEpinOfLCD
	
_ToggleEpinOfLCD:	
	opt	stack 4
; Regs used in _ToggleEpinOfLCD: [wreg]
	line	6
	
l6447:	
;LCD.c: 6: RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	7
	
l6449:	
;LCD.c: 7: _delay((unsigned long)((500)*(20000000/4000000.0)));
	opt asmopt_off
movlw	4
movwf	((??_ToggleEpinOfLCD+0)+0+1),f
	movlw	61
movwf	((??_ToggleEpinOfLCD+0)+0),f
u3547:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u3547
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u3547
	nop2
opt asmopt_on

	line	8
	
l6451:	
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
u3557:
	decfsz	((??_ToggleEpinOfLCD+0)+0),f
	goto	u3557
	decfsz	((??_ToggleEpinOfLCD+0)+0+1),f
	goto	u3557
	nop2
opt asmopt_on

	line	10
	
l2033:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleEpinOfLCD
	__end_of_ToggleEpinOfLCD:
;; =============== function _ToggleEpinOfLCD ends ============

	signat	_ToggleEpinOfLCD,88
	global	_Read_Bytes_From_DS1307_RTC
psect	text587,local,class=CODE,delta=2
global __ptext587
__ptext587:

;; *************** function _Read_Bytes_From_DS1307_RTC *****************
;; Defined at:
;;		line 81 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
;; Parameters:    Size  Location     Type
;;  Address         1    wreg     unsigned char 
;;  pData           1    1[COMMON] PTR unsigned char 
;;		 -> pRTCArray(4), 
;;  NoOfBytes       2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  Address         1    6[COMMON] unsigned char 
;;  i               2    7[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Start
;;		_I2C_Write_Byte
;;		_I2C_ReStart
;;		_I2C_Read_Byte
;;		_I2C_Send_ACK
;;		_I2C_Send_NACK
;;		_I2C_Stop
;; This function is called by:
;;		_Get_DS1307_RTC_Time
;;		_Get_DS1307_RTC_Date
;; This function uses a non-reentrant model
;;
psect	text587
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
	line	81
	global	__size_of_Read_Bytes_From_DS1307_RTC
	__size_of_Read_Bytes_From_DS1307_RTC	equ	__end_of_Read_Bytes_From_DS1307_RTC-_Read_Bytes_From_DS1307_RTC
	
_Read_Bytes_From_DS1307_RTC:	
	opt	stack 5
; Regs used in _Read_Bytes_From_DS1307_RTC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Read_Bytes_From_DS1307_RTC@Address stored from wreg
	line	84
	movwf	(Read_Bytes_From_DS1307_RTC@Address)
	
l6421:	
;DS1307.c: 82: unsigned int i;
;DS1307.c: 84: I2C_Start();
	fcall	_I2C_Start
	line	87
;DS1307.c: 87: while(I2C_Write_Byte(0xD0 + 0) == 1)
	goto	l6425
	
l681:	
	line	88
	
l6423:	
;DS1307.c: 88: { I2C_Start(); }
	fcall	_I2C_Start
	goto	l6425
	
l680:	
	line	87
	
l6425:	
	movlw	(0D0h)
	fcall	_I2C_Write_Byte
	btfsc	status,0
	goto	u3071
	goto	u3070
u3071:
	goto	l6423
u3070:
	goto	l6427
	
l682:	
	line	90
	
l6427:	
;DS1307.c: 90: I2C_Write_Byte(Address);
	movf	(Read_Bytes_From_DS1307_RTC@Address),w
	fcall	_I2C_Write_Byte
	line	91
	
l6429:	
;DS1307.c: 91: I2C_ReStart();
	fcall	_I2C_ReStart
	line	94
	
l6431:	
;DS1307.c: 94: I2C_Write_Byte(0xD0 + 1);
	movlw	(0D1h)
	fcall	_I2C_Write_Byte
	line	96
	
l6433:	
;DS1307.c: 96: pData[0] = I2C_Read_Byte();
	fcall	_I2C_Read_Byte
	movwf	(??_Read_Bytes_From_DS1307_RTC+0)+0
	movf	(Read_Bytes_From_DS1307_RTC@pData),w
	movwf	fsr0
	movf	(??_Read_Bytes_From_DS1307_RTC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	98
	
l6435:	
;DS1307.c: 98: for(i=1;i<NoOfBytes;i++)
	movlw	low(01h)
	movwf	(Read_Bytes_From_DS1307_RTC@i)
	movlw	high(01h)
	movwf	((Read_Bytes_From_DS1307_RTC@i))+1
	goto	l6443
	line	99
	
l684:	
	line	100
	
l6437:	
;DS1307.c: 99: {
;DS1307.c: 100: I2C_Send_ACK();
	fcall	_I2C_Send_ACK
	line	101
	
l6439:	
;DS1307.c: 101: pData[i] = I2C_Read_Byte();
	fcall	_I2C_Read_Byte
	movwf	(??_Read_Bytes_From_DS1307_RTC+0)+0
	movf	(Read_Bytes_From_DS1307_RTC@i),w
	addwf	(Read_Bytes_From_DS1307_RTC@pData),w
	movwf	(??_Read_Bytes_From_DS1307_RTC+1)+0
	movf	0+(??_Read_Bytes_From_DS1307_RTC+1)+0,w
	movwf	fsr0
	movf	(??_Read_Bytes_From_DS1307_RTC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	98
	
l6441:	
	movlw	low(01h)
	addwf	(Read_Bytes_From_DS1307_RTC@i),f
	skipnc
	incf	(Read_Bytes_From_DS1307_RTC@i+1),f
	movlw	high(01h)
	addwf	(Read_Bytes_From_DS1307_RTC@i+1),f
	goto	l6443
	
l683:	
	
l6443:	
	movf	(Read_Bytes_From_DS1307_RTC@NoOfBytes+1),w
	subwf	(Read_Bytes_From_DS1307_RTC@i+1),w
	skipz
	goto	u3085
	movf	(Read_Bytes_From_DS1307_RTC@NoOfBytes),w
	subwf	(Read_Bytes_From_DS1307_RTC@i),w
u3085:
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l6437
u3080:
	goto	l6445
	
l685:	
	line	104
	
l6445:	
;DS1307.c: 102: }
;DS1307.c: 104: I2C_Send_NACK();
	fcall	_I2C_Send_NACK
	line	105
;DS1307.c: 105: I2C_Stop();
	fcall	_I2C_Stop
	line	106
	
l686:	
	return
	opt stack 0
GLOBAL	__end_of_Read_Bytes_From_DS1307_RTC
	__end_of_Read_Bytes_From_DS1307_RTC:
;; =============== function _Read_Bytes_From_DS1307_RTC ends ============

	signat	_Read_Bytes_From_DS1307_RTC,12408
	global	_Write_Bytes_To_DS1307_RTC
psect	text588,local,class=CODE,delta=2
global __ptext588
__ptext588:

;; *************** function _Write_Bytes_To_DS1307_RTC *****************
;; Defined at:
;;		line 57 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
;; Parameters:    Size  Location     Type
;;  Address         1    wreg     unsigned char 
;;  pData           1    1[COMMON] PTR unsigned char 
;;		 -> pRTCArray(4), 
;;  NoOfBytes       1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Address         1    5[COMMON] unsigned char 
;;  i               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Start
;;		_I2C_Write_Byte
;;		_I2C_Stop
;; This function is called by:
;;		_Set_DS1307_RTC_Time
;;		_Set_DS1307_RTC_Date
;; This function uses a non-reentrant model
;;
psect	text588
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\DS1307.c"
	line	57
	global	__size_of_Write_Bytes_To_DS1307_RTC
	__size_of_Write_Bytes_To_DS1307_RTC	equ	__end_of_Write_Bytes_To_DS1307_RTC-_Write_Bytes_To_DS1307_RTC
	
_Write_Bytes_To_DS1307_RTC:	
	opt	stack 4
; Regs used in _Write_Bytes_To_DS1307_RTC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Write_Bytes_To_DS1307_RTC@Address stored from wreg
	line	60
	movwf	(Write_Bytes_To_DS1307_RTC@Address)
	
l6403:	
;DS1307.c: 58: unsigned int i;
;DS1307.c: 60: I2C_Start();
	fcall	_I2C_Start
	line	63
;DS1307.c: 63: while(I2C_Write_Byte(0xD0 + 0) == 1)
	goto	l6407
	
l672:	
	line	64
	
l6405:	
;DS1307.c: 64: { I2C_Start(); }
	fcall	_I2C_Start
	goto	l6407
	
l671:	
	line	63
	
l6407:	
	movlw	(0D0h)
	fcall	_I2C_Write_Byte
	btfsc	status,0
	goto	u3051
	goto	u3050
u3051:
	goto	l6405
u3050:
	goto	l6409
	
l673:	
	line	66
	
l6409:	
;DS1307.c: 66: I2C_Write_Byte(Address);
	movf	(Write_Bytes_To_DS1307_RTC@Address),w
	fcall	_I2C_Write_Byte
	line	68
	
l6411:	
;DS1307.c: 68: for(i=0;i<NoOfBytes;i++)
	clrf	(Write_Bytes_To_DS1307_RTC@i)
	clrf	(Write_Bytes_To_DS1307_RTC@i+1)
	goto	l6417
	line	69
	
l675:	
	
l6413:	
;DS1307.c: 69: I2C_Write_Byte(pData[i]);
	movf	(Write_Bytes_To_DS1307_RTC@i),w
	addwf	(Write_Bytes_To_DS1307_RTC@pData),w
	movwf	(??_Write_Bytes_To_DS1307_RTC+0)+0
	movf	0+(??_Write_Bytes_To_DS1307_RTC+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_I2C_Write_Byte
	line	68
	
l6415:	
	movlw	low(01h)
	addwf	(Write_Bytes_To_DS1307_RTC@i),f
	skipnc
	incf	(Write_Bytes_To_DS1307_RTC@i+1),f
	movlw	high(01h)
	addwf	(Write_Bytes_To_DS1307_RTC@i+1),f
	goto	l6417
	
l674:	
	
l6417:	
	movf	(Write_Bytes_To_DS1307_RTC@NoOfBytes),w
	movwf	(??_Write_Bytes_To_DS1307_RTC+0)+0
	clrf	(??_Write_Bytes_To_DS1307_RTC+0)+0+1
	movf	1+(??_Write_Bytes_To_DS1307_RTC+0)+0,w
	subwf	(Write_Bytes_To_DS1307_RTC@i+1),w
	skipz
	goto	u3065
	movf	0+(??_Write_Bytes_To_DS1307_RTC+0)+0,w
	subwf	(Write_Bytes_To_DS1307_RTC@i),w
u3065:
	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l6413
u3060:
	goto	l6419
	
l676:	
	line	71
	
l6419:	
;DS1307.c: 71: I2C_Stop();
	fcall	_I2C_Stop
	line	72
	
l677:	
	return
	opt stack 0
GLOBAL	__end_of_Write_Bytes_To_DS1307_RTC
	__end_of_Write_Bytes_To_DS1307_RTC:
;; =============== function _Write_Bytes_To_DS1307_RTC ends ============

	signat	_Write_Bytes_To_DS1307_RTC,12408
	global	___awmod
psect	text589,local,class=CODE,delta=2
global __ptext589
__ptext589:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Set_DS1307_RTC_Time
;;		_Set_DS1307_RTC_Date
;;		_DisplayTimeToLCD
;;		_DisplayDateOnLCD
;; This function uses a non-reentrant model
;;
psect	text589
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6369:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2961
	goto	u2960
u2961:
	goto	l6373
u2960:
	line	10
	
l6371:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l6373
	line	12
	
l4273:	
	line	13
	
l6373:	
	btfss	(___awmod@divisor+1),7
	goto	u2971
	goto	u2970
u2971:
	goto	l6377
u2970:
	line	14
	
l6375:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l6377
	
l4274:	
	line	15
	
l6377:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2981
	goto	u2980
u2981:
	goto	l6395
u2980:
	line	16
	
l6379:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l6385
	
l4277:	
	line	18
	
l6381:	
	movlw	01h
	
u2995:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2995
	line	19
	
l6383:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l6385
	line	20
	
l4276:	
	line	17
	
l6385:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l6381
u3000:
	goto	l6387
	
l4278:	
	goto	l6387
	line	21
	
l4279:	
	line	22
	
l6387:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3015
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3015:
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l6391
u3010:
	line	23
	
l6389:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l6391
	
l4280:	
	line	24
	
l6391:	
	movlw	01h
	
u3025:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3025
	line	25
	
l6393:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l6387
u3030:
	goto	l6395
	
l4281:	
	goto	l6395
	line	26
	
l4275:	
	line	27
	
l6395:	
	movf	(___awmod@sign),w
	skipz
	goto	u3040
	goto	l6399
u3040:
	line	28
	
l6397:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l6399
	
l4282:	
	line	29
	
l6399:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l4283
	
l6401:	
	line	30
	
l4283:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text590,local,class=CODE,delta=2
global __ptext590
__ptext590:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Set_DS1307_RTC_Time
;;		_Set_DS1307_RTC_Date
;;		_DisplayTimeToLCD
;;		_DisplayDateOnLCD
;; This function uses a non-reentrant model
;;
psect	text590
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6329:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2861
	goto	u2860
u2861:
	goto	l6333
u2860:
	line	11
	
l6331:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l6333
	line	13
	
l4205:	
	line	14
	
l6333:	
	btfss	(___awdiv@dividend+1),7
	goto	u2871
	goto	u2870
u2871:
	goto	l6339
u2870:
	line	15
	
l6335:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6337:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l6339
	line	17
	
l4206:	
	line	18
	
l6339:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l6341:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2881
	goto	u2880
u2881:
	goto	l6361
u2880:
	line	20
	
l6343:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l6349
	
l4209:	
	line	22
	
l6345:	
	movlw	01h
	
u2895:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2895
	line	23
	
l6347:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l6349
	line	24
	
l4208:	
	line	21
	
l6349:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l6345
u2900:
	goto	l6351
	
l4210:	
	goto	l6351
	line	25
	
l4211:	
	line	26
	
l6351:	
	movlw	01h
	
u2915:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2915
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2925
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2925:
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l6357
u2920:
	line	28
	
l6353:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6355:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l6357
	line	30
	
l4212:	
	line	31
	
l6357:	
	movlw	01h
	
u2935:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2935
	line	32
	
l6359:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l6351
u2940:
	goto	l6361
	
l4213:	
	goto	l6361
	line	33
	
l4207:	
	line	34
	
l6361:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2950
	goto	l6365
u2950:
	line	35
	
l6363:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l6365
	
l4214:	
	line	36
	
l6365:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l4215
	
l6367:	
	line	37
	
l4215:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___bmul
psect	text591,local,class=CODE,delta=2
global __ptext591
__ptext591:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Get_DS1307_RTC_Time
;;		_Get_DS1307_RTC_Date
;; This function uses a non-reentrant model
;;
psect	text591
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l6315:	
	clrf	(___bmul@product)
	line	6
	
l4059:	
	line	7
	btfss	(___bmul@multiplier),(0)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l6319
u2840:
	line	8
	
l6317:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l6319
	
l4060:	
	line	9
	
l6319:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l6321:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l6323:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l4059
u2850:
	goto	l6325
	
l4061:	
	line	12
	
l6325:	
	movf	(___bmul@product),w
	goto	l4062
	
l6327:	
	line	13
	
l4062:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_InitI2C
psect	text592,local,class=CODE,delta=2
global __ptext592
__ptext592:

;; *************** function _InitI2C *****************
;; Defined at:
;;		line 7 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
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
psect	text592
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
	line	7
	global	__size_of_InitI2C
	__size_of_InitI2C	equ	__end_of_InitI2C-_InitI2C
	
_InitI2C:	
	opt	stack 7
; Regs used in _InitI2C: [wreg]
	line	8
	
l4967:	
;I2C.c: 8: TRISC4 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1084/8)^080h,(1084)&7
	line	9
;I2C.c: 9: TRISC3 = 1;
	bsf	(1083/8)^080h,(1083)&7
	line	11
	
l4969:	
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
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	14
	
l1348:	
	return
	opt stack 0
GLOBAL	__end_of_InitI2C
	__end_of_InitI2C:
;; =============== function _InitI2C ends ============

	signat	_InitI2C,88
	global	_I2C_Send_ACK
psect	text593,local,class=CODE,delta=2
global __ptext593
__ptext593:

;; *************** function _I2C_Send_ACK *****************
;; Defined at:
;;		line 47 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
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
;;		_Read_Bytes_From_DS1307_RTC
;; This function uses a non-reentrant model
;;
psect	text593
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
	line	47
	global	__size_of_I2C_Send_ACK
	__size_of_I2C_Send_ACK	equ	__end_of_I2C_Send_ACK-_I2C_Send_ACK
	
_I2C_Send_ACK:	
	opt	stack 5
; Regs used in _I2C_Send_ACK: []
	line	48
	
l6313:	
;I2C.c: 48: ACKDT = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	49
;I2C.c: 49: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	50
;I2C.c: 50: while(!SSPIF);
	goto	l1369
	
l1370:	
	
l1369:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l1369
u2830:
	
l1371:	
	line	51
;I2C.c: 51: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	52
	
l1372:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send_ACK
	__end_of_I2C_Send_ACK:
;; =============== function _I2C_Send_ACK ends ============

	signat	_I2C_Send_ACK,88
	global	_I2C_Send_NACK
psect	text594,local,class=CODE,delta=2
global __ptext594
__ptext594:

;; *************** function _I2C_Send_NACK *****************
;; Defined at:
;;		line 57 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
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
;;		_Read_Bytes_From_DS1307_RTC
;;		_Read_Byte_From_DS1307_RTC
;; This function uses a non-reentrant model
;;
psect	text594
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
	line	57
	global	__size_of_I2C_Send_NACK
	__size_of_I2C_Send_NACK	equ	__end_of_I2C_Send_NACK-_I2C_Send_NACK
	
_I2C_Send_NACK:	
	opt	stack 5
; Regs used in _I2C_Send_NACK: []
	line	58
	
l6311:	
;I2C.c: 58: ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	59
;I2C.c: 59: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	60
;I2C.c: 60: while(!SSPIF);
	goto	l1375
	
l1376:	
	
l1375:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l1375
u2820:
	
l1377:	
	line	61
;I2C.c: 61: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	62
	
l1378:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send_NACK
	__end_of_I2C_Send_NACK:
;; =============== function _I2C_Send_NACK ends ============

	signat	_I2C_Send_NACK,88
	global	_I2C_Read_Byte
psect	text595,local,class=CODE,delta=2
global __ptext595
__ptext595:

;; *************** function _I2C_Read_Byte *****************
;; Defined at:
;;		line 78 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_Read_Bytes_From_DS1307_RTC
;;		_Read_Byte_From_DS1307_RTC
;; This function uses a non-reentrant model
;;
psect	text595
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
	line	78
	global	__size_of_I2C_Read_Byte
	__size_of_I2C_Read_Byte	equ	__end_of_I2C_Read_Byte-_I2C_Read_Byte
	
_I2C_Read_Byte:	
	opt	stack 5
; Regs used in _I2C_Read_Byte: [wreg]
	line	79
	
l6305:	
;I2C.c: 79: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	80
;I2C.c: 80: while(!SSPIF);
	goto	l1387
	
l1388:	
	
l1387:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l1387
u2810:
	
l1389:	
	line	81
;I2C.c: 81: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	83
	
l6307:	
;I2C.c: 83: return SSPBUF;
	movf	(19),w	;volatile
	goto	l1390
	
l6309:	
	line	84
	
l1390:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read_Byte
	__end_of_I2C_Read_Byte:
;; =============== function _I2C_Read_Byte ends ============

	signat	_I2C_Read_Byte,89
	global	_I2C_ReStart
psect	text596,local,class=CODE,delta=2
global __ptext596
__ptext596:

;; *************** function _I2C_ReStart *****************
;; Defined at:
;;		line 28 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
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
;;		_Read_Bytes_From_DS1307_RTC
;;		_Read_Byte_From_DS1307_RTC
;; This function uses a non-reentrant model
;;
psect	text596
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
	line	28
	global	__size_of_I2C_ReStart
	__size_of_I2C_ReStart	equ	__end_of_I2C_ReStart-_I2C_ReStart
	
_I2C_ReStart:	
	opt	stack 5
; Regs used in _I2C_ReStart: []
	line	29
	
l6303:	
;I2C.c: 29: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	30
;I2C.c: 30: while(!SSPIF);
	goto	l1357
	
l1358:	
	
l1357:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l1357
u2800:
	
l1359:	
	line	31
;I2C.c: 31: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	32
	
l1360:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_ReStart
	__end_of_I2C_ReStart:
;; =============== function _I2C_ReStart ends ============

	signat	_I2C_ReStart,88
	global	_I2C_Stop
psect	text597,local,class=CODE,delta=2
global __ptext597
__ptext597:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 37 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
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
;;		_Write_Bytes_To_DS1307_RTC
;;		_Read_Bytes_From_DS1307_RTC
;;		_Write_Byte_To_DS1307_RTC
;;		_Read_Byte_From_DS1307_RTC
;; This function uses a non-reentrant model
;;
psect	text597
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
	line	37
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 5
; Regs used in _I2C_Stop: []
	line	38
	
l6279:	
;I2C.c: 38: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	39
;I2C.c: 39: while(!SSPIF);
	goto	l1363
	
l1364:	
	
l1363:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1363
u2780:
	
l1365:	
	line	40
;I2C.c: 40: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	41
	
l1366:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_Write_Byte
psect	text598,local,class=CODE,delta=2
global __ptext598
__ptext598:

;; *************** function _I2C_Write_Byte *****************
;; Defined at:
;;		line 67 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;;		_Write_Bytes_To_DS1307_RTC
;;		_Read_Bytes_From_DS1307_RTC
;;		_Write_Byte_To_DS1307_RTC
;;		_Read_Byte_From_DS1307_RTC
;; This function uses a non-reentrant model
;;
psect	text598
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
	line	67
	global	__size_of_I2C_Write_Byte
	__size_of_I2C_Write_Byte	equ	__end_of_I2C_Write_Byte-_I2C_Write_Byte
	
_I2C_Write_Byte:	
	opt	stack 5
; Regs used in _I2C_Write_Byte: [wreg+status,2+status,0]
;I2C_Write_Byte@Byte stored from wreg
	movwf	(I2C_Write_Byte@Byte)
	line	68
	
l6271:	
;I2C.c: 68: SSPBUF = Byte;
	movf	(I2C_Write_Byte@Byte),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	69
;I2C.c: 69: while(!SSPIF);
	goto	l1381
	
l1382:	
	
l1381:	
	btfss	(99/8),(99)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l1381
u2760:
	
l1383:	
	line	70
;I2C.c: 70: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	72
;I2C.c: 72: return ACKSTAT;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l6275
u2770:
	
l6273:	
	clrc
	
	goto	l1384
	
l6255:	
	
l6275:	
	setc
	
	goto	l1384
	
l6257:	
	goto	l1384
	
l6277:	
	line	73
	
l1384:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Write_Byte
	__end_of_I2C_Write_Byte:
;; =============== function _I2C_Write_Byte ends ============

	signat	_I2C_Write_Byte,4216
	global	_I2C_Start
psect	text599,local,class=CODE,delta=2
global __ptext599
__ptext599:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 19 in file "F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
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
;;		_Write_Bytes_To_DS1307_RTC
;;		_Read_Bytes_From_DS1307_RTC
;;		_Write_Byte_To_DS1307_RTC
;;		_Read_Byte_From_DS1307_RTC
;; This function uses a non-reentrant model
;;
psect	text599
	file	"F:\pic projects\PIC16F877 with DS1307 RTC Code\Code\I2C.c"
	line	19
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 5
; Regs used in _I2C_Start: []
	line	20
	
l6269:	
;I2C.c: 20: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	21
;I2C.c: 21: while(!SSPIF);
	goto	l1351
	
l1352:	
	
l1351:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l1351
u2750:
	
l1353:	
	line	22
;I2C.c: 22: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	23
	
l1354:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
psect	text600,local,class=CODE,delta=2
global __ptext600
__ptext600:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
