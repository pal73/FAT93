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
  97                     ; 18 void ds18b20_temper_drv(void)
  97                     ; 19 {
  99                     	switch	.text
 100  0000               _ds18b20_temper_drv:
 102  0000 88            	push	a
 103       00000001      OFST:	set	1
 106                     ; 22 if(!bCONV)
 108  0001 3d00          	tnz	L3_bCONV
 109  0003 266e          	jrne	L14
 110                     ; 25 	bCONV=1;
 112  0005 35010000      	mov	L3_bCONV,#1
 113                     ; 26 	temp=wire1_polling();
 115  0009 cd028e        	call	_wire1_polling
 117  000c 6b01          	ld	(OFST+0,sp),a
 118                     ; 27 	if(temp==1)
 120  000e 7b01          	ld	a,(OFST+0,sp)
 121  0010 a101          	cp	a,#1
 122  0012 261a          	jrne	L34
 123                     ; 29 		wire1_send_byte(0xCC);
 125  0014 a6cc          	ld	a,#204
 126  0016 cd01ee        	call	_wire1_send_byte
 128                     ; 30 		wire1_send_byte(0x44);
 130  0019 a644          	ld	a,#68
 131  001b cd01ee        	call	_wire1_send_byte
 133                     ; 32 		ds18b20ErrorHiCnt=0;
 135  001e 725f0002      	clr	_ds18b20ErrorHiCnt
 136                     ; 33 		ds18b20ErrorLoCnt=0;
 138  0022 725f0001      	clr	_ds18b20ErrorLoCnt
 139                     ; 34 		waterSensorErrorStat=dsesNORM;		
 141  0026 35550000      	mov	_waterSensorErrorStat,#85
 143  002a ac0c010c      	jpf	L36
 144  002e               L34:
 145                     ; 38 		if(temp==0)
 147  002e 0d01          	tnz	(OFST+0,sp)
 148  0030 261a          	jrne	L74
 149                     ; 40 			if(ds18b20ErrorHiCnt<10)
 151  0032 c60002        	ld	a,_ds18b20ErrorHiCnt
 152  0035 a10a          	cp	a,#10
 153  0037 240f          	jruge	L15
 154                     ; 42 				ds18b20ErrorHiCnt++;
 156  0039 725c0002      	inc	_ds18b20ErrorHiCnt
 157                     ; 43 				if(ds18b20ErrorHiCnt>=10)
 159  003d c60002        	ld	a,_ds18b20ErrorHiCnt
 160  0040 a10a          	cp	a,#10
 161  0042 2504          	jrult	L15
 162                     ; 45 					waterSensorErrorStat=dsesHI;	
 164  0044 35010000      	mov	_waterSensorErrorStat,#1
 165  0048               L15:
 166                     ; 48 			ds18b20ErrorLoCnt=0;
 168  0048 725f0001      	clr	_ds18b20ErrorLoCnt
 169  004c               L74:
 170                     ; 51 		if(temp==5)
 172  004c 7b01          	ld	a,(OFST+0,sp)
 173  004e a105          	cp	a,#5
 174  0050 2703          	jreq	L6
 175  0052 cc010c        	jp	L36
 176  0055               L6:
 177                     ; 53 			if(ds18b20ErrorLoCnt<10)
 179  0055 c60001        	ld	a,_ds18b20ErrorLoCnt
 180  0058 a10a          	cp	a,#10
 181  005a 240f          	jruge	L75
 182                     ; 55 				ds18b20ErrorLoCnt++;
 184  005c 725c0001      	inc	_ds18b20ErrorLoCnt
 185                     ; 56 				if(ds18b20ErrorLoCnt>=10)
 187  0060 c60001        	ld	a,_ds18b20ErrorLoCnt
 188  0063 a10a          	cp	a,#10
 189  0065 2504          	jrult	L75
 190                     ; 58 					waterSensorErrorStat=dsesLO;	
 192  0067 725f0000      	clr	_waterSensorErrorStat
 193  006b               L75:
 194                     ; 61 			ds18b20ErrorHiCnt=0;
 196  006b 725f0002      	clr	_ds18b20ErrorHiCnt
 197  006f ac0c010c      	jpf	L36
 198  0073               L14:
 199                     ; 69 	bCONV=0;
 201  0073 3f00          	clr	L3_bCONV
 202                     ; 70 	temp=wire1_polling();
 204  0075 cd028e        	call	_wire1_polling
 206  0078 6b01          	ld	(OFST+0,sp),a
 207                     ; 71 	if(temp==1)
 209  007a 7b01          	ld	a,(OFST+0,sp)
 210  007c a101          	cp	a,#1
 211  007e 264e          	jrne	L56
 212                     ; 73 		wire1_send_byte(0xCC);
 214  0080 a6cc          	ld	a,#204
 215  0082 cd01ee        	call	_wire1_send_byte
 217                     ; 74 		wire1_send_byte(0xBE);
 219  0085 a6be          	ld	a,#190
 220  0087 cd01ee        	call	_wire1_send_byte
 222                     ; 75 		wire1_in[0]=wire1_read_byte();
 224  008a cd020b        	call	_wire1_read_byte
 226  008d c70003        	ld	_wire1_in,a
 227                     ; 76 		wire1_in[1]=wire1_read_byte();
 229  0090 cd020b        	call	_wire1_read_byte
 231  0093 c70004        	ld	_wire1_in+1,a
 232                     ; 77 		wire1_in[2]=wire1_read_byte();
 234  0096 cd020b        	call	_wire1_read_byte
 236  0099 c70005        	ld	_wire1_in+2,a
 237                     ; 78 		wire1_in[3]=wire1_read_byte();
 239  009c cd020b        	call	_wire1_read_byte
 241  009f c70006        	ld	_wire1_in+3,a
 242                     ; 79 		wire1_in[4]=wire1_read_byte();
 244  00a2 cd020b        	call	_wire1_read_byte
 246  00a5 c70007        	ld	_wire1_in+4,a
 247                     ; 80 		wire1_in[5]=wire1_read_byte();
 249  00a8 cd020b        	call	_wire1_read_byte
 251  00ab c70008        	ld	_wire1_in+5,a
 252                     ; 81 		wire1_in[6]=wire1_read_byte();
 254  00ae cd020b        	call	_wire1_read_byte
 256  00b1 c70009        	ld	_wire1_in+6,a
 257                     ; 82 		wire1_in[7]=wire1_read_byte();
 259  00b4 cd020b        	call	_wire1_read_byte
 261  00b7 c7000a        	ld	_wire1_in+7,a
 262                     ; 83 		wire1_in[8]=wire1_read_byte();
 264  00ba cd020b        	call	_wire1_read_byte
 266  00bd c7000b        	ld	_wire1_in+8,a
 267                     ; 85 		ds18b20ErrorHiCnt=0;
 269  00c0 725f0002      	clr	_ds18b20ErrorHiCnt
 270                     ; 86 		ds18b20ErrorLoCnt=0;
 272  00c4 725f0001      	clr	_ds18b20ErrorLoCnt
 273                     ; 87 		waterSensorErrorStat=dsesNORM;
 275  00c8 35550000      	mov	_waterSensorErrorStat,#85
 277  00cc 203e          	jra	L36
 278  00ce               L56:
 279                     ; 91 		if(temp==0)
 281  00ce 0d01          	tnz	(OFST+0,sp)
 282  00d0 261a          	jrne	L17
 283                     ; 93 			if(ds18b20ErrorHiCnt<10)
 285  00d2 c60002        	ld	a,_ds18b20ErrorHiCnt
 286  00d5 a10a          	cp	a,#10
 287  00d7 240f          	jruge	L37
 288                     ; 95 				ds18b20ErrorHiCnt++;
 290  00d9 725c0002      	inc	_ds18b20ErrorHiCnt
 291                     ; 96 				if(ds18b20ErrorHiCnt>=10)
 293  00dd c60002        	ld	a,_ds18b20ErrorHiCnt
 294  00e0 a10a          	cp	a,#10
 295  00e2 2504          	jrult	L37
 296                     ; 98 					waterSensorErrorStat=dsesHI;	
 298  00e4 35010000      	mov	_waterSensorErrorStat,#1
 299  00e8               L37:
 300                     ; 101 			ds18b20ErrorLoCnt=0;
 302  00e8 725f0001      	clr	_ds18b20ErrorLoCnt
 303  00ec               L17:
 304                     ; 104 		if(temp==5)
 306  00ec 7b01          	ld	a,(OFST+0,sp)
 307  00ee a105          	cp	a,#5
 308  00f0 261a          	jrne	L36
 309                     ; 106 			if(ds18b20ErrorLoCnt<10)
 311  00f2 c60001        	ld	a,_ds18b20ErrorLoCnt
 312  00f5 a10a          	cp	a,#10
 313  00f7 240f          	jruge	L101
 314                     ; 108 				ds18b20ErrorLoCnt++;
 316  00f9 725c0001      	inc	_ds18b20ErrorLoCnt
 317                     ; 109 				if(ds18b20ErrorLoCnt>=10)
 319  00fd c60001        	ld	a,_ds18b20ErrorLoCnt
 320  0100 a10a          	cp	a,#10
 321  0102 2504          	jrult	L101
 322                     ; 111 					waterSensorErrorStat=dsesLO;	
 324  0104 725f0000      	clr	_waterSensorErrorStat
 325  0108               L101:
 326                     ; 114 			ds18b20ErrorHiCnt=0;
 328  0108 725f0002      	clr	_ds18b20ErrorHiCnt
 329  010c               L36:
 330                     ; 120 if((waterSensorErrorStat!=dsesNORM)&&(waterSensorErrorStatOld==dsesNORM))
 332  010c c60000        	ld	a,_waterSensorErrorStat
 333  010f a155          	cp	a,#85
 334  0111 276a          	jreq	L501
 336  0113 c60001        	ld	a,_waterSensorErrorStatOld
 337  0116 a155          	cp	a,#85
 338  0118 2663          	jrne	L501
 339                     ; 122 	strcpy(tempRussianText,"Неисправность датчика температуры воды"); 
 341  011a ae0000        	ldw	x,#L701
 342  011d 89            	pushw	x
 343  011e ae0000        	ldw	x,#_tempRussianText
 344  0121 cd0000        	call	_strcpy
 346  0124 85            	popw	x
 347                     ; 125 	if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
 349  0125 c60000        	ld	a,_AUTH_NUMBER_FLAGS
 350  0128 a501          	bcp	a,#1
 351  012a 270f          	jreq	L111
 352                     ; 127 		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
 354  012c ae0000        	ldw	x,#_tempRussianText
 355  012f 89            	pushw	x
 356  0130 ae0000        	ldw	x,#_MAIN_NUMBER
 357  0133 89            	pushw	x
 358  0134 a670          	ld	a,#112
 359  0136 cd0000        	call	_modem_send_sms
 361  0139 5b04          	addw	sp,#4
 362  013b               L111:
 363                     ; 129 	if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
 365  013b c60000        	ld	a,_AUTH_NUMBER_FLAGS
 366  013e a502          	bcp	a,#2
 367  0140 270f          	jreq	L311
 368                     ; 131 		modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
 370  0142 ae0000        	ldw	x,#_tempRussianText
 371  0145 89            	pushw	x
 372  0146 ae0000        	ldw	x,#_AUTH_NUMBER_1
 373  0149 89            	pushw	x
 374  014a a670          	ld	a,#112
 375  014c cd0000        	call	_modem_send_sms
 377  014f 5b04          	addw	sp,#4
 378  0151               L311:
 379                     ; 133 		if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
 381  0151 c60000        	ld	a,_AUTH_NUMBER_FLAGS
 382  0154 a504          	bcp	a,#4
 383  0156 270f          	jreq	L511
 384                     ; 135 		modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
 386  0158 ae0000        	ldw	x,#_tempRussianText
 387  015b 89            	pushw	x
 388  015c ae0000        	ldw	x,#_AUTH_NUMBER_2
 389  015f 89            	pushw	x
 390  0160 a670          	ld	a,#112
 391  0162 cd0000        	call	_modem_send_sms
 393  0165 5b04          	addw	sp,#4
 394  0167               L511:
 395                     ; 137 	if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
 397  0167 c60000        	ld	a,_AUTH_NUMBER_FLAGS
 398  016a a508          	bcp	a,#8
 399  016c 270f          	jreq	L501
 400                     ; 139 		modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
 402  016e ae0000        	ldw	x,#_tempRussianText
 403  0171 89            	pushw	x
 404  0172 ae0000        	ldw	x,#_AUTH_NUMBER_3
 405  0175 89            	pushw	x
 406  0176 a670          	ld	a,#112
 407  0178 cd0000        	call	_modem_send_sms
 409  017b 5b04          	addw	sp,#4
 410  017d               L501:
 411                     ; 144 waterSensorErrorStatOld=waterSensorErrorStat;
 413  017d 5500000001    	mov	_waterSensorErrorStatOld,_waterSensorErrorStat
 414                     ; 146 }
 417  0182 84            	pop	a
 418  0183 81            	ret
 454                     ; 149 char wire1_w1ts(void)
 454                     ; 150 {
 455                     	switch	.text
 456  0184               _wire1_w1ts:
 458  0184 89            	pushw	x
 459       00000002      OFST:	set	2
 462                     ; 152 DS18B20PORT->DDR|=(1<<DS18B20PIN);
 464  0185 721e5011      	bset	20497,#7
 465                     ; 153 DS18B20PORT->ODR&=~(1<<DS18B20PIN);
 467  0189 721f500f      	bres	20495,#7
 468                     ; 156 for(i=0;i<6;i++)
 470  018d 5f            	clrw	x
 471  018e 1f01          	ldw	(OFST-1,sp),x
 472  0190               L731:
 473                     ; 158 	nop();
 476  0190 9d            nop
 478                     ; 156 for(i=0;i<6;i++)
 481  0191 1e01          	ldw	x,(OFST-1,sp)
 482  0193 1c0001        	addw	x,#1
 483  0196 1f01          	ldw	(OFST-1,sp),x
 486  0198 9c            	rvf
 487  0199 1e01          	ldw	x,(OFST-1,sp)
 488  019b a30006        	cpw	x,#6
 489  019e 2ff0          	jrslt	L731
 490                     ; 160 DS18B20PORT->ODR|=(1<<DS18B20PIN);
 492  01a0 721e500f      	bset	20495,#7
 493                     ; 163 for(i=0;i<60;i++)
 495  01a4 5f            	clrw	x
 496  01a5 1f01          	ldw	(OFST-1,sp),x
 497  01a7               L541:
 498                     ; 165 	nop();
 501  01a7 9d            nop
 503                     ; 163 for(i=0;i<60;i++)
 506  01a8 1e01          	ldw	x,(OFST-1,sp)
 507  01aa 1c0001        	addw	x,#1
 508  01ad 1f01          	ldw	(OFST-1,sp),x
 511  01af 9c            	rvf
 512  01b0 1e01          	ldw	x,(OFST-1,sp)
 513  01b2 a3003c        	cpw	x,#60
 514  01b5 2ff0          	jrslt	L541
 515                     ; 167 }
 518  01b7 85            	popw	x
 519  01b8 81            	ret
 555                     ; 170 char wire1_w0ts(void)
 555                     ; 171 {
 556                     	switch	.text
 557  01b9               _wire1_w0ts:
 559  01b9 89            	pushw	x
 560       00000002      OFST:	set	2
 563                     ; 173 DS18B20PORT->DDR|=(1<<DS18B20PIN);
 565  01ba 721e5011      	bset	20497,#7
 566                     ; 174 DS18B20PORT->ODR&=~(1<<DS18B20PIN);
 568  01be 721f500f      	bres	20495,#7
 569                     ; 177 for(i=0;i<60;i++)
 571  01c2 5f            	clrw	x
 572  01c3 1f01          	ldw	(OFST-1,sp),x
 573  01c5               L171:
 574                     ; 179 	nop();
 577  01c5 9d            nop
 579                     ; 177 for(i=0;i<60;i++)
 582  01c6 1e01          	ldw	x,(OFST-1,sp)
 583  01c8 1c0001        	addw	x,#1
 584  01cb 1f01          	ldw	(OFST-1,sp),x
 587  01cd 9c            	rvf
 588  01ce 1e01          	ldw	x,(OFST-1,sp)
 589  01d0 a3003c        	cpw	x,#60
 590  01d3 2ff0          	jrslt	L171
 591                     ; 181 DS18B20PORT->ODR|=(1<<DS18B20PIN);
 593  01d5 721e500f      	bset	20495,#7
 594                     ; 184 for(i=0;i<6;i++)
 596  01d9 5f            	clrw	x
 597  01da 1f01          	ldw	(OFST-1,sp),x
 598  01dc               L771:
 599                     ; 186 	nop();
 602  01dc 9d            nop
 604                     ; 184 for(i=0;i<6;i++)
 607  01dd 1e01          	ldw	x,(OFST-1,sp)
 608  01df 1c0001        	addw	x,#1
 609  01e2 1f01          	ldw	(OFST-1,sp),x
 612  01e4 9c            	rvf
 613  01e5 1e01          	ldw	x,(OFST-1,sp)
 614  01e7 a30006        	cpw	x,#6
 615  01ea 2ff0          	jrslt	L771
 616                     ; 188 }
 619  01ec 85            	popw	x
 620  01ed 81            	ret
 674                     ; 191 void wire1_send_byte(char in)
 674                     ; 192 {
 675                     	switch	.text
 676  01ee               _wire1_send_byte:
 678  01ee 89            	pushw	x
 679       00000002      OFST:	set	2
 682                     ; 194 ii=in;
 684  01ef 6b02          	ld	(OFST+0,sp),a
 685                     ; 196 for(i=0;i<8;i++)
 687  01f1 0f01          	clr	(OFST-1,sp)
 688  01f3               L332:
 689                     ; 198 	if(ii&0x01)wire1_w1ts();
 691  01f3 7b02          	ld	a,(OFST+0,sp)
 692  01f5 a501          	bcp	a,#1
 693  01f7 2704          	jreq	L142
 696  01f9 ad89          	call	_wire1_w1ts
 699  01fb 2002          	jra	L342
 700  01fd               L142:
 701                     ; 199 	else wire1_w0ts();
 703  01fd adba          	call	_wire1_w0ts
 705  01ff               L342:
 706                     ; 200 	ii>>=1;
 708  01ff 0402          	srl	(OFST+0,sp)
 709                     ; 196 for(i=0;i<8;i++)
 711  0201 0c01          	inc	(OFST-1,sp)
 714  0203 7b01          	ld	a,(OFST-1,sp)
 715  0205 a108          	cp	a,#8
 716  0207 25ea          	jrult	L332
 717                     ; 202 }
 720  0209 85            	popw	x
 721  020a 81            	ret
 765                     ; 205 char wire1_read_byte(void)
 765                     ; 206 {
 766                     	switch	.text
 767  020b               _wire1_read_byte:
 769  020b 89            	pushw	x
 770       00000002      OFST:	set	2
 773                     ; 208 ii=0;
 775  020c 0f02          	clr	(OFST+0,sp)
 776                     ; 210 for(i=0;i<8;i++)
 778  020e 0f01          	clr	(OFST-1,sp)
 779  0210               L762:
 780                     ; 212 	ii>>=1;
 782  0210 0402          	srl	(OFST+0,sp)
 783                     ; 213 	if(wire1_rts())ii|=0x80;
 785  0212 ad1d          	call	_wire1_rts
 787  0214 4d            	tnz	a
 788  0215 2708          	jreq	L572
 791  0217 7b02          	ld	a,(OFST+0,sp)
 792  0219 aa80          	or	a,#128
 793  021b 6b02          	ld	(OFST+0,sp),a
 795  021d 2006          	jra	L772
 796  021f               L572:
 797                     ; 214 	else ii&=0x7f;
 799  021f 7b02          	ld	a,(OFST+0,sp)
 800  0221 a47f          	and	a,#127
 801  0223 6b02          	ld	(OFST+0,sp),a
 802  0225               L772:
 803                     ; 210 for(i=0;i<8;i++)
 805  0225 0c01          	inc	(OFST-1,sp)
 808  0227 7b01          	ld	a,(OFST-1,sp)
 809  0229 a108          	cp	a,#8
 810  022b 25e3          	jrult	L762
 811                     ; 216 return ii;
 813  022d 7b02          	ld	a,(OFST+0,sp)
 816  022f 85            	popw	x
 817  0230 81            	ret
 863                     ; 220 char wire1_rts(void)
 863                     ; 221 {
 864                     	switch	.text
 865  0231               _wire1_rts:
 867  0231 5204          	subw	sp,#4
 868       00000004      OFST:	set	4
 871                     ; 224 DS18B20PORT->DDR|=(1<<DS18B20PIN);
 873  0233 721e5011      	bset	20497,#7
 874                     ; 225 DS18B20PORT->ODR&=~(1<<DS18B20PIN);
 876  0237 721f500f      	bres	20495,#7
 877                     ; 228 for(i=0;i<2;i++)
 879  023b 5f            	clrw	x
 880  023c 1f03          	ldw	(OFST-1,sp),x
 881  023e               L323:
 882                     ; 230 	nop();
 885  023e 9d            nop
 887                     ; 228 for(i=0;i<2;i++)
 890  023f 1e03          	ldw	x,(OFST-1,sp)
 891  0241 1c0001        	addw	x,#1
 892  0244 1f03          	ldw	(OFST-1,sp),x
 895  0246 9c            	rvf
 896  0247 1e03          	ldw	x,(OFST-1,sp)
 897  0249 a30002        	cpw	x,#2
 898  024c 2ff0          	jrslt	L323
 899                     ; 233 DS18B20PORT->ODR|=(1<<DS18B20PIN);
 901  024e 721e500f      	bset	20495,#7
 902                     ; 235 for(i=0;i<6;i++)
 904  0252 5f            	clrw	x
 905  0253 1f03          	ldw	(OFST-1,sp),x
 906  0255               L133:
 907                     ; 237 	nop();
 910  0255 9d            nop
 912                     ; 235 for(i=0;i<6;i++)
 915  0256 1e03          	ldw	x,(OFST-1,sp)
 916  0258 1c0001        	addw	x,#1
 917  025b 1f03          	ldw	(OFST-1,sp),x
 920  025d 9c            	rvf
 921  025e 1e03          	ldw	x,(OFST-1,sp)
 922  0260 a30006        	cpw	x,#6
 923  0263 2ff0          	jrslt	L133
 924                     ; 239 if(DS18B20PORT->IDR&(1<<DS18B20PIN))	ii=1;
 926  0265 c65010        	ld	a,20496
 927  0268 a580          	bcp	a,#128
 928  026a 2707          	jreq	L733
 931  026c ae0001        	ldw	x,#1
 932  026f 1f01          	ldw	(OFST-3,sp),x
 934  0271 2003          	jra	L143
 935  0273               L733:
 936                     ; 240 else ii=0;
 938  0273 5f            	clrw	x
 939  0274 1f01          	ldw	(OFST-3,sp),x
 940  0276               L143:
 941                     ; 243 for(i=0;i<33;i++)
 943  0276 5f            	clrw	x
 944  0277 1f03          	ldw	(OFST-1,sp),x
 945  0279               L343:
 946                     ; 245 	nop();
 949  0279 9d            nop
 951                     ; 243 for(i=0;i<33;i++)
 954  027a 1e03          	ldw	x,(OFST-1,sp)
 955  027c 1c0001        	addw	x,#1
 956  027f 1f03          	ldw	(OFST-1,sp),x
 959  0281 9c            	rvf
 960  0282 1e03          	ldw	x,(OFST-1,sp)
 961  0284 a30021        	cpw	x,#33
 962  0287 2ff0          	jrslt	L343
 963                     ; 247 return ii;
 965  0289 7b02          	ld	a,(OFST-2,sp)
 968  028b 5b04          	addw	sp,#4
 969  028d 81            	ret
1020                     ; 250 char wire1_polling(void)
1020                     ; 251 {
1021                     	switch	.text
1022  028e               _wire1_polling:
1024  028e 5204          	subw	sp,#4
1025       00000004      OFST:	set	4
1028                     ; 253 DS18B20PORT->DDR|=(1<<DS18B20PIN);
1030  0290 721e5011      	bset	20497,#7
1031                     ; 254 DS18B20PORT->CR1&=~(1<<DS18B20PIN);
1033  0294 721f5012      	bres	20498,#7
1034                     ; 255 DS18B20PORT->CR2|=(1<<DS18B20PIN);
1036  0298 721e5013      	bset	20499,#7
1037                     ; 259 DS18B20PORT->ODR&=~(1<<DS18B20PIN);
1039  029c 721f500f      	bres	20495,#7
1040                     ; 262 for(i=0;i<400;i++)
1042  02a0 5f            	clrw	x
1043  02a1 1f03          	ldw	(OFST-1,sp),x
1044  02a3               L304:
1045                     ; 264 	nop();
1048  02a3 9d            nop
1050                     ; 262 for(i=0;i<400;i++)
1053  02a4 1e03          	ldw	x,(OFST-1,sp)
1054  02a6 1c0001        	addw	x,#1
1055  02a9 1f03          	ldw	(OFST-1,sp),x
1058  02ab 9c            	rvf
1059  02ac 1e03          	ldw	x,(OFST-1,sp)
1060  02ae a30190        	cpw	x,#400
1061  02b1 2ff0          	jrslt	L304
1062                     ; 266 DS18B20PORT->ODR|=(1<<DS18B20PIN);
1064  02b3 721e500f      	bset	20495,#7
1065                     ; 269 for(i=0;i<10;i++)
1067  02b7 5f            	clrw	x
1068  02b8 1f03          	ldw	(OFST-1,sp),x
1069  02ba               L114:
1070                     ; 271 	nop();
1073  02ba 9d            nop
1075                     ; 269 for(i=0;i<10;i++)
1078  02bb 1e03          	ldw	x,(OFST-1,sp)
1079  02bd 1c0001        	addw	x,#1
1080  02c0 1f03          	ldw	(OFST-1,sp),x
1083  02c2 9c            	rvf
1084  02c3 1e03          	ldw	x,(OFST-1,sp)
1085  02c5 a3000a        	cpw	x,#10
1086  02c8 2ff0          	jrslt	L114
1087                     ; 275 for(i=0;i<13;i++)
1089  02ca 5f            	clrw	x
1090  02cb 1f03          	ldw	(OFST-1,sp),x
1091  02cd               L714:
1092                     ; 277 	nop();
1095  02cd 9d            nop
1097                     ; 278 	nop();
1101  02ce 9d            nop
1103                     ; 279 	nop();
1107  02cf 9d            nop
1109                     ; 280 	if(!(DS18B20PORT->IDR&(1<<DS18B20PIN)))goto ibatton_polling_lbl_000;
1112  02d0 c65010        	ld	a,20496
1113  02d3 a580          	bcp	a,#128
1114  02d5 2623          	jrne	L524
1116                     ; 285 ibatton_polling_lbl_000:
1116                     ; 286 
1116                     ; 287 //измеряем длительность ответного импульса не дольше 300мкс
1116                     ; 288 for(i=0;i<146;i++)
1118  02d7 5f            	clrw	x
1119  02d8 1f03          	ldw	(OFST-1,sp),x
1120  02da               L724:
1121                     ; 290 	if(DS18B20PORT->IDR&(1<<DS18B20PIN))
1123  02da c65010        	ld	a,20496
1124  02dd a580          	bcp	a,#128
1125  02df 272c          	jreq	L534
1126                     ; 292 		nop();
1129  02e1 9d            nop
1131                     ; 293 		nop();
1135  02e2 9d            nop
1137                     ; 294 		num_out=10;
1140                     ; 295 		goto ibatton_polling_lbl_001;	//continue;
1141                     ; 302 ibatton_polling_lbl_001:
1141                     ; 303 //выдержка 15мкс
1141                     ; 304 for(i=0;i<10;i++)
1143  02e3 5f            	clrw	x
1144  02e4 1f03          	ldw	(OFST-1,sp),x
1145  02e6               L734:
1146                     ; 306 	nop();
1149  02e6 9d            nop
1151                     ; 304 for(i=0;i<10;i++)
1154  02e7 1e03          	ldw	x,(OFST-1,sp)
1155  02e9 1c0001        	addw	x,#1
1156  02ec 1f03          	ldw	(OFST-1,sp),x
1159  02ee 9c            	rvf
1160  02ef 1e03          	ldw	x,(OFST-1,sp)
1161  02f1 a3000a        	cpw	x,#10
1162  02f4 2ff0          	jrslt	L734
1163                     ; 308 ibatton_polling_lbl_success_exit:
1163                     ; 309 return 1;
1165  02f6 a601          	ld	a,#1
1167  02f8 2010          	jra	L42
1168  02fa               L524:
1169                     ; 275 for(i=0;i<13;i++)
1171  02fa 1e03          	ldw	x,(OFST-1,sp)
1172  02fc 1c0001        	addw	x,#1
1173  02ff 1f03          	ldw	(OFST-1,sp),x
1176  0301 9c            	rvf
1177  0302 1e03          	ldw	x,(OFST-1,sp)
1178  0304 a3000d        	cpw	x,#13
1179  0307 2fc4          	jrslt	L714
1180                     ; 283 return 0;
1182  0309 4f            	clr	a
1184  030a               L42:
1186  030a 5b04          	addw	sp,#4
1187  030c 81            	ret
1188  030d               L534:
1189                     ; 288 for(i=0;i<146;i++)
1191  030d 1e03          	ldw	x,(OFST-1,sp)
1192  030f 1c0001        	addw	x,#1
1193  0312 1f03          	ldw	(OFST-1,sp),x
1196  0314 9c            	rvf
1197  0315 1e03          	ldw	x,(OFST-1,sp)
1198  0317 a30092        	cpw	x,#146
1199  031a 2fbe          	jrslt	L724
1200                     ; 300 return 5;
1202  031c a605          	ld	a,#5
1204  031e 20ea          	jra	L42
1305                     	xdef	_waterSensorErrorStatOld
1306                     	xref	_modem_send_sms
1307                     	xref	_tempRussianText
1308                     	xref	_strcpy
1309                     	xdef	_wire1_polling
1310                     	xdef	_wire1_rts
1311                     	xdef	_wire1_read_byte
1312                     	xdef	_wire1_send_byte
1313                     	xdef	_wire1_w0ts
1314                     	xdef	_wire1_w1ts
1315                     	xdef	_ds18b20_temper_drv
1316                     	xdef	_waterSensorErrorStat
1317                     	switch	.bss
1318  0000               _ds18b20ErrorOffCnt:
1319  0000 00            	ds.b	1
1320                     	xdef	_ds18b20ErrorOffCnt
1321  0001               _ds18b20ErrorLoCnt:
1322  0001 00            	ds.b	1
1323                     	xdef	_ds18b20ErrorLoCnt
1324  0002               _ds18b20ErrorHiCnt:
1325  0002 00            	ds.b	1
1326                     	xdef	_ds18b20ErrorHiCnt
1327  0003               _wire1_in:
1328  0003 000000000000  	ds.b	10
1329                     	xdef	_wire1_in
1330                     	xref	_AUTH_NUMBER_FLAGS
1331                     	xref	_AUTH_NUMBER_3
1332                     	xref	_AUTH_NUMBER_2
1333                     	xref	_AUTH_NUMBER_1
1334                     	xref	_MAIN_NUMBER
1335                     .const:	section	.text
1336  0000               L701:
1337  0000 cde5e8f1eff0  	dc.b	205,229,232,241,239,240
1338  0006 e0e2edeef1f2  	dc.b	224,226,237,238,241,242
1339  000c fc20e4e0f2f7  	dc.b	252,32,228,224,242,247
1340  0012 e8eae020f2e5  	dc.b	232,234,224,32,242,229
1341  0018 ecefe5f0e0f2  	dc.b	236,239,229,240,224,242
1342  001e f3f0fb20e2ee  	dc.b	243,240,251,32,226,238
1343  0024 e4fb00        	dc.b	228,251,0
1363                     	end
