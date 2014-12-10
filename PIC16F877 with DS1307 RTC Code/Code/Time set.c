#include"Includes.h"



void SetTime(void)
{
char* temp1;
char hr_set=0;
char min_set=0;
char sec_set=0;
char store=0;
char disply_locat=0;
char limit=0;

	if(menu==0)
	{	while(menu==0);

		temp1 = Get_DS1307_RTC_Time();
		WriteCommandToLCD(0x01);
		DisplayTimeToLCD(temp1);
		WriteCommandToLCD(0x81);
		WriteCommandToLCD(0x0e);
menustart:	while(set==1 && up==1 && down==1);
if(hr_set==0)
{
store=2;
disply_locat=0x81;
limit=12;
}
else if(min_set==0)
{
store=1;
disply_locat=0x84;
limit=60;
}
else if(sec_set==0)
{
store=0;
disply_locat=0x87;
limit=60;
}



			if(up==0)
			{
			while(up==0);
			temp1[store]=temp1[store]+1;
			if(temp1[store]>=limit)
				{
				temp1[store]=0;
				}
			WriteCommandToLCD(0x01);
			DisplayTimeToLCD(temp1);
			WriteCommandToLCD(disply_locat);
			WriteCommandToLCD(0x0e);
			goto menustart;
			}

			if(down==0)		
			{
				while(down==0);
				if(temp1[store]<=0)
				{
				temp1[store]=limit+1;
				}
				temp1[store]=temp1[store]-1;

				WriteCommandToLCD(0x01);
				DisplayTimeToLCD(temp1);
				WriteCommandToLCD(disply_locat);
				WriteCommandToLCD(0x0e);
				goto menustart;
			}
			if(set==0)
			{
				while(set==0);
				if(hr_set==0)
				{
				WriteCommandToLCD(0x84);
				WriteCommandToLCD(0x0e);
				hr_set=1;
				goto menustart;
				}
				else if(min_set==0)
				{
				WriteCommandToLCD(0x87);
				WriteCommandToLCD(0x0e);
				min_set=1;
				goto menustart;
				}
				else if(sec_set==0)
				{	
				sec_set=1;
		
				goto menustart;
				}	
				else 
				{
				hr_set=0;
				min_set=0;
				sec_set=0;
				Set_DS1307_RTC_Time(TwentyFourHoursMode, temp1[2], temp1[1], temp1[0]);
				WriteCommandToLCD(0xc1);
				WriteStringToLCD("time set ok");
				}	
			}



	//__delay_ms(1000);

	
	}



}
