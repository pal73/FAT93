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
 303                     ; 65 void uart3_in_an (void)
 303                     ; 66 {
 305                     	switch	.text
 306  008b               _uart3_in_an:
 308  008b 520e          	subw	sp,#14
 309       0000000e      OFST:	set	14
 312                     ; 69 	disableInterrupts();
 315  008d 9b            sim
 317                     ; 70 if(bRXIN3)
 320  008e 725d0000      	tnz	_bRXIN3
 321  0092 2603          	jrne	L601
 322  0094 cc07b1        	jp	L101
 323  0097               L601:
 324                     ; 72 	bRXIN3=0;
 326  0097 725f0000      	clr	_bRXIN3
 327                     ; 74 	if(strstr(uart3_an_buffer,"OK"))
 329  009b ae0098        	ldw	x,#L501
 330  009e 89            	pushw	x
 331  009f ae0001        	ldw	x,#_uart3_an_buffer
 332  00a2 cd0000        	call	_strstr
 334  00a5 5b02          	addw	sp,#2
 335  00a7 a30000        	cpw	x,#0
 336  00aa 2747          	jreq	L301
 337                     ; 76 		ptr1=strstr(uart3_an_buffer,"OK");	
 339  00ac ae0098        	ldw	x,#L501
 340  00af 89            	pushw	x
 341  00b0 ae0001        	ldw	x,#_uart3_an_buffer
 342  00b3 cd0000        	call	_strstr
 344  00b6 5b02          	addw	sp,#2
 345  00b8 bf04          	ldw	_ptr1,x
 346                     ; 77 		ptr2=strstr(uart3_an_buffer,"CRC");
 348  00ba ae0094        	ldw	x,#L701
 349  00bd 89            	pushw	x
 350  00be ae0001        	ldw	x,#_uart3_an_buffer
 351  00c1 cd0000        	call	_strstr
 353  00c4 5b02          	addw	sp,#2
 354  00c6 bf02          	ldw	_ptr2,x
 355                     ; 79 		memcpy(digi,ptr1+2,ptr2-ptr1-2);
 357  00c8 be04          	ldw	x,_ptr1
 358  00ca 5c            	incw	x
 359  00cb 5c            	incw	x
 360  00cc bf00          	ldw	c_x,x
 361  00ce be02          	ldw	x,_ptr2
 362  00d0 72b00004      	subw	x,_ptr1
 363  00d4 5a            	decw	x
 364  00d5 5a            	decw	x
 365  00d6 5d            	tnzw	x
 366  00d7 270a          	jreq	L02
 367  00d9               L22:
 368  00d9 5a            	decw	x
 369  00da 92d600        	ld	a,([c_x.w],x)
 370  00dd 92d700        	ld	([_digi.w],x),a
 371  00e0 5d            	tnzw	x
 372  00e1 26f6          	jrne	L22
 373  00e3               L02:
 374                     ; 81 		temperOfAir=(signed char)atoi(digi);
 376  00e3 be00          	ldw	x,_digi
 377  00e5 cd0000        	call	_atoi
 379  00e8 9f            	ld	a,xl
 380  00e9 b700          	ld	_temperOfAir,a
 381                     ; 82 		airSensorErrorStat=taesNORM;
 383  00eb 35550000      	mov	_airSensorErrorStat,#85
 385  00ef acb107b1      	jpf	L101
 386  00f3               L301:
 387                     ; 85 	else if(strstr(uart3_an_buffer,"ERRORLO"))
 389  00f3 ae008c        	ldw	x,#L511
 390  00f6 89            	pushw	x
 391  00f7 ae0001        	ldw	x,#_uart3_an_buffer
 392  00fa cd0000        	call	_strstr
 394  00fd 5b02          	addw	sp,#2
 395  00ff a30000        	cpw	x,#0
 396  0102 2706          	jreq	L311
 397                     ; 87 		airSensorErrorStat=taesLO;
 399  0104 3f00          	clr	_airSensorErrorStat
 401  0106 acb107b1      	jpf	L101
 402  010a               L311:
 403                     ; 89 	else if(strstr(uart3_an_buffer,"ERRORHI"))
 405  010a ae0084        	ldw	x,#L321
 406  010d 89            	pushw	x
 407  010e ae0001        	ldw	x,#_uart3_an_buffer
 408  0111 cd0000        	call	_strstr
 410  0114 5b02          	addw	sp,#2
 411  0116 a30000        	cpw	x,#0
 412  0119 2708          	jreq	L121
 413                     ; 91 		airSensorErrorStat=taesHI;
 415  011b 35010000      	mov	_airSensorErrorStat,#1
 417  011f acb107b1      	jpf	L101
 418  0123               L121:
 419                     ; 93 	else if(strstr(uart3_an_buffer,"OPTR"))
 421  0123 ae007f        	ldw	x,#L131
 422  0126 89            	pushw	x
 423  0127 ae0001        	ldw	x,#_uart3_an_buffer
 424  012a cd0000        	call	_strstr
 426  012d 5b02          	addw	sp,#2
 427  012f a30000        	cpw	x,#0
 428  0132 274d          	jreq	L721
 429                     ; 95 		ptr1=strstr(uart3_an_buffer,"OPTR");	
 431  0134 ae007f        	ldw	x,#L131
 432  0137 89            	pushw	x
 433  0138 ae0001        	ldw	x,#_uart3_an_buffer
 434  013b cd0000        	call	_strstr
 436  013e 5b02          	addw	sp,#2
 437  0140 bf04          	ldw	_ptr1,x
 438                     ; 96 		ptr2=strstr(uart3_an_buffer,"CRC");
 440  0142 ae0094        	ldw	x,#L701
 441  0145 89            	pushw	x
 442  0146 ae0001        	ldw	x,#_uart3_an_buffer
 443  0149 cd0000        	call	_strstr
 445  014c 5b02          	addw	sp,#2
 446  014e bf02          	ldw	_ptr2,x
 447                     ; 97 		memcpy(digi,ptr1+4,ptr2-ptr1-4);
 449  0150 be04          	ldw	x,_ptr1
 450  0152 1c0004        	addw	x,#4
 451  0155 bf00          	ldw	c_x,x
 452  0157 be02          	ldw	x,_ptr2
 453  0159 72b00004      	subw	x,_ptr1
 454  015d 1d0004        	subw	x,#4
 455  0160 5d            	tnzw	x
 456  0161 270a          	jreq	L42
 457  0163               L62:
 458  0163 5a            	decw	x
 459  0164 92d600        	ld	a,([c_x.w],x)
 460  0167 92d700        	ld	([_digi.w],x),a
 461  016a 5d            	tnzw	x
 462  016b 26f6          	jrne	L62
 463  016d               L42:
 464                     ; 98 		tempIN[0]=(int)atoi(digi);
 466  016d be00          	ldw	x,_digi
 467  016f cd0000        	call	_atoi
 469  0172 1f03          	ldw	(OFST-11,sp),x
 470                     ; 102 		optr_stat=(char)tempIN[0];
 472  0174 7b04          	ld	a,(OFST-10,sp)
 473  0176 c70000        	ld	_optr_stat,a
 474                     ; 103 		optr_kontr_cnt=50;
 476  0179 35320000      	mov	_optr_kontr_cnt,#50
 478  017d acb107b1      	jpf	L101
 479  0181               L721:
 480                     ; 105 	else if(strstr(uart3_an_buffer,"DATA"))
 482  0181 ae007a        	ldw	x,#L731
 483  0184 89            	pushw	x
 484  0185 ae0001        	ldw	x,#_uart3_an_buffer
 485  0188 cd0000        	call	_strstr
 487  018b 5b02          	addw	sp,#2
 488  018d a30000        	cpw	x,#0
 489  0190 2603          	jrne	L011
 490  0192 cc03a6        	jp	L531
 491  0195               L011:
 492                     ; 108 		ptr1=strstr(uart3_an_buffer,"DATA");	
 494  0195 ae007a        	ldw	x,#L731
 495  0198 89            	pushw	x
 496  0199 ae0001        	ldw	x,#_uart3_an_buffer
 497  019c cd0000        	call	_strstr
 499  019f 5b02          	addw	sp,#2
 500  01a1 bf04          	ldw	_ptr1,x
 501                     ; 109 		ptr2=strstr(uart3_an_buffer,"CRC");
 503  01a3 ae0094        	ldw	x,#L701
 504  01a6 89            	pushw	x
 505  01a7 ae0001        	ldw	x,#_uart3_an_buffer
 506  01aa cd0000        	call	_strstr
 508  01ad 5b02          	addw	sp,#2
 509  01af bf02          	ldw	_ptr2,x
 510                     ; 110 		memcpy(digi,ptr1+4,2);
 512  01b1 be04          	ldw	x,_ptr1
 513  01b3 1c0004        	addw	x,#4
 514  01b6 bf00          	ldw	c_x,x
 515  01b8 ae0002        	ldw	x,#2
 516  01bb               L03:
 517  01bb 5a            	decw	x
 518  01bc 92d600        	ld	a,([c_x.w],x)
 519  01bf 92d700        	ld	([_digi.w],x),a
 520  01c2 5d            	tnzw	x
 521  01c3 26f6          	jrne	L03
 522                     ; 111 		temp=(char)atoi(digi);
 524  01c5 be00          	ldw	x,_digi
 525  01c7 cd0000        	call	_atoi
 527  01ca 9f            	ld	a,xl
 528  01cb 6b02          	ld	(OFST-12,sp),a
 529                     ; 112 		gran_char(&temp,0,99);
 531  01cd 4b63          	push	#99
 532  01cf 4b00          	push	#0
 533  01d1 96            	ldw	x,sp
 534  01d2 1c0004        	addw	x,#OFST-10
 535  01d5 cd0000        	call	_gran_char
 537  01d8 85            	popw	x
 538                     ; 113 		_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
 540  01d9 7b02          	ld	a,(OFST-12,sp)
 541  01db ae000a        	ldw	x,#10
 542  01de 51            	exgw	x,y
 543  01df 5f            	clrw	x
 544  01e0 4d            	tnz	a
 545  01e1 2a01          	jrpl	L23
 546  01e3 5a            	decw	x
 547  01e4               L23:
 548  01e4 02            	rlwa	x,a
 549  01e5 cd0000        	call	c_idiv
 551  01e8 909f          	ld	a,yl
 552  01ea 6b01          	ld	(OFST-13,sp),a
 553  01ec 7b02          	ld	a,(OFST-12,sp)
 554  01ee ae000a        	ldw	x,#10
 555  01f1 51            	exgw	x,y
 556  01f2 5f            	clrw	x
 557  01f3 4d            	tnz	a
 558  01f4 2a01          	jrpl	L43
 559  01f6 5a            	decw	x
 560  01f7               L43:
 561  01f7 02            	rlwa	x,a
 562  01f8 cd0000        	call	c_idiv
 564  01fb 9f            	ld	a,xl
 565  01fc 4e            	swap	a
 566  01fd a4f0          	and	a,#240
 567  01ff 1b01          	add	a,(OFST-13,sp)
 568  0201 97            	ld	xl,a
 569  0202 a606          	ld	a,#6
 570  0204 95            	ld	xh,a
 571  0205 cd0000        	call	__ds1307_write_byte
 573                     ; 114 		memcpy(digi,ptr1+6,2);
 575  0208 be04          	ldw	x,_ptr1
 576  020a 1c0006        	addw	x,#6
 577  020d bf00          	ldw	c_x,x
 578  020f ae0002        	ldw	x,#2
 579  0212               L63:
 580  0212 5a            	decw	x
 581  0213 92d600        	ld	a,([c_x.w],x)
 582  0216 92d700        	ld	([_digi.w],x),a
 583  0219 5d            	tnzw	x
 584  021a 26f6          	jrne	L63
 585                     ; 115 		temp=(char)atoi(digi);
 587  021c be00          	ldw	x,_digi
 588  021e cd0000        	call	_atoi
 590  0221 9f            	ld	a,xl
 591  0222 6b02          	ld	(OFST-12,sp),a
 592                     ; 116 		gran_ring_char(&temp,1,12);
 594  0224 4b0c          	push	#12
 595  0226 4b01          	push	#1
 596  0228 96            	ldw	x,sp
 597  0229 1c0004        	addw	x,#OFST-10
 598  022c cd0000        	call	_gran_ring_char
 600  022f 85            	popw	x
 601                     ; 117 		_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));	
 603  0230 7b02          	ld	a,(OFST-12,sp)
 604  0232 ae000a        	ldw	x,#10
 605  0235 51            	exgw	x,y
 606  0236 5f            	clrw	x
 607  0237 4d            	tnz	a
 608  0238 2a01          	jrpl	L04
 609  023a 5a            	decw	x
 610  023b               L04:
 611  023b 02            	rlwa	x,a
 612  023c cd0000        	call	c_idiv
 614  023f 909f          	ld	a,yl
 615  0241 6b01          	ld	(OFST-13,sp),a
 616  0243 7b02          	ld	a,(OFST-12,sp)
 617  0245 ae000a        	ldw	x,#10
 618  0248 51            	exgw	x,y
 619  0249 5f            	clrw	x
 620  024a 4d            	tnz	a
 621  024b 2a01          	jrpl	L24
 622  024d 5a            	decw	x
 623  024e               L24:
 624  024e 02            	rlwa	x,a
 625  024f cd0000        	call	c_idiv
 627  0252 9f            	ld	a,xl
 628  0253 4e            	swap	a
 629  0254 a4f0          	and	a,#240
 630  0256 1b01          	add	a,(OFST-13,sp)
 631  0258 97            	ld	xl,a
 632  0259 a605          	ld	a,#5
 633  025b 95            	ld	xh,a
 634  025c cd0000        	call	__ds1307_write_byte
 636                     ; 118 		memcpy(digi,ptr1+8,2);
 638  025f be04          	ldw	x,_ptr1
 639  0261 1c0008        	addw	x,#8
 640  0264 bf00          	ldw	c_x,x
 641  0266 ae0002        	ldw	x,#2
 642  0269               L44:
 643  0269 5a            	decw	x
 644  026a 92d600        	ld	a,([c_x.w],x)
 645  026d 92d700        	ld	([_digi.w],x),a
 646  0270 5d            	tnzw	x
 647  0271 26f6          	jrne	L44
 648                     ; 119 		temp=(char)atoi(digi);
 650  0273 be00          	ldw	x,_digi
 651  0275 cd0000        	call	_atoi
 653  0278 9f            	ld	a,xl
 654  0279 6b02          	ld	(OFST-12,sp),a
 655                     ; 120 		gran_ring_char(&temp,1,31);
 657  027b 4b1f          	push	#31
 658  027d 4b01          	push	#1
 659  027f 96            	ldw	x,sp
 660  0280 1c0004        	addw	x,#OFST-10
 661  0283 cd0000        	call	_gran_ring_char
 663  0286 85            	popw	x
 664                     ; 121 		_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
 666  0287 7b02          	ld	a,(OFST-12,sp)
 667  0289 ae000a        	ldw	x,#10
 668  028c 51            	exgw	x,y
 669  028d 5f            	clrw	x
 670  028e 4d            	tnz	a
 671  028f 2a01          	jrpl	L64
 672  0291 5a            	decw	x
 673  0292               L64:
 674  0292 02            	rlwa	x,a
 675  0293 cd0000        	call	c_idiv
 677  0296 909f          	ld	a,yl
 678  0298 6b01          	ld	(OFST-13,sp),a
 679  029a 7b02          	ld	a,(OFST-12,sp)
 680  029c ae000a        	ldw	x,#10
 681  029f 51            	exgw	x,y
 682  02a0 5f            	clrw	x
 683  02a1 4d            	tnz	a
 684  02a2 2a01          	jrpl	L05
 685  02a4 5a            	decw	x
 686  02a5               L05:
 687  02a5 02            	rlwa	x,a
 688  02a6 cd0000        	call	c_idiv
 690  02a9 9f            	ld	a,xl
 691  02aa 4e            	swap	a
 692  02ab a4f0          	and	a,#240
 693  02ad 1b01          	add	a,(OFST-13,sp)
 694  02af 97            	ld	xl,a
 695  02b0 a604          	ld	a,#4
 696  02b2 95            	ld	xh,a
 697  02b3 cd0000        	call	__ds1307_write_byte
 699                     ; 122 		memcpy(digi,ptr1+10,2);
 701  02b6 be04          	ldw	x,_ptr1
 702  02b8 1c000a        	addw	x,#10
 703  02bb bf00          	ldw	c_x,x
 704  02bd ae0002        	ldw	x,#2
 705  02c0               L25:
 706  02c0 5a            	decw	x
 707  02c1 92d600        	ld	a,([c_x.w],x)
 708  02c4 92d700        	ld	([_digi.w],x),a
 709  02c7 5d            	tnzw	x
 710  02c8 26f6          	jrne	L25
 711                     ; 123 		temp=(char)atoi(digi);
 713  02ca be00          	ldw	x,_digi
 714  02cc cd0000        	call	_atoi
 716  02cf 9f            	ld	a,xl
 717  02d0 6b02          	ld	(OFST-12,sp),a
 718                     ; 124 		gran_ring_char(&temp,1,7);
 720  02d2 4b07          	push	#7
 721  02d4 4b01          	push	#1
 722  02d6 96            	ldw	x,sp
 723  02d7 1c0004        	addw	x,#OFST-10
 724  02da cd0000        	call	_gran_ring_char
 726  02dd 85            	popw	x
 727                     ; 125 		_ds1307_write_byte(3,temp&0x07);
 729  02de 7b02          	ld	a,(OFST-12,sp)
 730  02e0 a407          	and	a,#7
 731  02e2 97            	ld	xl,a
 732  02e3 a603          	ld	a,#3
 733  02e5 95            	ld	xh,a
 734  02e6 cd0000        	call	__ds1307_write_byte
 736                     ; 126 		memcpy(digi,ptr1+12,2);
 738  02e9 be04          	ldw	x,_ptr1
 739  02eb 1c000c        	addw	x,#12
 740  02ee bf00          	ldw	c_x,x
 741  02f0 ae0002        	ldw	x,#2
 742  02f3               L45:
 743  02f3 5a            	decw	x
 744  02f4 92d600        	ld	a,([c_x.w],x)
 745  02f7 92d700        	ld	([_digi.w],x),a
 746  02fa 5d            	tnzw	x
 747  02fb 26f6          	jrne	L45
 748                     ; 127 		temp=(char)atoi(digi);
 750  02fd be00          	ldw	x,_digi
 751  02ff cd0000        	call	_atoi
 753  0302 9f            	ld	a,xl
 754  0303 6b02          	ld	(OFST-12,sp),a
 755                     ; 128 		gran_ring_char(&temp,0,23);
 757  0305 4b17          	push	#23
 758  0307 4b00          	push	#0
 759  0309 96            	ldw	x,sp
 760  030a 1c0004        	addw	x,#OFST-10
 761  030d cd0000        	call	_gran_ring_char
 763  0310 85            	popw	x
 764                     ; 129 		_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);		
 766  0311 7b02          	ld	a,(OFST-12,sp)
 767  0313 ae000a        	ldw	x,#10
 768  0316 51            	exgw	x,y
 769  0317 5f            	clrw	x
 770  0318 4d            	tnz	a
 771  0319 2a01          	jrpl	L65
 772  031b 5a            	decw	x
 773  031c               L65:
 774  031c 02            	rlwa	x,a
 775  031d cd0000        	call	c_idiv
 777  0320 909f          	ld	a,yl
 778  0322 6b01          	ld	(OFST-13,sp),a
 779  0324 7b02          	ld	a,(OFST-12,sp)
 780  0326 ae000a        	ldw	x,#10
 781  0329 51            	exgw	x,y
 782  032a 5f            	clrw	x
 783  032b 4d            	tnz	a
 784  032c 2a01          	jrpl	L06
 785  032e 5a            	decw	x
 786  032f               L06:
 787  032f 02            	rlwa	x,a
 788  0330 cd0000        	call	c_idiv
 790  0333 9f            	ld	a,xl
 791  0334 4e            	swap	a
 792  0335 a4f0          	and	a,#240
 793  0337 1b01          	add	a,(OFST-13,sp)
 794  0339 a4bf          	and	a,#191
 795  033b 97            	ld	xl,a
 796  033c a602          	ld	a,#2
 797  033e 95            	ld	xh,a
 798  033f cd0000        	call	__ds1307_write_byte
 800                     ; 130 		memcpy(digi,ptr1+14,2);
 802  0342 be04          	ldw	x,_ptr1
 803  0344 1c000e        	addw	x,#14
 804  0347 bf00          	ldw	c_x,x
 805  0349 ae0002        	ldw	x,#2
 806  034c               L26:
 807  034c 5a            	decw	x
 808  034d 92d600        	ld	a,([c_x.w],x)
 809  0350 92d700        	ld	([_digi.w],x),a
 810  0353 5d            	tnzw	x
 811  0354 26f6          	jrne	L26
 812                     ; 131 		temp=(char)atoi(digi);
 814  0356 be00          	ldw	x,_digi
 815  0358 cd0000        	call	_atoi
 817  035b 9f            	ld	a,xl
 818  035c 6b02          	ld	(OFST-12,sp),a
 819                     ; 132 		gran_ring_char(&temp,0,59);
 821  035e 4b3b          	push	#59
 822  0360 4b00          	push	#0
 823  0362 96            	ldw	x,sp
 824  0363 1c0004        	addw	x,#OFST-10
 825  0366 cd0000        	call	_gran_ring_char
 827  0369 85            	popw	x
 828                     ; 133 		_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));		
 830  036a 7b02          	ld	a,(OFST-12,sp)
 831  036c ae000a        	ldw	x,#10
 832  036f 51            	exgw	x,y
 833  0370 5f            	clrw	x
 834  0371 4d            	tnz	a
 835  0372 2a01          	jrpl	L46
 836  0374 5a            	decw	x
 837  0375               L46:
 838  0375 02            	rlwa	x,a
 839  0376 cd0000        	call	c_idiv
 841  0379 909f          	ld	a,yl
 842  037b 6b01          	ld	(OFST-13,sp),a
 843  037d 7b02          	ld	a,(OFST-12,sp)
 844  037f ae000a        	ldw	x,#10
 845  0382 51            	exgw	x,y
 846  0383 5f            	clrw	x
 847  0384 4d            	tnz	a
 848  0385 2a01          	jrpl	L66
 849  0387 5a            	decw	x
 850  0388               L66:
 851  0388 02            	rlwa	x,a
 852  0389 cd0000        	call	c_idiv
 854  038c 9f            	ld	a,xl
 855  038d 4e            	swap	a
 856  038e a4f0          	and	a,#240
 857  0390 1b01          	add	a,(OFST-13,sp)
 858  0392 97            	ld	xl,a
 859  0393 a601          	ld	a,#1
 860  0395 95            	ld	xh,a
 861  0396 cd0000        	call	__ds1307_write_byte
 863                     ; 135 		optr_stat=(char)tempIN[0];
 865  0399 7b04          	ld	a,(OFST-10,sp)
 866  039b c70000        	ld	_optr_stat,a
 867                     ; 136 		optr_kontr_cnt=50;
 869  039e 35320000      	mov	_optr_kontr_cnt,#50
 871  03a2 acb107b1      	jpf	L101
 872  03a6               L531:
 873                     ; 139 	else if(strstr(uart3_an_buffer,"WATER"))
 875  03a6 ae0074        	ldw	x,#L541
 876  03a9 89            	pushw	x
 877  03aa ae0001        	ldw	x,#_uart3_an_buffer
 878  03ad cd0000        	call	_strstr
 880  03b0 5b02          	addw	sp,#2
 881  03b2 a30000        	cpw	x,#0
 882  03b5 2719          	jreq	L341
 883                     ; 141 		if(ind!=iWater)
 885  03b7 b600          	ld	a,_a_ind
 886  03b9 a10d          	cp	a,#13
 887  03bb 2603          	jrne	L211
 888  03bd cc07b1        	jp	L101
 889  03c0               L211:
 890                     ; 143 			tree_up(iWater,0,0,0);
 892  03c0 4b00          	push	#0
 893  03c2 4b00          	push	#0
 894  03c4 5f            	clrw	x
 895  03c5 a60d          	ld	a,#13
 896  03c7 95            	ld	xh,a
 897  03c8 cd0000        	call	_tree_up
 899  03cb 85            	popw	x
 900  03cc acb107b1      	jpf	L101
 901  03d0               L341:
 902                     ; 146 	else if(strstr(uart3_an_buffer,"WAT_RET"))
 904  03d0 ae006c        	ldw	x,#L551
 905  03d3 89            	pushw	x
 906  03d4 ae0001        	ldw	x,#_uart3_an_buffer
 907  03d7 cd0000        	call	_strstr
 909  03da 5b02          	addw	sp,#2
 910  03dc a30000        	cpw	x,#0
 911  03df 2713          	jreq	L351
 912                     ; 148 		if(ind==iWater)
 914  03e1 b600          	ld	a,_a_ind
 915  03e3 a10d          	cp	a,#13
 916  03e5 2703          	jreq	L411
 917  03e7 cc07b1        	jp	L101
 918  03ea               L411:
 919                     ; 150 			tree_down(0,0);
 921  03ea 5f            	clrw	x
 922  03eb 4f            	clr	a
 923  03ec 95            	ld	xh,a
 924  03ed cd0000        	call	_tree_down
 926  03f0 acb107b1      	jpf	L101
 927  03f4               L351:
 928                     ; 154 	else if(strstr(uart3_an_buffer,"AIR"))
 930  03f4 ae0068        	ldw	x,#L561
 931  03f7 89            	pushw	x
 932  03f8 ae0001        	ldw	x,#_uart3_an_buffer
 933  03fb cd0000        	call	_strstr
 935  03fe 5b02          	addw	sp,#2
 936  0400 a30000        	cpw	x,#0
 937  0403 2719          	jreq	L361
 938                     ; 156 		if(ind!=iAir)
 940  0405 b600          	ld	a,_a_ind
 941  0407 a10e          	cp	a,#14
 942  0409 2603          	jrne	L611
 943  040b cc07b1        	jp	L101
 944  040e               L611:
 945                     ; 158 			tree_up(iAir,0,0,0);
 947  040e 4b00          	push	#0
 948  0410 4b00          	push	#0
 949  0412 5f            	clrw	x
 950  0413 a60e          	ld	a,#14
 951  0415 95            	ld	xh,a
 952  0416 cd0000        	call	_tree_up
 954  0419 85            	popw	x
 955  041a acb107b1      	jpf	L101
 956  041e               L361:
 957                     ; 161 	else if(strstr(uart3_an_buffer,"AI_RET"))
 959  041e ae0061        	ldw	x,#L571
 960  0421 89            	pushw	x
 961  0422 ae0001        	ldw	x,#_uart3_an_buffer
 962  0425 cd0000        	call	_strstr
 964  0428 5b02          	addw	sp,#2
 965  042a a30000        	cpw	x,#0
 966  042d 2713          	jreq	L371
 967                     ; 163 		if(ind==iAir)
 969  042f b600          	ld	a,_a_ind
 970  0431 a10e          	cp	a,#14
 971  0433 2703          	jreq	L021
 972  0435 cc07b1        	jp	L101
 973  0438               L021:
 974                     ; 165 			tree_down(0,0);
 976  0438 5f            	clrw	x
 977  0439 4f            	clr	a
 978  043a 95            	ld	xh,a
 979  043b cd0000        	call	_tree_down
 981  043e acb107b1      	jpf	L101
 982  0442               L371:
 983                     ; 169 	else if(strstr(uart3_an_buffer,"TIMESTART"))
 985  0442 ae0057        	ldw	x,#L502
 986  0445 89            	pushw	x
 987  0446 ae0001        	ldw	x,#_uart3_an_buffer
 988  0449 cd0000        	call	_strstr
 990  044c 5b02          	addw	sp,#2
 991  044e a30000        	cpw	x,#0
 992  0451 270a          	jreq	L302
 993                     ; 171 		_ds1307_write_byte(0,0);
 995  0453 5f            	clrw	x
 996  0454 4f            	clr	a
 997  0455 95            	ld	xh,a
 998  0456 cd0000        	call	__ds1307_write_byte
