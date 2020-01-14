   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  44                     ; 24 void uart3_init (void)
  44                     ; 25 {
  46                     	switch	.text
  47  0000               _uart3_init:
  51                     ; 26 UART3->CR1&=~UART3_CR1_M;					
  53  0000 72195244      	bres	21060,#4
  54                     ; 27 UART3->CR3|= (0<<4) & UART3_CR3_STOP;	
  56  0004 c65246        	ld	a,21062
  57                     ; 28 UART3->BRR2= 0x02;//0x03;
  59  0007 35025243      	mov	21059,#2
  60                     ; 29 UART3->BRR1= 0x41;//0x68;
  62  000b 35415242      	mov	21058,#65
  63                     ; 30 UART3->CR2|= /*UART3_CR2_TEN | */UART3_CR2_REN | UART3_CR2_RIEN;	
  65  000f c65245        	ld	a,21061
  66  0012 aa24          	or	a,#36
  67  0014 c75245        	ld	21061,a
  68                     ; 31 }
  71  0017 81            	ret
 123                     ; 34 @far @interrupt void UART3RxInterrupt (void) 
 123                     ; 35 {
 125                     	switch	.text
 126  0018               f_UART3RxInterrupt:
 128       00000002      OFST:	set	2
 129  0018 89            	pushw	x
 132                     ; 36 char rx_status3=UART3->SR;
 134  0019 c65240        	ld	a,21056
 135  001c 6b01          	ld	(OFST-1,sp),a
 136                     ; 37 char rx_data3=UART3->DR;
 138  001e c65241        	ld	a,21057
 139  0021 6b02          	ld	(OFST+0,sp),a
 140                     ; 39 if (rx_status3 & (UART3_SR_RXNE))
 142  0023 7b01          	ld	a,(OFST-1,sp)
 143  0025 a520          	bcp	a,#32
 144  0027 275f          	jreq	L34
 145                     ; 41 	rxBuffer3[rx_wr_index3++]=rx_data3;
 147  0029 7b02          	ld	a,(OFST+0,sp)
 148  002b ce0065        	ldw	x,_rx_wr_index3
 149  002e 1c0001        	addw	x,#1
 150  0031 cf0065        	ldw	_rx_wr_index3,x
 151  0034 1d0001        	subw	x,#1
 152  0037 d70067        	ld	(_rxBuffer3,x),a
 153                     ; 42 	if(rx_data3=='\n')
 155  003a 7b02          	ld	a,(OFST+0,sp)
 156  003c a10a          	cp	a,#10
 157  003e 2623          	jrne	L54
 158                     ; 45 		memset(uart3_an_buffer,'\0',100);
 160  0040 ae0064        	ldw	x,#100
 161  0043               L01:
 162  0043 724f0000      	clr	(_uart3_an_buffer-1,x)
 163  0047 5a            	decw	x
 164  0048 26f9          	jrne	L01
 165                     ; 46 		memcpy(uart3_an_buffer,rxBuffer3,rx_wr_index3);
 167  004a ce0065        	ldw	x,_rx_wr_index3
 168  004d 5d            	tnzw	x
 169  004e 2709          	jreq	L21
 170  0050               L41:
 171  0050 d60066        	ld	a,(_rxBuffer3-1,x)
 172  0053 d70000        	ld	(_uart3_an_buffer-1,x),a
 173  0056 5a            	decw	x
 174  0057 26f7          	jrne	L41
 175  0059               L21:
 176                     ; 47 		bRXIN3=1;
 178  0059 35010000      	mov	_bRXIN3,#1
 179                     ; 48 		rx_wr_index3=0;
 181  005d 5f            	clrw	x
 182  005e cf0065        	ldw	_rx_wr_index3,x
 184  0061 200d          	jra	L74
 185  0063               L54:
 186                     ; 52 		if(rx_wr_index3>=RX_BUFFER_3_SIZE)
 188  0063 9c            	rvf
 189  0064 ce0065        	ldw	x,_rx_wr_index3
 190  0067 a30040        	cpw	x,#64
 191  006a 2f04          	jrslt	L74
 192                     ; 54 			rx_wr_index3=0;	
 194  006c 5f            	clrw	x
 195  006d cf0065        	ldw	_rx_wr_index3,x
 196  0070               L74:
 197                     ; 57 	cntAirSensorLineErrorHi=0;
 199  0070 3f00          	clr	_cntAirSensorLineErrorHi
 200                     ; 58 	cntAirSensorLineErrorLo=0;
 202  0072 3f00          	clr	_cntAirSensorLineErrorLo
 203                     ; 59 	if(airSensorErrorStat==taesLHI)airSensorErrorStat=taesNORM;
 205  0074 b600          	ld	a,_airSensorErrorStat
 206  0076 a103          	cp	a,#3
 207  0078 2604          	jrne	L35
 210  007a 35550000      	mov	_airSensorErrorStat,#85
 211  007e               L35:
 212                     ; 60 	if(airSensorErrorStat==taesLLO)airSensorErrorStat=taesNORM;
 214  007e b600          	ld	a,_airSensorErrorStat
 215  0080 a102          	cp	a,#2
 216  0082 2604          	jrne	L34
 219  0084 35550000      	mov	_airSensorErrorStat,#85
 220  0088               L34:
 221                     ; 62 }
 224  0088 5b02          	addw	sp,#2
 225  008a 80            	iret
 302                     ; 65 void uart3_in_an (void)
 302                     ; 66 {
 304                     	switch	.text
 305  008b               _uart3_in_an:
 307  008b 520e          	subw	sp,#14
 308       0000000e      OFST:	set	14
 311                     ; 69 	disableInterrupts();
 314  008d 9b            sim
 316                     ; 70 if(bRXIN3)
 319  008e 725d0000      	tnz	_bRXIN3
 320  0092 2603          	jrne	L601
 321  0094 cc07a2        	jp	L101
 322  0097               L601:
 323                     ; 72 	bRXIN3=0;
 325  0097 725f0000      	clr	_bRXIN3
 326                     ; 74 	if(strstr(uart3_an_buffer,"OK"))
 328  009b ae0077        	ldw	x,#L501
 329  009e 89            	pushw	x
 330  009f ae0001        	ldw	x,#_uart3_an_buffer
 331  00a2 cd0000        	call	_strstr
 333  00a5 5b02          	addw	sp,#2
 334  00a7 a30000        	cpw	x,#0
 335  00aa 2747          	jreq	L301
 336                     ; 76 		ptr1=strstr(uart3_an_buffer,"OK");	
 338  00ac ae0077        	ldw	x,#L501
 339  00af 89            	pushw	x
 340  00b0 ae0001        	ldw	x,#_uart3_an_buffer
 341  00b3 cd0000        	call	_strstr
 343  00b6 5b02          	addw	sp,#2
 344  00b8 bf04          	ldw	_ptr1,x
 345                     ; 77 		ptr2=strstr(uart3_an_buffer,"CRC");
 347  00ba ae0073        	ldw	x,#L701
 348  00bd 89            	pushw	x
 349  00be ae0001        	ldw	x,#_uart3_an_buffer
 350  00c1 cd0000        	call	_strstr
 352  00c4 5b02          	addw	sp,#2
 353  00c6 bf02          	ldw	_ptr2,x
 354                     ; 79 		memcpy(digi,ptr1+2,ptr2-ptr1-2);
 356  00c8 be04          	ldw	x,_ptr1
 357  00ca 5c            	incw	x
 358  00cb 5c            	incw	x
 359  00cc bf00          	ldw	c_x,x
 360  00ce be02          	ldw	x,_ptr2
 361  00d0 72b00004      	subw	x,_ptr1
 362  00d4 5a            	decw	x
 363  00d5 5a            	decw	x
 364  00d6 5d            	tnzw	x
 365  00d7 270a          	jreq	L02
 366  00d9               L22:
 367  00d9 5a            	decw	x
 368  00da 92d600        	ld	a,([c_x.w],x)
 369  00dd 92d700        	ld	([_digi.w],x),a
 370  00e0 5d            	tnzw	x
 371  00e1 26f6          	jrne	L22
 372  00e3               L02:
 373                     ; 81 		temperOfAir=(signed char)atoi(digi);
 375  00e3 be00          	ldw	x,_digi
 376  00e5 cd0000        	call	_atoi
 378  00e8 9f            	ld	a,xl
 379  00e9 b700          	ld	_temperOfAir,a
 380                     ; 82 		airSensorErrorStat=taesNORM;
 382  00eb 35550000      	mov	_airSensorErrorStat,#85
 384  00ef aca207a2      	jpf	L101
 385  00f3               L301:
 386                     ; 85 	else if(strstr(uart3_an_buffer,"ERRORLO"))
 388  00f3 ae006b        	ldw	x,#L511
 389  00f6 89            	pushw	x
 390  00f7 ae0001        	ldw	x,#_uart3_an_buffer
 391  00fa cd0000        	call	_strstr
 393  00fd 5b02          	addw	sp,#2
 394  00ff a30000        	cpw	x,#0
 395  0102 2706          	jreq	L311
 396                     ; 87 		airSensorErrorStat=taesLO;
 398  0104 3f00          	clr	_airSensorErrorStat
 400  0106 aca207a2      	jpf	L101
 401  010a               L311:
 402                     ; 89 	else if(strstr(uart3_an_buffer,"ERRORHI"))
 404  010a ae0063        	ldw	x,#L321
 405  010d 89            	pushw	x
 406  010e ae0001        	ldw	x,#_uart3_an_buffer
 407  0111 cd0000        	call	_strstr
 409  0114 5b02          	addw	sp,#2
 410  0116 a30000        	cpw	x,#0
 411  0119 2708          	jreq	L121
 412                     ; 91 		airSensorErrorStat=taesHI;
 414  011b 35010000      	mov	_airSensorErrorStat,#1
 416  011f aca207a2      	jpf	L101
 417  0123               L121:
 418                     ; 93 	else if(strstr(uart3_an_buffer,"OPTR"))
 420  0123 ae005e        	ldw	x,#L131
 421  0126 89            	pushw	x
 422  0127 ae0001        	ldw	x,#_uart3_an_buffer
 423  012a cd0000        	call	_strstr
 425  012d 5b02          	addw	sp,#2
 426  012f a30000        	cpw	x,#0
 427  0132 274d          	jreq	L721
 428                     ; 95 		ptr1=strstr(uart3_an_buffer,"OPTR");	
 430  0134 ae005e        	ldw	x,#L131
 431  0137 89            	pushw	x
 432  0138 ae0001        	ldw	x,#_uart3_an_buffer
 433  013b cd0000        	call	_strstr
 435  013e 5b02          	addw	sp,#2
 436  0140 bf04          	ldw	_ptr1,x
 437                     ; 96 		ptr2=strstr(uart3_an_buffer,"CRC");
 439  0142 ae0073        	ldw	x,#L701
 440  0145 89            	pushw	x
 441  0146 ae0001        	ldw	x,#_uart3_an_buffer
 442  0149 cd0000        	call	_strstr
 444  014c 5b02          	addw	sp,#2
 445  014e bf02          	ldw	_ptr2,x
 446                     ; 97 		memcpy(digi,ptr1+4,ptr2-ptr1-4);
 448  0150 be04          	ldw	x,_ptr1
 449  0152 1c0004        	addw	x,#4
 450  0155 bf00          	ldw	c_x,x
 451  0157 be02          	ldw	x,_ptr2
 452  0159 72b00004      	subw	x,_ptr1
 453  015d 1d0004        	subw	x,#4
 454  0160 5d            	tnzw	x
 455  0161 270a          	jreq	L42
 456  0163               L62:
 457  0163 5a            	decw	x
 458  0164 92d600        	ld	a,([c_x.w],x)
 459  0167 92d700        	ld	([_digi.w],x),a
 460  016a 5d            	tnzw	x
 461  016b 26f6          	jrne	L62
 462  016d               L42:
 463                     ; 98 		tempIN[0]=(int)atoi(digi);
 465  016d be00          	ldw	x,_digi
 466  016f cd0000        	call	_atoi
 468  0172 1f03          	ldw	(OFST-11,sp),x
 469                     ; 102 		optr_stat=(char)tempIN[0];
 471  0174 7b04          	ld	a,(OFST-10,sp)
 472  0176 c70000        	ld	_optr_stat,a
 473                     ; 103 		optr_kontr_cnt=50;
 475  0179 35320000      	mov	_optr_kontr_cnt,#50
 477  017d aca207a2      	jpf	L101
 478  0181               L721:
 479                     ; 105 	else if(strstr(uart3_an_buffer,"DATA"))
 481  0181 ae0059        	ldw	x,#L731
 482  0184 89            	pushw	x
 483  0185 ae0001        	ldw	x,#_uart3_an_buffer
 484  0188 cd0000        	call	_strstr
 486  018b 5b02          	addw	sp,#2
 487  018d a30000        	cpw	x,#0
 488  0190 2603          	jrne	L011
 489  0192 cc03a6        	jp	L531
 490  0195               L011:
 491                     ; 108 		ptr1=strstr(uart3_an_buffer,"DATA");	
 493  0195 ae0059        	ldw	x,#L731
 494  0198 89            	pushw	x
 495  0199 ae0001        	ldw	x,#_uart3_an_buffer
 496  019c cd0000        	call	_strstr
 498  019f 5b02          	addw	sp,#2
 499  01a1 bf04          	ldw	_ptr1,x
 500                     ; 109 		ptr2=strstr(uart3_an_buffer,"CRC");
 502  01a3 ae0073        	ldw	x,#L701
 503  01a6 89            	pushw	x
 504  01a7 ae0001        	ldw	x,#_uart3_an_buffer
 505  01aa cd0000        	call	_strstr
 507  01ad 5b02          	addw	sp,#2
 508  01af bf02          	ldw	_ptr2,x
 509                     ; 110 		memcpy(digi,ptr1+4,2);
 511  01b1 be04          	ldw	x,_ptr1
 512  01b3 1c0004        	addw	x,#4
 513  01b6 bf00          	ldw	c_x,x
 514  01b8 ae0002        	ldw	x,#2
 515  01bb               L03:
 516  01bb 5a            	decw	x
 517  01bc 92d600        	ld	a,([c_x.w],x)
 518  01bf 92d700        	ld	([_digi.w],x),a
 519  01c2 5d            	tnzw	x
 520  01c3 26f6          	jrne	L03
 521                     ; 111 		temp=(char)atoi(digi);
 523  01c5 be00          	ldw	x,_digi
 524  01c7 cd0000        	call	_atoi
 526  01ca 9f            	ld	a,xl
 527  01cb 6b02          	ld	(OFST-12,sp),a
 528                     ; 112 		gran_char(&temp,0,99);
 530  01cd 4b63          	push	#99
 531  01cf 4b00          	push	#0
 532  01d1 96            	ldw	x,sp
 533  01d2 1c0004        	addw	x,#OFST-10
 534  01d5 cd0000        	call	_gran_char
 536  01d8 85            	popw	x
 537                     ; 113 		_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
 539  01d9 7b02          	ld	a,(OFST-12,sp)
 540  01db ae000a        	ldw	x,#10
 541  01de 51            	exgw	x,y
 542  01df 5f            	clrw	x
 543  01e0 4d            	tnz	a
 544  01e1 2a01          	jrpl	L23
 545  01e3 5a            	decw	x
 546  01e4               L23:
 547  01e4 02            	rlwa	x,a
 548  01e5 cd0000        	call	c_idiv
 550  01e8 909f          	ld	a,yl
 551  01ea 6b01          	ld	(OFST-13,sp),a
 552  01ec 7b02          	ld	a,(OFST-12,sp)
 553  01ee ae000a        	ldw	x,#10
 554  01f1 51            	exgw	x,y
 555  01f2 5f            	clrw	x
 556  01f3 4d            	tnz	a
 557  01f4 2a01          	jrpl	L43
 558  01f6 5a            	decw	x
 559  01f7               L43:
 560  01f7 02            	rlwa	x,a
 561  01f8 cd0000        	call	c_idiv
 563  01fb 9f            	ld	a,xl
 564  01fc 4e            	swap	a
 565  01fd a4f0          	and	a,#240
 566  01ff 1b01          	add	a,(OFST-13,sp)
 567  0201 97            	ld	xl,a
 568  0202 a606          	ld	a,#6
 569  0204 95            	ld	xh,a
 570  0205 cd0000        	call	__ds1307_write_byte
 572                     ; 114 		memcpy(digi,ptr1+6,2);
 574  0208 be04          	ldw	x,_ptr1
 575  020a 1c0006        	addw	x,#6
 576  020d bf00          	ldw	c_x,x
 577  020f ae0002        	ldw	x,#2
 578  0212               L63:
 579  0212 5a            	decw	x
 580  0213 92d600        	ld	a,([c_x.w],x)
 581  0216 92d700        	ld	([_digi.w],x),a
 582  0219 5d            	tnzw	x
 583  021a 26f6          	jrne	L63
 584                     ; 115 		temp=(char)atoi(digi);
 586  021c be00          	ldw	x,_digi
 587  021e cd0000        	call	_atoi
 589  0221 9f            	ld	a,xl
 590  0222 6b02          	ld	(OFST-12,sp),a
 591                     ; 116 		gran_ring_char(&temp,1,12);
 593  0224 4b0c          	push	#12
 594  0226 4b01          	push	#1
 595  0228 96            	ldw	x,sp
 596  0229 1c0004        	addw	x,#OFST-10
 597  022c cd0000        	call	_gran_ring_char
 599  022f 85            	popw	x
 600                     ; 117 		_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));	
 602  0230 7b02          	ld	a,(OFST-12,sp)
 603  0232 ae000a        	ldw	x,#10
 604  0235 51            	exgw	x,y
 605  0236 5f            	clrw	x
 606  0237 4d            	tnz	a
 607  0238 2a01          	jrpl	L04
 608  023a 5a            	decw	x
 609  023b               L04:
 610  023b 02            	rlwa	x,a
 611  023c cd0000        	call	c_idiv
 613  023f 909f          	ld	a,yl
 614  0241 6b01          	ld	(OFST-13,sp),a
 615  0243 7b02          	ld	a,(OFST-12,sp)
 616  0245 ae000a        	ldw	x,#10
 617  0248 51            	exgw	x,y
 618  0249 5f            	clrw	x
 619  024a 4d            	tnz	a
 620  024b 2a01          	jrpl	L24
 621  024d 5a            	decw	x
 622  024e               L24:
 623  024e 02            	rlwa	x,a
 624  024f cd0000        	call	c_idiv
 626  0252 9f            	ld	a,xl
 627  0253 4e            	swap	a
 628  0254 a4f0          	and	a,#240
 629  0256 1b01          	add	a,(OFST-13,sp)
 630  0258 97            	ld	xl,a
 631  0259 a605          	ld	a,#5
 632  025b 95            	ld	xh,a
 633  025c cd0000        	call	__ds1307_write_byte
 635                     ; 118 		memcpy(digi,ptr1+8,2);
 637  025f be04          	ldw	x,_ptr1
 638  0261 1c0008        	addw	x,#8
 639  0264 bf00          	ldw	c_x,x
 640  0266 ae0002        	ldw	x,#2
 641  0269               L44:
 642  0269 5a            	decw	x
 643  026a 92d600        	ld	a,([c_x.w],x)
 644  026d 92d700        	ld	([_digi.w],x),a
 645  0270 5d            	tnzw	x
 646  0271 26f6          	jrne	L44
 647                     ; 119 		temp=(char)atoi(digi);
 649  0273 be00          	ldw	x,_digi
 650  0275 cd0000        	call	_atoi
 652  0278 9f            	ld	a,xl
 653  0279 6b02          	ld	(OFST-12,sp),a
 654                     ; 120 		gran_ring_char(&temp,1,31);
 656  027b 4b1f          	push	#31
 657  027d 4b01          	push	#1
 658  027f 96            	ldw	x,sp
 659  0280 1c0004        	addw	x,#OFST-10
 660  0283 cd0000        	call	_gran_ring_char
 662  0286 85            	popw	x
 663                     ; 121 		_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
 665  0287 7b02          	ld	a,(OFST-12,sp)
 666  0289 ae000a        	ldw	x,#10
 667  028c 51            	exgw	x,y
 668  028d 5f            	clrw	x
 669  028e 4d            	tnz	a
 670  028f 2a01          	jrpl	L64
 671  0291 5a            	decw	x
 672  0292               L64:
 673  0292 02            	rlwa	x,a
 674  0293 cd0000        	call	c_idiv
 676  0296 909f          	ld	a,yl
 677  0298 6b01          	ld	(OFST-13,sp),a
 678  029a 7b02          	ld	a,(OFST-12,sp)
 679  029c ae000a        	ldw	x,#10
 680  029f 51            	exgw	x,y
 681  02a0 5f            	clrw	x
 682  02a1 4d            	tnz	a
 683  02a2 2a01          	jrpl	L05
 684  02a4 5a            	decw	x
 685  02a5               L05:
 686  02a5 02            	rlwa	x,a
 687  02a6 cd0000        	call	c_idiv
 689  02a9 9f            	ld	a,xl
 690  02aa 4e            	swap	a
 691  02ab a4f0          	and	a,#240
 692  02ad 1b01          	add	a,(OFST-13,sp)
 693  02af 97            	ld	xl,a
 694  02b0 a604          	ld	a,#4
 695  02b2 95            	ld	xh,a
 696  02b3 cd0000        	call	__ds1307_write_byte
 698                     ; 122 		memcpy(digi,ptr1+10,2);
 700  02b6 be04          	ldw	x,_ptr1
 701  02b8 1c000a        	addw	x,#10
 702  02bb bf00          	ldw	c_x,x
 703  02bd ae0002        	ldw	x,#2
 704  02c0               L25:
 705  02c0 5a            	decw	x
 706  02c1 92d600        	ld	a,([c_x.w],x)
 707  02c4 92d700        	ld	([_digi.w],x),a
 708  02c7 5d            	tnzw	x
 709  02c8 26f6          	jrne	L25
 710                     ; 123 		temp=(char)atoi(digi);
 712  02ca be00          	ldw	x,_digi
 713  02cc cd0000        	call	_atoi
 715  02cf 9f            	ld	a,xl
 716  02d0 6b02          	ld	(OFST-12,sp),a
 717                     ; 124 		gran_ring_char(&temp,1,7);
 719  02d2 4b07          	push	#7
 720  02d4 4b01          	push	#1
 721  02d6 96            	ldw	x,sp
 722  02d7 1c0004        	addw	x,#OFST-10
 723  02da cd0000        	call	_gran_ring_char
 725  02dd 85            	popw	x
 726                     ; 125 		_ds1307_write_byte(3,temp&0x07);
 728  02de 7b02          	ld	a,(OFST-12,sp)
 729  02e0 a407          	and	a,#7
 730  02e2 97            	ld	xl,a
 731  02e3 a603          	ld	a,#3
 732  02e5 95            	ld	xh,a
 733  02e6 cd0000        	call	__ds1307_write_byte
 735                     ; 126 		memcpy(digi,ptr1+12,2);
 737  02e9 be04          	ldw	x,_ptr1
 738  02eb 1c000c        	addw	x,#12
 739  02ee bf00          	ldw	c_x,x
 740  02f0 ae0002        	ldw	x,#2
 741  02f3               L45:
 742  02f3 5a            	decw	x
 743  02f4 92d600        	ld	a,([c_x.w],x)
 744  02f7 92d700        	ld	([_digi.w],x),a
 745  02fa 5d            	tnzw	x
 746  02fb 26f6          	jrne	L45
 747                     ; 127 		temp=(char)atoi(digi);
 749  02fd be00          	ldw	x,_digi
 750  02ff cd0000        	call	_atoi
 752  0302 9f            	ld	a,xl
 753  0303 6b02          	ld	(OFST-12,sp),a
 754                     ; 128 		gran_ring_char(&temp,0,23);
 756  0305 4b17          	push	#23
 757  0307 4b00          	push	#0
 758  0309 96            	ldw	x,sp
 759  030a 1c0004        	addw	x,#OFST-10
 760  030d cd0000        	call	_gran_ring_char
 762  0310 85            	popw	x
 763                     ; 129 		_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);		
 765  0311 7b02          	ld	a,(OFST-12,sp)
 766  0313 ae000a        	ldw	x,#10
 767  0316 51            	exgw	x,y
 768  0317 5f            	clrw	x
 769  0318 4d            	tnz	a
 770  0319 2a01          	jrpl	L65
 771  031b 5a            	decw	x
 772  031c               L65:
 773  031c 02            	rlwa	x,a
 774  031d cd0000        	call	c_idiv
 776  0320 909f          	ld	a,yl
 777  0322 6b01          	ld	(OFST-13,sp),a
 778  0324 7b02          	ld	a,(OFST-12,sp)
 779  0326 ae000a        	ldw	x,#10
 780  0329 51            	exgw	x,y
 781  032a 5f            	clrw	x
 782  032b 4d            	tnz	a
 783  032c 2a01          	jrpl	L06
 784  032e 5a            	decw	x
 785  032f               L06:
 786  032f 02            	rlwa	x,a
 787  0330 cd0000        	call	c_idiv
 789  0333 9f            	ld	a,xl
 790  0334 4e            	swap	a
 791  0335 a4f0          	and	a,#240
 792  0337 1b01          	add	a,(OFST-13,sp)
 793  0339 a4bf          	and	a,#191
 794  033b 97            	ld	xl,a
 795  033c a602          	ld	a,#2
 796  033e 95            	ld	xh,a
 797  033f cd0000        	call	__ds1307_write_byte
 799                     ; 130 		memcpy(digi,ptr1+14,2);
 801  0342 be04          	ldw	x,_ptr1
 802  0344 1c000e        	addw	x,#14
 803  0347 bf00          	ldw	c_x,x
 804  0349 ae0002        	ldw	x,#2
 805  034c               L26:
 806  034c 5a            	decw	x
 807  034d 92d600        	ld	a,([c_x.w],x)
 808  0350 92d700        	ld	([_digi.w],x),a
 809  0353 5d            	tnzw	x
 810  0354 26f6          	jrne	L26
 811                     ; 131 		temp=(char)atoi(digi);
 813  0356 be00          	ldw	x,_digi
 814  0358 cd0000        	call	_atoi
 816  035b 9f            	ld	a,xl
 817  035c 6b02          	ld	(OFST-12,sp),a
 818                     ; 132 		gran_ring_char(&temp,0,59);
 820  035e 4b3b          	push	#59
 821  0360 4b00          	push	#0
 822  0362 96            	ldw	x,sp
 823  0363 1c0004        	addw	x,#OFST-10
 824  0366 cd0000        	call	_gran_ring_char
 826  0369 85            	popw	x
 827                     ; 133 		_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));		
 829  036a 7b02          	ld	a,(OFST-12,sp)
 830  036c ae000a        	ldw	x,#10
 831  036f 51            	exgw	x,y
 832  0370 5f            	clrw	x
 833  0371 4d            	tnz	a
 834  0372 2a01          	jrpl	L46
 835  0374 5a            	decw	x
 836  0375               L46:
 837  0375 02            	rlwa	x,a
 838  0376 cd0000        	call	c_idiv
 840  0379 909f          	ld	a,yl
 841  037b 6b01          	ld	(OFST-13,sp),a
 842  037d 7b02          	ld	a,(OFST-12,sp)
 843  037f ae000a        	ldw	x,#10
 844  0382 51            	exgw	x,y
 845  0383 5f            	clrw	x
 846  0384 4d            	tnz	a
 847  0385 2a01          	jrpl	L66
 848  0387 5a            	decw	x
 849  0388               L66:
 850  0388 02            	rlwa	x,a
 851  0389 cd0000        	call	c_idiv
 853  038c 9f            	ld	a,xl
 854  038d 4e            	swap	a
 855  038e a4f0          	and	a,#240
 856  0390 1b01          	add	a,(OFST-13,sp)
 857  0392 97            	ld	xl,a
 858  0393 a601          	ld	a,#1
 859  0395 95            	ld	xh,a
 860  0396 cd0000        	call	__ds1307_write_byte
 862                     ; 135 		optr_stat=(char)tempIN[0];
 864  0399 7b04          	ld	a,(OFST-10,sp)
 865  039b c70000        	ld	_optr_stat,a
 866                     ; 136 		optr_kontr_cnt=50;
 868  039e 35320000      	mov	_optr_kontr_cnt,#50
 870  03a2 aca207a2      	jpf	L101
 871  03a6               L531:
 872                     ; 139 	else if(strstr(uart3_an_buffer,"WATER"))
 874  03a6 ae0053        	ldw	x,#L541
 875  03a9 89            	pushw	x
 876  03aa ae0001        	ldw	x,#_uart3_an_buffer
 877  03ad cd0000        	call	_strstr
 879  03b0 5b02          	addw	sp,#2
 880  03b2 a30000        	cpw	x,#0
 881  03b5 2719          	jreq	L341
 882                     ; 141 		if(ind!=iWater)
 884  03b7 b600          	ld	a,_a_ind
 885  03b9 a10d          	cp	a,#13
 886  03bb 2603          	jrne	L211
 887  03bd cc07a2        	jp	L101
 888  03c0               L211:
 889                     ; 143 			tree_up(iWater,0,0,0);
 891  03c0 4b00          	push	#0
 892  03c2 4b00          	push	#0
 893  03c4 5f            	clrw	x
 894  03c5 a60d          	ld	a,#13
 895  03c7 95            	ld	xh,a
 896  03c8 cd0000        	call	_tree_up
 898  03cb 85            	popw	x
 899  03cc aca207a2      	jpf	L101
 900  03d0               L341:
 901                     ; 146 	else if(strstr(uart3_an_buffer,"WAT_RET"))
 903  03d0 ae004b        	ldw	x,#L551
 904  03d3 89            	pushw	x
 905  03d4 ae0001        	ldw	x,#_uart3_an_buffer
 906  03d7 cd0000        	call	_strstr
 908  03da 5b02          	addw	sp,#2
 909  03dc a30000        	cpw	x,#0
 910  03df 2713          	jreq	L351
 911                     ; 148 		if(ind==iWater)
 913  03e1 b600          	ld	a,_a_ind
 914  03e3 a10d          	cp	a,#13
 915  03e5 2703          	jreq	L411
 916  03e7 cc07a2        	jp	L101
 917  03ea               L411:
 918                     ; 150 			tree_down(0,0);
 920  03ea 5f            	clrw	x
 921  03eb 4f            	clr	a
 922  03ec 95            	ld	xh,a
 923  03ed cd0000        	call	_tree_down
 925  03f0 aca207a2      	jpf	L101
 926  03f4               L351:
 927                     ; 154 	else if(strstr(uart3_an_buffer,"AIR"))
 929  03f4 ae0047        	ldw	x,#L561
 930  03f7 89            	pushw	x
 931  03f8 ae0001        	ldw	x,#_uart3_an_buffer
 932  03fb cd0000        	call	_strstr
 934  03fe 5b02          	addw	sp,#2
 935  0400 a30000        	cpw	x,#0
 936  0403 2719          	jreq	L361
 937                     ; 156 		if(ind!=iAir)
 939  0405 b600          	ld	a,_a_ind
 940  0407 a10e          	cp	a,#14
 941  0409 2603          	jrne	L611
 942  040b cc07a2        	jp	L101
 943  040e               L611:
 944                     ; 158 			tree_up(iAir,0,0,0);
 946  040e 4b00          	push	#0
 947  0410 4b00          	push	#0
 948  0412 5f            	clrw	x
 949  0413 a60e          	ld	a,#14
 950  0415 95            	ld	xh,a
 951  0416 cd0000        	call	_tree_up
 953  0419 85            	popw	x
 954  041a aca207a2      	jpf	L101
 955  041e               L361:
 956                     ; 161 	else if(strstr(uart3_an_buffer,"AI_RET"))
 958  041e ae0040        	ldw	x,#L571
 959  0421 89            	pushw	x
 960  0422 ae0001        	ldw	x,#_uart3_an_buffer
 961  0425 cd0000        	call	_strstr
 963  0428 5b02          	addw	sp,#2
 964  042a a30000        	cpw	x,#0
 965  042d 2713          	jreq	L371
 966                     ; 163 		if(ind==iAir)
 968  042f b600          	ld	a,_a_ind
 969  0431 a10e          	cp	a,#14
 970  0433 2703          	jreq	L021
 971  0435 cc07a2        	jp	L101
 972  0438               L021:
 973                     ; 165 			tree_down(0,0);
 975  0438 5f            	clrw	x
 976  0439 4f            	clr	a
 977  043a 95            	ld	xh,a
 978  043b cd0000        	call	_tree_down
 980  043e aca207a2      	jpf	L101
 981  0442               L371:
 982                     ; 169 	else if(strstr(uart3_an_buffer,"TIMESTART"))
 984  0442 ae0036        	ldw	x,#L502
 985  0445 89            	pushw	x
 986  0446 ae0001        	ldw	x,#_uart3_an_buffer
 987  0449 cd0000        	call	_strstr
 989  044c 5b02          	addw	sp,#2
 990  044e a30000        	cpw	x,#0
 991  0451 270a          	jreq	L302
 992                     ; 171 		_ds1307_write_byte(0,0);
 994  0453 5f            	clrw	x
 995  0454 4f            	clr	a
 996  0455 95            	ld	xh,a
 997  0456 cd0000        	call	__ds1307_write_byte
