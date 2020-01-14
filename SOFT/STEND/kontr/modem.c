//#include "main.h"
#include "stm8s.h"
#include "modem.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include "uart1.h"
#include "main.h"

char modemStatCnt0;

signed char modemPowerStatCnt;						//������� ������������ ���������� ������� ������
enum_modemPowerState modemPowerState=MPS_POWEROFF;	//��������� ������� ������
signed char net_l_cnt_up,net_l_cnt_down;			//�������� ������������ ���������� �����
short net_l_cnt_one, net_l_cnt_zero, net_l_cnt_one_temp; 	//�������� �������� ���������� �����
enum_modemLinkState modemLinkState=MLS_UNKNOWN;		//��������� ����������� � ���������� ������
enum_modemState modemState=MS_UNKNOWN;				//��������� ������
short modemNotReadyCnt;								//������� ���������� ��������� ������

signed char modemDrvPowerStartCnt=0;				//������� 100��-���������� �� ��������� ������� 
signed short modemDrvInitStepCnt=0;					//������� 100��-����� ������������� ������
signed short modemDrvTextSMSSendStepCnt=0;			//������� 100��-����� �������� ���������� ���
signed short modemDrvPDUSMSSendStepCnt=0;			//������� 100��-����� �������� PDU ���
signed short modemDrvPowerDownStepCnt=0;			//������� ����� �� ���������� �������
signed short modemDrvWatchDogCnt;					//������� ������ ��������� ����������� ������
char *phoneNumberForSMS;										//��������� �� ������ � ������� �������� ��������� ���
char *textSMS;																//��������� �� ������ � ������� SMS
@near char textToSendSMS[200];								//������ � ������� SMS
@near char numberToSendSMS[20];								//������ � ������� �������� �������� ���
@near char numberToSendSMS_[20];							//��������������� ������ � ������� �������� �������� ���
@near char textToSendPDUSMS[70];					//������ � ������� PDU SMS
@near char buferHeadToSendPDUSMS[30];				//����� � ������� ������ PDU
@near char buferBodyToSendPDUSMS[350];				//����� � ����� ������ PDU
@near char buferBodyToSendPDUSMS__[100];			//����� � ����� ������ PDU
@near short lenPDUSMS;													//����� ������ PDU 
@near char ptrTemp[30];
@near char russianText[70];							//����� ��� ���������������� �������� ������
@near char tempRussianText[90];						//����� ��� ������������� �������� ������
@near struct 										//���� ��� �������� ���
	{
	char text[80];
	char number[11];
	char mode;
	char dummy[8];
	} smsFifo[10];
@near char smsFifoWrPtr;										//��������� �� ������ ���� ��� ������
@near char smsFifoRdPtr;										//��������� �� ������ ���� ��� ������
@near char tempStr[30];
	
//-----------------------------------------------
void modem_gpio_init(void)
{
//������ ������� ������ - ���� � ���������
GPIOE->DDR&=~(1<<6);		
GPIOE->CR1|=(1<<6);		
GPIOE->CR2&=~(1<<6);
GPIOE->ODR&=~(1<<6);	

//������ ���� ������ - ���� � ���������
GPIOE->DDR&=~(1<<7);		
GPIOE->CR1|=(1<<7);		
GPIOE->CR2&=~(1<<7);
GPIOE->ODR&=~(1<<7);

//���������� ������� ������ - �����
GPIOD->DDR|=(1<<0);		
GPIOD->CR1|=(1<<0);		
GPIOD->CR2&=~(1<<0);
GPIOD->ODR&=~(1<<0);

//���������� �������� ������ - �����
GPIOA->DDR|=(1<<3);		
GPIOA->CR1|=(1<<3);		
GPIOA->CR2&=~(1<<3);
GPIOA->ODR&=~(1<<3);
}

