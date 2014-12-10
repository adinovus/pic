#include <htc.h>

#define LCDPORT PORTD
#define LCD_PORT_DIRECTION TRISD
#define LCD_CON_DIRECTION TRISB
#define rs RD2
#define en  RD3

#define IRconv  RB0
#define IRpiston11  RB1
#define IRpiston12  RB2
#define IRpiston21  RB3
#define IRpiston22  RB4
#define IRrack1  RB5
#define IRrack2  RB6
#define IRrack3  RB7
#define IRrack4  RE0
#define IRconv_position1  RE1
#define IRconv_position2  RE2


#define up_down_mot1 RD0
#define up_down_mot2 RD1
#define Piston21 RC0
#define Piston22 RC1
#define Piston11 RC2
#define Piston12 RC3

#define Piston1_mov1 RC4
#define Piston1_mov2 RC5
#define Piston2_mov1 RC6
#define Piston2_mov2 RC7
#define conv_mot RA4

#define  sw1 RA0
#define sw2 RA1
#define sw3 RA2
#define  sw4 RA3

  
void IO_inti()
{
LCD_PORT_DIRECTION=0;
LCD_CON_DIRECTION =0;
 
}
 
 
/************** LCD COMMAND SEND *****************/
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
delay(1);
en=0;
temp=value<<4;				//Left Shift Byte Four Times
temp&=0xf0;
LCDPORT&=0x0f;         	// Make No Affect on 0ther Port Pins
LCDPORT|=temp;		
en=1;
delay(1);
en=0;
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
delay(1);
en=0;
temp=value<<4;				//Left Shift Byte Four Times
temp&=0xf0;
LCDPORT&=0x0f;         	// Make No Affect on 0ther Port Pins
LCDPORT|=temp;		
en=1;
delay(1);
en=0;
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






void display(uc *p)
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
 







void delay(int itime)
{
int i,j;
for(i=0;i<itime;i++)
for(j=0;j<235;j++);
}



