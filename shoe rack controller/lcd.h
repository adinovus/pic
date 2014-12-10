#include <htc.h>

#define LCDPORT PORTD
#define rs RD3
#define en  RD2


void delay(int itime)
{
int i,j;
for(i=0;i<itime;i++)
for(j=0;j<235;j++);
return;
}


void lcdcmd(unsigned int value)
{
unsigned char temp;
//databits=value;
rs=0;
temp= value;
temp&=0xf0;
LCDPORT&=0x0f;
LCDPORT|=temp;
en=1;
delay(3);
en=0;
temp=value<<4;				//Left Shift Byte Four Times
temp&=0xf0;
LCDPORT&=0x0f;         	// Make No Affect on 0ther Port Pins
LCDPORT|=temp;		
en=1;
delay(3);
en=0;
delay(3);
return;
}


void lcddata(unsigned int value)
{
unsigned char temp;
//databits=value;
rs=1;
temp= value;
temp&=0xf0;
LCDPORT&=0x0f;
LCDPORT|=temp;
en=1;
delay(3);
en=0;
temp=value<<4;				//Left Shift Byte Four Times
temp&=0xf0;
LCDPORT&=0x0f;         	// Make No Affect on 0ther Port Pins
LCDPORT|=temp;		
en=1;
delay(3);
en=0;
delay(3);
return;
}

void lcd_init_write(unsigned char a)
{
                rs=0;
                LCDPORT=a;
                en=1;
                delay(10);
                en=0;
}


void lcd_init(void)
{
                delay(10);
                lcd_init_write(0x28);   //Special Sequence:Write Function Set.
                   delay(10);
//                lcd_init_write(0x30);              //Special Sequence:Write Function Set.
//                     delay(10);
//                lcd_init_write(0x30);              //Special Sequence:Write Function Set.
//                     delay(10);
//                lcd_init_write(0x20);   // 0x20 for 4-bit
//                     delay(10);
                lcdcmd(0x28);         //Display Off, Cursor Off, Blink Off
                     delay(10);
                lcdcmd(4);                                                // Clear Screen & Returns the Cursor Home
                     delay(10);
                lcdcmd(0x0c);       
                     delay(10);       
                lcdcmd(0x01);           //Inc cursor to the right when writing and don’t shift screen
                     delay(10);
                lcdcmd(1);
                     delay(10);
}






void display(unsigned char *p)
{
while (*p)
	{
	lcddata(*p);
	delay(1);
	p++;
	}
	return;
} 


/************************************************/
 




