//-----------------------------------------------
#define RX_BUFFER_1_SIZE	350
#define TX_BUFFER_1_SIZE	350
extern @near char rxBuffer1[RX_BUFFER_1_SIZE];				//�������� ����� UART1
extern @near char txBuffer1[TX_BUFFER_1_SIZE];				//���������� ����� UART1
extern @near short rx_wr_index1;							//��������� �� ��������� ����������� ����
extern @near short tx_wr_index1;							//��������� �� ��������� ������ ����������� ����
extern @near short tx_rd_index1;							//��������� �� ��������� ������������ �� ���� ����
extern @near short tx_counter1;								//������� ������������� ����������� ����
extern @near char uart1_an_buffer[350];						//����� ��� ������� �������� �� UART1 �����
extern @near char bRXIN1;									//��������� �������� ������ � uart1_an_buffer
extern @near char incommingNumber[10];						//����� ��� �������� ������ ����������� ��������� ���
extern @near char incommingNumberToMain[10];				//����� ��� �������� ������ ����������� � �������
extern @near char incommingNumberUSSDRequ[10];				//����� ��� �������� ������ ���������� USSD ������

extern bool bOK;											//����� ������� "OK"
extern bool bERROR;											//����� ������� "ERROR"
extern bool bINITIALIZED;									//����� ���������������
extern char ussdRequ;										//��� USSD ������
extern char bCBC;												//����� ������� CBC
extern bool bBUY_SMS;											//���������� SMS ����

//-----------------------------------------------
//�������
extern @near char uart1_plazma;
extern @near char modem_plazma;
extern @near char modem_plazma1;

//-----------------------------------------------
void uart1_init (void);
//-----------------------------------------------
@far @interrupt void UART1RxInterrupt (void);
//-----------------------------------------------
@far @interrupt void UART1TxInterrupt (void);
//-----------------------------------------------
void uart1_in_an (void);