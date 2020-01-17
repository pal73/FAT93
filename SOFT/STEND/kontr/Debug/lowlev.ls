   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  45                     ; 26 void out_drv(void)
  45                     ; 27 {
  47                     	switch	.text
  48  0000               _out_drv:
  52                     ; 28 GPIOE->DDR|=0b00101001;
  54  0000 c65016        	ld	a,20502
  55  0003 aa29          	or	a,#41
  56  0005 c75016        	ld	20502,a
  57                     ; 29 GPIOE->CR1&=0b11010110;
  59  0008 c65017        	ld	a,20503
  60  000b a4d6          	and	a,#214
  61  000d c75017        	ld	20503,a
  62                     ; 30 GPIOE->CR2&=0b11010110;
  64  0010 c65018        	ld	a,20504
  65  0013 a4d6          	and	a,#214
  66  0015 c75018        	ld	20504,a
  67                     ; 32 if(out_stat[0]==osON)		GPIOE->ODR&=0b11111110;
  69  0018 b600          	ld	a,_out_stat
  70  001a a101          	cp	a,#1
  71  001c 2606          	jrne	L12
  74  001e 72115014      	bres	20500,#0
  76  0022 2004          	jra	L32
  77  0024               L12:
  78                     ; 33 else 						GPIOE->ODR|=0b00000001;
  80  0024 72105014      	bset	20500,#0
  81  0028               L32:
  82                     ; 34 if(out_stat[1]==osON)		GPIOE->ODR&=0b11110111;
  84  0028 b601          	ld	a,_out_stat+1
  85  002a a101          	cp	a,#1
  86  002c 2606          	jrne	L52
  89  002e 72175014      	bres	20500,#3
  91  0032 2004          	jra	L72
  92  0034               L52:
  93                     ; 35 else 						GPIOE->ODR|=0b00001000;
  95  0034 72165014      	bset	20500,#3
  96  0038               L72:
  97                     ; 36 if(out_stat[2]==osON)		GPIOE->ODR&=0b11011111;
  99  0038 b602          	ld	a,_out_stat+2
 100  003a a101          	cp	a,#1
 101  003c 2606          	jrne	L13
 104  003e 721b5014      	bres	20500,#5
 106  0042 2004          	jra	L33
 107  0044               L13:
 108                     ; 37 else 						GPIOE->ODR|=0b00100000;
 110  0044 721a5014      	bset	20500,#5
 111  0048               L33:
 112                     ; 39 }
 115  0048 81            	ret
 159                     ; 79 void delay_us(short num_of_delay)
 159                     ; 80 {
 160                     	switch	.text
 161  0049               _delay_us:
 163  0049 89            	pushw	x
 164  004a 89            	pushw	x
 165       00000002      OFST:	set	2
 168                     ; 82 for(i==0;i<num_of_delay;i++)
 170  004b 1e01          	ldw	x,(OFST-1,sp)
 171  004d 2605          	jrne	L01
 172  004f ae0001        	ldw	x,#1
 173  0052 2001          	jra	L21
 174  0054               L01:
 175  0054 5f            	clrw	x
 176  0055               L21:
 178  0055 2008          	jra	L36
 179  0057               L75:
 180                     ; 84 	nop();
 183  0057 9d            nop
 185                     ; 82 for(i==0;i<num_of_delay;i++)
 188  0058 1e01          	ldw	x,(OFST-1,sp)
 189  005a 1c0001        	addw	x,#1
 190  005d 1f01          	ldw	(OFST-1,sp),x
 191  005f               L36:
 194  005f 9c            	rvf
 195  0060 1e01          	ldw	x,(OFST-1,sp)
 196  0062 1303          	cpw	x,(OFST+1,sp)
 197  0064 2ff1          	jrslt	L75
 198                     ; 86 }
 201  0066 5b04          	addw	sp,#4
 202  0068 81            	ret
 237                     ; 89 void but_drv(void)
 237                     ; 90 {
 238                     	switch	.text
 239  0069               _but_drv:
 243                     ; 92 but_n=(but_new)|0xf0; 	
 245  0069 b60e          	ld	a,_but_new
 246  006b aaf0          	or	a,#240
 247  006d b70d          	ld	_but_n,a
 248                     ; 93 if((but_n==0xff)||(but_n!=but_s))
 250  006f b60d          	ld	a,_but_n
 251  0071 a1ff          	cp	a,#255
 252  0073 2706          	jreq	L501
 254  0075 b60d          	ld	a,_but_n
 255  0077 b10c          	cp	a,_but_s
 256  0079 273b          	jreq	L301
 257  007b               L501:
 258                     ; 95  	speed=0;
 260  007b 3f04          	clr	_speed
 261                     ; 97 	if (((but0_cnt>=BUT_ON)||(but1_cnt!=0))&&(!l_but))
 263  007d 9c            	rvf
 264  007e be07          	ldw	x,_but0_cnt
 265  0080 a30005        	cpw	x,#5
 266  0083 2e04          	jrsge	L111
 268  0085 be05          	ldw	x,_but1_cnt
 269  0087 270b          	jreq	L701
 270  0089               L111:
 272  0089 3d0a          	tnz	_l_but
 273  008b 2607          	jrne	L701
 274                     ; 99    	n_but=1;
 276  008d 35010009      	mov	_n_but,#1
 277                     ; 100     but=(char)but_s;
 279  0091 450c0b        	mov	_but,_but_s
 280  0094               L701:
 281                     ; 102  	if (but1_cnt>=but_onL_temp)
 283  0094 9c            	rvf
 284  0095 be05          	ldw	x,_but1_cnt
 285  0097 b302          	cpw	x,_but_onL_temp
 286  0099 2f0a          	jrslt	L311
 287                     ; 104     n_but=1;
 289  009b 35010009      	mov	_n_but,#1
 290                     ; 105 		but=((char)but_s)&0x7f;
 292  009f b60c          	ld	a,_but_s
 293  00a1 a47f          	and	a,#127
 294  00a3 b70b          	ld	_but,a
 295  00a5               L311:
 296                     ; 107 	l_but=0;
 298  00a5 3f0a          	clr	_l_but
 299                     ; 108 	but_onL_temp=BUT_ONL;
 301  00a7 ae0014        	ldw	x,#20
 302  00aa bf02          	ldw	_but_onL_temp,x
 303                     ; 109 	but0_cnt=0;
 305  00ac 5f            	clrw	x
 306  00ad bf07          	ldw	_but0_cnt,x
 307                     ; 110 	but1_cnt=0;          
 309  00af 5f            	clrw	x
 310  00b0 bf05          	ldw	_but1_cnt,x
 311                     ; 111 	goto but_drv_out;
 312  00b2               L76:
 313                     ; 134 but_drv_out: 
 313                     ; 135 but_s=but_n;
 315  00b2 450d0c        	mov	_but_s,_but_n
 316                     ; 137 }
 319  00b5 81            	ret
 320  00b6               L301:
 321                     ; 113 if(but_n==but_s)
 323  00b6 b60d          	ld	a,_but_n
 324  00b8 b10c          	cp	a,_but_s
 325  00ba 26f6          	jrne	L76
 326                     ; 115   but0_cnt++;
 328  00bc be07          	ldw	x,_but0_cnt
 329  00be 1c0001        	addw	x,#1
 330  00c1 bf07          	ldw	_but0_cnt,x
 331                     ; 116 	if(but0_cnt>=BUT_ON)
 333  00c3 9c            	rvf
 334  00c4 be07          	ldw	x,_but0_cnt
 335  00c6 a30005        	cpw	x,#5
 336  00c9 2fe7          	jrslt	L76
 337                     ; 118 		but0_cnt=0;
 339  00cb 5f            	clrw	x
 340  00cc bf07          	ldw	_but0_cnt,x
 341                     ; 119 		but1_cnt++;
 343  00ce be05          	ldw	x,_but1_cnt
 344  00d0 1c0001        	addw	x,#1
 345  00d3 bf05          	ldw	_but1_cnt,x
 346                     ; 120 		if(but1_cnt>=but_onL_temp)
 348  00d5 9c            	rvf
 349  00d6 be05          	ldw	x,_but1_cnt
 350  00d8 b302          	cpw	x,_but_onL_temp
 351  00da 2fd6          	jrslt	L76
 352                     ; 122 			but=(char)(but_s&0x7f);
 354  00dc b60c          	ld	a,_but_s
 355  00de a47f          	and	a,#127
 356  00e0 b70b          	ld	_but,a
 357                     ; 123 			but1_cnt=0;
 359  00e2 5f            	clrw	x
 360  00e3 bf05          	ldw	_but1_cnt,x
 361                     ; 124 			n_but=1;
 363  00e5 35010009      	mov	_n_but,#1
 364                     ; 125 			l_but=1;
 366  00e9 3501000a      	mov	_l_but,#1
 367                     ; 126 			if(speed)
 369  00ed 3d04          	tnz	_speed
 370  00ef 27c1          	jreq	L76
 371                     ; 128 				but_onL_temp=but_onL_temp>>1;
 373  00f1 3702          	sra	_but_onL_temp
 374  00f3 3603          	rrc	_but_onL_temp+1
 375                     ; 129 				if(but_onL_temp<=2) but_onL_temp=2;
 377  00f5 9c            	rvf
 378  00f6 be02          	ldw	x,_but_onL_temp
 379  00f8 a30003        	cpw	x,#3
 380  00fb 2eb5          	jrsge	L76
 383  00fd ae0002        	ldw	x,#2
 384  0100 bf02          	ldw	_but_onL_temp,x
 385  0102 20ae          	jra	L76
 422                     ; 139 void clear_ind(void)
 422                     ; 140 {
 423                     	switch	.text
 424  0104               _clear_ind:
 426  0104 88            	push	a
 427       00000001      OFST:	set	1
 430                     ; 142 for(i=0;i<4;i++)
 432  0105 0f01          	clr	(OFST+0,sp)
 433  0107               L541:
 434                     ; 144 	ind_outB[i]=0xff;
 436  0107 7b01          	ld	a,(OFST+0,sp)
 437  0109 5f            	clrw	x
 438  010a 97            	ld	xl,a
 439  010b a6ff          	ld	a,#255
 440  010d e700          	ld	(_ind_outB,x),a
 441                     ; 145 	ind_outC[i]=0xff;
 443  010f 7b01          	ld	a,(OFST+0,sp)
 444  0111 5f            	clrw	x
 445  0112 97            	ld	xl,a
 446  0113 a6ff          	ld	a,#255
 447  0115 e700          	ld	(_ind_outC,x),a
 448                     ; 146 	ind_outG[i]=0xff;
 450  0117 7b01          	ld	a,(OFST+0,sp)
 451  0119 5f            	clrw	x
 452  011a 97            	ld	xl,a
 453  011b a6ff          	ld	a,#255
 454  011d e700          	ld	(_ind_outG,x),a
 455                     ; 142 for(i=0;i<4;i++)
 457  011f 0c01          	inc	(OFST+0,sp)
 460  0121 7b01          	ld	a,(OFST+0,sp)
 461  0123 a104          	cp	a,#4
 462  0125 25e0          	jrult	L541
 463                     ; 148 }
 466  0127 84            	pop	a
 467  0128 81            	ret
 515                     ; 151 void tree_down(signed char offset_ind,signed char offset_sub_ind)
 515                     ; 152 {
 516                     	switch	.text
 517  0129               _tree_down:
 519  0129 89            	pushw	x
 520       00000000      OFST:	set	0
 523                     ; 153 ind_pointer--;
 525  012a 3a00          	dec	_ind_pointer
 526                     ; 154 ind_pointer+=offset_ind;
 528  012c 9e            	ld	a,xh
 529  012d bb00          	add	a,_ind_pointer
 530  012f b700          	ld	_ind_pointer,a
 531                     ; 155 a_ind=b_ind[ind_pointer];
 533  0131 5f            	clrw	x
 534  0132 b600          	ld	a,_ind_pointer
 535  0134 2a01          	jrpl	L22
 536  0136 53            	cplw	x
 537  0137               L22:
 538  0137 97            	ld	xl,a
 539  0138 90ae0005      	ldw	y,#5
 540  013c cd0000        	call	c_imul
 542  013f 01            	rrwa	x,a
 543  0140 ab00          	add	a,#_b_ind
 544  0142 2401          	jrnc	L42
 545  0144 5c            	incw	x
 546  0145               L42:
 547  0145 5f            	clrw	x
 548  0146 97            	ld	xl,a
 549  0147 90ae0000      	ldw	y,#_a_ind
 550  014b a605          	ld	a,#5
 551  014d cd0000        	call	c_yxmov
 553                     ; 157 sub_ind+=offset_sub_ind;
 555  0150 b601          	ld	a,_a_ind+1
 556  0152 1b02          	add	a,(OFST+2,sp)
 557  0154 b701          	ld	_a_ind+1,a
 558                     ; 158 clear_ind();
 560  0156 adac          	call	_clear_ind
 562                     ; 159 ind_hndl();
 564  0158 cd0000        	call	_ind_hndl
 566                     ; 160 }
 569  015b 85            	popw	x
 570  015c 81            	ret
 636                     ; 163 void tree_up(char tind, char tsub_ind, char tindex_set, char tsub_ind1)
 636                     ; 164 {
 637                     	switch	.text
 638  015d               _tree_up:
 640  015d 89            	pushw	x
 641       00000000      OFST:	set	0
 644                     ; 165 b_ind[ind_pointer++]=a_ind;
 646  015e b600          	ld	a,_ind_pointer
 647  0160 97            	ld	xl,a
 648  0161 3c00          	inc	_ind_pointer
 649  0163 9f            	ld	a,xl
 650  0164 5f            	clrw	x
 651  0165 4d            	tnz	a
 652  0166 2a01          	jrpl	L03
 653  0168 53            	cplw	x
 654  0169               L03:
 655  0169 97            	ld	xl,a
 656  016a 90ae0005      	ldw	y,#5
 657  016e cd0000        	call	c_imul
 659  0171 01            	rrwa	x,a
 660  0172 ab00          	add	a,#_b_ind
 661  0174 2401          	jrnc	L23
 662  0176 5c            	incw	x
 663  0177               L23:
 664  0177 5f            	clrw	x
 665  0178 97            	ld	xl,a
 666  0179 90ae0000      	ldw	y,#_a_ind
 667  017d a605          	ld	a,#5
 668  017f cd0000        	call	c_xymov
 670                     ; 166 ind=(ind_enum)tind;
 672  0182 7b01          	ld	a,(OFST+1,sp)
 673  0184 b700          	ld	_a_ind,a
 674                     ; 167 sub_ind=tsub_ind;
 676  0186 7b02          	ld	a,(OFST+2,sp)
 677  0188 b701          	ld	_a_ind+1,a
 678                     ; 168 index_set=tindex_set;
 680  018a 7b05          	ld	a,(OFST+5,sp)
 681  018c b704          	ld	_a_ind+4,a
 682                     ; 169 sub_ind1=tsub_ind1;
 684  018e 7b06          	ld	a,(OFST+6,sp)
 685  0190 b702          	ld	_a_ind+2,a
 686                     ; 170 clear_ind();
 688  0192 cd0104        	call	_clear_ind
 690                     ; 171 ind_hndl();
 692  0195 cd0000        	call	_ind_hndl
 694                     ; 172 }
 697  0198 85            	popw	x
 698  0199 81            	ret
 751                     ; 175 void gran_char(signed char *adr, signed char min, signed char max)
 751                     ; 176 {
 752                     	switch	.text
 753  019a               _gran_char:
 755  019a 89            	pushw	x
 756       00000000      OFST:	set	0
 759                     ; 177 if (*adr<min) *adr=min;
 761  019b 9c            	rvf
 762  019c f6            	ld	a,(x)
 763  019d 1105          	cp	a,(OFST+5,sp)
 764  019f 2e05          	jrsge	L552
 767  01a1 7b05          	ld	a,(OFST+5,sp)
 768  01a3 1e01          	ldw	x,(OFST+1,sp)
 769  01a5 f7            	ld	(x),a
 770  01a6               L552:
 771                     ; 178 if (*adr>max) *adr=max; 
 773  01a6 9c            	rvf
 774  01a7 1e01          	ldw	x,(OFST+1,sp)
 775  01a9 f6            	ld	a,(x)
 776  01aa 1106          	cp	a,(OFST+6,sp)
 777  01ac 2d05          	jrsle	L752
 780  01ae 7b06          	ld	a,(OFST+6,sp)
 781  01b0 1e01          	ldw	x,(OFST+1,sp)
 782  01b2 f7            	ld	(x),a
 783  01b3               L752:
 784                     ; 179 } 
 787  01b3 85            	popw	x
 788  01b4 81            	ret
 841                     ; 182 void gran_uchar(unsigned char *adr, unsigned char min, unsigned char max)
 841                     ; 183 {
 842                     	switch	.text
 843  01b5               _gran_uchar:
 845  01b5 89            	pushw	x
 846       00000000      OFST:	set	0
 849                     ; 184 if (*adr<min) *adr=min;
 851  01b6 f6            	ld	a,(x)
 852  01b7 1105          	cp	a,(OFST+5,sp)
 853  01b9 2405          	jruge	L703
 856  01bb 7b05          	ld	a,(OFST+5,sp)
 857  01bd 1e01          	ldw	x,(OFST+1,sp)
 858  01bf f7            	ld	(x),a
 859  01c0               L703:
 860                     ; 185 if (*adr>max) *adr=max; 
 862  01c0 1e01          	ldw	x,(OFST+1,sp)
 863  01c2 f6            	ld	a,(x)
 864  01c3 1106          	cp	a,(OFST+6,sp)
 865  01c5 2305          	jrule	L113
 868  01c7 7b06          	ld	a,(OFST+6,sp)
 869  01c9 1e01          	ldw	x,(OFST+1,sp)
 870  01cb f7            	ld	(x),a
 871  01cc               L113:
 872                     ; 186 } 
 875  01cc 85            	popw	x
 876  01cd 81            	ret
 929                     ; 189 void gran_ring_char(signed char *adr, signed char min, signed char max)
 929                     ; 190 {
 930                     	switch	.text
 931  01ce               _gran_ring_char:
 933  01ce 89            	pushw	x
 934       00000000      OFST:	set	0
 937                     ; 191 if (*adr<min) *adr=max;
 939  01cf 9c            	rvf
 940  01d0 f6            	ld	a,(x)
 941  01d1 1105          	cp	a,(OFST+5,sp)
 942  01d3 2e05          	jrsge	L143
 945  01d5 7b06          	ld	a,(OFST+6,sp)
 946  01d7 1e01          	ldw	x,(OFST+1,sp)
 947  01d9 f7            	ld	(x),a
 948  01da               L143:
 949                     ; 192 if (*adr>max) *adr=min; 
 951  01da 9c            	rvf
 952  01db 1e01          	ldw	x,(OFST+1,sp)
 953  01dd f6            	ld	a,(x)
 954  01de 1106          	cp	a,(OFST+6,sp)
 955  01e0 2d05          	jrsle	L343
 958  01e2 7b05          	ld	a,(OFST+5,sp)
 959  01e4 1e01          	ldw	x,(OFST+1,sp)
 960  01e6 f7            	ld	(x),a
 961  01e7               L343:
 962                     ; 193 } 
 965  01e7 85            	popw	x
 966  01e8 81            	ret