//-----------------------------------------------
//������ �������� ��������� ������
void modem_stat_drv(void)
{
signed short temp_SS;
bool net_l,net_l_old;
  
if(modemStatCnt0<10)
	{
    modemStatCnt0++;
    if(modemStatCnt0>=10)
		{
		modemStatCnt0=0;
		
		if(!(GPIOE->IDR&(1<<6)))//���� ��������� POWER �����
			{
			if(modemPowerStatCnt<5)
				{
				modemPowerStatCnt++;	
				}
			else 
				{
				modemPowerState=MPS_POWERON;
				}
			}
		else //���� ��������� POWER �� �����
			{
			if(modemPowerStatCnt>0)
				{
				modemPowerStatCnt--;	
				}
			else 
				{
				modemPowerState=MPS_POWEROFF;
				}
			}
		}
    }

if(!(GPIOE->IDR&(1<<7))) //���� ��������� LINK �����
    {
    net_l_cnt_down=0;
    if(net_l_cnt_up<3)
		{
		net_l_cnt_up++;
		if(net_l_cnt_up==3)
			{
			if((net_l_cnt_one_temp>4) && (net_l_cnt_one_temp<8))
				{
				if((net_l_cnt_zero>70) && (net_l_cnt_zero<90))			modemLinkState=MLS_UNLINKED; 
				else if((net_l_cnt_zero>250) && (net_l_cnt_zero<350))	
					{
					if((modemLinkState!=MLS_PRELINKED)&&(modemLinkState!=MLS_LINKED))modemLinkState=MLS_PRELINKED; 
					else modemLinkState=MLS_LINKED;
					}
				else if((net_l_cnt_zero>25) && (net_l_cnt_zero<35))		modemLinkState=MLS_GPRS; 
				else 													modemLinkState=MLS_UNKNOWN;
				}
				
			net_l_cnt_zero=0;   
			}
		}
    if(net_l_cnt_one<1000)
		{
		net_l_cnt_one++;  
		}      
    }
else  //���� ��������� LINK �� �����
    {
    net_l_cnt_up=0; 
    if(net_l_cnt_down<3)
		{
		net_l_cnt_down++;
		if(net_l_cnt_down==3)
			{
			net_l_cnt_one_temp=net_l_cnt_one;
			net_l_cnt_one=0;   
			}
		}
    if(net_l_cnt_zero<1000)
		{
		net_l_cnt_zero++;  
		}
    }

if(modemPowerState==MPS_POWEROFF)
	{
	modemState=MS_POWEROFF;
	bINITIALIZED=0;
	}
else if(modemLinkState==MLS_UNLINKED)
	{
	modemState=MS_UNLINKED;
	bINITIALIZED=0;
	}
else if(modemLinkState==MLS_LINKED)
	{
	if(bINITIALIZED==0)modemState=MS_LINKED;
	else if(bINITIALIZED==1)modemState=MS_LINKED_INITIALIZED;
	}
else if(modemLinkState==MLS_GPRS)										modemState=MS_GPRS;
else 																	modemState=MS_UNKNOWN;



if(modemState!=MS_LINKED_INITIALIZED)
	{
	if(modemNotReadyCnt<6000)
		{
		modemNotReadyCnt++;
		if(modemNotReadyCnt>=6000)
			{
			modemDrvInitStepCnt=1;
			modemNotReadyCnt=0;			
			}
		}
	}
}

