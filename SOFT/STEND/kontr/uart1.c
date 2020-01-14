#include "stm8s.h"
#include "main.h"
#include "uart1.h"
#include <string.h>
#include <stdlib.h>
#include "modem.h"
#include <stdio.h>
#include "lowlev.h"
#include "ds18b20.h"
#include "next_version.h"

//-----------------------------------------------
@near char rxBuffer1[RX_BUFFER_1_SIZE];				//�������� ����� UART1
@near char txBuffer1[TX_BUFFER_1_SIZE];				//���������� ����� UART1
@near short rx_wr_index1;							//��������� �� ��������� ����������� ����
@near short tx_wr_index1;							//��������� �� ��������� ������ ����������� ����
@near short tx_rd_index1;							//��������� �� ��������� ������������ �� ���� ����	
@near short tx_counter1;							//������� ������������� ����������� ����
@near char uart1_an_buffer[350];					//����� ��� ������� �������� �� UART1 �����
@near char bRXIN1;									//��������� �������� ������ � uart1_an_buffer
@near char incommingNumber[10];						//����� ��� �������� ������ ����������� ��������� ���
@near char incommingNumberToMain[10];				//����� ��� �������� ������ ����������� � �������
@near char incommingNumberUSSDRequ[10];				//����� ��� �������� ������ ���������� USSD ������


bool isFromMainNumberMess;							//����, ��������� ��� �� ����������� ��������
bool isFromAutorizedNumberMess;						//����, ��������� ��� �� ������ �� ����������� ������������ ���������
bool isFromNotAutorizedNumberMess;					//����, ��������� ��� �� ����������������� ��������
bool bOK;											//����� ������� "OK"
bool bERROR;										//����� ������� "ERROR"
bool bINITIALIZED;									//����� ���������������
char ussdRequ;										//��� USSD ������
char bCBC;												//����� ������� CBC

bool bBUY_SMS;											//���������� SMS ����
@near char cbcRequ;										//��� ������ ��������� ������������

@near char* number_temp;
@near short cell;
//-----------------------------------------------
//�������
@near char uart1_plazma;
@near char modem_plazma;
@near char modem_plazma1;
//char *ptr1;
//char *ptr2;
//char *digi;

//-----------------------------------------------
void uart1_init (void)
{
GPIOA->DDR&=~(1<<4);	
GPIOA->CR1|=(1<<4);
GPIOA->CR2&=~(1<<4);

GPIOA->DDR|=(1<<5);	
GPIOA->CR1|=(1<<5);
GPIOA->CR2|=(1<<5);
	
UART1->CR1&=~UART1_CR1_M;
//UART1->CR2|= 0x0c;
UART1->CR3|= (0<<4) & UART1_CR3_STOP;	
UART1->BRR2= 0x02;//0x03;
UART1->BRR1= 0x41;//0x68;
UART1->CR2|= UART3_CR2_TEN | UART1_CR2_REN | UART1_CR2_RIEN /*| UART1_CR2_TIEN*/;	
}

//***********************************************
@far @interrupt void UART1RxInterrupt (void) 
{
char rx_status1=UART1->SR;
char rx_data1=UART1->DR;
	
if (rx_status1 & (UART1_SR_RXNE))
	{
	if(rx_data1=='\r')
		{
		memset(uart1_an_buffer,'\0',200);
		memcpy(uart1_an_buffer,rxBuffer1,rx_wr_index1);
		bRXIN1=1;
		rx_wr_index1=0;
		}
	else if(rx_data1=='>') 
		{
		bOK=1;
		rx_wr_index1=0;	
		}
	else if(rx_data1!='\n') 
		{
		rxBuffer1[rx_wr_index1++]=rx_data1;


		
		if(rx_wr_index1>=RX_BUFFER_1_SIZE)
			{
			rx_wr_index1=0;	
			}
		}
		
		if(rx_wr_index1>=1)
			{
			cntAirSensorLineErrorLo=0;	
			}		
/*	cntAirSensorLineErrorHi=0;
	
	if(airSensorErrorStat==taesLHI)airSensorErrorStat=taesNORM;
	if(airSensorErrorStat==taesLLO)airSensorErrorStat=taesNORM;*/
	}
}