1010                     ; 196 void bin2bcd_int(unsigned short in) 
1010                     ; 197 {
1011                     	switch	.text
1012  01e9               _bin2bcd_int:
1014  01e9 89            	pushw	x
1015  01ea 88            	push	a
1016       00000001      OFST:	set	1
1019                     ; 198 char i=5;
1021                     ; 200 for(i=0;i<5;i++)
1023  01eb 0f01          	clr	(OFST+0,sp)
1024  01ed               L763:
1025                     ; 202 	dig[i]=in%10;
1027  01ed 1e02          	ldw	x,(OFST+1,sp)
1028  01ef 90ae000a      	ldw	y,#10
1029  01f3 65            	divw	x,y
1030  01f4 51            	exgw	x,y
1031  01f5 7b01          	ld	a,(OFST+0,sp)
1032  01f7 905f          	clrw	y
1033  01f9 9097          	ld	yl,a
1034  01fb 01            	rrwa	x,a
1035  01fc 90e700        	ld	(_dig,y),a
1036  01ff 02            	rlwa	x,a
1037                     ; 203 	in/=10;
1039  0200 1e02          	ldw	x,(OFST+1,sp)
1040  0202 90ae000a      	ldw	y,#10
1041  0206 65            	divw	x,y
1042  0207 1f02          	ldw	(OFST+1,sp),x
1043                     ; 200 for(i=0;i<5;i++)
1045  0209 0c01          	inc	(OFST+0,sp)
1048  020b 7b01          	ld	a,(OFST+0,sp)
1049  020d a105          	cp	a,#5
1050  020f 25dc          	jrult	L763
1051                     ; 205 }
1054  0211 5b03          	addw	sp,#3
1055  0213 81            	ret
1092                     ; 208 void bcd2ind(void) 
1092                     ; 209 {
1093                     	switch	.text
1094  0214               _bcd2ind:
1096  0214 88            	push	a
1097       00000001      OFST:	set	1
1100                     ; 212 for (i=4;i>0;i--)
1102  0215 a604          	ld	a,#4
1103  0217 6b01          	ld	(OFST+0,sp),a
1104  0219               L314:
1105                     ; 214 	ind_out_[i-1]=DIGISYM[dig[i-1]];
1107  0219 7b01          	ld	a,(OFST+0,sp)
1108  021b 5f            	clrw	x
1109  021c 97            	ld	xl,a
1110  021d 5a            	decw	x
1111  021e 7b01          	ld	a,(OFST+0,sp)
1112  0220 905f          	clrw	y
1113  0222 9097          	ld	yl,a
1114  0224 905a          	decw	y
1115  0226 90e600        	ld	a,(_dig,y)
1116  0229 905f          	clrw	y
1117  022b 9097          	ld	yl,a
1118  022d 90d60000      	ld	a,(_DIGISYM,y)
1119  0231 e700          	ld	(_ind_out_,x),a
1120                     ; 212 for (i=4;i>0;i--)
1122  0233 0a01          	dec	(OFST+0,sp)
1125  0235 0d01          	tnz	(OFST+0,sp)
1126  0237 26e0          	jrne	L314
1127                     ; 216 }
1130  0239 84            	pop	a
1131  023a 81            	ret
1169                     ; 219 void bcd2ind_zero(void) 
1169                     ; 220 {
1170                     	switch	.text
1171  023b               _bcd2ind_zero:
1173  023b 88            	push	a
1174       00000001      OFST:	set	1
1177                     ; 222 zero_on=1;
1179  023c 35010000      	mov	_zero_on,#1
1180                     ; 223 for (i=4;i>0;i--)
1182  0240 a604          	ld	a,#4
1183  0242 6b01          	ld	(OFST+0,sp),a
1184  0244               L734:
1185                     ; 225 	if(zero_on&&(!dig[i-1])&&(i-1))
1187  0244 3d00          	tnz	_zero_on
1188  0246 271e          	jreq	L544
1190  0248 7b01          	ld	a,(OFST+0,sp)
1191  024a 5f            	clrw	x
1192  024b 97            	ld	xl,a
1193  024c 5a            	decw	x
1194  024d 6d00          	tnz	(_dig,x)
1195  024f 2615          	jrne	L544
1197  0251 7b01          	ld	a,(OFST+0,sp)
1198  0253 5f            	clrw	x
1199  0254 97            	ld	xl,a
1200  0255 5a            	decw	x
1201  0256 a30000        	cpw	x,#0
1202  0259 270b          	jreq	L544
1203                     ; 227 		ind_out_[i-1]=0b11111111;
1205  025b 7b01          	ld	a,(OFST+0,sp)
1206  025d 5f            	clrw	x
1207  025e 97            	ld	xl,a
1208  025f 5a            	decw	x
1209  0260 a6ff          	ld	a,#255
1210  0262 e700          	ld	(_ind_out_,x),a
1212  0264 201c          	jra	L744
1213  0266               L544:
1214                     ; 231 		ind_out_[i-1]=DIGISYM[dig[i-1]];
1216  0266 7b01          	ld	a,(OFST+0,sp)
1217  0268 5f            	clrw	x
1218  0269 97            	ld	xl,a
1219  026a 5a            	decw	x
1220  026b 7b01          	ld	a,(OFST+0,sp)
1221  026d 905f          	clrw	y
1222  026f 9097          	ld	yl,a
1223  0271 905a          	decw	y
1224  0273 90e600        	ld	a,(_dig,y)
1225  0276 905f          	clrw	y
1226  0278 9097          	ld	yl,a
1227  027a 90d60000      	ld	a,(_DIGISYM,y)
1228  027e e700          	ld	(_ind_out_,x),a
1229                     ; 232 		zero_on=0;
1231  0280 3f00          	clr	_zero_on
1232  0282               L744:
1233                     ; 223 for (i=4;i>0;i--)
1235  0282 0a01          	dec	(OFST+0,sp)
1238  0284 0d01          	tnz	(OFST+0,sp)
1239  0286 26bc          	jrne	L734
1240                     ; 235 }
1243  0288 84            	pop	a
1244  0289 81            	ret
1340                     ; 238 void int2indI_slkuf(unsigned short in, char start, char len, char komma, char unzero, char fl) 
1340                     ; 239 {
1341                     	switch	.text
1342  028a               _int2indI_slkuf:
1344  028a 89            	pushw	x
1345  028b 88            	push	a
1346       00000001      OFST:	set	1
1349                     ; 242 bin2bcd_int(in);
1351  028c cd01e9        	call	_bin2bcd_int
1353                     ; 243 if(unzero)bcd2ind_zero();
1355  028f 0d09          	tnz	(OFST+8,sp)
1356  0291 2704          	jreq	L715
1359  0293 ada6          	call	_bcd2ind_zero
1362  0295 2003          	jra	L125
1363  0297               L715:
1364                     ; 244 else bcd2ind();
1366  0297 cd0214        	call	_bcd2ind
1368  029a               L125:
1369                     ; 245 if(komma)ind_out_[komma]&=0b01111111; 
1371  029a 0d08          	tnz	(OFST+7,sp)
1372  029c 270a          	jreq	L325
1375  029e 7b08          	ld	a,(OFST+7,sp)
1376  02a0 5f            	clrw	x
1377  02a1 97            	ld	xl,a
1378  02a2 e600          	ld	a,(_ind_out_,x)
1379  02a4 a47f          	and	a,#127
1380  02a6 e700          	ld	(_ind_out_,x),a
1381  02a8               L325:
1382                     ; 246 if(((fl==1)&&(bFL2)) ||	((fl==2)&&(bFL2)) || ((fl==5)&&(bFL5))) 
1384  02a8 7b0a          	ld	a,(OFST+9,sp)
1385  02aa a101          	cp	a,#1
1386  02ac 2604          	jrne	L135
1388  02ae 3d00          	tnz	_bFL2
1389  02b0 2614          	jrne	L725
1390  02b2               L135:
1392  02b2 7b0a          	ld	a,(OFST+9,sp)
1393  02b4 a102          	cp	a,#2
1394  02b6 2604          	jrne	L535
1396  02b8 3d00          	tnz	_bFL2
1397  02ba 260a          	jrne	L725
1398  02bc               L535:
1400  02bc 7b0a          	ld	a,(OFST+9,sp)
1401  02be a105          	cp	a,#5
1402  02c0 2619          	jrne	L525
1404  02c2 3d00          	tnz	_bFL5
1405  02c4 2715          	jreq	L525
1406  02c6               L725:
1407                     ; 248 	for(i=0;i<len;i++) 
1409  02c6 0f01          	clr	(OFST+0,sp)
1411  02c8 200b          	jra	L345
1412  02ca               L735:
1413                     ; 250 		ind_out_[i]=DIGISYM[17];
1415  02ca 7b01          	ld	a,(OFST+0,sp)
1416  02cc 5f            	clrw	x
1417  02cd 97            	ld	xl,a
1418  02ce c60011        	ld	a,_DIGISYM+17
1419  02d1 e700          	ld	(_ind_out_,x),a
1420                     ; 248 	for(i=0;i<len;i++) 
1422  02d3 0c01          	inc	(OFST+0,sp)
1423  02d5               L345:
1426  02d5 7b01          	ld	a,(OFST+0,sp)
1427  02d7 1107          	cp	a,(OFST+6,sp)
1428  02d9 25ef          	jrult	L735
1429  02db               L525:
1430                     ; 254 for(i=0;i<len;i++) 
1432  02db 0f01          	clr	(OFST+0,sp)
1434  02dd 2016          	jra	L355
1435  02df               L745:
1436                     ; 256 	ind_outB[start+i]=ind_out_[i];
1438  02df 7b06          	ld	a,(OFST+5,sp)
1439  02e1 5f            	clrw	x
1440  02e2 1b01          	add	a,(OFST+0,sp)
1441  02e4 2401          	jrnc	L25
1442  02e6 5c            	incw	x
1443  02e7               L25:
1444  02e7 02            	rlwa	x,a
1445  02e8 7b01          	ld	a,(OFST+0,sp)
1446  02ea 905f          	clrw	y
1447  02ec 9097          	ld	yl,a
1448  02ee 90e600        	ld	a,(_ind_out_,y)
1449  02f1 e700          	ld	(_ind_outB,x),a
1450                     ; 254 for(i=0;i<len;i++) 
1452  02f3 0c01          	inc	(OFST+0,sp)
1453  02f5               L355:
1456  02f5 7b01          	ld	a,(OFST+0,sp)
1457  02f7 1107          	cp	a,(OFST+6,sp)
1458  02f9 25e4          	jrult	L745
1459                     ; 258 }
1462  02fb 5b03          	addw	sp,#3
1463  02fd 81            	ret
1560                     ; 261 void int2indII_slkuf(unsigned short in, char start, char len, char komma, char unzero, char fl) 
1560                     ; 262 {
1561                     	switch	.text
1562  02fe               _int2indII_slkuf:
1564  02fe 89            	pushw	x
1565  02ff 88            	push	a
1566       00000001      OFST:	set	1
1569                     ; 265 bin2bcd_int(in);
1571  0300 cd01e9        	call	_bin2bcd_int
1573                     ; 266 if(unzero)bcd2ind_zero();
1575  0303 0d09          	tnz	(OFST+8,sp)
1576  0305 2705          	jreq	L526
1579  0307 cd023b        	call	_bcd2ind_zero
1582  030a 2003          	jra	L726
1583  030c               L526:
1584                     ; 267 else bcd2ind();
1586  030c cd0214        	call	_bcd2ind
1588  030f               L726:
1589                     ; 268 if(komma)ind_out_[komma]&=0b01111111; 
1591  030f 0d08          	tnz	(OFST+7,sp)
1592  0311 270a          	jreq	L136
1595  0313 7b08          	ld	a,(OFST+7,sp)
1596  0315 5f            	clrw	x
1597  0316 97            	ld	xl,a
1598  0317 e600          	ld	a,(_ind_out_,x)
1599  0319 a47f          	and	a,#127
1600  031b e700          	ld	(_ind_out_,x),a
1601  031d               L136:
1602                     ; 269 if(((fl==1)&&(bFL2)) || ((fl==2)&&(bFL2)) || ((fl==5)&&(bFL5))) 
1604  031d 7b0a          	ld	a,(OFST+9,sp)
1605  031f a101          	cp	a,#1
1606  0321 2604          	jrne	L736
1608  0323 3d00          	tnz	_bFL2
1609  0325 2614          	jrne	L536
1610  0327               L736:
1612  0327 7b0a          	ld	a,(OFST+9,sp)
1613  0329 a102          	cp	a,#2
1614  032b 2604          	jrne	L346
1616  032d 3d00          	tnz	_bFL2
1617  032f 260a          	jrne	L536
1618  0331               L346:
1620  0331 7b0a          	ld	a,(OFST+9,sp)
1621  0333 a105          	cp	a,#5
1622  0335 2619          	jrne	L336
1624  0337 3d00          	tnz	_bFL5
1625  0339 2715          	jreq	L336
1626  033b               L536:
1627                     ; 271 	for(i=0;i<len;i++) 
1629  033b 0f01          	clr	(OFST+0,sp)
1631  033d 200b          	jra	L156
1632  033f               L546:
1633                     ; 273 		ind_out_[i]=DIGISYM[17];
1635  033f 7b01          	ld	a,(OFST+0,sp)
1636  0341 5f            	clrw	x
1637  0342 97            	ld	xl,a
1638  0343 c60011        	ld	a,_DIGISYM+17
1639  0346 e700          	ld	(_ind_out_,x),a
1640                     ; 271 	for(i=0;i<len;i++) 
1642  0348 0c01          	inc	(OFST+0,sp)
1643  034a               L156:
1646  034a 7b01          	ld	a,(OFST+0,sp)
1647  034c 1107          	cp	a,(OFST+6,sp)
1648  034e 25ef          	jrult	L546
1649  0350               L336:
1650                     ; 277 for(i=0;i<len;i++) 
1652  0350 0f01          	clr	(OFST+0,sp)
1654  0352 203d          	jra	L166
1655  0354               L556:
1656                     ; 279 	ind_outC[start+i]=(ind_out_[i]<<1);
1658  0354 7b06          	ld	a,(OFST+5,sp)
1659  0356 5f            	clrw	x
1660  0357 1b01          	add	a,(OFST+0,sp)
1661  0359 2401          	jrnc	L65
1662  035b 5c            	incw	x
1663  035c               L65:
1664  035c 02            	rlwa	x,a
1665  035d 7b01          	ld	a,(OFST+0,sp)
1666  035f 905f          	clrw	y
1667  0361 9097          	ld	yl,a
1668  0363 90e600        	ld	a,(_ind_out_,y)
1669  0366 48            	sll	a
1670  0367 e700          	ld	(_ind_outC,x),a
1671                     ; 280 	ind_outG[start+i]=0xff;
1673  0369 7b06          	ld	a,(OFST+5,sp)
1674  036b 5f            	clrw	x
1675  036c 1b01          	add	a,(OFST+0,sp)
1676  036e 2401          	jrnc	L06
1677  0370 5c            	incw	x
1678  0371               L06:
1679  0371 02            	rlwa	x,a
1680  0372 a6ff          	ld	a,#255
1681  0374 e700          	ld	(_ind_outG,x),a
1682                     ; 281 	if(!(ind_out_[i]&0x80)) ind_outG[start+i]&=0xfe;
1684  0376 7b01          	ld	a,(OFST+0,sp)
1685  0378 5f            	clrw	x
1686  0379 97            	ld	xl,a
1687  037a e600          	ld	a,(_ind_out_,x)
1688  037c a580          	bcp	a,#128
1689  037e 260f          	jrne	L566
1692  0380 7b06          	ld	a,(OFST+5,sp)
1693  0382 5f            	clrw	x
1694  0383 1b01          	add	a,(OFST+0,sp)
1695  0385 2401          	jrnc	L26
1696  0387 5c            	incw	x
1697  0388               L26:
1698  0388 02            	rlwa	x,a
1699  0389 e600          	ld	a,(_ind_outG,x)
1700  038b a4fe          	and	a,#254
1701  038d e700          	ld	(_ind_outG,x),a
1702  038f               L566:
1703                     ; 277 for(i=0;i<len;i++) 
1705  038f 0c01          	inc	(OFST+0,sp)
1706  0391               L166:
1709  0391 7b01          	ld	a,(OFST+0,sp)
1710  0393 1107          	cp	a,(OFST+6,sp)
1711  0395 25bd          	jrult	L556
1712                     ; 283 }
1715  0397 5b03          	addw	sp,#3
1716  0399 81            	ret
1761                     ; 286 void ret_ind(char r_c, char r_s)
1761                     ; 287 {
1762                     	switch	.text
1763  039a               _ret_ind:
1767                     ; 288 retCnt=r_c;
1769  039a 9e            	ld	a,xh
1770  039b b701          	ld	_retCnt,a
1771                     ; 289 retStep=r_s;
1773  039d 9f            	ld	a,xl
1774  039e b700          	ld	_retStep,a
1775                     ; 290 } 
1778  03a0 81            	ret
1804                     ; 293 void ret_ind_hndl(void)
1804                     ; 294 {
1805                     	switch	.text
1806  03a1               _ret_ind_hndl:
1810                     ; 295 if(retCnt)
1812  03a1 3d01          	tnz	_retCnt
1813  03a3 270b          	jreq	L127
1814                     ; 297 	if((--retCnt)==0)
1816  03a5 3a01          	dec	_retCnt
1817  03a7 2607          	jrne	L127
1818                     ; 299 		tree_down(retStep,0);
1820  03a9 5f            	clrw	x
1821  03aa b600          	ld	a,_retStep
1822  03ac 95            	ld	xh,a
1823  03ad cd0129        	call	_tree_down
1825  03b0               L127:
1826                     ; 302 }
1829  03b0 81            	ret
1875                     ; 305 void led_set(signed char led_num, signed char led_stat)
1875                     ; 306 {
1876                     	switch	.text
1877  03b1               _led_set:
1879  03b1 89            	pushw	x
1880       00000000      OFST:	set	0
1883                     ; 307 gran_char(&led_num,1,8);
1885  03b2 4b08          	push	#8
1886  03b4 4b01          	push	#1
1887  03b6 96            	ldw	x,sp
1888  03b7 1c0003        	addw	x,#OFST+3
1889  03ba cd019a        	call	_gran_char
1891  03bd 85            	popw	x
1892                     ; 308 gran_char(&led_stat,0,2);
1894  03be 4b02          	push	#2
1895  03c0 4b00          	push	#0
1896  03c2 96            	ldw	x,sp
1897  03c3 1c0004        	addw	x,#OFST+4
1898  03c6 cd019a        	call	_gran_char
1900  03c9 85            	popw	x
1901                     ; 310 if(led_stat==0)
1903  03ca 0d02          	tnz	(OFST+2,sp)
1904  03cc 262e          	jrne	L747
1905                     ; 312 	led_ind_out1|=(1<<(led_num-1));	
1907  03ce 7b01          	ld	a,(OFST+1,sp)
1908  03d0 4a            	dec	a
1909  03d1 5f            	clrw	x
1910  03d2 4d            	tnz	a
1911  03d3 2a01          	jrpl	L27
1912  03d5 53            	cplw	x
1913  03d6               L27:
1914  03d6 97            	ld	xl,a
1915  03d7 a601          	ld	a,#1
1916  03d9 5d            	tnzw	x
1917  03da 2704          	jreq	L47
1918  03dc               L67:
1919  03dc 48            	sll	a
1920  03dd 5a            	decw	x
1921  03de 26fc          	jrne	L67
1922  03e0               L47:
1923  03e0 ba00          	or	a,_led_ind_out1
1924  03e2 b700          	ld	_led_ind_out1,a
1925                     ; 313 	led_ind_out2|=(1<<(led_num-1));		
1927  03e4 7b01          	ld	a,(OFST+1,sp)
1928  03e6 4a            	dec	a
1929  03e7 5f            	clrw	x
1930  03e8 4d            	tnz	a
1931  03e9 2a01          	jrpl	L001
1932  03eb 53            	cplw	x
1933  03ec               L001:
1934  03ec 97            	ld	xl,a
1935  03ed a601          	ld	a,#1
1936  03ef 5d            	tnzw	x
1937  03f0 2704          	jreq	L201
1938  03f2               L401:
1939  03f2 48            	sll	a
1940  03f3 5a            	decw	x
1941  03f4 26fc          	jrne	L401
1942  03f6               L201:
1943  03f6 ba00          	or	a,_led_ind_out2
1944  03f8 b700          	ld	_led_ind_out2,a
1946  03fa 2069          	jra	L157
1947  03fc               L747:
1948                     ; 315 else if(led_stat==1)
1950  03fc 7b02          	ld	a,(OFST+2,sp)
1951  03fe a101          	cp	a,#1
1952  0400 2630          	jrne	L357
1953                     ; 317 	led_ind_out1&=~(1<<(led_num-1));	
1955  0402 7b01          	ld	a,(OFST+1,sp)
1956  0404 4a            	dec	a
1957  0405 5f            	clrw	x
1958  0406 4d            	tnz	a
1959  0407 2a01          	jrpl	L601
1960  0409 53            	cplw	x
1961  040a               L601:
1962  040a 97            	ld	xl,a
1963  040b a601          	ld	a,#1
1964  040d 5d            	tnzw	x
1965  040e 2704          	jreq	L011
1966  0410               L211:
1967  0410 48            	sll	a
1968  0411 5a            	decw	x
1969  0412 26fc          	jrne	L211
1970  0414               L011:
1971  0414 43            	cpl	a
1972  0415 b400          	and	a,_led_ind_out1
1973  0417 b700          	ld	_led_ind_out1,a
1974                     ; 318 	led_ind_out2&=~(1<<(led_num-1));
1976  0419 7b01          	ld	a,(OFST+1,sp)
1977  041b 4a            	dec	a
1978  041c 5f            	clrw	x
1979  041d 4d            	tnz	a
1980  041e 2a01          	jrpl	L411
1981  0420 53            	cplw	x
1982  0421               L411:
1983  0421 97            	ld	xl,a
1984  0422 a601          	ld	a,#1
1985  0424 5d            	tnzw	x
1986  0425 2704          	jreq	L611
1987  0427               L021:
1988  0427 48            	sll	a
1989  0428 5a            	decw	x
1990  0429 26fc          	jrne	L021
1991  042b               L611:
1992  042b 43            	cpl	a
1993  042c b400          	and	a,_led_ind_out2
1994  042e b700          	ld	_led_ind_out2,a
1996  0430 2033          	jra	L157
1997  0432               L357:
1998                     ; 320 else if(led_stat==2)
2000  0432 7b02          	ld	a,(OFST+2,sp)
2001  0434 a102          	cp	a,#2
2002  0436 262d          	jrne	L157
2003                     ; 322 	led_ind_out1&=~(1<<(led_num-1));	
2005  0438 7b01          	ld	a,(OFST+1,sp)
2006  043a 4a            	dec	a
2007  043b 5f            	clrw	x
2008  043c 4d            	tnz	a
2009  043d 2a01          	jrpl	L221
2010  043f 53            	cplw	x
2011  0440               L221:
2012  0440 97            	ld	xl,a
2013  0441 a601          	ld	a,#1
2014  0443 5d            	tnzw	x
2015  0444 2704          	jreq	L421
2016  0446               L621:
2017  0446 48            	sll	a
2018  0447 5a            	decw	x
2019  0448 26fc          	jrne	L621
2020  044a               L421:
2021  044a 43            	cpl	a
2022  044b b400          	and	a,_led_ind_out1
2023  044d b700          	ld	_led_ind_out1,a
2024                     ; 323 	led_ind_out2|=(1<<(led_num-1));	
2026  044f 7b01          	ld	a,(OFST+1,sp)
2027  0451 4a            	dec	a
2028  0452 5f            	clrw	x
2029  0453 4d            	tnz	a
2030  0454 2a01          	jrpl	L031
2031  0456 53            	cplw	x
2032  0457               L031:
2033  0457 97            	ld	xl,a
2034  0458 a601          	ld	a,#1
2035  045a 5d            	tnzw	x
2036  045b 2704          	jreq	L231
2037  045d               L431:
2038  045d 48            	sll	a
2039  045e 5a            	decw	x
2040  045f 26fc          	jrne	L431
2041  0461               L231:
2042  0461 ba00          	or	a,_led_ind_out2
2043  0463 b700          	ld	_led_ind_out2,a
2044  0465               L157:
2045                     ; 325 }
2048  0465 85            	popw	x
2049  0466 81            	ret
2085                     ; 328 void led_mask_off(signed char led_mask)
2085                     ; 329 {
2086                     	switch	.text
2087  0467               _led_mask_off:
2089  0467 88            	push	a
2090       00000000      OFST:	set	0
2093                     ; 330 led_ind_out1|=~led_mask;	
2095  0468 43            	cpl	a
2096  0469 ba00          	or	a,_led_ind_out1
2097  046b b700          	ld	_led_ind_out1,a
2098                     ; 331 led_ind_out2|=~led_mask;
2100  046d 7b01          	ld	a,(OFST+1,sp)
2101  046f 43            	cpl	a
2102  0470 ba00          	or	a,_led_ind_out2
2103  0472 b700          	ld	_led_ind_out2,a
2104                     ; 332 }
2107  0474 84            	pop	a
2108  0475 81            	ret
2144                     ; 335 void led_mask_on(signed char led_mask)
2144                     ; 336 {
2145                     	switch	.text
2146  0476               _led_mask_on:
2148  0476 88            	push	a
2149       00000000      OFST:	set	0
2152                     ; 337 led_ind_out1&=~led_mask;	
2154  0477 43            	cpl	a
2155  0478 b400          	and	a,_led_ind_out1
2156  047a b700          	ld	_led_ind_out1,a
2157                     ; 338 led_ind_out2&=~led_mask;
2159  047c 7b01          	ld	a,(OFST+1,sp)
2160  047e 43            	cpl	a
2161  047f b400          	and	a,_led_ind_out2
2162  0481 b700          	ld	_led_ind_out2,a
2163                     ; 339 }
2166  0483 84            	pop	a
2167  0484 81            	ret
2203                     ; 342 void led_off(signed char led_num)
2203                     ; 343 {
2204                     	switch	.text
2205  0485               _led_off:
2207  0485 88            	push	a
2208       00000000      OFST:	set	0
2211                     ; 344 led_ind_out1|=(1<<(led_num-1));	
2213  0486 4a            	dec	a
2214  0487 5f            	clrw	x
2215  0488 4d            	tnz	a
2216  0489 2a01          	jrpl	L441
2217  048b 53            	cplw	x
2218  048c               L441:
2219  048c 97            	ld	xl,a
2220  048d a601          	ld	a,#1
2221  048f 5d            	tnzw	x
2222  0490 2704          	jreq	L641
2223  0492               L051:
2224  0492 48            	sll	a
2225  0493 5a            	decw	x
2226  0494 26fc          	jrne	L051
2227  0496               L641:
2228  0496 ba00          	or	a,_led_ind_out1
2229  0498 b700          	ld	_led_ind_out1,a
2230                     ; 345 led_ind_out2|=(1<<(led_num-1));
2232  049a 7b01          	ld	a,(OFST+1,sp)
2233  049c 4a            	dec	a
2234  049d 5f            	clrw	x
2235  049e 4d            	tnz	a
2236  049f 2a01          	jrpl	L251
2237  04a1 53            	cplw	x
2238  04a2               L251:
2239  04a2 97            	ld	xl,a
2240  04a3 a601          	ld	a,#1
2241  04a5 5d            	tnzw	x
2242  04a6 2704          	jreq	L451
2243  04a8               L651:
2244  04a8 48            	sll	a
2245  04a9 5a            	decw	x
2246  04aa 26fc          	jrne	L651
2247  04ac               L451:
2248  04ac ba00          	or	a,_led_ind_out2
2249  04ae b700          	ld	_led_ind_out2,a
2250                     ; 346 }
2253  04b0 84            	pop	a
2254  04b1 81            	ret
2290                     ; 349 void led_on(signed char led_num)
2290                     ; 350 {
2291                     	switch	.text
2292  04b2               _led_on:
2294  04b2 88            	push	a
2295       00000000      OFST:	set	0
2298                     ; 351 led_ind_out1&=~(1<<(led_num-1));	
2300  04b3 4a            	dec	a
2301  04b4 5f            	clrw	x
2302  04b5 4d            	tnz	a
2303  04b6 2a01          	jrpl	L261
2304  04b8 53            	cplw	x
2305  04b9               L261:
2306  04b9 97            	ld	xl,a
2307  04ba a601          	ld	a,#1
2308  04bc 5d            	tnzw	x
2309  04bd 2704          	jreq	L461
2310  04bf               L661:
2311  04bf 48            	sll	a
2312  04c0 5a            	decw	x
2313  04c1 26fc          	jrne	L661
2314  04c3               L461:
2315  04c3 43            	cpl	a
2316  04c4 b400          	and	a,_led_ind_out1
2317  04c6 b700          	ld	_led_ind_out1,a
2318                     ; 352 led_ind_out2&=~(1<<(led_num-1));
2320  04c8 7b01          	ld	a,(OFST+1,sp)
2321  04ca 4a            	dec	a
2322  04cb 5f            	clrw	x
2323  04cc 4d            	tnz	a
2324  04cd 2a01          	jrpl	L071
2325  04cf 53            	cplw	x
2326  04d0               L071:
2327  04d0 97            	ld	xl,a
2328  04d1 a601          	ld	a,#1
2329  04d3 5d            	tnzw	x
2330  04d4 2704          	jreq	L271
2331  04d6               L471:
2332  04d6 48            	sll	a
2333  04d7 5a            	decw	x
2334  04d8 26fc          	jrne	L471
2335  04da               L271:
2336  04da 43            	cpl	a
2337  04db b400          	and	a,_led_ind_out2
2338  04dd b700          	ld	_led_ind_out2,a
2339                     ; 353 }
2342  04df 84            	pop	a
2343  04e0 81            	ret
2379                     ; 356 void led_flash(signed char led_num)
2379                     ; 357 {
2380                     	switch	.text
2381  04e1               _led_flash:
2383  04e1 88            	push	a
2384       00000000      OFST:	set	0
2387                     ; 358 led_ind_out1&=~(1<<(led_num-1));	
2389  04e2 4a            	dec	a
2390  04e3 5f            	clrw	x
2391  04e4 4d            	tnz	a
2392  04e5 2a01          	jrpl	L002
2393  04e7 53            	cplw	x
2394  04e8               L002:
2395  04e8 97            	ld	xl,a
2396  04e9 a601          	ld	a,#1
2397  04eb 5d            	tnzw	x
2398  04ec 2704          	jreq	L202
2399  04ee               L402:
2400  04ee 48            	sll	a
2401  04ef 5a            	decw	x
2402  04f0 26fc          	jrne	L402
2403  04f2               L202:
2404  04f2 43            	cpl	a
2405  04f3 b400          	and	a,_led_ind_out1
2406  04f5 b700          	ld	_led_ind_out1,a
2407                     ; 359 led_ind_out2|=(1<<(led_num-1));
2409  04f7 7b01          	ld	a,(OFST+1,sp)
2410  04f9 4a            	dec	a
2411  04fa 5f            	clrw	x
2412  04fb 4d            	tnz	a
2413  04fc 2a01          	jrpl	L602
2414  04fe 53            	cplw	x
2415  04ff               L602:
2416  04ff 97            	ld	xl,a
2417  0500 a601          	ld	a,#1
2418  0502 5d            	tnzw	x
2419  0503 2704          	jreq	L012
2420  0505               L212:
2421  0505 48            	sll	a
2422  0506 5a            	decw	x
2423  0507 26fc          	jrne	L212
2424  0509               L012:
2425  0509 ba00          	or	a,_led_ind_out2
2426  050b b700          	ld	_led_ind_out2,a
2427                     ; 360 }
2430  050d 84            	pop	a
2431  050e 81            	ret
2456                     ; 363 void random_gen(void)
2456                     ; 364 {
2457                     	switch	.text
2458  050f               _random_gen:
2462                     ; 365 currRandom=rand()%6;		
2464  050f cd0000        	call	_rand
2466  0512 a606          	ld	a,#6
2467  0514 cd0000        	call	c_smodx
2469  0517 01            	rrwa	x,a
2470  0518 b700          	ld	_currRandom,a
2471  051a 02            	rlwa	x,a
2472                     ; 366 }
2475  051b 81            	ret
2598                     	xref	_rand
2599                     	xdef	_random_gen
2600                     	xdef	_led_flash
2601                     	xdef	_led_on
2602                     	xdef	_led_off
2603                     	xdef	_led_mask_on
2604                     	xdef	_led_mask_off
2605                     	xdef	_led_set
2606                     	xdef	_ret_ind_hndl
2607                     	xdef	_ret_ind
2608                     	xdef	_int2indII_slkuf
2609                     	xdef	_int2indI_slkuf
2610                     	xdef	_bcd2ind_zero
2611                     	xdef	_bcd2ind
2612                     	xdef	_bin2bcd_int
2613                     	xdef	_gran_ring_char
2614                     	xdef	_gran_uchar
2615                     	xdef	_gran_char
2616                     	xdef	_tree_up
2617                     	xdef	_tree_down
2618                     	xdef	_clear_ind
2619                     	xdef	_but_drv
2620                     	xdef	_delay_us
2621                     	xdef	_out_drv
2622                     	switch	.ubsct
2623  0000               _retStep:
2624  0000 00            	ds.b	1
2625                     	xdef	_retStep
2626  0001               _retCnt:
2627  0001 00            	ds.b	1
2628                     	xdef	_retCnt
2629  0002               _but_onL_temp:
2630  0002 0000          	ds.b	2
2631                     	xdef	_but_onL_temp
2632  0004               _speed:
2633  0004 00            	ds.b	1
2634                     	xdef	_speed
2635  0005               _but1_cnt:
2636  0005 0000          	ds.b	2
2637                     	xdef	_but1_cnt
2638  0007               _but0_cnt:
2639  0007 0000          	ds.b	2
2640                     	xdef	_but0_cnt
2641  0009               _n_but:
2642  0009 00            	ds.b	1
2643                     	xdef	_n_but
2644  000a               _l_but:
2645  000a 00            	ds.b	1
2646                     	xdef	_l_but
2647  000b               _but:
2648  000b 00            	ds.b	1
2649                     	xdef	_but
2650  000c               _but_s:
2651  000c 00            	ds.b	1
2652                     	xdef	_but_s
2653  000d               _but_n:
2654  000d 00            	ds.b	1
2655                     	xdef	_but_n
2656  000e               _but_new:
2657  000e 00            	ds.b	1
2658                     	xdef	_but_new
2659                     	xref	_ind_hndl
2660                     	xref.b	_out_stat
2661                     	xref.b	_led_ind_out2
2662                     	xref.b	_led_ind_out1
2663                     	xref.b	_bFL2
2664                     	xref.b	_bFL5
2665                     	xref.b	_zero_on
2666                     	xref.b	_ind_pointer
2667                     	xref.b	_b_ind
2668                     	xref.b	_a_ind
2669                     	xref	_DIGISYM
2670                     	xref.b	_ind_out_
2671                     	xref.b	_dig
2672                     	xref.b	_ind_outG
2673                     	xref.b	_ind_outC
2674                     	xref.b	_ind_outB
2675                     	xref.b	_currRandom
2676                     	xref.b	c_x
2696                     	xref	c_smodx
2697                     	xref	c_xymov
2698                     	xref	c_yxmov
2699                     	xref	c_imul
2700                     	end