//-----------------------------------------------
void modem_drv(void)
{
disableInterrupts();

if(modemDrvPowerStartCnt<70)
	{
	modemDrvPowerStartCnt++;	
	}
else
	{
	if((modemState!=MS_LINKED)&&(modemState!=MS_LINKED_INITIALIZED))
		{
		//if(modemDrvInitStepCnt==0)modemDrvInitStepCnt=1;	
		}
	else 
		{
		if(modemDrvInitStepCnt==0)modemDrvInitStepCnt=26;	
			
		}
		
	if(modemDrvInitStepCnt)
		{
		if(modemDrvInitStepCnt==5)
			{
			GPIOD->ODR|=(1<<0);			//�����
			modemDrvInitStepCnt++;
			modemLinkState=MLS_UNLINKED;
			net_l_cnt_zero=0;
			net_l_cnt_up=0;
			}
			
		else if(modemDrvInitStepCnt==10)
			{
			GPIOD->ODR&=~(1<<0);		//����� ������
			modemDrvInitStepCnt++;
			}	

		else if(modemDrvInitStepCnt==15)
			{
			GPIOA->ODR|=(1<<3);			//����������� �� ���� ���������� �������� ������
			modemDrvInitStepCnt++;
			modemLinkState=MLS_UNLINKED;
			net_l_cnt_zero=0;
			net_l_cnt_up=0;
			}	
			
		else if(modemDrvInitStepCnt==25)
			{
			GPIOA->ODR&=~(1<<3);		//����� ����������� �� ���� ���������� �������� ������
			modemDrvInitStepCnt++;
			}

		else if(modemDrvInitStepCnt==30)
			{
			if(modemState==MS_LINKED)modemDrvInitStepCnt++;
			}

		else if(modemDrvInitStepCnt==31)
			{
			modemDrvInitStepCnt++;
			}

/*		else if(modemDrvInitStepCnt==32)
			{
			printf("AT\r\n");
			bOK=0;
			modemDrvInitStepCnt++;
			}
		else if(modemDrvInitStepCnt==33)
			{
			if(bOK)modemDrvInitStepCnt++;
			}*/

		else if(modemDrvInitStepCnt==35)
			{
			//printf("AT+COPS?\r\n");
			printf("ATE0\r\n");
			bOK=0;
			modemDrvInitStepCnt++;
			}

		else if(modemDrvInitStepCnt==36)
			{
			if(bOK)
				{
				printf("AT+CMGF=1\r\n");
				modemDrvInitStepCnt++;
				bOK=0;
				}
			}

		else if(modemDrvInitStepCnt==37)
			{
			if(bOK)
				{
				printf("AT+IFC=0, 0\r");
				modemDrvInitStepCnt++;
				bOK=0;
				}
			}
			
		else if(modemDrvInitStepCnt==38)
			{
			if(bOK)
				{
				printf("AT+CPBS=\"SM\"\r");
				modemDrvInitStepCnt++;
				bOK=0;
				}
			}

		else if(modemDrvInitStepCnt==39)
			{
			if(bOK)
				{
				printf("AT+CNMI=1,2,2,1,0\r");
				modemDrvInitStepCnt++;
				bOK=0;
				}				
			}

		else if(modemDrvInitStepCnt==40)
			{
			if(bOK)
				{
				//modemState=MS_LINKED_INITIALIZED;
				bINITIALIZED=1;
				modemDrvInitStepCnt=50;
				bOK=0;
				}
			}


		else
			{
			if(modemDrvInitStepCnt<50)	modemDrvInitStepCnt++;
			}
		}
		
	if(modemDrvTextSMSSendStepCnt)	//�������� ���������� ���
		{
		if(modemDrvWatchDogCnt==0)modemDrvWatchDogCnt=150;
		else 
			{
			if(modemDrvWatchDogCnt)
				{
				modemDrvWatchDogCnt--;	
				if(modemDrvWatchDogCnt==0)
					{
					modemDrvTextSMSSendStepCnt=0;	
					}
				}
			}			
		if(modemDrvTextSMSSendStepCnt==11)
			{
			printf("AT+CMGF=1\r");
			modemDrvTextSMSSendStepCnt++;
			}
		else if(modemDrvTextSMSSendStepCnt==21)
			{

			ptrTemp[0]='\0';
			strcat(ptrTemp,"AT+CMGS=\"");
			strcat(ptrTemp,numberToSendSMS);
			strcat(ptrTemp,"\"\r");
			printf(ptrTemp);			///*"AT + CMGS = \"" + numberToSendSMS +/*+79139294352*/ "\"\r"*/

			modemDrvTextSMSSendStepCnt++;
			}	
		else if(modemDrvTextSMSSendStepCnt==31)
			{
			//printf("PRIVET\r");
			printf(textToSendSMS);
			modemDrvTextSMSSendStepCnt++;
			}		
		else if(modemDrvTextSMSSendStepCnt==41)
			{
			printf("%c",(char)26);
			modemDrvTextSMSSendStepCnt=0;
			modemDrvWatchDogCnt=0;
			}				
		else
			{
			if(modemDrvTextSMSSendStepCnt<1000)	modemDrvTextSMSSendStepCnt++;
			}			
		}
		
	if(modemDrvPDUSMSSendStepCnt)	//�������� PDU ���
		{
		if(modemDrvWatchDogCnt==0)modemDrvWatchDogCnt=150;
		else 
			{
			if(modemDrvWatchDogCnt)
				{
				modemDrvWatchDogCnt--;	
				if(modemDrvWatchDogCnt==0)
					{
					modemDrvPDUSMSSendStepCnt=0;	
					}
				}
			}
		if(modemDrvPDUSMSSendStepCnt==11)
			{
			printf("AT+CMGF=0\r");
			bOK=0;
			modemDrvPDUSMSSendStepCnt++;
			}
		else if(modemDrvPDUSMSSendStepCnt==12)
			{
			if(bOK)
				{
				printf("AT+CMGS=%d\r",lenPDUSMS);
				bOK=0;
				modemDrvPDUSMSSendStepCnt++;
				}
			}	
		else if(modemDrvPDUSMSSendStepCnt==13)
			{
			if(bOK)
				{
				//printf("PRIVET\r");
				printf(buferHeadToSendPDUSMS);
				//printf(buferBodyToSendPDUSMS);
				//printf("A1K");
				memcpy(buferBodyToSendPDUSMS__,buferBodyToSendPDUSMS,75);
				buferBodyToSendPDUSMS__[75]='\0';
				printf(buferBodyToSendPDUSMS__);
				//printf("A2K");
				memcpy(buferBodyToSendPDUSMS__,&buferBodyToSendPDUSMS[75],75);
				buferBodyToSendPDUSMS__[75]='\0';
				printf(buferBodyToSendPDUSMS__);
				//printf("A3K");
				memcpy(buferBodyToSendPDUSMS__,&buferBodyToSendPDUSMS[150],75);
				buferBodyToSendPDUSMS__[75]='\0';
				printf(buferBodyToSendPDUSMS__);
				//printf("A4K");
				memcpy(buferBodyToSendPDUSMS__,&buferBodyToSendPDUSMS[225],75);
				buferBodyToSendPDUSMS__[75]='\0';
				printf(buferBodyToSendPDUSMS__);/**/
				memcpy(buferBodyToSendPDUSMS__,&buferBodyToSendPDUSMS[300],50);
				buferBodyToSendPDUSMS__[50]='\0';
				printf(buferBodyToSendPDUSMS__);
				//printf("A5K");
				printf("%c",(char)26);
				modemDrvPDUSMSSendStepCnt++;
				bOK=0;
				}
			}
		else if(modemDrvPDUSMSSendStepCnt==14)
			{
			if(bOK||bERROR)
				{
				printf("AT+CMGF=1\r");
				modemDrvPDUSMSSendStepCnt++;
				}
			}
		else if(modemDrvPDUSMSSendStepCnt==25)
			{
			modemDrvPDUSMSSendStepCnt=0;
			bBUY_SMS=1;
			modemDrvWatchDogCnt=0;
			}			
		else
			{
			if(modemDrvPDUSMSSendStepCnt&&(modemDrvPDUSMSSendStepCnt<1000))	modemDrvPDUSMSSendStepCnt++;
			}			
		}

	if(modemDrvPowerDownStepCnt)	//������ ���������� �������
		{
			
		if(modemDrvWatchDogCnt==0)modemDrvWatchDogCnt=200;
		else 
			{
			if(modemDrvWatchDogCnt)
				{
				modemDrvWatchDogCnt--;	
				if(modemDrvWatchDogCnt==0)
					{
					//halt();	
					}
				}
			}	
			
		if(modemDrvPowerDownStepCnt==11)
			{
			printf("AT + CBC \r");
			bCBC=1;
			modemDrvPowerDownStepCnt++;
			}
		else if(modemDrvPowerDownStepCnt==12)
			{
			if(bCBC==2)
				{
				sprintf(tempRussianText,"���������� ������������ %s�, ������� ��������� �� ��������� ����",cbc_temp);
				modem_send_sms('p',MAIN_NUMBER,tempRussianText);
				bBUY_SMS=0;
				modemDrvPowerDownStepCnt++;
				bCBC=0;
				}
			}

		else if(modemDrvPowerDownStepCnt==13)
			{
			if(bBUY_SMS==1)
				{
				printf("AT + CPOWD = 1 \r");
				modemDrvPowerDownStepCnt++;
				}
			}
			
		else if(modemDrvPowerDownStepCnt==20)
			{
			modemDrvWatchDogCnt=0;
			GPIOD->ODR|=0b00111100;
			halt();
			}
		else if(modemDrvPowerDownStepCnt<1000)
			{
			modemDrvPowerDownStepCnt++;
			}
		}

	}
bOK=0;
bERROR=0;
enableInterrupts();
}

