//-----------------------------------------------
#define RX_BUFFER_3_SIZE	64
extern @near char rxBuffer3[RX_BUFFER_3_SIZE];		//�������� ����� UART3
extern @near short rx_wr_index3;						//��������� �� ��������� ����������� ����
extern @near char uart3_an_buffer[100];				//����� ��� ������� �������� �� UART3 �����
extern @near char bRXIN3;								//��������� �������� ������ � uart3_an_buffer



//-----------------------------------------------
//�������
extern char uart3_plazma;

//-----------------------------------------------
void uart3_init (void);
//-----------------------------------------------
@far @interrupt void UART3RxInterrupt (void);
//-----------------------------------------------
void uart3_in_an (void);