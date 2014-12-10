#include<htc.h>
 
 #define uc unsigned char
#define databits PORTD
#define en RB7
#define rs RB6
void lcdcmd(unsigned int value);
void lcddata(unsigned int value);
void display(uc *p);
void delay(unsigned int d); 

void str_data(uc value);
void uart_init(void);  
void TX(unsigned char TX_BYTE);  
void TXS(uc *s);
int ii=0,gg=0;
unsigned char qq,hh,ff,TT,_SMS=0,OF=0,ON=0,MSG=0;
unsigned char AA[13],b[20],c[20],d[20],bb[20];
unsigned char aa[13] = {0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff};
unsigned char serial_chk =0;
int intrf=0;
char test[5] = {'h','e','l','o'};
char GenImg[12] = { 0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x03, 0x01, 0x00, 0x05 };
/************************************************/
 
void main()
{
TRISB=0X00; 
TRISD=0x00; 
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
//TXS(GenImg);
TX('A');
delay(1500);
/*
if(aa[9]==0x00)
{
lcdcmd(0x01);
delay(10);
display("  success  ");
}
else if(aa[9]==0x01)
{
lcdcmd(0x01);
delay(10);
display("  error  ");
}
else if(aa[9]==0x02)
{
lcdcmd(0x01);
delay(10);
display("  no finger  ");
}
else if(aa[9]==0x03)
{
lcdcmd(0x01);
delay(10);
display("  fail  ");
}
else
{
lcdcmd(0x01);
delay(10);
display("  com error  ");
}
*/
delay(1500);
} 




//*********************************************


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
lcdcmd(0x01);
lcddata(aa[ii]);
ii++;

}

}

void uart_init(void)
{
TRISC7 =1;
TRISC6 =0;
BRGH=1;
SPBRG = 20;
 
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




//**************************************************




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
databits=value;
rs=0;
en=1;
delay(1);
en=0;
return;
}


void lcddata(unsigned int value)
{
databits=value;
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