//-----------------------------------------------
void modem_send_sms(char mode, char *number, char *text)
{
strncpy((char*)&(smsFifo[smsFifoWrPtr].text),text,70);
strncpy((char*)&(smsFifo[smsFifoWrPtr].number),number,10);
smsFifo[smsFifoWrPtr].mode=mode;

smsFifoWrPtr++;
if(smsFifoWrPtr>=10)smsFifoWrPtr=0;

}

//-----------------------------------------------
void text2PDU(char* text, char* adr)
{
char temp_buf[2];
char i=0;
lenPDUSMS=0;
memset(adr,'\0',350);
strcpy(adr,"00");
while(1)
	{
	char c = text[i];
	if(c==0)break;
	else if(c<0x7f)
		{
		char temp[6];
		sprintf(temp,"%04X",(short)c);
		strcat(adr,temp);
		}
	else 	
		{
		char temp[6];
		sprintf(temp,"%04X",(short)c+0x0350);
		strcat(adr,temp);
		}
	lenPDUSMS+=2;
	i++;
	}
sprintf(temp_buf,"%02X",lenPDUSMS);
//strcat(adr,"04C1");
memcpy(adr,temp_buf,2);

lenPDUSMS+=13;

//return ret;
}

//-----------------------------------------------
void PDU2text(char* text)
{
//char temp_buf[2];
char i=0;
char ir=0;
//lenPDUSMS=0;
//strcpy(adr,"00");
while(1)
	{
	char c = text[i];
	char cc[2];
	char cccc[5];
	unsigned char temp;
	if(c==0)
		{
		russianText[ir]='\0';
		break;
		}
	memcpy(cc,&text[i],2);
	cc[2]='\0';
	memcpy(cccc,&text[i],4);
	cccc[4]='\0';
	if(strstr(cc,"00"))
		{
		temp= (unsigned char)strtol(cccc,NULL,16);
		}
	else if(strstr(cc,"04"))	
		{
		int tempI;
		tempI=strtol(cccc,NULL,16);
		tempI-=0x0350;
		temp= (unsigned char)(tempI);
		if((temp>=0xE0)&&(temp<=0xFF))temp-=0x20;
		}
	russianText[ir++]=tolower(temp);
	i+=4;
	}
}