//***********************************************
@far @interrupt void UART1TxInterrupt (void) 
{
if (tx_counter1)
	{
	--tx_counter1;
	UART1->DR=txBuffer1[tx_rd_index1];
	if (++tx_rd_index1 == TX_BUFFER_1_SIZE) tx_rd_index1=0;
	}
else 
	{
	//bOUT_FREE=1;
	UART1->CR2&= ~UART1_CR2_TIEN;
	}
}

//-----------------------------------------------
void putchar(char c)
{
while (tx_counter1 == TX_BUFFER_1_SIZE);
disableInterrupts();
if (tx_counter1 || ((UART1->SR & UART1_SR_TXE)==0))
   {
   txBuffer1[tx_wr_index1]=c;
   if (++tx_wr_index1 == TX_BUFFER_1_SIZE) tx_wr_index1=0;
   ++tx_counter1;
   }
else UART1->DR=c;
enableInterrupts();
UART1->CR2|= UART1_CR2_TIEN;
}

//-----------------------------------------------
void uart1_in_an (void)
{
if(!bRXIN1)return;

disableInterrupts();
bRXIN1=0;

if(strstr(uart1_an_buffer,"OK"))
	{
	bOK=1;
	}
else if(strstr(uart1_an_buffer,"ERROR"))
	{
	bERROR=1;
	}

else if(strstr(uart1_an_buffer,"UNDER-VOLTAGE WARNNING"))
	{
	//tree_up(iAfterReset,0,0,0);
	//printf("AT + CPOWD = 1 \r");
	//printf("AT + CBC \r");
	modemDrvPowerDownStepCnt=1;
	}
	
else if(strstr(uart1_an_buffer,"CBC"))
	{
	char* ptr1;
	char* ptr2;
	//char volatile ptr_temp[15];
	ptr1=strstr(uart1_an_buffer,",");
	ptr1++;
	ptr2=strstr(ptr1,",");
	ptr2++;
	memset(cbc_temp,'\0',15);
	memcpy(cbc_temp,ptr2,1);
	memcpy(cbc_temp+1,".",1);
	memcpy(cbc_temp+2,ptr2+1,3);
	memset(cbc_temp1,'\0',15);
	memcpy(cbc_temp1,ptr2,4);
	
	cbcVoltage=(short)strtol(cbc_temp1,NULL,0);

//memset(cbc_temp,'\0',15);
//memcpy(cbc_temp,"7654",5);
	
	if(cbcRequ)
		{
		sprintf(tempRussianText,"���������� ������������ %d,%03d�",cbcVoltage/1000,cbcVoltage%1000);
	//sprintf(tempRussianText,"���������� ������������ %s�, ������� ��������� �� ��������� ����",ptr_temp);
		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
		cbcRequ=0;
		}
	//printf(ptr_temp);
	
	if(bCBC==1)bCBC=2;
	if(bCBC_SELF==1)bCBC_SELF=2;
	
	}
else if((strstr(uart1_an_buffer,"CUSD"))&&(ussdRequ))
	{
	char* ptr1;
	char* ptr2;
	ptr1=strstr(uart1_an_buffer,"\"");
	ptr1++;
	if((*(ptr1))=='0')
		{
		strncpy(tempRussianText,ptr1,80);
		PDU2text(tempRussianText);
		modem_send_sms('p',incommingNumberUSSDRequ,russianText);
		}
	else
		{	
		ptr2=strstr(ptr1,"\"");
		strncpy(tempRussianText,ptr1,/*(unsigned char)(ptr2-ptr1)*/40);
		tempRussianText[40/*(unsigned char)(ptr2-ptr1)*/]=0;
		modem_send_sms('p',incommingNumberUSSDRequ,tempRussianText);
		}
	if(ussdRequ)ussdRequ--;	
	}		
	
else if(strstr(uart1_an_buffer,"+CMT"))
	{
	char volatile ptr_temp[15];
	char volatile str_main_num[15];
	char *ptrptr;
	
	isFromMainNumberMess=0;
	isFromAutorizedNumberMess=0;
	isFromNotAutorizedNumberMess=0;
	
	ptrptr=strstr(uart1_an_buffer,"+7");
	memcpy(incommingNumber,ptrptr+2,10);
	
	memset(ptr_temp,'\0',15);
	memcpy(ptr_temp,&uart1_an_buffer[6],14);
	
	memset(str_main_num,'\0',15);
	memcpy(str_main_num,/*"9139294352"*/MAIN_NUMBER,10);
	
	//if(strcmp(ptr_temp,str_main_num)==0)
	if((strstr(incommingNumber,str_main_num)!=NULL)&&(AUTH_NUMBER_FLAGS&0x01))
		{
		//modem_plazma++;
		isFromMainNumberMess=1;
		}
		
	memset(str_main_num,'\0',15);
	memcpy(str_main_num,AUTH_NUMBER_1,10);
	
	if((strstr(incommingNumber,str_main_num)!=NULL)&&(AUTH_NUMBER_FLAGS&0x02))
		{
		//modem_plazma++;
		isFromAutorizedNumberMess=1;
		}		

	memset(str_main_num,'\0',15);
	memcpy(str_main_num,AUTH_NUMBER_2,10);
	
	if((strstr(incommingNumber,str_main_num)!=NULL)&&(AUTH_NUMBER_FLAGS&0x04))
		{
		//modem_plazma++;
		isFromAutorizedNumberMess=1;
		}		

	memset(str_main_num,'\0',15);
	memcpy(str_main_num,AUTH_NUMBER_3,10);
	
	if((strstr(incommingNumber,str_main_num)!=NULL)&&(AUTH_NUMBER_FLAGS&0x08))
		{
		//modem_plazma++;
		isFromAutorizedNumberMess=1;
		}

	if((isFromMainNumberMess==0)&&(isFromAutorizedNumberMess==0)) isFromNotAutorizedNumberMess=1;
	}	
else
	{
	//modem_plazma1++;
	if((isFromMainNumberMess)||(isFromAutorizedNumberMess)||(isFromNotAutorizedNumberMess))
		{
		modem_plazma++;
		PDU2text(uart1_an_buffer); 	//���������� ��� ��������� ��� ����� ������ PDU
		
		if(strstr(russianText,"����� �������")) //���������� ������� �����
			{
			//modem_plazma1++;
			memcpy(incommingNumberToMain,incommingNumber,10);
			modem_send_sms('p',incommingNumber,"��������� � �������� ��� 7 ���� ���������� �� ��������� ����������");/**/
			tree_up(iMn_number,0,0,0);
			rand_dig[0]=(rand()%10);
			rand_dig[1]=(rand()%10);
			rand_dig[2]=(rand()%10);
			rand_dig[3]=(rand()%10);
			rand_dig[4]=(rand()%10);
			rand_dig[5]=(rand()%10);
			rand_dig[6]=(rand()%10);
			sprintf(rand_dig_str,"%d%d%d%d%d%d%d",(int)rand_dig[0],(int)rand_dig[1],(int)rand_dig[2],(int)rand_dig[3],(int)rand_dig[4],(int)rand_dig[5],(int)rand_dig[6]);
			ret_ind(120,0);
			}
		else if(strstr(uart1_an_buffer,rand_dig_str/*"1234576"*/))
			{
			if(memcmp(incommingNumber,incommingNumberToMain,10)==0)
				{
				memcpy(MAIN_NUMBER,incommingNumberToMain,10);
				AUTH_NUMBER_FLAGS=0x01;
				modem_send_sms('p',MAIN_NUMBER,"��� ����� ���������� ��� �������");
				tree_down(0,0);
				ind=iMn;
				ret_ind(0,0);
				HUMAN_SET_EE=1;
				}
			}
		else if((strstr(russianText,"�����"))&&(isFromMainNumberMess)) //"���������� �����
			{
			number_temp=find_number_in_text(russianText);
			if(number_temp)
				{
				if(find_this_number_in_autorized(number_temp)) 
					{
					modem_send_sms('p',MAIN_NUMBER,"����� ����� ��� ���� � ������ �������������");
					}
				else if(find_empty_number_cell())
					{
					cell = find_empty_number_cell();
					if(cell==1)
						{
						memcpy(AUTH_NUMBER_1,number_temp,10);
						AUTH_NUMBER_FLAGS|=0b00000010;
						HUMAN_SET_EE=1;
						}
					else if(cell==2)
						{
						memcpy(AUTH_NUMBER_2,number_temp,10);
						AUTH_NUMBER_FLAGS|=0b00000100;							
						HUMAN_SET_EE=1;
						}
					else if(cell==3)
						{
						memcpy(AUTH_NUMBER_3,number_temp,10);
						AUTH_NUMBER_FLAGS|=0b00001000;							
						HUMAN_SET_EE=1;
						}
					sprintf(tempRussianText,"����� %s �������� � ������ (������ %d)",number_temp,cell);
					modem_send_sms('p',MAIN_NUMBER,tempRussianText);
					sprintf(tempRussianText,"��� ����� �������� � ������ ");
					modem_send_sms('p',number_temp,tempRussianText);

					}
				else
					{
					modem_send_sms('p',MAIN_NUMBER,"����� �� ��������, ������ ���������");
					}
				}
			
			//modem_plazma1++;
			//modem_send_sms('t',"9139294352",/*"OTPRAVTE 7 CIFR, VIVEDENNIH NA EKRAN USTROISTVA"*/"mama1");
			}
		else if((strstr(russianText,"������"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //������ ���������
			{
			
			sprintf(tempRussianText,"������:\n"); //�������\n
			//strcat(tempRussianText,"+7");
			strncat(tempRussianText,MAIN_NUMBER,10);
			strcat(tempRussianText," (��.)\n");
			//strcpy(tempRussianText,tempStr);
			//sprintf(tempStr,"%s (�����),",MAIN_NUMBER);
			//strcat(tempRussianText,tempStr);
			if(AUTH_NUMBER_FLAGS&0x02)
				{
				//strcat(tempRussianText,",\r\n+7");
				strncat(tempRussianText,AUTH_NUMBER_1,10);
				strcat(tempRussianText," (1)\n");	
				}
			if(AUTH_NUMBER_FLAGS&0x04)
				{
				//strcat(tempRussianText,",\r\n+7");
				strncat(tempRussianText,AUTH_NUMBER_2,10);
				strcat(tempRussianText," (2)\n");	
				}
			if(AUTH_NUMBER_FLAGS&0x08)
				{
				//strcat(tempRussianText,",\r\n+7");
				strncat(tempRussianText,AUTH_NUMBER_3,10);
				strcat(tempRussianText," (3)");	
				}
			modem_send_sms('p',incommingNumber,tempRussianText);
			}
			
		else if((strstr(russianText,"�������"))&&(isFromMainNumberMess)) //�������� �������
			{
			if(strstr(russianText,"���"))
				{
				if(AUTH_NUMBER_FLAGS&0x0e)
					{
					AUTH_NUMBER_FLAGS&=0x01;
				
					modem_send_sms('p',MAIN_NUMBER,"��� ������ ����� �������� �������");
					HUMAN_SET_EE=1;
					}
				else
					{
					modem_send_sms('p',MAIN_NUMBER,"� ������ ��� ������� ����� ��������");
					}
				}
			else if(find_number_in_text(russianText))
				{
				number_temp=find_number_in_text(russianText);
				if(find_this_number_in_autorized(number_temp))
					{
					char temp=find_this_number_in_autorized(number_temp);
					AUTH_NUMBER_FLAGS&=(char)(~(1<<temp));
					strcpy(tempRussianText,"����� ");
					strncat(tempRussianText,number_temp,10);
					strcat(tempRussianText," ������ �� ������ �������");
					modem_send_sms('p',MAIN_NUMBER,tempRussianText);
					HUMAN_SET_EE=1;
					}
				else modem_send_sms('p',MAIN_NUMBER,"������ ������ ��� � ������");
				}
			}

		else if((strstr(russianText,"�������"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //�������
			{
			if(MODE_EE==1)
				{
				sprintf(tempRussianText,"����� - �� ����\n������� %d��.\n����.�������� %d",(int)targetTemper,(int)MAX_POWER_EE);
				}
			if(MODE_EE==2)
				{
				sprintf(tempRussianText,"����� - �� �������\n������� %d��.\n����.�������� %d",(int)targetTemper,(int)MAX_POWER_EE);
				}
			if(MODE_EE==3)
				{
				sprintf(tempRussianText,"����� - �� �������\n������� ������� %d��.(������)\n����.�������� %d",(int)targetTemper,(int)MAX_POWER_EE);
				}				

			modem_send_sms('p',incommingNumber,tempRussianText);
			}

		else if((strstr(russianText,"�����"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //��������� ������ ������
			{
			if(strstr(russianText,"����"))
				{
				MODE_EE=1;
				modem_send_sms('p',incommingNumber,"���������� ����� ������������� �� ����������� ����");
				}
			else if(strstr(russianText,"������"))
				{
				MODE_EE=2;
				modem_send_sms('p',incommingNumber,"���������� ����� ������������� �� ����������� �������");
				}
			else
				{
				modem_send_sms('p',incommingNumber,"������� �� ����������");
				}				

//%			modem_send_sms('p',incommingNumber,tempRussianText);
			}
			
		else if((strstr(russianText,"����"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //��������� ����������� ����
			{
			short tempSS=find_number_fild_in_text(russianText);	
				
			if(MODE_EE!=1)
				{
				modem_send_sms('p',incommingNumber,"� ������� ������ ������ ���������� ����� ������� ����������");	
				}
			else if((tempSS<5)||(tempSS>85))
				{
				modem_send_sms('p',incommingNumber,"�������� ��������� �� ��������� �����������(5-85).������� ���������");
				}
			else
				{
				NECC_TEMPER_WATER_EE=tempSS;
				sprintf(tempRussianText,"����������� ���� ����������� �� %d��.�.",(int)NECC_TEMPER_WATER_EE);
				modem_send_sms('p',incommingNumber,tempRussianText);
				HUMAN_SET_EE=1;
				}					
			}

		else if((strstr(russianText,"������"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //��������� ����������� �������
			{
			short tempSS=find_number_fild_in_text(russianText);	
				
			if(MODE_EE!=2)
				{
				modem_send_sms('p',incommingNumber,"� ������� ������ ������ ���������� ����� ������� ����������");	
				}
			else if((tempSS<5)||(tempSS>35))
				{
				modem_send_sms('p',incommingNumber,"�������� ��������� �� ��������� �����������(5-35).������� ���������");
				}
			else
				{
				NECC_TEMPER_AIR_EE=tempSS;
				sprintf(tempRussianText,"����������� ������� ����������� �� %d��.�.",(int)NECC_TEMPER_AIR_EE);
				modem_send_sms('p',incommingNumber,tempRussianText);
				HUMAN_SET_EE=1;
				}					
			}

		else if((strstr(russianText,"������"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //������ ��������� �������
			{
			sprintf(tempStr,"T���� %3d��.� \n",(int)temperOfWater);
			if(waterSensorErrorStat == dsesNORM)strcpy(tempRussianText,tempStr);
			else strcpy(tempRussianText,"T���� ������.\n");
			sprintf(tempStr,"T������ %3d��.� \n",(int)temperOfAir);
			if(airSensorErrorStat == taesNORM)strcat(tempRussianText,tempStr);
			else strcat(tempRussianText,"T������� ������.\n");
			if(powerAlarm == paNORM) strcat(tempRussianText,"������� �����\n");
			else 					 strcat(tempRussianText,"������� ����.\n");
			if(outMode==omON)		 strcat(tempRussianText,"��������� ���.\n");
			else 					 strcat(tempRussianText,"��������� ����.\n");
			
			sprintf(tempStr,"������ %1d",(int)powerEnabled);
			strcat(tempRussianText,tempStr);
			modem_send_sms('p',incommingNumber,tempRussianText);
			}
		else if((strstr(russianText,"������"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //������ ������ ��������
			{
			sprintf(tempRussianText,"������ �� %d.%03d",VERSION,BUILD);
			modem_send_sms('p',incommingNumber,tempRussianText);			
			}
		else if((strstr(uart1_an_buffer,"USSD"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //������ ������ ��������
			{
			char* ppptr;
			ppptr=strstr(uart1_an_buffer,"USSD");
			ppptr+=4;
			//sprintf(tempRussianText,"ATD%s\r\n",ppptr);AT+CUSD=1,"#100#"
			sprintf(tempRussianText,"AT+CUSD=1,\"#100#\"\r\n",ppptr);//AT+CUSD=1,"#100#"
			printf(tempRussianText);
			//printf("ATD#100#;\r\n");
			memcpy(incommingNumberUSSDRequ,incommingNumber,10);
			ussdRequ=2;
			}
		else if((strstr(russianText,"�����������"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //������ ��������� ������������
			{
			printf("AT + CBC \r");
			cbcRequ=1;
			}
		else if((strstr(russianText,"�������"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //������ ������ ��������
			{
			sprintf(tempRussianText,"������ �� %d.%03d",VERSION,BUILD);
			modem_send_sms('p',incommingNumber,"������  0123456"/*tempRussianText*/);			
			}			


		isFromMainNumberMess=0;
		isFromAutorizedNumberMess=0;
		isFromNotAutorizedNumberMess=0;
		}
	}
enableInterrupts();
}

