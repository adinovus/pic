/*  Name     : main.c
 *  Purpose  : Main file for 24LC64 interfacing with PIC16F877.
 *  Author   : M.Saeed Yasin
 *  Date     : 15-12-12
 *  Website  : saeedsolutions.blogspot.com
 *  Revision : None
 */
#include"Includes.h"

// Configuration word for PIC16F877
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);

// Main function
void main(void)
{
	unsigned char RxByte = 0;
	unsigned char TxArray[4] = { 'S', 'a', 'e', 'e' };
	unsigned char RxArray[4] = { 0 }; 

	// Initialize LCD
	InitLCD();

	// Initialize i2c module
	InitI2C();	

	// Write 'd' at 0x0001 address in EEPROM
	Write_Byte_To_24LC64_EEPROM(0x0001, 'd');
	// Read from 0x0001 address	from EEPROM		
	RxByte = Read_Byte_From_24LC64_EEPROM(0x0001);		

	// Write 4 bytes of TxArray starting from 0x0020 address in EEPROM
	Write_Page_To_24LC64_EEPROM(0x0020, TxArray, 4);
	// Read 4 bytes starting from 0x0020 address in EEPROM, save these bytes into RxArray
	Read_Bytes_From_24LC64_EEPROM(0x0020, RxArray, 4);

	// Display received values on LCD display
	WriteDataToLCD(RxArray[0]);
	WriteDataToLCD(RxArray[1]);
	WriteDataToLCD(RxArray[2]);
	WriteDataToLCD(RxArray[3]);
	WriteDataToLCD(RxByte);

	while(1)
	{	
	}
}

