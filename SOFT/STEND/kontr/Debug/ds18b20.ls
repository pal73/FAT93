   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  16                     	switch	.data
  17  0000               _waterSensorErrorStat:
  18  0000 55            	dc.b	85
  19  0001               _waterSensorErrorStatOld:
  20  0001 55            	dc.b	85
  21                     	switch	.ubsct
  22  0000               L3_bCONV:
  23  0000 00            	ds.b	1
  89                     ; 18 void ds18b20_temper_drv(void)
  89                     ; 19 {
  91                     	switch	.text
  92  0000               _ds18b20_temper_drv:
  94  0000 88            	push	a
  95       00000001      OFST:	set	1
  98                     ; 22 if(!bCONV)
 100  0001 3d00          	tnz	L3_bCONV
 101  0003 266e          	jrne	L14
 102                     ; 25 	bCONV=1;
 104  0005 35010000      	mov	L3_bCONV,#1
 105                     ; 26 	temp=wire1_polling();
 107  0009 cd0229        	call	_wire1_polling
 109  000c 6b01          	ld	(OFST+0,sp),a
 110                     ; 27 	if(temp==1)
 112  000e 7b01          	ld	a,(OFST+0,sp)
 113  0010 a101          	cp	a,#1
 114  0012 261a          	jrne	L34
 115                     ; 29 		wire1_send_byte(0xCC);
 117  0014 a6cc          	ld	a,#204
 118  0016 cd0189        	call	_wire1_send_byte
 120                     ; 30 		wire1_send_byte(0x44);
 122  0019 a644          	ld	a,#68
 123  001b cd0189        	call	_wire1_send_byte
 125                     ; 32 		ds18b20ErrorHiCnt=0;
 127  001e 725f0002      	clr	_ds18b20ErrorHiCnt
 128                     ; 33 		ds18b20ErrorLoCnt=0;
 130  0022 725f0001      	clr	_ds18b20ErrorLoCnt
 131                     ; 34 		waterSensorErrorStat=dsesNORM;		
 133  0026 35550000      	mov	_waterSensorErrorStat,#85
 135  002a ac0c010c      	jpf	L36
 136  002e               L34:
 137                     ; 38 		if(temp==0)
 139  002e 0d01          	tnz	(OFST+0,sp)
 140  0030 261a          	jrne	L74
 141                     ; 40 			if(ds18b20ErrorHiCnt<10)
 143  0032 c60002        	ld	a,_ds18b20ErrorHiCnt
 144  0035 a10a          	cp	a,#10
 145  0037 240f          	jruge	L15
 146                     ; 42 				ds18b20ErrorHiCnt++;
 148  0039 725c0002      	inc	_ds18b20ErrorHiCnt
 149                     ; 43 				if(ds18b20ErrorHiCnt>=10)
 151  003d c60002        	ld	a,_ds18b20ErrorHiCnt
 152  0040 a10a          	cp	a,#10
 153  0042 2504          	jrult	L15
 154                     ; 45 					waterSensorErrorStat=dsesHI;	
 156  0044 35010000      	mov	_waterSensorErrorStat,#1
 157  0048               L15:
 158                     ; 48 			ds18b20ErrorLoCnt=0;
 160  0048 725f0001      	clr	_ds18b20ErrorLoCnt
 161  004c               L74:
 162                     ; 51 		if(temp==5)
 164  004c 7b01          	ld	a,(OFST+0,sp)
 165  004e a105          	cp	a,#5
 166  0050 2703          	jreq	L6
 167  0052 cc010c        	jp	L36
 168  0055               L6:
 169                     ; 53 			if(ds18b20ErrorLoCnt<10)
 171  0055 c60001        	ld	a,_ds18b20ErrorLoCnt
 172  0058 a10a          	cp	a,#10
 173  005a 240f          	jruge	L75
 174                     ; 55 				ds18b20ErrorLoCnt++;
 176  005c 725c0001      	inc	_ds18b20ErrorLoCnt
 177                     ; 56 				if(ds18b20ErrorLoCnt>=10)
 179  0060 c60001        	ld	a,_ds18b20ErrorLoCnt
 180  0063 a10a          	cp	a,#10
 181  0065 2504          	jrult	L75
 182                     ; 58 					waterSensorErrorStat=dsesLO;	
 184  0067 725f0000      	clr	_waterSensorErrorStat
 185  006b               L75:
 186                     ; 61 			ds18b20ErrorHiCnt=0;
 188  006b 725f0002      	clr	_ds18b20ErrorHiCnt
 189  006f ac0c010c      	jpf	L36
 190  0073               L14:
 191                     ; 69 	bCONV=0;
 193  0073 3f00          	clr	L3_bCONV
 194                     ; 70 	temp=wire1_polling();
 196  0075 cd0229        	call	_wire1_polling
 198  0078 6b01          	ld	(OFST+0,sp),a
 199                     ; 71 	if(temp==1)
 201  007a 7b01          	ld	a,(OFST+0,sp)
 202  007c a101          	cp	a,#1
 203  007e 264e          	jrne	L56
 204                     ; 73 		wire1_send_byte(0xCC);
 206  0080 a6cc          	ld	a,#204
 207  0082 cd0189        	call	_wire1_send_byte
 209                     ; 74 		wire1_send_byte(0xBE);
 211  0085 a6be          	ld	a,#190
 212  0087 cd0189        	call	_wire1_send_byte
 214                     ; 75 		wire1_in[0]=wire1_read_byte();
 216  008a cd01a6        	call	_wire1_read_byte
 218  008d c70003        	ld	_wire1_in,a
 219                     ; 76 		wire1_in[1]=wire1_read_byte();
 221  0090 cd01a6        	call	_wire1_read_byte
 223  0093 c70004        	ld	_wire1_in+1,a
 224                     ; 77 		wire1_in[2]=wire1_read_byte();
 226  0096 cd01a6        	call	_wire1_read_byte
 228  0099 c70005        	ld	_wire1_in+2,a
 229                     ; 78 		wire1_in[3]=wire1_read_byte();
 231  009c cd01a6        	call	_wire1_read_byte
 233  009f c70006        	ld	_wire1_in+3,a
 234                     ; 79 		wire1_in[4]=wire1_read_byte();
 236  00a2 cd01a6        	call	_wire1_read_byte
 238  00a5 c70007        	ld	_wire1_in+4,a
 239                     ; 80 		wire1_in[5]=wire1_read_byte();
 241  00a8 cd01a6        	call	_wire1_read_byte
 243  00ab c70008        	ld	_wire1_in+5,a
 244                     ; 81 		wire1_in[6]=wire1_read_byte();
 246  00ae cd01a6        	call	_wire1_read_byte
 248  00b1 c70009        	ld	_wire1_in+6,a
 249                     ; 82 		wire1_in[7]=wire1_read_byte();
 251  00b4 cd01a6        	call	_wire1_read_byte
 253  00b7 c7000a        	ld	_wire1_in+7,a
 254                     ; 83 		wire1_in[8]=wire1_read_byte();
 256  00ba cd01a6        	call	_wire1_read_byte
 258  00bd c7000b        	ld	_wire1_in+8,a
 259                     ; 85 		ds18b20ErrorHiCnt=0;
 261  00c0 725f0002      	clr	_ds18b20ErrorHiCnt
 262                     ; 86 		ds18b20ErrorLoCnt=0;
 264  00c4 725f0001      	clr	_ds18b20ErrorLoCnt
 265                     ; 87 		waterSensorErrorStat=dsesNORM;
 267  00c8 35550000      	mov	_waterSensorErrorStat,#85
 269  00cc 203e          	jra	L36
 270  00ce               L56:
 271                     ; 91 		if(temp==0)
 273  00ce 0d01          	tnz	(OFST+0,sp)
 274  00d0 261a          	jrne	L17
 275                     ; 93 			if(ds18b20ErrorHiCnt<10)
 277  00d2 c60002        	ld	a,_ds18b20ErrorHiCnt
 278  00d5 a10a          	cp	a,#10
 279  00d7 240f          	jruge	L37
 280                     ; 95 				ds18b20ErrorHiCnt++;
 282  00d9 725c0002      	inc	_ds18b20ErrorHiCnt
 283                     ; 96 				if(ds18b20ErrorHiCnt>=10)
 285  00dd c60002        	ld	a,_ds18b20ErrorHiCnt
 286  00e0 a10a          	cp	a,#10
 287  00e2 2504          	jrult	L37
 288                     ; 98 					waterSensorErrorStat=dsesHI;	
 290  00e4 35010000      	mov	_waterSensorErrorStat,#1
 291  00e8               L37:
 292                     ; 101 			ds18b20ErrorLoCnt=0;
 294  00e8 725f0001      	clr	_ds18b20ErrorLoCnt
 295  00ec               L17:
 296                     ; 104 		if(temp==5)
 298  00ec 7b01          	ld	a,(OFST+0,sp)
 299  00ee a105          	cp	a,#5
 300  00f0 261a          	jrne	L36
 301                     ; 106 			if(ds18b20ErrorLoCnt<10)
 303  00f2 c60001        	ld	a,_ds18b20ErrorLoCnt
 304  00f5 a10a          	cp	a,#10
 305  00f7 240f          	jruge	L101
 306                     ; 108 				ds18b20ErrorLoCnt++;
 308  00f9 725c0001      	inc	_ds18b20ErrorLoCnt
 309                     ; 109 				if(ds18b20ErrorLoCnt>=10)
 311  00fd c60001        	ld	a,_ds18b20ErrorLoCnt
 312  0100 a10a          	cp	a,#10
 313  0102 2504          	jrult	L101
 314                     ; 111 					waterSensorErrorStat=dsesLO;	
 316  0104 725f0000      	clr	_waterSensorErrorStat
 317  0108               L101:
 318                     ; 114 			ds18b20ErrorHiCnt=0;
 320  0108 725f0002      	clr	_ds18b20ErrorHiCnt
 321  010c               L36:
 322                     ; 120 if((waterSensorErrorStat!=dsesNORM)&&(waterSensorErrorStatOld==dsesNORM))
 324  010c c60000        	ld	a,_waterSensorErrorStat
 325  010f a155          	cp	a,#85
 326  0111 2705          	jreq	L501
 328  0113 c60001        	ld	a,_waterSensorErrorStatOld
 329  0116 a155          	cp	a,#85
 330  0118               L501:
 331                     ; 144 waterSensorErrorStatOld=waterSensorErrorStat;
 333  0118 5500000001    	mov	_waterSensorErrorStatOld,_waterSensorErrorStat
 334                     ; 146 }
 337  011d 84            	pop	a
 338  011e 81            	ret
 374                     ; 149 char wire1_w1ts(void)
 374                     ; 150 {
 375                     	switch	.text
 376  011f               _wire1_w1ts:
 378  011f 89            	pushw	x
 379       00000002      OFST:	set	2
 382                     ; 152 DS18B20PORT->DDR|=(1<<DS18B20PIN);
 384  0120 721e5011      	bset	20497,#7
 385                     ; 153 DS18B20PORT->ODR&=~(1<<DS18B20PIN);
 387  0124 721f500f      	bres	20495,#7
 388                     ; 156 for(i=0;i<6;i++)
 390  0128 5f            	clrw	x
 391  0129 1f01          	ldw	(OFST-1,sp),x
 392  012b               L521:
 393                     ; 158 	nop();
 396  012b 9d            nop
 398                     ; 156 for(i=0;i<6;i++)
 401  012c 1e01          	ldw	x,(OFST-1,sp)
 402  012e 1c0001        	addw	x,#1
 403  0131 1f01          	ldw	(OFST-1,sp),x
 406  0133 9c            	rvf
 407  0134 1e01          	ldw	x,(OFST-1,sp)
 408  0136 a30006        	cpw	x,#6
 409  0139 2ff0          	jrslt	L521
 410                     ; 160 DS18B20PORT->ODR|=(1<<DS18B20PIN);
 412  013b 721e500f      	bset	20495,#7
 413                     ; 163 for(i=0;i<60;i++)
 415  013f 5f            	clrw	x
 416  0140 1f01          	ldw	(OFST-1,sp),x
 417  0142               L331:
 418                     ; 165 	nop();
 421  0142 9d            nop
 423                     ; 163 for(i=0;i<60;i++)
 426  0143 1e01          	ldw	x,(OFST-1,sp)
 427  0145 1c0001        	addw	x,#1
 428  0148 1f01          	ldw	(OFST-1,sp),x
 431  014a 9c            	rvf
 432  014b 1e01          	ldw	x,(OFST-1,sp)
 433  014d a3003c        	cpw	x,#60
 434  0150 2ff0          	jrslt	L331
 435                     ; 167 }
 438  0152 85            	popw	x
 439  0153 81            	ret
 475                     ; 170 char wire1_w0ts(void)
 475                     ; 171 {
 476                     	switch	.text
 477  0154               _wire1_w0ts:
 479  0154 89            	pushw	x
 480       00000002      OFST:	set	2
 483                     ; 173 DS18B20PORT->DDR|=(1<<DS18B20PIN);
 485  0155 721e5011      	bset	20497,#7
 486                     ; 174 DS18B20PORT->ODR&=~(1<<DS18B20PIN);
 488  0159 721f500f      	bres	20495,#7
 489                     ; 177 for(i=0;i<60;i++)
 491  015d 5f            	clrw	x
 492  015e 1f01          	ldw	(OFST-1,sp),x
 493  0160               L751:
 494                     ; 179 	nop();
 497  0160 9d            nop
 499                     ; 177 for(i=0;i<60;i++)
 502  0161 1e01          	ldw	x,(OFST-1,sp)
 503  0163 1c0001        	addw	x,#1
 504  0166 1f01          	ldw	(OFST-1,sp),x
 507  0168 9c            	rvf
 508  0169 1e01          	ldw	x,(OFST-1,sp)
 509  016b a3003c        	cpw	x,#60
 510  016e 2ff0          	jrslt	L751
 511                     ; 181 DS18B20PORT->ODR|=(1<<DS18B20PIN);
 513  0170 721e500f      	bset	20495,#7
 514                     ; 184 for(i=0;i<6;i++)
 516  0174 5f            	clrw	x
 517  0175 1f01          	ldw	(OFST-1,sp),x
 518  0177               L561:
 519                     ; 186 	nop();
 522  0177 9d            nop
 524                     ; 184 for(i=0;i<6;i++)
 527  0178 1e01          	ldw	x,(OFST-1,sp)
 528  017a 1c0001        	addw	x,#1
 529  017d 1f01          	ldw	(OFST-1,sp),x
 532  017f 9c            	rvf
 533  0180 1e01          	ldw	x,(OFST-1,sp)
 534  0182 a30006        	cpw	x,#6
 535  0185 2ff0          	jrslt	L561
 536                     ; 188 }
 539  0187 85            	popw	x
 540  0188 81            	ret
 594                     ; 191 void wire1_send_byte(char in)
 594                     ; 192 {
 595                     	switch	.text
 596  0189               _wire1_send_byte:
 598  0189 89            	pushw	x
 599       00000002      OFST:	set	2
 602                     ; 194 ii=in;
 604  018a 6b02          	ld	(OFST+0,sp),a
 605                     ; 196 for(i=0;i<8;i++)
 607  018c 0f01          	clr	(OFST-1,sp)
 608  018e               L122:
 609                     ; 198 	if(ii&0x01)wire1_w1ts();
 611  018e 7b02          	ld	a,(OFST+0,sp)
 612  0190 a501          	bcp	a,#1
 613  0192 2704          	jreq	L722
 616  0194 ad89          	call	_wire1_w1ts
 619  0196 2002          	jra	L132
 620  0198               L722:
 621                     ; 199 	else wire1_w0ts();
 623  0198 adba          	call	_wire1_w0ts
 625  019a               L132:
 626                     ; 200 	ii>>=1;
 628  019a 0402          	srl	(OFST+0,sp)
 629                     ; 196 for(i=0;i<8;i++)
 631  019c 0c01          	inc	(OFST-1,sp)
 634  019e 7b01          	ld	a,(OFST-1,sp)
 635  01a0 a108          	cp	a,#8
 636  01a2 25ea          	jrult	L122
 637                     ; 202 }
 640  01a4 85            	popw	x
 641  01a5 81            	ret
 685                     ; 205 char wire1_read_byte(void)
 685                     ; 206 {
 686                     	switch	.text
 687  01a6               _wire1_read_byte:
 689  01a6 89            	pushw	x
 690       00000002      OFST:	set	2
 693                     ; 208 ii=0;
 695  01a7 0f02          	clr	(OFST+0,sp)
 696                     ; 210 for(i=0;i<8;i++)
 698  01a9 0f01          	clr	(OFST-1,sp)
 699  01ab               L552:
 700                     ; 212 	ii>>=1;
 702  01ab 0402          	srl	(OFST+0,sp)
 703                     ; 213 	if(wire1_rts())ii|=0x80;
 705  01ad ad1d          	call	_wire1_rts
 707  01af 4d            	tnz	a
 708  01b0 2708          	jreq	L362
 711  01b2 7b02          	ld	a,(OFST+0,sp)
 712  01b4 aa80          	or	a,#128
 713  01b6 6b02          	ld	(OFST+0,sp),a
 715  01b8 2006          	jra	L562
 716  01ba               L362:
 717                     ; 214 	else ii&=0x7f;
 719  01ba 7b02          	ld	a,(OFST+0,sp)
 720  01bc a47f          	and	a,#127
 721  01be 6b02          	ld	(OFST+0,sp),a
 722  01c0               L562:
 723                     ; 210 for(i=0;i<8;i++)
 725  01c0 0c01          	inc	(OFST-1,sp)
 728  01c2 7b01          	ld	a,(OFST-1,sp)
 729  01c4 a108          	cp	a,#8
 730  01c6 25e3          	jrult	L552
 731                     ; 216 return ii;
 733  01c8 7b02          	ld	a,(OFST+0,sp)
 736  01ca 85            	popw	x
 737  01cb 81            	ret
 783                     ; 220 char wire1_rts(void)
 783                     ; 221 {
 784                     	switch	.text
 785  01cc               _wire1_rts:
 787  01cc 5204          	subw	sp,#4
 788       00000004      OFST:	set	4
 791                     ; 224 DS18B20PORT->DDR|=(1<<DS18B20PIN);
 793  01ce 721e5011      	bset	20497,#7
 794                     ; 225 DS18B20PORT->ODR&=~(1<<DS18B20PIN);
 796  01d2 721f500f      	bres	20495,#7
 797                     ; 228 for(i=0;i<2;i++)
 799  01d6 5f            	clrw	x
 800  01d7 1f03          	ldw	(OFST-1,sp),x
 801  01d9               L113:
 802                     ; 230 	nop();
 805  01d9 9d            nop
 807                     ; 228 for(i=0;i<2;i++)
 810  01da 1e03          	ldw	x,(OFST-1,sp)
 811  01dc 1c0001        	addw	x,#1
 812  01df 1f03          	ldw	(OFST-1,sp),x
 815  01e1 9c            	rvf
 816  01e2 1e03          	ldw	x,(OFST-1,sp)
 817  01e4 a30002        	cpw	x,#2
 818  01e7 2ff0          	jrslt	L113
 819                     ; 233 DS18B20PORT->ODR|=(1<<DS18B20PIN);
 821  01e9 721e500f      	bset	20495,#7
 822                     ; 235 for(i=0;i<6;i++)
 824  01ed 5f            	clrw	x
 825  01ee 1f03          	ldw	(OFST-1,sp),x
 826  01f0               L713:
 827                     ; 237 	nop();
 830  01f0 9d            nop
 832                     ; 235 for(i=0;i<6;i++)
 835  01f1 1e03          	ldw	x,(OFST-1,sp)
 836  01f3 1c0001        	addw	x,#1
 837  01f6 1f03          	ldw	(OFST-1,sp),x
 840  01f8 9c            	rvf
 841  01f9 1e03          	ldw	x,(OFST-1,sp)
 842  01fb a30006        	cpw	x,#6
 843  01fe 2ff0          	jrslt	L713
 844                     ; 239 if(DS18B20PORT->IDR&(1<<DS18B20PIN))	ii=1;
 846  0200 c65010        	ld	a,20496
 847  0203 a580          	bcp	a,#128
 848  0205 2707          	jreq	L523
 851  0207 ae0001        	ldw	x,#1
 852  020a 1f01          	ldw	(OFST-3,sp),x
 854  020c 2003          	jra	L723
 855  020e               L523:
 856                     ; 240 else ii=0;
 858  020e 5f            	clrw	x
 859  020f 1f01          	ldw	(OFST-3,sp),x
 860  0211               L723:
 861                     ; 243 for(i=0;i<33;i++)
 863  0211 5f            	clrw	x
 864  0212 1f03          	ldw	(OFST-1,sp),x
 865  0214               L133:
 866                     ; 245 	nop();
 869  0214 9d            nop
 871                     ; 243 for(i=0;i<33;i++)
 874  0215 1e03          	ldw	x,(OFST-1,sp)
 875  0217 1c0001        	addw	x,#1
 876  021a 1f03          	ldw	(OFST-1,sp),x
 879  021c 9c            	rvf
 880  021d 1e03          	ldw	x,(OFST-1,sp)
 881  021f a30021        	cpw	x,#33
 882  0222 2ff0          	jrslt	L133
 883                     ; 247 return ii;
 885  0224 7b02          	ld	a,(OFST-2,sp)
 888  0226 5b04          	addw	sp,#4
 889  0228 81            	ret
 940                     ; 250 char wire1_polling(void)
 940                     ; 251 {
 941                     	switch	.text
 942  0229               _wire1_polling:
 944  0229 5204          	subw	sp,#4
 945       00000004      OFST:	set	4
 948                     ; 253 DS18B20PORT->DDR|=(1<<DS18B20PIN);
 950  022b 721e5011      	bset	20497,#7
 951                     ; 254 DS18B20PORT->CR1&=~(1<<DS18B20PIN);
 953  022f 721f5012      	bres	20498,#7
 954                     ; 255 DS18B20PORT->CR2|=(1<<DS18B20PIN);
 956  0233 721e5013      	bset	20499,#7
 957                     ; 259 DS18B20PORT->ODR&=~(1<<DS18B20PIN);
 959  0237 721f500f      	bres	20495,#7
 960                     ; 262 for(i=0;i<400;i++)
 962  023b 5f            	clrw	x
 963  023c 1f03          	ldw	(OFST-1,sp),x
 964  023e               L173:
 965                     ; 264 	nop();
 968  023e 9d            nop
 970                     ; 262 for(i=0;i<400;i++)
 973  023f 1e03          	ldw	x,(OFST-1,sp)
 974  0241 1c0001        	addw	x,#1
 975  0244 1f03          	ldw	(OFST-1,sp),x
 978  0246 9c            	rvf
 979  0247 1e03          	ldw	x,(OFST-1,sp)
 980  0249 a30190        	cpw	x,#400
 981  024c 2ff0          	jrslt	L173
 982                     ; 266 DS18B20PORT->ODR|=(1<<DS18B20PIN);
 984  024e 721e500f      	bset	20495,#7
 985                     ; 269 for(i=0;i<10;i++)
 987  0252 5f            	clrw	x
 988  0253 1f03          	ldw	(OFST-1,sp),x
 989  0255               L773:
 990                     ; 271 	nop();
 993  0255 9d            nop
 995                     ; 269 for(i=0;i<10;i++)
 998  0256 1e03          	ldw	x,(OFST-1,sp)
 999  0258 1c0001        	addw	x,#1
1000  025b 1f03          	ldw	(OFST-1,sp),x
1003  025d 9c            	rvf
1004  025e 1e03          	ldw	x,(OFST-1,sp)
1005  0260 a3000a        	cpw	x,#10
1006  0263 2ff0          	jrslt	L773
1007                     ; 275 for(i=0;i<13;i++)
1009  0265 5f            	clrw	x
1010  0266 1f03          	ldw	(OFST-1,sp),x
1011  0268               L504:
1012                     ; 277 	nop();
1015  0268 9d            nop
1017                     ; 278 	nop();
1021  0269 9d            nop
1023                     ; 279 	nop();
1027  026a 9d            nop
1029                     ; 280 	if(!(DS18B20PORT->IDR&(1<<DS18B20PIN)))goto ibatton_polling_lbl_000;
1032  026b c65010        	ld	a,20496
1033  026e a580          	bcp	a,#128
1034  0270 2623          	jrne	L314
1036                     ; 285 ibatton_polling_lbl_000:
1036                     ; 286 
1036                     ; 287 //измеряем длительность ответного импульса не дольше 300мкс
1036                     ; 288 for(i=0;i<146;i++)
1038  0272 5f            	clrw	x
1039  0273 1f03          	ldw	(OFST-1,sp),x
1040  0275               L514:
1041                     ; 290 	if(DS18B20PORT->IDR&(1<<DS18B20PIN))
1043  0275 c65010        	ld	a,20496
1044  0278 a580          	bcp	a,#128
1045  027a 272c          	jreq	L324
1046                     ; 292 		nop();
1049  027c 9d            nop
1051                     ; 293 		nop();
1055  027d 9d            nop
1057                     ; 294 		num_out=10;
1060                     ; 295 		goto ibatton_polling_lbl_001;	//continue;
1061                     ; 302 ibatton_polling_lbl_001:
1061                     ; 303 //выдержка 15мкс
1061                     ; 304 for(i=0;i<10;i++)
1063  027e 5f            	clrw	x
1064  027f 1f03          	ldw	(OFST-1,sp),x
1065  0281               L524:
1066                     ; 306 	nop();
1069  0281 9d            nop
1071                     ; 304 for(i=0;i<10;i++)
1074  0282 1e03          	ldw	x,(OFST-1,sp)
1075  0284 1c0001        	addw	x,#1
1076  0287 1f03          	ldw	(OFST-1,sp),x
1079  0289 9c            	rvf
1080  028a 1e03          	ldw	x,(OFST-1,sp)
1081  028c a3000a        	cpw	x,#10
1082  028f 2ff0          	jrslt	L524
1083                     ; 308 ibatton_polling_lbl_success_exit:
1083                     ; 309 return 1;
1085  0291 a601          	ld	a,#1
1087  0293 2010          	jra	L42
1088  0295               L314:
1089                     ; 275 for(i=0;i<13;i++)
1091  0295 1e03          	ldw	x,(OFST-1,sp)
1092  0297 1c0001        	addw	x,#1
1093  029a 1f03          	ldw	(OFST-1,sp),x
1096  029c 9c            	rvf
1097  029d 1e03          	ldw	x,(OFST-1,sp)
1098  029f a3000d        	cpw	x,#13
1099  02a2 2fc4          	jrslt	L504
1100                     ; 283 return 0;
1102  02a4 4f            	clr	a
1104  02a5               L42:
1106  02a5 5b04          	addw	sp,#4
1107  02a7 81            	ret
1108  02a8               L324:
1109                     ; 288 for(i=0;i<146;i++)
1111  02a8 1e03          	ldw	x,(OFST-1,sp)
1112  02aa 1c0001        	addw	x,#1
1113  02ad 1f03          	ldw	(OFST-1,sp),x
1116  02af 9c            	rvf
1117  02b0 1e03          	ldw	x,(OFST-1,sp)
1118  02b2 a30092        	cpw	x,#146
1119  02b5 2fbe          	jrslt	L514
1120                     ; 300 return 5;
1122  02b7 a605          	ld	a,#5
1124  02b9 20ea          	jra	L42
1225                     	xdef	_waterSensorErrorStatOld
1226                     	xdef	_wire1_polling
1227                     	xdef	_wire1_rts
1228                     	xdef	_wire1_read_byte
1229                     	xdef	_wire1_send_byte
1230                     	xdef	_wire1_w0ts
1231                     	xdef	_wire1_w1ts
1232                     	xdef	_ds18b20_temper_drv
1233                     	xdef	_waterSensorErrorStat
1234                     	switch	.bss
1235  0000               _ds18b20ErrorOffCnt:
1236  0000 00            	ds.b	1
1237                     	xdef	_ds18b20ErrorOffCnt
1238  0001               _ds18b20ErrorLoCnt:
1239  0001 00            	ds.b	1
1240                     	xdef	_ds18b20ErrorLoCnt
1241  0002               _ds18b20ErrorHiCnt:
1242  0002 00            	ds.b	1
1243                     	xdef	_ds18b20ErrorHiCnt
1244  0003               _wire1_in:
1245  0003 000000000000  	ds.b	10
1246                     	xdef	_wire1_in
1266                     	end
