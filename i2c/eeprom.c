#include <pic.h>
//#include "i2c.h"

/* Initialization for I2C bus */
void i2c_init( void )
{
	TRISC3 = 1;				// SLC
	TRISC4 = 1;				// SDA
	SSPADD = 0x04;			// (Fosc / 4*CLK) - 1
	SSPSTAT = 0b10000000;	// Disable slew rate control for 100kHz speed
	SSPCON2 = 0b000000000;  // Clear flags
	SSPCON = 0b00101000;	// Master mode, enable I2C
}

/* Waits for the I2C bus to go into Idle mode */
void i2c_idle( void )
{
	while( ( SSPCON2 & 0x1F ) | STAT_RW );
}

/* Sends the Start condition */
void i2c_start( void )
{
	SEN = 1;			// Enable Start condition
	while( SEN );		// Wait for condition to be sent
}

/* Sends the Repeated Start condition */
void i2c_repstart( void )
{;
	RSEN = 1;			// Enable Repeated Start condition
	while( RSEN );		// Wait for condition to be sent
}

/* Sends the Stop condition */
void i2c_stop( void )
{
	PEN = 1;			// Enable Stop condition
	while( PEN );		// Wait for condition to be sent
}

/* Writes a byte to the I2C bus */
unsigned char i2c_write( unsigned char data )
{
	i2c_idle();
	SSPBUF = data;		// Loads the buffer with provided data
	while( STAT_BF );	// Wait until the buffer is empty
	return( !ACKSTAT );	// Returns 1 if slave acknowledged
}

/* Reads a byte from the I2C bus, set ack to send acknowledgement */
unsigned char i2c_read( unsigned char ack )
{
	unsigned char data;
	
	i2c_idle();
	RCEN = 1;			// Enable Recieve mode
	while( RCEN );		// Wait until byte recieved
	data = SSPBUF;		// Save data from buffer
	ACKDT = ~ack;		// Set acknowledge bit
	ACKEN = 1;			// Send acknowledge bit
	while( ACKEN );		// Wait until acknowledge bit sent
	return data;		// Return data read from bus
}

void i2c_eeprom_write( unsigned int address, unsigned char data )
{
	unsigned char addr_high;
	unsigned char addr_low;
	
	addr_high = (unsigned char)( address >> 8 );
	addr_low = (unsigned char)( address );
	
	i2c_idle();
	i2c_start();
	i2c_write( 0xa0 );
	i2c_write( addr_high );
	i2c_write( addr_low );
	i2c_write( data );
	i2c_stop();
}

unsigned char i2c_eeprom_read( unsigned int address )
{
	unsigned char addr_high;
	unsigned char addr_low;
	unsigned char data;
	
	addr_high = (unsigned char)( address >> 8 );
	addr_low = (unsigned char)( address );
	
	i2c_idle();
	i2c_start();
	i2c_write( 0xa0 );
	i2c_write( addr_high );
	i2c_write( addr_low );
	i2c_repstart();
	i2c_write( 0xa1 );
	data = i2c_read( 0 );
	i2c_stop();
	
	return data;
}

void main( void )
{	
	ADCON1 = 0b00000110;	// All digital
	TRISA = 0b010000;		// RA4 Input for T0CKI
	TRISB = 0x00;			// Output for seconds
	TRISD = 0x00;			// Output for minutes
	
	OPTION = 0b11110101;	// TMR0 External Clock, 1:64 Prescale
	
	i2c_init();
	//i2c_rtc_init();
	
	i2c_eeprom_write( 0x00, 0x12 );
	delay_ms( 10 );
	PORTD = i2c_eeprom_read( 0x00 );

	while( 1 )
	{
		if( TMR0IF )
		{
			TMR0IF = 0;
			PORTD = i2c_rtc_read( 0x00 );
			PORTB = i2c_rtc_read( 0x01 );
		}
	}
}