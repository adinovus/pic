#include<htc.h>
#define top_level RC0
#define bottom_level RC1
#define reservoir RC2
#define moisture RC3
#define pump RD2
#define tap RD3
void water_level(void);
void delay (unsigned char y);

void main()
{

unsigned int i,j;
TRISC=0xff;
TRISD=0;
pump = 0;
tap=0;
while(1)
{

if (moisture==0)

{

	for(i=0;i<500;i++)
		{
		for(j=0;j<1500;j++)
			{
			water_level();
			tap = 1;
			}
		}
}
else
{
water_level();
tap=0;
}




}



}


void water_level(void)
{

if(bottom_level==0 && reservoir==1)

{
pump = 1;

}
if (bottom_level==1 && top_level==1)
{

pump = 0;

}

if(reservoir==0)

{
pump = 0;

}



}