//-----------------------------------------------
//����� ����������� ������ � ������ ���
char* find_number_in_text(char* text)
{
char* ptr_temp;
unsigned int len,firstDigit,lastDigit;
len=strlen(text);
firstDigit=strcspn(text,"1234567890");
if(len==firstDigit) return NULL;

ptr_temp=(char*)(text+firstDigit);
lastDigit=strspn(ptr_temp,"1234567890");
//number=(char*)ptr_temp+lastDigit-10;
return (char*)(ptr_temp+lastDigit-10);
}

//-----------------------------------------------
//����� �� ������� ������ � ��������������
char find_this_number_in_autorized(char* number)
{
char *ttt;
char temp_tt[15];

if(AUTH_NUMBER_FLAGS&0x01)
	{
	strncpy(temp_tt,MAIN_NUMBER,10);	
	ttt=strstr(temp_tt,number);	
	if(ttt) return 1;
	}
if(AUTH_NUMBER_FLAGS&0x02)
	{
	strncpy(temp_tt,AUTH_NUMBER_1,10);
	ttt=strstr(temp_tt,number);
	if(ttt) return 1;
	}
if(AUTH_NUMBER_FLAGS&0x04)
	{
	strncpy(temp_tt,AUTH_NUMBER_2,10);		
	ttt=strstr(temp_tt,number);
	if(ttt) return 1;
	}
if(AUTH_NUMBER_FLAGS&0x08)
	{
	strncpy(temp_tt,AUTH_NUMBER_3,10);		
	ttt=strstr(temp_tt,number);
	if(ttt) return 1;
	}
return 0;
	
}

