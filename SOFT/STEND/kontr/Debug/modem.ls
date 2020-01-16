   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  16                     	bsct
  17  0000               _modemPowerState:
  18  0000 00            	dc.b	0
  19  0001               _modemLinkState:
  20  0001 00            	dc.b	0
  21  0002               _modemState:
  22  0002 00            	dc.b	0
  23  0003               _modemDrvPowerStartCnt:
  24  0003 00            	dc.b	0
  25  0004               _modemDrvInitStepCnt:
  26  0004 0000          	dc.w	0
  27  0006               _modemDrvTextSMSSendStepCnt:
  28  0006 0000          	dc.w	0
  29  0008               _modemDrvPDUSMSSendStepCnt:
  30  0008 0000          	dc.w	0
  31  000a               _modemDrvPowerDownStepCnt:
  32  000a 0000          	dc.w	0
  61                     ; 52 void modem_gpio_init(void)
  61                     ; 53 {
  63                     	switch	.text
  64  0000               _modem_gpio_init:
  68                     ; 55 GPIOE->DDR&=~(1<<6);		
  70  0000 721d5016      	bres	20502,#6
  71                     ; 56 GPIOE->CR1|=(1<<6);		
  73  0004 721c5017      	bset	20503,#6
  74                     ; 57 GPIOE->CR2&=~(1<<6);
  76  0008 721d5018      	bres	20504,#6
  77                     ; 58 GPIOE->ODR&=~(1<<6);	
  79  000c 721d5014      	bres	20500,#6
  80                     ; 61 GPIOE->DDR&=~(1<<7);		
  82  0010 721f5016      	bres	20502,#7
  83                     ; 62 GPIOE->CR1|=(1<<7);		
  85  0014 721e5017      	bset	20503,#7
  86                     ; 63 GPIOE->CR2&=~(1<<7);
  88  0018 721f5018      	bres	20504,#7
  89                     ; 64 GPIOE->ODR&=~(1<<7);
  91  001c 721f5014      	bres	20500,#7
  92                     ; 67 GPIOD->DDR|=(1<<0);		
  94  0020 72105011      	bset	20497,#0
  95                     ; 68 GPIOD->CR1|=(1<<0);		
  97  0024 72105012      	bset	20498,#0
  98                     ; 69 GPIOD->CR2&=~(1<<0);
 100  0028 72115013      	bres	20499,#0
 101                     ; 70 GPIOD->ODR&=~(1<<0);
 103  002c 7211500f      	bres	20495,#0
 104                     ; 73 GPIOA->DDR|=(1<<3);		
 106  0030 72165002      	bset	20482,#3
 107                     ; 74 GPIOA->CR1|=(1<<3);		
 109  0034 72165003      	bset	20483,#3
 110                     ; 75 GPIOA->CR2&=~(1<<3);
 112  0038 72175004      	bres	20484,#3
 113                     ; 76 GPIOA->ODR&=~(1<<3);
 115  003c 72175000      	bres	20480,#3
 116                     ; 77 }
 119  0040 81            	ret
 155                     ; 81 void modem_stat_drv(void)
 155                     ; 82 {
 156                     	switch	.text
 157  0041               _modem_stat_drv:
 161                     ; 86 if(modemStatCnt0<10)
 163  0041 b611          	ld	a,_modemStatCnt0
 164  0043 a10a          	cp	a,#10
 165  0045 242f          	jruge	L13
 166                     ; 88     modemStatCnt0++;
 168  0047 3c11          	inc	_modemStatCnt0
 169                     ; 89     if(modemStatCnt0>=10)
 171  0049 b611          	ld	a,_modemStatCnt0
 172  004b a10a          	cp	a,#10
 173  004d 2527          	jrult	L13
 174                     ; 91 		modemStatCnt0=0;
 176  004f 3f11          	clr	_modemStatCnt0
 177                     ; 93 		if(!(GPIOE->IDR&(1<<6)))//если светодиод POWER горит
 179  0051 c65015        	ld	a,20501
 180  0054 a540          	bcp	a,#64
 181  0056 2611          	jrne	L53
 182                     ; 95 			if(modemPowerStatCnt<5)
 184  0058 9c            	rvf
 185  0059 b610          	ld	a,_modemPowerStatCnt
 186  005b a105          	cp	a,#5
 187  005d 2e04          	jrsge	L73
 188                     ; 97 				modemPowerStatCnt++;	
 190  005f 3c10          	inc	_modemPowerStatCnt
 192  0061 2013          	jra	L13
 193  0063               L73:
 194                     ; 101 				modemPowerState=MPS_POWERON;
 196  0063 35010000      	mov	_modemPowerState,#1
 197  0067 200d          	jra	L13
 198  0069               L53:
 199                     ; 106 			if(modemPowerStatCnt>0)
 201  0069 9c            	rvf
 202  006a b610          	ld	a,_modemPowerStatCnt
 203  006c a100          	cp	a,#0
 204  006e 2d04          	jrsle	L54
 205                     ; 108 				modemPowerStatCnt--;	
 207  0070 3a10          	dec	_modemPowerStatCnt
 209  0072 2002          	jra	L13
 210  0074               L54:
 211                     ; 112 				modemPowerState=MPS_POWEROFF;
 213  0074 3f00          	clr	_modemPowerState
 214  0076               L13:
 215                     ; 118 if(!(GPIOE->IDR&(1<<7))) //если светодиод LINK горит
 217  0076 c65015        	ld	a,20501
 218  0079 a580          	bcp	a,#128
 219  007b 2703          	jreq	L01
 220  007d cc010b        	jp	L15
 221  0080               L01:
 222                     ; 120     net_l_cnt_down=0;
 224  0080 3f0e          	clr	_net_l_cnt_down
 225                     ; 121     if(net_l_cnt_up<3)
 227  0082 9c            	rvf
 228  0083 b60f          	ld	a,_net_l_cnt_up
 229  0085 a103          	cp	a,#3
 230  0087 2e71          	jrsge	L35
 231                     ; 123 		net_l_cnt_up++;
 233  0089 3c0f          	inc	_net_l_cnt_up
 234                     ; 124 		if(net_l_cnt_up==3)
 236  008b b60f          	ld	a,_net_l_cnt_up
 237  008d a103          	cp	a,#3
 238  008f 2669          	jrne	L35
 239                     ; 126 			if((net_l_cnt_one_temp>4) && (net_l_cnt_one_temp<8))
 241  0091 9c            	rvf
 242  0092 be08          	ldw	x,_net_l_cnt_one_temp
 243  0094 a30005        	cpw	x,#5
 244  0097 2f5e          	jrslt	L75
 246  0099 9c            	rvf
 247  009a be08          	ldw	x,_net_l_cnt_one_temp
 248  009c a30008        	cpw	x,#8
 249  009f 2e56          	jrsge	L75
 250                     ; 128 				if((net_l_cnt_zero>70) && (net_l_cnt_zero<90))			modemLinkState=MLS_UNLINKED; 
 252  00a1 9c            	rvf
 253  00a2 be0a          	ldw	x,_net_l_cnt_zero
 254  00a4 a30047        	cpw	x,#71
 255  00a7 2f0e          	jrslt	L16
 257  00a9 9c            	rvf
 258  00aa be0a          	ldw	x,_net_l_cnt_zero
 259  00ac a3005a        	cpw	x,#90
 260  00af 2e06          	jrsge	L16
 263  00b1 35010001      	mov	_modemLinkState,#1
 265  00b5 2040          	jra	L75
 266  00b7               L16:
 267                     ; 129 				else if((net_l_cnt_zero>250) && (net_l_cnt_zero<350))	
 269  00b7 9c            	rvf
 270  00b8 be0a          	ldw	x,_net_l_cnt_zero
 271  00ba a300fb        	cpw	x,#251
 272  00bd 2f20          	jrslt	L56
 274  00bf 9c            	rvf
 275  00c0 be0a          	ldw	x,_net_l_cnt_zero
 276  00c2 a3015e        	cpw	x,#350
 277  00c5 2e18          	jrsge	L56
 278                     ; 131 					if((modemLinkState!=MLS_PRELINKED)&&(modemLinkState!=MLS_LINKED))modemLinkState=MLS_PRELINKED; 
 280  00c7 b601          	ld	a,_modemLinkState
 281  00c9 a104          	cp	a,#4
 282  00cb 270c          	jreq	L76
 284  00cd b601          	ld	a,_modemLinkState
 285  00cf a102          	cp	a,#2
 286  00d1 2706          	jreq	L76
 289  00d3 35040001      	mov	_modemLinkState,#4
 291  00d7 201e          	jra	L75
 292  00d9               L76:
 293                     ; 132 					else modemLinkState=MLS_LINKED;
 295  00d9 35020001      	mov	_modemLinkState,#2
 296  00dd 2018          	jra	L75
 297  00df               L56:
 298                     ; 134 				else if((net_l_cnt_zero>25) && (net_l_cnt_zero<35))		modemLinkState=MLS_GPRS; 
 300  00df 9c            	rvf
 301  00e0 be0a          	ldw	x,_net_l_cnt_zero
 302  00e2 a3001a        	cpw	x,#26
 303  00e5 2f0e          	jrslt	L57
 305  00e7 9c            	rvf
 306  00e8 be0a          	ldw	x,_net_l_cnt_zero
 307  00ea a30023        	cpw	x,#35
 308  00ed 2e06          	jrsge	L57
 311  00ef 35030001      	mov	_modemLinkState,#3
 313  00f3 2002          	jra	L75
 314  00f5               L57:
 315                     ; 135 				else 													modemLinkState=MLS_UNKNOWN;
 317  00f5 3f01          	clr	_modemLinkState
 318  00f7               L75:
 319                     ; 138 			net_l_cnt_zero=0;   
 321  00f7 5f            	clrw	x
 322  00f8 bf0a          	ldw	_net_l_cnt_zero,x
 323  00fa               L35:
 324                     ; 141     if(net_l_cnt_one<1000)
 326  00fa 9c            	rvf
 327  00fb be0c          	ldw	x,_net_l_cnt_one
 328  00fd a303e8        	cpw	x,#1000
 329  0100 2e30          	jrsge	L301
 330                     ; 143 		net_l_cnt_one++;  
 332  0102 be0c          	ldw	x,_net_l_cnt_one
 333  0104 1c0001        	addw	x,#1
 334  0107 bf0c          	ldw	_net_l_cnt_one,x
 335  0109 2027          	jra	L301
 336  010b               L15:
 337                     ; 148     net_l_cnt_up=0; 
 339  010b 3f0f          	clr	_net_l_cnt_up
 340                     ; 149     if(net_l_cnt_down<3)
 342  010d 9c            	rvf
 343  010e b60e          	ld	a,_net_l_cnt_down
 344  0110 a103          	cp	a,#3
 345  0112 2e0f          	jrsge	L501
 346                     ; 151 		net_l_cnt_down++;
 348  0114 3c0e          	inc	_net_l_cnt_down
 349                     ; 152 		if(net_l_cnt_down==3)
 351  0116 b60e          	ld	a,_net_l_cnt_down
 352  0118 a103          	cp	a,#3
 353  011a 2607          	jrne	L501
 354                     ; 154 			net_l_cnt_one_temp=net_l_cnt_one;
 356  011c be0c          	ldw	x,_net_l_cnt_one
 357  011e bf08          	ldw	_net_l_cnt_one_temp,x
 358                     ; 155 			net_l_cnt_one=0;   
 360  0120 5f            	clrw	x
 361  0121 bf0c          	ldw	_net_l_cnt_one,x
 362  0123               L501:
 363                     ; 158     if(net_l_cnt_zero<1000)
 365  0123 9c            	rvf
 366  0124 be0a          	ldw	x,_net_l_cnt_zero
 367  0126 a303e8        	cpw	x,#1000
 368  0129 2e07          	jrsge	L301
 369                     ; 160 		net_l_cnt_zero++;  
 371  012b be0a          	ldw	x,_net_l_cnt_zero
 372  012d 1c0001        	addw	x,#1
 373  0130 bf0a          	ldw	_net_l_cnt_zero,x
 374  0132               L301:
 375                     ; 164 if(modemPowerState==MPS_POWEROFF)
 377  0132 3d00          	tnz	_modemPowerState
 378  0134 2608          	jrne	L311
 379                     ; 166 	modemState=MS_POWEROFF;
 381  0136 35010002      	mov	_modemState,#1
 382                     ; 167 	bINITIALIZED=0;
 384  013a 3f00          	clr	_bINITIALIZED
 386  013c 2038          	jra	L511
 387  013e               L311:
 388                     ; 169 else if(modemLinkState==MLS_UNLINKED)
 390  013e b601          	ld	a,_modemLinkState
 391  0140 a101          	cp	a,#1
 392  0142 2608          	jrne	L711
 393                     ; 171 	modemState=MS_UNLINKED;
 395  0144 35020002      	mov	_modemState,#2
 396                     ; 172 	bINITIALIZED=0;
 398  0148 3f00          	clr	_bINITIALIZED
 400  014a 202a          	jra	L511
 401  014c               L711:
 402                     ; 174 else if(modemLinkState==MLS_LINKED)
 404  014c b601          	ld	a,_modemLinkState
 405  014e a102          	cp	a,#2
 406  0150 2616          	jrne	L321
 407                     ; 176 	if(bINITIALIZED==0)modemState=MS_LINKED;
 409  0152 3d00          	tnz	_bINITIALIZED
 410  0154 2606          	jrne	L521
 413  0156 35030002      	mov	_modemState,#3
 415  015a 201a          	jra	L511
 416  015c               L521:
 417                     ; 177 	else if(bINITIALIZED==1)modemState=MS_LINKED_INITIALIZED;
 419  015c b600          	ld	a,_bINITIALIZED
 420  015e a101          	cp	a,#1
 421  0160 2614          	jrne	L511
 424  0162 35050002      	mov	_modemState,#5
 425  0166 200e          	jra	L511
 426  0168               L321:
 427                     ; 179 else if(modemLinkState==MLS_GPRS)										modemState=MS_GPRS;
 429  0168 b601          	ld	a,_modemLinkState
 430  016a a103          	cp	a,#3
 431  016c 2606          	jrne	L531
 434  016e 35040002      	mov	_modemState,#4
 436  0172 2002          	jra	L511
 437  0174               L531:
 438                     ; 180 else 																	modemState=MS_UNKNOWN;
 440  0174 3f02          	clr	_modemState
 441  0176               L511:
 442                     ; 184 if(modemState!=MS_LINKED_INITIALIZED)
 444  0176 b602          	ld	a,_modemState
 445  0178 a105          	cp	a,#5
 446  017a 271f          	jreq	L141
 447                     ; 186 	if(modemNotReadyCnt<6000)
 449  017c 9c            	rvf
 450  017d be06          	ldw	x,_modemNotReadyCnt
 451  017f a31770        	cpw	x,#6000
 452  0182 2e17          	jrsge	L141
 453                     ; 188 		modemNotReadyCnt++;
 455  0184 be06          	ldw	x,_modemNotReadyCnt
 456  0186 1c0001        	addw	x,#1
 457  0189 bf06          	ldw	_modemNotReadyCnt,x
 458                     ; 189 		if(modemNotReadyCnt>=6000)
 460  018b 9c            	rvf
 461  018c be06          	ldw	x,_modemNotReadyCnt
 462  018e a31770        	cpw	x,#6000
 463  0191 2f08          	jrslt	L141
 464                     ; 191 			modemDrvInitStepCnt=1;
 466  0193 ae0001        	ldw	x,#1
 467  0196 bf04          	ldw	_modemDrvInitStepCnt,x
 468                     ; 192 			modemNotReadyCnt=0;			
 470  0198 5f            	clrw	x
 471  0199 bf06          	ldw	_modemNotReadyCnt,x
 472  019b               L141:
 473                     ; 196 }
 476  019b 81            	ret
 532                     ; 199 void modem_drv(void)
 532                     ; 200 {
 533                     	switch	.text
 534  019c               _modem_drv:
 538                     ; 201 disableInterrupts();
 541  019c 9b            sim
 543                     ; 203 if(modemDrvPowerStartCnt<70)
 546  019d 9c            	rvf
 547  019e b603          	ld	a,_modemDrvPowerStartCnt
 548  01a0 a146          	cp	a,#70
 549  01a2 2e06          	jrsge	L751
 550                     ; 205 	modemDrvPowerStartCnt++;	
 552  01a4 3c03          	inc	_modemDrvPowerStartCnt
 554  01a6 acb505b5      	jpf	L161
 555  01aa               L751:
 556                     ; 209 	if((modemState!=MS_LINKED)&&(modemState!=MS_LINKED_INITIALIZED))
 558  01aa b602          	ld	a,_modemState
 559  01ac a103          	cp	a,#3
 560  01ae 2706          	jreq	L361
 562  01b0 b602          	ld	a,_modemState
 563  01b2 a105          	cp	a,#5
 564  01b4 2609          	jrne	L561
 566  01b6               L361:
 567                     ; 215 		if(modemDrvInitStepCnt==0)modemDrvInitStepCnt=26;	
 569  01b6 be04          	ldw	x,_modemDrvInitStepCnt
 570  01b8 2605          	jrne	L561
 573  01ba ae001a        	ldw	x,#26
 574  01bd bf04          	ldw	_modemDrvInitStepCnt,x
 575  01bf               L561:
 576                     ; 219 	if(modemDrvInitStepCnt)
 578  01bf be04          	ldw	x,_modemDrvInitStepCnt
 579  01c1 2603          	jrne	L62
 580  01c3 cc0311        	jp	L171
 581  01c6               L62:
 582                     ; 221 		if(modemDrvInitStepCnt==5)
 584  01c6 be04          	ldw	x,_modemDrvInitStepCnt
 585  01c8 a30005        	cpw	x,#5
 586  01cb 2618          	jrne	L371
 587                     ; 223 			GPIOD->ODR|=(1<<0);			//Сброс
 589  01cd 7210500f      	bset	20495,#0
 590                     ; 224 			modemDrvInitStepCnt++;
 592  01d1 be04          	ldw	x,_modemDrvInitStepCnt
 593  01d3 1c0001        	addw	x,#1
 594  01d6 bf04          	ldw	_modemDrvInitStepCnt,x
 595                     ; 225 			modemLinkState=MLS_UNLINKED;
 597  01d8 35010001      	mov	_modemLinkState,#1
 598                     ; 226 			net_l_cnt_zero=0;
 600  01dc 5f            	clrw	x
 601  01dd bf0a          	ldw	_net_l_cnt_zero,x
 602                     ; 227 			net_l_cnt_up=0;
 604  01df 3f0f          	clr	_net_l_cnt_up
 606  01e1 ac110311      	jpf	L171
 607  01e5               L371:
 608                     ; 230 		else if(modemDrvInitStepCnt==10)
 610  01e5 be04          	ldw	x,_modemDrvInitStepCnt
 611  01e7 a3000a        	cpw	x,#10
 612  01ea 260f          	jrne	L771
 613                     ; 232 			GPIOD->ODR&=~(1<<0);		//Конец сброса
 615  01ec 7211500f      	bres	20495,#0
 616                     ; 233 			modemDrvInitStepCnt++;
 618  01f0 be04          	ldw	x,_modemDrvInitStepCnt
 619  01f2 1c0001        	addw	x,#1
 620  01f5 bf04          	ldw	_modemDrvInitStepCnt,x
 622  01f7 ac110311      	jpf	L171
 623  01fb               L771:
 624                     ; 236 		else if(modemDrvInitStepCnt==15)
 626  01fb be04          	ldw	x,_modemDrvInitStepCnt
 627  01fd a3000f        	cpw	x,#15
 628  0200 2618          	jrne	L302
 629                     ; 238 			GPIOA->ODR|=(1<<3);			//Воздействие на вход управления питанием модема
 631  0202 72165000      	bset	20480,#3
 632                     ; 239 			modemDrvInitStepCnt++;
 634  0206 be04          	ldw	x,_modemDrvInitStepCnt
 635  0208 1c0001        	addw	x,#1
 636  020b bf04          	ldw	_modemDrvInitStepCnt,x
 637                     ; 240 			modemLinkState=MLS_UNLINKED;
 639  020d 35010001      	mov	_modemLinkState,#1
 640                     ; 241 			net_l_cnt_zero=0;
 642  0211 5f            	clrw	x
 643  0212 bf0a          	ldw	_net_l_cnt_zero,x
 644                     ; 242 			net_l_cnt_up=0;
 646  0214 3f0f          	clr	_net_l_cnt_up
 648  0216 ac110311      	jpf	L171
 649  021a               L302:
 650                     ; 245 		else if(modemDrvInitStepCnt==25)
 652  021a be04          	ldw	x,_modemDrvInitStepCnt
 653  021c a30019        	cpw	x,#25
 654  021f 260f          	jrne	L702
 655                     ; 247 			GPIOA->ODR&=~(1<<3);		//Конец воздействия на вход управления питанием модема
 657  0221 72175000      	bres	20480,#3
 658                     ; 248 			modemDrvInitStepCnt++;
 660  0225 be04          	ldw	x,_modemDrvInitStepCnt
 661  0227 1c0001        	addw	x,#1
 662  022a bf04          	ldw	_modemDrvInitStepCnt,x
 664  022c ac110311      	jpf	L171
 665  0230               L702:
 666                     ; 251 		else if(modemDrvInitStepCnt==30)
 668  0230 be04          	ldw	x,_modemDrvInitStepCnt
 669  0232 a3001e        	cpw	x,#30
 670  0235 2614          	jrne	L312
 671                     ; 253 			if(modemState==MS_LINKED)modemDrvInitStepCnt++;
 673  0237 b602          	ld	a,_modemState
 674  0239 a103          	cp	a,#3
 675  023b 2703          	jreq	L03
 676  023d cc0311        	jp	L171
 677  0240               L03:
 680  0240 be04          	ldw	x,_modemDrvInitStepCnt
 681  0242 1c0001        	addw	x,#1
 682  0245 bf04          	ldw	_modemDrvInitStepCnt,x
 683  0247 ac110311      	jpf	L171
 684  024b               L312:
 685                     ; 256 		else if(modemDrvInitStepCnt==31)
 687  024b be04          	ldw	x,_modemDrvInitStepCnt
 688  024d a3001f        	cpw	x,#31
 689  0250 260b          	jrne	L122
 690                     ; 258 			modemDrvInitStepCnt++;
 692  0252 be04          	ldw	x,_modemDrvInitStepCnt
 693  0254 1c0001        	addw	x,#1
 694  0257 bf04          	ldw	_modemDrvInitStepCnt,x
 696  0259 ac110311      	jpf	L171
 697  025d               L122:
 698                     ; 272 		else if(modemDrvInitStepCnt==35)
 700  025d be04          	ldw	x,_modemDrvInitStepCnt
 701  025f a30023        	cpw	x,#35
 702  0262 2613          	jrne	L522
 703                     ; 275 			printf("ATE0\r\n");
 705  0264 ae00f9        	ldw	x,#L722
 706  0267 cd0000        	call	_printf
 708                     ; 276 			bOK=0;
 710  026a 3f00          	clr	_bOK
 711                     ; 277 			modemDrvInitStepCnt++;
 713  026c be04          	ldw	x,_modemDrvInitStepCnt
 714  026e 1c0001        	addw	x,#1
 715  0271 bf04          	ldw	_modemDrvInitStepCnt,x
 717  0273 ac110311      	jpf	L171
 718  0277               L522:
 719                     ; 280 		else if(modemDrvInitStepCnt==36)
 721  0277 be04          	ldw	x,_modemDrvInitStepCnt
 722  0279 a30024        	cpw	x,#36
 723  027c 2618          	jrne	L332
 724                     ; 282 			if(bOK)
 726  027e 3d00          	tnz	_bOK
 727  0280 2603          	jrne	L23
 728  0282 cc0311        	jp	L171
 729  0285               L23:
 730                     ; 284 				printf("AT+CMGF=1\r\n");
 732  0285 ae00ed        	ldw	x,#L732
 733  0288 cd0000        	call	_printf
 735                     ; 285 				modemDrvInitStepCnt++;
 737  028b be04          	ldw	x,_modemDrvInitStepCnt
 738  028d 1c0001        	addw	x,#1
 739  0290 bf04          	ldw	_modemDrvInitStepCnt,x
 740                     ; 286 				bOK=0;
 742  0292 3f00          	clr	_bOK
 743  0294 207b          	jra	L171
 744  0296               L332:
 745                     ; 290 		else if(modemDrvInitStepCnt==37)
 747  0296 be04          	ldw	x,_modemDrvInitStepCnt
 748  0298 a30025        	cpw	x,#37
 749  029b 2615          	jrne	L342
 750                     ; 292 			if(bOK)
 752  029d 3d00          	tnz	_bOK
 753  029f 2770          	jreq	L171
 754                     ; 294 				printf("AT+IFC=0, 0\r");
 756  02a1 ae00e0        	ldw	x,#L742
 757  02a4 cd0000        	call	_printf
 759                     ; 295 				modemDrvInitStepCnt++;
 761  02a7 be04          	ldw	x,_modemDrvInitStepCnt
 762  02a9 1c0001        	addw	x,#1
 763  02ac bf04          	ldw	_modemDrvInitStepCnt,x
 764                     ; 296 				bOK=0;
 766  02ae 3f00          	clr	_bOK
 767  02b0 205f          	jra	L171
 768  02b2               L342:
 769                     ; 300 		else if(modemDrvInitStepCnt==38)
 771  02b2 be04          	ldw	x,_modemDrvInitStepCnt
 772  02b4 a30026        	cpw	x,#38
 773  02b7 2615          	jrne	L352
 774                     ; 302 			if(bOK)
 776  02b9 3d00          	tnz	_bOK
 777  02bb 2754          	jreq	L171
 778                     ; 304 				printf("AT+CPBS=\"SM\"\r");
 780  02bd ae00d2        	ldw	x,#L752
 781  02c0 cd0000        	call	_printf
 783                     ; 305 				modemDrvInitStepCnt++;
 785  02c3 be04          	ldw	x,_modemDrvInitStepCnt
 786  02c5 1c0001        	addw	x,#1
 787  02c8 bf04          	ldw	_modemDrvInitStepCnt,x
 788                     ; 306 				bOK=0;
 790  02ca 3f00          	clr	_bOK
 791  02cc 2043          	jra	L171
 792  02ce               L352:
 793                     ; 310 		else if(modemDrvInitStepCnt==39)
 795  02ce be04          	ldw	x,_modemDrvInitStepCnt
 796  02d0 a30027        	cpw	x,#39
 797  02d3 2615          	jrne	L362
 798                     ; 312 			if(bOK)
 800  02d5 3d00          	tnz	_bOK
 801  02d7 2738          	jreq	L171
 802                     ; 314 				printf("AT+CNMI=1,2,2,1,0\r");
 804  02d9 ae00bf        	ldw	x,#L762
 805  02dc cd0000        	call	_printf
 807                     ; 315 				modemDrvInitStepCnt++;
 809  02df be04          	ldw	x,_modemDrvInitStepCnt
 810  02e1 1c0001        	addw	x,#1
 811  02e4 bf04          	ldw	_modemDrvInitStepCnt,x
 812                     ; 316 				bOK=0;
 814  02e6 3f00          	clr	_bOK
 815  02e8 2027          	jra	L171
 816  02ea               L362:
 817                     ; 320 		else if(modemDrvInitStepCnt==40)
 819  02ea be04          	ldw	x,_modemDrvInitStepCnt
 820  02ec a30028        	cpw	x,#40
 821  02ef 2611          	jrne	L372
 822                     ; 322 			if(bOK)
 824  02f1 3d00          	tnz	_bOK
 825  02f3 271c          	jreq	L171
 826                     ; 325 				bINITIALIZED=1;
 828  02f5 35010000      	mov	_bINITIALIZED,#1
 829                     ; 326 				modemDrvInitStepCnt=50;
 831  02f9 ae0032        	ldw	x,#50
 832  02fc bf04          	ldw	_modemDrvInitStepCnt,x
 833                     ; 327 				bOK=0;
 835  02fe 3f00          	clr	_bOK
 836  0300 200f          	jra	L171
 837  0302               L372:
 838                     ; 334 			if(modemDrvInitStepCnt<50)	modemDrvInitStepCnt++;
 840  0302 9c            	rvf
 841  0303 be04          	ldw	x,_modemDrvInitStepCnt
 842  0305 a30032        	cpw	x,#50
 843  0308 2e07          	jrsge	L171
 846  030a be04          	ldw	x,_modemDrvInitStepCnt
 847  030c 1c0001        	addw	x,#1
 848  030f bf04          	ldw	_modemDrvInitStepCnt,x
 849  0311               L171:
 850                     ; 338 	if(modemDrvTextSMSSendStepCnt)	//отправка текстового СМС
 852  0311 be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 853  0313 2603          	jrne	L43
 854  0315 cc03c3        	jp	L303
 855  0318               L43:
 856                     ; 340 		if(modemDrvWatchDogCnt==0)modemDrvWatchDogCnt=150;
 858  0318 be04          	ldw	x,_modemDrvWatchDogCnt
 859  031a 2607          	jrne	L503
 862  031c ae0096        	ldw	x,#150
 863  031f bf04          	ldw	_modemDrvWatchDogCnt,x
 865  0321 2012          	jra	L703
 866  0323               L503:
 867                     ; 343 			if(modemDrvWatchDogCnt)
 869  0323 be04          	ldw	x,_modemDrvWatchDogCnt
 870  0325 270e          	jreq	L703
 871                     ; 345 				modemDrvWatchDogCnt--;	
 873  0327 be04          	ldw	x,_modemDrvWatchDogCnt
 874  0329 1d0001        	subw	x,#1
 875  032c bf04          	ldw	_modemDrvWatchDogCnt,x
 876                     ; 346 				if(modemDrvWatchDogCnt==0)
 878  032e be04          	ldw	x,_modemDrvWatchDogCnt
 879  0330 2603          	jrne	L703
 880                     ; 348 					modemDrvTextSMSSendStepCnt=0;	
 882  0332 5f            	clrw	x
 883  0333 bf06          	ldw	_modemDrvTextSMSSendStepCnt,x
 884  0335               L703:
 885                     ; 352 		if(modemDrvTextSMSSendStepCnt==11)
 887  0335 be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 888  0337 a3000b        	cpw	x,#11
 889  033a 260f          	jrne	L513
 890                     ; 354 			printf("AT+CMGF=1\r");
 892  033c ae00b4        	ldw	x,#L713
 893  033f cd0000        	call	_printf
 895                     ; 355 			modemDrvTextSMSSendStepCnt++;
 897  0342 be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 898  0344 1c0001        	addw	x,#1
 899  0347 bf06          	ldw	_modemDrvTextSMSSendStepCnt,x
 901  0349 2078          	jra	L303
 902  034b               L513:
 903                     ; 357 		else if(modemDrvTextSMSSendStepCnt==21)
 905  034b be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 906  034d a30015        	cpw	x,#21
 907  0350 2634          	jrne	L323
 908                     ; 360 			ptrTemp[0]='\0';
 910  0352 725f03e8      	clr	_ptrTemp
 911                     ; 361 			strcat(ptrTemp,"AT+CMGS=\"");
 913  0356 ae00aa        	ldw	x,#L523
 914  0359 89            	pushw	x
 915  035a ae03e8        	ldw	x,#_ptrTemp
 916  035d cd0000        	call	_strcat
 918  0360 85            	popw	x
 919                     ; 362 			strcat(ptrTemp,numberToSendSMS);
 921  0361 ae0702        	ldw	x,#_numberToSendSMS
 922  0364 89            	pushw	x
 923  0365 ae03e8        	ldw	x,#_ptrTemp
 924  0368 cd0000        	call	_strcat
 926  036b 85            	popw	x
 927                     ; 363 			strcat(ptrTemp,"\"\r");
 929  036c ae00a7        	ldw	x,#L723
 930  036f 89            	pushw	x
 931  0370 ae03e8        	ldw	x,#_ptrTemp
 932  0373 cd0000        	call	_strcat
 934  0376 85            	popw	x
 935                     ; 364 			printf(ptrTemp);			///*"AT + CMGS = \"" + numberToSendSMS +/*+79139294352*/ "\"\r"*/
 937  0377 ae03e8        	ldw	x,#_ptrTemp
 938  037a cd0000        	call	_printf
 940                     ; 366 			modemDrvTextSMSSendStepCnt++;
 942  037d be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 943  037f 1c0001        	addw	x,#1
 944  0382 bf06          	ldw	_modemDrvTextSMSSendStepCnt,x
 946  0384 203d          	jra	L303
 947  0386               L323:
 948                     ; 368 		else if(modemDrvTextSMSSendStepCnt==31)
 950  0386 be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 951  0388 a3001f        	cpw	x,#31
 952  038b 260f          	jrne	L333
 953                     ; 371 			printf(textToSendSMS);
 955  038d ae0716        	ldw	x,#_textToSendSMS
 956  0390 cd0000        	call	_printf
 958                     ; 372 			modemDrvTextSMSSendStepCnt++;
 960  0393 be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 961  0395 1c0001        	addw	x,#1
 962  0398 bf06          	ldw	_modemDrvTextSMSSendStepCnt,x
 964  039a 2027          	jra	L303
 965  039c               L333:
 966                     ; 374 		else if(modemDrvTextSMSSendStepCnt==41)
 968  039c be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 969  039e a30029        	cpw	x,#41
 970  03a1 2611          	jrne	L733
 971                     ; 376 			printf("%c",(char)26);
 973  03a3 4b1a          	push	#26
 974  03a5 ae00a4        	ldw	x,#L143
 975  03a8 cd0000        	call	_printf
 977  03ab 84            	pop	a
 978                     ; 377 			modemDrvTextSMSSendStepCnt=0;
 980  03ac 5f            	clrw	x
 981  03ad bf06          	ldw	_modemDrvTextSMSSendStepCnt,x
 982                     ; 378 			modemDrvWatchDogCnt=0;
 984  03af 5f            	clrw	x
 985  03b0 bf04          	ldw	_modemDrvWatchDogCnt,x
 987  03b2 200f          	jra	L303
 988  03b4               L733:
 989                     ; 382 			if(modemDrvTextSMSSendStepCnt<1000)	modemDrvTextSMSSendStepCnt++;
 991  03b4 9c            	rvf
 992  03b5 be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 993  03b7 a303e8        	cpw	x,#1000
 994  03ba 2e07          	jrsge	L303
 997  03bc be06          	ldw	x,_modemDrvTextSMSSendStepCnt
 998  03be 1c0001        	addw	x,#1
 999  03c1 bf06          	ldw	_modemDrvTextSMSSendStepCnt,x
1000  03c3               L303:
1001                     ; 386 	if(modemDrvPDUSMSSendStepCnt)	//отправка PDU СМС
1003  03c3 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1004  03c5 2603          	jrne	L63
1005  03c7 cc0504        	jp	L743
1006  03ca               L63:
1007                     ; 388 		if(modemDrvWatchDogCnt==0)modemDrvWatchDogCnt=150;
1009  03ca be04          	ldw	x,_modemDrvWatchDogCnt
1010  03cc 2607          	jrne	L153
1013  03ce ae0096        	ldw	x,#150
1014  03d1 bf04          	ldw	_modemDrvWatchDogCnt,x
1016  03d3 2012          	jra	L353
1017  03d5               L153:
1018                     ; 391 			if(modemDrvWatchDogCnt)
1020  03d5 be04          	ldw	x,_modemDrvWatchDogCnt
1021  03d7 270e          	jreq	L353
1022                     ; 393 				modemDrvWatchDogCnt--;	
1024  03d9 be04          	ldw	x,_modemDrvWatchDogCnt
1025  03db 1d0001        	subw	x,#1
1026  03de bf04          	ldw	_modemDrvWatchDogCnt,x
1027                     ; 394 				if(modemDrvWatchDogCnt==0)
1029  03e0 be04          	ldw	x,_modemDrvWatchDogCnt
1030  03e2 2603          	jrne	L353
1031                     ; 396 					modemDrvPDUSMSSendStepCnt=0;	
1033  03e4 5f            	clrw	x
1034  03e5 bf08          	ldw	_modemDrvPDUSMSSendStepCnt,x
1035  03e7               L353:
1036                     ; 400 		if(modemDrvPDUSMSSendStepCnt==11)
1038  03e7 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1039  03e9 a3000b        	cpw	x,#11
1040  03ec 2613          	jrne	L163
1041                     ; 402 			printf("AT+CMGF=0\r");
1043  03ee ae0099        	ldw	x,#L363
1044  03f1 cd0000        	call	_printf
1046                     ; 403 			bOK=0;
1048  03f4 3f00          	clr	_bOK
1049                     ; 404 			modemDrvPDUSMSSendStepCnt++;
1051  03f6 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1052  03f8 1c0001        	addw	x,#1
1053  03fb bf08          	ldw	_modemDrvPDUSMSSendStepCnt,x
1055  03fd ac040504      	jpf	L743
1056  0401               L163:
1057                     ; 406 		else if(modemDrvPDUSMSSendStepCnt==12)
1059  0401 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1060  0403 a3000c        	cpw	x,#12
1061  0406 261f          	jrne	L763
1062                     ; 408 			if(bOK)
1064  0408 3d00          	tnz	_bOK
1065  040a 2603          	jrne	L04
1066  040c cc0504        	jp	L743
1067  040f               L04:
1068                     ; 410 				printf("AT+CMGS=%d\r",lenPDUSMS);
1070  040f ce052a        	ldw	x,_lenPDUSMS
1071  0412 89            	pushw	x
1072  0413 ae008d        	ldw	x,#L373
1073  0416 cd0000        	call	_printf
1075  0419 85            	popw	x
1076                     ; 411 				bOK=0;
1078  041a 3f00          	clr	_bOK
1079                     ; 412 				modemDrvPDUSMSSendStepCnt++;
1081  041c be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1082  041e 1c0001        	addw	x,#1
1083  0421 bf08          	ldw	_modemDrvPDUSMSSendStepCnt,x
1084  0423 ac040504      	jpf	L743
1085  0427               L763:
1086                     ; 415 		else if(modemDrvPDUSMSSendStepCnt==13)
1088  0427 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1089  0429 a3000d        	cpw	x,#13
1090  042c 2703          	jreq	L24
1091  042e cc04c0        	jp	L773
1092  0431               L24:
1093                     ; 417 			if(bOK)
1095  0431 3d00          	tnz	_bOK
1096  0433 2603          	jrne	L44
1097  0435 cc0504        	jp	L743
1098  0438               L44:
1099                     ; 420 				printf(buferHeadToSendPDUSMS);
1101  0438 ae068a        	ldw	x,#_buferHeadToSendPDUSMS
1102  043b cd0000        	call	_printf
1104                     ; 423 				memcpy(buferBodyToSendPDUSMS__,buferBodyToSendPDUSMS,75);
1106  043e ae004b        	ldw	x,#75
1107  0441               L41:
1108  0441 d6052b        	ld	a,(_buferBodyToSendPDUSMS-1,x)
1109  0444 d70405        	ld	(_buferBodyToSendPDUSMS__-1,x),a
1110  0447 5a            	decw	x
1111  0448 26f7          	jrne	L41
1112                     ; 424 				buferBodyToSendPDUSMS__[75]='\0';
1114  044a 725f0451      	clr	_buferBodyToSendPDUSMS__+75
1115                     ; 425 				printf(buferBodyToSendPDUSMS__);
1117  044e ae0406        	ldw	x,#_buferBodyToSendPDUSMS__
1118  0451 cd0000        	call	_printf
1120                     ; 427 				memcpy(buferBodyToSendPDUSMS__,&buferBodyToSendPDUSMS[75],75);
1122  0454 ae004b        	ldw	x,#75
1123  0457               L61:
1124  0457 d60576        	ld	a,(_buferBodyToSendPDUSMS+74,x)
1125  045a d70405        	ld	(_buferBodyToSendPDUSMS__-1,x),a
1126  045d 5a            	decw	x
1127  045e 26f7          	jrne	L61
1128                     ; 428 				buferBodyToSendPDUSMS__[75]='\0';
1130  0460 725f0451      	clr	_buferBodyToSendPDUSMS__+75
1131                     ; 429 				printf(buferBodyToSendPDUSMS__);
1133  0464 ae0406        	ldw	x,#_buferBodyToSendPDUSMS__
1134  0467 cd0000        	call	_printf
1136                     ; 431 				memcpy(buferBodyToSendPDUSMS__,&buferBodyToSendPDUSMS[150],75);
1138  046a ae004b        	ldw	x,#75
1139  046d               L02:
1140  046d d605c1        	ld	a,(_buferBodyToSendPDUSMS+149,x)
1141  0470 d70405        	ld	(_buferBodyToSendPDUSMS__-1,x),a
1142  0473 5a            	decw	x
1143  0474 26f7          	jrne	L02
1144                     ; 432 				buferBodyToSendPDUSMS__[75]='\0';
1146  0476 725f0451      	clr	_buferBodyToSendPDUSMS__+75
1147                     ; 433 				printf(buferBodyToSendPDUSMS__);
1149  047a ae0406        	ldw	x,#_buferBodyToSendPDUSMS__
1150  047d cd0000        	call	_printf
1152                     ; 435 				memcpy(buferBodyToSendPDUSMS__,&buferBodyToSendPDUSMS[225],75);
1154  0480 ae004b        	ldw	x,#75
1155  0483               L22:
1156  0483 d6060c        	ld	a,(_buferBodyToSendPDUSMS+224,x)
1157  0486 d70405        	ld	(_buferBodyToSendPDUSMS__-1,x),a
1158  0489 5a            	decw	x
1159  048a 26f7          	jrne	L22
1160                     ; 436 				buferBodyToSendPDUSMS__[75]='\0';
1162  048c 725f0451      	clr	_buferBodyToSendPDUSMS__+75
1163                     ; 437 				printf(buferBodyToSendPDUSMS__);/**/
1165  0490 ae0406        	ldw	x,#_buferBodyToSendPDUSMS__
1166  0493 cd0000        	call	_printf
1168                     ; 438 				memcpy(buferBodyToSendPDUSMS__,&buferBodyToSendPDUSMS[300],50);
1170  0496 ae0032        	ldw	x,#50
1171  0499               L42:
1172  0499 d60657        	ld	a,(_buferBodyToSendPDUSMS+299,x)
1173  049c d70405        	ld	(_buferBodyToSendPDUSMS__-1,x),a
1174  049f 5a            	decw	x
1175  04a0 26f7          	jrne	L42
1176                     ; 439 				buferBodyToSendPDUSMS__[50]='\0';
1178  04a2 725f0438      	clr	_buferBodyToSendPDUSMS__+50
1179                     ; 440 				printf(buferBodyToSendPDUSMS__);
1181  04a6 ae0406        	ldw	x,#_buferBodyToSendPDUSMS__
1182  04a9 cd0000        	call	_printf
1184                     ; 442 				printf("%c",(char)26);
1186  04ac 4b1a          	push	#26
1187  04ae ae00a4        	ldw	x,#L143
1188  04b1 cd0000        	call	_printf
1190  04b4 84            	pop	a
1191                     ; 443 				modemDrvPDUSMSSendStepCnt++;
1193  04b5 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1194  04b7 1c0001        	addw	x,#1
1195  04ba bf08          	ldw	_modemDrvPDUSMSSendStepCnt,x
1196                     ; 444 				bOK=0;
1198  04bc 3f00          	clr	_bOK
1199  04be 2044          	jra	L743
1200  04c0               L773:
1201                     ; 447 		else if(modemDrvPDUSMSSendStepCnt==14)
1203  04c0 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1204  04c2 a3000e        	cpw	x,#14
1205  04c5 2617          	jrne	L504
1206                     ; 449 			if(bOK||bERROR)
1208  04c7 3d00          	tnz	_bOK
1209  04c9 2604          	jrne	L114
1211  04cb 3d00          	tnz	_bERROR
1212  04cd 2735          	jreq	L743
1213  04cf               L114:
1214                     ; 451 				printf("AT+CMGF=1\r");
1216  04cf ae00b4        	ldw	x,#L713
1217  04d2 cd0000        	call	_printf
1219                     ; 452 				modemDrvPDUSMSSendStepCnt++;
1221  04d5 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1222  04d7 1c0001        	addw	x,#1
1223  04da bf08          	ldw	_modemDrvPDUSMSSendStepCnt,x
1224  04dc 2026          	jra	L743
1225  04de               L504:
1226                     ; 455 		else if(modemDrvPDUSMSSendStepCnt==25)
1228  04de be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1229  04e0 a30019        	cpw	x,#25
1230  04e3 260c          	jrne	L514
1231                     ; 457 			modemDrvPDUSMSSendStepCnt=0;
1233  04e5 5f            	clrw	x
1234  04e6 bf08          	ldw	_modemDrvPDUSMSSendStepCnt,x
1235                     ; 458 			bBUY_SMS=1;
1237  04e8 35010000      	mov	_bBUY_SMS,#1
1238                     ; 459 			modemDrvWatchDogCnt=0;
1240  04ec 5f            	clrw	x
1241  04ed bf04          	ldw	_modemDrvWatchDogCnt,x
1243  04ef 2013          	jra	L743
1244  04f1               L514:
1245                     ; 463 			if(modemDrvPDUSMSSendStepCnt&&(modemDrvPDUSMSSendStepCnt<1000))	modemDrvPDUSMSSendStepCnt++;
1247  04f1 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1248  04f3 270f          	jreq	L743
1250  04f5 9c            	rvf
1251  04f6 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1252  04f8 a303e8        	cpw	x,#1000
1253  04fb 2e07          	jrsge	L743
1256  04fd be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
1257  04ff 1c0001        	addw	x,#1
1258  0502 bf08          	ldw	_modemDrvPDUSMSSendStepCnt,x
1259  0504               L743:
1260                     ; 467 	if(modemDrvPowerDownStepCnt)	//полное выключение системы
1262  0504 be0a          	ldw	x,_modemDrvPowerDownStepCnt
1263  0506 2603          	jrne	L64
1264  0508 cc05b5        	jp	L161
1265  050b               L64:
1266                     ; 470 		if(modemDrvWatchDogCnt==0)modemDrvWatchDogCnt=200;
1268  050b be04          	ldw	x,_modemDrvWatchDogCnt
1269  050d 2607          	jrne	L524
1272  050f ae00c8        	ldw	x,#200
1273  0512 bf04          	ldw	_modemDrvWatchDogCnt,x
1275  0514 200d          	jra	L724
1276  0516               L524:
1277                     ; 473 			if(modemDrvWatchDogCnt)
1279  0516 be04          	ldw	x,_modemDrvWatchDogCnt
1280  0518 2709          	jreq	L724
1281                     ; 475 				modemDrvWatchDogCnt--;	
1283  051a be04          	ldw	x,_modemDrvWatchDogCnt
1284  051c 1d0001        	subw	x,#1
1285  051f bf04          	ldw	_modemDrvWatchDogCnt,x
1286                     ; 476 				if(modemDrvWatchDogCnt==0)
1288  0521 be04          	ldw	x,_modemDrvWatchDogCnt
1289  0523               L724:
1290                     ; 483 		if(modemDrvPowerDownStepCnt==11)
1292  0523 be0a          	ldw	x,_modemDrvPowerDownStepCnt
1293  0525 a3000b        	cpw	x,#11
1294  0528 2613          	jrne	L534
1295                     ; 485 			printf("AT + CBC \r");
1297  052a ae0082        	ldw	x,#L734
1298  052d cd0000        	call	_printf
1300                     ; 486 			bCBC=1;
1302  0530 35010000      	mov	_bCBC,#1
1303                     ; 487 			modemDrvPowerDownStepCnt++;
1305  0534 be0a          	ldw	x,_modemDrvPowerDownStepCnt
1306  0536 1c0001        	addw	x,#1
1307  0539 bf0a          	ldw	_modemDrvPowerDownStepCnt,x
1309  053b 2078          	jra	L161
1310  053d               L534:
1311                     ; 489 		else if(modemDrvPowerDownStepCnt==12)
1313  053d be0a          	ldw	x,_modemDrvPowerDownStepCnt
1314  053f a3000c        	cpw	x,#12
1315  0542 2631          	jrne	L344
1316                     ; 491 			if(bCBC==2)
1318  0544 b600          	ld	a,_bCBC
1319  0546 a102          	cp	a,#2
1320  0548 266b          	jrne	L161
1321                     ; 493 				sprintf(tempRussianText,"Напряжение аккумулятора %sв, система выключена до появления сети",cbc_temp);
1323  054a ae0000        	ldw	x,#_cbc_temp
1324  054d 89            	pushw	x
1325  054e ae0041        	ldw	x,#L744
1326  0551 89            	pushw	x
1327  0552 ae0488        	ldw	x,#_tempRussianText
1328  0555 cd0000        	call	_sprintf
1330  0558 5b04          	addw	sp,#4
1331                     ; 494 				modem_send_sms('p',MAIN_NUMBER,tempRussianText);
1333  055a ae0488        	ldw	x,#_tempRussianText
1334  055d 89            	pushw	x
1335  055e ae0000        	ldw	x,#_MAIN_NUMBER
1336  0561 89            	pushw	x
1337  0562 a670          	ld	a,#112
1338  0564 ad55          	call	_modem_send_sms
1340  0566 5b04          	addw	sp,#4
1341                     ; 495 				bBUY_SMS=0;
1343  0568 3f00          	clr	_bBUY_SMS
1344                     ; 496 				modemDrvPowerDownStepCnt++;
1346  056a be0a          	ldw	x,_modemDrvPowerDownStepCnt
1347  056c 1c0001        	addw	x,#1
1348  056f bf0a          	ldw	_modemDrvPowerDownStepCnt,x
1349                     ; 497 				bCBC=0;
1351  0571 3f00          	clr	_bCBC
1352  0573 2040          	jra	L161
1353  0575               L344:
1354                     ; 501 		else if(modemDrvPowerDownStepCnt==13)
1356  0575 be0a          	ldw	x,_modemDrvPowerDownStepCnt
1357  0577 a3000d        	cpw	x,#13
1358  057a 2615          	jrne	L354
1359                     ; 503 			if(bBUY_SMS==1)
1361  057c b600          	ld	a,_bBUY_SMS
1362  057e a101          	cp	a,#1
1363  0580 2633          	jrne	L161
1364                     ; 505 				printf("AT + CPOWD = 1 \r");
1366  0582 ae0030        	ldw	x,#L754
1367  0585 cd0000        	call	_printf
1369                     ; 506 				modemDrvPowerDownStepCnt++;
1371  0588 be0a          	ldw	x,_modemDrvPowerDownStepCnt
1372  058a 1c0001        	addw	x,#1
1373  058d bf0a          	ldw	_modemDrvPowerDownStepCnt,x
1374  058f 2024          	jra	L161
1375  0591               L354:
1376                     ; 510 		else if(modemDrvPowerDownStepCnt==20)
1378  0591 be0a          	ldw	x,_modemDrvPowerDownStepCnt
1379  0593 a30014        	cpw	x,#20
1380  0596 260e          	jrne	L364
1381                     ; 512 			modemDrvWatchDogCnt=0;
1383  0598 5f            	clrw	x
1384  0599 bf04          	ldw	_modemDrvWatchDogCnt,x
1385                     ; 513 			GPIOD->ODR|=0b00111100;
1387  059b c6500f        	ld	a,20495
1388  059e aa3c          	or	a,#60
1389  05a0 c7500f        	ld	20495,a
1390                     ; 514 			halt();
1393  05a3 8e            halt
1397  05a4 200f          	jra	L161
1398  05a6               L364:
1399                     ; 516 		else if(modemDrvPowerDownStepCnt<1000)
1401  05a6 9c            	rvf
1402  05a7 be0a          	ldw	x,_modemDrvPowerDownStepCnt
1403  05a9 a303e8        	cpw	x,#1000
1404  05ac 2e07          	jrsge	L161
1405                     ; 518 			modemDrvPowerDownStepCnt++;
1407  05ae be0a          	ldw	x,_modemDrvPowerDownStepCnt
1408  05b0 1c0001        	addw	x,#1
1409  05b3 bf0a          	ldw	_modemDrvPowerDownStepCnt,x
1410  05b5               L161:
1411                     ; 523 bOK=0;
1413  05b5 3f00          	clr	_bOK
1414                     ; 524 bERROR=0;
1416  05b7 3f00          	clr	_bERROR
1417                     ; 525 enableInterrupts();
1420  05b9 9a            rim
1422                     ; 526 }
1426  05ba 81            	ret
1483                     ; 529 void modem_send_sms(char mode, char *number, char *text)
1483                     ; 530 {
1484                     	switch	.text
1485  05bb               _modem_send_sms:
1487  05bb 88            	push	a
1488       00000000      OFST:	set	0
1491                     ; 531 strncpy((char*)&(smsFifo[smsFifoWrPtr].text),text,70);
1493  05bc ae0046        	ldw	x,#70
1494  05bf 89            	pushw	x
1495  05c0 1e08          	ldw	x,(OFST+8,sp)
1496  05c2 89            	pushw	x
1497  05c3 c604e3        	ld	a,_smsFifoWrPtr
1498  05c6 97            	ld	xl,a
1499  05c7 a664          	ld	a,#100
1500  05c9 42            	mul	x,a
1501  05ca 1c0000        	addw	x,#_smsFifo
1502  05cd cd0000        	call	_strncpy
1504  05d0 5b04          	addw	sp,#4
1505                     ; 532 strncpy((char*)&(smsFifo[smsFifoWrPtr].number),number,10);
1507  05d2 ae000a        	ldw	x,#10
1508  05d5 89            	pushw	x
1509  05d6 1e06          	ldw	x,(OFST+6,sp)
1510  05d8 89            	pushw	x
1511  05d9 c604e3        	ld	a,_smsFifoWrPtr
1512  05dc 97            	ld	xl,a
1513  05dd a664          	ld	a,#100
1514  05df 42            	mul	x,a
1515  05e0 1c0050        	addw	x,#_smsFifo+80
1516  05e3 cd0000        	call	_strncpy
1518  05e6 5b04          	addw	sp,#4
1519                     ; 533 smsFifo[smsFifoWrPtr].mode=mode;
1521  05e8 c604e3        	ld	a,_smsFifoWrPtr
1522  05eb 97            	ld	xl,a
1523  05ec a664          	ld	a,#100
1524  05ee 42            	mul	x,a
1525  05ef 7b01          	ld	a,(OFST+1,sp)
1526  05f1 d7005b        	ld	(_smsFifo+91,x),a
1527                     ; 535 smsFifoWrPtr++;
1529  05f4 725c04e3      	inc	_smsFifoWrPtr
1530                     ; 536 if(smsFifoWrPtr>=10)smsFifoWrPtr=0;
1532  05f8 c604e3        	ld	a,_smsFifoWrPtr
1533  05fb a10a          	cp	a,#10
1534  05fd 2504          	jrult	L715
1537  05ff 725f04e3      	clr	_smsFifoWrPtr
1538  0603               L715:
1539                     ; 538 }
1542  0603 84            	pop	a
1543  0604 81            	ret
1642                     ; 541 void text2PDU(char* text, char* adr)
1642                     ; 542 {
1643                     	switch	.text
1644  0605               _text2PDU:
1646  0605 89            	pushw	x
1647  0606 520a          	subw	sp,#10
1648       0000000a      OFST:	set	10
1651                     ; 544 char i=0;
1653  0608 0f0a          	clr	(OFST+0,sp)
1654                     ; 545 lenPDUSMS=0;
1656  060a 5f            	clrw	x
1657  060b cf052a        	ldw	_lenPDUSMS,x
1658                     ; 546 memset(adr,'\0',350);
1660  060e 1e0f          	ldw	x,(OFST+5,sp)
1661  0610 bf00          	ldw	c_x,x
1662  0612 ae015e        	ldw	x,#350
1663  0615               L45:
1664  0615 5a            	decw	x
1665  0616 926f00        	clr	([c_x.w],x)
1666  0619 5d            	tnzw	x
1667  061a 26f9          	jrne	L45
1668                     ; 547 strcpy(adr,"00");
1670  061c ae002d        	ldw	x,#L765
1671  061f 89            	pushw	x
1672  0620 1e11          	ldw	x,(OFST+7,sp)
1673  0622 cd0000        	call	_strcpy
1675  0625 85            	popw	x
1676  0626               L175:
1677                     ; 550 	char c = text[i];
1679  0626 7b0b          	ld	a,(OFST+1,sp)
1680  0628 97            	ld	xl,a
1681  0629 7b0c          	ld	a,(OFST+2,sp)
1682  062b 1b0a          	add	a,(OFST+0,sp)
1683  062d 2401          	jrnc	L65
1684  062f 5c            	incw	x
1685  0630               L65:
1686  0630 02            	rlwa	x,a
1687  0631 f6            	ld	a,(x)
1688  0632 6b07          	ld	(OFST-3,sp),a
1689                     ; 551 	if(c==0)break;
1691  0634 0d07          	tnz	(OFST-3,sp)
1692  0636 2637          	jrne	L575
1694                     ; 567 sprintf(temp_buf,"%02X",lenPDUSMS);
1696  0638 ce052a        	ldw	x,_lenPDUSMS
1697  063b 89            	pushw	x
1698  063c ae0023        	ldw	x,#L706
1699  063f 89            	pushw	x
1700  0640 96            	ldw	x,sp
1701  0641 1c000c        	addw	x,#OFST+2
1702  0644 cd0000        	call	_sprintf
1704  0647 5b04          	addw	sp,#4
1705                     ; 569 memcpy(adr,temp_buf,2);
1707  0649 1e0f          	ldw	x,(OFST+5,sp)
1708  064b bf00          	ldw	c_x,x
1709  064d 9096          	ldw	y,sp
1710  064f 72a90008      	addw	y,#OFST-2
1711  0653 90bf00        	ldw	c_y,y
1712  0656 ae0002        	ldw	x,#2
1713  0659               L06:
1714  0659 5a            	decw	x
1715  065a 92d600        	ld	a,([c_y.w],x)
1716  065d 92d700        	ld	([c_x.w],x),a
1717  0660 5d            	tnzw	x
1718  0661 26f6          	jrne	L06
1719                     ; 571 lenPDUSMS+=13;
1721  0663 ce052a        	ldw	x,_lenPDUSMS
1722  0666 1c000d        	addw	x,#13
1723  0669 cf052a        	ldw	_lenPDUSMS,x
1724                     ; 574 }
1727  066c 5b0c          	addw	sp,#12
1728  066e 81            	ret
1729  066f               L575:
1730                     ; 552 	else if(c<0x7f)
1732  066f 7b07          	ld	a,(OFST-3,sp)
1733  0671 a17f          	cp	a,#127
1734  0673 241f          	jruge	L106
1735                     ; 555 		sprintf(temp,"%04X",(short)c);
1737  0675 7b07          	ld	a,(OFST-3,sp)
1738  0677 5f            	clrw	x
1739  0678 97            	ld	xl,a
1740  0679 89            	pushw	x
1741  067a ae0028        	ldw	x,#L306
1742  067d 89            	pushw	x
1743  067e 96            	ldw	x,sp
1744  067f 1c0005        	addw	x,#OFST-5
1745  0682 cd0000        	call	_sprintf
1747  0685 5b04          	addw	sp,#4
1748                     ; 556 		strcat(adr,temp);
1750  0687 96            	ldw	x,sp
1751  0688 1c0001        	addw	x,#OFST-9
1752  068b 89            	pushw	x
1753  068c 1e11          	ldw	x,(OFST+7,sp)
1754  068e cd0000        	call	_strcat
1756  0691 85            	popw	x
1758  0692 2020          	jra	L775
1759  0694               L106:
1760                     ; 561 		sprintf(temp,"%04X",(short)c+0x0350);
1762  0694 7b07          	ld	a,(OFST-3,sp)
1763  0696 5f            	clrw	x
1764  0697 97            	ld	xl,a
1765  0698 1c0350        	addw	x,#848
1766  069b 89            	pushw	x
1767  069c ae0028        	ldw	x,#L306
1768  069f 89            	pushw	x
1769  06a0 96            	ldw	x,sp
1770  06a1 1c0005        	addw	x,#OFST-5
1771  06a4 cd0000        	call	_sprintf
1773  06a7 5b04          	addw	sp,#4
1774                     ; 562 		strcat(adr,temp);
1776  06a9 96            	ldw	x,sp
1777  06aa 1c0001        	addw	x,#OFST-9
1778  06ad 89            	pushw	x
1779  06ae 1e11          	ldw	x,(OFST+7,sp)
1780  06b0 cd0000        	call	_strcat
1782  06b3 85            	popw	x
1783  06b4               L775:
1784                     ; 564 	lenPDUSMS+=2;
1786  06b4 ce052a        	ldw	x,_lenPDUSMS
1787  06b7 1c0002        	addw	x,#2
1788  06ba cf052a        	ldw	_lenPDUSMS,x
1789                     ; 565 	i++;
1791  06bd 0c0a          	inc	(OFST+0,sp)
1793  06bf ac260626      	jpf	L175
1898                     ; 577 void PDU2text(char* text)
1898                     ; 578 {
1899                     	switch	.text
1900  06c3               _PDU2text:
1902  06c3 89            	pushw	x
1903  06c4 520d          	subw	sp,#13
1904       0000000d      OFST:	set	13
1907                     ; 580 char i=0;
1909  06c6 0f0d          	clr	(OFST+0,sp)
1910                     ; 581 char ir=0;
1912  06c8 0f0c          	clr	(OFST-1,sp)
1913  06ca               L366:
1914                     ; 586 	char c = text[i];
1916  06ca 7b0e          	ld	a,(OFST+1,sp)
1917  06cc 97            	ld	xl,a
1918  06cd 7b0f          	ld	a,(OFST+2,sp)
1919  06cf 1b0d          	add	a,(OFST+0,sp)
1920  06d1 2401          	jrnc	L46
1921  06d3 5c            	incw	x
1922  06d4               L46:
1923  06d4 02            	rlwa	x,a
1924  06d5 f6            	ld	a,(x)
1925  06d6 6b03          	ld	(OFST-10,sp),a
1926                     ; 590 	if(c==0)
1928  06d8 0d03          	tnz	(OFST-10,sp)
1929  06da 260b          	jrne	L766
1930                     ; 592 		russianText[ir]='\0';
1932  06dc 7b0c          	ld	a,(OFST-1,sp)
1933  06de 5f            	clrw	x
1934  06df 97            	ld	xl,a
1935  06e0 724f04e4      	clr	(_russianText,x)
1936                     ; 593 		break;
1937                     ; 614 }
1940  06e4 5b0f          	addw	sp,#15
1941  06e6 81            	ret
1942  06e7               L766:
1943                     ; 595 	memcpy(cc,&text[i],2);
1945  06e7 ae0002        	ldw	x,#2
1946  06ea 89            	pushw	x
1947  06eb 7b10          	ld	a,(OFST+3,sp)
1948  06ed 97            	ld	xl,a
1949  06ee 7b11          	ld	a,(OFST+4,sp)
1950  06f0 1b0f          	add	a,(OFST+2,sp)
1951  06f2 2401          	jrnc	L66
1952  06f4 5c            	incw	x
1953  06f5               L66:
1954  06f5 02            	rlwa	x,a
1955  06f6 89            	pushw	x
1956  06f7 01            	rrwa	x,a
1957  06f8 96            	ldw	x,sp
1958  06f9 1c0008        	addw	x,#OFST-5
1959  06fc cd0000        	call	_memcpy
1961  06ff 5b04          	addw	sp,#4
1962                     ; 596 	cc[2]='\0';
1964  0701 0f06          	clr	(OFST-7,sp)
1965                     ; 597 	memcpy(cccc,&text[i],4);
1967  0703 ae0004        	ldw	x,#4
1968  0706 89            	pushw	x
1969  0707 7b10          	ld	a,(OFST+3,sp)
1970  0709 97            	ld	xl,a
1971  070a 7b11          	ld	a,(OFST+4,sp)
1972  070c 1b0f          	add	a,(OFST+2,sp)
1973  070e 2401          	jrnc	L07
1974  0710 5c            	incw	x
1975  0711               L07:
1976  0711 02            	rlwa	x,a
1977  0712 89            	pushw	x
1978  0713 01            	rrwa	x,a
1979  0714 96            	ldw	x,sp
1980  0715 1c000a        	addw	x,#OFST-3
1981  0718 cd0000        	call	_memcpy
1983  071b 5b04          	addw	sp,#4
1984                     ; 598 	cccc[4]='\0';
1986  071d 0f0a          	clr	(OFST-3,sp)
1987                     ; 599 	if(strstr(cc,"00"))
1989  071f ae002d        	ldw	x,#L765
1990  0722 89            	pushw	x
1991  0723 96            	ldw	x,sp
1992  0724 1c0006        	addw	x,#OFST-7
1993  0727 cd0000        	call	_strstr
1995  072a 5b02          	addw	sp,#2
1996  072c a30000        	cpw	x,#0
1997  072f 2715          	jreq	L176
1998                     ; 601 		temp= (unsigned char)strtol(cccc,NULL,16);
2000  0731 ae0010        	ldw	x,#16
2001  0734 89            	pushw	x
2002  0735 5f            	clrw	x
2003  0736 89            	pushw	x
2004  0737 96            	ldw	x,sp
2005  0738 1c000a        	addw	x,#OFST-3
2006  073b cd0000        	call	_strtol
2008  073e 5b04          	addw	sp,#4
2009  0740 b603          	ld	a,c_lreg+3
2010  0742 6b0b          	ld	(OFST-2,sp),a
2012  0744 203c          	jra	L376
2013  0746               L176:
2014                     ; 603 	else if(strstr(cc,"04"))	
2016  0746 ae0020        	ldw	x,#L776
2017  0749 89            	pushw	x
2018  074a 96            	ldw	x,sp
2019  074b 1c0006        	addw	x,#OFST-7
2020  074e cd0000        	call	_strstr
2022  0751 5b02          	addw	sp,#2
2023  0753 a30000        	cpw	x,#0
2024  0756 272a          	jreq	L376
2025                     ; 606 		tempI=strtol(cccc,NULL,16);
2027  0758 ae0010        	ldw	x,#16
2028  075b 89            	pushw	x
2029  075c 5f            	clrw	x
2030  075d 89            	pushw	x
2031  075e 96            	ldw	x,sp
2032  075f 1c000a        	addw	x,#OFST-3
2033  0762 cd0000        	call	_strtol
2035  0765 5b04          	addw	sp,#4
2036  0767 be02          	ldw	x,c_lreg+2
2037  0769 1f01          	ldw	(OFST-12,sp),x
2038                     ; 607 		tempI-=0x0350;
2040  076b 1e01          	ldw	x,(OFST-12,sp)
2041  076d 1d0350        	subw	x,#848
2042  0770 1f01          	ldw	(OFST-12,sp),x
2043                     ; 608 		temp= (unsigned char)(tempI);
2045  0772 7b02          	ld	a,(OFST-11,sp)
2046  0774 6b0b          	ld	(OFST-2,sp),a
2047                     ; 609 		if((temp>=0xE0)&&(temp<=0xFF))temp-=0x20;
2049  0776 7b0b          	ld	a,(OFST-2,sp)
2050  0778 a1e0          	cp	a,#224
2051  077a 2506          	jrult	L376
2054  077c 7b0b          	ld	a,(OFST-2,sp)
2055  077e a020          	sub	a,#32
2056  0780 6b0b          	ld	(OFST-2,sp),a
2057  0782               L376:
2058                     ; 611 	russianText[ir++]=tolower(temp);
2060  0782 7b0c          	ld	a,(OFST-1,sp)
2061  0784 97            	ld	xl,a
2062  0785 0c0c          	inc	(OFST-1,sp)
2063  0787 9f            	ld	a,xl
2064  0788 5f            	clrw	x
2065  0789 97            	ld	xl,a
2066  078a 89            	pushw	x
2067  078b 7b0d          	ld	a,(OFST+0,sp)
2068  078d cd0000        	call	_tolower
2070  0790 85            	popw	x
2071  0791 d704e4        	ld	(_russianText,x),a
2072                     ; 612 	i+=4;
2074  0794 7b0d          	ld	a,(OFST+0,sp)
2075  0796 ab04          	add	a,#4
2076  0798 6b0d          	ld	(OFST+0,sp),a
2078  079a acca06ca      	jpf	L366
2155                     ; 618 char* find_number_in_text(char* text)
2155                     ; 619 {
2156                     	switch	.text
2157  079e               _find_number_in_text:
2159  079e 89            	pushw	x
2160  079f 5204          	subw	sp,#4
2161       00000004      OFST:	set	4
2164                     ; 622 len=strlen(text);
2166  07a1 cd0000        	call	_strlen
2168  07a4 1f01          	ldw	(OFST-3,sp),x
2169                     ; 623 firstDigit=strcspn(text,"1234567890");
2171  07a6 ae0015        	ldw	x,#L147
2172  07a9 89            	pushw	x
2173  07aa 1e07          	ldw	x,(OFST+3,sp)
2174  07ac cd0000        	call	_strcspn
2176  07af 5b02          	addw	sp,#2
2177  07b1 1f03          	ldw	(OFST-1,sp),x
2178                     ; 624 if(len==firstDigit) return NULL;
2180  07b3 1e01          	ldw	x,(OFST-3,sp)
2181  07b5 1303          	cpw	x,(OFST-1,sp)
2182  07b7 2603          	jrne	L347
2185  07b9 5f            	clrw	x
2187  07ba 201c          	jra	L47
2188  07bc               L347:
2189                     ; 626 ptr_temp=(char*)(text+firstDigit);
2191  07bc 1e05          	ldw	x,(OFST+1,sp)
2192  07be 72fb03        	addw	x,(OFST-1,sp)
2193  07c1 1f03          	ldw	(OFST-1,sp),x
2194                     ; 627 lastDigit=strspn(ptr_temp,"1234567890");
2196  07c3 ae0015        	ldw	x,#L147
2197  07c6 89            	pushw	x
2198  07c7 1e05          	ldw	x,(OFST+1,sp)
2199  07c9 cd0000        	call	_strspn
2201  07cc 5b02          	addw	sp,#2
2202  07ce 1f01          	ldw	(OFST-3,sp),x
2203                     ; 629 return (char*)(ptr_temp+lastDigit-10);
2205  07d0 1e03          	ldw	x,(OFST-1,sp)
2206  07d2 72fb01        	addw	x,(OFST-3,sp)
2207  07d5 1d000a        	subw	x,#10
2209  07d8               L47:
2211  07d8 5b06          	addw	sp,#6
2212  07da 81            	ret
2275                     ; 634 char find_this_number_in_autorized(char* number)
2275                     ; 635 {
2276                     	switch	.text
2277  07db               _find_this_number_in_autorized:
2279  07db 89            	pushw	x
2280  07dc 5211          	subw	sp,#17
2281       00000011      OFST:	set	17
2284                     ; 639 if(AUTH_NUMBER_FLAGS&0x01)
2286  07de c60000        	ld	a,_AUTH_NUMBER_FLAGS
2287  07e1 a501          	bcp	a,#1
2288  07e3 2727          	jreq	L377
2289                     ; 641 	strncpy(temp_tt,MAIN_NUMBER,10);	
2291  07e5 ae000a        	ldw	x,#10
2292  07e8 89            	pushw	x
2293  07e9 ae0000        	ldw	x,#_MAIN_NUMBER
2294  07ec 89            	pushw	x
2295  07ed 96            	ldw	x,sp
2296  07ee 1c0007        	addw	x,#OFST-10
2297  07f1 cd0000        	call	_strncpy
2299  07f4 5b04          	addw	sp,#4
2300                     ; 642 	ttt=strstr(temp_tt,number);	
2302  07f6 1e12          	ldw	x,(OFST+1,sp)
2303  07f8 89            	pushw	x
2304  07f9 96            	ldw	x,sp
2305  07fa 1c0005        	addw	x,#OFST-12
2306  07fd cd0000        	call	_strstr
2308  0800 5b02          	addw	sp,#2
2309  0802 1f01          	ldw	(OFST-16,sp),x
2310                     ; 643 	if(ttt) return 1;
2312  0804 1e01          	ldw	x,(OFST-16,sp)
2313  0806 2704          	jreq	L377
2316  0808 a601          	ld	a,#1
2318  080a 202c          	jra	L001
2319  080c               L377:
2320                     ; 645 if(AUTH_NUMBER_FLAGS&0x02)
2322  080c c60000        	ld	a,_AUTH_NUMBER_FLAGS
2323  080f a502          	bcp	a,#2
2324  0811 2728          	jreq	L777
2325                     ; 647 	strncpy(temp_tt,AUTH_NUMBER_1,10);
2327  0813 ae000a        	ldw	x,#10
2328  0816 89            	pushw	x
2329  0817 ae0000        	ldw	x,#_AUTH_NUMBER_1
2330  081a 89            	pushw	x
2331  081b 96            	ldw	x,sp
2332  081c 1c0007        	addw	x,#OFST-10
2333  081f cd0000        	call	_strncpy
2335  0822 5b04          	addw	sp,#4
2336                     ; 648 	ttt=strstr(temp_tt,number);
2338  0824 1e12          	ldw	x,(OFST+1,sp)
2339  0826 89            	pushw	x
2340  0827 96            	ldw	x,sp
2341  0828 1c0005        	addw	x,#OFST-12
2342  082b cd0000        	call	_strstr
2344  082e 5b02          	addw	sp,#2
2345  0830 1f01          	ldw	(OFST-16,sp),x
2346                     ; 649 	if(ttt) return 1;
2348  0832 1e01          	ldw	x,(OFST-16,sp)
2349  0834 2705          	jreq	L777
2352  0836 a601          	ld	a,#1
2354  0838               L001:
2356  0838 5b13          	addw	sp,#19
2357  083a 81            	ret
2358  083b               L777:
2359                     ; 651 if(AUTH_NUMBER_FLAGS&0x04)
2361  083b c60000        	ld	a,_AUTH_NUMBER_FLAGS
2362  083e a504          	bcp	a,#4
2363  0840 2727          	jreq	L3001
2364                     ; 653 	strncpy(temp_tt,AUTH_NUMBER_2,10);		
2366  0842 ae000a        	ldw	x,#10
2367  0845 89            	pushw	x
2368  0846 ae0000        	ldw	x,#_AUTH_NUMBER_2
2369  0849 89            	pushw	x
2370  084a 96            	ldw	x,sp
2371  084b 1c0007        	addw	x,#OFST-10
2372  084e cd0000        	call	_strncpy
2374  0851 5b04          	addw	sp,#4
2375                     ; 654 	ttt=strstr(temp_tt,number);
2377  0853 1e12          	ldw	x,(OFST+1,sp)
2378  0855 89            	pushw	x
2379  0856 96            	ldw	x,sp
2380  0857 1c0005        	addw	x,#OFST-12
2381  085a cd0000        	call	_strstr
2383  085d 5b02          	addw	sp,#2
2384  085f 1f01          	ldw	(OFST-16,sp),x
2385                     ; 655 	if(ttt) return 1;
2387  0861 1e01          	ldw	x,(OFST-16,sp)
2388  0863 2704          	jreq	L3001
2391  0865 a601          	ld	a,#1
2393  0867 20cf          	jra	L001
2394  0869               L3001:
2395                     ; 657 if(AUTH_NUMBER_FLAGS&0x08)
2397  0869 c60000        	ld	a,_AUTH_NUMBER_FLAGS
2398  086c a508          	bcp	a,#8
2399  086e 2727          	jreq	L7001
2400                     ; 659 	strncpy(temp_tt,AUTH_NUMBER_3,10);		
2402  0870 ae000a        	ldw	x,#10
2403  0873 89            	pushw	x
2404  0874 ae0000        	ldw	x,#_AUTH_NUMBER_3
2405  0877 89            	pushw	x
2406  0878 96            	ldw	x,sp
2407  0879 1c0007        	addw	x,#OFST-10
2408  087c cd0000        	call	_strncpy
2410  087f 5b04          	addw	sp,#4
2411                     ; 660 	ttt=strstr(temp_tt,number);
2413  0881 1e12          	ldw	x,(OFST+1,sp)
2414  0883 89            	pushw	x
2415  0884 96            	ldw	x,sp
2416  0885 1c0005        	addw	x,#OFST-12
2417  0888 cd0000        	call	_strstr
2419  088b 5b02          	addw	sp,#2
2420  088d 1f01          	ldw	(OFST-16,sp),x
2421                     ; 661 	if(ttt) return 1;
2423  088f 1e01          	ldw	x,(OFST-16,sp)
2424  0891 2704          	jreq	L7001
2427  0893 a601          	ld	a,#1
2429  0895 20a1          	jra	L001
2430  0897               L7001:
2431                     ; 663 return 0;
2433  0897 4f            	clr	a
2435  0898 209e          	jra	L001
2460                     ; 669 char find_empty_number_cell(void)
2460                     ; 670 {
2461                     	switch	.text
2462  089a               _find_empty_number_cell:
2466                     ; 671 if((AUTH_NUMBER_FLAGS&0x02)==0) return 1;
2468  089a c60000        	ld	a,_AUTH_NUMBER_FLAGS
2469  089d a502          	bcp	a,#2
2470  089f 2603          	jrne	L3201
2473  08a1 a601          	ld	a,#1
2476  08a3 81            	ret
2477  08a4               L3201:
2478                     ; 672 if((AUTH_NUMBER_FLAGS&0x04)==0) return 2;
2480  08a4 c60000        	ld	a,_AUTH_NUMBER_FLAGS
2481  08a7 a504          	bcp	a,#4
2482  08a9 2603          	jrne	L5201
2485  08ab a602          	ld	a,#2
2488  08ad 81            	ret
2489  08ae               L5201:
2490                     ; 673 if((AUTH_NUMBER_FLAGS&0x08)==0) return 3;
2492  08ae c60000        	ld	a,_AUTH_NUMBER_FLAGS
2493  08b1 a508          	bcp	a,#8
2494  08b3 2603          	jrne	L7201
2497  08b5 a603          	ld	a,#3
2500  08b7 81            	ret
2501  08b8               L7201:
2502                     ; 674 return 0;
2504  08b8 4f            	clr	a
2507  08b9 81            	ret
2547                     ; 679 void sms_fifo_drv(void)
2547                     ; 680 {
2548                     	switch	.text
2549  08ba               _sms_fifo_drv:
2553                     ; 681 if((/*(modemState!=MS_LINKED)&&*/(modemState!=MS_LINKED_INITIALIZED))||(modemDrvTextSMSSendStepCnt)||(modemDrvPDUSMSSendStepCnt)) return;
2555  08ba b602          	ld	a,_modemState
2556  08bc a105          	cp	a,#5
2557  08be 2608          	jrne	L3401
2559  08c0 be06          	ldw	x,_modemDrvTextSMSSendStepCnt
2560  08c2 2604          	jrne	L3401
2562  08c4 be08          	ldw	x,_modemDrvPDUSMSSendStepCnt
2563  08c6 2701          	jreq	L1401
2564  08c8               L3401:
2568  08c8 81            	ret
2569  08c9               L1401:
2570                     ; 683 if(smsFifoRdPtr!=smsFifoWrPtr)
2572  08c9 c604e2        	ld	a,_smsFifoRdPtr
2573  08cc c104e3        	cp	a,_smsFifoWrPtr
2574  08cf 2603          	jrne	L601
2575  08d1 cc0a1b        	jp	L7401
2576  08d4               L601:
2577                     ; 685 	if(smsFifo[smsFifoRdPtr].mode=='t')
2579  08d4 c604e2        	ld	a,_smsFifoRdPtr
2580  08d7 97            	ld	xl,a
2581  08d8 a664          	ld	a,#100
2582  08da 42            	mul	x,a
2583  08db d6005b        	ld	a,(_smsFifo+91,x)
2584  08de a174          	cp	a,#116
2585  08e0 264d          	jrne	L1501
2586                     ; 687 		disableInterrupts();
2589  08e2 9b            sim
2591                     ; 688 		numberToSendSMS[0]='\0';
2594  08e3 725f0702      	clr	_numberToSendSMS
2595                     ; 689 		strcat(numberToSendSMS,"+7");
2597  08e7 ae0012        	ldw	x,#L3501
2598  08ea 89            	pushw	x
2599  08eb ae0702        	ldw	x,#_numberToSendSMS
2600  08ee cd0000        	call	_strcat
2602  08f1 85            	popw	x
2603                     ; 690 		strcat(numberToSendSMS,smsFifo[smsFifoRdPtr].number);
2605  08f2 c604e2        	ld	a,_smsFifoRdPtr
2606  08f5 97            	ld	xl,a
2607  08f6 a664          	ld	a,#100
2608  08f8 42            	mul	x,a
2609  08f9 1c0050        	addw	x,#_smsFifo+80
2610  08fc 89            	pushw	x
2611  08fd ae0702        	ldw	x,#_numberToSendSMS
2612  0900 cd0000        	call	_strcat
2614  0903 85            	popw	x
2615                     ; 692 		textToSendSMS[0]='\0';
2617  0904 725f0716      	clr	_textToSendSMS
2618                     ; 693 		strcat(textToSendSMS,smsFifo[smsFifoRdPtr].text);
2620  0908 c604e2        	ld	a,_smsFifoRdPtr
2621  090b 97            	ld	xl,a
2622  090c a664          	ld	a,#100
2623  090e 42            	mul	x,a
2624  090f 1c0000        	addw	x,#_smsFifo
2625  0912 89            	pushw	x
2626  0913 ae0716        	ldw	x,#_textToSendSMS
2627  0916 cd0000        	call	_strcat
2629  0919 85            	popw	x
2630                     ; 694 		strcat(textToSendSMS,"\r");
2632  091a ae0010        	ldw	x,#L5501
2633  091d 89            	pushw	x
2634  091e ae0716        	ldw	x,#_textToSendSMS
2635  0921 cd0000        	call	_strcat
2637  0924 85            	popw	x
2638                     ; 696 		modemDrvTextSMSSendStepCnt=1;
2640  0925 ae0001        	ldw	x,#1
2641  0928 bf06          	ldw	_modemDrvTextSMSSendStepCnt,x
2642                     ; 697 		enableInterrupts();
2645  092a 9a            rim
2649  092b ac0c0a0c      	jpf	L7501
2650  092f               L1501:
2651                     ; 699 	else if(smsFifo[smsFifoRdPtr].mode=='p')
2653  092f c604e2        	ld	a,_smsFifoRdPtr
2654  0932 97            	ld	xl,a
2655  0933 a664          	ld	a,#100
2656  0935 42            	mul	x,a
2657  0936 d6005b        	ld	a,(_smsFifo+91,x)
2658  0939 a170          	cp	a,#112
2659  093b 2703          	jreq	L011
2660  093d cc0a0c        	jp	L7501
2661  0940               L011:
2662                     ; 701 		disableInterrupts();
2665  0940 9b            sim
2667                     ; 703 		numberToSendSMS_[0]=smsFifo[smsFifoRdPtr].number[0];
2670  0941 c604e2        	ld	a,_smsFifoRdPtr
2671  0944 97            	ld	xl,a
2672  0945 a664          	ld	a,#100
2673  0947 42            	mul	x,a
2674  0948 d60050        	ld	a,(_smsFifo+80,x)
2675  094b c706ee        	ld	_numberToSendSMS_,a
2676                     ; 704 		numberToSendSMS_[1]='7';
2678  094e 353706ef      	mov	_numberToSendSMS_+1,#55
2679                     ; 705 		numberToSendSMS_[2]=smsFifo[smsFifoRdPtr].number[2];
2681  0952 c604e2        	ld	a,_smsFifoRdPtr
2682  0955 97            	ld	xl,a
2683  0956 a664          	ld	a,#100
2684  0958 42            	mul	x,a
2685  0959 d60052        	ld	a,(_smsFifo+82,x)
2686  095c c706f0        	ld	_numberToSendSMS_+2,a
2687                     ; 706 		numberToSendSMS_[3]=smsFifo[smsFifoRdPtr].number[1];
2689  095f c604e2        	ld	a,_smsFifoRdPtr
2690  0962 97            	ld	xl,a
2691  0963 a664          	ld	a,#100
2692  0965 42            	mul	x,a
2693  0966 d60051        	ld	a,(_smsFifo+81,x)
2694  0969 c706f1        	ld	_numberToSendSMS_+3,a
2695                     ; 707 		numberToSendSMS_[4]=smsFifo[smsFifoRdPtr].number[4];
2697  096c c604e2        	ld	a,_smsFifoRdPtr
2698  096f 97            	ld	xl,a
2699  0970 a664          	ld	a,#100
2700  0972 42            	mul	x,a
2701  0973 d60054        	ld	a,(_smsFifo+84,x)
2702  0976 c706f2        	ld	_numberToSendSMS_+4,a
2703                     ; 708 		numberToSendSMS_[5]=smsFifo[smsFifoRdPtr].number[3];
2705  0979 c604e2        	ld	a,_smsFifoRdPtr
2706  097c 97            	ld	xl,a
2707  097d a664          	ld	a,#100
2708  097f 42            	mul	x,a
2709  0980 d60053        	ld	a,(_smsFifo+83,x)
2710  0983 c706f3        	ld	_numberToSendSMS_+5,a
2711                     ; 709 		numberToSendSMS_[6]=smsFifo[smsFifoRdPtr].number[6];
2713  0986 c604e2        	ld	a,_smsFifoRdPtr
2714  0989 97            	ld	xl,a
2715  098a a664          	ld	a,#100
2716  098c 42            	mul	x,a
2717  098d d60056        	ld	a,(_smsFifo+86,x)
2718  0990 c706f4        	ld	_numberToSendSMS_+6,a
2719                     ; 710 		numberToSendSMS_[7]=smsFifo[smsFifoRdPtr].number[5];
2721  0993 c604e2        	ld	a,_smsFifoRdPtr
2722  0996 97            	ld	xl,a
2723  0997 a664          	ld	a,#100
2724  0999 42            	mul	x,a
2725  099a d60055        	ld	a,(_smsFifo+85,x)
2726  099d c706f5        	ld	_numberToSendSMS_+7,a
2727                     ; 711 		numberToSendSMS_[8]=smsFifo[smsFifoRdPtr].number[8];
2729  09a0 c604e2        	ld	a,_smsFifoRdPtr
2730  09a3 97            	ld	xl,a
2731  09a4 a664          	ld	a,#100
2732  09a6 42            	mul	x,a
2733  09a7 d60058        	ld	a,(_smsFifo+88,x)
2734  09aa c706f6        	ld	_numberToSendSMS_+8,a
2735                     ; 712 		numberToSendSMS_[9]=smsFifo[smsFifoRdPtr].number[7];
2737  09ad c604e2        	ld	a,_smsFifoRdPtr
2738  09b0 97            	ld	xl,a
2739  09b1 a664          	ld	a,#100
2740  09b3 42            	mul	x,a
2741  09b4 d60057        	ld	a,(_smsFifo+87,x)
2742  09b7 c706f7        	ld	_numberToSendSMS_+9,a
2743                     ; 713 		numberToSendSMS_[10]='F';
2745  09ba 354606f8      	mov	_numberToSendSMS_+10,#70
2746                     ; 714 		numberToSendSMS_[11]=smsFifo[smsFifoRdPtr].number[9];	
2748  09be c604e2        	ld	a,_smsFifoRdPtr
2749  09c1 97            	ld	xl,a
2750  09c2 a664          	ld	a,#100
2751  09c4 42            	mul	x,a
2752  09c5 d60059        	ld	a,(_smsFifo+89,x)
2753  09c8 c706f9        	ld	_numberToSendSMS_+11,a
2754                     ; 715 		numberToSendSMS_[12]='\0';
2756  09cb 725f06fa      	clr	_numberToSendSMS_+12
2757                     ; 717 		buferHeadToSendPDUSMS[0]='\0';
2759  09cf 725f068a      	clr	_buferHeadToSendPDUSMS
2760                     ; 718 		strcat(buferHeadToSendPDUSMS,"0001000B91");
2762  09d3 ae0005        	ldw	x,#L3601
2763  09d6 89            	pushw	x
2764  09d7 ae068a        	ldw	x,#_buferHeadToSendPDUSMS
2765  09da cd0000        	call	_strcat
2767  09dd 85            	popw	x
2768                     ; 719 		strcat(buferHeadToSendPDUSMS,numberToSendSMS_);
2770  09de ae06ee        	ldw	x,#_numberToSendSMS_
2771  09e1 89            	pushw	x
2772  09e2 ae068a        	ldw	x,#_buferHeadToSendPDUSMS
2773  09e5 cd0000        	call	_strcat
2775  09e8 85            	popw	x
2776                     ; 720 		strcat(buferHeadToSendPDUSMS,"0008");
2778  09e9 ae0000        	ldw	x,#L5601
2779  09ec 89            	pushw	x
2780  09ed ae068a        	ldw	x,#_buferHeadToSendPDUSMS
2781  09f0 cd0000        	call	_strcat
2783  09f3 85            	popw	x
2784                     ; 722 		text2PDU(smsFifo[smsFifoRdPtr].text,buferBodyToSendPDUSMS);
2786  09f4 ae052c        	ldw	x,#_buferBodyToSendPDUSMS
2787  09f7 89            	pushw	x
2788  09f8 c604e2        	ld	a,_smsFifoRdPtr
2789  09fb 97            	ld	xl,a
2790  09fc a664          	ld	a,#100
2791  09fe 42            	mul	x,a
2792  09ff 1c0000        	addw	x,#_smsFifo
2793  0a02 cd0605        	call	_text2PDU
2795  0a05 85            	popw	x
2796                     ; 724 		modemDrvPDUSMSSendStepCnt=1;
2798  0a06 ae0001        	ldw	x,#1
2799  0a09 bf08          	ldw	_modemDrvPDUSMSSendStepCnt,x
2800                     ; 726 		enableInterrupts();
2803  0a0b 9a            rim
2806  0a0c               L7501:
2807                     ; 728 	smsFifoRdPtr++;
2809  0a0c 725c04e2      	inc	_smsFifoRdPtr
2810                     ; 729 	if(smsFifoRdPtr>=10)smsFifoRdPtr=0;
2812  0a10 c604e2        	ld	a,_smsFifoRdPtr
2813  0a13 a10a          	cp	a,#10
2814  0a15 2504          	jrult	L7401
2817  0a17 725f04e2      	clr	_smsFifoRdPtr
2818  0a1b               L7401:
2819                     ; 731 }
2822  0a1b 81            	ret
2889                     ; 735 short find_number_fild_in_text(char* text)
2889                     ; 736 {
2890                     	switch	.text
2891  0a1c               _find_number_fild_in_text:
2893  0a1c 89            	pushw	x
2894  0a1d 5204          	subw	sp,#4
2895       00000004      OFST:	set	4
2898                     ; 739 len=strlen(text);
2900  0a1f cd0000        	call	_strlen
2902                     ; 740 firstDigit=strcspn(text,"1234567890");
2904  0a22 ae0015        	ldw	x,#L147
2905  0a25 89            	pushw	x
2906  0a26 1e07          	ldw	x,(OFST+3,sp)
2907  0a28 cd0000        	call	_strcspn
2909  0a2b 5b02          	addw	sp,#2
2910  0a2d 1f03          	ldw	(OFST-1,sp),x
2911                     ; 742 ptr_temp=(char*)(text+firstDigit);
2913  0a2f 1e05          	ldw	x,(OFST+1,sp)
2914  0a31 72fb03        	addw	x,(OFST-1,sp)
2915  0a34 1f03          	ldw	(OFST-1,sp),x
2916                     ; 744 return (short)strtol(ptr_temp,NULL,0);
2918  0a36 5f            	clrw	x
2919  0a37 89            	pushw	x
2920  0a38 5f            	clrw	x
2921  0a39 89            	pushw	x
2922  0a3a 1e07          	ldw	x,(OFST+3,sp)
2923  0a3c cd0000        	call	_strtol
2925  0a3f 5b04          	addw	sp,#4
2926  0a41 be02          	ldw	x,c_lreg+2
2929  0a43 5b06          	addw	sp,#6
2930  0a45 81            	ret
3433                     	switch	.bss
3434  0000               _smsFifo:
3435  0000 000000000000  	ds.b	1000
3436                     	xdef	_smsFifo
3437  03e8               _ptrTemp:
3438  03e8 000000000000  	ds.b	30
3439                     	xdef	_ptrTemp
3440  0406               _buferBodyToSendPDUSMS__:
3441  0406 000000000000  	ds.b	100
3442                     	xdef	_buferBodyToSendPDUSMS__
3443                     	xref	_cbc_temp
3444                     	xref	_AUTH_NUMBER_FLAGS
3445                     	xref	_AUTH_NUMBER_3
3446                     	xref	_AUTH_NUMBER_2
3447                     	xref	_AUTH_NUMBER_1
3448                     	xref	_MAIN_NUMBER
3449                     	xref.b	_bBUY_SMS
3450                     	xref.b	_bCBC
3451                     	xref.b	_bINITIALIZED
3452                     	xref.b	_bERROR
3453                     	xref.b	_bOK
3454                     	xref	_tolower
3455                     	xref	_strtol
3456                     	xref	_memcpy
3457                     	xref	_strspn
3458                     	xref	_strlen
3459                     	xref	_strcspn
3460                     	xref	_strstr
3461                     	xref	_strncpy
3462                     	xref	_strcpy
3463                     	xref	_strcat
3464                     	xref	_sprintf
3465                     	xref	_printf
3466                     	xdef	_find_number_fild_in_text
3467                     	xdef	_sms_fifo_drv
3468                     	xdef	_find_empty_number_cell
3469                     	xdef	_find_this_number_in_autorized
3470                     	xdef	_find_number_in_text
3471                     	xdef	_PDU2text
3472                     	xdef	_text2PDU
3473                     	xdef	_modem_send_sms
3474                     	xdef	_modem_drv
3475                     	xdef	_modem_stat_drv
3476                     	xdef	_modem_gpio_init
3477  046a               _tempStr:
3478  046a 000000000000  	ds.b	30
3479                     	xdef	_tempStr
3480  0488               _tempRussianText:
3481  0488 000000000000  	ds.b	90
3482                     	xdef	_tempRussianText
3483  04e2               _smsFifoRdPtr:
3484  04e2 00            	ds.b	1
3485                     	xdef	_smsFifoRdPtr
3486  04e3               _smsFifoWrPtr:
3487  04e3 00            	ds.b	1
3488                     	xdef	_smsFifoWrPtr
3489  04e4               _russianText:
3490  04e4 000000000000  	ds.b	70
3491                     	xdef	_russianText
3492  052a               _lenPDUSMS:
3493  052a 0000          	ds.b	2
3494                     	xdef	_lenPDUSMS
3495  052c               _buferBodyToSendPDUSMS:
3496  052c 000000000000  	ds.b	350
3497                     	xdef	_buferBodyToSendPDUSMS
3498  068a               _buferHeadToSendPDUSMS:
3499  068a 000000000000  	ds.b	30
3500                     	xdef	_buferHeadToSendPDUSMS
3501  06a8               _textToSendPDUSMS:
3502  06a8 000000000000  	ds.b	70
3503                     	xdef	_textToSendPDUSMS
3504  06ee               _numberToSendSMS_:
3505  06ee 000000000000  	ds.b	20
3506                     	xdef	_numberToSendSMS_
3507  0702               _numberToSendSMS:
3508  0702 000000000000  	ds.b	20
3509                     	xdef	_numberToSendSMS
3510  0716               _textToSendSMS:
3511  0716 000000000000  	ds.b	200
3512                     	xdef	_textToSendSMS
3513                     	switch	.ubsct
3514  0000               _textSMS:
3515  0000 0000          	ds.b	2
3516                     	xdef	_textSMS
3517  0002               _phoneNumberForSMS:
3518  0002 0000          	ds.b	2
3519                     	xdef	_phoneNumberForSMS
3520  0004               _modemDrvWatchDogCnt:
3521  0004 0000          	ds.b	2
3522                     	xdef	_modemDrvWatchDogCnt
3523                     	xdef	_modemDrvPowerDownStepCnt
3524                     	xdef	_modemDrvPDUSMSSendStepCnt
3525                     	xdef	_modemDrvTextSMSSendStepCnt
3526                     	xdef	_modemDrvInitStepCnt
3527                     	xdef	_modemDrvPowerStartCnt
3528  0006               _modemNotReadyCnt:
3529  0006 0000          	ds.b	2
3530                     	xdef	_modemNotReadyCnt
3531                     	xdef	_modemState
3532                     	xdef	_modemLinkState
3533  0008               _net_l_cnt_one_temp:
3534  0008 0000          	ds.b	2
3535                     	xdef	_net_l_cnt_one_temp
3536  000a               _net_l_cnt_zero:
3537  000a 0000          	ds.b	2
3538                     	xdef	_net_l_cnt_zero
3539  000c               _net_l_cnt_one:
3540  000c 0000          	ds.b	2
3541                     	xdef	_net_l_cnt_one
3542  000e               _net_l_cnt_down:
3543  000e 00            	ds.b	1
3544                     	xdef	_net_l_cnt_down
3545  000f               _net_l_cnt_up:
3546  000f 00            	ds.b	1
3547                     	xdef	_net_l_cnt_up
3548                     	xdef	_modemPowerState
3549  0010               _modemPowerStatCnt:
3550  0010 00            	ds.b	1
3551                     	xdef	_modemPowerStatCnt
3552  0011               _modemStatCnt0:
3553  0011 00            	ds.b	1
3554                     	xdef	_modemStatCnt0
3555                     .const:	section	.text
3556  0000               L5601:
3557  0000 3030303800    	dc.b	"0008",0
3558  0005               L3601:
3559  0005 303030313030  	dc.b	"0001000B91",0
3560  0010               L5501:
3561  0010 0d00          	dc.b	13,0
3562  0012               L3501:
3563  0012 2b3700        	dc.b	"+7",0
3564  0015               L147:
3565  0015 313233343536  	dc.b	"1234567890",0
3566  0020               L776:
3567  0020 303400        	dc.b	"04",0
3568  0023               L706:
3569  0023 2530325800    	dc.b	"%02X",0
3570  0028               L306:
3571  0028 2530345800    	dc.b	"%04X",0
3572  002d               L765:
3573  002d 303000        	dc.b	"00",0
3574  0030               L754:
3575  0030 4154202b2043  	dc.b	"AT + CPOWD = 1 ",13,0
3576  0041               L744:
3577  0041 cde0eff0ffe6  	dc.b	205,224,239,240,255,230
3578  0047 e5ede8e520e0  	dc.b	229,237,232,229,32,224
3579  004d eaeaf3ecf3eb  	dc.b	234,234,243,236,243,235
3580  0053 fff2eef0e020  	dc.b	255,242,238,240,224,32
3581  0059 2573e2        	dc.b	"%s",226
3582  005c 2c20f1        	dc.b	", ",241
3583  005f e8f1f2e5ece0  	dc.b	232,241,242,229,236,224
3584  0065 20e2          	dc.b	" ",226
3585  0067 fbeaebfef7e5  	dc.b	251,234,235,254,247,229
3586  006d ede020e4ee20  	dc.b	237,224,32,228,238,32
3587  0073 efeeffe2ebe5  	dc.b	239,238,255,226,235,229
3588  0079 ede8ff20f1e5  	dc.b	237,232,255,32,241,229
3589  007f f2e800        	dc.b	242,232,0
3590  0082               L734:
3591  0082 4154202b2043  	dc.b	"AT + CBC ",13,0
3592  008d               L373:
3593  008d 41542b434d47  	dc.b	"AT+CMGS=%d",13,0
3594  0099               L363:
3595  0099 41542b434d47  	dc.b	"AT+CMGF=0",13,0
3596  00a4               L143:
3597  00a4 256300        	dc.b	"%c",0
3598  00a7               L723:
3599  00a7 220d00        	dc.b	34,13,0
3600  00aa               L523:
3601  00aa 41542b434d47  	dc.b	"AT+CMGS=",34,0
3602  00b4               L713:
3603  00b4 41542b434d47  	dc.b	"AT+CMGF=1",13,0
3604  00bf               L762:
3605  00bf 41542b434e4d  	dc.b	"AT+CNMI=1,2,2,1,0",13,0
3606  00d2               L752:
3607  00d2 41542b435042  	dc.b	"AT+CPBS=",34
3608  00db 534d22        	dc.b	"SM",34
3609  00de 0d00          	dc.b	13,0
3610  00e0               L742:
3611  00e0 41542b494643  	dc.b	"AT+IFC=0, 0",13,0
3612  00ed               L732:
3613  00ed 41542b434d47  	dc.b	"AT+CMGF=1",13
3614  00f7 0a00          	dc.b	10,0
3615  00f9               L722:
3616  00f9 415445300d    	dc.b	"ATE0",13
3617  00fe 0a00          	dc.b	10,0
3618                     	xref.b	c_lreg
3619                     	xref.b	c_x
3620                     	xref.b	c_y
3640                     	end
