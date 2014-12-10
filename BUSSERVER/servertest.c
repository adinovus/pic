#include<pic.h>
#include<string.h>
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
 		& LVP_OFF & CPD_OFF & DEBUG_OFF);
 		
 #define uc unsigned char
#define databits PORTB
#define en RD7
#define rs RD6
void str_data(uc value);
void uart_init(void);  
void TX(unsigned char TX_BYTE);  
void TXS(uc *s);
void delay(unsigned int d);
int ii=0,gg=0;
unsigned char qq,hh,ff,TT,_SMS=0,OF=0,ON=0,MSG=0;
unsigned char AA[25],aa[50],b[20],c[20],d[20],bb[20];
unsigned char serial_chk =0;
int intrf=0;
void lcdcmd(unsigned int value);
void lcddata(unsigned int value);
void display(uc *p);



void main()
{

TRISB=0X00; 
TRISD=0x0F; 
TRISC=0X0F; 
PORTB=0X00;
uart_init();
lcdcmd(0x38);
delay(10);
lcdcmd(0x0c);
delay(10);
lcdcmd(0x80);
delay(10);
lcdcmd(0x01);
delay(10);
display("  GEC Wayanad  ");
lcdcmd(0xc0);
delay(10);
display("  Dept. of ece  ");
delay(1500);
lcdcmd(0x01);
delay(10);
display("  Automatic bus");
lcdcmd(0xc0);
delay(10);
display("   fare System  ");
delay(2500);
lcdcmd(0x01);
while(1)
{
	if(intrf==1)
	{
		intrf=0;
		//todo
		lcdcmd(0x01);
		delay(10);
		lcdcmd(0x80);
		delay(10);
		for(gg=0;gg<32;gg++)
			{
				if(gg<=15)
				{if(aa[gg]!='&')
					{
					lcdcmd(0x80+gg);
					lcddata(aa[gg]);
						}
				}
				else if(gg>16)
					{
					if(aa[gg]!='&')
					{
					lcdcmd(0xc0+gg-17);
					lcddata(aa[gg]);
					}
			}

			if(aa[gg]=='&') break;
				}
				delay(4000);
				lcdcmd(0x01);
				delay(10);

				ii=0;
		
				}

lcdcmd(0x80);
delay(10);
display("     WELCOME    ");
lcdcmd(0xc0);
delay(10);
display(" pls enter card  ");

//***************rfid1*********************

if(RC0==0)
{
while(RC0==0);



lcdcmd(0x01);
delay(10);
display(" enter location ");
//delay(500);
while(RD0==1 && RD1==1 && RD2==1 && RD3==1);

	if(RD0==0)
	{
	while(RD0==0);
	TXS("$10010");
	//goto start;
	}
	if(RD1==0)
	{
	while(RD1==0);
	TXS("$10011");
	//goto start;
	}
	if(RD2==0)
	{
	while(RD2==0);
	TXS("$10012");
	//goto start;
	}
	if(RD3==0)
	{
	while(RD3==0);
	TXS("$10013");
	TX(13);
	//goto start;
	}
lcdcmd(0x80);
delay(10);
display("  request send  ");
lcdcmd(0xc0);
delay(10);
display(" *** waiting ***");
while(intrf==0);
}


//***************rfid2*********************



if(RC1==0)
{
while(RC1==0);



lcdcmd(0x01);
delay(10);
display(" enter location ");
//delay(500);
while(RD0==1 && RD1==1 && RD2==1 && RD3==1);

	if(RD0==0)
	{
	while(RD0==0);
	TXS("$10110");
	//goto start;
	}
	if(RD1==0)
	{
	while(RD1==0);
	TXS("$10111");
	//goto start;
	}
	if(RD2==0)
	{
	while(RD2==0);
	TXS("$10112");
	//goto start;
	}
	if(RD3==0)
	{
	while(RD3==0);
	TXS("$10113");
	
	//goto start;
	}
lcdcmd(0x80);
delay(10);
display("  request send  ");
lcdcmd(0xc0);
delay(10);
display(" *** waiting ***");;
while(intrf==0);

}


//***************rfid3*********************



if(RC2==0)
{
while(RC2==0);



lcdcmd(0x01);
delay(10);
display(" enter location ");
//delay(500);
while(RD0==1 && RD1==1 && RD2==1 && RD3==1);

	if(RD0==0)
	{
	while(RD0==0);
	TXS("$10210");
	//goto start;
	}
	if(RD1==0)
	{
	while(RD1==0);
	TXS("$10211");
	//goto start;
	}
	if(RD2==0)
	{
	while(RD2==0);
	TXS("$10212");
	//goto start;
	}
	if(RD3==0)
	{
	while(RD3==0);
	TXS("$10213");
	
	//goto start;
	}
lcdcmd(0x80);
delay(10);
display("  request send  ");
lcdcmd(0xc0);
delay(10);
display(" *** waiting ***");;
while(intrf==0);

}


//***************rfid4*********************


if(RC3==0)
{
while(RC3==0);



lcdcmd(0x01);
delay(10);
display(" enter location ");
//delay(500);
while(RD0==1 && RD1==1 && RD2==1 && RD3==1);

	if(RD0==0)
	{
	while(RD0==0);
	TXS("$10310");
	//goto start;
	}
	if(RD1==0)
	{
	while(RD1==0);
	TXS("$10311");
	//goto start;
	}
	if(RD2==0)
	{
	while(RD2==0);
	TXS("$10312");
	//goto start;
	}

	if(RD3==0)
	{
	while(RD3==0);
	TXS("$10313");
	//goto start;
	}
lcdcmd(0x80);
delay(10);
display("  request send   ");
lcdcmd(0xc0);
delay(10);
display(" *** waiting ***");
//delay(1000);

}

}



}



void TX(unsigned char TX_BYTE)
{
TXREG = TX_BYTE;
while(!TRMT);
TRMT=0;
return;
}


void TXS(uc *s)	
{
while (*s)
	{
	TX(*s);
	delay(1);
	s++;
	}
	return;
}

 
void interrupt receive(void)
{

if(RCIE && RCIF)
{
int k;
RCIF =0;
//if(ii<16)
	aa[ii]=RCREG;
//else
//	bb[ii]=RCREG;
if(aa[ii]=='&')
{
	intrf=1;
	aa[ii++]='\0';
}
ii++;
}

}

void uart_init(void)
{
TRISC7 =1;
TRISC6 =0;
SPBRG = 129; 
INTCON=0xc0;
RCIE =1;
TXSTA = 0x24;
RCSTA = 0X90;
return;
}




void str_data(uc value)         
{
qq=value;
AA[ii]=qq;
ii++;
}


void delay(unsigned int d) 
{
unsigned int k,h;
for(h=0;h<d;h++) 

{    
for(k=0;k<=250;k++)
{
}
}
return;
}




void lcdcmd(unsigned int value)
{
PORTB=value;
rs=0;
en=1;
delay(1);
en=0;
return;
}


void lcddata(unsigned int value)
{
PORTB=value;
rs=1;

en=1;
delay(1);
en=0;
return;
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

