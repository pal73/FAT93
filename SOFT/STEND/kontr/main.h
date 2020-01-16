#define DS18B20PORT	GPIOD
#define DS18B20PIN	7

#define _FLASH_IAPSR FLASH->IAPSR
//-----------------------------------------------
//���������� � EEPROM
@eeprom extern char				MAIN_NUMBER[10];		//������ ��� �������� ������ �������
@eeprom extern char				AUTH_NUMBER_1[10];		//������ ��� �������� ������ ������� �������������� ��������
typedef enum {paNORM,paALARM} 	enumPowerAlarm; 
@eeprom extern char 			powerAlarm;				//������ ����������� ����
typedef enum {omOFF,omON} 		enumOutMode;
@eeprom extern enumOutMode		outMode;				//��������� �������-��������
@eeprom extern signed short		HUMAN_SET_EE; 			//������� �������� (0x1234)
@eeprom extern unsigned char 		TABLE_TIME_EE[7][5];	//������� ��������� ����� ��� ���� ���� ������, ��������� ����� 

@eeprom extern signed char	  	NECC_TEMPER_AIR_EE; 	//����������� ����������� �������
@eeprom extern signed char		NECC_TEMPER_WATER_EE;	//����������� ����������� ����
@eeprom extern signed char 		MODE_EE;				//����� ������ ���������� (1 - �� ����, 2 - �� �������, 3 - �� �������) 
@eeprom extern signed char 		MAX_POWER_EE;			//������������ �������� ���������� 
@eeprom extern signed char 		TABLE_TEMPER_EE[7][5];	//������� ������������� ����� ��� ���� ���� ������, ������������� �����  ���������� � 
@eeprom extern char				AUTH_NUMBER_2[10];		//������ ��� �������� ������ ������� �������������� ��������
@eeprom extern char				AUTH_NUMBER_3[10];		//������ ��� �������� ������ �������� �������������� ��������
@eeprom extern char				AUTH_NUMBER_FLAGS;		//������ ������ ������������ ������� ������������� ���������� �������
														//0b00000001 - ���������� ������� �������
														//0b00000010 - ���������� ������ ��������� �������
														//0b00000100 - ���������� ������ ��������� �������
														//0b00001000 - ���������� ������ ��������� �������
																										

//-----------------------------------------------
//������� ��������� ����� � ����������� �� ���������� �����
extern const char warmOrder[6][3];
extern char currRandom,fiksRandom;


//-----------------------------------------------
//��������� �����
//extern bool b100Hz,b10Hz,b5Hz,b2Hz,b1Hz;
extern char t0_cnt0,t0_cnt1,t0_cnt2,t0_cnt3,t0_cnt4;
extern signed short mainCnt;

//-----------------------------------------------
//���������
extern char ind_cnt;
extern char ind_outB[12];
extern char ind_outC[12];
extern char ind_outG[12];
extern const char ind_strob[12];
extern char dig[10];
extern char ind_out_[5];
extern const char DIGISYM[30];
//***********************************************
//Eiaeeaoey
typedef enum 
	{
	iMn,iSet,iSet_,iSetT,iDate_W,iSetTable,iSetTable_,iDeb,iTemperSet,iDefSet,
	iModem_deb,iMn_number,iAfterReset,
	iWater, iAir, iInterf
	} ind_enum;
	
typedef struct  
{
ind_enum i;
signed char s_i;
signed char s_i1;
signed char s_i2;
signed char i_s;
} struct_ind;
extern struct_ind a_ind,b_ind[10],c_ind;
extern signed char ind_pointer;

#define ind     		a_ind.i
#define sub_ind     	a_ind.s_i
#define sub_ind1     	a_ind.s_i1
#define sub_ind2     	a_ind.s_i2
#define index_set     	a_ind.i_s
extern bool zero_on;
extern bool bFL5,bFL2,bFL1,bFL_;
extern char led_ind_out1,led_ind_out2;


//-----------------------------------------------
//���������� �������
typedef enum {osOFF,osON}enum_out_stat;
extern enum_out_stat out_stat[3];
@near extern char optr_stat;
@near extern char optr_kontr_cnt;

#define butON	254
#define butM	253
#define butU	251
#define butD	247
#define butUD	243
#define butON_	126
#define butM_	125
#define butU_	123
#define butD_	119
#define butUD_	115
#define butMD_	117
#define butOND_	118
#define butMU_	121

//-----------------------------------------------
//�����������
extern signed char 	temperOfWater;
extern signed char	temperOfAir;
extern signed char 	aktualTemper;
extern signed char 	targetTemper;
typedef enum {taesNORM=0x55,taesHI=1,taesLO=0,taesLHI=3,taesLLO=2} enumTemperOfAirErrorStat; 
extern enumTemperOfAirErrorStat airSensorErrorStat,airSensorErrorStatOld;

//-----------------------------------------------
//�����
extern char buff_for_time[10];
extern char time_sec;
extern char time_min;
extern char time_hour;
extern char time_day_of_week;
extern char time_month;
extern char time_year;

//-----------------------------------------------
//������������� ��������
extern signed char powerNecc,powerNeccOld;
extern signed char powerNeccDelta;
extern signed char powerEnabled;

//-----------------------------------------------
//������
extern signed char beep_drv_cnt;

//-----------------------------------------------
//������
extern bool bERR;	//��������� ������
extern bool bWARN; //��������������

//-----------------------------------------------
//����������� ����� ���������� �������
extern char cntAirSensorLineErrorLo;
extern char cntAirSensorLineErrorHi;

//-----------------------------------------------
//��������� �������� ��� ���������� �������
typedef enum {wtaNORM,wtaCOOL,wtaHEAT}enumWaterTemperAlarm;
extern enumWaterTemperAlarm waterTemperAlarm, waterTemperAlarmOld;
extern @near signed char waterTemperAlarmCnt;

//-----------------------------------------------
//��������� ����� ��� ����������� �������� ������
extern @near char rand_dig[7];
extern @near char rand_dig_str[8];


//-----------------------------------------------
//������ �������� ����
@near extern short power_in_drv_off_cnt;
@near extern short power_in_drv_alarm_cnt;
typedef enum {psOFF/*=0x55*/,psON/*=0xAA*/} enumPowerStat; 
extern enumPowerStat powerStat;
//typedef enum {paNORM/*=0xcc*/,paALARM/*=0x33*/} enumPowerAlarm; 
//extern enumPowerAlarm powerAlarm;

//-----------------------------------------------
//���������� �� ������� ������������
#define POWER_OFF_HNDL_PERIOD_IN_SEC	60
extern @near short main_power_off_hndl_cnt;
extern @near char cbcSystemRequ;
extern @near char cbc_temp[15];							//����� ��� �������� ���������� � ���������� ������� ������
extern @near char cbc_temp1[15];							//����� ��� �������� ���������� � ���������� ������� ������
extern @near short cbcVoltage;								//���������� ������� � ������������
extern @near char bCBC_SELF;												//����� ������� CBC

//-----------------------------------------------
//�������� �����
extern @near char beepTestCnt;

//-----------------------------------------------
//�������� ���������
extern @near short ind_check_cnt;
extern @near short ind_check_cnt1;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
//�������
//extern char random_plazma;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

//-----------------------------------------------
void but_an(void);
//-----------------------------------------------
void ind_hndl(void);
//-----------------------------------------------
void t4_init(void);