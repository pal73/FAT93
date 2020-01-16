   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 5 void i2c_Start(void)
  45                     ; 6 {
  47                     	switch	.text
  48  0000               _i2c_Start:
  52                     ; 7 SDA_INIT();
  54  0000 72145016      	bset	20502,#2
  57  0004 72155017      	bres	20503,#2
  60  0008 72155018      	bres	20504,#2
  63  000c 72145014      	bset	20500,#2
  64                     ; 8 SCL_INIT();
  67  0010 72125016      	bset	20502,#1
  70  0014 72135017      	bres	20503,#1
  73  0018 72135018      	bres	20504,#1
  76  001c 72125014      	bset	20500,#1
  77                     ; 9 SDA_LOW()
  80  0020 72155014      	bres	20500,#2
  81                     ; 10 SCL_HIGH()
  83  0024 72125014      	bset	20500,#1
  84                     ; 11 delay_us(5);
  86  0028 ae0005        	ldw	x,#5
  87  002b cd0000        	call	_delay_us
  89                     ; 12 SCL_LOW()
  91  002e 72135014      	bres	20500,#1
  92                     ; 13 delay_us(5);
  94  0032 ae0005        	ldw	x,#5
  95  0035 cd0000        	call	_delay_us
  97                     ; 14 return;
 100  0038 81            	ret
 124                     ; 18 void i2c_Restart(void)
 124                     ; 19 {
 125                     	switch	.text
 126  0039               _i2c_Restart:
 130                     ; 20 SCL_LOW()                      
 132  0039 72135014      	bres	20500,#1
 133                     ; 21 SDA_HIGH()                     
 135  003d 72145014      	bset	20500,#2
 136                     ; 22 delay_us(5);
 138  0041 ae0005        	ldw	x,#5
 139  0044 cd0000        	call	_delay_us
 141                     ; 23 SCL_HIGH()
 143  0047 72125014      	bset	20500,#1
 144                     ; 24 delay_us(5);
 146  004b ae0005        	ldw	x,#5
 147  004e cd0000        	call	_delay_us
 149                     ; 25 SDA_LOW()                      
 151  0051 72155014      	bres	20500,#2
 152                     ; 26 delay_us(5);
 154  0055 ae0005        	ldw	x,#5
 155  0058 cd0000        	call	_delay_us
 157                     ; 27 return;
 160  005b 81            	ret
 196                     ; 31 signed char i2c_ReadAcknowledge(void)
 196                     ; 32 {
 197                     	switch	.text
 198  005c               _i2c_ReadAcknowledge:
 200  005c 88            	push	a
 201       00000001      OFST:	set	1
 204                     ; 34 SDA_HIGH()
 206  005d 72145014      	bset	20500,#2
 207                     ; 35 SCL_LOW()
 209  0061 72135014      	bres	20500,#1
 210                     ; 36 delay_us(3);
 212  0065 ae0003        	ldw	x,#3
 213  0068 cd0000        	call	_delay_us
 215                     ; 37 SCL_HIGH()                              
 217  006b 72125014      	bset	20500,#1
 218                     ; 38 delay_us(3);		
 220  006f ae0003        	ldw	x,#3
 221  0072 cd0000        	call	_delay_us
 223                     ; 39 if(SDA_PIN) ack = 1;
 225  0075 c65015        	ld	a,20501
 226  0078 a504          	bcp	a,#4
 227  007a 2706          	jreq	L74
 230  007c a601          	ld	a,#1
 231  007e 6b01          	ld	(OFST+0,sp),a
 233  0080 2002          	jra	L15
 234  0082               L74:
 235                     ; 40 else ack = 0;
 237  0082 0f01          	clr	(OFST+0,sp)
 238  0084               L15:
 239                     ; 41 SCL_LOW()		
 241  0084 72135014      	bres	20500,#1
 242                     ; 42 delay_us(3);
 244  0088 ae0003        	ldw	x,#3
 245  008b cd0000        	call	_delay_us
 247                     ; 43 return	ack;				
 249  008e 7b01          	ld	a,(OFST+0,sp)
 252  0090 5b01          	addw	sp,#1
 253  0092 81            	ret
 297                     ; 47 char i2c_ReadByte(void)
 297                     ; 48 {
 298                     	switch	.text
 299  0093               _i2c_ReadByte:
 301  0093 89            	pushw	x
 302       00000002      OFST:	set	2
 305                     ; 50 unsigned char byte = 0;
 307  0094 0f02          	clr	(OFST+0,sp)
 308                     ; 51 SDA_HIGH();
 310  0096 72145014      	bset	20500,#2
 311                     ; 52 for(i=0; i<8; i++)
 314  009a 0f01          	clr	(OFST-1,sp)
 315  009c               L57:
 316                     ; 54 	SCL_LOW()
 318  009c 72135014      	bres	20500,#1
 319                     ; 55 	SDA_HIGH();		
 321  00a0 72145014      	bset	20500,#2
 322                     ; 56 	delay_us(3);
 325  00a4 ae0003        	ldw	x,#3
 326  00a7 cd0000        	call	_delay_us
 328                     ; 57 	SCL_HIGH();
 330  00aa 72125014      	bset	20500,#1
 331                     ; 58 	delay_us(2);
 334  00ae ae0002        	ldw	x,#2
 335  00b1 cd0000        	call	_delay_us
 337                     ; 59 	byte = byte << 1;		 
 339  00b4 0802          	sll	(OFST+0,sp)
 340                     ; 60 	if(SDA_PIN) byte|=1;
 342  00b6 c65015        	ld	a,20501
 343  00b9 a504          	bcp	a,#4
 344  00bb 2708          	jreq	L301
 347  00bd 7b02          	ld	a,(OFST+0,sp)
 348  00bf aa01          	or	a,#1
 349  00c1 6b02          	ld	(OFST+0,sp),a
 351  00c3 2006          	jra	L501
 352  00c5               L301:
 353                     ; 61 	else byte&=0xfe;
 355  00c5 7b02          	ld	a,(OFST+0,sp)
 356  00c7 a4fe          	and	a,#254
 357  00c9 6b02          	ld	(OFST+0,sp),a
 358  00cb               L501:
 359                     ; 62 	delay_us(1);
 361  00cb ae0001        	ldw	x,#1
 362  00ce cd0000        	call	_delay_us
 364                     ; 63 	SCL_LOW()
 366  00d1 72135014      	bres	20500,#1
 367                     ; 52 for(i=0; i<8; i++)
 369  00d5 0c01          	inc	(OFST-1,sp)
 372  00d7 7b01          	ld	a,(OFST-1,sp)
 373  00d9 a108          	cp	a,#8
 374  00db 25bf          	jrult	L57
 375                     ; 65 return byte;
 377  00dd 7b02          	ld	a,(OFST+0,sp)
 380  00df 85            	popw	x
 381  00e0 81            	ret
 417                     ; 69 void i2c_SendAcknowledge(unsigned char status)
 417                     ; 70 {
 418                     	switch	.text
 419  00e1               _i2c_SendAcknowledge:
 421  00e1 88            	push	a
 422       00000000      OFST:	set	0
 425                     ; 71 SCL_LOW()
 427  00e2 72135014      	bres	20500,#1
 428                     ; 72 delay_us(3);
 430  00e6 ae0003        	ldw	x,#3
 431  00e9 cd0000        	call	_delay_us
 433                     ; 73 if(status&0x01)
 435  00ec 7b01          	ld	a,(OFST+1,sp)
 436  00ee a501          	bcp	a,#1
 437  00f0 2706          	jreq	L521
 438                     ; 75      SDA_LOW()                          
 440  00f2 72155014      	bres	20500,#2
 442  00f6 2004          	jra	L721
 443  00f8               L521:
 444                     ; 79      SDA_HIGH()
 446  00f8 72145014      	bset	20500,#2
 447  00fc               L721:
 448                     ; 81 delay_us(3);
 450  00fc ae0003        	ldw	x,#3
 451  00ff cd0000        	call	_delay_us
 453                     ; 82 SCL_HIGH()			
 455  0102 72125014      	bset	20500,#1
 456                     ; 83 delay_us(3);
 458  0106 ae0003        	ldw	x,#3
 459  0109 cd0000        	call	_delay_us
 461                     ; 84 SCL_LOW()
 463  010c 72135014      	bres	20500,#1
 464                     ; 85 delay_us(1);
 466  0110 ae0001        	ldw	x,#1
 467  0113 cd0000        	call	_delay_us
 469                     ; 86 return;
 472  0116 84            	pop	a
 473  0117 81            	ret
 517                     ; 90 unsigned char i2c_SendByte(unsigned char byte)
 517                     ; 91 {
 518                     	switch	.text
 519  0118               _i2c_SendByte:
 521  0118 88            	push	a
 522  0119 88            	push	a
 523       00000001      OFST:	set	1
 526                     ; 93 SCL_LOW()
 528  011a 72135014      	bres	20500,#1
 529                     ; 94 delay_us(3);
 531  011e ae0003        	ldw	x,#3
 532  0121 cd0000        	call	_delay_us
 534                     ; 97 for(i=8; i>=1; i--)
 536  0124 a608          	ld	a,#8
 537  0126 6b01          	ld	(OFST+0,sp),a
 538  0128               L351:
 539                     ; 99      if(byte&0x80)
 541  0128 7b02          	ld	a,(OFST+1,sp)
 542  012a a580          	bcp	a,#128
 543  012c 2706          	jreq	L161
 544                     ; 101          	SDA_HIGH()
 546  012e 72145014      	bset	20500,#2
 548  0132 2004          	jra	L361
 549  0134               L161:
 550                     ; 105          	SDA_LOW()
 552  0134 72155014      	bres	20500,#2
 553  0138               L361:
 554                     ; 107      delay_us(3);
 556  0138 ae0003        	ldw	x,#3
 557  013b cd0000        	call	_delay_us
 559                     ; 108      byte<<=1;
 561  013e 0802          	sll	(OFST+1,sp)
 562                     ; 109      SCL_HIGH()
 564  0140 72125014      	bset	20500,#1
 565                     ; 110 	delay_us(4);
 567  0144 ae0004        	ldw	x,#4
 568  0147 cd0000        	call	_delay_us
 570                     ; 111 	SCL_LOW()
 572  014a 72135014      	bres	20500,#1
 573                     ; 112 	delay_us(2);
 575  014e ae0002        	ldw	x,#2
 576  0151 cd0000        	call	_delay_us
 578                     ; 97 for(i=8; i>=1; i--)
 580  0154 0a01          	dec	(OFST+0,sp)
 583  0156 9c            	rvf
 584  0157 7b01          	ld	a,(OFST+0,sp)
 585  0159 a100          	cp	a,#0
 586  015b 2ccb          	jrsgt	L351
 587                     ; 115 SDA_HIGH()
 589  015d 72145014      	bset	20500,#2
 590                     ; 116 return 0;
 592  0161 4f            	clr	a
 595  0162 85            	popw	x
 596  0163 81            	ret
 620                     ; 120 void i2c_Stop(void)
 620                     ; 121 {
 621                     	switch	.text
 622  0164               _i2c_Stop:
 626                     ; 122 SDA_LOW()                      
 628  0164 72155014      	bres	20500,#2
 629                     ; 123 SCL_HIGH()
 631  0168 72125014      	bset	20500,#1
 632                     ; 124 delay_us(5);
 634  016c ae0005        	ldw	x,#5
 635  016f cd0000        	call	_delay_us
 637                     ; 125 SDA_HIGH()                     
 639  0172 72145014      	bset	20500,#2
 640                     ; 126 delay_us(5);	
 642  0176 ae0005        	ldw	x,#5
 643  0179 cd0000        	call	_delay_us
 645                     ; 127 SDA_HIGH()
 647  017c 72145014      	bset	20500,#2
 648                     ; 128 return;
 651  0180 81            	ret
 664                     	xref	_delay_us
 665                     	xdef	_i2c_Stop
 666                     	xdef	_i2c_SendByte
 667                     	xdef	_i2c_SendAcknowledge
 668                     	xdef	_i2c_ReadByte
 669                     	xdef	_i2c_ReadAcknowledge
 670                     	xdef	_i2c_Restart
 671                     	xdef	_i2c_Start
 690                     	end