1001  0459 acb107b1      	jpf	L101
1002  045d               L302:
1003                     ; 174 	else if(strstr(uart3_an_buffer,"PROBESMS"))
1005  045d ae004e        	ldw	x,#L312
1006  0460 89            	pushw	x
1007  0461 ae0001        	ldw	x,#_uart3_an_buffer
1008  0464 cd0000        	call	_strstr
1010  0467 5b02          	addw	sp,#2
1011  0469 a30000        	cpw	x,#0
1012  046c 274a          	jreq	L112
1013                     ; 176 		if(memcmp(MAIN_NUMBER,"9139294352",10)!=0)
1015  046e ae000a        	ldw	x,#10
1016  0471 89            	pushw	x
1017  0472 ae0043        	ldw	x,#L712
1018  0475 89            	pushw	x
1019  0476 ae0000        	ldw	x,#_MAIN_NUMBER
1020  0479 cd0000        	call	_memcmp
1022  047c 5b04          	addw	sp,#4
1023  047e a30000        	cpw	x,#0
1024  0481 2603          	jrne	L221
1025  0483 cc07b1        	jp	L101
1026  0486               L221:
1027                     ; 178 			memcpy(MAIN_NUMBER,"9139294352",10);
1029  0486 ae000a        	ldw	x,#10
1030  0489               L07:
1031  0489 d60042        	ld	a,(L712-1,x)
1032  048c d7ffff        	ld	(_MAIN_NUMBER-1,x),a
1033  048f 5a            	decw	x
1034  0490 26f7          	jrne	L07
1035                     ; 179 			AUTH_NUMBER_FLAGS=0x01;
1037  0492 a601          	ld	a,#1
1038  0494 ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1039  0497 cd0000        	call	c_eewrc
1041                     ; 180 			modem_send_sms('p',MAIN_NUMBER,"Ваш номер установлен как главный");
1043  049a ae0022        	ldw	x,#L122
1044  049d 89            	pushw	x
1045  049e ae0000        	ldw	x,#_MAIN_NUMBER
1046  04a1 89            	pushw	x
1047  04a2 a670          	ld	a,#112
1048  04a4 cd0000        	call	_modem_send_sms
1050  04a7 5b04          	addw	sp,#4
1051                     ; 181 			HUMAN_SET_EE=1;
1053  04a9 ae0001        	ldw	x,#1
1054  04ac 89            	pushw	x
1055  04ad ae0000        	ldw	x,#_HUMAN_SET_EE
1056  04b0 cd0000        	call	c_eewrw
1058  04b3 85            	popw	x
1059  04b4 acb107b1      	jpf	L101
1060  04b8               L112:
1061                     ; 185 	else if(strstr(uart3_an_buffer,"DEFAULT"))
1063  04b8 ae001a        	ldw	x,#L722
1064  04bb 89            	pushw	x
1065  04bc ae0001        	ldw	x,#_uart3_an_buffer
1066  04bf cd0000        	call	_strstr
1068  04c2 5b02          	addw	sp,#2
1069  04c4 a30000        	cpw	x,#0
1070  04c7 2603          	jrne	L421
1071  04c9 cc076f        	jp	L522
1072  04cc               L421:
1073                     ; 187 		if(HUMAN_SET_EE!=0x2222)
1075  04cc ce0000        	ldw	x,_HUMAN_SET_EE
1076  04cf a32222        	cpw	x,#8738
1077  04d2 2603          	jrne	L621
1078  04d4 cc07b1        	jp	L101
1079  04d7               L621:
1080                     ; 189 			TABLE_TIME_EE[0][0]=0;
1082  04d7 4f            	clr	a
1083  04d8 ae0000        	ldw	x,#_TABLE_TIME_EE
1084  04db cd0000        	call	c_eewrc
1086                     ; 190 			TABLE_TEMPER_EE[0][0]=20;	
1088  04de a614          	ld	a,#20
1089  04e0 ae0000        	ldw	x,#_TABLE_TEMPER_EE
1090  04e3 cd0000        	call	c_eewrc
1092                     ; 191 			TABLE_TIME_EE[0][1]=36;
1094  04e6 a624          	ld	a,#36
1095  04e8 ae0001        	ldw	x,#_TABLE_TIME_EE+1
1096  04eb cd0000        	call	c_eewrc
1098                     ; 192 			TABLE_TEMPER_EE[0][1]=20;	
1100  04ee a614          	ld	a,#20
1101  04f0 ae0001        	ldw	x,#_TABLE_TEMPER_EE+1
1102  04f3 cd0000        	call	c_eewrc
1104                     ; 193 			TABLE_TIME_EE[0][2]=72;
1106  04f6 a648          	ld	a,#72
1107  04f8 ae0002        	ldw	x,#_TABLE_TIME_EE+2
1108  04fb cd0000        	call	c_eewrc
1110                     ; 194 			TABLE_TEMPER_EE[0][2]=20;	
1112  04fe a614          	ld	a,#20
1113  0500 ae0002        	ldw	x,#_TABLE_TEMPER_EE+2
1114  0503 cd0000        	call	c_eewrc
1116                     ; 195 			TABLE_TIME_EE[0][3]=108;
1118  0506 a66c          	ld	a,#108
1119  0508 ae0003        	ldw	x,#_TABLE_TIME_EE+3
1120  050b cd0000        	call	c_eewrc
1122                     ; 196 			TABLE_TEMPER_EE[0][3]=20;	
1124  050e a614          	ld	a,#20
1125  0510 ae0003        	ldw	x,#_TABLE_TEMPER_EE+3
1126  0513 cd0000        	call	c_eewrc
1128                     ; 197 			TABLE_TIME_EE[0][4]=126;
1130  0516 a67e          	ld	a,#126
1131  0518 ae0004        	ldw	x,#_TABLE_TIME_EE+4
1132  051b cd0000        	call	c_eewrc
1134                     ; 198 			TABLE_TEMPER_EE[0][4]=20;
1136  051e a614          	ld	a,#20
1137  0520 ae0004        	ldw	x,#_TABLE_TEMPER_EE+4
1138  0523 cd0000        	call	c_eewrc
1140                     ; 200 			TABLE_TIME_EE[1][0]=0;
1142  0526 4f            	clr	a
1143  0527 ae0005        	ldw	x,#_TABLE_TIME_EE+5
1144  052a cd0000        	call	c_eewrc
1146                     ; 201 			TABLE_TEMPER_EE[1][0]=20;	
1148  052d a614          	ld	a,#20
1149  052f ae0005        	ldw	x,#_TABLE_TEMPER_EE+5
1150  0532 cd0000        	call	c_eewrc
1152                     ; 202 			TABLE_TIME_EE[1][1]=36;
1154  0535 a624          	ld	a,#36
1155  0537 ae0006        	ldw	x,#_TABLE_TIME_EE+6
1156  053a cd0000        	call	c_eewrc
1158                     ; 203 			TABLE_TEMPER_EE[1][1]=20;	
1160  053d a614          	ld	a,#20
1161  053f ae0006        	ldw	x,#_TABLE_TEMPER_EE+6
1162  0542 cd0000        	call	c_eewrc
1164                     ; 204 			TABLE_TIME_EE[1][2]=72;
1166  0545 a648          	ld	a,#72
1167  0547 ae0007        	ldw	x,#_TABLE_TIME_EE+7
1168  054a cd0000        	call	c_eewrc
1170                     ; 205 			TABLE_TEMPER_EE[1][2]=20;	
1172  054d a614          	ld	a,#20
1173  054f ae0007        	ldw	x,#_TABLE_TEMPER_EE+7
1174  0552 cd0000        	call	c_eewrc
1176                     ; 206 			TABLE_TIME_EE[1][3]=108;
1178  0555 a66c          	ld	a,#108
1179  0557 ae0008        	ldw	x,#_TABLE_TIME_EE+8
1180  055a cd0000        	call	c_eewrc
1182                     ; 207 			TABLE_TEMPER_EE[1][3]=20;	
1184  055d a614          	ld	a,#20
1185  055f ae0008        	ldw	x,#_TABLE_TEMPER_EE+8
1186  0562 cd0000        	call	c_eewrc
1188                     ; 208 			TABLE_TIME_EE[1][4]=126;
1190  0565 a67e          	ld	a,#126
1191  0567 ae0009        	ldw	x,#_TABLE_TIME_EE+9
1192  056a cd0000        	call	c_eewrc
1194                     ; 209 			TABLE_TEMPER_EE[1][4]=20;	
1196  056d a614          	ld	a,#20
1197  056f ae0009        	ldw	x,#_TABLE_TEMPER_EE+9
1198  0572 cd0000        	call	c_eewrc
1200                     ; 211 			TABLE_TIME_EE[2][0]=0;
1202  0575 4f            	clr	a
1203  0576 ae000a        	ldw	x,#_TABLE_TIME_EE+10
1204  0579 cd0000        	call	c_eewrc
1206                     ; 212 			TABLE_TEMPER_EE[2][0]=20;	
1208  057c a614          	ld	a,#20
1209  057e ae000a        	ldw	x,#_TABLE_TEMPER_EE+10
1210  0581 cd0000        	call	c_eewrc
1212                     ; 213 			TABLE_TIME_EE[2][1]=36;
1214  0584 a624          	ld	a,#36
1215  0586 ae000b        	ldw	x,#_TABLE_TIME_EE+11
1216  0589 cd0000        	call	c_eewrc
1218                     ; 214 			TABLE_TEMPER_EE[2][1]=20;	
1220  058c a614          	ld	a,#20
1221  058e ae000b        	ldw	x,#_TABLE_TEMPER_EE+11
1222  0591 cd0000        	call	c_eewrc
1224                     ; 215 			TABLE_TIME_EE[2][2]=72;
1226  0594 a648          	ld	a,#72
1227  0596 ae000c        	ldw	x,#_TABLE_TIME_EE+12
1228  0599 cd0000        	call	c_eewrc
1230                     ; 216 			TABLE_TEMPER_EE[2][2]=20;	
1232  059c a614          	ld	a,#20
1233  059e ae000c        	ldw	x,#_TABLE_TEMPER_EE+12
1234  05a1 cd0000        	call	c_eewrc
1236                     ; 217 			TABLE_TIME_EE[2][3]=108;
1238  05a4 a66c          	ld	a,#108
1239  05a6 ae000d        	ldw	x,#_TABLE_TIME_EE+13
1240  05a9 cd0000        	call	c_eewrc
1242                     ; 218 			TABLE_TEMPER_EE[2][3]=20;	
1244  05ac a614          	ld	a,#20
1245  05ae ae000d        	ldw	x,#_TABLE_TEMPER_EE+13
1246  05b1 cd0000        	call	c_eewrc
1248                     ; 219 			TABLE_TIME_EE[2][4]=126;
1250  05b4 a67e          	ld	a,#126
1251  05b6 ae000e        	ldw	x,#_TABLE_TIME_EE+14
1252  05b9 cd0000        	call	c_eewrc
1254                     ; 220 			TABLE_TEMPER_EE[2][4]=20;
1256  05bc a614          	ld	a,#20
1257  05be ae000e        	ldw	x,#_TABLE_TEMPER_EE+14
1258  05c1 cd0000        	call	c_eewrc
1260                     ; 222 			TABLE_TIME_EE[3][0]=0;
1262  05c4 4f            	clr	a
1263  05c5 ae000f        	ldw	x,#_TABLE_TIME_EE+15
1264  05c8 cd0000        	call	c_eewrc
1266                     ; 223 			TABLE_TEMPER_EE[3][0]=20;	
1268  05cb a614          	ld	a,#20
1269  05cd ae000f        	ldw	x,#_TABLE_TEMPER_EE+15
1270  05d0 cd0000        	call	c_eewrc
1272                     ; 224 			TABLE_TIME_EE[3][1]=36;
1274  05d3 a624          	ld	a,#36
1275  05d5 ae0010        	ldw	x,#_TABLE_TIME_EE+16
1276  05d8 cd0000        	call	c_eewrc
1278                     ; 225 			TABLE_TEMPER_EE[3][1]=20;	
1280  05db a614          	ld	a,#20
1281  05dd ae0010        	ldw	x,#_TABLE_TEMPER_EE+16
1282  05e0 cd0000        	call	c_eewrc
1284                     ; 226 			TABLE_TIME_EE[3][2]=72;
1286  05e3 a648          	ld	a,#72
1287  05e5 ae0011        	ldw	x,#_TABLE_TIME_EE+17
1288  05e8 cd0000        	call	c_eewrc
1290                     ; 227 			TABLE_TEMPER_EE[3][2]=20;	
1292  05eb a614          	ld	a,#20
1293  05ed ae0011        	ldw	x,#_TABLE_TEMPER_EE+17
1294  05f0 cd0000        	call	c_eewrc
1296                     ; 228 			TABLE_TIME_EE[3][3]=108;
1298  05f3 a66c          	ld	a,#108
1299  05f5 ae0012        	ldw	x,#_TABLE_TIME_EE+18
1300  05f8 cd0000        	call	c_eewrc
1302                     ; 229 			TABLE_TEMPER_EE[3][3]=20;	
1304  05fb a614          	ld	a,#20
1305  05fd ae0012        	ldw	x,#_TABLE_TEMPER_EE+18
1306  0600 cd0000        	call	c_eewrc
1308                     ; 230 			TABLE_TIME_EE[3][4]=126;
1310  0603 a67e          	ld	a,#126
1311  0605 ae0013        	ldw	x,#_TABLE_TIME_EE+19
1312  0608 cd0000        	call	c_eewrc
1314                     ; 231 			TABLE_TEMPER_EE[3][4]=20;
1316  060b a614          	ld	a,#20
1317  060d ae0013        	ldw	x,#_TABLE_TEMPER_EE+19
1318  0610 cd0000        	call	c_eewrc
1320                     ; 233 			TABLE_TIME_EE[4][0]=0;
1322  0613 4f            	clr	a
1323  0614 ae0014        	ldw	x,#_TABLE_TIME_EE+20
1324  0617 cd0000        	call	c_eewrc
1326                     ; 234 			TABLE_TEMPER_EE[4][0]=20;	
1328  061a a614          	ld	a,#20
1329  061c ae0014        	ldw	x,#_TABLE_TEMPER_EE+20
1330  061f cd0000        	call	c_eewrc
1332                     ; 235 			TABLE_TIME_EE[4][1]=36;
1334  0622 a624          	ld	a,#36
1335  0624 ae0015        	ldw	x,#_TABLE_TIME_EE+21
1336  0627 cd0000        	call	c_eewrc
1338                     ; 236 			TABLE_TEMPER_EE[4][1]=20;	
1340  062a a614          	ld	a,#20
1341  062c ae0015        	ldw	x,#_TABLE_TEMPER_EE+21
1342  062f cd0000        	call	c_eewrc
1344                     ; 237 			TABLE_TIME_EE[4][2]=72;
1346  0632 a648          	ld	a,#72
1347  0634 ae0016        	ldw	x,#_TABLE_TIME_EE+22
1348  0637 cd0000        	call	c_eewrc
1350                     ; 238 			TABLE_TEMPER_EE[4][2]=20;	
1352  063a a614          	ld	a,#20
1353  063c ae0016        	ldw	x,#_TABLE_TEMPER_EE+22
1354  063f cd0000        	call	c_eewrc
1356                     ; 239 			TABLE_TIME_EE[4][3]=108;
1358  0642 a66c          	ld	a,#108
1359  0644 ae0017        	ldw	x,#_TABLE_TIME_EE+23
1360  0647 cd0000        	call	c_eewrc
1362                     ; 240 			TABLE_TEMPER_EE[4][3]=20;	
1364  064a a614          	ld	a,#20
1365  064c ae0017        	ldw	x,#_TABLE_TEMPER_EE+23
1366  064f cd0000        	call	c_eewrc
1368                     ; 241 			TABLE_TIME_EE[4][4]=126;
1370  0652 a67e          	ld	a,#126
1371  0654 ae0018        	ldw	x,#_TABLE_TIME_EE+24
1372  0657 cd0000        	call	c_eewrc
1374                     ; 242 			TABLE_TEMPER_EE[4][4]=20;
1376  065a a614          	ld	a,#20
1377  065c ae0018        	ldw	x,#_TABLE_TEMPER_EE+24
1378  065f cd0000        	call	c_eewrc
1380                     ; 244 			TABLE_TIME_EE[5][0]=0;
1382  0662 4f            	clr	a
1383  0663 ae0019        	ldw	x,#_TABLE_TIME_EE+25
1384  0666 cd0000        	call	c_eewrc
1386                     ; 245 			TABLE_TEMPER_EE[5][0]=20;	
1388  0669 a614          	ld	a,#20
1389  066b ae0019        	ldw	x,#_TABLE_TEMPER_EE+25
1390  066e cd0000        	call	c_eewrc
1392                     ; 246 			TABLE_TIME_EE[5][1]=36;
1394  0671 a624          	ld	a,#36
1395  0673 ae001a        	ldw	x,#_TABLE_TIME_EE+26
1396  0676 cd0000        	call	c_eewrc
1398                     ; 247 			TABLE_TEMPER_EE[5][1]=20;	
1400  0679 a614          	ld	a,#20
1401  067b ae001a        	ldw	x,#_TABLE_TEMPER_EE+26
1402  067e cd0000        	call	c_eewrc
1404                     ; 248 			TABLE_TIME_EE[5][2]=72;
1406  0681 a648          	ld	a,#72
1407  0683 ae001b        	ldw	x,#_TABLE_TIME_EE+27
1408  0686 cd0000        	call	c_eewrc
1410                     ; 249 			TABLE_TEMPER_EE[5][2]=20;	
1412  0689 a614          	ld	a,#20
1413  068b ae001b        	ldw	x,#_TABLE_TEMPER_EE+27
1414  068e cd0000        	call	c_eewrc
1416                     ; 250 			TABLE_TIME_EE[5][3]=108;
1418  0691 a66c          	ld	a,#108
1419  0693 ae001c        	ldw	x,#_TABLE_TIME_EE+28
1420  0696 cd0000        	call	c_eewrc
1422                     ; 251 			TABLE_TEMPER_EE[5][3]=20;	
1424  0699 a614          	ld	a,#20
1425  069b ae001c        	ldw	x,#_TABLE_TEMPER_EE+28
1426  069e cd0000        	call	c_eewrc
1428                     ; 252 			TABLE_TIME_EE[5][4]=126;
1430  06a1 a67e          	ld	a,#126
1431  06a3 ae001d        	ldw	x,#_TABLE_TIME_EE+29
1432  06a6 cd0000        	call	c_eewrc
1434                     ; 253 			TABLE_TEMPER_EE[5][4]=20;
1436  06a9 a614          	ld	a,#20
1437  06ab ae001d        	ldw	x,#_TABLE_TEMPER_EE+29
1438  06ae cd0000        	call	c_eewrc
1440                     ; 255 			TABLE_TIME_EE[6][0]=0;
1442  06b1 4f            	clr	a
1443  06b2 ae001e        	ldw	x,#_TABLE_TIME_EE+30
1444  06b5 cd0000        	call	c_eewrc
1446                     ; 256 			TABLE_TEMPER_EE[6][0]=20;	
1448  06b8 a614          	ld	a,#20
1449  06ba ae001e        	ldw	x,#_TABLE_TEMPER_EE+30
1450  06bd cd0000        	call	c_eewrc
1452                     ; 257 			TABLE_TIME_EE[6][1]=36;
1454  06c0 a624          	ld	a,#36
1455  06c2 ae001f        	ldw	x,#_TABLE_TIME_EE+31
1456  06c5 cd0000        	call	c_eewrc
1458                     ; 258 			TABLE_TEMPER_EE[6][1]=20;	
1460  06c8 a614          	ld	a,#20
1461  06ca ae001f        	ldw	x,#_TABLE_TEMPER_EE+31
1462  06cd cd0000        	call	c_eewrc
1464                     ; 259 			TABLE_TIME_EE[6][2]=72;
1466  06d0 a648          	ld	a,#72
1467  06d2 ae0020        	ldw	x,#_TABLE_TIME_EE+32
1468  06d5 cd0000        	call	c_eewrc
1470                     ; 260 			TABLE_TEMPER_EE[6][2]=20;	
1472  06d8 a614          	ld	a,#20
1473  06da ae0020        	ldw	x,#_TABLE_TEMPER_EE+32
1474  06dd cd0000        	call	c_eewrc
1476                     ; 261 			TABLE_TIME_EE[6][3]=108;
1478  06e0 a66c          	ld	a,#108
1479  06e2 ae0021        	ldw	x,#_TABLE_TIME_EE+33
1480  06e5 cd0000        	call	c_eewrc
1482                     ; 262 			TABLE_TEMPER_EE[6][3]=20;	
1484  06e8 a614          	ld	a,#20
1485  06ea ae0021        	ldw	x,#_TABLE_TEMPER_EE+33
1486  06ed cd0000        	call	c_eewrc
1488                     ; 263 			TABLE_TIME_EE[6][4]=126;
1490  06f0 a67e          	ld	a,#126
1491  06f2 ae0022        	ldw	x,#_TABLE_TIME_EE+34
1492  06f5 cd0000        	call	c_eewrc
1494                     ; 264 			TABLE_TEMPER_EE[6][4]=20;
1496  06f8 a614          	ld	a,#20
1497  06fa ae0022        	ldw	x,#_TABLE_TEMPER_EE+34
1498  06fd cd0000        	call	c_eewrc
1500                     ; 266 			MODE_EE=1;
1502  0700 a601          	ld	a,#1
1503  0702 ae0000        	ldw	x,#_MODE_EE
1504  0705 cd0000        	call	c_eewrc
1506                     ; 267 			NECC_TEMPER_WATER_EE=50;
1508  0708 a632          	ld	a,#50
1509  070a ae0000        	ldw	x,#_NECC_TEMPER_WATER_EE
1510  070d cd0000        	call	c_eewrc
1512                     ; 268 			NECC_TEMPER_AIR_EE=20;
1514  0710 a614          	ld	a,#20
1515  0712 ae0000        	ldw	x,#_NECC_TEMPER_AIR_EE
1516  0715 cd0000        	call	c_eewrc
1518                     ; 269 			MAX_POWER_EE=3;
1520  0718 a603          	ld	a,#3
1521  071a ae0000        	ldw	x,#_MAX_POWER_EE
1522  071d cd0000        	call	c_eewrc
1524                     ; 270 			outMode=omON;
1526  0720 a601          	ld	a,#1
1527  0722 ae0000        	ldw	x,#_outMode
1528  0725 cd0000        	call	c_eewrc
1530                     ; 272 			memcpy(MAIN_NUMBER,"0000000000",10);
1532  0728 ae000a        	ldw	x,#10
1533  072b               L27:
1534  072b d6000e        	ld	a,(L332-1,x)
1535  072e d7ffff        	ld	(_MAIN_NUMBER-1,x),a
1536  0731 5a            	decw	x
1537  0732 26f7          	jrne	L27
1538                     ; 273 			memcpy(AUTH_NUMBER_1,"0000000000",10);
1540  0734 ae000a        	ldw	x,#10
1541  0737               L47:
1542  0737 d6000e        	ld	a,(L332-1,x)
1543  073a d7ffff        	ld	(_AUTH_NUMBER_1-1,x),a
1544  073d 5a            	decw	x
1545  073e 26f7          	jrne	L47
1546                     ; 274 			memcpy(AUTH_NUMBER_2,"0000000000",10);
1548  0740 ae000a        	ldw	x,#10
1549  0743               L67:
1550  0743 d6000e        	ld	a,(L332-1,x)
1551  0746 d7ffff        	ld	(_AUTH_NUMBER_2-1,x),a
1552  0749 5a            	decw	x
1553  074a 26f7          	jrne	L67
1554                     ; 275 			memcpy(AUTH_NUMBER_3,"0000000000",10);
1556  074c ae000a        	ldw	x,#10
1557  074f               L001:
1558  074f d6000e        	ld	a,(L332-1,x)
1559  0752 d7ffff        	ld	(_AUTH_NUMBER_3-1,x),a
1560  0755 5a            	decw	x
1561  0756 26f7          	jrne	L001
1562                     ; 276 			AUTH_NUMBER_FLAGS=0x00;
1564  0758 4f            	clr	a
1565  0759 ae0000        	ldw	x,#_AUTH_NUMBER_FLAGS
1566  075c cd0000        	call	c_eewrc
1568                     ; 278 			HUMAN_SET_EE!=0x2222;
1570  075f ce0000        	ldw	x,_HUMAN_SET_EE
1571  0762 a32222        	cpw	x,#8738
1572  0765 2705          	jreq	L201
1573  0767 ae0001        	ldw	x,#1
1574  076a 2001          	jra	L401
1575  076c               L201:
1576  076c 5f            	clrw	x
1577  076d               L401:
1578  076d 2042          	jra	L101
1579  076f               L522:
1580                     ; 281 	else if(strstr(uart3_an_buffer,"INTER"))
1582  076f ae0009        	ldw	x,#L142
1583  0772 89            	pushw	x
1584  0773 ae0001        	ldw	x,#_uart3_an_buffer
1585  0776 cd0000        	call	_strstr
1587  0779 5b02          	addw	sp,#2
1588  077b a30000        	cpw	x,#0
1589  077e 2714          	jreq	L732
1590                     ; 283 		if(ind!=iInterf)
1592  0780 b600          	ld	a,_a_ind
1593  0782 a10f          	cp	a,#15
1594  0784 272b          	jreq	L101
1595                     ; 285 			tree_up(iInterf,0,0,0);
1597  0786 4b00          	push	#0
1598  0788 4b00          	push	#0
1599  078a 5f            	clrw	x
1600  078b a60f          	ld	a,#15
1601  078d 95            	ld	xh,a
1602  078e cd0000        	call	_tree_up
1604  0791 85            	popw	x
1605  0792 201d          	jra	L101
1606  0794               L732:
1607                     ; 288 	else if(strstr(uart3_an_buffer,"INTE_RET"))
1609  0794 ae0000        	ldw	x,#L152
1610  0797 89            	pushw	x
1611  0798 ae0001        	ldw	x,#_uart3_an_buffer
1612  079b cd0000        	call	_strstr
1614  079e 5b02          	addw	sp,#2
1615  07a0 a30000        	cpw	x,#0
1616  07a3 270c          	jreq	L101
1617                     ; 290 		if(ind==iInterf)
1619  07a5 b600          	ld	a,_a_ind
1620  07a7 a10f          	cp	a,#15
1621  07a9 2606          	jrne	L101
1622                     ; 292 			tree_down(0,0);
1624  07ab 5f            	clrw	x
1625  07ac 4f            	clr	a
1626  07ad 95            	ld	xh,a
1627  07ae cd0000        	call	_tree_down
1629  07b1               L101:
1630                     ; 296 	enableInterrupts();
1633  07b1 9a            rim
1635                     ; 297 }
1639  07b2 5b0e          	addw	sp,#14
1640  07b4 81            	ret
1732                     	switch	.ubsct
1733  0000               _digi:
1734  0000 0000          	ds.b	2
1735                     	xdef	_digi
1736  0002               _ptr2:
1737  0002 0000          	ds.b	2
1738                     	xdef	_ptr2
1739  0004               _ptr1:
1740  0004 0000          	ds.b	2
1741                     	xdef	_ptr1
1742                     	xref	_modem_send_sms
1743                     	xref	_atoi
1744                     	xref	_memcmp
1745                     	xref	_strstr
1746                     	xref	_gran_ring_char
1747                     	xref	_gran_char
1748                     	xref	_tree_up
1749                     	xref	_tree_down
1750                     	xref	__ds1307_write_byte
1751                     	xdef	_uart3_in_an
1752                     	xdef	f_UART3RxInterrupt
1753                     	xdef	_uart3_init
1754  0006               _uart3_plazma:
1755  0006 00            	ds.b	1
1756                     	xdef	_uart3_plazma
1757                     	switch	.bss
1758  0000               _bRXIN3:
1759  0000 00            	ds.b	1
1760                     	xdef	_bRXIN3
1761  0001               _uart3_an_buffer:
1762  0001 000000000000  	ds.b	100
1763                     	xdef	_uart3_an_buffer
1764  0065               _rx_wr_index3:
1765  0065 0000          	ds.b	2
1766                     	xdef	_rx_wr_index3
1767  0067               _rxBuffer3:
1768  0067 000000000000  	ds.b	64
1769                     	xdef	_rxBuffer3
1770                     	xref.b	_cntAirSensorLineErrorHi
1771                     	xref.b	_cntAirSensorLineErrorLo
1772                     	xref.b	_airSensorErrorStat
1773                     	xref.b	_temperOfAir
1774                     	xref	_optr_kontr_cnt
1775                     	xref	_optr_stat
1776                     	xref.b	_a_ind
1777                     	xref	_AUTH_NUMBER_FLAGS
1778                     	xref	_AUTH_NUMBER_3
1779                     	xref	_AUTH_NUMBER_2
1780                     	xref	_TABLE_TEMPER_EE
1781                     	xref	_MAX_POWER_EE
1782                     	xref	_MODE_EE
1783                     	xref	_NECC_TEMPER_WATER_EE
1784                     	xref	_NECC_TEMPER_AIR_EE
1785                     	xref	_TABLE_TIME_EE
1786                     	xref	_HUMAN_SET_EE
1787                     	xref	_outMode
1788                     	xref	_AUTH_NUMBER_1
1789                     	xref	_MAIN_NUMBER
1790                     .const:	section	.text
1791  0000               L152:
1792  0000 494e54455f52  	dc.b	"INTE_RET",0
1793  0009               L142:
1794  0009 494e54455200  	dc.b	"INTER",0
1795  000f               L332:
1796  000f 303030303030  	dc.b	"0000000000",0
1797  001a               L722:
1798  001a 44454641554c  	dc.b	"DEFAULT",0
1799  0022               L122:
1800  0022 c2e0f820edee  	dc.b	194,224,248,32,237,238
1801  0028 ece5f020f3f1  	dc.b	236,229,240,32,243,241
1802  002e f2e0edeee2eb  	dc.b	242,224,237,238,226,235
1803  0034 e5ed20eae0ea  	dc.b	229,237,32,234,224,234
1804  003a 20e3          	dc.b	" ",227
1805  003c ebe0e2edfbe9  	dc.b	235,224,226,237,251,233,0
1806  0043               L712:
1807  0043 393133393239  	dc.b	"9139294352",0
1808  004e               L312:
1809  004e 50524f424553  	dc.b	"PROBESMS",0
1810  0057               L502:
1811  0057 54494d455354  	dc.b	"TIMESTART",0
1812  0061               L571:
1813  0061 41495f524554  	dc.b	"AI_RET",0
1814  0068               L561:
1815  0068 41495200      	dc.b	"AIR",0
1816  006c               L551:
1817  006c 5741545f5245  	dc.b	"WAT_RET",0
1818  0074               L541:
1819  0074 574154455200  	dc.b	"WATER",0
1820  007a               L731:
1821  007a 4441544100    	dc.b	"DATA",0
1822  007f               L131:
1823  007f 4f50545200    	dc.b	"OPTR",0
1824  0084               L321:
1825  0084 4552524f5248  	dc.b	"ERRORHI",0
1826  008c               L511:
1827  008c 4552524f524c  	dc.b	"ERRORLO",0
1828  0094               L701:
1829  0094 43524300      	dc.b	"CRC",0
1830  0098               L501:
1831  0098 4f4b00        	dc.b	"OK",0
1832                     	xref.b	c_x
1852                     	xref	c_eewrw
1853                     	xref	c_eewrc
1854                     	xref	c_idiv
1855                     	end