void main()
{

TRISB=0XFF;
TRISC=0X00;
TRISD=0X0F;
TRISA=0XFF;

lcd_init();
lcd_display("automatic shoe rack")
delay(2000);


while(1)
{
lcd_cmd(0x80);
lcd_display("put shoe on box")
lcd_cmd(0xc0);
lcd_display("/ press rack num")


if(IRconv==0)                     //checking for object in convair
{
  if(IRrack1==1)                 //checking rack 1
	{
    if(IRpiston11==0)
	{
	conv_mot==1;
	while(IRconv_position1);
	conv_mot==0;
	Piston1=1;
	Delay(1000);
	Piston1=0;
	}
	else
	{
	Piston1_mov1=1;
	Piston1_mov2=0;
	while(IRpiston11);
	Piston1_mov1=0;
	Piston1_mov2=0;

	conv_mot==1;
	while(IRconv_position1);
	conv_mot==0;
	Piston1=1;
	Delay(1000);
	Piston1=0;
	}
	lcd_cmd(0x80);
	lcd_display("shoe on rack #1")
	
	}



else if(IRrack2==1)                        //checking rack 2
	{
    if(IRpiston11==0)
	{
	conv_mot==1;
	while(IRconv_position2);
	conv_mot==0;
	Piston1=1;
	Delay(1000);
	Piston1=0;
	}
	else
	{
	Piston1_mov1=0;
	Piston1_mov2=1;
	while(IRpiston11);
	Piston1_mov1=0;
	Piston1_mov2=0;

	conv_mot==1;
	while(IRconv_position2);
	conv_mot==0;
	Piston1=1;
	Delay(1000);
	Piston1=0;
	}

	lcd_cmd(0x80);
	lcd_display("shoe on rack #2")
	}
else if(IRrack3==1)          //checking rack 3
	{
	up_down_mot1=1;              //moving rack upwards for getting second row where shelf3 and 4 are located
	up_down_mot2=0;
	delay(500);
	up_down_mot1=0;
	up_down_mot2=0;

    if(IRpiston11==0)
	{
	conv_mot==1;
	while(IRconv_position1);
	conv_mot==0;
	Piston1=1;
	Delay(1000);
	Piston1=0;
	}
	else
	{
	Piston1_mov1=1;
	Piston1_mov2=0;
	while(IRpiston11);
	Piston1_mov1=0;
	Piston1_mov2=0;

	conv_mot==1;
	while(IRconv_position1);
	conv_mot==0;
	Piston1=1;
	Delay(1000);
	Piston1=0;
	}
	up_down_mot1=0;
	up_down_mot2=1;
	delay(500);
	up_down_mot1=0;
	up_down_mot2=0;


	lcd_cmd(0x80);
	lcd_display("shoe on rack #3")
	
	}



else if(IRrack4==1)                         //checking rack 4
	{
	up_down_mot1=1;
	up_down_mot2=0;
	delay(500);
	up_down_mot1=0;
	up_down_mot2=0;

    if(IRpiston11==0)
	{
	conv_mot==1;
	while(IRconv_position2);
	conv_mot==0;
	Piston1=1;
	Delay(1000);
	Piston1=0;
	}
	else
	{
	Piston1_mov1=0;
	Piston1_mov2=1;
	while(IRpiston11);
	Piston1_mov1=0;
	Piston1_mov2=0;

	conv_mot==1;
	while(IRconv_position2);
	conv_mot==0;
	Piston1=1;
	Delay(1000);
	Piston1=0;
	}
	
	up_down_mot1=0;
	up_down_mot2=1;
	delay(500);
	up_down_mot1=0;
	up_down_mot2=0;
	
	lcd_cmd(0x80);
	lcd_display("shoe on rack #4")
	}


}

else if(sw1==0)                             //switch 1 checking . If switch is pressed then retrieving the shoe from there
	{
		if(IRpiston21==0)                   
		{
		Piston2=1;
		Delay(1000);
		Piston2=0;
		conv_mot==1;
		Delay(2000);
		conv_mot==0;
		}
	else
	{
	Piston2_mov1=0;
	Piston2_mov2=1;
	while(IRpiston21);
	Piston2_mov1=0;
	Piston2_mov2=0;

	Piston2=1;
	Delay(1000);
	Piston2=0;
	conv_mot==1;
	Delay(2000);
	conv_mot==0;
	}

	lcd_cmd(0x80);
	lcd_display("pls take shoe")
	delay(2000);
	}



//////switch2 press/////

else if(sw2==0)
	{
		if(IRpiston22==0)
		{
		Piston2=1;
		Delay(1000);
		Piston2=0;
		conv_mot==1;
		Delay(2000);
		conv_mot==0;
		}
	else
	{
	Piston2_mov1=1;
	Piston2_mov2=0;
	while(IRpiston22);
	Piston2_mov1=0;
	Piston2_mov2=0;

	Piston2=1;
	Delay(1000);
	Piston2=0;
	conv_mot==1;
	Delay(2000);
	conv_mot==0;
	}
		lcd_cmd(0x80);
	lcd_display("pls take shoe")
	delay(2000);
	}


//////switch3 press/////


else if(sw3==0)
	{
		
		up_down_mot1=1;
		up_down_mot2=0;
		delay(500);
		up_down_mot1=0;
		up_down_mot2=0;
		if(IRpiston21==0)
		{
		Piston2=1;
		Delay(1000);
		Piston2=0;
		conv_mot==1;
		Delay(2000);
		conv_mot==0;
		}
	else
	{
	Piston2_mov1=0;
	Piston2_mov2=1;
	while(IRpiston21);
	Piston2_mov1=0;
	Piston2_mov2=0;

	Piston2=1;
	Delay(1000);
	Piston2=0;
	conv_mot==1;
	Delay(2000);
	conv_mot==0;
	
	up_down_mot1=0;
	up_down_mot2=1;
	delay(500);
	up_down_mot1=0;
	up_down_mot2=0;
	}


	lcd_cmd(0x80);
	lcd_display("pls take shoe")
	delay(2000);
	}
else if(sw4==0)
	{
		
		up_down_mot1=1;
		up_down_mot2=0;
		delay(500);
		up_down_mot1=0;
		up_down_mot2=0;
		if(IRpiston22==0)
		{
		Piston2=1;
		Delay(1000);
		Piston2=0;
		conv_mot==1;
		Delay(2000);
		conv_mot==0;
		}
	else
	{
	Piston2_mov1=0;
	Piston2_mov2=1;
	while(IRpiston22);
	Piston2_mov1=0;
	Piston2_mov2=0;

	Piston2=1;
	Delay(1000);
	Piston2=0;
	conv_mot==1;
	Delay(2000);
	conv_mot==0;
	
	up_down_mot1=0;
	up_down_mot2=1;
	delay(500);
	up_down_mot1=0;
	up_down_mot2=0;
	}

	lcd_cmd(0x80);
	lcd_display("pls take shoe")
	delay(2000);
	}


}



}


