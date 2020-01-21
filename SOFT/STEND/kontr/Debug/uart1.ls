   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  44                     ; 50 void uart1_init (void)
  44                     ; 51 {
  46                     	switch	.text
  47  0000               _uart1_init:
  51                     ; 52 GPIOA->DDR&=~(1<<4);	
  53  0000 72195002      	bres	20482,#4
  54                     ; 53 GPIOA->CR1|=(1<<4);
  56  0004 72185003      	bset	20483,#4
  57                     ; 54 GPIOA->CR2&=~(1<<4);
  59  0008 72195004      	bres	20484,#4
  60                     ; 56 GPIOA->DDR|=(1<<5);	
  62  000c 721a5002      	bset	20482,#5
  63                     ; 57 GPIOA->CR1|=(1<<5);
  65  0010 721a5003      	bset	20483,#5
  66                     ; 58 GPIOA->CR2|=(1<<5);
  68  0014 721a5004      	bset	20484,#5
  69                     ; 60 UART1->CR1&=~UART1_CR1_M;
  71  0018 72195234      	bres	21044,#4
  72                     ; 62 UART1->CR3|= (0<<4) & UART1_CR3_STOP;	
  74  001c c65236        	ld	a,21046
  75                     ; 63 UART1->BRR2= 0x02;//0x03;
  77  001f 35025233      	mov	21043,#2
  78                     ; 64 UART1->BRR1= 0x41;//0x68;
  80  0023 35415232      	mov	21042,#65
  81                     ; 65 UART1->CR2|= UART3_CR2_TEN | UART1_CR2_REN | UART1_CR2_RIEN /*| UART1_CR2_TIEN*/;	
  83  0027 c65235        	ld	a,21045
  84  002a aa2c          	or	a,#44
  85  002c c75235        	ld	21045,a
  86                     ; 66 }
  89  002f 81            	ret
 140                     ; 69 @far @interrupt void UART1RxInterrupt (void) 
 140                     ; 70 {
 142                     	switch	.text
 143  0030               f_UART1RxInterrupt:
 145       00000002      OFST:	set	2
 146  0030 89            	pushw	x
 149                     ; 71 char rx_status1=UART1->SR;
 151  0031 c65230        	ld	a,21040
 152  0034 6b01          	ld	(OFST-1,sp),a
 153                     ; 72 char rx_data1=UART1->DR;
 155  0036 c65231        	ld	a,21041
 156  0039 6b02          	ld	(OFST+0,sp),a
 157                     ; 74 if (rx_status1 & (UART1_SR_RXNE))
 159  003b 7b01          	ld	a,(OFST-1,sp)
 160  003d a520          	bcp	a,#32
 161  003f 2765          	jreq	L34
 162                     ; 76 	if(rx_data1=='\r')
 164  0041 7b02          	ld	a,(OFST+0,sp)
 165  0043 a10d          	cp	a,#13
 166  0045 2623          	jrne	L54
 167                     ; 78 		memset(uart1_an_buffer,'\0',200);
 169  0047 ae00c8        	ldw	x,#200
 170  004a               L01:
 171  004a 724f0024      	clr	(_uart1_an_buffer-1,x)
 172  004e 5a            	decw	x
 173  004f 26f9          	jrne	L01
 174                     ; 79 		memcpy(uart1_an_buffer,rxBuffer1,rx_wr_index1);
 176  0051 ce0189        	ldw	x,_rx_wr_index1
 177  0054 5d            	tnzw	x
 178  0055 2709          	jreq	L21
 179  0057               L41:
 180  0057 d602e8        	ld	a,(_rxBuffer1-1,x)
 181  005a d70024        	ld	(_uart1_an_buffer-1,x),a
 182  005d 5a            	decw	x
 183  005e 26f7          	jrne	L41
 184  0060               L21:
 185                     ; 80 		bRXIN1=1;
 187  0060 35010024      	mov	_bRXIN1,#1
 188                     ; 81 		rx_wr_index1=0;
 190  0064 5f            	clrw	x
 191  0065 cf0189        	ldw	_rx_wr_index1,x
 193  0068 2034          	jra	L74
 194  006a               L54:
 195                     ; 83 	else if(rx_data1=='>') 
 197  006a 7b02          	ld	a,(OFST+0,sp)
 198  006c a13e          	cp	a,#62
 199  006e 260a          	jrne	L15
 200                     ; 85 		bOK=1;
 202  0070 3501000a      	mov	_bOK,#1
 203                     ; 86 		rx_wr_index1=0;	
 205  0074 5f            	clrw	x
 206  0075 cf0189        	ldw	_rx_wr_index1,x
 208  0078 2024          	jra	L74
 209  007a               L15:
 210                     ; 88 	else if(rx_data1!='\n') 
 212  007a 7b02          	ld	a,(OFST+0,sp)
 213  007c a10a          	cp	a,#10
 214  007e 271e          	jreq	L74
 215                     ; 90 		rxBuffer1[rx_wr_index1++]=rx_data1;
 217  0080 7b02          	ld	a,(OFST+0,sp)
 218  0082 ce0189        	ldw	x,_rx_wr_index1
 219  0085 1c0001        	addw	x,#1
 220  0088 cf0189        	ldw	_rx_wr_index1,x
 221  008b 1d0001        	subw	x,#1
 222  008e d702e9        	ld	(_rxBuffer1,x),a
 223                     ; 94 		if(rx_wr_index1>=RX_BUFFER_1_SIZE)
 225  0091 9c            	rvf
 226  0092 ce0189        	ldw	x,_rx_wr_index1
 227  0095 a3015e        	cpw	x,#350
 228  0098 2f04          	jrslt	L74
 229                     ; 96 			rx_wr_index1=0;	
 231  009a 5f            	clrw	x
 232  009b cf0189        	ldw	_rx_wr_index1,x
 233  009e               L74:
 234                     ; 100 		if(rx_wr_index1>=1)
 236  009e 9c            	rvf
 237  009f ce0189        	ldw	x,_rx_wr_index1
 238  00a2 2d02          	jrsle	L34
 239                     ; 102 			cntAirSensorLineErrorLo=0;	
 241  00a4 3f00          	clr	_cntAirSensorLineErrorLo
 242  00a6               L34:
 243                     ; 109 }
 246  00a6 5b02          	addw	sp,#2
 247  00a8 80            	iret
 272                     ; 112 @far @interrupt void UART1TxInterrupt (void) 
 272                     ; 113 {
 273                     	switch	.text
 274  00a9               f_UART1TxInterrupt:
 278                     ; 114 if (tx_counter1)
 280  00a9 ce0183        	ldw	x,_tx_counter1
 281  00ac 2726          	jreq	L37
 282                     ; 116 	--tx_counter1;
 284  00ae ce0183        	ldw	x,_tx_counter1
 285  00b1 1d0001        	subw	x,#1
 286  00b4 cf0183        	ldw	_tx_counter1,x
 287                     ; 117 	UART1->DR=txBuffer1[tx_rd_index1];
 289  00b7 ce0185        	ldw	x,_tx_rd_index1
 290  00ba d6018b        	ld	a,(_txBuffer1,x)
 291  00bd c75231        	ld	21041,a
 292                     ; 118 	if (++tx_rd_index1 == TX_BUFFER_1_SIZE) tx_rd_index1=0;
 294  00c0 ce0185        	ldw	x,_tx_rd_index1
 295  00c3 1c0001        	addw	x,#1
 296  00c6 cf0185        	ldw	_tx_rd_index1,x
 297  00c9 a3015e        	cpw	x,#350
 298  00cc 260a          	jrne	L77
 301  00ce 5f            	clrw	x
 302  00cf cf0185        	ldw	_tx_rd_index1,x
 303  00d2 2004          	jra	L77
 304  00d4               L37:
 305                     ; 123 	UART1->CR2&= ~UART1_CR2_TIEN;
 307  00d4 721f5235      	bres	21045,#7
 308  00d8               L77:
 309                     ; 125 }
 312  00d8 80            	iret
 350                     ; 128 void putchar1(char c)
 350                     ; 129 {
 352                     	switch	.text
 353  00d9               _putchar1:
 355  00d9 88            	push	a
 356       00000000      OFST:	set	0
 359  00da               L121:
 360                     ; 130 while (tx_counter1 == TX_BUFFER_1_SIZE);
 362  00da ce0183        	ldw	x,_tx_counter1
 363  00dd a3015e        	cpw	x,#350
 364  00e0 27f8          	jreq	L121
 365                     ; 131 disableInterrupts();
 368  00e2 9b            sim
 370                     ; 132 if (tx_counter1 || ((UART1->SR & UART1_SR_TXE)==0))
 373  00e3 ce0183        	ldw	x,_tx_counter1
 374  00e6 2607          	jrne	L721
 376  00e8 c65230        	ld	a,21040
 377  00eb a580          	bcp	a,#128
 378  00ed 262a          	jrne	L521
 379  00ef               L721:
 380                     ; 134    txBuffer1[tx_wr_index1]=c;
 382  00ef 7b01          	ld	a,(OFST+1,sp)
 383  00f1 ce0187        	ldw	x,_tx_wr_index1
 384  00f4 d7018b        	ld	(_txBuffer1,x),a
 385                     ; 135    if (++tx_wr_index1 == TX_BUFFER_1_SIZE) tx_wr_index1=0;
 387  00f7 ce0187        	ldw	x,_tx_wr_index1
 388  00fa 1c0001        	addw	x,#1
 389  00fd cf0187        	ldw	_tx_wr_index1,x
 390  0100 a3015e        	cpw	x,#350
 391  0103 2604          	jrne	L131
 394  0105 5f            	clrw	x
 395  0106 cf0187        	ldw	_tx_wr_index1,x
 396  0109               L131:
 397                     ; 136    ++tx_counter1;
 399  0109 ce0183        	ldw	x,_tx_counter1
 400  010c 1c0001        	addw	x,#1
 401  010f cf0183        	ldw	_tx_counter1,x
 403  0112               L331:
 404                     ; 139 enableInterrupts();
 407  0112 9a            rim
 409                     ; 140 UART1->CR2|= UART1_CR2_TIEN;
 412  0113 721e5235      	bset	21045,#7
 413                     ; 141 }
 416  0117 84            	pop	a
 417  0118 81            	ret
 418  0119               L521:
 419                     ; 138 else UART1->DR=c;
 421  0119 7b01          	ld	a,(OFST+1,sp)
 422  011b c75231        	ld	21041,a
 423  011e 20f2          	jra	L331
 625                     ; 144 void uart1_in_an (void)
 625                     ; 145 {
 626                     	switch	.text
 627  0120               _uart1_in_an:
 629  0120 5221          	subw	sp,#33
 630       00000021      OFST:	set	33
 633                     ; 146 if(!bRXIN1)return;
 635  0122 725d0024      	tnz	_bRXIN1
 636  0126 2603          	jrne	L631
 637  0128 cc0d0d        	jp	L431
 638  012b               L631:
 641                     ; 148 disableInterrupts();
 644  012b 9b            sim
 646                     ; 149 bRXIN1=0;
 649  012c 725f0024      	clr	_bRXIN1
 650                     ; 151 if(strstr(uart1_an_buffer,"OK"))
 652  0130 ae056f        	ldw	x,#L722
 653  0133 89            	pushw	x
 654  0134 ae0025        	ldw	x,#_uart1_an_buffer
 655  0137 cd0000        	call	_strstr
 657  013a 5b02          	addw	sp,#2
 658  013c a30000        	cpw	x,#0
 659  013f 2708          	jreq	L522
 660                     ; 153 	bOK=1;
 662  0141 3501000a      	mov	_bOK,#1
 664  0145 ac0c0d0c      	jpf	L132
 665  0149               L522:
 666                     ; 155 else if(strstr(uart1_an_buffer,"ERROR"))
 668  0149 ae0569        	ldw	x,#L532
 669  014c 89            	pushw	x
 670  014d ae0025        	ldw	x,#_uart1_an_buffer
 671  0150 cd0000        	call	_strstr
 673  0153 5b02          	addw	sp,#2
 674  0155 a30000        	cpw	x,#0
 675  0158 2708          	jreq	L332
 676                     ; 157 	bERROR=1;
 678  015a 35010009      	mov	_bERROR,#1
 680  015e ac0c0d0c      	jpf	L132
 681  0162               L332:
 682                     ; 160 else if(strstr(uart1_an_buffer,"UNDER-VOLTAGE WARNNING"))
 684  0162 ae0552        	ldw	x,#L342
 685  0165 89            	pushw	x
 686  0166 ae0025        	ldw	x,#_uart1_an_buffer
 687  0169 cd0000        	call	_strstr
 689  016c 5b02          	addw	sp,#2
 690  016e a30000        	cpw	x,#0
 691  0171 2709          	jreq	L142
 692                     ; 165 	modemDrvPowerDownStepCnt=1;
 694  0173 ae0001        	ldw	x,#1
 695  0176 bf00          	ldw	_modemDrvPowerDownStepCnt,x
 697  0178 ac0c0d0c      	jpf	L132
 698  017c               L142:
 699                     ; 168 else if(strstr(uart1_an_buffer,"CBC"))
 701  017c ae054e        	ldw	x,#L152
 702  017f 89            	pushw	x
 703  0180 ae0025        	ldw	x,#_uart1_an_buffer
 704  0183 cd0000        	call	_strstr
 706  0186 5b02          	addw	sp,#2
 707  0188 a30000        	cpw	x,#0
 708  018b 2603          	jrne	L041
 709  018d cc0276        	jp	L742
 710  0190               L041:
 711                     ; 173 	ptr1=strstr(uart1_an_buffer,",");
 713  0190 ae054c        	ldw	x,#L352
 714  0193 89            	pushw	x
 715  0194 ae0025        	ldw	x,#_uart1_an_buffer
 716  0197 cd0000        	call	_strstr
 718  019a 5b02          	addw	sp,#2
 719  019c 1f1e          	ldw	(OFST-3,sp),x
 720                     ; 174 	ptr1++;
 722  019e 1e1e          	ldw	x,(OFST-3,sp)
 723  01a0 1c0001        	addw	x,#1
 724  01a3 1f1e          	ldw	(OFST-3,sp),x
 725                     ; 175 	ptr2=strstr(ptr1,",");
 727  01a5 ae054c        	ldw	x,#L352
 728  01a8 89            	pushw	x
 729  01a9 1e20          	ldw	x,(OFST-1,sp)
 730  01ab cd0000        	call	_strstr
 732  01ae 5b02          	addw	sp,#2
 733  01b0 1f20          	ldw	(OFST-1,sp),x
 734                     ; 176 	ptr2++;
 736  01b2 1e20          	ldw	x,(OFST-1,sp)
 737  01b4 1c0001        	addw	x,#1
 738  01b7 1f20          	ldw	(OFST-1,sp),x
 739                     ; 177 	memset(cbc_temp,'\0',15);
 741  01b9 ae000f        	ldw	x,#15
 742  01bc               L42:
 743  01bc 724fffff      	clr	(_cbc_temp-1,x)
 744  01c0 5a            	decw	x
 745  01c1 26f9          	jrne	L42
 746                     ; 178 	memcpy(cbc_temp,ptr2,1);
 748  01c3 1e20          	ldw	x,(OFST-1,sp)
 749  01c5 bf00          	ldw	c_x,x
 750  01c7 ae0001        	ldw	x,#1
 751  01ca               L62:
 752  01ca 5a            	decw	x
 753  01cb 92d600        	ld	a,([c_x.w],x)
 754  01ce d70000        	ld	(_cbc_temp,x),a
 755  01d1 5d            	tnzw	x
 756  01d2 26f6          	jrne	L62
 757                     ; 179 	memcpy(cbc_temp+1,".",1);
 759  01d4 ae0001        	ldw	x,#1
 760  01d7               L03:
 761  01d7 d60549        	ld	a,(L552-1,x)
 762  01da d70000        	ld	(_cbc_temp,x),a
 763  01dd 5a            	decw	x
 764  01de 26f7          	jrne	L03
 765                     ; 180 	memcpy(cbc_temp+2,ptr2+1,3);
 767  01e0 1e20          	ldw	x,(OFST-1,sp)
 768  01e2 5c            	incw	x
 769  01e3 bf00          	ldw	c_x,x
 770  01e5 ae0003        	ldw	x,#3
 771  01e8               L23:
 772  01e8 5a            	decw	x
 773  01e9 92d600        	ld	a,([c_x.w],x)
 774  01ec d70002        	ld	(_cbc_temp+2,x),a
 775  01ef 5d            	tnzw	x
 776  01f0 26f6          	jrne	L23
 777                     ; 181 	memset(cbc_temp1,'\0',15);
 779  01f2 ae000f        	ldw	x,#15
 780  01f5               L43:
 781  01f5 724fffff      	clr	(_cbc_temp1-1,x)
 782  01f9 5a            	decw	x
 783  01fa 26f9          	jrne	L43
 784                     ; 182 	memcpy(cbc_temp1,ptr2,4);
 786  01fc 1e20          	ldw	x,(OFST-1,sp)
 787  01fe bf00          	ldw	c_x,x
 788  0200 ae0004        	ldw	x,#4
 789  0203               L63:
 790  0203 5a            	decw	x
 791  0204 92d600        	ld	a,([c_x.w],x)
 792  0207 d70000        	ld	(_cbc_temp1,x),a
 793  020a 5d            	tnzw	x
 794  020b 26f6          	jrne	L63
 795                     ; 184 	cbcVoltage=(short)strtol(cbc_temp1,NULL,0);
 797  020d 5f            	clrw	x
 798  020e 89            	pushw	x
 799  020f 5f            	clrw	x
 800  0210 89            	pushw	x
 801  0211 ae0000        	ldw	x,#_cbc_temp1
 802  0214 cd0000        	call	_strtol
 804  0217 5b04          	addw	sp,#4
 805  0219 be02          	ldw	x,c_lreg+2
 806  021b cf0000        	ldw	_cbcVoltage,x
 807                     ; 189 	if(cbcRequ)
 809  021e 725d0002      	tnz	_cbcRequ
 810  0222 2736          	jreq	L752
 811                     ; 191 		sprintf(tempRussianText,"Напряжение аккумулятора %d,%03dв",cbcVoltage/1000,cbcVoltage%1000);
 813  0224 ce0000        	ldw	x,_cbcVoltage
 814  0227 90ae03e8      	ldw	y,#1000
 815  022b cd0000        	call	c_idiv
 817  022e 51            	exgw	x,y
 818  022f 89            	pushw	x
 819  0230 ce0000        	ldw	x,_cbcVoltage
 820  0233 90ae03e8      	ldw	y,#1000
 821  0237 cd0000        	call	c_idiv
 823  023a 89            	pushw	x
 824  023b ae0529        	ldw	x,#L162
 825  023e 89            	pushw	x
 826  023f ae0000        	ldw	x,#_tempRussianText
 827  0242 cd0000        	call	_sprintf
 829  0245 5b06          	addw	sp,#6
 830                     ; 193 		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
 832  0247 ae0000        	ldw	x,#_tempRussianText
 833  024a 89            	pushw	x
 834  024b ae0000        	ldw	x,#_MAIN_NUMBER
 835  024e 89            	pushw	x
 836  024f a670          	ld	a,#112
 837  0251 cd0000        	call	_modem_send_sms
 839  0254 5b04          	addw	sp,#4
 840                     ; 194 		cbcRequ=0;
 842  0256 725f0002      	clr	_cbcRequ
 843  025a               L752:
 844                     ; 198 	if(bCBC==1)bCBC=2;
 846  025a b606          	ld	a,_bCBC
 847  025c a101          	cp	a,#1
 848  025e 2604          	jrne	L362
 851  0260 35020006      	mov	_bCBC,#2
 852  0264               L362:
 853                     ; 199 	if(bCBC_SELF==1)bCBC_SELF=2;
 855  0264 c60000        	ld	a,_bCBC_SELF
 856  0267 a101          	cp	a,#1
 857  0269 2703          	jreq	L241
 858  026b cc0d0c        	jp	L132
 859  026e               L241:
 862  026e 35020000      	mov	_bCBC_SELF,#2
 863  0272 ac0c0d0c      	jpf	L132
 864  0276               L742:
 865                     ; 202 else if((strstr(uart1_an_buffer,"CUSD"))&&(ussdRequ))
 867  0276 ae0524        	ldw	x,#L372
 868  0279 89            	pushw	x
 869  027a ae0025        	ldw	x,#_uart1_an_buffer
 870  027d cd0000        	call	_strstr
 872  0280 5b02          	addw	sp,#2
 873  0282 a30000        	cpw	x,#0
 874  0285 2603cc0309    	jreq	L172
 876  028a 3d07          	tnz	_ussdRequ
 877  028c 277b          	jreq	L172
 878                     ; 206 	ptr1=strstr(uart1_an_buffer,"\"");
 880  028e ae0522        	ldw	x,#L572
 881  0291 89            	pushw	x
 882  0292 ae0025        	ldw	x,#_uart1_an_buffer
 883  0295 cd0000        	call	_strstr
 885  0298 5b02          	addw	sp,#2
 886  029a 1f20          	ldw	(OFST-1,sp),x
 887                     ; 207 	ptr1++;
 889  029c 1e20          	ldw	x,(OFST-1,sp)
 890  029e 1c0001        	addw	x,#1
 891  02a1 1f20          	ldw	(OFST-1,sp),x
 892                     ; 208 	if((*(ptr1))=='0')
 894  02a3 1e20          	ldw	x,(OFST-1,sp)
 895  02a5 f6            	ld	a,(x)
 896  02a6 a130          	cp	a,#48
 897  02a8 2626          	jrne	L772
 898                     ; 210 		strncpy(tempRussianText,ptr1,80);
 900  02aa ae0050        	ldw	x,#80
 901  02ad 89            	pushw	x
 902  02ae 1e22          	ldw	x,(OFST+1,sp)
 903  02b0 89            	pushw	x
 904  02b1 ae0000        	ldw	x,#_tempRussianText
 905  02b4 cd0000        	call	_strncpy
 907  02b7 5b04          	addw	sp,#4
 908                     ; 211 		PDU2text(tempRussianText);
 910  02b9 ae0000        	ldw	x,#_tempRussianText
 911  02bc cd0000        	call	_PDU2text
 913                     ; 212 		modem_send_sms('p',incommingNumberUSSDRequ,russianText);
 915  02bf ae0000        	ldw	x,#_russianText
 916  02c2 89            	pushw	x
 917  02c3 ae0006        	ldw	x,#_incommingNumberUSSDRequ
 918  02c6 89            	pushw	x
 919  02c7 a670          	ld	a,#112
 920  02c9 cd0000        	call	_modem_send_sms
 922  02cc 5b04          	addw	sp,#4
 924  02ce 202c          	jra	L103
 925  02d0               L772:
 926                     ; 216 		ptr2=strstr(ptr1,"\"");
 928  02d0 ae0522        	ldw	x,#L572
 929  02d3 89            	pushw	x
 930  02d4 1e22          	ldw	x,(OFST+1,sp)
 931  02d6 cd0000        	call	_strstr
 933  02d9 85            	popw	x
 934                     ; 217 		strncpy(tempRussianText,ptr1,/*(unsigned char)(ptr2-ptr1)*/40);
 936  02da ae0028        	ldw	x,#40
 937  02dd 89            	pushw	x
 938  02de 1e22          	ldw	x,(OFST+1,sp)
 939  02e0 89            	pushw	x
 940  02e1 ae0000        	ldw	x,#_tempRussianText
 941  02e4 cd0000        	call	_strncpy
 943  02e7 5b04          	addw	sp,#4
 944                     ; 218 		tempRussianText[40/*(unsigned char)(ptr2-ptr1)*/]=0;
 946  02e9 725f0028      	clr	_tempRussianText+40
 947                     ; 219 		modem_send_sms('p',incommingNumberUSSDRequ,tempRussianText);
 949  02ed ae0000        	ldw	x,#_tempRussianText
 950  02f0 89            	pushw	x
 951  02f1 ae0006        	ldw	x,#_incommingNumberUSSDRequ
 952  02f4 89            	pushw	x
 953  02f5 a670          	ld	a,#112
 954  02f7 cd0000        	call	_modem_send_sms
 956  02fa 5b04          	addw	sp,#4
 957  02fc               L103:
 958                     ; 221 	if(ussdRequ)ussdRequ--;	
 960  02fc 3d07          	tnz	_ussdRequ
 961  02fe 2603          	jrne	L441
 962  0300 cc0d0c        	jp	L132
 963  0303               L441:
 966  0303 3a07          	dec	_ussdRequ
 967  0305 ac0c0d0c      	jpf	L132
 968  0309               L172:
 969                     ; 224 else if(strstr(uart1_an_buffer,"+CMT"))
 971  0309 ae051d        	ldw	x,#L113
 972  030c 89            	pushw	x
 973  030d ae0025        	ldw	x,#_uart1_an_buffer
 974  0310 cd0000        	call	_strstr
 976  0313 5b02          	addw	sp,#2
 977  0315 a30000        	cpw	x,#0
 978  0318 2603          	jrne	L641
 979  031a cc047d        	jp	L703
 980  031d               L641:
 981                     ; 230 	isFromMainNumberMess=0;
 983  031d 3f04          	clr	_isFromMainNumberMess
 984                     ; 231 	isFromAutorizedNumberMess=0;
 986  031f 3f03          	clr	_isFromAutorizedNumberMess
 987                     ; 232 	isFromNotAutorizedNumberMess=0;
 989  0321 3f02          	clr	_isFromNotAutorizedNumberMess
 990                     ; 234 	ptrptr=strstr(uart1_an_buffer,"+7");
 992  0323 ae051a        	ldw	x,#L313
 993  0326 89            	pushw	x
 994  0327 ae0025        	ldw	x,#_uart1_an_buffer
 995  032a cd0000        	call	_strstr
 997  032d 5b02          	addw	sp,#2
 998  032f 1f11          	ldw	(OFST-16,sp),x
 999                     ; 235 	memcpy(incommingNumber,ptrptr+2,10);
1001  0331 1e11          	ldw	x,(OFST-16,sp)
1002  0333 5c            	incw	x
1003  0334 5c            	incw	x
1004  0335 bf00          	ldw	c_x,x
1005  0337 ae000a        	ldw	x,#10
1006  033a               L04:
1007  033a 5a            	decw	x
1008  033b 92d600        	ld	a,([c_x.w],x)
1009  033e d7001a        	ld	(_incommingNumber,x),a
1010  0341 5d            	tnzw	x
1011  0342 26f6          	jrne	L04
1012                     ; 237 	memset(ptr_temp,'\0',15);
1014  0344 96            	ldw	x,sp
1015  0345 1c0002        	addw	x,#OFST-31
1016  0348 bf00          	ldw	c_x,x
1017  034a ae000f        	ldw	x,#15
1018  034d               L24:
1019  034d 5a            	decw	x
1020  034e 926f00        	clr	([c_x.w],x)
1021  0351 5d            	tnzw	x
1022  0352 26f9          	jrne	L24
1023                     ; 238 	memcpy(ptr_temp,&uart1_an_buffer[6],14);
1025  0354 96            	ldw	x,sp
1026  0355 1c0002        	addw	x,#OFST-31
1027  0358 bf00          	ldw	c_x,x
1028  035a ae000e        	ldw	x,#14
1029  035d               L44:
1030  035d 5a            	decw	x
1031  035e d6002b        	ld	a,(_uart1_an_buffer+6,x)
1032  0361 92d700        	ld	([c_x.w],x),a
1033  0364 5d            	tnzw	x
1034  0365 26f6          	jrne	L44
1035                     ; 240 	memset(str_main_num,'\0',15);
1037  0367 96            	ldw	x,sp
1038  0368 1c0013        	addw	x,#OFST-14
1039  036b bf00          	ldw	c_x,x
1040  036d ae000f        	ldw	x,#15
1041  0370               L64:
1042  0370 5a            	decw	x
1043  0371 926f00        	clr	([c_x.w],x)
1044  0374 5d            	tnzw	x
1045  0375 26f9          	jrne	L64
1046                     ; 241 	memcpy(str_main_num,/*"9139294352"*/MAIN_NUMBER,10);
1048  0377 96            	ldw	x,sp
1049  0378 1c0013        	addw	x,#OFST-14
1050  037b bf00          	ldw	c_x,x
1051  037d ae000a        	ldw	x,#10
1052  0380               L05:
1053  0380 5a            	decw	x
1054  0381 d60000        	ld	a,(_MAIN_NUMBER,x)
1055  0384 92d700        	ld	([c_x.w],x),a
1056  0387 5d            	tnzw	x
1057  0388 26f6          	jrne	L05
1058                     ; 244 	if((strstr(incommingNumber,str_main_num)!=NULL)&&(AUTH_NUMBER_FLAGS&0x01))
1060  038a 96            	ldw	x,sp
1061  038b 1c0013        	addw	x,#OFST-14
1062  038e 89            	pushw	x
1063  038f ae001a        	ldw	x,#_incommingNumber
1064  0392 cd0000        	call	_strstr
1066  0395 5b02          	addw	sp,#2
1067  0397 a30000        	cpw	x,#0
1068  039a 270b          	jreq	L513
1070  039c c60000        	ld	a,_AUTH_NUMBER_FLAGS
1071  039f a501          	bcp	a,#1
1072  03a1 2704          	jreq	L513
1073                     ; 247 		isFromMainNumberMess=1;
1075  03a3 35010004      	mov	_isFromMainNumberMess,#1
1076  03a7               L513:
1077                     ; 250 	memset(str_main_num,'\0',15);
1079  03a7 96            	ldw	x,sp
1080  03a8 1c0013        	addw	x,#OFST-14
1081  03ab bf00          	ldw	c_x,x
1082  03ad ae000f        	ldw	x,#15
1083  03b0               L25:
1084  03b0 5a            	decw	x
1085  03b1 926f00        	clr	([c_x.w],x)
1086  03b4 5d            	tnzw	x
1087  03b5 26f9          	jrne	L25
1088                     ; 251 	memcpy(str_main_num,AUTH_NUMBER_1,10);
1090  03b7 96            	ldw	x,sp
1091  03b8 1c0013        	addw	x,#OFST-14
1092  03bb bf00          	ldw	c_x,x
1093  03bd ae000a        	ldw	x,#10
1094  03c0               L45:
1095  03c0 5a            	decw	x
1096  03c1 d60000        	ld	a,(_AUTH_NUMBER_1,x)
1097  03c4 92d700        	ld	([c_x.w],x),a
1098  03c7 5d            	tnzw	x
1099  03c8 26f6          	jrne	L45
1100                     ; 253 	if((strstr(incommingNumber,str_main_num)!=NULL)&&(AUTH_NUMBER_FLAGS&0x02))
1102  03ca 96            	ldw	x,sp
1103  03cb 1c0013        	addw	x,#OFST-14
1104  03ce 89            	pushw	x
1105  03cf ae001a        	ldw	x,#_incommingNumber
1106  03d2 cd0000        	call	_strstr
1108  03d5 5b02          	addw	sp,#2
1109  03d7 a30000        	cpw	x,#0
1110  03da 270b          	jreq	L713
1112  03dc c60000        	ld	a,_AUTH_NUMBER_FLAGS
1113  03df a502          	bcp	a,#2
1114  03e1 2704          	jreq	L713
1115                     ; 256 		isFromAutorizedNumberMess=1;
1117  03e3 35010003      	mov	_isFromAutorizedNumberMess,#1
1118  03e7               L713:
1119                     ; 259 	memset(str_main_num,'\0',15);
1121  03e7 96            	ldw	x,sp
1122  03e8 1c0013        	addw	x,#OFST-14
1123  03eb bf00          	ldw	c_x,x
1124  03ed ae000f        	ldw	x,#15
1125  03f0               L65:
1126  03f0 5a            	decw	x
1127  03f1 926f00        	clr	([c_x.w],x)
1128  03f4 5d            	tnzw	x
1129  03f5 26f9          	jrne	L65
1130                     ; 260 	memcpy(str_main_num,AUTH_NUMBER_2,10);
1132  03f7 96            	ldw	x,sp
1133  03f8 1c0013        	addw	x,#OFST-14
1134  03fb bf00          	ldw	c_x,x
1135  03fd ae000a        	ldw	x,#10
1136  0400               L06:
1137  0400 5a            	decw	x
1138  0401 d60000        	ld	a,(_AUTH_NUMBER_2,x)
1139  0404 92d700        	ld	([c_x.w],x),a
1140  0407 5d            	tnzw	x
1141  0408 26f6          	jrne	L06
1142                     ; 262 	if((strstr(incommingNumber,str_main_num)!=NULL)&&(AUTH_NUMBER_FLAGS&0x04))
1144  040a 96            	ldw	x,sp
1145  040b 1c0013        	addw	x,#OFST-14
1146  040e 89            	pushw	x
1147  040f ae001a        	ldw	x,#_incommingNumber
1148  0412 cd0000        	call	_strstr
1150  0415 5b02          	addw	sp,#2
1151  0417 a30000        	cpw	x,#0
1152  041a 270b          	jreq	L123
1154  041c c60000        	ld	a,_AUTH_NUMBER_FLAGS
1155  041f a504          	bcp	a,#4
1156  0421 2704          	jreq	L123
1157                     ; 265 		isFromAutorizedNumberMess=1;
1159  0423 35010003      	mov	_isFromAutorizedNumberMess,#1
1160  0427               L123:
1161                     ; 268 	memset(str_main_num,'\0',15);
1163  0427 96            	ldw	x,sp
1164  0428 1c0013        	addw	x,#OFST-14
1165  042b bf00          	ldw	c_x,x
1166  042d ae000f        	ldw	x,#15
1167  0430               L26:
1168  0430 5a            	decw	x
1169  0431 926f00        	clr	([c_x.w],x)
1170  0434 5d            	tnzw	x
1171  0435 26f9          	jrne	L26
1172                     ; 269 	memcpy(str_main_num,AUTH_NUMBER_3,10);
1174  0437 96            	ldw	x,sp
1175  0438 1c0013        	addw	x,#OFST-14
1176  043b bf00          	ldw	c_x,x
1177  043d ae000a        	ldw	x,#10
1178  0440               L46:
1179  0440 5a            	decw	x
1180  0441 d60000        	ld	a,(_AUTH_NUMBER_3,x)
1181  0444 92d700        	ld	([c_x.w],x),a
1182  0447 5d            	tnzw	x
1183  0448 26f6          	jrne	L46
1184                     ; 271 	if((strstr(incommingNumber,str_main_num)!=NULL)&&(AUTH_NUMBER_FLAGS&0x08))
1186  044a 96            	ldw	x,sp
1187  044b 1c0013        	addw	x,#OFST-14
1188  044e 89            	pushw	x
1189  044f ae001a        	ldw	x,#_incommingNumber
1190  0452 cd0000        	call	_strstr
1192  0455 5b02          	addw	sp,#2
1193  0457 a30000        	cpw	x,#0
1194  045a 270b          	jreq	L323
1196  045c c60000        	ld	a,_AUTH_NUMBER_FLAGS
1197  045f a508          	bcp	a,#8
1198  0461 2704          	jreq	L323
1199                     ; 274 		isFromAutorizedNumberMess=1;
1201  0463 35010003      	mov	_isFromAutorizedNumberMess,#1
1202  0467               L323:
1203                     ; 277 	if((isFromMainNumberMess==0)&&(isFromAutorizedNumberMess==0)) isFromNotAutorizedNumberMess=1;
1205  0467 3d04          	tnz	_isFromMainNumberMess
1206  0469 2703          	jreq	L051
1207  046b cc0d0c        	jp	L132
1208  046e               L051:
1210  046e 3d03          	tnz	_isFromAutorizedNumberMess
1211  0470 2703          	jreq	L251
1212  0472 cc0d0c        	jp	L132
1213  0475               L251:
1216  0475 35010002      	mov	_isFromNotAutorizedNumberMess,#1
1217  0479 ac0c0d0c      	jpf	L132
1218  047d               L703:
1219                     ; 282 	if((isFromMainNumberMess)||(isFromAutorizedNumberMess)||(isFromNotAutorizedNumberMess))
1221  047d 3d04          	tnz	_isFromMainNumberMess
1222  047f 260b          	jrne	L333
1224  0481 3d03          	tnz	_isFromAutorizedNumberMess
1225  0483 2607          	jrne	L333
1227  0485 3d02          	tnz	_isFromNotAutorizedNumberMess
1228  0487 2603          	jrne	L451
1229  0489 cc0d0c        	jp	L132
1230  048c               L451:
1231  048c               L333:
1232                     ; 284 		modem_plazma++;
1234  048c 725c0004      	inc	_modem_plazma
1235                     ; 285 		PDU2text(uart1_an_buffer); 	//Пропускаем все пришедшие смс через парсер PDU
1237  0490 ae0025        	ldw	x,#_uart1_an_buffer
1238  0493 cd0000        	call	_PDU2text
1240                     ; 287 		if(strstr(russianText,"НОМЕР ГЛАВНЫЙ")) //Установить главный номер
1242  0496 ae050c        	ldw	x,#L143
1243  0499 89            	pushw	x
1244  049a ae0000        	ldw	x,#_russianText
1245  049d cd0000        	call	_strstr
1247  04a0 5b02          	addw	sp,#2
1248  04a2 a30000        	cpw	x,#0
1249  04a5 2603          	jrne	L651
1250  04a7 cc056d        	jp	L733
1251  04aa               L651:
1252                     ; 290 			memcpy(incommingNumberToMain,incommingNumber,10);
1254  04aa ae000a        	ldw	x,#10
1255  04ad               L66:
1256  04ad d60019        	ld	a,(_incommingNumber-1,x)
1257  04b0 d7000f        	ld	(_incommingNumberToMain-1,x),a
1258  04b3 5a            	decw	x
1259  04b4 26f7          	jrne	L66
1260                     ; 291 			modem_send_sms('p',incommingNumber,"Отправьте в ответном смс 7 цифр выведенных на индикатор устройства");/**/
1262  04b6 ae04c9        	ldw	x,#L343
1263  04b9 89            	pushw	x
1264  04ba ae001a        	ldw	x,#_incommingNumber
1265  04bd 89            	pushw	x
1266  04be a670          	ld	a,#112
1267  04c0 cd0000        	call	_modem_send_sms
1269  04c3 5b04          	addw	sp,#4
1270                     ; 292 			tree_up(iMn_number,0,0,0);
1272  04c5 4b00          	push	#0
1273  04c7 4b00          	push	#0
1274  04c9 5f            	clrw	x
1275  04ca a60b          	ld	a,#11
1276  04cc 95            	ld	xh,a
1277  04cd cd0000        	call	_tree_up
1279  04d0 85            	popw	x
1280                     ; 293 			rand_dig[0]=(rand()%10);
1282  04d1 cd0000        	call	_rand
1284  04d4 a60a          	ld	a,#10
1285  04d6 cd0000        	call	c_smodx
1287  04d9 01            	rrwa	x,a
1288  04da c70000        	ld	_rand_dig,a
1289  04dd 02            	rlwa	x,a
1290                     ; 294 			rand_dig[1]=(rand()%10);
1292  04de cd0000        	call	_rand
1294  04e1 a60a          	ld	a,#10
1295  04e3 cd0000        	call	c_smodx
1297  04e6 01            	rrwa	x,a
1298  04e7 c70001        	ld	_rand_dig+1,a
1299  04ea 02            	rlwa	x,a
1300                     ; 295 			rand_dig[2]=(rand()%10);
1302  04eb cd0000        	call	_rand
1304  04ee a60a          	ld	a,#10
1305  04f0 cd0000        	call	c_smodx
1307  04f3 01            	rrwa	x,a
1308  04f4 c70002        	ld	_rand_dig+2,a
1309  04f7 02            	rlwa	x,a
1310                     ; 296 			rand_dig[3]=(rand()%10);
1312  04f8 cd0000        	call	_rand
1314  04fb a60a          	ld	a,#10
1315  04fd cd0000        	call	c_smodx
1317  0500 01            	rrwa	x,a
1318  0501 c70003        	ld	_rand_dig+3,a
1319  0504 02            	rlwa	x,a
1320                     ; 297 			rand_dig[4]=(rand()%10);
1322  0505 cd0000        	call	_rand
1324  0508 a60a          	ld	a,#10
1325  050a cd0000        	call	c_smodx
1327  050d 01            	rrwa	x,a
1328  050e c70004        	ld	_rand_dig+4,a
1329  0511 02            	rlwa	x,a
1330                     ; 298 			rand_dig[5]=(rand()%10);
1332  0512 cd0000        	call	_rand
1334  0515 a60a          	ld	a,#10
1335  0517 cd0000        	call	c_smodx
1337  051a 01            	rrwa	x,a
1338  051b c70005        	ld	_rand_dig+5,a
1339  051e 02            	rlwa	x,a
1340                     ; 299 			rand_dig[6]=(rand()%10);
1342  051f cd0000        	call	_rand
1344  0522 a60a          	ld	a,#10
1345  0524 cd0000        	call	c_smodx
1347  0527 01            	rrwa	x,a
1348  0528 c70006        	ld	_rand_dig+6,a
1349  052b 02            	rlwa	x,a
1350                     ; 300 			sprintf(rand_dig_str,"%d%d%d%d%d%d%d",(int)rand_dig[0],(int)rand_dig[1],(int)rand_dig[2],(int)rand_dig[3],(int)rand_dig[4],(int)rand_dig[5],(int)rand_dig[6]);
1352  052c c60006        	ld	a,_rand_dig+6
1353  052f 5f            	clrw	x
1354  0530 97            	ld	xl,a
1355  0531 89            	pushw	x
1356  0532 c60005        	ld	a,_rand_dig+5
1357  0535 5f            	clrw	x
1358  0536 97            	ld	xl,a
1359  0537 89            	pushw	x
1360  0538 c60004        	ld	a,_rand_dig+4
1361  053b 5f            	clrw	x
1362  053c 97            	ld	xl,a
1363  053d 89            	pushw	x
1364  053e c60003        	ld	a,_rand_dig+3
1365  0541 5f            	clrw	x
1366  0542 97            	ld	xl,a
1367  0543 89            	pushw	x
1368  0544 c60002        	ld	a,_rand_dig+2
1369  0547 5f            	clrw	x
1370  0548 97            	ld	xl,a
1371  0549 89            	pushw	x
1372  054a c60001        	ld	a,_rand_dig+1
1373  054d 5f            	clrw	x
1374  054e 97            	ld	xl,a
1375  054f 89            	pushw	x
1376  0550 c60000        	ld	a,_rand_dig
1377  0553 5f            	clrw	x
1378  0554 97            	ld	xl,a
1379  0555 89            	pushw	x
1380  0556 ae04ba        	ldw	x,#L543
1381  0559 89            	pushw	x
1382  055a ae0000        	ldw	x,#_rand_dig_str
1383  055d cd0000        	call	_sprintf
1385  0560 5b10          	addw	sp,#16
1386                     ; 301 			ret_ind(120,0);
1388  0562 5f            	clrw	x
1389  0563 a678          	ld	a,#120
1390  0565 95            	ld	xh,a
1391  0566 cd0000        	call	_ret_ind
1394  0569 ac060d06      	jpf	L743
1395  056d               L733:
1396                     ; 303 		else if(strstr(uart1_an_buffer,rand_dig_str/*"1234576"*/))
1398  056d ae0000        	ldw	x,#_rand_dig_str
1399  0570 89            	pushw	x
1400  0571 ae0025        	ldw	x,#_uart1_an_buffer
1401  0574 cd0000        	call	_strstr
1403  0577 5b02          	addw	sp,#2
1404  0579 a30000        	cpw	x,#0
1405  057c 2758          	jreq	L153
1406                     ; 305 			if(memcmp(incommingNumber,incommingNumberToMain,10)==0)
1408  057e ae000a        	ldw	x,#10
1409  0581 89            	pushw	x
1410  0582 ae0010        	ldw	x,#_incommingNumberToMain
1411  0585 89            	pushw	x
1412  0586 ae001a        	ldw	x,#_incommingNumber
1413  0589 cd0000        	call	_memcmp
1415  058c 5b04          	addw	sp,#4
1416  058e a30000        	cpw	x,#0
1417  0591 2703          	jreq	L061
1418  0593 cc0d06        	jp	L743
1419  0596               L061:
1420                     ; 307 				memcpy(MAIN_NUMBER,incommingNumberToMain,10);
1422  0596 ae000a        	ldw	x,#10
1423  0599               L07:
1424  0599 d6000f        	ld	a,(_incommingNumberToMain-1,x)
1425  059c d7ffff        	ld	(_MAIN_NUMBER-1,x),a
1426  059f 5a            	decw	x
1427  05a0 26f7          	jrne	L07
1428                     ; 308 				AUTH_NUMBER_FLAGS=0x01;
1430  05a2 a601          	ld	a,#1
1431  05a4 ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1432  05a7 cd0000        	call	c_eewrc
1434                     ; 309 				modem_send_sms('p',MAIN_NUMBER,"Ваш номер установлен как главный");
1436  05aa ae0499        	ldw	x,#L553
1437  05ad 89            	pushw	x
1438  05ae ae0000        	ldw	x,#_MAIN_NUMBER
1439  05b1 89            	pushw	x
1440  05b2 a670          	ld	a,#112
1441  05b4 cd0000        	call	_modem_send_sms
1443  05b7 5b04          	addw	sp,#4
1444                     ; 310 				tree_down(0,0);
1446  05b9 5f            	clrw	x
1447  05ba 4f            	clr	a
1448  05bb 95            	ld	xh,a
1449  05bc cd0000        	call	_tree_down
1451                     ; 311 				ind=iMn;
1453  05bf 3f00          	clr	_a_ind
1454                     ; 312 				ret_ind(0,0);
1456  05c1 5f            	clrw	x
1457  05c2 4f            	clr	a
1458  05c3 95            	ld	xh,a
1459  05c4 cd0000        	call	_ret_ind
1461                     ; 313 				HUMAN_SET_EE=1;
1463  05c7 ae0001        	ldw	x,#1
1464  05ca 89            	pushw	x
1465  05cb ae0000        	ldw	x,#_HUMAN_SET_EE
1466  05ce cd0000        	call	c_eewrw
1468  05d1 85            	popw	x
1469  05d2 ac060d06      	jpf	L743
1470  05d6               L153:
1471                     ; 316 		else if((strstr(russianText,"НОМЕР"))&&(isFromMainNumberMess)) //"Установить номер
1473  05d6 ae0493        	ldw	x,#L363
1474  05d9 89            	pushw	x
1475  05da ae0000        	ldw	x,#_russianText
1476  05dd cd0000        	call	_strstr
1478  05e0 5b02          	addw	sp,#2
1479  05e2 a30000        	cpw	x,#0
1480  05e5 2603          	jrne	L261
1481  05e7 cc0703        	jp	L163
1482  05ea               L261:
1484  05ea 3d04          	tnz	_isFromMainNumberMess
1485  05ec 2603          	jrne	L461
1486  05ee cc0703        	jp	L163
1487  05f1               L461:
1488                     ; 318 			number_temp=find_number_in_text(russianText);
1490  05f1 ae0000        	ldw	x,#_russianText
1491  05f4 cd0000        	call	_find_number_in_text
1493  05f7 bf00          	ldw	_number_temp,x
1494                     ; 319 			if(number_temp)
1496  05f9 be00          	ldw	x,_number_temp
1497  05fb 2603          	jrne	L661
1498  05fd cc0d06        	jp	L743
1499  0600               L661:
1500                     ; 321 				if(find_this_number_in_autorized(number_temp)) 
1502  0600 be00          	ldw	x,_number_temp
1503  0602 cd0000        	call	_find_this_number_in_autorized
1505  0605 4d            	tnz	a
1506  0606 2713          	jreq	L763
1507                     ; 323 					modem_send_sms('p',MAIN_NUMBER,"Такой номер уже есть в списке авторизованых");
1509  0608 ae0467        	ldw	x,#L173
1510  060b 89            	pushw	x
1511  060c ae0000        	ldw	x,#_MAIN_NUMBER
1512  060f 89            	pushw	x
1513  0610 a670          	ld	a,#112
1514  0612 cd0000        	call	_modem_send_sms
1516  0615 5b04          	addw	sp,#4
1518  0617 ac060d06      	jpf	L743
1519  061b               L763:
1520                     ; 325 				else if(find_empty_number_cell())
1522  061b cd0000        	call	_find_empty_number_cell
1524  061e 4d            	tnz	a
1525  061f 2603          	jrne	L071
1526  0621 cc06f0        	jp	L573
1527  0624               L071:
1528                     ; 327 					cell = find_empty_number_cell();
1530  0624 cd0000        	call	_find_empty_number_cell
1532  0627 5f            	clrw	x
1533  0628 97            	ld	xl,a
1534  0629 cf0000        	ldw	_cell,x
1535                     ; 328 					if(cell==1)
1537  062c ce0000        	ldw	x,_cell
1538  062f a30001        	cpw	x,#1
1539  0632 2625          	jrne	L773
1540                     ; 330 						memcpy(AUTH_NUMBER_1,number_temp,10);
1542  0634 ae000a        	ldw	x,#10
1543  0637               L27:
1544  0637 5a            	decw	x
1545  0638 92d600        	ld	a,([_number_temp.w],x)
1546  063b d70000        	ld	(_AUTH_NUMBER_1,x),a
1547  063e 5d            	tnzw	x
1548  063f 26f6          	jrne	L27
1549                     ; 331 						AUTH_NUMBER_FLAGS|=0b00000010;
1551  0641 c60000        	ld	a,_AUTH_NUMBER_FLAGS
1552  0644 aa02          	or	a,#2
1553  0646 ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1554  0649 cd0000        	call	c_eewrc
1556                     ; 332 						HUMAN_SET_EE=1;
1558  064c ae0001        	ldw	x,#1
1559  064f 89            	pushw	x
1560  0650 ae0000        	ldw	x,#_HUMAN_SET_EE
1561  0653 cd0000        	call	c_eewrw
1563  0656 85            	popw	x
1565  0657 2058          	jra	L104
1566  0659               L773:
1567                     ; 334 					else if(cell==2)
1569  0659 ce0000        	ldw	x,_cell
1570  065c a30002        	cpw	x,#2
1571  065f 2625          	jrne	L304
1572                     ; 336 						memcpy(AUTH_NUMBER_2,number_temp,10);
1574  0661 ae000a        	ldw	x,#10
1575  0664               L47:
1576  0664 5a            	decw	x
1577  0665 92d600        	ld	a,([_number_temp.w],x)
1578  0668 d70000        	ld	(_AUTH_NUMBER_2,x),a
1579  066b 5d            	tnzw	x
1580  066c 26f6          	jrne	L47
1581                     ; 337 						AUTH_NUMBER_FLAGS|=0b00000100;							
1583  066e c60000        	ld	a,_AUTH_NUMBER_FLAGS
1584  0671 aa04          	or	a,#4
1585  0673 ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1586  0676 cd0000        	call	c_eewrc
1588                     ; 338 						HUMAN_SET_EE=1;
1590  0679 ae0001        	ldw	x,#1
1591  067c 89            	pushw	x
1592  067d ae0000        	ldw	x,#_HUMAN_SET_EE
1593  0680 cd0000        	call	c_eewrw
1595  0683 85            	popw	x
1597  0684 202b          	jra	L104
1598  0686               L304:
1599                     ; 340 					else if(cell==3)
1601  0686 ce0000        	ldw	x,_cell
1602  0689 a30003        	cpw	x,#3
1603  068c 2623          	jrne	L104
1604                     ; 342 						memcpy(AUTH_NUMBER_3,number_temp,10);
1606  068e ae000a        	ldw	x,#10
1607  0691               L67:
1608  0691 5a            	decw	x
1609  0692 92d600        	ld	a,([_number_temp.w],x)
1610  0695 d70000        	ld	(_AUTH_NUMBER_3,x),a
1611  0698 5d            	tnzw	x
1612  0699 26f6          	jrne	L67
1613                     ; 343 						AUTH_NUMBER_FLAGS|=0b00001000;							
1615  069b c60000        	ld	a,_AUTH_NUMBER_FLAGS
1616  069e aa08          	or	a,#8
1617  06a0 ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1618  06a3 cd0000        	call	c_eewrc
1620                     ; 344 						HUMAN_SET_EE=1;
1622  06a6 ae0001        	ldw	x,#1
1623  06a9 89            	pushw	x
1624  06aa ae0000        	ldw	x,#_HUMAN_SET_EE
1625  06ad cd0000        	call	c_eewrw
1627  06b0 85            	popw	x
1628  06b1               L104:
1629                     ; 346 					sprintf(tempRussianText,"Номер %s добавлен в список (ячейка %d)",number_temp,cell);
1631  06b1 ce0000        	ldw	x,_cell
1632  06b4 89            	pushw	x
1633  06b5 be00          	ldw	x,_number_temp
1634  06b7 89            	pushw	x
1635  06b8 ae0440        	ldw	x,#L114
1636  06bb 89            	pushw	x
1637  06bc ae0000        	ldw	x,#_tempRussianText
1638  06bf cd0000        	call	_sprintf
1640  06c2 5b06          	addw	sp,#6
1641                     ; 347 					modem_send_sms('p',MAIN_NUMBER,tempRussianText);
1643  06c4 ae0000        	ldw	x,#_tempRussianText
1644  06c7 89            	pushw	x
1645  06c8 ae0000        	ldw	x,#_MAIN_NUMBER
1646  06cb 89            	pushw	x
1647  06cc a670          	ld	a,#112
1648  06ce cd0000        	call	_modem_send_sms
1650  06d1 5b04          	addw	sp,#4
1651                     ; 348 					sprintf(tempRussianText,"Ваш номер добавлен в список ");
1653  06d3 ae0423        	ldw	x,#L314
1654  06d6 89            	pushw	x
1655  06d7 ae0000        	ldw	x,#_tempRussianText
1656  06da cd0000        	call	_sprintf
1658  06dd 85            	popw	x
1659                     ; 349 					modem_send_sms('p',number_temp,tempRussianText);
1661  06de ae0000        	ldw	x,#_tempRussianText
1662  06e1 89            	pushw	x
1663  06e2 be00          	ldw	x,_number_temp
1664  06e4 89            	pushw	x
1665  06e5 a670          	ld	a,#112
1666  06e7 cd0000        	call	_modem_send_sms
1668  06ea 5b04          	addw	sp,#4
1670  06ec ac060d06      	jpf	L743
1671  06f0               L573:
1672                     ; 354 					modem_send_sms('p',MAIN_NUMBER,"Номер не добавлен, память заполнена");
1674  06f0 ae03ff        	ldw	x,#L714
1675  06f3 89            	pushw	x
1676  06f4 ae0000        	ldw	x,#_MAIN_NUMBER
1677  06f7 89            	pushw	x
1678  06f8 a670          	ld	a,#112
1679  06fa cd0000        	call	_modem_send_sms
1681  06fd 5b04          	addw	sp,#4
1682  06ff ac060d06      	jpf	L743
1683  0703               L163:
1684                     ; 361 		else if((strstr(russianText,"СПИСОК"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Список телефонов
1686  0703 ae03f8        	ldw	x,#L524
1687  0706 89            	pushw	x
1688  0707 ae0000        	ldw	x,#_russianText
1689  070a cd0000        	call	_strstr
1691  070d 5b02          	addw	sp,#2
1692  070f a30000        	cpw	x,#0
1693  0712 2603          	jrne	L271
1694  0714 cc07c1        	jp	L324
1695  0717               L271:
1697  0717 3d04          	tnz	_isFromMainNumberMess
1698  0719 2607          	jrne	L724
1700  071b 3d03          	tnz	_isFromAutorizedNumberMess
1701  071d 2603          	jrne	L471
1702  071f cc07c1        	jp	L324
1703  0722               L471:
1704  0722               L724:
1705                     ; 364 			sprintf(tempRussianText,"Список:\n"); //номеров\n
1707  0722 ae03ef        	ldw	x,#L134
1708  0725 89            	pushw	x
1709  0726 ae0000        	ldw	x,#_tempRussianText
1710  0729 cd0000        	call	_sprintf
1712  072c 85            	popw	x
1713                     ; 366 			strncat(tempRussianText,MAIN_NUMBER,10);
1715  072d ae000a        	ldw	x,#10
1716  0730 89            	pushw	x
1717  0731 ae0000        	ldw	x,#_MAIN_NUMBER
1718  0734 89            	pushw	x
1719  0735 ae0000        	ldw	x,#_tempRussianText
1720  0738 cd0000        	call	_strncat
1722  073b 5b04          	addw	sp,#4
1723                     ; 367 			strcat(tempRussianText," (гл.)\n");
1725  073d ae03e7        	ldw	x,#L334
1726  0740 89            	pushw	x
1727  0741 ae0000        	ldw	x,#_tempRussianText
1728  0744 cd0000        	call	_strcat
1730  0747 85            	popw	x
1731                     ; 371 			if(AUTH_NUMBER_FLAGS&0x02)
1733  0748 c60000        	ld	a,_AUTH_NUMBER_FLAGS
1734  074b a502          	bcp	a,#2
1735  074d 271b          	jreq	L534
1736                     ; 374 				strncat(tempRussianText,AUTH_NUMBER_1,10);
1738  074f ae000a        	ldw	x,#10
1739  0752 89            	pushw	x
1740  0753 ae0000        	ldw	x,#_AUTH_NUMBER_1
1741  0756 89            	pushw	x
1742  0757 ae0000        	ldw	x,#_tempRussianText
1743  075a cd0000        	call	_strncat
1745  075d 5b04          	addw	sp,#4
1746                     ; 375 				strcat(tempRussianText," (1)\n");	
1748  075f ae03e1        	ldw	x,#L734
1749  0762 89            	pushw	x
1750  0763 ae0000        	ldw	x,#_tempRussianText
1751  0766 cd0000        	call	_strcat
1753  0769 85            	popw	x
1754  076a               L534:
1755                     ; 377 			if(AUTH_NUMBER_FLAGS&0x04)
1757  076a c60000        	ld	a,_AUTH_NUMBER_FLAGS
1758  076d a504          	bcp	a,#4
1759  076f 271b          	jreq	L144
1760                     ; 380 				strncat(tempRussianText,AUTH_NUMBER_2,10);
1762  0771 ae000a        	ldw	x,#10
1763  0774 89            	pushw	x
1764  0775 ae0000        	ldw	x,#_AUTH_NUMBER_2
1765  0778 89            	pushw	x
1766  0779 ae0000        	ldw	x,#_tempRussianText
1767  077c cd0000        	call	_strncat
1769  077f 5b04          	addw	sp,#4
1770                     ; 381 				strcat(tempRussianText," (2)\n");	
1772  0781 ae03db        	ldw	x,#L344
1773  0784 89            	pushw	x
1774  0785 ae0000        	ldw	x,#_tempRussianText
1775  0788 cd0000        	call	_strcat
1777  078b 85            	popw	x
1778  078c               L144:
1779                     ; 383 			if(AUTH_NUMBER_FLAGS&0x08)
1781  078c c60000        	ld	a,_AUTH_NUMBER_FLAGS
1782  078f a508          	bcp	a,#8
1783  0791 271b          	jreq	L544
1784                     ; 386 				strncat(tempRussianText,AUTH_NUMBER_3,10);
1786  0793 ae000a        	ldw	x,#10
1787  0796 89            	pushw	x
1788  0797 ae0000        	ldw	x,#_AUTH_NUMBER_3
1789  079a 89            	pushw	x
1790  079b ae0000        	ldw	x,#_tempRussianText
1791  079e cd0000        	call	_strncat
1793  07a1 5b04          	addw	sp,#4
1794                     ; 387 				strcat(tempRussianText," (3)");	
1796  07a3 ae03d6        	ldw	x,#L744
1797  07a6 89            	pushw	x
1798  07a7 ae0000        	ldw	x,#_tempRussianText
1799  07aa cd0000        	call	_strcat
1801  07ad 85            	popw	x
1802  07ae               L544:
1803                     ; 389 			modem_send_sms('p',incommingNumber,tempRussianText);
1805  07ae ae0000        	ldw	x,#_tempRussianText
1806  07b1 89            	pushw	x
1807  07b2 ae001a        	ldw	x,#_incommingNumber
1808  07b5 89            	pushw	x
1809  07b6 a670          	ld	a,#112
1810  07b8 cd0000        	call	_modem_send_sms
1812  07bb 5b04          	addw	sp,#4
1814  07bd ac060d06      	jpf	L743
1815  07c1               L324:
1816                     ; 392 		else if((strstr(russianText,"УДАЛИТЬ"))&&(isFromMainNumberMess)) //Удаление номеров
1818  07c1 ae03ce        	ldw	x,#L554
1819  07c4 89            	pushw	x
1820  07c5 ae0000        	ldw	x,#_russianText
1821  07c8 cd0000        	call	_strstr
1823  07cb 5b02          	addw	sp,#2
1824  07cd a30000        	cpw	x,#0
1825  07d0 2603          	jrne	L671
1826  07d2 cc08c6        	jp	L354
1827  07d5               L671:
1829  07d5 3d04          	tnz	_isFromMainNumberMess
1830  07d7 2603          	jrne	L002
1831  07d9 cc08c6        	jp	L354
1832  07dc               L002:
1833                     ; 394 			if(strstr(russianText,"ВСЕ"))
1835  07dc ae03ca        	ldw	x,#L164
1836  07df 89            	pushw	x
1837  07e0 ae0000        	ldw	x,#_russianText
1838  07e3 cd0000        	call	_strstr
1840  07e6 5b02          	addw	sp,#2
1841  07e8 a30000        	cpw	x,#0
1842  07eb 2743          	jreq	L754
1843                     ; 396 				if(AUTH_NUMBER_FLAGS&0x0e)
1845  07ed c60000        	ld	a,_AUTH_NUMBER_FLAGS
1846  07f0 a50e          	bcp	a,#14
1847  07f2 2729          	jreq	L364
1848                     ; 398 					AUTH_NUMBER_FLAGS&=0x01;
1850  07f4 c60000        	ld	a,_AUTH_NUMBER_FLAGS
1851  07f7 a401          	and	a,#1
1852  07f9 ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1853  07fc cd0000        	call	c_eewrc
1855                     ; 400 					modem_send_sms('p',MAIN_NUMBER,"Все номера кроме главного удалены");
1857  07ff ae03a8        	ldw	x,#L564
1858  0802 89            	pushw	x
1859  0803 ae0000        	ldw	x,#_MAIN_NUMBER
1860  0806 89            	pushw	x
1861  0807 a670          	ld	a,#112
1862  0809 cd0000        	call	_modem_send_sms
1864  080c 5b04          	addw	sp,#4
1865                     ; 401 					HUMAN_SET_EE=1;
1867  080e ae0001        	ldw	x,#1
1868  0811 89            	pushw	x
1869  0812 ae0000        	ldw	x,#_HUMAN_SET_EE
1870  0815 cd0000        	call	c_eewrw
1872  0818 85            	popw	x
1874  0819 ac060d06      	jpf	L743
1875  081d               L364:
1876                     ; 405 					modem_send_sms('p',MAIN_NUMBER,"В списке нет номеров кроме главного");
1878  081d ae0384        	ldw	x,#L174
1879  0820 89            	pushw	x
1880  0821 ae0000        	ldw	x,#_MAIN_NUMBER
1881  0824 89            	pushw	x
1882  0825 a670          	ld	a,#112
1883  0827 cd0000        	call	_modem_send_sms
1885  082a 5b04          	addw	sp,#4
1886  082c ac060d06      	jpf	L743
1887  0830               L754:
1888                     ; 408 			else if(find_number_in_text(russianText))
1890  0830 ae0000        	ldw	x,#_russianText
1891  0833 cd0000        	call	_find_number_in_text
1893  0836 a30000        	cpw	x,#0
1894  0839 2603          	jrne	L202
1895  083b cc0d06        	jp	L743
1896  083e               L202:
1897                     ; 410 				number_temp=find_number_in_text(russianText);
1899  083e ae0000        	ldw	x,#_russianText
1900  0841 cd0000        	call	_find_number_in_text
1902  0844 bf00          	ldw	_number_temp,x
1903                     ; 411 				if(find_this_number_in_autorized(number_temp))
1905  0846 be00          	ldw	x,_number_temp
1906  0848 cd0000        	call	_find_this_number_in_autorized
1908  084b 4d            	tnz	a
1909  084c 2765          	jreq	L774
1910                     ; 413 					char temp=find_this_number_in_autorized(number_temp);
1912  084e be00          	ldw	x,_number_temp
1913  0850 cd0000        	call	_find_this_number_in_autorized
1915  0853 6b21          	ld	(OFST+0,sp),a
1916                     ; 414 					AUTH_NUMBER_FLAGS&=(char)(~(1<<temp));
1918  0855 7b21          	ld	a,(OFST+0,sp)
1919  0857 5f            	clrw	x
1920  0858 97            	ld	xl,a
1921  0859 a601          	ld	a,#1
1922  085b 5d            	tnzw	x
1923  085c 2704          	jreq	L001
1924  085e               L201:
1925  085e 48            	sll	a
1926  085f 5a            	decw	x
1927  0860 26fc          	jrne	L201
1928  0862               L001:
1929  0862 43            	cpl	a
1930  0863 6b01          	ld	(OFST-32,sp),a
1931  0865 c60000        	ld	a,_AUTH_NUMBER_FLAGS
1932  0868 1401          	and	a,(OFST-32,sp)
1933  086a ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1934  086d cd0000        	call	c_eewrc
1936                     ; 415 					strcpy(tempRussianText,"Номер ");
1938  0870 ae037d        	ldw	x,#L105
1939  0873 89            	pushw	x
1940  0874 ae0000        	ldw	x,#_tempRussianText
1941  0877 cd0000        	call	_strcpy
1943  087a 85            	popw	x
1944                     ; 416 					strncat(tempRussianText,number_temp,10);
1946  087b ae000a        	ldw	x,#10
1947  087e 89            	pushw	x
1948  087f be00          	ldw	x,_number_temp
1949  0881 89            	pushw	x
1950  0882 ae0000        	ldw	x,#_tempRussianText
1951  0885 cd0000        	call	_strncat
1953  0888 5b04          	addw	sp,#4
1954                     ; 417 					strcat(tempRussianText," удален из списка номеров");
1956  088a ae0363        	ldw	x,#L305
1957  088d 89            	pushw	x
1958  088e ae0000        	ldw	x,#_tempRussianText
1959  0891 cd0000        	call	_strcat
1961  0894 85            	popw	x
1962                     ; 418 					modem_send_sms('p',MAIN_NUMBER,tempRussianText);
1964  0895 ae0000        	ldw	x,#_tempRussianText
1965  0898 89            	pushw	x
1966  0899 ae0000        	ldw	x,#_MAIN_NUMBER
1967  089c 89            	pushw	x
1968  089d a670          	ld	a,#112
1969  089f cd0000        	call	_modem_send_sms
1971  08a2 5b04          	addw	sp,#4
1972                     ; 419 					HUMAN_SET_EE=1;
1974  08a4 ae0001        	ldw	x,#1
1975  08a7 89            	pushw	x
1976  08a8 ae0000        	ldw	x,#_HUMAN_SET_EE
1977  08ab cd0000        	call	c_eewrw
1979  08ae 85            	popw	x
1981  08af ac060d06      	jpf	L743
1982  08b3               L774:
1983                     ; 421 				else modem_send_sms('p',MAIN_NUMBER,"Такого номера нет в списке");
1985  08b3 ae0348        	ldw	x,#L705
1986  08b6 89            	pushw	x
1987  08b7 ae0000        	ldw	x,#_MAIN_NUMBER
1988  08ba 89            	pushw	x
1989  08bb a670          	ld	a,#112
1990  08bd cd0000        	call	_modem_send_sms
1992  08c0 5b04          	addw	sp,#4
1993  08c2 ac060d06      	jpf	L743
1994  08c6               L354:
1995                     ; 425 		else if((strstr(russianText,"УСТАВКИ"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //УСТАВКИ
1997  08c6 ae0340        	ldw	x,#L515
1998  08c9 89            	pushw	x
1999  08ca ae0000        	ldw	x,#_russianText
2000  08cd cd0000        	call	_strstr
2002  08d0 5b02          	addw	sp,#2
2003  08d2 a30000        	cpw	x,#0
2004  08d5 2603          	jrne	L402
2005  08d7 cc0961        	jp	L315
2006  08da               L402:
2008  08da 3d04          	tnz	_isFromMainNumberMess
2009  08dc 2604          	jrne	L715
2011  08de 3d03          	tnz	_isFromAutorizedNumberMess
2012  08e0 277f          	jreq	L315
2013  08e2               L715:
2014                     ; 427 			if(MODE_EE==1)
2016  08e2 c60000        	ld	a,_MODE_EE
2017  08e5 a101          	cp	a,#1
2018  08e7 261d          	jrne	L125
2019                     ; 429 				sprintf(tempRussianText,"Режим - по воде\nуставка %dгр.\nмакс.мощность %d",(int)targetTemper,(int)MAX_POWER_EE);
2021  08e9 5f            	clrw	x
2022  08ea c60000        	ld	a,_MAX_POWER_EE
2023  08ed 2a01          	jrpl	L401
2024  08ef 53            	cplw	x
2025  08f0               L401:
2026  08f0 97            	ld	xl,a
2027  08f1 89            	pushw	x
2028  08f2 5f            	clrw	x
2029  08f3 b600          	ld	a,_targetTemper
2030  08f5 2a01          	jrpl	L601
2031  08f7 53            	cplw	x
2032  08f8               L601:
2033  08f8 97            	ld	xl,a
2034  08f9 89            	pushw	x
2035  08fa ae0311        	ldw	x,#L325
2036  08fd 89            	pushw	x
2037  08fe ae0000        	ldw	x,#_tempRussianText
2038  0901 cd0000        	call	_sprintf
2040  0904 5b06          	addw	sp,#6
2041  0906               L125:
2042                     ; 431 			if(MODE_EE==2)
2044  0906 c60000        	ld	a,_MODE_EE
2045  0909 a102          	cp	a,#2
2046  090b 261d          	jrne	L525
2047                     ; 433 				sprintf(tempRussianText,"Режим - по воздуху\nуставка %dгр.\nмакс.мощность %d",(int)targetTemper,(int)MAX_POWER_EE);
2049  090d 5f            	clrw	x
2050  090e c60000        	ld	a,_MAX_POWER_EE
2051  0911 2a01          	jrpl	L011
2052  0913 53            	cplw	x
2053  0914               L011:
2054  0914 97            	ld	xl,a
2055  0915 89            	pushw	x
2056  0916 5f            	clrw	x
2057  0917 b600          	ld	a,_targetTemper
2058  0919 2a01          	jrpl	L211
2059  091b 53            	cplw	x
2060  091c               L211:
2061  091c 97            	ld	xl,a
2062  091d 89            	pushw	x
2063  091e ae02df        	ldw	x,#L725
2064  0921 89            	pushw	x
2065  0922 ae0000        	ldw	x,#_tempRussianText
2066  0925 cd0000        	call	_sprintf
2068  0928 5b06          	addw	sp,#6
2069  092a               L525:
2070                     ; 435 			if(MODE_EE==3)
2072  092a c60000        	ld	a,_MODE_EE
2073  092d a103          	cp	a,#3
2074  092f 261d          	jrne	L135
2075                     ; 437 				sprintf(tempRussianText,"Режим - по графику\nтекущая уставка %dгр.(воздух)\nмакс.мощность %d",(int)targetTemper,(int)MAX_POWER_EE);
2077  0931 5f            	clrw	x
2078  0932 c60000        	ld	a,_MAX_POWER_EE
2079  0935 2a01          	jrpl	L411
2080  0937 53            	cplw	x
2081  0938               L411:
2082  0938 97            	ld	xl,a
2083  0939 89            	pushw	x
2084  093a 5f            	clrw	x
2085  093b b600          	ld	a,_targetTemper
2086  093d 2a01          	jrpl	L611
2087  093f 53            	cplw	x
2088  0940               L611:
2089  0940 97            	ld	xl,a
2090  0941 89            	pushw	x
2091  0942 ae029d        	ldw	x,#L335
2092  0945 89            	pushw	x
2093  0946 ae0000        	ldw	x,#_tempRussianText
2094  0949 cd0000        	call	_sprintf
2096  094c 5b06          	addw	sp,#6
2097  094e               L135:
2098                     ; 440 			modem_send_sms('p',incommingNumber,tempRussianText);
2100  094e ae0000        	ldw	x,#_tempRussianText
2101  0951 89            	pushw	x
2102  0952 ae001a        	ldw	x,#_incommingNumber
2103  0955 89            	pushw	x
2104  0956 a670          	ld	a,#112
2105  0958 cd0000        	call	_modem_send_sms
2107  095b 5b04          	addw	sp,#4
2109  095d ac060d06      	jpf	L743
2110  0961               L315:
2111                     ; 443 		else if((strstr(russianText,"РЕЖИМ"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Установка режима работы
2113  0961 ae0297        	ldw	x,#L145
2114  0964 89            	pushw	x
2115  0965 ae0000        	ldw	x,#_russianText
2116  0968 cd0000        	call	_strstr
2118  096b 5b02          	addw	sp,#2
2119  096d a30000        	cpw	x,#0
2120  0970 2773          	jreq	L735
2122  0972 3d04          	tnz	_isFromMainNumberMess
2123  0974 2604          	jrne	L345
2125  0976 3d03          	tnz	_isFromAutorizedNumberMess
2126  0978 276b          	jreq	L735
2127  097a               L345:
2128                     ; 445 			if(strstr(russianText,"ВОДА"))
2130  097a ae0292        	ldw	x,#L745
2131  097d 89            	pushw	x
2132  097e ae0000        	ldw	x,#_russianText
2133  0981 cd0000        	call	_strstr
2135  0984 5b02          	addw	sp,#2
2136  0986 a30000        	cpw	x,#0
2137  0989 271b          	jreq	L545
2138                     ; 447 				MODE_EE=1;
2140  098b a601          	ld	a,#1
2141  098d ae0000        	ldw	x,#_MODE_EE
2142  0990 cd0000        	call	c_eewrc
2144                     ; 448 				modem_send_sms('p',incommingNumber,"Установлен режим регулирования по температуре воды");
2146  0993 ae025f        	ldw	x,#L155
2147  0996 89            	pushw	x
2148  0997 ae001a        	ldw	x,#_incommingNumber
2149  099a 89            	pushw	x
2150  099b a670          	ld	a,#112
2151  099d cd0000        	call	_modem_send_sms
2153  09a0 5b04          	addw	sp,#4
2155  09a2 ac060d06      	jpf	L743
2156  09a6               L545:
2157                     ; 450 			else if(strstr(russianText,"ВОЗДУХ"))
2159  09a6 ae0258        	ldw	x,#L755
2160  09a9 89            	pushw	x
2161  09aa ae0000        	ldw	x,#_russianText
2162  09ad cd0000        	call	_strstr
2164  09b0 5b02          	addw	sp,#2
2165  09b2 a30000        	cpw	x,#0
2166  09b5 271b          	jreq	L555
2167                     ; 452 				MODE_EE=2;
2169  09b7 a602          	ld	a,#2
2170  09b9 ae0000        	ldw	x,#_MODE_EE
2171  09bc cd0000        	call	c_eewrc
2173                     ; 453 				modem_send_sms('p',incommingNumber,"Установлен режим регулирования по температуре воздуха");
2175  09bf ae0222        	ldw	x,#L165
2176  09c2 89            	pushw	x
2177  09c3 ae001a        	ldw	x,#_incommingNumber
2178  09c6 89            	pushw	x
2179  09c7 a670          	ld	a,#112
2180  09c9 cd0000        	call	_modem_send_sms
2182  09cc 5b04          	addw	sp,#4
2184  09ce ac060d06      	jpf	L743
2185  09d2               L555:
2186                     ; 457 				modem_send_sms('p',incommingNumber,"Команда не распознана");
2188  09d2 ae020c        	ldw	x,#L565
2189  09d5 89            	pushw	x
2190  09d6 ae001a        	ldw	x,#_incommingNumber
2191  09d9 89            	pushw	x
2192  09da a670          	ld	a,#112
2193  09dc cd0000        	call	_modem_send_sms
2195  09df 5b04          	addw	sp,#4
2196  09e1 ac060d06      	jpf	L743
2197  09e5               L735:
2198                     ; 463 		else if((strstr(russianText,"ВОДА"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Установка температуры воды
2200  09e5 ae0292        	ldw	x,#L745
2201  09e8 89            	pushw	x
2202  09e9 ae0000        	ldw	x,#_russianText
2203  09ec cd0000        	call	_strstr
2205  09ef 5b02          	addw	sp,#2
2206  09f1 a30000        	cpw	x,#0
2207  09f4 2603cc0a81    	jreq	L175
2209  09f9 3d04          	tnz	_isFromMainNumberMess
2210  09fb 2604          	jrne	L375
2212  09fd 3d03          	tnz	_isFromAutorizedNumberMess
2213  09ff 27f5          	jreq	L175
2214  0a01               L375:
2215                     ; 465 			short tempSS=find_number_fild_in_text(russianText);	
2217  0a01 ae0000        	ldw	x,#_russianText
2218  0a04 cd0000        	call	_find_number_fild_in_text
2220  0a07 1f20          	ldw	(OFST-1,sp),x
2221                     ; 467 			if(MODE_EE!=1)
2223  0a09 c60000        	ld	a,_MODE_EE
2224  0a0c a101          	cp	a,#1
2225  0a0e 2713          	jreq	L575
2226                     ; 469 				modem_send_sms('p',incommingNumber,"В текущем режиме работы выполнение такой команды невозможно");	
2228  0a10 ae01d0        	ldw	x,#L775
2229  0a13 89            	pushw	x
2230  0a14 ae001a        	ldw	x,#_incommingNumber
2231  0a17 89            	pushw	x
2232  0a18 a670          	ld	a,#112
2233  0a1a cd0000        	call	_modem_send_sms
2235  0a1d 5b04          	addw	sp,#4
2237  0a1f ac060d06      	jpf	L743
2238  0a23               L575:
2239                     ; 471 			else if((tempSS<5)||(tempSS>85))
2241  0a23 9c            	rvf
2242  0a24 1e20          	ldw	x,(OFST-1,sp)
2243  0a26 a30005        	cpw	x,#5
2244  0a29 2f08          	jrslt	L506
2246  0a2b 9c            	rvf
2247  0a2c 1e20          	ldw	x,(OFST-1,sp)
2248  0a2e a30056        	cpw	x,#86
2249  0a31 2f13          	jrslt	L306
2250  0a33               L506:
2251                     ; 473 				modem_send_sms('p',incommingNumber,"Значение находится за пределами разрешенных(5-85).Команда отклонена");
2253  0a33 ae018c        	ldw	x,#L706
2254  0a36 89            	pushw	x
2255  0a37 ae001a        	ldw	x,#_incommingNumber
2256  0a3a 89            	pushw	x
2257  0a3b a670          	ld	a,#112
2258  0a3d cd0000        	call	_modem_send_sms
2260  0a40 5b04          	addw	sp,#4
2262  0a42 ac060d06      	jpf	L743
2263  0a46               L306:
2264                     ; 477 				NECC_TEMPER_WATER_EE=tempSS;
2266  0a46 7b21          	ld	a,(OFST+0,sp)
2267  0a48 ae0000        	ldw	x,#_NECC_TEMPER_WATER_EE
2268  0a4b cd0000        	call	c_eewrc
2270                     ; 478 				sprintf(tempRussianText,"Температура воды установлена на %dгр.Ц.",(int)NECC_TEMPER_WATER_EE);
2272  0a4e 5f            	clrw	x
2273  0a4f c60000        	ld	a,_NECC_TEMPER_WATER_EE
2274  0a52 2a01          	jrpl	L021
2275  0a54 53            	cplw	x
2276  0a55               L021:
2277  0a55 97            	ld	xl,a
2278  0a56 89            	pushw	x
2279  0a57 ae0164        	ldw	x,#L316
2280  0a5a 89            	pushw	x
2281  0a5b ae0000        	ldw	x,#_tempRussianText
2282  0a5e cd0000        	call	_sprintf
2284  0a61 5b04          	addw	sp,#4
2285                     ; 479 				modem_send_sms('p',incommingNumber,tempRussianText);
2287  0a63 ae0000        	ldw	x,#_tempRussianText
2288  0a66 89            	pushw	x
2289  0a67 ae001a        	ldw	x,#_incommingNumber
2290  0a6a 89            	pushw	x
2291  0a6b a670          	ld	a,#112
2292  0a6d cd0000        	call	_modem_send_sms
2294  0a70 5b04          	addw	sp,#4
2295                     ; 480 				HUMAN_SET_EE=1;
2297  0a72 ae0001        	ldw	x,#1
2298  0a75 89            	pushw	x
2299  0a76 ae0000        	ldw	x,#_HUMAN_SET_EE
2300  0a79 cd0000        	call	c_eewrw
2302  0a7c 85            	popw	x
2303  0a7d ac060d06      	jpf	L743
2304  0a81               L175:
2305                     ; 484 		else if((strstr(russianText,"ВОЗДУХ"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Установка температуры воздуха
2307  0a81 ae0258        	ldw	x,#L755
2308  0a84 89            	pushw	x
2309  0a85 ae0000        	ldw	x,#_russianText
2310  0a88 cd0000        	call	_strstr
2312  0a8b 5b02          	addw	sp,#2
2313  0a8d a30000        	cpw	x,#0
2314  0a90 2603cc0b1d    	jreq	L716
2316  0a95 3d04          	tnz	_isFromMainNumberMess
2317  0a97 2604          	jrne	L126
2319  0a99 3d03          	tnz	_isFromAutorizedNumberMess
2320  0a9b 27f5          	jreq	L716
2321  0a9d               L126:
2322                     ; 486 			short tempSS=find_number_fild_in_text(russianText);	
2324  0a9d ae0000        	ldw	x,#_russianText
2325  0aa0 cd0000        	call	_find_number_fild_in_text
2327  0aa3 1f20          	ldw	(OFST-1,sp),x
2328                     ; 488 			if(MODE_EE!=2)
2330  0aa5 c60000        	ld	a,_MODE_EE
2331  0aa8 a102          	cp	a,#2
2332  0aaa 2713          	jreq	L326
2333                     ; 490 				modem_send_sms('p',incommingNumber,"В текущем режиме работы выполнение такой команды невозможно");	
2335  0aac ae01d0        	ldw	x,#L775
2336  0aaf 89            	pushw	x
2337  0ab0 ae001a        	ldw	x,#_incommingNumber
2338  0ab3 89            	pushw	x
2339  0ab4 a670          	ld	a,#112
2340  0ab6 cd0000        	call	_modem_send_sms
2342  0ab9 5b04          	addw	sp,#4
2344  0abb ac060d06      	jpf	L743
2345  0abf               L326:
2346                     ; 492 			else if((tempSS<5)||(tempSS>35))
2348  0abf 9c            	rvf
2349  0ac0 1e20          	ldw	x,(OFST-1,sp)
2350  0ac2 a30005        	cpw	x,#5
2351  0ac5 2f08          	jrslt	L136
2353  0ac7 9c            	rvf
2354  0ac8 1e20          	ldw	x,(OFST-1,sp)
2355  0aca a30024        	cpw	x,#36
2356  0acd 2f13          	jrslt	L726
2357  0acf               L136:
2358                     ; 494 				modem_send_sms('p',incommingNumber,"Значение находится за пределами разрешенных(5-35).Команда отклонена");
2360  0acf ae0120        	ldw	x,#L336
2361  0ad2 89            	pushw	x
2362  0ad3 ae001a        	ldw	x,#_incommingNumber
2363  0ad6 89            	pushw	x
2364  0ad7 a670          	ld	a,#112
2365  0ad9 cd0000        	call	_modem_send_sms
2367  0adc 5b04          	addw	sp,#4
2369  0ade ac060d06      	jpf	L743
2370  0ae2               L726:
2371                     ; 498 				NECC_TEMPER_AIR_EE=tempSS;
2373  0ae2 7b21          	ld	a,(OFST+0,sp)
2374  0ae4 ae0000        	ldw	x,#_NECC_TEMPER_AIR_EE
2375  0ae7 cd0000        	call	c_eewrc
2377                     ; 499 				sprintf(tempRussianText,"Температура воздуха установлена на %dгр.Ц.",(int)NECC_TEMPER_AIR_EE);
2379  0aea 5f            	clrw	x
2380  0aeb c60000        	ld	a,_NECC_TEMPER_AIR_EE
2381  0aee 2a01          	jrpl	L221
2382  0af0 53            	cplw	x
2383  0af1               L221:
2384  0af1 97            	ld	xl,a
2385  0af2 89            	pushw	x
2386  0af3 ae00f5        	ldw	x,#L736
2387  0af6 89            	pushw	x
2388  0af7 ae0000        	ldw	x,#_tempRussianText
2389  0afa cd0000        	call	_sprintf
2391  0afd 5b04          	addw	sp,#4
2392                     ; 500 				modem_send_sms('p',incommingNumber,tempRussianText);
2394  0aff ae0000        	ldw	x,#_tempRussianText
2395  0b02 89            	pushw	x
2396  0b03 ae001a        	ldw	x,#_incommingNumber
2397  0b06 89            	pushw	x
2398  0b07 a670          	ld	a,#112
2399  0b09 cd0000        	call	_modem_send_sms
2401  0b0c 5b04          	addw	sp,#4
2402                     ; 501 				HUMAN_SET_EE=1;
2404  0b0e ae0001        	ldw	x,#1
2405  0b11 89            	pushw	x
2406  0b12 ae0000        	ldw	x,#_HUMAN_SET_EE
2407  0b15 cd0000        	call	c_eewrw
2409  0b18 85            	popw	x
2410  0b19 ac060d06      	jpf	L743
2411  0b1d               L716:
2412                     ; 505 		else if((strstr(russianText,"СТАТУС"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Запрос состояния системы
2414  0b1d ae00ee        	ldw	x,#L546
2415  0b20 89            	pushw	x
2416  0b21 ae0000        	ldw	x,#_russianText
2417  0b24 cd0000        	call	_strstr
2419  0b27 5b02          	addw	sp,#2
2420  0b29 a30000        	cpw	x,#0
2421  0b2c 2603          	jrne	L602
2422  0b2e cc0c10        	jp	L346
2423  0b31               L602:
2425  0b31 3d04          	tnz	_isFromMainNumberMess
2426  0b33 2607          	jrne	L746
2428  0b35 3d03          	tnz	_isFromAutorizedNumberMess
2429  0b37 2603          	jrne	L012
2430  0b39 cc0c10        	jp	L346
2431  0b3c               L012:
2432  0b3c               L746:
2433                     ; 507 			sprintf(tempStr,"Tвода %3dгр.Ц \n",(int)temperOfWater);
2435  0b3c 5f            	clrw	x
2436  0b3d b600          	ld	a,_temperOfWater
2437  0b3f 2a01          	jrpl	L421
2438  0b41 53            	cplw	x
2439  0b42               L421:
2440  0b42 97            	ld	xl,a
2441  0b43 89            	pushw	x
2442  0b44 ae00de        	ldw	x,#L156
2443  0b47 89            	pushw	x
2444  0b48 ae0000        	ldw	x,#_tempStr
2445  0b4b cd0000        	call	_sprintf
2447  0b4e 5b04          	addw	sp,#4
2448                     ; 508 			if(waterSensorErrorStat == dsesNORM)strcpy(tempRussianText,tempStr);
2450  0b50 c60000        	ld	a,_waterSensorErrorStat
2451  0b53 a155          	cp	a,#85
2452  0b55 260d          	jrne	L356
2455  0b57 ae0000        	ldw	x,#_tempStr
2456  0b5a 89            	pushw	x
2457  0b5b ae0000        	ldw	x,#_tempRussianText
2458  0b5e cd0000        	call	_strcpy
2460  0b61 85            	popw	x
2462  0b62 200b          	jra	L556
2463  0b64               L356:
2464                     ; 509 			else strcpy(tempRussianText,"Tводы неиспр.\n");
2466  0b64 ae00cf        	ldw	x,#L756
2467  0b67 89            	pushw	x
2468  0b68 ae0000        	ldw	x,#_tempRussianText
2469  0b6b cd0000        	call	_strcpy
2471  0b6e 85            	popw	x
2472  0b6f               L556:
2473                     ; 510 			sprintf(tempStr,"Tвоздух %3dгр.Ц \n",(int)temperOfAir);
2475  0b6f 5f            	clrw	x
2476  0b70 b600          	ld	a,_temperOfAir
2477  0b72 2a01          	jrpl	L621
2478  0b74 53            	cplw	x
2479  0b75               L621:
2480  0b75 97            	ld	xl,a
2481  0b76 89            	pushw	x
2482  0b77 ae00bd        	ldw	x,#L166
2483  0b7a 89            	pushw	x
2484  0b7b ae0000        	ldw	x,#_tempStr
2485  0b7e cd0000        	call	_sprintf
2487  0b81 5b04          	addw	sp,#4
2488                     ; 511 			if(airSensorErrorStat == taesNORM)strcat(tempRussianText,tempStr);
2490  0b83 b600          	ld	a,_airSensorErrorStat
2491  0b85 a155          	cp	a,#85
2492  0b87 260d          	jrne	L366
2495  0b89 ae0000        	ldw	x,#_tempStr
2496  0b8c 89            	pushw	x
2497  0b8d ae0000        	ldw	x,#_tempRussianText
2498  0b90 cd0000        	call	_strcat
2500  0b93 85            	popw	x
2502  0b94 200b          	jra	L566
2503  0b96               L366:
2504                     ; 512 			else strcat(tempRussianText,"Tвоздуха неиспр.\n");
2506  0b96 ae00ab        	ldw	x,#L766
2507  0b99 89            	pushw	x
2508  0b9a ae0000        	ldw	x,#_tempRussianText
2509  0b9d cd0000        	call	_strcat
2511  0ba0 85            	popw	x
2512  0ba1               L566:
2513                     ; 513 			if(powerAlarm == paNORM) strcat(tempRussianText,"Питание норма\n");
2515  0ba1 725d0000      	tnz	_powerAlarm
2516  0ba5 260d          	jrne	L176
2519  0ba7 ae009c        	ldw	x,#L376
2520  0baa 89            	pushw	x
2521  0bab ae0000        	ldw	x,#_tempRussianText
2522  0bae cd0000        	call	_strcat
2524  0bb1 85            	popw	x
2526  0bb2 200b          	jra	L576
2527  0bb4               L176:
2528                     ; 514 			else 					 strcat(tempRussianText,"Питание выкл.\n");
2530  0bb4 ae008d        	ldw	x,#L776
2531  0bb7 89            	pushw	x
2532  0bb8 ae0000        	ldw	x,#_tempRussianText
2533  0bbb cd0000        	call	_strcat
2535  0bbe 85            	popw	x
2536  0bbf               L576:
2537                     ; 515 			if(outMode==omON)		 strcat(tempRussianText,"Термостат вкл.\n");
2539  0bbf c60000        	ld	a,_outMode
2540  0bc2 a101          	cp	a,#1
2541  0bc4 260d          	jrne	L107
2544  0bc6 ae007d        	ldw	x,#L307
2545  0bc9 89            	pushw	x
2546  0bca ae0000        	ldw	x,#_tempRussianText
2547  0bcd cd0000        	call	_strcat
2549  0bd0 85            	popw	x
2551  0bd1 200b          	jra	L507
2552  0bd3               L107:
2553                     ; 516 			else 					 strcat(tempRussianText,"Термостат выкл.\n");
2555  0bd3 ae006c        	ldw	x,#L707
2556  0bd6 89            	pushw	x
2557  0bd7 ae0000        	ldw	x,#_tempRussianText
2558  0bda cd0000        	call	_strcat
2560  0bdd 85            	popw	x
2561  0bde               L507:
2562                     ; 518 			sprintf(tempStr,"Нагрев %1d",(int)powerEnabled);
2564  0bde 5f            	clrw	x
2565  0bdf b600          	ld	a,_powerEnabled
2566  0be1 2a01          	jrpl	L031
2567  0be3 53            	cplw	x
2568  0be4               L031:
2569  0be4 97            	ld	xl,a
2570  0be5 89            	pushw	x
2571  0be6 ae0061        	ldw	x,#L117
2572  0be9 89            	pushw	x
2573  0bea ae0000        	ldw	x,#_tempStr
2574  0bed cd0000        	call	_sprintf
2576  0bf0 5b04          	addw	sp,#4
2577                     ; 519 			strcat(tempRussianText,tempStr);
2579  0bf2 ae0000        	ldw	x,#_tempStr
2580  0bf5 89            	pushw	x
2581  0bf6 ae0000        	ldw	x,#_tempRussianText
2582  0bf9 cd0000        	call	_strcat
2584  0bfc 85            	popw	x
2585                     ; 520 			modem_send_sms('p',incommingNumber,tempRussianText);
2587  0bfd ae0000        	ldw	x,#_tempRussianText
2588  0c00 89            	pushw	x
2589  0c01 ae001a        	ldw	x,#_incommingNumber
2590  0c04 89            	pushw	x
2591  0c05 a670          	ld	a,#112
2592  0c07 cd0000        	call	_modem_send_sms
2594  0c0a 5b04          	addw	sp,#4
2596  0c0c ac060d06      	jpf	L743
2597  0c10               L346:
2598                     ; 522 		else if((strstr(russianText,"ВЕРСИЯ"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Запрос версии прошивки
2600  0c10 ae005a        	ldw	x,#L717
2601  0c13 89            	pushw	x
2602  0c14 ae0000        	ldw	x,#_russianText
2603  0c17 cd0000        	call	_strstr
2605  0c1a 5b02          	addw	sp,#2
2606  0c1c a30000        	cpw	x,#0
2607  0c1f 272f          	jreq	L517
2609  0c21 3d04          	tnz	_isFromMainNumberMess
2610  0c23 2604          	jrne	L127
2612  0c25 3d03          	tnz	_isFromAutorizedNumberMess
2613  0c27 2727          	jreq	L517
2614  0c29               L127:
2615                     ; 524 			sprintf(tempRussianText,"Версия ПО %d.%03d",VERSION,BUILD);
2617  0c29 ce0000        	ldw	x,_BUILD
2618  0c2c 89            	pushw	x
2619  0c2d ce0000        	ldw	x,_VERSION
2620  0c30 89            	pushw	x
2621  0c31 ae0048        	ldw	x,#L327
2622  0c34 89            	pushw	x
2623  0c35 ae0000        	ldw	x,#_tempRussianText
2624  0c38 cd0000        	call	_sprintf
2626  0c3b 5b06          	addw	sp,#6
2627                     ; 525 			modem_send_sms('p',incommingNumber,tempRussianText);			
2629  0c3d ae0000        	ldw	x,#_tempRussianText
2630  0c40 89            	pushw	x
2631  0c41 ae001a        	ldw	x,#_incommingNumber
2632  0c44 89            	pushw	x
2633  0c45 a670          	ld	a,#112
2634  0c47 cd0000        	call	_modem_send_sms
2636  0c4a 5b04          	addw	sp,#4
2638  0c4c ac060d06      	jpf	L743
2639  0c50               L517:
2640                     ; 527 		else if((strstr(uart1_an_buffer,"USSD"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Запрос версии прошивки
2642  0c50 ae0043        	ldw	x,#L137
2643  0c53 89            	pushw	x
2644  0c54 ae0025        	ldw	x,#_uart1_an_buffer
2645  0c57 cd0000        	call	_strstr
2647  0c5a 5b02          	addw	sp,#2
2648  0c5c a30000        	cpw	x,#0
2649  0c5f 2744          	jreq	L727
2651  0c61 3d04          	tnz	_isFromMainNumberMess
2652  0c63 2604          	jrne	L337
2654  0c65 3d03          	tnz	_isFromAutorizedNumberMess
2655  0c67 273c          	jreq	L727
2656  0c69               L337:
2657                     ; 530 			ppptr=strstr(uart1_an_buffer,"USSD");
2659  0c69 ae0043        	ldw	x,#L137
2660  0c6c 89            	pushw	x
2661  0c6d ae0025        	ldw	x,#_uart1_an_buffer
2662  0c70 cd0000        	call	_strstr
2664  0c73 5b02          	addw	sp,#2
2665  0c75 1f20          	ldw	(OFST-1,sp),x
2666                     ; 531 			ppptr+=4;
2668  0c77 1e20          	ldw	x,(OFST-1,sp)
2669  0c79 1c0004        	addw	x,#4
2670  0c7c 1f20          	ldw	(OFST-1,sp),x
2671                     ; 533 			sprintf(tempRussianText,"AT+CUSD=1,\"#100#\"\r\n",ppptr);//AT+CUSD=1,"#100#"
2673  0c7e 1e20          	ldw	x,(OFST-1,sp)
2674  0c80 89            	pushw	x
2675  0c81 ae002f        	ldw	x,#L537
2676  0c84 89            	pushw	x
2677  0c85 ae0000        	ldw	x,#_tempRussianText
2678  0c88 cd0000        	call	_sprintf
2680  0c8b 5b04          	addw	sp,#4
2681                     ; 534 			printf(tempRussianText);
2683  0c8d ae0000        	ldw	x,#_tempRussianText
2684  0c90 cd0000        	call	_printf
2686                     ; 536 			memcpy(incommingNumberUSSDRequ,incommingNumber,10);
2688  0c93 ae000a        	ldw	x,#10
2689  0c96               L231:
2690  0c96 d60019        	ld	a,(_incommingNumber-1,x)
2691  0c99 d70005        	ld	(_incommingNumberUSSDRequ-1,x),a
2692  0c9c 5a            	decw	x
2693  0c9d 26f7          	jrne	L231
2694                     ; 537 			ussdRequ=2;
2696  0c9f 35020007      	mov	_ussdRequ,#2
2698  0ca3 2061          	jra	L743
2699  0ca5               L727:
2700                     ; 539 		else if((strstr(russianText,"АККУМУЛЯТОР"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Запрос состояния аккумулятора
2702  0ca5 ae0023        	ldw	x,#L347
2703  0ca8 89            	pushw	x
2704  0ca9 ae0000        	ldw	x,#_russianText
2705  0cac cd0000        	call	_strstr
2707  0caf 5b02          	addw	sp,#2
2708  0cb1 a30000        	cpw	x,#0
2709  0cb4 2714          	jreq	L147
2711  0cb6 3d04          	tnz	_isFromMainNumberMess
2712  0cb8 2604          	jrne	L547
2714  0cba 3d03          	tnz	_isFromAutorizedNumberMess
2715  0cbc 270c          	jreq	L147
2716  0cbe               L547:
2717                     ; 541 			printf("AT + CBC \r");
2719  0cbe ae0018        	ldw	x,#L747
2720  0cc1 cd0000        	call	_printf
2722                     ; 542 			cbcRequ=1;
2724  0cc4 35010002      	mov	_cbcRequ,#1
2726  0cc8 203c          	jra	L743
2727  0cca               L147:
2728                     ; 544 		else if((strstr(russianText,"ОТЛАДКА"))&&(isFromMainNumberMess||isFromAutorizedNumberMess)) //Запрос версии прошивки
2730  0cca ae0010        	ldw	x,#L557
2731  0ccd 89            	pushw	x
2732  0cce ae0000        	ldw	x,#_russianText
2733  0cd1 cd0000        	call	_strstr
2735  0cd4 5b02          	addw	sp,#2
2736  0cd6 a30000        	cpw	x,#0
2737  0cd9 272b          	jreq	L743
2739  0cdb 3d04          	tnz	_isFromMainNumberMess
2740  0cdd 2604          	jrne	L757
2742  0cdf 3d03          	tnz	_isFromAutorizedNumberMess
2743  0ce1 2723          	jreq	L743
2744  0ce3               L757:
2745                     ; 546 			sprintf(tempRussianText,"Версия ПО %d.%03d",VERSION,BUILD);
2747  0ce3 ce0000        	ldw	x,_BUILD
2748  0ce6 89            	pushw	x
2749  0ce7 ce0000        	ldw	x,_VERSION
2750  0cea 89            	pushw	x
2751  0ceb ae0048        	ldw	x,#L327
2752  0cee 89            	pushw	x
2753  0cef ae0000        	ldw	x,#_tempRussianText
2754  0cf2 cd0000        	call	_sprintf
2756  0cf5 5b06          	addw	sp,#6
2757                     ; 547 			modem_send_sms('p',incommingNumber,"Привет  0123456"/*tempRussianText*/);			
2759  0cf7 ae0000        	ldw	x,#L167
2760  0cfa 89            	pushw	x
2761  0cfb ae001a        	ldw	x,#_incommingNumber
2762  0cfe 89            	pushw	x
2763  0cff a670          	ld	a,#112
2764  0d01 cd0000        	call	_modem_send_sms
2766  0d04 5b04          	addw	sp,#4
2767  0d06               L743:
2768                     ; 551 		isFromMainNumberMess=0;
2770  0d06 3f04          	clr	_isFromMainNumberMess
2771                     ; 552 		isFromAutorizedNumberMess=0;
2773  0d08 3f03          	clr	_isFromAutorizedNumberMess
2774                     ; 553 		isFromNotAutorizedNumberMess=0;
2776  0d0a 3f02          	clr	_isFromNotAutorizedNumberMess
2777  0d0c               L132:
2778                     ; 556 enableInterrupts();
2781  0d0c 9a            rim
2783                     ; 557 }
2784  0d0d               L431:
2788  0d0d 5b21          	addw	sp,#33
2789  0d0f 81            	ret
3077                     	xdef	_putchar1
3078                     	switch	.bss
3079  0000               _cell:
3080  0000 0000          	ds.b	2
3081                     	xdef	_cell
3082                     	switch	.ubsct
3083  0000               _number_temp:
3084  0000 0000          	ds.b	2
3085                     	xdef	_number_temp
3086                     	switch	.bss
3087  0002               _cbcRequ:
3088  0002 00            	ds.b	1
3089                     	xdef	_cbcRequ
3090                     	switch	.ubsct
3091  0002               _isFromNotAutorizedNumberMess:
3092  0002 00            	ds.b	1
3093                     	xdef	_isFromNotAutorizedNumberMess
3094  0003               _isFromAutorizedNumberMess:
3095  0003 00            	ds.b	1
3096                     	xdef	_isFromAutorizedNumberMess
3097  0004               _isFromMainNumberMess:
3098  0004 00            	ds.b	1
3099                     	xdef	_isFromMainNumberMess
3100                     	xref	_BUILD
3101                     	xref	_VERSION
3102                     	xref	_waterSensorErrorStat
3103                     	xref	_ret_ind
3104                     	xref	_tree_up
3105                     	xref	_tree_down
3106                     	xref	_sprintf
3107                     	xref	_printf
3108                     	xref	_find_number_fild_in_text
3109                     	xref	_find_empty_number_cell
3110                     	xref	_find_this_number_in_autorized
3111                     	xref	_find_number_in_text
3112                     	xref	_PDU2text
3113                     	xref	_modem_send_sms
3114                     	xref	_tempStr
3115                     	xref	_tempRussianText
3116                     	xref	_russianText
3117                     	xref.b	_modemDrvPowerDownStepCnt
3118                     	xref	_strtol
3119                     	xref	_rand
3120                     	xref	_memcmp
3121                     	xref	_strstr
3122                     	xref	_strncpy
3123                     	xref	_strncat
3124                     	xref	_strcpy
3125                     	xref	_strcat
3126                     	xdef	_uart1_in_an
3127                     	xdef	f_UART1TxInterrupt
3128                     	xdef	f_UART1RxInterrupt
3129                     	xdef	_uart1_init
3130                     	switch	.bss
3131  0003               _modem_plazma1:
3132  0003 00            	ds.b	1
3133                     	xdef	_modem_plazma1
3134  0004               _modem_plazma:
3135  0004 00            	ds.b	1
3136                     	xdef	_modem_plazma
3137  0005               _uart1_plazma:
3138  0005 00            	ds.b	1
3139                     	xdef	_uart1_plazma
3140                     	switch	.ubsct
3141  0005               _bBUY_SMS:
3142  0005 00            	ds.b	1
3143                     	xdef	_bBUY_SMS
3144  0006               _bCBC:
3145  0006 00            	ds.b	1
3146                     	xdef	_bCBC
3147  0007               _ussdRequ:
3148  0007 00            	ds.b	1
3149                     	xdef	_ussdRequ
3150  0008               _bINITIALIZED:
3151  0008 00            	ds.b	1
3152                     	xdef	_bINITIALIZED
3153  0009               _bERROR:
3154  0009 00            	ds.b	1
3155                     	xdef	_bERROR
3156  000a               _bOK:
3157  000a 00            	ds.b	1
3158                     	xdef	_bOK
3159                     	switch	.bss
3160  0006               _incommingNumberUSSDRequ:
3161  0006 000000000000  	ds.b	10
3162                     	xdef	_incommingNumberUSSDRequ
3163  0010               _incommingNumberToMain:
3164  0010 000000000000  	ds.b	10
3165                     	xdef	_incommingNumberToMain
3166  001a               _incommingNumber:
3167  001a 000000000000  	ds.b	10
3168                     	xdef	_incommingNumber
3169  0024               _bRXIN1:
3170  0024 00            	ds.b	1
3171                     	xdef	_bRXIN1
3172  0025               _uart1_an_buffer:
3173  0025 000000000000  	ds.b	350
3174                     	xdef	_uart1_an_buffer
3175  0183               _tx_counter1:
3176  0183 0000          	ds.b	2
3177                     	xdef	_tx_counter1
3178  0185               _tx_rd_index1:
3179  0185 0000          	ds.b	2
3180                     	xdef	_tx_rd_index1
3181  0187               _tx_wr_index1:
3182  0187 0000          	ds.b	2
3183                     	xdef	_tx_wr_index1
3184  0189               _rx_wr_index1:
3185  0189 0000          	ds.b	2
3186                     	xdef	_rx_wr_index1
3187  018b               _txBuffer1:
3188  018b 000000000000  	ds.b	350
3189                     	xdef	_txBuffer1
3190  02e9               _rxBuffer1:
3191  02e9 000000000000  	ds.b	350
3192                     	xdef	_rxBuffer1
3193                     	xref	_bCBC_SELF
3194                     	xref	_cbcVoltage
3195                     	xref	_cbc_temp1
3196                     	xref	_cbc_temp
3197                     	xref	_rand_dig_str
3198                     	xref	_rand_dig
3199                     	xref.b	_cntAirSensorLineErrorLo
3200                     	xref.b	_powerEnabled
3201                     	xref.b	_airSensorErrorStat
3202                     	xref.b	_targetTemper
3203                     	xref.b	_temperOfAir
3204                     	xref.b	_temperOfWater
3205                     	xref.b	_a_ind
3206                     	xref	_AUTH_NUMBER_FLAGS
3207                     	xref	_AUTH_NUMBER_3
3208                     	xref	_AUTH_NUMBER_2
3209                     	xref	_MAX_POWER_EE
3210                     	xref	_MODE_EE
3211                     	xref	_NECC_TEMPER_WATER_EE
3212                     	xref	_NECC_TEMPER_AIR_EE
3213                     	xref	_HUMAN_SET_EE
3214                     	xref	_outMode
3215                     	xref	_powerAlarm
3216                     	xref	_AUTH_NUMBER_1
3217                     	xref	_MAIN_NUMBER
3218                     .const:	section	.text
3219  0000               L167:
3220  0000 cff0e8e2e5f2  	dc.b	207,240,232,226,229,242
3221  0006 202030313233  	dc.b	"  0123456",0
3222  0010               L557:
3223  0010 ced2cbc0c4ca  	dc.b	206,210,203,192,196,202
3224  0016 c000          	dc.b	192,0
3225  0018               L747:
3226  0018 4154202b2043  	dc.b	"AT + CBC ",13,0
3227  0023               L347:
3228  0023 c0cacad3ccd3  	dc.b	192,202,202,211,204,211
3229  0029 cbdfd2ced000  	dc.b	203,223,210,206,208,0
3230  002f               L537:
3231  002f 41542b435553  	dc.b	"AT+CUSD=1,",34
3232  003a 233130302322  	dc.b	"#100#",34
3233  0040 0d0a00        	dc.b	13,10,0
3234  0043               L137:
3235  0043 5553534400    	dc.b	"USSD",0
3236  0048               L327:
3237  0048 c2e5f0f1e8ff  	dc.b	194,229,240,241,232,255
3238  004e 20cf          	dc.b	" ",207
3239  0050 ce2025642e25  	dc.b	206,32,37,100,46,37
3240  0056 30336400      	dc.b	"03d",0
3241  005a               L717:
3242  005a c2c5d0d1c8df  	dc.b	194,197,208,209,200,223,0
3243  0061               L117:
3244  0061 cde0e3f0e5e2  	dc.b	205,224,227,240,229,226
3245  0067 2025316400    	dc.b	" %1d",0
3246  006c               L707:
3247  006c d2e5f0eceef1  	dc.b	210,229,240,236,238,241
3248  0072 f2e0f220e2fb  	dc.b	242,224,242,32,226,251
3249  0078 eaeb2e0a00    	dc.b	234,235,46,10,0
3250  007d               L307:
3251  007d d2e5f0eceef1  	dc.b	210,229,240,236,238,241
3252  0083 f2e0f220e2ea  	dc.b	242,224,242,32,226,234
3253  0089 eb2e0a00      	dc.b	235,46,10,0
3254  008d               L776:
3255  008d cfe8f2e0ede8  	dc.b	207,232,242,224,237,232
3256  0093 e520e2fbeaeb  	dc.b	229,32,226,251,234,235
3257  0099 2e0a00        	dc.b	".",10,0
3258  009c               L376:
3259  009c cfe8f2e0ede8  	dc.b	207,232,242,224,237,232
3260  00a2 e520edeef0ec  	dc.b	229,32,237,238,240,236
3261  00a8 e00a00        	dc.b	224,10,0
3262  00ab               L766:
3263  00ab 54e2          	dc.b	"T",226
3264  00ad eee7e4f3f5e0  	dc.b	238,231,228,243,245,224
3265  00b3 20ed          	dc.b	" ",237
3266  00b5 e5e8f1eff02e  	dc.b	229,232,241,239,240,46
3267  00bb 0a00          	dc.b	10,0
3268  00bd               L166:
3269  00bd 54e2          	dc.b	"T",226
3270  00bf eee7e4f3f520  	dc.b	238,231,228,243,245,32
3271  00c5 253364e3      	dc.b	"%3d",227
3272  00c9 f02ed6200a00  	dc.b	240,46,214,32,10,0
3273  00cf               L756:
3274  00cf 54e2          	dc.b	"T",226
3275  00d1 eee4fb20ede5  	dc.b	238,228,251,32,237,229
3276  00d7 e8f1eff02e0a  	dc.b	232,241,239,240,46,10,0
3277  00de               L156:
3278  00de 54e2          	dc.b	"T",226
3279  00e0 eee4e0202533  	dc.b	238,228,224,32,37,51
3280  00e6 64e3          	dc.b	"d",227
3281  00e8 f02ed6200a00  	dc.b	240,46,214,32,10,0
3282  00ee               L546:
3283  00ee d1d2c0d2d3d1  	dc.b	209,210,192,210,211,209,0
3284  00f5               L736:
3285  00f5 d2e5ecefe5f0  	dc.b	210,229,236,239,229,240
3286  00fb e0f2f3f0e020  	dc.b	224,242,243,240,224,32
3287  0101 e2eee7e4f3f5  	dc.b	226,238,231,228,243,245
3288  0107 e020f3f1f2e0  	dc.b	224,32,243,241,242,224
3289  010d edeee2ebe5ed  	dc.b	237,238,226,235,229,237
3290  0113 e020ede02025  	dc.b	224,32,237,224,32,37
3291  0119 64e3          	dc.b	"d",227
3292  011b f02ed62e00    	dc.b	240,46,214,46,0
3293  0120               L336:
3294  0120 c7ede0f7e5ed  	dc.b	199,237,224,247,229,237
3295  0126 e8e520ede0f5  	dc.b	232,229,32,237,224,245
3296  012c eee4e8f2f1ff  	dc.b	238,228,232,242,241,255
3297  0132 20e7          	dc.b	" ",231
3298  0134 e020eff0e5e4  	dc.b	224,32,239,240,229,228
3299  013a e5ebe0ece820  	dc.b	229,235,224,236,232,32
3300  0140 f0e0e7f0e5f8  	dc.b	240,224,231,240,229,248
3301  0146 e5ededfbf528  	dc.b	229,237,237,251,245,40
3302  014c 352d3335292e  	dc.b	"5-35).",202
3303  0153 eeece0ede4e0  	dc.b	238,236,224,237,228,224
3304  0159 20ee          	dc.b	" ",238
3305  015b f2eaebeeede5  	dc.b	242,234,235,238,237,229
3306  0161 ede000        	dc.b	237,224,0
3307  0164               L316:
3308  0164 d2e5ecefe5f0  	dc.b	210,229,236,239,229,240
3309  016a e0f2f3f0e020  	dc.b	224,242,243,240,224,32
3310  0170 e2eee4fb20f3  	dc.b	226,238,228,251,32,243
3311  0176 f1f2e0edeee2  	dc.b	241,242,224,237,238,226
3312  017c ebe5ede020ed  	dc.b	235,229,237,224,32,237
3313  0182 e0202564e3f0  	dc.b	224,32,37,100,227,240
3314  0188 2ed6          	dc.b	".",214
3315  018a 2e00          	dc.b	".",0
3316  018c               L706:
3317  018c c7ede0f7e5ed  	dc.b	199,237,224,247,229,237
3318  0192 e8e520ede0f5  	dc.b	232,229,32,237,224,245
3319  0198 eee4e8f2f1ff  	dc.b	238,228,232,242,241,255
3320  019e 20e7          	dc.b	" ",231
3321  01a0 e020eff0e5e4  	dc.b	224,32,239,240,229,228
3322  01a6 e5ebe0ece820  	dc.b	229,235,224,236,232,32
3323  01ac f0e0e7f0e5f8  	dc.b	240,224,231,240,229,248
3324  01b2 e5ededfbf528  	dc.b	229,237,237,251,245,40
3325  01b8 352d3835292e  	dc.b	"5-85).",202
3326  01bf eeece0ede4e0  	dc.b	238,236,224,237,228,224
3327  01c5 20ee          	dc.b	" ",238
3328  01c7 f2eaebeeede5  	dc.b	242,234,235,238,237,229
3329  01cd ede000        	dc.b	237,224,0
3330  01d0               L775:
3331  01d0 c220f2e5eaf3  	dc.b	194,32,242,229,234,243
3332  01d6 f9e5ec20f0e5  	dc.b	249,229,236,32,240,229
3333  01dc e6e8ece520f0  	dc.b	230,232,236,229,32,240
3334  01e2 e0e1eef2fb20  	dc.b	224,225,238,242,251,32
3335  01e8 e2fbefeeebed  	dc.b	226,251,239,238,235,237
3336  01ee e5ede8e520f2  	dc.b	229,237,232,229,32,242
3337  01f4 e0eaeee920ea  	dc.b	224,234,238,233,32,234
3338  01fa eeece0ede4fb  	dc.b	238,236,224,237,228,251
3339  0200 20ed          	dc.b	" ",237
3340  0202 e5e2eee7ecee  	dc.b	229,226,238,231,236,238
3341  0208 e6edee00      	dc.b	230,237,238,0
3342  020c               L565:
3343  020c caeeece0ede4  	dc.b	202,238,236,224,237,228
3344  0212 e020ede520f0  	dc.b	224,32,237,229,32,240
3345  0218 e0f1efeee7ed  	dc.b	224,241,239,238,231,237
3346  021e e0ede000      	dc.b	224,237,224,0
3347  0222               L165:
3348  0222 d3f1f2e0edee  	dc.b	211,241,242,224,237,238
3349  0228 e2ebe5ed20f0  	dc.b	226,235,229,237,32,240
3350  022e e5e6e8ec20f0  	dc.b	229,230,232,236,32,240
3351  0234 e5e3f3ebe8f0  	dc.b	229,227,243,235,232,240
3352  023a eee2e0ede8ff  	dc.b	238,226,224,237,232,255
3353  0240 20ef          	dc.b	" ",239
3354  0242 ee20f2e5ecef  	dc.b	238,32,242,229,236,239
3355  0248 e5f0e0f2f3f0  	dc.b	229,240,224,242,243,240
3356  024e e520e2eee7e4  	dc.b	229,32,226,238,231,228
3357  0254 f3f5e000      	dc.b	243,245,224,0
3358  0258               L755:
3359  0258 c2cec7c4d3d5  	dc.b	194,206,199,196,211,213,0
3360  025f               L155:
3361  025f d3f1f2e0edee  	dc.b	211,241,242,224,237,238
3362  0265 e2ebe5ed20f0  	dc.b	226,235,229,237,32,240
3363  026b e5e6e8ec20f0  	dc.b	229,230,232,236,32,240
3364  0271 e5e3f3ebe8f0  	dc.b	229,227,243,235,232,240
3365  0277 eee2e0ede8ff  	dc.b	238,226,224,237,232,255
3366  027d 20ef          	dc.b	" ",239
3367  027f ee20f2e5ecef  	dc.b	238,32,242,229,236,239
3368  0285 e5f0e0f2f3f0  	dc.b	229,240,224,242,243,240
3369  028b e520e2eee4fb  	dc.b	229,32,226,238,228,251,0
3370  0292               L745:
3371  0292 c2cec4c000    	dc.b	194,206,196,192,0
3372  0297               L145:
3373  0297 d0c5c6c8cc00  	dc.b	208,197,198,200,204,0
3374  029d               L335:
3375  029d d0e5e6e8ec20  	dc.b	208,229,230,232,236,32
3376  02a3 2d20ef        	dc.b	"- ",239
3377  02a6 ee20e3f0e0f4  	dc.b	238,32,227,240,224,244
3378  02ac e8eaf30af2e5  	dc.b	232,234,243,10,242,229
3379  02b2 eaf3f9e0ff20  	dc.b	234,243,249,224,255,32
3380  02b8 f3f1f2e0e2ea  	dc.b	243,241,242,224,226,234
3381  02be e0202564e3f0  	dc.b	224,32,37,100,227,240
3382  02c4 2e28e2        	dc.b	".(",226
3383  02c7 eee7e4f3f529  	dc.b	238,231,228,243,245,41
3384  02cd 0aece0eaf12e  	dc.b	10,236,224,234,241,46
3385  02d3 eceef9edeef1  	dc.b	236,238,249,237,238,241
3386  02d9 f2fc20256400  	dc.b	242,252,32,37,100,0
3387  02df               L725:
3388  02df d0e5e6e8ec20  	dc.b	208,229,230,232,236,32
3389  02e5 2d20ef        	dc.b	"- ",239
3390  02e8 ee20e2eee7e4  	dc.b	238,32,226,238,231,228
3391  02ee f3f5f30af3f1  	dc.b	243,245,243,10,243,241
3392  02f4 f2e0e2eae020  	dc.b	242,224,226,234,224,32
3393  02fa 2564e3        	dc.b	"%d",227
3394  02fd f02e0aece0ea  	dc.b	240,46,10,236,224,234
3395  0303 f12eeceef9ed  	dc.b	241,46,236,238,249,237
3396  0309 eef1f2fc2025  	dc.b	238,241,242,252,32,37
3397  030f 6400          	dc.b	"d",0
3398  0311               L325:
3399  0311 d0e5e6e8ec20  	dc.b	208,229,230,232,236,32
3400  0317 2d20ef        	dc.b	"- ",239
3401  031a ee20e2eee4e5  	dc.b	238,32,226,238,228,229
3402  0320 0af3f1f2e0e2  	dc.b	10,243,241,242,224,226
3403  0326 eae0202564e3  	dc.b	234,224,32,37,100,227
3404  032c f02e0aece0ea  	dc.b	240,46,10,236,224,234
3405  0332 f12eeceef9ed  	dc.b	241,46,236,238,249,237
3406  0338 eef1f2fc2025  	dc.b	238,241,242,252,32,37
3407  033e 6400          	dc.b	"d",0
3408  0340               L515:
3409  0340 d3d1d2c0c2ca  	dc.b	211,209,210,192,194,202
3410  0346 c800          	dc.b	200,0
3411  0348               L705:
3412  0348 d2e0eaeee3ee  	dc.b	210,224,234,238,227,238
3413  034e 20ed          	dc.b	" ",237
3414  0350 eeece5f0e020  	dc.b	238,236,229,240,224,32
3415  0356 ede5f220e220  	dc.b	237,229,242,32,226,32
3416  035c f1efe8f1eae5  	dc.b	241,239,232,241,234,229,0
3417  0363               L305:
3418  0363 20f3          	dc.b	" ",243
3419  0365 e4e0ebe5ed20  	dc.b	228,224,235,229,237,32
3420  036b e8e720f1efe8  	dc.b	232,231,32,241,239,232
3421  0371 f1eae020edee  	dc.b	241,234,224,32,237,238
3422  0377 ece5f0eee200  	dc.b	236,229,240,238,226,0
3423  037d               L105:
3424  037d cdeeece5f020  	dc.b	205,238,236,229,240,32,0
3425  0384               L174:
3426  0384 c220f1efe8f1  	dc.b	194,32,241,239,232,241
3427  038a eae520ede5f2  	dc.b	234,229,32,237,229,242
3428  0390 20ed          	dc.b	" ",237
3429  0392 eeece5f0eee2  	dc.b	238,236,229,240,238,226
3430  0398 20ea          	dc.b	" ",234
3431  039a f0eeece520e3  	dc.b	240,238,236,229,32,227
3432  03a0 ebe0e2edeee3  	dc.b	235,224,226,237,238,227
3433  03a6 ee00          	dc.b	238,0
3434  03a8               L564:
3435  03a8 c2f1e520edee  	dc.b	194,241,229,32,237,238
3436  03ae ece5f0e020ea  	dc.b	236,229,240,224,32,234
3437  03b4 f0eeece520e3  	dc.b	240,238,236,229,32,227
3438  03ba ebe0e2edeee3  	dc.b	235,224,226,237,238,227
3439  03c0 ee20f3e4e0eb  	dc.b	238,32,243,228,224,235
3440  03c6 e5edfb00      	dc.b	229,237,251,0
3441  03ca               L164:
3442  03ca c2d1c500      	dc.b	194,209,197,0
3443  03ce               L554:
3444  03ce d3c4c0cbc8d2  	dc.b	211,196,192,203,200,210
3445  03d4 dc00          	dc.b	220,0
3446  03d6               L744:
3447  03d6 2028332900    	dc.b	" (3)",0
3448  03db               L344:
3449  03db 202832290a00  	dc.b	" (2)",10,0
3450  03e1               L734:
3451  03e1 202831290a00  	dc.b	" (1)",10,0
3452  03e7               L334:
3453  03e7 2028e3        	dc.b	" (",227
3454  03ea eb2e290a00    	dc.b	235,46,41,10,0
3455  03ef               L134:
3456  03ef d1efe8f1eeea  	dc.b	209,239,232,241,238,234
3457  03f5 3a0a00        	dc.b	":",10,0
3458  03f8               L524:
3459  03f8 d1cfc8d1ceca  	dc.b	209,207,200,209,206,202,0
3460  03ff               L714:
3461  03ff cdeeece5f020  	dc.b	205,238,236,229,240,32
3462  0405 ede520e4eee1  	dc.b	237,229,32,228,238,225
3463  040b e0e2ebe5ed2c  	dc.b	224,226,235,229,237,44
3464  0411 20ef          	dc.b	" ",239
3465  0413 e0ecfff2fc20  	dc.b	224,236,255,242,252,32
3466  0419 e7e0efeeebed  	dc.b	231,224,239,238,235,237
3467  041f e5ede000      	dc.b	229,237,224,0
3468  0423               L314:
3469  0423 c2e0f820edee  	dc.b	194,224,248,32,237,238
3470  0429 ece5f020e4ee  	dc.b	236,229,240,32,228,238
3471  042f e1e0e2ebe5ed  	dc.b	225,224,226,235,229,237
3472  0435 20e2          	dc.b	" ",226
3473  0437 20f1          	dc.b	" ",241
3474  0439 efe8f1eeea20  	dc.b	239,232,241,238,234,32,0
3475  0440               L114:
3476  0440 cdeeece5f020  	dc.b	205,238,236,229,240,32
3477  0446 257320e4      	dc.b	"%s ",228
3478  044a eee1e0e2ebe5  	dc.b	238,225,224,226,235,229
3479  0450 ed20e220f1ef  	dc.b	237,32,226,32,241,239
3480  0456 e8f1eeea2028  	dc.b	232,241,238,234,32,40
3481  045c fff7e5e9eae0  	dc.b	255,247,229,233,234,224
3482  0462 2025642900    	dc.b	" %d)",0
3483  0467               L173:
3484  0467 d2e0eaeee920  	dc.b	210,224,234,238,233,32
3485  046d edeeece5f020  	dc.b	237,238,236,229,240,32
3486  0473 f3e6e520e5f1  	dc.b	243,230,229,32,229,241
3487  0479 f2fc20e220f1  	dc.b	242,252,32,226,32,241
3488  047f efe8f1eae520  	dc.b	239,232,241,234,229,32
3489  0485 e0e2f2eef0e8  	dc.b	224,226,242,238,240,232
3490  048b e7eee2e0edfb  	dc.b	231,238,226,224,237,251
3491  0491 f500          	dc.b	245,0
3492  0493               L363:
3493  0493 cdceccc5d000  	dc.b	205,206,204,197,208,0
3494  0499               L553:
3495  0499 c2e0f820edee  	dc.b	194,224,248,32,237,238
3496  049f ece5f020f3f1  	dc.b	236,229,240,32,243,241
3497  04a5 f2e0edeee2eb  	dc.b	242,224,237,238,226,235
3498  04ab e5ed20eae0ea  	dc.b	229,237,32,234,224,234
3499  04b1 20e3          	dc.b	" ",227
3500  04b3 ebe0e2edfbe9  	dc.b	235,224,226,237,251,233,0
3501  04ba               L543:
3502  04ba 256425642564  	dc.b	"%d%d%d%d%d%d%d",0
3503  04c9               L343:
3504  04c9 cef2eff0e0e2  	dc.b	206,242,239,240,224,226
3505  04cf fcf2e520e220  	dc.b	252,242,229,32,226,32
3506  04d5 eef2e2e5f2ed  	dc.b	238,242,226,229,242,237
3507  04db eeec20f1ecf1  	dc.b	238,236,32,241,236,241
3508  04e1 203720f6      	dc.b	" 7 ",246
3509  04e5 e8f4f020e2fb  	dc.b	232,244,240,32,226,251
3510  04eb e2e5e4e5eded  	dc.b	226,229,228,229,237,237
3511  04f1 fbf520ede020  	dc.b	251,245,32,237,224,32
3512  04f7 e8ede4e8eae0  	dc.b	232,237,228,232,234,224
3513  04fd f2eef020f3f1  	dc.b	242,238,240,32,243,241
3514  0503 f2f0eee9f1f2  	dc.b	242,240,238,233,241,242
3515  0509 e2e000        	dc.b	226,224,0
3516  050c               L143:
3517  050c cdceccc5d020  	dc.b	205,206,204,197,208,32
3518  0512 c3cbc0c2cddb  	dc.b	195,203,192,194,205,219
3519  0518 c900          	dc.b	201,0
3520  051a               L313:
3521  051a 2b3700        	dc.b	"+7",0
3522  051d               L113:
3523  051d 2b434d5400    	dc.b	"+CMT",0
3524  0522               L572:
3525  0522 2200          	dc.b	34,0
3526  0524               L372:
3527  0524 4355534400    	dc.b	"CUSD",0
3528  0529               L162:
3529  0529 cde0eff0ffe6  	dc.b	205,224,239,240,255,230
3530  052f e5ede8e520e0  	dc.b	229,237,232,229,32,224
3531  0535 eaeaf3ecf3eb  	dc.b	234,234,243,236,243,235
3532  053b fff2eef0e020  	dc.b	255,242,238,240,224,32
3533  0541 25642c253033  	dc.b	"%d,%03d",226,0
3534  054a               L552:
3535  054a 2e00          	dc.b	".",0
3536  054c               L352:
3537  054c 2c00          	dc.b	",",0
3538  054e               L152:
3539  054e 43424300      	dc.b	"CBC",0
3540  0552               L342:
3541  0552 554e4445522d  	dc.b	"UNDER-VOLTAGE WARN"
3542  0564 4e494e4700    	dc.b	"NING",0
3543  0569               L532:
3544  0569 4552524f5200  	dc.b	"ERROR",0
3545  056f               L722:
3546  056f 4f4b00        	dc.b	"OK",0
3547                     	xref.b	c_lreg
3548                     	xref.b	c_x
3568                     	xref	c_eewrw
3569                     	xref	c_eewrc
3570                     	xref	c_smodx
3571                     	xref	c_idiv
3572                     	end
