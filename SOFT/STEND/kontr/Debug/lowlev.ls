   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  48                     ; 26 void out_drv(void)
  48                     ; 27 {
  50                     	switch	.text
  51  0000               _out_drv:
  55                     ; 28 GPIOE->DDR|=0b00101001;
  57  0000 c65016        	ld	a,20502
  58  0003 aa29          	or	a,#41
  59  0005 c75016        	ld	20502,a
  60                     ; 29 GPIOE->CR1&=0b11010110;
  62  0008 c65017        	ld	a,20503
  63  000b a4d6          	and	a,#214
  64  000d c75017        	ld	20503,a
  65                     ; 30 GPIOE->CR2&=0b11010110;
  67  0010 c65018        	ld	a,20504
  68  0013 a4d6          	and	a,#214
  69  0015 c75018        	ld	20504,a
  70                     ; 32 if(optr_kontr_cnt)
  72  0018 725d0000      	tnz	_optr_kontr_cnt
  73  001c 2739          	jreq	L12
  74                     ; 34 	optr_kontr_cnt--;
  76  001e 725a0000      	dec	_optr_kontr_cnt
  77                     ; 35 	if(optr_stat&0x01)			GPIOE->ODR&=0b11111110;
  79  0022 c60000        	ld	a,_optr_stat
  80  0025 a501          	bcp	a,#1
  81  0027 2706          	jreq	L32
  84  0029 72115014      	bres	20500,#0
  86  002d 2004          	jra	L52
  87  002f               L32:
  88                     ; 36 	else 						GPIOE->ODR|=0b00000001;
  90  002f 72105014      	bset	20500,#0
  91  0033               L52:
  92                     ; 37 	if(optr_stat&0x02)		GPIOE->ODR&=0b11110111;
  94  0033 c60000        	ld	a,_optr_stat
  95  0036 a502          	bcp	a,#2
  96  0038 2706          	jreq	L72
  99  003a 72175014      	bres	20500,#3
 101  003e 2004          	jra	L13
 102  0040               L72:
 103                     ; 38 	else 						GPIOE->ODR|=0b00001000;
 105  0040 72165014      	bset	20500,#3
 106  0044               L13:
 107                     ; 39 	if(optr_stat&0x04)		GPIOE->ODR&=0b11011111;
 109  0044 c60000        	ld	a,_optr_stat
 110  0047 a504          	bcp	a,#4
 111  0049 2706          	jreq	L33
 114  004b 721b5014      	bres	20500,#5
 116  004f 2046          	jra	L73
 117  0051               L33:
 118                     ; 40 	else 						GPIOE->ODR|=0b00100000;
 120  0051 721a5014      	bset	20500,#5
 121  0055 2040          	jra	L73
 122  0057               L12:
 123                     ; 45 	if(outMode==omOFF)
 125  0057 725d0000      	tnz	_outMode
 126  005b 260a          	jrne	L14
 127                     ; 47 		GPIOE->ODR|=0b00101001;
 129  005d c65014        	ld	a,20500
 130  0060 aa29          	or	a,#41
 131  0062 c75014        	ld	20500,a
 133  0065 2030          	jra	L73
 134  0067               L14:
 135                     ; 51 		if(out_stat[0]==osON)		GPIOE->ODR&=0b11111110;
 137  0067 b600          	ld	a,_out_stat
 138  0069 a101          	cp	a,#1
 139  006b 2606          	jrne	L54
 142  006d 72115014      	bres	20500,#0
 144  0071 2004          	jra	L74
 145  0073               L54:
 146                     ; 52 		else 						GPIOE->ODR|=0b00000001;
 148  0073 72105014      	bset	20500,#0
 149  0077               L74:
 150                     ; 53 		if(out_stat[1]==osON)		GPIOE->ODR&=0b11110111;
 152  0077 b601          	ld	a,_out_stat+1
 153  0079 a101          	cp	a,#1
 154  007b 2606          	jrne	L15
 157  007d 72175014      	bres	20500,#3
 159  0081 2004          	jra	L35
 160  0083               L15:
 161                     ; 54 		else 						GPIOE->ODR|=0b00001000;
 163  0083 72165014      	bset	20500,#3
 164  0087               L35:
 165                     ; 55 		if(out_stat[2]==osON)		GPIOE->ODR&=0b11011111;
 167  0087 b602          	ld	a,_out_stat+2
 168  0089 a101          	cp	a,#1
 169  008b 2606          	jrne	L55
 172  008d 721b5014      	bres	20500,#5
 174  0091 2004          	jra	L73
 175  0093               L55:
 176                     ; 56 		else 						GPIOE->ODR|=0b00100000;
 178  0093 721a5014      	bset	20500,#5
 179  0097               L73:
 180                     ; 59 }
 183  0097 81            	ret
 227                     ; 99 void delay_us(short num_of_delay)
 227                     ; 100 {
 228                     	switch	.text
 229  0098               _delay_us:
 231  0098 89            	pushw	x
 232  0099 89            	pushw	x
 233       00000002      OFST:	set	2
 236                     ; 102 for(i==0;i<num_of_delay;i++)
 238  009a 1e01          	ldw	x,(OFST-1,sp)
 239  009c 2605          	jrne	L01
 240  009e ae0001        	ldw	x,#1
 241  00a1 2001          	jra	L21
 242  00a3               L01:
 243  00a3 5f            	clrw	x
 244  00a4               L21:
 246  00a4 2008          	jra	L701
 247  00a6               L301:
 248                     ; 104 	nop();
 251  00a6 9d            nop
 253                     ; 102 for(i==0;i<num_of_delay;i++)
 256  00a7 1e01          	ldw	x,(OFST-1,sp)
 257  00a9 1c0001        	addw	x,#1
 258  00ac 1f01          	ldw	(OFST-1,sp),x
 259  00ae               L701:
 262  00ae 9c            	rvf
 263  00af 1e01          	ldw	x,(OFST-1,sp)
 264  00b1 1303          	cpw	x,(OFST+1,sp)
 265  00b3 2ff1          	jrslt	L301
 266                     ; 106 }
 269  00b5 5b04          	addw	sp,#4
 270  00b7 81            	ret
 305                     ; 109 void but_drv(void)
 305                     ; 110 {
 306                     	switch	.text
 307  00b8               _but_drv:
 311                     ; 112 but_n=(but_new)|0xf0; 	
 313  00b8 b60e          	ld	a,_but_new
 314  00ba aaf0          	or	a,#240
 315  00bc b70d          	ld	_but_n,a
 316                     ; 113 if((but_n==0xff)||(but_n!=but_s))
 318  00be b60d          	ld	a,_but_n
 319  00c0 a1ff          	cp	a,#255
 320  00c2 2706          	jreq	L131
 322  00c4 b60d          	ld	a,_but_n
 323  00c6 b10c          	cp	a,_but_s
 324  00c8 273b          	jreq	L721
 325  00ca               L131:
 326                     ; 115  	speed=0;
 328  00ca 3f04          	clr	_speed
 329                     ; 117 	if (((but0_cnt>=BUT_ON)||(but1_cnt!=0))&&(!l_but))
 331  00cc 9c            	rvf
 332  00cd be07          	ldw	x,_but0_cnt
 333  00cf a30005        	cpw	x,#5
 334  00d2 2e04          	jrsge	L531
 336  00d4 be05          	ldw	x,_but1_cnt
 337  00d6 270b          	jreq	L331
 338  00d8               L531:
 340  00d8 3d0a          	tnz	_l_but
 341  00da 2607          	jrne	L331
 342                     ; 119    	n_but=1;
 344  00dc 35010009      	mov	_n_but,#1
 345                     ; 120     but=(char)but_s;
 347  00e0 450c0b        	mov	_but,_but_s
 348  00e3               L331:
 349                     ; 122  	if (but1_cnt>=but_onL_temp)
 351  00e3 9c            	rvf
 352  00e4 be05          	ldw	x,_but1_cnt
 353  00e6 b302          	cpw	x,_but_onL_temp
 354  00e8 2f0a          	jrslt	L731
 355                     ; 124     n_but=1;
 357  00ea 35010009      	mov	_n_but,#1
 358                     ; 125 		but=((char)but_s)&0x7f;
 360  00ee b60c          	ld	a,_but_s
 361  00f0 a47f          	and	a,#127
 362  00f2 b70b          	ld	_but,a
 363  00f4               L731:
 364                     ; 127 	l_but=0;
 366  00f4 3f0a          	clr	_l_but
 367                     ; 128 	but_onL_temp=BUT_ONL;
 369  00f6 ae0014        	ldw	x,#20
 370  00f9 bf02          	ldw	_but_onL_temp,x
 371                     ; 129 	but0_cnt=0;
 373  00fb 5f            	clrw	x
 374  00fc bf07          	ldw	_but0_cnt,x
 375                     ; 130 	but1_cnt=0;          
 377  00fe 5f            	clrw	x
 378  00ff bf05          	ldw	_but1_cnt,x
 379                     ; 131 	goto but_drv_out;
 380  0101               L311:
 381                     ; 154 but_drv_out: 
 381                     ; 155 but_s=but_n;
 383  0101 450d0c        	mov	_but_s,_but_n
 384                     ; 157 }
 387  0104 81            	ret
 388  0105               L721:
 389                     ; 133 if(but_n==but_s)
 391  0105 b60d          	ld	a,_but_n
 392  0107 b10c          	cp	a,_but_s
 393  0109 26f6          	jrne	L311
 394                     ; 135   but0_cnt++;
 396  010b be07          	ldw	x,_but0_cnt
 397  010d 1c0001        	addw	x,#1
 398  0110 bf07          	ldw	_but0_cnt,x
 399                     ; 136 	if(but0_cnt>=BUT_ON)
 401  0112 9c            	rvf
 402  0113 be07          	ldw	x,_but0_cnt
 403  0115 a30005        	cpw	x,#5
 404  0118 2fe7          	jrslt	L311
 405                     ; 138 		but0_cnt=0;
 407  011a 5f            	clrw	x
 408  011b bf07          	ldw	_but0_cnt,x
 409                     ; 139 		but1_cnt++;
 411  011d be05          	ldw	x,_but1_cnt
 412  011f 1c0001        	addw	x,#1
 413  0122 bf05          	ldw	_but1_cnt,x
 414                     ; 140 		if(but1_cnt>=but_onL_temp)
 416  0124 9c            	rvf
 417  0125 be05          	ldw	x,_but1_cnt
 418  0127 b302          	cpw	x,_but_onL_temp
 419  0129 2fd6          	jrslt	L311
 420                     ; 142 			but=(char)(but_s&0x7f);
 422  012b b60c          	ld	a,_but_s
 423  012d a47f          	and	a,#127
 424  012f b70b          	ld	_but,a
 425                     ; 143 			but1_cnt=0;
 427  0131 5f            	clrw	x
 428  0132 bf05          	ldw	_but1_cnt,x
 429                     ; 144 			n_but=1;
 431  0134 35010009      	mov	_n_but,#1
 432                     ; 145 			l_but=1;
 434  0138 3501000a      	mov	_l_but,#1
 435                     ; 146 			if(speed)
 437  013c 3d04          	tnz	_speed
 438  013e 27c1          	jreq	L311
 439                     ; 148 				but_onL_temp=but_onL_temp>>1;
 441  0140 3702          	sra	_but_onL_temp
 442  0142 3603          	rrc	_but_onL_temp+1
 443                     ; 149 				if(but_onL_temp<=2) but_onL_temp=2;
 445  0144 9c            	rvf
 446  0145 be02          	ldw	x,_but_onL_temp
 447  0147 a30003        	cpw	x,#3
 448  014a 2eb5          	jrsge	L311
 451  014c ae0002        	ldw	x,#2
 452  014f bf02          	ldw	_but_onL_temp,x
 453  0151 20ae          	jra	L311
 490                     ; 159 void clear_ind(void)
 490                     ; 160 {
 491                     	switch	.text
 492  0153               _clear_ind:
 494  0153 88            	push	a
 495       00000001      OFST:	set	1
 498                     ; 162 for(i=0;i<4;i++)
 500  0154 0f01          	clr	(OFST+0,sp)
 501  0156               L171:
 502                     ; 164 	ind_outB[i]=0xff;
 504  0156 7b01          	ld	a,(OFST+0,sp)
 505  0158 5f            	clrw	x
 506  0159 97            	ld	xl,a
 507  015a a6ff          	ld	a,#255
 508  015c e700          	ld	(_ind_outB,x),a
 509                     ; 165 	ind_outC[i]=0xff;
 511  015e 7b01          	ld	a,(OFST+0,sp)
 512  0160 5f            	clrw	x
 513  0161 97            	ld	xl,a
 514  0162 a6ff          	ld	a,#255
 515  0164 e700          	ld	(_ind_outC,x),a
 516                     ; 166 	ind_outG[i]=0xff;
 518  0166 7b01          	ld	a,(OFST+0,sp)
 519  0168 5f            	clrw	x
 520  0169 97            	ld	xl,a
 521  016a a6ff          	ld	a,#255
 522  016c e700          	ld	(_ind_outG,x),a
 523                     ; 162 for(i=0;i<4;i++)
 525  016e 0c01          	inc	(OFST+0,sp)
 528  0170 7b01          	ld	a,(OFST+0,sp)
 529  0172 a104          	cp	a,#4
 530  0174 25e0          	jrult	L171
 531                     ; 168 }
 534  0176 84            	pop	a
 535  0177 81            	ret
 583                     ; 171 void tree_down(signed char offset_ind,signed char offset_sub_ind)
 583                     ; 172 {
 584                     	switch	.text
 585  0178               _tree_down:
 587  0178 89            	pushw	x
 588       00000000      OFST:	set	0
 591                     ; 173 ind_pointer--;
 593  0179 3a00          	dec	_ind_pointer
 594                     ; 174 ind_pointer+=offset_ind;
 596  017b 9e            	ld	a,xh
 597  017c bb00          	add	a,_ind_pointer
 598  017e b700          	ld	_ind_pointer,a
 599                     ; 175 a_ind=b_ind[ind_pointer];
 601  0180 5f            	clrw	x
 602  0181 b600          	ld	a,_ind_pointer
 603  0183 2a01          	jrpl	L22
 604  0185 53            	cplw	x
 605  0186               L22:
 606  0186 97            	ld	xl,a
 607  0187 90ae0005      	ldw	y,#5
 608  018b cd0000        	call	c_imul
 610  018e 01            	rrwa	x,a
 611  018f ab00          	add	a,#_b_ind
 612  0191 2401          	jrnc	L42
 613  0193 5c            	incw	x
 614  0194               L42:
 615  0194 5f            	clrw	x
 616  0195 97            	ld	xl,a
 617  0196 90ae0000      	ldw	y,#_a_ind
 618  019a a605          	ld	a,#5
 619  019c cd0000        	call	c_yxmov
 621                     ; 177 sub_ind+=offset_sub_ind;
 623  019f b601          	ld	a,_a_ind+1
 624  01a1 1b02          	add	a,(OFST+2,sp)
 625  01a3 b701          	ld	_a_ind+1,a
 626                     ; 178 clear_ind();
 628  01a5 adac          	call	_clear_ind
 630                     ; 179 ind_hndl();
 632  01a7 cd0000        	call	_ind_hndl
 634                     ; 180 }
 637  01aa 85            	popw	x
 638  01ab 81            	ret
 704                     ; 183 void tree_up(char tind, char tsub_ind, char tindex_set, char tsub_ind1)
 704                     ; 184 {
 705                     	switch	.text
 706  01ac               _tree_up:
 708  01ac 89            	pushw	x
 709       00000000      OFST:	set	0
 712                     ; 185 b_ind[ind_pointer++]=a_ind;
 714  01ad b600          	ld	a,_ind_pointer
 715  01af 97            	ld	xl,a
 716  01b0 3c00          	inc	_ind_pointer
 717  01b2 9f            	ld	a,xl
 718  01b3 5f            	clrw	x
 719  01b4 4d            	tnz	a
 720  01b5 2a01          	jrpl	L03
 721  01b7 53            	cplw	x
 722  01b8               L03:
 723  01b8 97            	ld	xl,a
 724  01b9 90ae0005      	ldw	y,#5
 725  01bd cd0000        	call	c_imul
 727  01c0 01            	rrwa	x,a
 728  01c1 ab00          	add	a,#_b_ind
 729  01c3 2401          	jrnc	L23
 730  01c5 5c            	incw	x
 731  01c6               L23:
 732  01c6 5f            	clrw	x
 733  01c7 97            	ld	xl,a
 734  01c8 90ae0000      	ldw	y,#_a_ind
 735  01cc a605          	ld	a,#5
 736  01ce cd0000        	call	c_xymov
 738                     ; 186 ind=(ind_enum)tind;
 740  01d1 7b01          	ld	a,(OFST+1,sp)
 741  01d3 b700          	ld	_a_ind,a
 742                     ; 187 sub_ind=tsub_ind;
 744  01d5 7b02          	ld	a,(OFST+2,sp)
 745  01d7 b701          	ld	_a_ind+1,a
 746                     ; 188 index_set=tindex_set;
 748  01d9 7b05          	ld	a,(OFST+5,sp)
 749  01db b704          	ld	_a_ind+4,a
 750                     ; 189 sub_ind1=tsub_ind1;
 752  01dd 7b06          	ld	a,(OFST+6,sp)
 753  01df b702          	ld	_a_ind+2,a
 754                     ; 190 clear_ind();
 756  01e1 cd0153        	call	_clear_ind
 758                     ; 191 ind_hndl();
 760  01e4 cd0000        	call	_ind_hndl
 762                     ; 192 }
 765  01e7 85            	popw	x
 766  01e8 81            	ret
 819                     ; 195 void gran_char(signed char *adr, signed char min, signed char max)
 819                     ; 196 {
 820                     	switch	.text
 821  01e9               _gran_char:
 823  01e9 89            	pushw	x
 824       00000000      OFST:	set	0
 827                     ; 197 if (*adr<min) *adr=min;
 829  01ea 9c            	rvf
 830  01eb f6            	ld	a,(x)
 831  01ec 1105          	cp	a,(OFST+5,sp)
 832  01ee 2e05          	jrsge	L103
 835  01f0 7b05          	ld	a,(OFST+5,sp)
 836  01f2 1e01          	ldw	x,(OFST+1,sp)
 837  01f4 f7            	ld	(x),a
 838  01f5               L103:
 839                     ; 198 if (*adr>max) *adr=max; 
 841  01f5 9c            	rvf
 842  01f6 1e01          	ldw	x,(OFST+1,sp)
 843  01f8 f6            	ld	a,(x)
 844  01f9 1106          	cp	a,(OFST+6,sp)
 845  01fb 2d05          	jrsle	L303
 848  01fd 7b06          	ld	a,(OFST+6,sp)
 849  01ff 1e01          	ldw	x,(OFST+1,sp)
 850  0201 f7            	ld	(x),a
 851  0202               L303:
 852                     ; 199 } 
 855  0202 85            	popw	x
 856  0203 81            	ret
 909                     ; 202 void gran_uchar(unsigned char *adr, unsigned char min, unsigned char max)
 909                     ; 203 {
 910                     	switch	.text
 911  0204               _gran_uchar:
 913  0204 89            	pushw	x
 914       00000000      OFST:	set	0
 917                     ; 204 if (*adr<min) *adr=min;
 919  0205 f6            	ld	a,(x)
 920  0206 1105          	cp	a,(OFST+5,sp)
 921  0208 2405          	jruge	L333
 924  020a 7b05          	ld	a,(OFST+5,sp)
 925  020c 1e01          	ldw	x,(OFST+1,sp)
 926  020e f7            	ld	(x),a
 927  020f               L333:
 928                     ; 205 if (*adr>max) *adr=max; 
 930  020f 1e01          	ldw	x,(OFST+1,sp)
 931  0211 f6            	ld	a,(x)
 932  0212 1106          	cp	a,(OFST+6,sp)
 933  0214 2305          	jrule	L533
 936  0216 7b06          	ld	a,(OFST+6,sp)
 937  0218 1e01          	ldw	x,(OFST+1,sp)
 938  021a f7            	ld	(x),a
 939  021b               L533:
 940                     ; 206 } 
 943  021b 85            	popw	x
 944  021c 81            	ret
 997                     ; 209 void gran_ring_char(signed char *adr, signed char min, signed char max)
 997                     ; 210 {
 998                     	switch	.text
 999  021d               _gran_ring_char:
1001  021d 89            	pushw	x
1002       00000000      OFST:	set	0
1005                     ; 211 if (*adr<min) *adr=max;
1007  021e 9c            	rvf
1008  021f f6            	ld	a,(x)
1009  0220 1105          	cp	a,(OFST+5,sp)
1010  0222 2e05          	jrsge	L563
1013  0224 7b06          	ld	a,(OFST+6,sp)
1014  0226 1e01          	ldw	x,(OFST+1,sp)
1015  0228 f7            	ld	(x),a
1016  0229               L563:
1017                     ; 212 if (*adr>max) *adr=min; 
1019  0229 9c            	rvf
1020  022a 1e01          	ldw	x,(OFST+1,sp)
1021  022c f6            	ld	a,(x)
1022  022d 1106          	cp	a,(OFST+6,sp)
1023  022f 2d05          	jrsle	L763
1026  0231 7b05          	ld	a,(OFST+5,sp)
1027  0233 1e01          	ldw	x,(OFST+1,sp)
1028  0235 f7            	ld	(x),a
1029  0236               L763:
1030                     ; 213 } 
1033  0236 85            	popw	x
1034  0237 81            	ret
1078                     ; 216 void bin2bcd_int(unsigned short in) 
1078                     ; 217 {
1079                     	switch	.text
1080  0238               _bin2bcd_int:
1082  0238 89            	pushw	x
1083  0239 88            	push	a
1084       00000001      OFST:	set	1
1087                     ; 218 char i=5;
1089                     ; 220 for(i=0;i<5;i++)
1091  023a 0f01          	clr	(OFST+0,sp)
1092  023c               L314:
1093                     ; 222 	dig[i]=in%10;
1095  023c 1e02          	ldw	x,(OFST+1,sp)
1096  023e 90ae000a      	ldw	y,#10
1097  0242 65            	divw	x,y
1098  0243 51            	exgw	x,y
1099  0244 7b01          	ld	a,(OFST+0,sp)
1100  0246 905f          	clrw	y
1101  0248 9097          	ld	yl,a
1102  024a 01            	rrwa	x,a
1103  024b 90e700        	ld	(_dig,y),a
1104  024e 02            	rlwa	x,a
1105                     ; 223 	in/=10;
1107  024f 1e02          	ldw	x,(OFST+1,sp)
1108  0251 90ae000a      	ldw	y,#10
1109  0255 65            	divw	x,y
1110  0256 1f02          	ldw	(OFST+1,sp),x
1111                     ; 220 for(i=0;i<5;i++)
1113  0258 0c01          	inc	(OFST+0,sp)
1116  025a 7b01          	ld	a,(OFST+0,sp)
1117  025c a105          	cp	a,#5
1118  025e 25dc          	jrult	L314
1119                     ; 225 }
1122  0260 5b03          	addw	sp,#3
1123  0262 81            	ret
1160                     ; 228 void bcd2ind(void) 
1160                     ; 229 {
1161                     	switch	.text
1162  0263               _bcd2ind:
1164  0263 88            	push	a
1165       00000001      OFST:	set	1
1168                     ; 232 for (i=4;i>0;i--)
1170  0264 a604          	ld	a,#4
1171  0266 6b01          	ld	(OFST+0,sp),a
1172  0268               L734:
1173                     ; 234 	ind_out_[i-1]=DIGISYM[dig[i-1]];
1175  0268 7b01          	ld	a,(OFST+0,sp)
1176  026a 5f            	clrw	x
1177  026b 97            	ld	xl,a
1178  026c 5a            	decw	x
1179  026d 7b01          	ld	a,(OFST+0,sp)
1180  026f 905f          	clrw	y
1181  0271 9097          	ld	yl,a
1182  0273 905a          	decw	y
1183  0275 90e600        	ld	a,(_dig,y)
1184  0278 905f          	clrw	y
1185  027a 9097          	ld	yl,a
1186  027c 90d60000      	ld	a,(_DIGISYM,y)
1187  0280 e700          	ld	(_ind_out_,x),a
1188                     ; 232 for (i=4;i>0;i--)
1190  0282 0a01          	dec	(OFST+0,sp)
1193  0284 0d01          	tnz	(OFST+0,sp)
1194  0286 26e0          	jrne	L734
1195                     ; 236 }
1198  0288 84            	pop	a
1199  0289 81            	ret
1237                     ; 239 void bcd2ind_zero(void) 
1237                     ; 240 {
1238                     	switch	.text
1239  028a               _bcd2ind_zero:
1241  028a 88            	push	a
1242       00000001      OFST:	set	1
1245                     ; 242 zero_on=1;
1247  028b 35010000      	mov	_zero_on,#1
1248                     ; 243 for (i=4;i>0;i--)
1250  028f a604          	ld	a,#4
1251  0291 6b01          	ld	(OFST+0,sp),a
1252  0293               L364:
1253                     ; 245 	if(zero_on&&(!dig[i-1])&&(i-1))
1255  0293 3d00          	tnz	_zero_on
1256  0295 271e          	jreq	L174
1258  0297 7b01          	ld	a,(OFST+0,sp)
1259  0299 5f            	clrw	x
1260  029a 97            	ld	xl,a
1261  029b 5a            	decw	x
1262  029c 6d00          	tnz	(_dig,x)
1263  029e 2615          	jrne	L174
1265  02a0 7b01          	ld	a,(OFST+0,sp)
1266  02a2 5f            	clrw	x
1267  02a3 97            	ld	xl,a
1268  02a4 5a            	decw	x
1269  02a5 a30000        	cpw	x,#0
1270  02a8 270b          	jreq	L174
1271                     ; 247 		ind_out_[i-1]=0b11111111;
1273  02aa 7b01          	ld	a,(OFST+0,sp)
1274  02ac 5f            	clrw	x
1275  02ad 97            	ld	xl,a
1276  02ae 5a            	decw	x
1277  02af a6ff          	ld	a,#255
1278  02b1 e700          	ld	(_ind_out_,x),a
1280  02b3 201c          	jra	L374
1281  02b5               L174:
1282                     ; 251 		ind_out_[i-1]=DIGISYM[dig[i-1]];
1284  02b5 7b01          	ld	a,(OFST+0,sp)
1285  02b7 5f            	clrw	x
1286  02b8 97            	ld	xl,a
1287  02b9 5a            	decw	x
1288  02ba 7b01          	ld	a,(OFST+0,sp)
1289  02bc 905f          	clrw	y
1290  02be 9097          	ld	yl,a
1291  02c0 905a          	decw	y
1292  02c2 90e600        	ld	a,(_dig,y)
1293  02c5 905f          	clrw	y
1294  02c7 9097          	ld	yl,a
1295  02c9 90d60000      	ld	a,(_DIGISYM,y)
1296  02cd e700          	ld	(_ind_out_,x),a
1297                     ; 252 		zero_on=0;
1299  02cf 3f00          	clr	_zero_on
1300  02d1               L374:
1301                     ; 243 for (i=4;i>0;i--)
1303  02d1 0a01          	dec	(OFST+0,sp)
1306  02d3 0d01          	tnz	(OFST+0,sp)
1307  02d5 26bc          	jrne	L364
1308                     ; 255 }
1311  02d7 84            	pop	a
1312  02d8 81            	ret
1408                     ; 258 void int2indI_slkuf(unsigned short in, char start, char len, char komma, char unzero, char fl) 
1408                     ; 259 {
1409                     	switch	.text
1410  02d9               _int2indI_slkuf:
1412  02d9 89            	pushw	x
1413  02da 88            	push	a
1414       00000001      OFST:	set	1
1417                     ; 262 bin2bcd_int(in);
1419  02db cd0238        	call	_bin2bcd_int
1421                     ; 263 if(unzero)bcd2ind_zero();
1423  02de 0d09          	tnz	(OFST+8,sp)
1424  02e0 2704          	jreq	L345
1427  02e2 ada6          	call	_bcd2ind_zero
1430  02e4 2003          	jra	L545
1431  02e6               L345:
1432                     ; 264 else bcd2ind();
1434  02e6 cd0263        	call	_bcd2ind
1436  02e9               L545:
1437                     ; 265 if(komma)ind_out_[komma]&=0b01111111; 
1439  02e9 0d08          	tnz	(OFST+7,sp)
1440  02eb 270a          	jreq	L745
1443  02ed 7b08          	ld	a,(OFST+7,sp)
1444  02ef 5f            	clrw	x
1445  02f0 97            	ld	xl,a
1446  02f1 e600          	ld	a,(_ind_out_,x)
1447  02f3 a47f          	and	a,#127
1448  02f5 e700          	ld	(_ind_out_,x),a
1449  02f7               L745:
1450                     ; 266 if(((fl==1)&&(bFL2)) ||	((fl==2)&&(bFL2)) || ((fl==5)&&(bFL5))) 
1452  02f7 7b0a          	ld	a,(OFST+9,sp)
1453  02f9 a101          	cp	a,#1
1454  02fb 2604          	jrne	L555
1456  02fd 3d00          	tnz	_bFL2
1457  02ff 2614          	jrne	L355
1458  0301               L555:
1460  0301 7b0a          	ld	a,(OFST+9,sp)
1461  0303 a102          	cp	a,#2
1462  0305 2604          	jrne	L165
1464  0307 3d00          	tnz	_bFL2
1465  0309 260a          	jrne	L355
1466  030b               L165:
1468  030b 7b0a          	ld	a,(OFST+9,sp)
1469  030d a105          	cp	a,#5
1470  030f 2619          	jrne	L155
1472  0311 3d00          	tnz	_bFL5
1473  0313 2715          	jreq	L155
1474  0315               L355:
1475                     ; 268 	for(i=0;i<len;i++) 
1477  0315 0f01          	clr	(OFST+0,sp)
1479  0317 200b          	jra	L765
1480  0319               L365:
1481                     ; 270 		ind_out_[i]=DIGISYM[17];
1483  0319 7b01          	ld	a,(OFST+0,sp)
1484  031b 5f            	clrw	x
1485  031c 97            	ld	xl,a
1486  031d c60011        	ld	a,_DIGISYM+17
1487  0320 e700          	ld	(_ind_out_,x),a
1488                     ; 268 	for(i=0;i<len;i++) 
1490  0322 0c01          	inc	(OFST+0,sp)
1491  0324               L765:
1494  0324 7b01          	ld	a,(OFST+0,sp)
1495  0326 1107          	cp	a,(OFST+6,sp)
1496  0328 25ef          	jrult	L365
1497  032a               L155:
1498                     ; 274 for(i=0;i<len;i++) 
1500  032a 0f01          	clr	(OFST+0,sp)
1502  032c 2016          	jra	L775
1503  032e               L375:
1504                     ; 276 	ind_outB[start+i]=ind_out_[i];
1506  032e 7b06          	ld	a,(OFST+5,sp)
1507  0330 5f            	clrw	x
1508  0331 1b01          	add	a,(OFST+0,sp)
1509  0333 2401          	jrnc	L25
1510  0335 5c            	incw	x
1511  0336               L25:
1512  0336 02            	rlwa	x,a
1513  0337 7b01          	ld	a,(OFST+0,sp)
1514  0339 905f          	clrw	y
1515  033b 9097          	ld	yl,a
1516  033d 90e600        	ld	a,(_ind_out_,y)
1517  0340 e700          	ld	(_ind_outB,x),a
1518                     ; 274 for(i=0;i<len;i++) 
1520  0342 0c01          	inc	(OFST+0,sp)
1521  0344               L775:
1524  0344 7b01          	ld	a,(OFST+0,sp)
1525  0346 1107          	cp	a,(OFST+6,sp)
1526  0348 25e4          	jrult	L375
1527                     ; 278 }
1530  034a 5b03          	addw	sp,#3
1531  034c 81            	ret
1628                     ; 281 void int2indII_slkuf(unsigned short in, char start, char len, char komma, char unzero, char fl) 
1628                     ; 282 {
1629                     	switch	.text
1630  034d               _int2indII_slkuf:
1632  034d 89            	pushw	x
1633  034e 88            	push	a
1634       00000001      OFST:	set	1
1637                     ; 285 bin2bcd_int(in);
1639  034f cd0238        	call	_bin2bcd_int
1641                     ; 286 if(unzero)bcd2ind_zero();
1643  0352 0d09          	tnz	(OFST+8,sp)
1644  0354 2705          	jreq	L156
1647  0356 cd028a        	call	_bcd2ind_zero
1650  0359 2003          	jra	L356
1651  035b               L156:
1652                     ; 287 else bcd2ind();
1654  035b cd0263        	call	_bcd2ind
1656  035e               L356:
1657                     ; 288 if(komma)ind_out_[komma]&=0b01111111; 
1659  035e 0d08          	tnz	(OFST+7,sp)
1660  0360 270a          	jreq	L556
1663  0362 7b08          	ld	a,(OFST+7,sp)
1664  0364 5f            	clrw	x
1665  0365 97            	ld	xl,a
1666  0366 e600          	ld	a,(_ind_out_,x)
1667  0368 a47f          	and	a,#127
1668  036a e700          	ld	(_ind_out_,x),a
1669  036c               L556:
1670                     ; 289 if(((fl==1)&&(bFL2)) || ((fl==2)&&(bFL2)) || ((fl==5)&&(bFL5))) 
1672  036c 7b0a          	ld	a,(OFST+9,sp)
1673  036e a101          	cp	a,#1
1674  0370 2604          	jrne	L366
1676  0372 3d00          	tnz	_bFL2
1677  0374 2614          	jrne	L166
1678  0376               L366:
1680  0376 7b0a          	ld	a,(OFST+9,sp)
1681  0378 a102          	cp	a,#2
1682  037a 2604          	jrne	L766
1684  037c 3d00          	tnz	_bFL2
1685  037e 260a          	jrne	L166
1686  0380               L766:
1688  0380 7b0a          	ld	a,(OFST+9,sp)
1689  0382 a105          	cp	a,#5
1690  0384 2619          	jrne	L756
1692  0386 3d00          	tnz	_bFL5
1693  0388 2715          	jreq	L756
1694  038a               L166:
1695                     ; 291 	for(i=0;i<len;i++) 
1697  038a 0f01          	clr	(OFST+0,sp)
1699  038c 200b          	jra	L576
1700  038e               L176:
1701                     ; 293 		ind_out_[i]=DIGISYM[17];
1703  038e 7b01          	ld	a,(OFST+0,sp)
1704  0390 5f            	clrw	x
1705  0391 97            	ld	xl,a
1706  0392 c60011        	ld	a,_DIGISYM+17
1707  0395 e700          	ld	(_ind_out_,x),a
1708                     ; 291 	for(i=0;i<len;i++) 
1710  0397 0c01          	inc	(OFST+0,sp)
1711  0399               L576:
1714  0399 7b01          	ld	a,(OFST+0,sp)
1715  039b 1107          	cp	a,(OFST+6,sp)
1716  039d 25ef          	jrult	L176
1717  039f               L756:
1718                     ; 297 for(i=0;i<len;i++) 
1720  039f 0f01          	clr	(OFST+0,sp)
1722  03a1 203d          	jra	L507
1723  03a3               L107:
1724                     ; 299 	ind_outC[start+i]=(ind_out_[i]<<1);
1726  03a3 7b06          	ld	a,(OFST+5,sp)
1727  03a5 5f            	clrw	x
1728  03a6 1b01          	add	a,(OFST+0,sp)
1729  03a8 2401          	jrnc	L65
1730  03aa 5c            	incw	x
1731  03ab               L65:
1732  03ab 02            	rlwa	x,a
1733  03ac 7b01          	ld	a,(OFST+0,sp)
1734  03ae 905f          	clrw	y
1735  03b0 9097          	ld	yl,a
1736  03b2 90e600        	ld	a,(_ind_out_,y)
1737  03b5 48            	sll	a
1738  03b6 e700          	ld	(_ind_outC,x),a
1739                     ; 300 	ind_outG[start+i]=0xff;
1741  03b8 7b06          	ld	a,(OFST+5,sp)
1742  03ba 5f            	clrw	x
1743  03bb 1b01          	add	a,(OFST+0,sp)
1744  03bd 2401          	jrnc	L06
1745  03bf 5c            	incw	x
1746  03c0               L06:
1747  03c0 02            	rlwa	x,a
1748  03c1 a6ff          	ld	a,#255
1749  03c3 e700          	ld	(_ind_outG,x),a
1750                     ; 301 	if(!(ind_out_[i]&0x80)) ind_outG[start+i]&=0xfe;
1752  03c5 7b01          	ld	a,(OFST+0,sp)
1753  03c7 5f            	clrw	x
1754  03c8 97            	ld	xl,a
1755  03c9 e600          	ld	a,(_ind_out_,x)
1756  03cb a580          	bcp	a,#128
1757  03cd 260f          	jrne	L117
1760  03cf 7b06          	ld	a,(OFST+5,sp)
1761  03d1 5f            	clrw	x
1762  03d2 1b01          	add	a,(OFST+0,sp)
1763  03d4 2401          	jrnc	L26
1764  03d6 5c            	incw	x
1765  03d7               L26:
1766  03d7 02            	rlwa	x,a
1767  03d8 e600          	ld	a,(_ind_outG,x)
1768  03da a4fe          	and	a,#254
1769  03dc e700          	ld	(_ind_outG,x),a
1770  03de               L117:
1771                     ; 297 for(i=0;i<len;i++) 
1773  03de 0c01          	inc	(OFST+0,sp)
1774  03e0               L507:
1777  03e0 7b01          	ld	a,(OFST+0,sp)
1778  03e2 1107          	cp	a,(OFST+6,sp)
1779  03e4 25bd          	jrult	L107
1780                     ; 303 }
1783  03e6 5b03          	addw	sp,#3
1784  03e8 81            	ret
1829                     ; 306 void ret_ind(char r_c, char r_s)
1829                     ; 307 {
1830                     	switch	.text
1831  03e9               _ret_ind:
1835                     ; 308 retCnt=r_c;
1837  03e9 9e            	ld	a,xh
1838  03ea b701          	ld	_retCnt,a
1839                     ; 309 retStep=r_s;
1841  03ec 9f            	ld	a,xl
1842  03ed b700          	ld	_retStep,a
1843                     ; 310 } 
1846  03ef 81            	ret
1872                     ; 313 void ret_ind_hndl(void)
1872                     ; 314 {
1873                     	switch	.text
1874  03f0               _ret_ind_hndl:
1878                     ; 315 if(retCnt)
1880  03f0 3d01          	tnz	_retCnt
1881  03f2 270b          	jreq	L547
1882                     ; 317 	if((--retCnt)==0)
1884  03f4 3a01          	dec	_retCnt
1885  03f6 2607          	jrne	L547
1886                     ; 319 		tree_down(retStep,0);
1888  03f8 5f            	clrw	x
1889  03f9 b600          	ld	a,_retStep
1890  03fb 95            	ld	xh,a
1891  03fc cd0178        	call	_tree_down
1893  03ff               L547:
1894                     ; 322 }
1897  03ff 81            	ret
1943                     ; 325 void led_set(signed char led_num, signed char led_stat)
1943                     ; 326 {
1944                     	switch	.text
1945  0400               _led_set:
1947  0400 89            	pushw	x
1948       00000000      OFST:	set	0
1951                     ; 327 gran_char(&led_num,1,8);
1953  0401 4b08          	push	#8
1954  0403 4b01          	push	#1
1955  0405 96            	ldw	x,sp
1956  0406 1c0003        	addw	x,#OFST+3
1957  0409 cd01e9        	call	_gran_char
1959  040c 85            	popw	x
1960                     ; 328 gran_char(&led_stat,0,2);
1962  040d 4b02          	push	#2
1963  040f 4b00          	push	#0
1964  0411 96            	ldw	x,sp
1965  0412 1c0004        	addw	x,#OFST+4
1966  0415 cd01e9        	call	_gran_char
1968  0418 85            	popw	x
1969                     ; 330 if(led_stat==0)
1971  0419 0d02          	tnz	(OFST+2,sp)
1972  041b 262e          	jrne	L377
1973                     ; 332 	led_ind_out1|=(1<<(led_num-1));	
1975  041d 7b01          	ld	a,(OFST+1,sp)
1976  041f 4a            	dec	a
1977  0420 5f            	clrw	x
1978  0421 4d            	tnz	a
1979  0422 2a01          	jrpl	L27
1980  0424 53            	cplw	x
1981  0425               L27:
1982  0425 97            	ld	xl,a
1983  0426 a601          	ld	a,#1
1984  0428 5d            	tnzw	x
1985  0429 2704          	jreq	L47
1986  042b               L67:
1987  042b 48            	sll	a
1988  042c 5a            	decw	x
1989  042d 26fc          	jrne	L67
1990  042f               L47:
1991  042f ba00          	or	a,_led_ind_out1
1992  0431 b700          	ld	_led_ind_out1,a
1993                     ; 333 	led_ind_out2|=(1<<(led_num-1));		
1995  0433 7b01          	ld	a,(OFST+1,sp)
1996  0435 4a            	dec	a
1997  0436 5f            	clrw	x
1998  0437 4d            	tnz	a
1999  0438 2a01          	jrpl	L001
2000  043a 53            	cplw	x
2001  043b               L001:
2002  043b 97            	ld	xl,a
2003  043c a601          	ld	a,#1
2004  043e 5d            	tnzw	x
2005  043f 2704          	jreq	L201
2006  0441               L401:
2007  0441 48            	sll	a
2008  0442 5a            	decw	x
2009  0443 26fc          	jrne	L401
2010  0445               L201:
2011  0445 ba00          	or	a,_led_ind_out2
2012  0447 b700          	ld	_led_ind_out2,a
2014  0449 2069          	jra	L577
2015  044b               L377:
2016                     ; 335 else if(led_stat==1)
2018  044b 7b02          	ld	a,(OFST+2,sp)
2019  044d a101          	cp	a,#1
2020  044f 2630          	jrne	L777
2021                     ; 337 	led_ind_out1&=~(1<<(led_num-1));	
2023  0451 7b01          	ld	a,(OFST+1,sp)
2024  0453 4a            	dec	a
2025  0454 5f            	clrw	x
2026  0455 4d            	tnz	a
2027  0456 2a01          	jrpl	L601
2028  0458 53            	cplw	x
2029  0459               L601:
2030  0459 97            	ld	xl,a
2031  045a a601          	ld	a,#1
2032  045c 5d            	tnzw	x
2033  045d 2704          	jreq	L011
2034  045f               L211:
2035  045f 48            	sll	a
2036  0460 5a            	decw	x
2037  0461 26fc          	jrne	L211
2038  0463               L011:
2039  0463 43            	cpl	a
2040  0464 b400          	and	a,_led_ind_out1
2041  0466 b700          	ld	_led_ind_out1,a
2042                     ; 338 	led_ind_out2&=~(1<<(led_num-1));
2044  0468 7b01          	ld	a,(OFST+1,sp)
2045  046a 4a            	dec	a
2046  046b 5f            	clrw	x
2047  046c 4d            	tnz	a
2048  046d 2a01          	jrpl	L411
2049  046f 53            	cplw	x
2050  0470               L411:
2051  0470 97            	ld	xl,a
2052  0471 a601          	ld	a,#1
2053  0473 5d            	tnzw	x
2054  0474 2704          	jreq	L611
2055  0476               L021:
2056  0476 48            	sll	a
2057  0477 5a            	decw	x
2058  0478 26fc          	jrne	L021
2059  047a               L611:
2060  047a 43            	cpl	a
2061  047b b400          	and	a,_led_ind_out2
2062  047d b700          	ld	_led_ind_out2,a
2064  047f 2033          	jra	L577
2065  0481               L777:
2066                     ; 340 else if(led_stat==2)
2068  0481 7b02          	ld	a,(OFST+2,sp)
2069  0483 a102          	cp	a,#2
2070  0485 262d          	jrne	L577
2071                     ; 342 	led_ind_out1&=~(1<<(led_num-1));	
2073  0487 7b01          	ld	a,(OFST+1,sp)
2074  0489 4a            	dec	a
2075  048a 5f            	clrw	x
2076  048b 4d            	tnz	a
2077  048c 2a01          	jrpl	L221
2078  048e 53            	cplw	x
2079  048f               L221:
2080  048f 97            	ld	xl,a
2081  0490 a601          	ld	a,#1
2082  0492 5d            	tnzw	x
2083  0493 2704          	jreq	L421
2084  0495               L621:
2085  0495 48            	sll	a
2086  0496 5a            	decw	x
2087  0497 26fc          	jrne	L621
2088  0499               L421:
2089  0499 43            	cpl	a
2090  049a b400          	and	a,_led_ind_out1
2091  049c b700          	ld	_led_ind_out1,a
2092                     ; 343 	led_ind_out2|=(1<<(led_num-1));	
2094  049e 7b01          	ld	a,(OFST+1,sp)
2095  04a0 4a            	dec	a
2096  04a1 5f            	clrw	x
2097  04a2 4d            	tnz	a
2098  04a3 2a01          	jrpl	L031
2099  04a5 53            	cplw	x
2100  04a6               L031:
2101  04a6 97            	ld	xl,a
2102  04a7 a601          	ld	a,#1
2103  04a9 5d            	tnzw	x
2104  04aa 2704          	jreq	L231
2105  04ac               L431:
2106  04ac 48            	sll	a
2107  04ad 5a            	decw	x
2108  04ae 26fc          	jrne	L431
2109  04b0               L231:
2110  04b0 ba00          	or	a,_led_ind_out2
2111  04b2 b700          	ld	_led_ind_out2,a
2112  04b4               L577:
2113                     ; 345 }
2116  04b4 85            	popw	x
2117  04b5 81            	ret
2153                     ; 348 void led_mask_off(signed char led_mask)
2153                     ; 349 {
2154                     	switch	.text
2155  04b6               _led_mask_off:
2157  04b6 88            	push	a
2158       00000000      OFST:	set	0
2161                     ; 350 led_ind_out1|=~led_mask;	
2163  04b7 43            	cpl	a
2164  04b8 ba00          	or	a,_led_ind_out1
2165  04ba b700          	ld	_led_ind_out1,a
2166                     ; 351 led_ind_out2|=~led_mask;
2168  04bc 7b01          	ld	a,(OFST+1,sp)
2169  04be 43            	cpl	a
2170  04bf ba00          	or	a,_led_ind_out2
2171  04c1 b700          	ld	_led_ind_out2,a
2172                     ; 352 }
2175  04c3 84            	pop	a
2176  04c4 81            	ret
2212                     ; 355 void led_mask_on(signed char led_mask)
2212                     ; 356 {
2213                     	switch	.text
2214  04c5               _led_mask_on:
2216  04c5 88            	push	a
2217       00000000      OFST:	set	0
2220                     ; 357 led_ind_out1&=~led_mask;	
2222  04c6 43            	cpl	a
2223  04c7 b400          	and	a,_led_ind_out1
2224  04c9 b700          	ld	_led_ind_out1,a
2225                     ; 358 led_ind_out2&=~led_mask;
2227  04cb 7b01          	ld	a,(OFST+1,sp)
2228  04cd 43            	cpl	a
2229  04ce b400          	and	a,_led_ind_out2
2230  04d0 b700          	ld	_led_ind_out2,a
2231                     ; 359 }
2234  04d2 84            	pop	a
2235  04d3 81            	ret
2271                     ; 362 void led_off(signed char led_num)
2271                     ; 363 {
2272                     	switch	.text
2273  04d4               _led_off:
2275  04d4 88            	push	a
2276       00000000      OFST:	set	0
2279                     ; 364 led_ind_out1|=(1<<(led_num-1));	
2281  04d5 4a            	dec	a
2282  04d6 5f            	clrw	x
2283  04d7 4d            	tnz	a
2284  04d8 2a01          	jrpl	L441
2285  04da 53            	cplw	x
2286  04db               L441:
2287  04db 97            	ld	xl,a
2288  04dc a601          	ld	a,#1
2289  04de 5d            	tnzw	x
2290  04df 2704          	jreq	L641
2291  04e1               L051:
2292  04e1 48            	sll	a
2293  04e2 5a            	decw	x
2294  04e3 26fc          	jrne	L051
2295  04e5               L641:
2296  04e5 ba00          	or	a,_led_ind_out1
2297  04e7 b700          	ld	_led_ind_out1,a
2298                     ; 365 led_ind_out2|=(1<<(led_num-1));
2300  04e9 7b01          	ld	a,(OFST+1,sp)
2301  04eb 4a            	dec	a
2302  04ec 5f            	clrw	x
2303  04ed 4d            	tnz	a
2304  04ee 2a01          	jrpl	L251
2305  04f0 53            	cplw	x
2306  04f1               L251:
2307  04f1 97            	ld	xl,a
2308  04f2 a601          	ld	a,#1
2309  04f4 5d            	tnzw	x
2310  04f5 2704          	jreq	L451
2311  04f7               L651:
2312  04f7 48            	sll	a
2313  04f8 5a            	decw	x
2314  04f9 26fc          	jrne	L651
2315  04fb               L451:
2316  04fb ba00          	or	a,_led_ind_out2
2317  04fd b700          	ld	_led_ind_out2,a
2318                     ; 366 }
2321  04ff 84            	pop	a
2322  0500 81            	ret
2358                     ; 369 void led_on(signed char led_num)
2358                     ; 370 {
2359                     	switch	.text
2360  0501               _led_on:
2362  0501 88            	push	a
2363       00000000      OFST:	set	0
2366                     ; 371 led_ind_out1&=~(1<<(led_num-1));	
2368  0502 4a            	dec	a
2369  0503 5f            	clrw	x
2370  0504 4d            	tnz	a
2371  0505 2a01          	jrpl	L261
2372  0507 53            	cplw	x
2373  0508               L261:
2374  0508 97            	ld	xl,a
2375  0509 a601          	ld	a,#1
2376  050b 5d            	tnzw	x
2377  050c 2704          	jreq	L461
2378  050e               L661:
2379  050e 48            	sll	a
2380  050f 5a            	decw	x
2381  0510 26fc          	jrne	L661
2382  0512               L461:
2383  0512 43            	cpl	a
2384  0513 b400          	and	a,_led_ind_out1
2385  0515 b700          	ld	_led_ind_out1,a
2386                     ; 372 led_ind_out2&=~(1<<(led_num-1));
2388  0517 7b01          	ld	a,(OFST+1,sp)
2389  0519 4a            	dec	a
2390  051a 5f            	clrw	x
2391  051b 4d            	tnz	a
2392  051c 2a01          	jrpl	L071
2393  051e 53            	cplw	x
2394  051f               L071:
2395  051f 97            	ld	xl,a
2396  0520 a601          	ld	a,#1
2397  0522 5d            	tnzw	x
2398  0523 2704          	jreq	L271
2399  0525               L471:
2400  0525 48            	sll	a
2401  0526 5a            	decw	x
2402  0527 26fc          	jrne	L471
2403  0529               L271:
2404  0529 43            	cpl	a
2405  052a b400          	and	a,_led_ind_out2
2406  052c b700          	ld	_led_ind_out2,a
2407                     ; 373 }
2410  052e 84            	pop	a
2411  052f 81            	ret
2447                     ; 376 void led_flash(signed char led_num)
2447                     ; 377 {
2448                     	switch	.text
2449  0530               _led_flash:
2451  0530 88            	push	a
2452       00000000      OFST:	set	0
2455                     ; 378 led_ind_out1&=~(1<<(led_num-1));	
2457  0531 4a            	dec	a
2458  0532 5f            	clrw	x
2459  0533 4d            	tnz	a
2460  0534 2a01          	jrpl	L002
2461  0536 53            	cplw	x
2462  0537               L002:
2463  0537 97            	ld	xl,a
2464  0538 a601          	ld	a,#1
2465  053a 5d            	tnzw	x
2466  053b 2704          	jreq	L202
2467  053d               L402:
2468  053d 48            	sll	a
2469  053e 5a            	decw	x
2470  053f 26fc          	jrne	L402
2471  0541               L202:
2472  0541 43            	cpl	a
2473  0542 b400          	and	a,_led_ind_out1
2474  0544 b700          	ld	_led_ind_out1,a
2475                     ; 379 led_ind_out2|=(1<<(led_num-1));
2477  0546 7b01          	ld	a,(OFST+1,sp)
2478  0548 4a            	dec	a
2479  0549 5f            	clrw	x
2480  054a 4d            	tnz	a
2481  054b 2a01          	jrpl	L602
2482  054d 53            	cplw	x
2483  054e               L602:
2484  054e 97            	ld	xl,a
2485  054f a601          	ld	a,#1
2486  0551 5d            	tnzw	x
2487  0552 2704          	jreq	L012
2488  0554               L212:
2489  0554 48            	sll	a
2490  0555 5a            	decw	x
2491  0556 26fc          	jrne	L212
2492  0558               L012:
2493  0558 ba00          	or	a,_led_ind_out2
2494  055a b700          	ld	_led_ind_out2,a
2495                     ; 380 }
2498  055c 84            	pop	a
2499  055d 81            	ret
2524                     ; 383 void random_gen(void)
2524                     ; 384 {
2525                     	switch	.text
2526  055e               _random_gen:
2530                     ; 385 currRandom=rand()%6;		
2532  055e cd0000        	call	_rand
2534  0561 a606          	ld	a,#6
2535  0563 cd0000        	call	c_smodx
2537  0566 01            	rrwa	x,a
2538  0567 b700          	ld	_currRandom,a
2539  0569 02            	rlwa	x,a
2540                     ; 386 }
2543  056a 81            	ret
2666                     	xref	_rand
2667                     	xdef	_random_gen
2668                     	xdef	_led_flash
2669                     	xdef	_led_on
2670                     	xdef	_led_off
2671                     	xdef	_led_mask_on
2672                     	xdef	_led_mask_off
2673                     	xdef	_led_set
2674                     	xdef	_ret_ind_hndl
2675                     	xdef	_ret_ind
2676                     	xdef	_int2indII_slkuf
2677                     	xdef	_int2indI_slkuf
2678                     	xdef	_bcd2ind_zero
2679                     	xdef	_bcd2ind
2680                     	xdef	_bin2bcd_int
2681                     	xdef	_gran_ring_char
2682                     	xdef	_gran_uchar
2683                     	xdef	_gran_char
2684                     	xdef	_tree_up
2685                     	xdef	_tree_down
2686                     	xdef	_clear_ind
2687                     	xdef	_but_drv
2688                     	xdef	_delay_us
2689                     	xdef	_out_drv
2690                     	switch	.ubsct
2691  0000               _retStep:
2692  0000 00            	ds.b	1
2693                     	xdef	_retStep
2694  0001               _retCnt:
2695  0001 00            	ds.b	1
2696                     	xdef	_retCnt
2697  0002               _but_onL_temp:
2698  0002 0000          	ds.b	2
2699                     	xdef	_but_onL_temp
2700  0004               _speed:
2701  0004 00            	ds.b	1
2702                     	xdef	_speed
2703  0005               _but1_cnt:
2704  0005 0000          	ds.b	2
2705                     	xdef	_but1_cnt
2706  0007               _but0_cnt:
2707  0007 0000          	ds.b	2
2708                     	xdef	_but0_cnt
2709  0009               _n_but:
2710  0009 00            	ds.b	1
2711                     	xdef	_n_but
2712  000a               _l_but:
2713  000a 00            	ds.b	1
2714                     	xdef	_l_but
2715  000b               _but:
2716  000b 00            	ds.b	1
2717                     	xdef	_but
2718  000c               _but_s:
2719  000c 00            	ds.b	1
2720                     	xdef	_but_s
2721  000d               _but_n:
2722  000d 00            	ds.b	1
2723                     	xdef	_but_n
2724  000e               _but_new:
2725  000e 00            	ds.b	1
2726                     	xdef	_but_new
2727                     	xref	_ind_hndl
2728                     	xref	_optr_kontr_cnt
2729                     	xref	_optr_stat
2730                     	xref.b	_out_stat
2731                     	xref.b	_led_ind_out2
2732                     	xref.b	_led_ind_out1
2733                     	xref.b	_bFL2
2734                     	xref.b	_bFL5
2735                     	xref.b	_zero_on
2736                     	xref.b	_ind_pointer
2737                     	xref.b	_b_ind
2738                     	xref.b	_a_ind
2739                     	xref	_DIGISYM
2740                     	xref.b	_ind_out_
2741                     	xref.b	_dig
2742                     	xref.b	_ind_outG
2743                     	xref.b	_ind_outC
2744                     	xref.b	_ind_outB
2745                     	xref.b	_currRandom
2746                     	xref	_outMode
2747                     	xref.b	c_x
2767                     	xref	c_smodx
2768                     	xref	c_xymov
2769                     	xref	c_yxmov
2770                     	xref	c_imul
2771                     	end
