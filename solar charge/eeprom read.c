#include<pic.h>
#include<string.h>
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
 		& LVP_OFF & CPD_OFF & DEBUG_OFF);
#define uc unsigned char
#define databits PORTB
#define en RD7
#define rs RD6
#define _XTAL_FREQ 20000000
#define TMR2PRESCALE 4
long freq;

unsigned int ADC_Read(unsigned char channel);
void adc_to_volt(unsigned char ad_value);
void ADC_Init();
void delay(unsigned int d);
void lcdcmd(unsigned int value);
void lcddata(unsigned int value);
void display(uc *p);

int PWM_Max_Duty();
PWM1_Init(long fre);
PWM1_Duty(unsigned int duty);
void PWM1_Start();
void PWM1_Stop();


float u;
void main()
{
unsigned char panel,battery;
TRISB=0X00; 
TRISD=0x0F; 
TRISC=0X00; 
PORTB=0X00;
ADC_Init();
PWM1_Init(5000);
lcdcmd(0x38);
delay(10);
lcdcmd(0x0C);
delay(10);
lcdcmd(0x80);
delay(10);
lcdcmd(0x01);
delay(10);
display("  SOLAR CHARGE  ");

delay(10);
lcdcmd(0xC0);
display("   CONTROLLER   ");
delay(1500);
//PWM1_Start();
while(1)
{


panel =ADC_Read(0);
lcdcmd(0x80);
delay(10);
display("panel   =");
adc_to_volt(panel);
lcddata('V');
delay(2500);
PWM1_Stop();
RC2=0;
battery =ADC_Read(1);
lcdcmd(0x80);
delay(10);
display("battery =");
adc_to_volt(battery);
lcddata('V');

if(battery<=136)
{
lcdcmd(0xC0);
delay(1);
display("**Battery low**");
PWM1_Start();
}
if(battery>136 && battery<210 )
{
lcdcmd(0xC0);
delay(1);
display("                ");
PWM1_Start();
}

if(battery>210 )
{
lcdcmd(0xC0);
delay(1);
display("  battery full  ");
PWM1_Stop();
RC2=0;
}





if(panel<210)
{
PWM1_Duty(1022);
}
if(panel<245 && panel>=210)
{
PWM1_Duty(950);
}
if(panel<255 && panel>=245)
{
PWM1_Duty(800);
}
delay(2500);
}

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
void ADC_Init()
{
  ADCON0 = 0x41; //ADC Module Turned ON and Clock is selected
  ADCON1 = 0x40; //All pins as Analog Input
                 //With reference voltages VDD and VSS
}

unsigned int ADC_Read(unsigned char channel)
{
  if(channel > 7) //If Invalid channel selected 
    return 0;     //Return 0

  ADCON0 &= 0xC5; //Clearing the Channel Selection Bits
  ADCON0 |= channel<<3; //Setting the required Bits
  delay(10); //Acquisition time to charge hold capacitor
  GO_nDONE = 1; //Initializes A/D Conversion
  while(GO_nDONE); //Wait for A/D Conversion to complete
 // return ((ADRESH<<8)+ADRESL); //Returns Result
return ((ADRESH);
}

void adc_to_volt(unsigned char ad_value)
{
unsigned int voltage,volt2;
voltage = ad_value * 60;
volt2 =voltage/10000;
lcdcmd(0x89);
delay(1);
lcddata(volt2+0x30);
delay(1);
voltage =voltage%10000;
volt2 =voltage/1000;
lcddata(volt2+0x30);
delay(1);
lcddata('.');
delay(1);
voltage =voltage%1000;
volt2 =voltage/100;
lcddata(volt2+0x30);
delay(1);
voltage =voltage%100;
volt2 =voltage/10;
lcddata(volt2+0x30);
delay(1);

}

//*********************pwm*************************



int PWM_Max_Duty()
{
  return(_XTAL_FREQ/(freq*TMR2PRESCALE);
}

PWM1_Init(long fre)
{
  PR2 = (_XTAL_FREQ/(freq*4*TMR2PRESCALE)) - 1;
  freq = fre;
}
PWM1_Duty(unsigned int duty)
{
  if(duty<1024)
  {
    duty = ((float)duty/1023)*PWM_Max_Duty();
    CCP1X = duty & 2;
    CCP1Y = duty & 1;
    CCPR1L = duty>>2;
  }
}

void PWM1_Start()
{
  CCP1M3 = 1;
  CCP1M2 = 1;
  TMR2ON = 1;
  TRISC2 = 0;
}

void PWM1_Stop()
{
  CCP1M3 = 0;
  CCP1M2 = 0;
}




