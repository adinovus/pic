#include<pic.h>           
#include<stdio.h>
__CONFIG(0x3f72);  
//Select HS oscillator, BODEN, PWRT and disable others
 
#define EEPROM_CNTRL_IN  0xa0     // EEPROM address+write
#define EEPROM_CNTRL_OUT 0xa1     // EEPROM address+read
#define I2C_FREQ    100           // 100khz at 4Mhz
#define FOSC       10000          // 10Mhz==>10000Khz
#define BAUD_RATE   9.6           // 9600 Baudrate
#define BAUD_VAL   (char)(FOSC/ (16 * BAUD_RATE )) - 1;      //Calculation For 9600 Baudrate @10Mhz
 
unsigned char data[17]={"I2C Test Program"},i;
void I2CWrite(void);        
void WaitMSSP(void);
void I2CRead(void);
void i2c_init(void);
void serial_init(void);
void DelayMs(unsigned int);
void main()
{  
   DelayMs(100);         // Give delay for power up
   i2c_init();           // Initialize I2C
   serial_init();        // Setup serial port
   printf("\033[2J");  
   DelayMs(20);      
   I2CWrite();          // Sends the data to I2C EEPROM
   DelayMs(50);
   while(1)
   {
      I2CRead();        // Read back the data’s
      TXREG='\n';
      while(TXIF==0);  
      TXREG='\r';  
      DelayMs(500);
   }
}       
void I2CWrite()
{
   SEN=1;         // Send start bit
   WaitMSSP();    // wait for the operation to be finished
   SSPBUF=EEPROM_CNTRL_IN;//Send Slave address write command
   WaitMSSP();
   SSPBUF=0x00;   // Send the starting address to write
   WaitMSSP(); 
   for(i=0;i<16;i++)
   {
      SSPBUF=data[i];
      // A page contains 16 locations then 16 data’s are sent
      WaitMSSP();
   }
   PEN=1;         // Send stop bit
   WaitMSSP();       
}
void I2CRead()
{
   int y;
   SEN=1;         //Send start bit
   WaitMSSP();    //wait for the operation to be finished
   SSPBUF=EEPROM_CNTRL_IN;//Send Slave address write command
   WaitMSSP();  
   SSPBUF=0x00;    // Send the starting address to write
   WaitMSSP();          
   for(y=0;y<16;y++)
   {
      RSEN=1;      // Send re-start bit
      WaitMSSP();
      SSPBUF=EEPROM_CNTRL_OUT; // Slave address read command
      WaitMSSP();
      RCEN=1;      // Enable receive
      WaitMSSP();     
      ACKDT=1;     // Acknowledge data 1: NACK, 0: ACK
      ACKEN=1;     // Enable ACK to send
      PEN=1;       // Stop condition
      WaitMSSP();
      putch(SSPBUF);  // Send the received data to PC
      DelayMs(30);          
   }
   PEN=1;
   WaitMSSP();
}
void WaitMSSP()
{
   while(!SSPIF); // while SSPIF=0 stay here else exit the loop
   SSPIF=0;       // operation completed clear the flag
}
void i2c_init()
{
   TRISC3=1;      // Set up I2C lines by setting as input
   TRISC4=1;
   SSPCON=0x28; 
// SSP port, Master mode, clock = FOSC / (4 * (SSPADD+1))
   SSPADD=(FOSC / (4 * I2C_FREQ)) - 1; //clock 100khz
   SSPSTAT=80;    // Slew rate control disabled
}
void serial_init()
{
   TRISC6=1;       // Enable TX and RX pin for Serial port
   TRISC7=1;
   TXSTA=0x24;     // Transmit Enable
   SPBRG=BAUD_VAL; // 9600 baud at 10 MHz
   RCSTA=0x90;     // Usart Enable, Continus receive enable
   TXIF=1;         // Make TXREG register empty
}
void putch(unsigned char Data)  // transmit data
{
   while(TXIF==0);
   TXREG = Data;
}
void DelayMs(unsigned int Ms)
{
   int delay_cnst;
   while(Ms>0)
   {
      Ms--;
      for(delay_cnst = 0;delay_cnst <220;delay_cnst++);
   }
}
 
 