#include<pic.h>
#include<string.h>
		
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
display("  nimal  ");
lcdcmd(0xc0);
delay(10);
TXS("hello");
while(1);
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
	aa[ii]=RCREG;
lcddata(aa[ii]);
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
