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
int ii=0,gg;
unsigned char qq,hh,ff,TT,_SMS=0,OF=0,ON=0,MSG=0;
unsigned char AA[25],aa[50],b[20],c[20],d[20];
void lcdcmd(unsigned int value);
void lcddata(unsigned int value);
void display(uc *p);
float u;
void main()
{

TRISB=0X00; 
TRISD=0x0F; 
TRISC=0X0F; 
PORTB=0X00;
uart_init();
lcdcmd(0x38);
delay(10);
lcdcmd(0x0e);
delay(10);
lcdcmd(0x80);
delay(10);
lcdcmd(0x01);
delay(10);
display("WELCOME");
delay(500);
while(1)
{
start:
lcdcmd(0x01);
delay(10);
display("WELCOME");
delay(1000);
if(RC0==0)
{
L1:
lcdcmd(0x01);
delay(10);
display("enter the");
delay(500);
lcdcmd(0xC0);
delay(10);
display("location ");
delay(500);

if(RD0==0)
{
while(RD0==0);
TXS("$10010");
goto start;
}
if(RD1==0)
{
while(RD1==0);
TXS("$10011");
goto start;
}
if(RD2==0)
{
while(RD2==0);
TXS("$10012");
goto start;
}
if(RD3==0)
{
while(RD3==0);
TXS("$10013");
goto start;
}
goto L1;
}
if(RC1==0)
{
L2:
lcdcmd(0xC0);
delay(10);
display("enter the");
delay(500);

lcdcmd(0x01);
delay(10);
display("location ");
delay(500);
if(RD0==0)
{
while(RD0==0);
TXS("$10110");
goto start;
}
if(RD1==0)
{
while(RD1==0);
TXS("$10111");
goto start;
}
if(RD2==0)
{
while(RD2==0);
TXS("$10112");
goto start;
}
if(RD3==0)
{
while(RD3==0);
TXS("$10113");
goto start;
}
goto L2;
}

if(RC2==0)
{
L3:
lcdcmd(0xC0);
delay(10);
display("enter the");
delay(500);

lcdcmd(0x01);
delay(10);
display("location ");
delay(500);
if(RD0==0)
{
while(RD0==0);
TXS("$10310");
goto start;
}
if(RD1==0)
{
while(RD1==0);
TXS("$10311");
goto start;
}
if(RD2==0)
{
while(RD2==0);
TXS("$10312");
goto start;
}
if(RD3==0)
{
while(RD3==0);
TXS("$103#13");
goto start;
}
goto L3;
}

if(RC3==0)
{
L4:
lcdcmd(0x01);
delay(10);
display("enter the");
delay(500);

lcdcmd(0xC0);
delay(10);
display("location ");
delay(500);

if(RD0==0)
{
while(RD0==0);
TXS("$10410");
goto start;
}
if(RD1==0)
{
while(RD1==0);
TXS("$10411");
goto start;
}
if(RD2==0)
{
while(RD2==0);
TXS("$10412");
goto start;
}
if(RD3==0)
{
while(RD3==0);
TXS("$10413");
goto start;
}
goto L4;



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
RCIF =0;
aa[ii]=RCREG;

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





