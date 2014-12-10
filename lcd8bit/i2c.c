#include<htc.h>

/*
Function: I2CInit
Return:
Arguments:
Description: Initialize I2C in master mode, Sets the required baudrate
*/
void I2CInit(void)
{
	TRISC3 = 1;      /* SDA and SCL as input pin */
	TRISC4 = 1;      /* these pins can be configured either i/p or o/p */
	SSPSTAT |= 0x80; /* Slew rate disabled */
	SSPCON = 0x28;   /* SSPEN = 1, I2C Master mode, clock = FOSC/(4 * (SSPADD + 1)) */
	SSPADD = 0x28    /* 100Khz @ 4Mhz Fosc */
}

/*
Function: I2CStart
Return:
Arguments:
Description: Send a start condition on I2C Bus
*/
void I2CStart()
{
	SEN = 1;         /* Start condition enabled */
	while(SEN);      /* automatically cleared by hardware */
                     /* wait for start condition to finish */
}

/*
Function: I2CStop
Return:
Arguments:
Description: Send a stop condition on I2C Bus
*/
void I2CStop()
{
	PEN = 1;         /* Stop condition enabled */
	while(PEN);      /* Wait for stop condition to finish */
                     /* PEN automatically cleared by hardware */
}

/*
Function: I2CRestart
Return:
Arguments:
Description: Sends a repeated start condition on I2C Bus
*/
void I2CRestart()
{
	RSEN = 1;        /* Repeated start enabled */
	while(RSEN);     /* wait for condition to finish */
}

/*
Function: I2CAck
Return:
Arguments:
Description: Generates acknowledge for a transfer
*/
void I2CAck()
{
	ACKDT = 0;       /* Acknowledge data bit, 0 = ACK */
	ACKEN = 1;       /* Ack data enabled */
	while(ACKEN);    /* wait for ack data to send on bus */
}

/*
Function: I2CNck
Return:
Arguments:
Description: Generates Not-acknowledge for a transfer
*/
void I2CNak()
{
	ACKDT = 1;       /* Acknowledge data bit, 1 = NAK */
	ACKEN = 1;       /* Ack data enabled */
	while(ACKEN);    /* wait for ack data to send on bus */
}

/*
Function: I2CWait
Return:
Arguments:
Description: wait for transfer to finish
*/
void I2CWait()
{
	while ((SSPCON2 & 0x1F ) || ( SSPSTAT & 0x04 ) );
    /* wait for any pending transfer */
}

/*
Function: I2CSend
Return:
Arguments: dat - 8-bit data to be sent on bus
           data can be either address/data byte
Description: Send 8-bit data on I2C bus
*/
void I2CSend(unsigned char dat)
{
	SSPBUF = dat;    /* Move data to SSPBUF */
	while(BF);       /* wait till complete data is sent from buffer */
	I2CWait();       /* wait for any pending transfer */
}

/*
Function: I2CRead
Return:    8-bit data read from I2C bus
Arguments:
Description: read 8-bit data from I2C bus
*/
unsigned char I2CRead(void)
{
	unsigned char temp;
/* Reception works if transfer is initiated in read mode */
	RCEN = 1;        /* Enable data reception */
	while(!BF);      /* wait for buffer full */
	temp = SSPBUF;   /* Read serial buffer and store in temp register */
	I2CWait();       /* wait to check any pending transfer */
	return temp;     /* Return the read data from bus */
}

void main()
{
	/* Buffer where we will read/write our data */
	unsigned char I2CData[] = {0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x09, 0x00};
	unsigned char i;
	/* Initialize I2C Port */
	I2CInit();
	/* Send Start condition */
	I2CStart();
	/* Send DS1307 slave address with write operation */
	I2CSend(0xD0);
	/* Send subaddress 0x00, we are writing to this location */
	I2CSend(0x00);

	/* Loop to write 8 bytes */
	for (i = 0; i < 8; i++) {
		/* send I2C data one by one */
		I2CSend(I2CInitval[i]);
	}

	/* Send a stop condition - as transfer finishes */
	I2CStop();

	/* We will now read data from DS1307 */
	/* Reading for a memory based device always starts with a dummy write */
	/* Send a start condition */
	I2CStart();
	/* Send slave address with write */
	I2CSend(0xD0);
	/* Send address for dummy write operation */
	/* this address is actually where we are going to read from */
	I2CSend(0x00);

	/* Send a repeated start, after a dummy write to start reading */
	I2CRestart();
	/* send slave address with read bit set */
	I2CSend(0xD1);
	/* Loop to read 8 bytes from I2C slave */
	for (i = 8; i > 0; i--) {
		/* read a byte */
		I2CData[i] = I2CRead();
		/* ACK if its not the last byte to read */
		/* if its the last byte then send a NAK */
		if (i - 1)
			I2CAck();
		else
			I2CNak();
	}
	/* Send stop */
	I2CStop();
	/* end of program */
	while(1);
}
	