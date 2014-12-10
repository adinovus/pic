#include<pic.h>
#include<string.h>
		
#define uc unsigned char
#define LCDPORT PORTB
#define en RB2
#define rs RB1
#define lock1 RD2
#define lock2 RD3
void str_data(uc value);
void uart_init(void);  
void TX(unsigned char TX_BYTE);  
void TXS(uc *s);
void delay(unsigned int d);

void Readfinger(void);
void storChar1(void);
void storChar2(void);
void StorTempl(void);
void errorDisplay(void);
void SrchFinger(void);



void Sendstring(char strng[],char length);

int ii=0,gg=0,i=0;;
unsigned char qq,hh,ff,TT,_SMS=0,OF=0,ON=0,MSG=0;
unsigned char AA[25],aa[50],b[20],c[20],d[20],bb[20];
unsigned char chk=0;

char GenImg[12] =   { 0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x03, 0x01, 0x00, 0x05 };
char Genchar1[13] = { 0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x04, 0x02, 0x01, 0x00, 0x08 };
char Genchar2[13] = { 0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x04, 0x02, 0x02, 0x00, 0x09 };
char Gentemplate[12] = { 0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x03, 0x05, 0x00, 0x09 };
char Rdvlidtempl[12] = { 0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x03, 0x1d, 0x00, 0x21 };
char Stortemplate[15] = { 0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x06, 0x06, 0x01, 0x00, 0x02,0x00,0x10 };
char Srchtemplate[17] = { 0xEF, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x08, 0x04, 0x01, 0x00, 0x01,0x00,0x3f ,0x00,0x4e};

int intrf=0;
void lcdcmd(unsigned int value);
void lcddata(unsigned int value);
void lcd_init_write(unsigned char a);
void display(uc *p);
void lcd_init(void);

void main()
{

TRISB=0X00; 
TRISD=0x00; 
TRISC=0X0F; 
PORTB=0X00;
lock1=0;
lock2=0;

uart_init();
//lcdcmd(0x38);
//delay(10);
//lcdcmd(0x0c);
//delay(10);
//lcdcmd(0x80);
//delay(10);
//lcdcmd(0x01);
//delay(10);
lcd_init();
if(RC0==0)
{
while(RC0==0);

StorTempl();

}

lcdcmd(0x80);
display("   biometric    ");
lcdcmd(0xc0);
display("door lock system");
delay(10);


delay(150);
while(1)
{

lcdcmd(0x80);
display("   biometric    ");
lcdcmd(0xc0);
display("door lock system");
delay(10);

//
//if(RC0==0)
//{
//while(RC0==0);
//
//StorTempl();
//
//}
//
//if(RC1==0)
//{
//while(RC1==0);
//
//Sendstring(Rdvlidtempl,12 );
//}



if(RC2==0)
{
lcdcmd(0x80);
display("  enter finger  ");
lcdcmd(0xC0);
display(" for close door ");
while(RC2==0);
SrchFinger();
if(chk==1)
{
lcdcmd(0x01);
lcdcmd(0x80);
display("door closing");
chk=0;
lock1=0;
lock2=1;
delay(1000);
lock1=0;
lock2=0;
}
else
lcdcmd(0x01);
lcdcmd(0x80);
display("access denied");
delay(1000);
}


if(RC1==0)
{
lcdcmd(0x80);
display("  enter finger  ");
lcdcmd(0xC0);
display(" for open door  ");
while(RC1==0);
SrchFinger();
if(chk==1)
{
lcdcmd(0x01);
lcdcmd(0x80);
display("door opening");
chk=0;
lock1=1;
lock2=0;
delay(1000);
lock1=0;
lock2=0;
}
else
{
lcdcmd(0x01);
lcdcmd(0x80);
display("access denied");
delay(1000);
}
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

if(OERR) // If over run error, then reset the receiver
		{
			CREN = 0;
			CREN = 1;
		}
int k;
RCIF =0;

if(RCREG==0xEF)
{
ii=0;
}
	aa[ii]=RCREG;
//lcdcmd(0xc0);
//lcddata(aa[ii]);
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


///////////////////***************************************************//////////////////

void Sendstring(char strng[],char length)
{
for(i=0;i<length;i++)
	{
	TX(strng[i]);
	}
delay(600);
}

//////////////////////////////finger print store to img buffer
void Readfinger(void)
{
Sendstring(GenImg,12);
}


//////////////////////////////generating char file from img buffer ,store to buff 1
void storChar1(void)
{
Sendstring(Genchar1,13);
}

//////////////////////////////generating char file from img buffer ,store to buff 2

void storChar2(void)
{
Sendstring(Genchar2,13);
}


//////////////////////////////storing template 
void StorTempl(void)
{
char addr1,addr2, chksum;
lcdcmd(0x01);
delay(10);
display("  place finger  ");
delay(2000);
Readfinger();
if(aa[0]==0xef && aa[9]==0x00)
{
	storChar1();
	if(aa[0]==0xef && aa[9]==0x00)
	{
	lcdcmd(0x01);
	delay(10);
	display("put finger again");
	delay(2000);
	Readfinger();
		if(aa[0]==0xef && aa[9]==0x00)
		{
		storChar2();
		if(aa[0]==0xef && aa[9]==0x00)
		{	
			Sendstring(Gentemplate,12);
					
			if(aa[0]==0xef && aa[9]==0x00)
				{
				Sendstring(Rdvlidtempl,12 );
				if(aa[0]==0xef && aa[9]==0x00)
				{
				addr1=aa[10];
				addr2=aa[11];
				chksum = 0x0e +addr1 +addr2;
				for(i=0;i<15;i++)
				{
					if(i==11)
					{
					TX(addr1);
					}
					else if(i==12)
					{
					TX(addr2);
					}
					else if(i==14)
					{
					TX(chksum);
					}
					
					else
					TX(Stortemplate[i]);
				
					}

					delay(300);
					if(aa[0]==0xef && aa[9]==0x00)
					{
					lcdcmd(0x01);
					delay(10);
					display("New finger added");
					}
					else
					errorDisplay();
					
				}


	

				}
							
				
				}
				else
				errorDisplay();
		}
	}
	else
	errorDisplay();

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
for(i=0;i<12;i++)
{
aa[ii]=0x00;

}



}


void SrchFinger(void)
{
Readfinger();
if(aa[0]==0xef && aa[9]==0x00)
	{
	storChar1();
if(aa[0]==0xef && aa[9]==0x00)
	{
	Readfinger();
		if(aa[0]==0xef && aa[9]==0x00)
		{
		storChar2();
		if(aa[0]==0xef && aa[9]==0x00)
		{	
			Sendstring(Gentemplate,12);
					
			if(aa[0]==0xef && aa[9]==0x00)
				{

				for(i=0;i<20;i++)
					{
					aa[i]=0x00;
					}
					lcdcmd(0x01);
					delay(10);
					display("  searching  ");
				Sendstring(Srchtemplate,17);
			//	Readfinger();


				delay(1000);
				if(aa[0]==0xef && aa[9]==0x00)
					{
					chk=1;
					lcdcmd(0x01);
					delay(10);
					display("  match found  ");
					}
				else if(aa[9]==0x09)
					{
					lcdcmd(0x01);
					delay(10);
					display("  no match  ");
					}
					else
					errorDisplay();
				}
		}
		}
	}
	}
}






void errorDisplay(void)
{
lcdcmd(0x01);
delay(10);
display(" error  ");
}


