#include <htc.h>
#include<pic.h>
#include"lcd.h"



//io pins declaration

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
#define Piston1 RC0
#define Piston2 RC1

#define Piston1_mov1 RC4
#define Piston1_mov2 RC5
#define Piston2_mov1 RC6
#define Piston2_mov2 RC7
#define conv_mot RC2

#define  sw1 RA0
#define sw2 RA1
#define sw3 RA2
#define  sw4 RA3



void main()
{

TRISB=0XFF;
TRISC=0X00;
TRISD=0X00;
TRISA=0XFF;
TRISE=0X07;
PORTC=0x00;
ADCON1 = 0x07; 
delay(100);
lcd_init();
lcd_init();
lcdcmd(0x80);
display(" auto shoe rack ");
delay(1000);
while(1)
{
lcdcmd(0x80);
display("put shoe on box ");
lcdcmd(0xc0);
display("or give rack num");

///////////////////////////////////////////////

if(IRconv==1)                     //checking for object in convair
{
lcdcmd(0x01);
display("   pls wait   ");
		
  if(IRrack1==0)                 //checking rack 1
	{
    if(IRpiston11==1)
	{
	conv_mot=1;
	while(IRconv_position1==0);
	conv_mot=0;
	Piston1=1;
	delay(1000);
	Piston1=0;
	}
	else
	{
	Piston1_mov1=1;
	Piston1_mov2=0;
	while(IRpiston11==0);
	Piston1_mov1=0;
	Piston1_mov2=0;

	conv_mot=1;
	while(IRconv_position1==0);
	conv_mot=0;
	Piston1=1;
	delay(1000);
	Piston1=0;
	}
	lcdcmd(0x80);
	display("shoe on rack #1");
delay(3000);
	
	}



else if(IRrack2==0)                        //checking rack 2
	{
    if(IRpiston11==1)
	{
	conv_mot=1;
	while(IRconv_position2==0);
	conv_mot=0;
	Piston1=1;
	delay(1000);
	Piston1=0;
	}
	else
	{
	Piston1_mov1=0;
	Piston1_mov2=1;
	while(IRpiston11==0);
	Piston1_mov1=0;
	Piston1_mov2=0;

	conv_mot=1;
	while(IRconv_position2==0);
	conv_mot=0;
	Piston1=1;
	delay(1000);
	Piston1=0;
	}

	lcdcmd(0x80);
	display("shoe on rack #2");
	
delay(3000);
}
else if(IRrack3==0)          //checking rack 3
	{
	up_down_mot1=1;              //moving rack upwards for getting second row where shelf3 and 4 are located
	up_down_mot2=0;
	delay(15000);
	up_down_mot1=0;
	up_down_mot2=0;

    if(IRpiston11==1)
	{
	conv_mot=1;
	while(IRconv_position1);
	conv_mot=0;
	Piston1=1;
	delay(1000);
	Piston1=0;
	}
	else
	{
	Piston1_mov1=1;
	Piston1_mov2=0;
	while(IRpiston11==0);
	Piston1_mov1=0;
	Piston1_mov2=0;

	conv_mot=1;
	while(IRconv_position1==0);
	conv_mot=0;
	Piston1=1;
	delay(1000);
	Piston1=0;
	}
	up_down_mot1=0;
	up_down_mot2=1;
	delay(15000);
	up_down_mot1=0;
	up_down_mot2=0;


	lcdcmd(0x80);
	display("shoe on rack #3");
delay(3000);
	
	}



else if(IRrack4==0)                         //checking rack 4
	{
	up_down_mot1=1;
	up_down_mot2=0;
	delay(15000);
	up_down_mot1=0;
	up_down_mot2=0;

    if(IRpiston11==1)
	{
	conv_mot=1;
	while(IRconv_position2==0);
	conv_mot=0;
	Piston1=1;
	delay(1000);
	Piston1=0;
	}
	else
	{
	Piston1_mov1=0;
	Piston1_mov2=1;
	while(IRpiston11==0);
	Piston1_mov1=0;
	Piston1_mov2=0;

	conv_mot=1;
	while(IRconv_position2==0);
	conv_mot=0;
	Piston1=1;
	delay(1000);
	Piston1=0;
	}
	
	up_down_mot1=0;
	up_down_mot2=1;
	delay(15000);
	up_down_mot1=0;
	up_down_mot2=0;
	
	lcdcmd(0x80);
	display("shoe on rack #4");
delay(3000);
	}
else
{
	lcdcmd(0x01);
	display("sorry no space");
	delay(3000);

}


}

else if(sw1==0)                             //switch 1 checking . If switch is pressed then retrieving the shoe from there
	{

  if(IRrack1==0)                 //checking rack 1
	{
	lcdcmd(0x01);
	display("rack 1 is emty");
	delay(2000);
	}
	else
	{
	lcdcmd(0x01);
	display("getting rack 1");
		if(IRpiston21==1)                   
		{
		Piston2=1;
		delay(1000);
		Piston2=0;
		conv_mot=1;
		delay(8000);
		conv_mot=0;
		}
	else
	{
	Piston2_mov1=0;
	Piston2_mov2=1;
	while(IRpiston21==0);
	Piston2_mov1=0;
	Piston2_mov2=0;

	Piston2=1;
	delay(1000);
	Piston2=0;
	conv_mot==1;
	delay(18000);
	conv_mot==0;
	}

	lcdcmd(0x80);
	display("pls take shoe");
	delay(3000);
	}
}



//////switch2 press/////

else if(sw2==0)
	{
  if(IRrack2==0)                 //checking rack 1
	{
	lcdcmd(0x01);
	display("rack 2 is emty");
	delay(3000);
	}
	else
	{
			lcdcmd(0x01);
		display("getting rack 2");
		if(IRpiston22==1)
		{
		Piston2=1;
		delay(1000);
		Piston2=0;
		conv_mot==1;
		delay(18000);
		conv_mot==0;
		}
	else
	{
	Piston2_mov1=1;
	Piston2_mov2=0;
	while(IRpiston22==0);
	Piston2_mov1=0;
	Piston2_mov2=0;

	Piston2=1;
	delay(1000);
	Piston2=0;
	conv_mot==1;
	delay(18000);
	conv_mot==0;
	}
		lcdcmd(0x80);
	display("pls take shoe");
	delay(3000);
	}
}

//////switch3 press/////


else if(sw3==0)
	{
  if(IRrack3==0)                 //checking rack 1
	{
	lcdcmd(0x01);
	display("rack 3 is emty");
	delay(3000);
	}
	else
	{
		lcdcmd(0x01);
display("getting rack 3");	
		up_down_mot1=1;
		up_down_mot2=0;
		delay(15000);
		up_down_mot1=0;
		up_down_mot2=0;
		if(IRpiston21==1)
		{
		Piston2=1;
		delay(1000);
		Piston2=0;
		conv_mot==1;
		delay(18000);
		conv_mot==0;
		}
	else
	{
	Piston2_mov1=0;
	Piston2_mov2=1;
	while(IRpiston21==0);
	Piston2_mov1=0;
	Piston2_mov2=0;

	Piston2=1;
	delay(1000);
	Piston2=0;
	conv_mot==1;
	delay(18000);
	conv_mot==0;
	
	up_down_mot1=0;
	up_down_mot2=1;
	delay(15000);
	up_down_mot1=0;
	up_down_mot2=0;
	}


	lcdcmd(0x80);
	display("pls take shoe");
	delay(3000);
	}
}
else if(sw4==0)
	{
  if(IRrack4==0)                 //checking rack 1
	{
	lcdcmd(0x01);
	display("rack 4 is emty");
	delay(3000);
	}
	else
	{
		
	lcdcmd(0x01);
display("getting rack 4");
		up_down_mot1=1;
		up_down_mot2=0;
		delay(15000);
		up_down_mot1=0;
		up_down_mot2=0;
		if(IRpiston22==1)
		{
		Piston2=1;
		delay(1000);
		Piston2=0;
		conv_mot==1;
		delay(18000);
		conv_mot==0;
		}
	else
	{
	Piston2_mov1=0;
	Piston2_mov2=1;
	while(IRpiston22==0);
	Piston2_mov1=0;
	Piston2_mov2=0;

	Piston2=1;
	delay(1000);
	Piston2=0;
	conv_mot==1;
	delay(2000);
	conv_mot==0;
	
	up_down_mot1=0;
	up_down_mot2=1;
	delay(15000);
	up_down_mot1=0;
	up_down_mot2=0;
	}

	lcdcmd(0x80);
	display("pls take shoe");
	delay(8000);
	}
}
	else
	{
PORTC=0x00;
		}





}





}