1000  0459 aca207a2      	jpf	L101
1001  045d               L302:
1002                     ; 174 	else if(strstr(uart3_an_buffer,"PROBESMS"))
1004  045d ae002d        	ldw	x,#L312
1005  0460 89            	pushw	x
1006  0461 ae0001        	ldw	x,#_uart3_an_buffer
1007  0464 cd0000        	call	_strstr
1009  0467 5b02          	addw	sp,#2
1010  0469 a30000        	cpw	x,#0
1011  046c 273b          	jreq	L112
1012                     ; 176 		if(memcmp(MAIN_NUMBER,"9139294352",10)!=0)
1014  046e ae000a        	ldw	x,#10
1015  0471 89            	pushw	x
1016  0472 ae0022        	ldw	x,#L712
1017  0475 89            	pushw	x
1018  0476 ae0000        	ldw	x,#_MAIN_NUMBER
1019  0479 cd0000        	call	_memcmp
1021  047c 5b04          	addw	sp,#4
1022  047e a30000        	cpw	x,#0
1023  0481 2603          	jrne	L221
1024  0483 cc07a2        	jp	L101
1025  0486               L221:
1026                     ; 178 			memcpy(MAIN_NUMBER,"9139294352",10);
1028  0486 ae000a        	ldw	x,#10
1029  0489               L07:
1030  0489 d60021        	ld	a,(L712-1,x)
1031  048c d7ffff        	ld	(_MAIN_NUMBER-1,x),a
1032  048f 5a            	decw	x
1033  0490 26f7          	jrne	L07
1034                     ; 179 			AUTH_NUMBER_FLAGS=0x01;
1036  0492 a601          	ld	a,#1
1037  0494 ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1038  0497 cd0000        	call	c_eewrc
1040                     ; 181 			HUMAN_SET_EE=1;
1042  049a ae0001        	ldw	x,#1
1043  049d 89            	pushw	x
1044  049e ae0000        	ldw	x,#_HUMAN_SET_EE
1045  04a1 cd0000        	call	c_eewrw
1047  04a4 85            	popw	x
1048  04a5 aca207a2      	jpf	L101
1049  04a9               L112:
1050                     ; 185 	else if(strstr(uart3_an_buffer,"DEFAULT"))
1052  04a9 ae001a        	ldw	x,#L522
1053  04ac 89            	pushw	x
1054  04ad ae0001        	ldw	x,#_uart3_an_buffer
1055  04b0 cd0000        	call	_strstr
1057  04b3 5b02          	addw	sp,#2
1058  04b5 a30000        	cpw	x,#0
1059  04b8 2603          	jrne	L421
1060  04ba cc0760        	jp	L322
1061  04bd               L421:
1062                     ; 187 		if(HUMAN_SET_EE!=0x2222)
1064  04bd ce0000        	ldw	x,_HUMAN_SET_EE
1065  04c0 a32222        	cpw	x,#8738
1066  04c3 2603          	jrne	L621
1067  04c5 cc07a2        	jp	L101
1068  04c8               L621:
1069                     ; 189 			TABLE_TIME_EE[0][0]=0;
1071  04c8 4f            	clr	a
1072  04c9 ae0000        	ldw	x,#_TABLE_TIME_EE
1073  04cc cd0000        	call	c_eewrc
1075                     ; 190 			TABLE_TEMPER_EE[0][0]=20;	
1077  04cf a614          	ld	a,#20
1078  04d1 ae0000        	ldw	x,#_TABLE_TEMPER_EE
1079  04d4 cd0000        	call	c_eewrc
1081                     ; 191 			TABLE_TIME_EE[0][1]=36;
1083  04d7 a624          	ld	a,#36
1084  04d9 ae0001        	ldw	x,#_TABLE_TIME_EE+1
1085  04dc cd0000        	call	c_eewrc
1087                     ; 192 			TABLE_TEMPER_EE[0][1]=20;	
1089  04df a614          	ld	a,#20
1090  04e1 ae0001        	ldw	x,#_TABLE_TEMPER_EE+1
1091  04e4 cd0000        	call	c_eewrc
1093                     ; 193 			TABLE_TIME_EE[0][2]=72;
1095  04e7 a648          	ld	a,#72
1096  04e9 ae0002        	ldw	x,#_TABLE_TIME_EE+2
1097  04ec cd0000        	call	c_eewrc
1099                     ; 194 			TABLE_TEMPER_EE[0][2]=20;	
1101  04ef a614          	ld	a,#20
1102  04f1 ae0002        	ldw	x,#_TABLE_TEMPER_EE+2
1103  04f4 cd0000        	call	c_eewrc
1105                     ; 195 			TABLE_TIME_EE[0][3]=108;
1107  04f7 a66c          	ld	a,#108
1108  04f9 ae0003        	ldw	x,#_TABLE_TIME_EE+3
1109  04fc cd0000        	call	c_eewrc
1111                     ; 196 			TABLE_TEMPER_EE[0][3]=20;	
1113  04ff a614          	ld	a,#20
1114  0501 ae0003        	ldw	x,#_TABLE_TEMPER_EE+3
1115  0504 cd0000        	call	c_eewrc
1117                     ; 197 			TABLE_TIME_EE[0][4]=126;
1119  0507 a67e          	ld	a,#126
1120  0509 ae0004        	ldw	x,#_TABLE_TIME_EE+4
1121  050c cd0000        	call	c_eewrc
1123                     ; 198 			TABLE_TEMPER_EE[0][4]=20;
1125  050f a614          	ld	a,#20
1126  0511 ae0004        	ldw	x,#_TABLE_TEMPER_EE+4
1127  0514 cd0000        	call	c_eewrc
1129                     ; 200 			TABLE_TIME_EE[1][0]=0;
1131  0517 4f            	clr	a
1132  0518 ae0005        	ldw	x,#_TABLE_TIME_EE+5
1133  051b cd0000        	call	c_eewrc
1135                     ; 201 			TABLE_TEMPER_EE[1][0]=20;	
1137  051e a614          	ld	a,#20
1138  0520 ae0005        	ldw	x,#_TABLE_TEMPER_EE+5
1139  0523 cd0000        	call	c_eewrc
1141                     ; 202 			TABLE_TIME_EE[1][1]=36;
1143  0526 a624          	ld	a,#36
1144  0528 ae0006        	ldw	x,#_TABLE_TIME_EE+6
1145  052b cd0000        	call	c_eewrc
1147                     ; 203 			TABLE_TEMPER_EE[1][1]=20;	
1149  052e a614          	ld	a,#20
1150  0530 ae0006        	ldw	x,#_TABLE_TEMPER_EE+6
1151  0533 cd0000        	call	c_eewrc
1153                     ; 204 			TABLE_TIME_EE[1][2]=72;
1155  0536 a648          	ld	a,#72
1156  0538 ae0007        	ldw	x,#_TABLE_TIME_EE+7
1157  053b cd0000        	call	c_eewrc
1159                     ; 205 			TABLE_TEMPER_EE[1][2]=20;	
1161  053e a614          	ld	a,#20
1162  0540 ae0007        	ldw	x,#_TABLE_TEMPER_EE+7
1163  0543 cd0000        	call	c_eewrc
1165                     ; 206 			TABLE_TIME_EE[1][3]=108;
1167  0546 a66c          	ld	a,#108
1168  0548 ae0008        	ldw	x,#_TABLE_TIME_EE+8
1169  054b cd0000        	call	c_eewrc
1171                     ; 207 			TABLE_TEMPER_EE[1][3]=20;	
1173  054e a614          	ld	a,#20
1174  0550 ae0008        	ldw	x,#_TABLE_TEMPER_EE+8
1175  0553 cd0000        	call	c_eewrc
1177                     ; 208 			TABLE_TIME_EE[1][4]=126;
1179  0556 a67e          	ld	a,#126
1180  0558 ae0009        	ldw	x,#_TABLE_TIME_EE+9
1181  055b cd0000        	call	c_eewrc
1183                     ; 209 			TABLE_TEMPER_EE[1][4]=20;	
1185  055e a614          	ld	a,#20
1186  0560 ae0009        	ldw	x,#_TABLE_TEMPER_EE+9
1187  0563 cd0000        	call	c_eewrc
1189                     ; 211 			TABLE_TIME_EE[2][0]=0;
1191  0566 4f            	clr	a
1192  0567 ae000a        	ldw	x,#_TABLE_TIME_EE+10
1193  056a cd0000        	call	c_eewrc
1195                     ; 212 			TABLE_TEMPER_EE[2][0]=20;	
1197  056d a614          	ld	a,#20
1198  056f ae000a        	ldw	x,#_TABLE_TEMPER_EE+10
1199  0572 cd0000        	call	c_eewrc
1201                     ; 213 			TABLE_TIME_EE[2][1]=36;
1203  0575 a624          	ld	a,#36
1204  0577 ae000b        	ldw	x,#_TABLE_TIME_EE+11
1205  057a cd0000        	call	c_eewrc
1207                     ; 214 			TABLE_TEMPER_EE[2][1]=20;	
1209  057d a614          	ld	a,#20
1210  057f ae000b        	ldw	x,#_TABLE_TEMPER_EE+11
1211  0582 cd0000        	call	c_eewrc
1213                     ; 215 			TABLE_TIME_EE[2][2]=72;
1215  0585 a648          	ld	a,#72
1216  0587 ae000c        	ldw	x,#_TABLE_TIME_EE+12
1217  058a cd0000        	call	c_eewrc
1219                     ; 216 			TABLE_TEMPER_EE[2][2]=20;	
1221  058d a614          	ld	a,#20
1222  058f ae000c        	ldw	x,#_TABLE_TEMPER_EE+12
1223  0592 cd0000        	call	c_eewrc
1225                     ; 217 			TABLE_TIME_EE[2][3]=108;
1227  0595 a66c          	ld	a,#108
1228  0597 ae000d        	ldw	x,#_TABLE_TIME_EE+13
1229  059a cd0000        	call	c_eewrc
1231                     ; 218 			TABLE_TEMPER_EE[2][3]=20;	
1233  059d a614          	ld	a,#20
1234  059f ae000d        	ldw	x,#_TABLE_TEMPER_EE+13
1235  05a2 cd0000        	call	c_eewrc
1237                     ; 219 			TABLE_TIME_EE[2][4]=126;
1239  05a5 a67e          	ld	a,#126
1240  05a7 ae000e        	ldw	x,#_TABLE_TIME_EE+14
1241  05aa cd0000        	call	c_eewrc
1243                     ; 220 			TABLE_TEMPER_EE[2][4]=20;
1245  05ad a614          	ld	a,#20
1246  05af ae000e        	ldw	x,#_TABLE_TEMPER_EE+14
1247  05b2 cd0000        	call	c_eewrc
1249                     ; 222 			TABLE_TIME_EE[3][0]=0;
1251  05b5 4f            	clr	a
1252  05b6 ae000f        	ldw	x,#_TABLE_TIME_EE+15
1253  05b9 cd0000        	call	c_eewrc
1255                     ; 223 			TABLE_TEMPER_EE[3][0]=20;	
1257  05bc a614          	ld	a,#20
1258  05be ae000f        	ldw	x,#_TABLE_TEMPER_EE+15
1259  05c1 cd0000        	call	c_eewrc
1261                     ; 224 			TABLE_TIME_EE[3][1]=36;
1263  05c4 a624          	ld	a,#36
1264  05c6 ae0010        	ldw	x,#_TABLE_TIME_EE+16
1265  05c9 cd0000        	call	c_eewrc
1267                     ; 225 			TABLE_TEMPER_EE[3][1]=20;	
1269  05cc a614          	ld	a,#20
1270  05ce ae0010        	ldw	x,#_TABLE_TEMPER_EE+16
1271  05d1 cd0000        	call	c_eewrc
1273                     ; 226 			TABLE_TIME_EE[3][2]=72;
1275  05d4 a648          	ld	a,#72
1276  05d6 ae0011        	ldw	x,#_TABLE_TIME_EE+17
1277  05d9 cd0000        	call	c_eewrc
1279                     ; 227 			TABLE_TEMPER_EE[3][2]=20;	
1281  05dc a614          	ld	a,#20
1282  05de ae0011        	ldw	x,#_TABLE_TEMPER_EE+17
1283  05e1 cd0000        	call	c_eewrc
1285                     ; 228 			TABLE_TIME_EE[3][3]=108;
1287  05e4 a66c          	ld	a,#108
1288  05e6 ae0012        	ldw	x,#_TABLE_TIME_EE+18
1289  05e9 cd0000        	call	c_eewrc
1291                     ; 229 			TABLE_TEMPER_EE[3][3]=20;	
1293  05ec a614          	ld	a,#20
1294  05ee ae0012        	ldw	x,#_TABLE_TEMPER_EE+18
1295  05f1 cd0000        	call	c_eewrc
1297                     ; 230 			TABLE_TIME_EE[3][4]=126;
1299  05f4 a67e          	ld	a,#126
1300  05f6 ae0013        	ldw	x,#_TABLE_TIME_EE+19
1301  05f9 cd0000        	call	c_eewrc
1303                     ; 231 			TABLE_TEMPER_EE[3][4]=20;
1305  05fc a614          	ld	a,#20
1306  05fe ae0013        	ldw	x,#_TABLE_TEMPER_EE+19
1307  0601 cd0000        	call	c_eewrc
1309                     ; 233 			TABLE_TIME_EE[4][0]=0;
1311  0604 4f            	clr	a
1312  0605 ae0014        	ldw	x,#_TABLE_TIME_EE+20
1313  0608 cd0000        	call	c_eewrc
1315                     ; 234 			TABLE_TEMPER_EE[4][0]=20;	
1317  060b a614          	ld	a,#20
1318  060d ae0014        	ldw	x,#_TABLE_TEMPER_EE+20
1319  0610 cd0000        	call	c_eewrc
1321                     ; 235 			TABLE_TIME_EE[4][1]=36;
1323  0613 a624          	ld	a,#36
1324  0615 ae0015        	ldw	x,#_TABLE_TIME_EE+21
1325  0618 cd0000        	call	c_eewrc
1327                     ; 236 			TABLE_TEMPER_EE[4][1]=20;	
1329  061b a614          	ld	a,#20
1330  061d ae0015        	ldw	x,#_TABLE_TEMPER_EE+21
1331  0620 cd0000        	call	c_eewrc
1333                     ; 237 			TABLE_TIME_EE[4][2]=72;
1335  0623 a648          	ld	a,#72
1336  0625 ae0016        	ldw	x,#_TABLE_TIME_EE+22
1337  0628 cd0000        	call	c_eewrc
1339                     ; 238 			TABLE_TEMPER_EE[4][2]=20;	
1341  062b a614          	ld	a,#20
1342  062d ae0016        	ldw	x,#_TABLE_TEMPER_EE+22
1343  0630 cd0000        	call	c_eewrc
1345                     ; 239 			TABLE_TIME_EE[4][3]=108;
1347  0633 a66c          	ld	a,#108
1348  0635 ae0017        	ldw	x,#_TABLE_TIME_EE+23
1349  0638 cd0000        	call	c_eewrc
1351                     ; 240 			TABLE_TEMPER_EE[4][3]=20;	
1353  063b a614          	ld	a,#20
1354  063d ae0017        	ldw	x,#_TABLE_TEMPER_EE+23
1355  0640 cd0000        	call	c_eewrc
1357                     ; 241 			TABLE_TIME_EE[4][4]=126;
1359  0643 a67e          	ld	a,#126
1360  0645 ae0018        	ldw	x,#_TABLE_TIME_EE+24
1361  0648 cd0000        	call	c_eewrc
1363                     ; 242 			TABLE_TEMPER_EE[4][4]=20;
1365  064b a614          	ld	a,#20
1366  064d ae0018        	ldw	x,#_TABLE_TEMPER_EE+24
1367  0650 cd0000        	call	c_eewrc
1369                     ; 244 			TABLE_TIME_EE[5][0]=0;
1371  0653 4f            	clr	a
1372  0654 ae0019        	ldw	x,#_TABLE_TIME_EE+25
1373  0657 cd0000        	call	c_eewrc
1375                     ; 245 			TABLE_TEMPER_EE[5][0]=20;	
1377  065a a614          	ld	a,#20
1378  065c ae0019        	ldw	x,#_TABLE_TEMPER_EE+25
1379  065f cd0000        	call	c_eewrc
1381                     ; 246 			TABLE_TIME_EE[5][1]=36;
1383  0662 a624          	ld	a,#36
1384  0664 ae001a        	ldw	x,#_TABLE_TIME_EE+26
1385  0667 cd0000        	call	c_eewrc
1387                     ; 247 			TABLE_TEMPER_EE[5][1]=20;	
1389  066a a614          	ld	a,#20
1390  066c ae001a        	ldw	x,#_TABLE_TEMPER_EE+26
1391  066f cd0000        	call	c_eewrc
1393                     ; 248 			TABLE_TIME_EE[5][2]=72;
1395  0672 a648          	ld	a,#72
1396  0674 ae001b        	ldw	x,#_TABLE_TIME_EE+27
1397  0677 cd0000        	call	c_eewrc
1399                     ; 249 			TABLE_TEMPER_EE[5][2]=20;	
1401  067a a614          	ld	a,#20
1402  067c ae001b        	ldw	x,#_TABLE_TEMPER_EE+27
1403  067f cd0000        	call	c_eewrc
1405                     ; 250 			TABLE_TIME_EE[5][3]=108;
1407  0682 a66c          	ld	a,#108
1408  0684 ae001c        	ldw	x,#_TABLE_TIME_EE+28
1409  0687 cd0000        	call	c_eewrc
1411                     ; 251 			TABLE_TEMPER_EE[5][3]=20;	
1413  068a a614          	ld	a,#20
1414  068c ae001c        	ldw	x,#_TABLE_TEMPER_EE+28
1415  068f cd0000        	call	c_eewrc
1417                     ; 252 			TABLE_TIME_EE[5][4]=126;
1419  0692 a67e          	ld	a,#126
1420  0694 ae001d        	ldw	x,#_TABLE_TIME_EE+29
1421  0697 cd0000        	call	c_eewrc
1423                     ; 253 			TABLE_TEMPER_EE[5][4]=20;
1425  069a a614          	ld	a,#20
1426  069c ae001d        	ldw	x,#_TABLE_TEMPER_EE+29
1427  069f cd0000        	call	c_eewrc
1429                     ; 255 			TABLE_TIME_EE[6][0]=0;
1431  06a2 4f            	clr	a
1432  06a3 ae001e        	ldw	x,#_TABLE_TIME_EE+30
1433  06a6 cd0000        	call	c_eewrc
1435                     ; 256 			TABLE_TEMPER_EE[6][0]=20;	
1437  06a9 a614          	ld	a,#20
1438  06ab ae001e        	ldw	x,#_TABLE_TEMPER_EE+30
1439  06ae cd0000        	call	c_eewrc
1441                     ; 257 			TABLE_TIME_EE[6][1]=36;
1443  06b1 a624          	ld	a,#36
1444  06b3 ae001f        	ldw	x,#_TABLE_TIME_EE+31
1445  06b6 cd0000        	call	c_eewrc
1447                     ; 258 			TABLE_TEMPER_EE[6][1]=20;	
1449  06b9 a614          	ld	a,#20
1450  06bb ae001f        	ldw	x,#_TABLE_TEMPER_EE+31
1451  06be cd0000        	call	c_eewrc
1453                     ; 259 			TABLE_TIME_EE[6][2]=72;
1455  06c1 a648          	ld	a,#72
1456  06c3 ae0020        	ldw	x,#_TABLE_TIME_EE+32
1457  06c6 cd0000        	call	c_eewrc
1459                     ; 260 			TABLE_TEMPER_EE[6][2]=20;	
1461  06c9 a614          	ld	a,#20
1462  06cb ae0020        	ldw	x,#_TABLE_TEMPER_EE+32
1463  06ce cd0000        	call	c_eewrc
1465                     ; 261 			TABLE_TIME_EE[6][3]=108;
1467  06d1 a66c          	ld	a,#108
1468  06d3 ae0021        	ldw	x,#_TABLE_TIME_EE+33
1469  06d6 cd0000        	call	c_eewrc
1471                     ; 262 			TABLE_TEMPER_EE[6][3]=20;	
1473  06d9 a614          	ld	a,#20
1474  06db ae0021        	ldw	x,#_TABLE_TEMPER_EE+33
1475  06de cd0000        	call	c_eewrc
1477                     ; 263 			TABLE_TIME_EE[6][4]=126;
1479  06e1 a67e          	ld	a,#126
1480  06e3 ae0022        	ldw	x,#_TABLE_TIME_EE+34
1481  06e6 cd0000        	call	c_eewrc
1483                     ; 264 			TABLE_TEMPER_EE[6][4]=20;
1485  06e9 a614          	ld	a,#20
1486  06eb ae0022        	ldw	x,#_TABLE_TEMPER_EE+34
1487  06ee cd0000        	call	c_eewrc
1489                     ; 266 			MODE_EE=1;
1491  06f1 a601          	ld	a,#1
1492  06f3 ae0000        	ldw	x,#_MODE_EE
1493  06f6 cd0000        	call	c_eewrc
1495                     ; 267 			NECC_TEMPER_WATER_EE=50;
1497  06f9 a632          	ld	a,#50
1498  06fb ae0000        	ldw	x,#_NECC_TEMPER_WATER_EE
1499  06fe cd0000        	call	c_eewrc
1501                     ; 268 			NECC_TEMPER_AIR_EE=20;
1503  0701 a614          	ld	a,#20
1504  0703 ae0000        	ldw	x,#_NECC_TEMPER_AIR_EE
1505  0706 cd0000        	call	c_eewrc
1507                     ; 269 			MAX_POWER_EE=3;
1509  0709 a603          	ld	a,#3
1510  070b ae0000        	ldw	x,#_MAX_POWER_EE
1511  070e cd0000        	call	c_eewrc
1513                     ; 270 			outMode=omON;
1515  0711 a601          	ld	a,#1
1516  0713 ae0000        	ldw	x,#_outMode
1517  0716 cd0000        	call	c_eewrc
1519                     ; 272 			memcpy(MAIN_NUMBER,"0000000000",10);
1521  0719 ae000a        	ldw	x,#10
1522  071c               L27:
1523  071c d6000e        	ld	a,(L132-1,x)
1524  071f d7ffff        	ld	(_MAIN_NUMBER-1,x),a
1525  0722 5a            	decw	x
1526  0723 26f7          	jrne	L27
1527                     ; 273 			memcpy(AUTH_NUMBER_1,"0000000000",10);
1529  0725 ae000a        	ldw	x,#10
1530  0728               L47:
1531  0728 d6000e        	ld	a,(L132-1,x)
1532  072b d7ffff        	ld	(_AUTH_NUMBER_1-1,x),a
1533  072e 5a            	decw	x
1534  072f 26f7          	jrne	L47
1535                     ; 274 			memcpy(AUTH_NUMBER_2,"0000000000",10);
1537  0731 ae000a        	ldw	x,#10
1538  0734               L67:
1539  0734 d6000e        	ld	a,(L132-1,x)
1540  0737 d7ffff        	ld	(_AUTH_NUMBER_2-1,x),a
1541  073a 5a            	decw	x
1542  073b 26f7          	jrne	L67
1543                     ; 275 			memcpy(AUTH_NUMBER_3,"0000000000",10);
1545  073d ae000a        	ldw	x,#10
1546  0740               L001:
1547  0740 d6000e        	ld	a,(L132-1,x)
1548  0743 d7ffff        	ld	(_AUTH_NUMBER_3-1,x),a
1549  0746 5a            	decw	x
1550  0747 26f7          	jrne	L001
1551                     ; 276 			AUTH_NUMBER_FLAGS=0x00;
1553  0749 4f            	clr	a
1554  074a ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1555  074d cd0000        	call	c_eewrc
1557                     ; 278 			HUMAN_SET_EE!=0x2222;
1559  0750 ce0000        	ldw	x,_HUMAN_SET_EE
1560  0753 a32222        	cpw	x,#8738
1561  0756 2705          	jreq	L201
1562  0758 ae0001        	ldw	x,#1
1563  075b 2001          	jra	L401
1564  075d               L201:
1565  075d 5f            	clrw	x
1566  075e               L401:
1567  075e 2042          	jra	L101
1568  0760               L322:
1569                     ; 281 	else if(strstr(uart3_an_buffer,"INTER"))
1571  0760 ae0009        	ldw	x,#L732
1572  0763 89            	pushw	x
1573  0764 ae0001        	ldw	x,#_uart3_an_buffer
1574  0767 cd0000        	call	_strstr
1576  076a 5b02          	addw	sp,#2
1577  076c a30000        	cpw	x,#0
1578  076f 2714          	jreq	L532
1579                     ; 283 		if(ind!=iInterf)
1581  0771 b600          	ld	a,_a_ind
1582  0773 a10f          	cp	a,#15
1583  0775 272b          	jreq	L101
1584                     ; 285 			tree_up(iInterf,0,0,0);
1586  0777 4b00          	push	#0
1587  0779 4b00          	push	#0
1588  077b 5f            	clrw	x
1589  077c a60f          	ld	a,#15
1590  077e 95            	ld	xh,a
1591  077f cd0000        	call	_tree_up
1593  0782 85            	popw	x
1594  0783 201d          	jra	L101
1595  0785               L532:
1596                     ; 288 	else if(strstr(uart3_an_buffer,"INTE_RET"))
1598  0785 ae0000        	ldw	x,#L742
1599  0788 89            	pushw	x
1600  0789 ae0001        	ldw	x,#_uart3_an_buffer
1601  078c cd0000        	call	_strstr
1603  078f 5b02          	addw	sp,#2
1604  0791 a30000        	cpw	x,#0
1605  0794 270c          	jreq	L101
1606                     ; 290 		if(ind==iInterf)
1608  0796 b600          	ld	a,_a_ind
1609  0798 a10f          	cp	a,#15
1610  079a 2606          	jrne	L101
1611                     ; 292 			tree_down(0,0);
1613  079c 5f            	clrw	x
1614  079d 4f            	clr	a
1615  079e 95            	ld	xh,a
1616  079f cd0000        	call	_tree_down
1618  07a2               L101:
1619                     ; 296 	enableInterrupts();
1622  07a2 9a            rim
1624                     ; 297 }
1628  07a3 5b0e          	addw	sp,#14
1629  07a5 81            	ret
1721                     	switch	.ubsct
1722  0000               _digi:
1723  0000 0000          	ds.b	2
1724                     	xdef	_digi
1725  0002               _ptr2:
1726  0002 0000          	ds.b	2
1727                     	xdef	_ptr2
1728  0004               _ptr1:
1729  0004 0000          	ds.b	2
1730                     	xdef	_ptr1
1731                     	xref	_atoi
1732                     	xref	_memcmp
1733                     	xref	_strstr
1734                     	xref	_gran_ring_char
1735                     	xref	_gran_char
1736                     	xref	_tree_up
1737                     	xref	_tree_down
1738                     	xref	__ds1307_write_byte
1739                     	xdef	_uart3_in_an
1740                     	xdef	f_UART3RxInterrupt
1741                     	xdef	_uart3_init
1742  0006               _uart3_plazma:
1743  0006 00            	ds.b	1
1744                     	xdef	_uart3_plazma
1745                     	switch	.bss
1746  0000               _bRXIN3:
1747  0000 00            	ds.b	1
1748                     	xdef	_bRXIN3
1749  0001               _uart3_an_buffer:
1750  0001 000000000000  	ds.b	100
1751                     	xdef	_uart3_an_buffer
1752  0065               _rx_wr_index3:
1753  0065 0000          	ds.b	2
1754                     	xdef	_rx_wr_index3
1755  0067               _rxBuffer3:
1756  0067 000000000000  	ds.b	64
1757                     	xdef	_rxBuffer3
1758                     	xref.b	_cntAirSensorLineErrorHi
1759                     	xref.b	_cntAirSensorLineErrorLo
1760                     	xref.b	_airSensorErrorStat
1761                     	xref.b	_temperOfAir
1762                     	xref	_optr_kontr_cnt
1763                     	xref	_optr_stat
1764                     	xref.b	_a_ind
1765                     	xref	_AUTH_NUMBER_FLAGS
1766                     	xref	_AUTH_NUMBER_3
1767                     	xref	_AUTH_NUMBER_2
1768                     	xref	_TABLE_TEMPER_EE
1769                     	xref	_MAX_POWER_EE
1770                     	xref	_MODE_EE
1771                     	xref	_NECC_TEMPER_WATER_EE
1772                     	xref	_NECC_TEMPER_AIR_EE
1773                     	xref	_TABLE_TIME_EE
1774                     	xref	_HUMAN_SET_EE
1775                     	xref	_outMode
1776                     	xref	_AUTH_NUMBER_1
1777                     	xref	_MAIN_NUMBER
1778                     .const:	section	.text
1779  0000               L742:
1780  0000 494e54455f52  	dc.b	"INTE_RET",0
1781  0009               L732:
1782  0009 494e54455200  	dc.b	"INTER",0
1783  000f               L132:
1784  000f 303030303030  	dc.b	"0000000000",0
1785  001a               L522:
1786  001a 44454641554c  	dc.b	"DEFAULT",0
1787  0022               L712:
1788  0022 393133393239  	dc.b	"9139294352",0
1789  002d               L312:
1790  002d 50524f424553  	dc.b	"PROBESMS",0
1791  0036               L502:
1792  0036 54494d455354  	dc.b	"TIMESTART",0
1793  0040               L571:
1794  0040 41495f524554  	dc.b	"AI_RET",0
1795  0047               L561:
1796  0047 41495200      	dc.b	"AIR",0
1797  004b               L551:
1798  004b 5741545f5245  	dc.b	"WAT_RET",0
1799  0053               L541:
1800  0053 574154455200  	dc.b	"WATER",0
1801  0059               L731:
1802  0059 4441544100    	dc.b	"DATA",0
1803  005e               L131:
1804  005e 4f50545200    	dc.b	"OPTR",0
1805  0063               L321:
1806  0063 4552524f5248  	dc.b	"ERRORHI",0
1807  006b               L511:
1808  006b 4552524f524c  	dc.b	"ERRORLO",0
1809  0073               L701:
1810  0073 43524300      	dc.b	"CRC",0
1811  0077               L501:
1812  0077 4f4b00        	dc.b	"OK",0
1813                     	xref.b	c_x
1833                     	xref	c_eewrw
1834                     	xref	c_eewrc
1835                     	xref	c_idiv
1836                     	end