//-----------------------------------------------
//����� �� ������� ��������� ����� ������
char find_empty_number_cell(void)
{
if((AUTH_NUMBER_FLAGS&0x02)==0) return 1;
if((AUTH_NUMBER_FLAGS&0x04)==0) return 2;
if((AUTH_NUMBER_FLAGS&0x08)==0) return 3;
return 0;
}

//-----------------------------------------------
//������� ���� �������� ���
void sms_fifo_drv(void)
{
if((/*(modemState!=MS_LINKED)&&*/(modemState!=MS_LINKED_INITIALIZED))||(modemDrvTextSMSSendStepCnt)||(modemDrvPDUSMSSendStepCnt)) return;

if(smsFifoRdPtr!=smsFifoWrPtr)
	{
	if(smsFifo[smsFifoRdPtr].mode=='t')
		{
		disableInterrupts();
		numberToSendSMS[0]='\0';
		strcat(numberToSendSMS,"+7");
		strcat(numberToSendSMS,smsFifo[smsFifoRdPtr].number);
		
		textToSendSMS[0]='\0';
		strcat(textToSendSMS,smsFifo[smsFifoRdPtr].text);
		strcat(textToSendSMS,"\r");
		
		modemDrvTextSMSSendStepCnt=1;
		enableInterrupts();
		}
	else if(smsFifo[smsFifoRdPtr].mode=='p')
		{
		disableInterrupts();
	
		numberToSendSMS_[0]=smsFifo[smsFifoRdPtr].number[0];
		numberToSendSMS_[1]='7';
		numberToSendSMS_[2]=smsFifo[smsFifoRdPtr].number[2];
		numberToSendSMS_[3]=smsFifo[smsFifoRdPtr].number[1];
		numberToSendSMS_[4]=smsFifo[smsFifoRdPtr].number[4];
		numberToSendSMS_[5]=smsFifo[smsFifoRdPtr].number[3];
		numberToSendSMS_[6]=smsFifo[smsFifoRdPtr].number[6];
		numberToSendSMS_[7]=smsFifo[smsFifoRdPtr].number[5];
		numberToSendSMS_[8]=smsFifo[smsFifoRdPtr].number[8];
		numberToSendSMS_[9]=smsFifo[smsFifoRdPtr].number[7];
		numberToSendSMS_[10]='F';
		numberToSendSMS_[11]=smsFifo[smsFifoRdPtr].number[9];	
		numberToSendSMS_[12]='\0';
	
		buferHeadToSendPDUSMS[0]='\0';
		strcat(buferHeadToSendPDUSMS,"0001000B91");
		strcat(buferHeadToSendPDUSMS,numberToSendSMS_);
		strcat(buferHeadToSendPDUSMS,"0008");
	
		text2PDU(smsFifo[smsFifoRdPtr].text,buferBodyToSendPDUSMS);
		
		modemDrvPDUSMSSendStepCnt=1;
		
		enableInterrupts();
		}
	smsFifoRdPtr++;
	if(smsFifoRdPtr>=10)smsFifoRdPtr=0;
	}
}

//-----------------------------------------------
//����� ����� � ������ ���
short find_number_fild_in_text(char* text)
{
char* ptr_temp;
unsigned int len,firstDigit,lastDigit;
len=strlen(text);
firstDigit=strcspn(text,"1234567890");
//if(len==firstDigit) return NULL;
ptr_temp=(char*)(text+firstDigit);

return (short)strtol(ptr_temp,NULL,0);
}



