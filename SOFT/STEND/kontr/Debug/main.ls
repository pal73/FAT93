   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
2818                     .const:	section	.text
2819  0000               _warmOrder:
2820  0000 00            	dc.b	0
2821  0001 01            	dc.b	1
2822  0002 02            	dc.b	2
2823  0003 00            	dc.b	0
2824  0004 02            	dc.b	2
2825  0005 01            	dc.b	1
2826  0006 01            	dc.b	1
2827  0007 00            	dc.b	0
2828  0008 02            	dc.b	2
2829  0009 01            	dc.b	1
2830  000a 02            	dc.b	2
2831  000b 00            	dc.b	0
2832  000c 02            	dc.b	2
2833  000d 00            	dc.b	0
2834  000e 01            	dc.b	1
2835  000f 02            	dc.b	2
2836  0010 01            	dc.b	1
2837  0011 00            	dc.b	0
2838                     	bsct
2839  0000               _b100Hz:
2840  0000 00            	dc.b	0
2841  0001               _b10Hz:
2842  0001 00            	dc.b	0
2843  0002               _b5Hz:
2844  0002 00            	dc.b	0
2845  0003               _b2Hz:
2846  0003 00            	dc.b	0
2847  0004               _b1Hz:
2848  0004 00            	dc.b	0
2849  0005               _t0_cnt0:
2850  0005 00            	dc.b	0
2851  0006               _t0_cnt1:
2852  0006 00            	dc.b	0
2853  0007               _t0_cnt2:
2854  0007 00            	dc.b	0
2855  0008               _t0_cnt3:
2856  0008 00            	dc.b	0
2857  0009               _t0_cnt4:
2858  0009 00            	dc.b	0
2859  000a               _ind_outC:
2860  000a 00            	dc.b	0
2861  000b 00            	dc.b	0
2862  000c 00            	dc.b	0
2863  000d 00            	dc.b	0
2864  000e ff            	dc.b	255
2865  000f ff            	dc.b	255
2866  0010 ff            	dc.b	255
2867  0011 ff            	dc.b	255
2868  0012 ff            	dc.b	255
2869  0013 ff            	dc.b	255
2870  0014 ff            	dc.b	255
2871  0015 ff            	dc.b	255
2872  0016               _ind_outG:
2873  0016 00            	dc.b	0
2874  0017 00            	dc.b	0
2875  0018 00            	dc.b	0
2876  0019 00            	dc.b	0
2877  001a ff            	dc.b	255
2878  001b ff            	dc.b	255
2879  001c ff            	dc.b	255
2880  001d ff            	dc.b	255
2881  001e ff            	dc.b	255
2882  001f ff            	dc.b	255
2883  0020 ff            	dc.b	255
2884  0021 ff            	dc.b	255
2885                     	switch	.const
2886  0012               _ind_strob:
2887  0012 df            	dc.b	223
2888  0013 ef            	dc.b	239
2889  0014 f7            	dc.b	247
2890  0015 fb            	dc.b	251
2891  0016 df            	dc.b	223
2892  0017 df            	dc.b	223
2893  0018 df            	dc.b	223
2894  0019 df            	dc.b	223
2895  001a df            	dc.b	223
2896  001b ff            	dc.b	255
2897  001c df            	dc.b	223
2898  001d ff            	dc.b	255
2899  001e               _DIGISYM:
2900  001e c0            	dc.b	192
2901  001f f9            	dc.b	249
2902  0020 a4            	dc.b	164
2903  0021 b0            	dc.b	176
2904  0022 99            	dc.b	153
2905  0023 92            	dc.b	146
2906  0024 82            	dc.b	130
2907  0025 f8            	dc.b	248
2908  0026 80            	dc.b	128
2909  0027 90            	dc.b	144
2910  0028 11            	dc.b	17
2911  0029 07            	dc.b	7
2912  002a 8d            	dc.b	141
2913  002b 43            	dc.b	67
2914  002c 07            	dc.b	7
2915  002d 0f            	dc.b	15
2916  002e ff            	dc.b	255
2917  002f ff            	dc.b	255
2918  0030 ff            	dc.b	255
2919  0031 ff            	dc.b	255
2920  0032 ff            	dc.b	255
2921  0033 fd            	dc.b	253
2922  0034 fb            	dc.b	251
2923  0035 f7            	dc.b	247
2924  0036 ef            	dc.b	239
2925  0037 df            	dc.b	223
2926  0038 bf            	dc.b	191
2927  0039 7f            	dc.b	127
2928  003a 0000          	ds.b	2
2929                     	bsct
2930  0022               _ind_pointer:
2931  0022 00            	dc.b	0
2932  0023               _airSensorErrorStat:
2933  0023 55            	dc.b	85
2934  0024               _airSensorErrorStatOld:
2935  0024 55            	dc.b	85
2936                     	switch	.const
2937  003c               _TABLE_TIME_EE_MIN:
2938  003c 00            	dc.b	0
2939  003d 24            	dc.b	36
2940  003e 48            	dc.b	72
2941  003f 6c            	dc.b	108
2942  0040 7e            	dc.b	126
2943  0041               _TABLE_TIME_EE_MAX:
2944  0041 23            	dc.b	35
2945  0042 47            	dc.b	71
2946  0043 6b            	dc.b	107
2947  0044 7d            	dc.b	125
2948  0045 8f            	dc.b	143
2949                     	bsct
2950  0025               _powerNecc:
2951  0025 00            	dc.b	0
2952  0026               _powerNeccOld:
2953  0026 00            	dc.b	0
2954  0027               _waterTemperAlarm:
2955  0027 00            	dc.b	0
2956  0028               _waterTemperAlarmOld:
2957  0028 00            	dc.b	0
2958                     	switch	.data
2959  0000               _rand_dig_str:
2960  0000 303030303030  	dc.b	"0000000",0
2961  0008               _power_in_drv_off_cnt:
2962  0008 0005          	dc.w	5
2963  000a               _power_in_drv_alarm_cnt:
2964  000a 001e          	dc.w	30
2965                     	bsct
2966  0029               _powerStat:
2967  0029 00            	dc.b	0
2968  002a               _bWATCHDOG_REFRESH:
2969  002a 01            	dc.b	1
2970                     	switch	.data
2971  000c               _version_show_cnt:
2972  000c 0a            	dc.b	10
3002                     ; 182 short power_in_test(void)
3002                     ; 183 {
3004                     	switch	.text
3005  0000               _power_in_test:
3009                     ; 185 GPIOA->DDR&=~(1<<6);		
3011  0000 721d5002      	bres	20482,#6
3012                     ; 186 GPIOA->CR1&=~(1<<6);		
3014  0004 721d5003      	bres	20483,#6
3015                     ; 187 GPIOA->CR2&=~(1<<6);
3017  0008 721d5004      	bres	20484,#6
3018                     ; 188 GPIOA->ODR&=~(1<<6);
3020  000c 721d5000      	bres	20480,#6
3021                     ; 190 power_in_drv_off_cnt=500;
3023  0010 ae01f4        	ldw	x,#500
3024  0013 cf0008        	ldw	_power_in_drv_off_cnt,x
3025  0016               L1002:
3026                     ; 194 	if(!((GPIOA->IDR)&(1<<6)))
3028  0016 c65001        	ld	a,20481
3029  0019 a540          	bcp	a,#64
3030  001b 2614          	jrne	L5002
3031                     ; 196 		power_in_drv_off_cnt++;	
3033  001d ce0008        	ldw	x,_power_in_drv_off_cnt
3034  0020 1c0001        	addw	x,#1
3035  0023 cf0008        	ldw	_power_in_drv_off_cnt,x
3036                     ; 197 		if(power_in_drv_off_cnt>1000) return 0;
3038  0026 9c            	rvf
3039  0027 ce0008        	ldw	x,_power_in_drv_off_cnt
3040  002a a303e9        	cpw	x,#1001
3041  002d 2fe7          	jrslt	L1002
3044  002f 5f            	clrw	x
3047  0030 81            	ret
3048  0031               L5002:
3049                     ; 201 		power_in_drv_off_cnt--;	
3051  0031 ce0008        	ldw	x,_power_in_drv_off_cnt
3052  0034 1d0001        	subw	x,#1
3053  0037 cf0008        	ldw	_power_in_drv_off_cnt,x
3054                     ; 202 		if(power_in_drv_off_cnt==0) return 1;		
3056  003a ce0008        	ldw	x,_power_in_drv_off_cnt
3057  003d 26d7          	jrne	L1002
3060  003f ae0001        	ldw	x,#1
3063  0042 81            	ret
3093                     ; 207 void error_warn_hndl(void)
3093                     ; 208 {
3094                     	switch	.text
3095  0043               _error_warn_hndl:
3099                     ; 209 if(mainCnt<3)return;	
3101  0043 9c            	rvf
3102  0044 be82          	ldw	x,_mainCnt
3103  0046 a30003        	cpw	x,#3
3104  0049 2e01          	jrsge	L5202
3108  004b 81            	ret
3109  004c               L5202:
3110                     ; 210 if(MODE_EE==1)
3112  004c c64046        	ld	a,_MODE_EE
3113  004f a101          	cp	a,#1
3114  0051 2611          	jrne	L7202
3115                     ; 212 	if(waterSensorErrorStat!=dsesNORM)bWARN=1;
3117  0053 c60000        	ld	a,_waterSensorErrorStat
3118  0056 a155          	cp	a,#85
3119  0058 2706          	jreq	L1302
3122  005a 35010007      	mov	_bWARN,#1
3124  005e 2023          	jra	L5302
3125  0060               L1302:
3126                     ; 213 	else bWARN=0;
3128  0060 3f07          	clr	_bWARN
3129  0062 201f          	jra	L5302
3130  0064               L7202:
3131                     ; 215 else if((MODE_EE==2)||(MODE_EE==3))
3133  0064 c64046        	ld	a,_MODE_EE
3134  0067 a102          	cp	a,#2
3135  0069 2707          	jreq	L1402
3137  006b c64046        	ld	a,_MODE_EE
3138  006e a103          	cp	a,#3
3139  0070 2611          	jrne	L5302
3140  0072               L1402:
3141                     ; 217 	if((airSensorErrorStat!=taesNORM)||(waterSensorErrorStat!=dsesNORM))bWARN=1;
3143  0072 b623          	ld	a,_airSensorErrorStat
3144  0074 a155          	cp	a,#85
3145  0076 2607          	jrne	L5402
3147  0078 c60000        	ld	a,_waterSensorErrorStat
3148  007b a155          	cp	a,#85
3149  007d 2719          	jreq	L3402
3150  007f               L5402:
3153  007f 35010007      	mov	_bWARN,#1
3155  0083               L5302:
3156                     ; 221 if((waterSensorErrorStat==dsesNORM)&&((waterTemperAlarm==wtaCOOL/*temperOfWater<=3*/)||(waterTemperAlarm==wtaHEAT/*temperOfWater>=90*/)))bERR=1;	
3158  0083 c60000        	ld	a,_waterSensorErrorStat
3159  0086 a155          	cp	a,#85
3160  0088 2618          	jrne	L1502
3162  008a b627          	ld	a,_waterTemperAlarm
3163  008c a101          	cp	a,#1
3164  008e 270c          	jreq	L3502
3166  0090 b627          	ld	a,_waterTemperAlarm
3167  0092 a102          	cp	a,#2
3168  0094 260c          	jrne	L1502
3169  0096 2004          	jra	L3502
3170  0098               L3402:
3171                     ; 218 	else bWARN=0;
3173  0098 3f07          	clr	_bWARN
3174  009a 20e7          	jra	L5302
3175  009c               L3502:
3176                     ; 221 if((waterSensorErrorStat==dsesNORM)&&((waterTemperAlarm==wtaCOOL/*temperOfWater<=3*/)||(waterTemperAlarm==wtaHEAT/*temperOfWater>=90*/)))bERR=1;	
3178  009c 35010008      	mov	_bERR,#1
3180  00a0 2002          	jra	L5502
3181  00a2               L1502:
3182                     ; 222 else bERR=0;
3184  00a2 3f08          	clr	_bERR
3185  00a4               L5502:
3186                     ; 223 }
3189  00a4 81            	ret
3217                     ; 226 void airSensorLineErrorDrv(void)
3217                     ; 227 {
3218                     	switch	.text
3219  00a5               _airSensorLineErrorDrv:
3223                     ; 228 if(GPIOD->IDR&(1<<6)) 
3225  00a5 c65010        	ld	a,20496
3226  00a8 a540          	bcp	a,#64
3227  00aa 2714          	jreq	L7602
3228                     ; 230 	if(cntAirSensorLineErrorLo<10)
3230  00ac b606          	ld	a,_cntAirSensorLineErrorLo
3231  00ae a10a          	cp	a,#10
3232  00b0 2420          	jruge	L5702
3233                     ; 232 		cntAirSensorLineErrorLo++;
3235  00b2 3c06          	inc	_cntAirSensorLineErrorLo
3236                     ; 233 		if(cntAirSensorLineErrorLo>=10)
3238  00b4 b606          	ld	a,_cntAirSensorLineErrorLo
3239  00b6 a10a          	cp	a,#10
3240  00b8 2518          	jrult	L5702
3241                     ; 235 			airSensorErrorStat=taesLLO;	
3243  00ba 35020023      	mov	_airSensorErrorStat,#2
3244  00be 2012          	jra	L5702
3245  00c0               L7602:
3246                     ; 241 	if(cntAirSensorLineErrorHi<10)
3248  00c0 b605          	ld	a,_cntAirSensorLineErrorHi
3249  00c2 a10a          	cp	a,#10
3250  00c4 240c          	jruge	L5702
3251                     ; 243 		cntAirSensorLineErrorHi++;
3253  00c6 3c05          	inc	_cntAirSensorLineErrorHi
3254                     ; 244 		if(cntAirSensorLineErrorHi>=10)
3256  00c8 b605          	ld	a,_cntAirSensorLineErrorHi
3257  00ca a10a          	cp	a,#10
3258  00cc 2504          	jrult	L5702
3259                     ; 246 			airSensorErrorStat=taesLHI;	
3261  00ce 35030023      	mov	_airSensorErrorStat,#3
3262  00d2               L5702:
3263                     ; 251 if((airSensorErrorStat!=taesNORM)&&(airSensorErrorStatOld==taesNORM))
3265  00d2 b623          	ld	a,_airSensorErrorStat
3266  00d4 a155          	cp	a,#85
3267  00d6 2704          	jreq	L3012
3269  00d8 b624          	ld	a,_airSensorErrorStatOld
3270  00da a155          	cp	a,#85
3271  00dc               L3012:
3272                     ; 257 airSensorErrorStatOld=airSensorErrorStat;
3274  00dc 452324        	mov	_airSensorErrorStatOld,_airSensorErrorStat
3275                     ; 258 }
3278  00df 81            	ret
3309                     ; 261 void waterTemperAlarmHndl(void)
3309                     ; 262 {
3310                     	switch	.text
3311  00e0               _waterTemperAlarmHndl:
3315                     ; 263 if((waterSensorErrorStat==dsesNORM)&&((temperOfWater<3)||(temperOfWater>90))&&(mainCnt>60))
3317  00e0 c60000        	ld	a,_waterSensorErrorStat
3318  00e3 a155          	cp	a,#85
3319  00e5 2624          	jrne	L5112
3321  00e7 9c            	rvf
3322  00e8 b61f          	ld	a,_temperOfWater
3323  00ea a103          	cp	a,#3
3324  00ec 2f07          	jrslt	L7112
3326  00ee 9c            	rvf
3327  00ef b61f          	ld	a,_temperOfWater
3328  00f1 a15b          	cp	a,#91
3329  00f3 2f16          	jrslt	L5112
3330  00f5               L7112:
3332  00f5 9c            	rvf
3333  00f6 be82          	ldw	x,_mainCnt
3334  00f8 a3003d        	cpw	x,#61
3335  00fb 2f0e          	jrslt	L5112
3336                     ; 265 	if(waterTemperAlarmCnt<15)waterTemperAlarmCnt++;//=wtaCOOL;	
3338  00fd 9c            	rvf
3339  00fe c60030        	ld	a,_waterTemperAlarmCnt
3340  0101 a10f          	cp	a,#15
3341  0103 2e25          	jrsge	L3212
3344  0105 725c0030      	inc	_waterTemperAlarmCnt
3345  0109 201f          	jra	L3212
3346  010b               L5112:
3347                     ; 271 else if((waterSensorErrorStat==dsesNORM)&&(temperOfWater>=10)&&(temperOfWater<=80))
3349  010b c60000        	ld	a,_waterSensorErrorStat
3350  010e a155          	cp	a,#85
3351  0110 2618          	jrne	L3212
3353  0112 9c            	rvf
3354  0113 b61f          	ld	a,_temperOfWater
3355  0115 a10a          	cp	a,#10
3356  0117 2f11          	jrslt	L3212
3358  0119 9c            	rvf
3359  011a b61f          	ld	a,_temperOfWater
3360  011c a151          	cp	a,#81
3361  011e 2e0a          	jrsge	L3212
3362                     ; 273 	if(waterTemperAlarmCnt)waterTemperAlarmCnt--;//waterTemperAlarm=wtaNORM;	
3364  0120 725d0030      	tnz	_waterTemperAlarmCnt
3365  0124 2704          	jreq	L3212
3368  0126 725a0030      	dec	_waterTemperAlarmCnt
3369  012a               L3212:
3370                     ; 276 if(waterTemperAlarmCnt>14)
3372  012a 9c            	rvf
3373  012b c60030        	ld	a,_waterTemperAlarmCnt
3374  012e a10f          	cp	a,#15
3375  0130 2f1a          	jrslt	L1312
3376                     ; 278 	if(temperOfWater<3)waterTemperAlarm=wtaCOOL;
3378  0132 9c            	rvf
3379  0133 b61f          	ld	a,_temperOfWater
3380  0135 a103          	cp	a,#3
3381  0137 2e06          	jrsge	L3312
3384  0139 35010027      	mov	_waterTemperAlarm,#1
3386  013d 2017          	jra	L1412
3387  013f               L3312:
3388                     ; 279 	else if(temperOfWater>90)waterTemperAlarm=wtaHEAT;
3390  013f 9c            	rvf
3391  0140 b61f          	ld	a,_temperOfWater
3392  0142 a15b          	cp	a,#91
3393  0144 2f10          	jrslt	L1412
3396  0146 35020027      	mov	_waterTemperAlarm,#2
3397  014a 200a          	jra	L1412
3398  014c               L1312:
3399                     ; 281 else if(waterTemperAlarmCnt<1)
3401  014c 9c            	rvf
3402  014d c60030        	ld	a,_waterTemperAlarmCnt
3403  0150 a101          	cp	a,#1
3404  0152 2e02          	jrsge	L1412
3405                     ; 283 	waterTemperAlarm=wtaNORM;	
3407  0154 3f27          	clr	_waterTemperAlarm
3408  0156               L1412:
3409                     ; 286 if((waterTemperAlarm!=wtaNORM)&&(waterTemperAlarmOld==wtaNORM))
3411  0156 3d27          	tnz	_waterTemperAlarm
3412  0158 2718          	jreq	L5412
3414  015a 3d28          	tnz	_waterTemperAlarmOld
3415  015c 2614          	jrne	L5412
3416                     ; 292 	if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3418  015e c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3419  0161 a501          	bcp	a,#1
3420                     ; 297 	if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3422  0163 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3423  0166 a502          	bcp	a,#2
3424                     ; 301 	if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3426  0168 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3427  016b a504          	bcp	a,#4
3428                     ; 305 	if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3430  016d c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3431  0170 a508          	bcp	a,#8
3432  0172               L5412:
3433                     ; 311 waterTemperAlarmOld=waterTemperAlarm;
3435  0172 452728        	mov	_waterTemperAlarmOld,_waterTemperAlarm
3436                     ; 312 }
3439  0175 81            	ret
3466                     ; 315 void beep_drv(void)
3466                     ; 316 {
3467                     	switch	.text
3468  0176               _beep_drv:
3472                     ; 317 GPIOG->DDR|=0b00000010;
3474  0176 72125020      	bset	20512,#1
3475                     ; 318 GPIOG->CR1|=0b00000010;
3477  017a 72125021      	bset	20513,#1
3478                     ; 319 GPIOG->CR2&=0b11111101;
3480  017e 72135022      	bres	20514,#1
3481                     ; 323 if(bERR)
3483  0182 3d08          	tnz	_bERR
3484  0184 271e          	jreq	L7612
3485                     ; 325 	if(++beep_drv_cnt>=15)beep_drv_cnt=0;
3487  0186 9c            	rvf
3488  0187 3c09          	inc	_beep_drv_cnt
3489  0189 b609          	ld	a,_beep_drv_cnt
3490  018b a10f          	cp	a,#15
3491  018d 2f02          	jrslt	L1712
3494  018f 3f09          	clr	_beep_drv_cnt
3495  0191               L1712:
3496                     ; 326 	if(beep_drv_cnt<5)
3498  0191 9c            	rvf
3499  0192 b609          	ld	a,_beep_drv_cnt
3500  0194 a105          	cp	a,#5
3501  0196 2e06          	jrsge	L3712
3502                     ; 328 		GPIOG->ODR|=0b00000010;
3504  0198 7212501e      	bset	20510,#1
3506  019c 2058          	jra	L7712
3507  019e               L3712:
3508                     ; 330 	else GPIOG->ODR&=0b11111101;
3510  019e 7213501e      	bres	20510,#1
3511  01a2 2052          	jra	L7712
3512  01a4               L7612:
3513                     ; 332 else if(bWARN)
3515  01a4 3d07          	tnz	_bWARN
3516  01a6 273a          	jreq	L1022
3517                     ; 334 	if(++beep_drv_cnt>=100)beep_drv_cnt=0;
3519  01a8 9c            	rvf
3520  01a9 3c09          	inc	_beep_drv_cnt
3521  01ab b609          	ld	a,_beep_drv_cnt
3522  01ad a164          	cp	a,#100
3523  01af 2f02          	jrslt	L3022
3526  01b1 3f09          	clr	_beep_drv_cnt
3527  01b3               L3022:
3528                     ; 335 	if((beep_drv_cnt<5)||((beep_drv_cnt>=15)&&(beep_drv_cnt<20))||((beep_drv_cnt>=30)&&(beep_drv_cnt<35)))
3530  01b3 9c            	rvf
3531  01b4 b609          	ld	a,_beep_drv_cnt
3532  01b6 a105          	cp	a,#5
3533  01b8 2f1c          	jrslt	L7022
3535  01ba 9c            	rvf
3536  01bb b609          	ld	a,_beep_drv_cnt
3537  01bd a10f          	cp	a,#15
3538  01bf 2f07          	jrslt	L3122
3540  01c1 9c            	rvf
3541  01c2 b609          	ld	a,_beep_drv_cnt
3542  01c4 a114          	cp	a,#20
3543  01c6 2f0e          	jrslt	L7022
3544  01c8               L3122:
3546  01c8 9c            	rvf
3547  01c9 b609          	ld	a,_beep_drv_cnt
3548  01cb a11e          	cp	a,#30
3549  01cd 2f0d          	jrslt	L5022
3551  01cf 9c            	rvf
3552  01d0 b609          	ld	a,_beep_drv_cnt
3553  01d2 a123          	cp	a,#35
3554  01d4 2e06          	jrsge	L5022
3555  01d6               L7022:
3556                     ; 337 		GPIOG->ODR|=0b00000010;
3558  01d6 7212501e      	bset	20510,#1
3560  01da 201a          	jra	L7712
3561  01dc               L5022:
3562                     ; 339 	else GPIOG->ODR&=0b11111101;
3564  01dc 7213501e      	bres	20510,#1
3565  01e0 2014          	jra	L7712
3566  01e2               L1022:
3567                     ; 341 else if(beepTestCnt)
3569  01e2 725d0004      	tnz	_beepTestCnt
3570  01e6 270a          	jreq	L1222
3571                     ; 343 	beepTestCnt--;
3573  01e8 725a0004      	dec	_beepTestCnt
3574                     ; 344 	GPIOG->ODR|=0b00000010;
3576  01ec 7212501e      	bset	20510,#1
3578  01f0 2004          	jra	L7712
3579  01f2               L1222:
3580                     ; 346 else GPIOG->ODR&=0b11111101;
3582  01f2 7213501e      	bres	20510,#1
3583  01f6               L7712:
3584                     ; 347 }
3587  01f6 81            	ret
3619                     ; 350 void time_drv(void)
3619                     ; 351 {
3620                     	switch	.text
3621  01f7               _time_drv:
3623  01f7 88            	push	a
3624       00000001      OFST:	set	1
3627                     ; 352 _ds1307_read_time(buff_for_time);
3629  01f8 ae0012        	ldw	x,#_buff_for_time
3630  01fb cd0000        	call	__ds1307_read_time
3632                     ; 354 time_sec=(((buff_for_time[0]&0x70)>>4)*10)+(buff_for_time[0]&0x0f);
3634  01fe b612          	ld	a,_buff_for_time
3635  0200 a40f          	and	a,#15
3636  0202 6b01          	ld	(OFST+0,sp),a
3637  0204 b612          	ld	a,_buff_for_time
3638  0206 a470          	and	a,#112
3639  0208 4e            	swap	a
3640  0209 a40f          	and	a,#15
3641  020b 97            	ld	xl,a
3642  020c a60a          	ld	a,#10
3643  020e 42            	mul	x,a
3644  020f 9f            	ld	a,xl
3645  0210 1b01          	add	a,(OFST+0,sp)
3646  0212 b711          	ld	_time_sec,a
3647                     ; 355 time_min=(((buff_for_time[1]&0x70)>>4)*10)+(buff_for_time[1]&0x0f);
3649  0214 b613          	ld	a,_buff_for_time+1
3650  0216 a40f          	and	a,#15
3651  0218 6b01          	ld	(OFST+0,sp),a
3652  021a b613          	ld	a,_buff_for_time+1
3653  021c a470          	and	a,#112
3654  021e 4e            	swap	a
3655  021f a40f          	and	a,#15
3656  0221 97            	ld	xl,a
3657  0222 a60a          	ld	a,#10
3658  0224 42            	mul	x,a
3659  0225 9f            	ld	a,xl
3660  0226 1b01          	add	a,(OFST+0,sp)
3661  0228 b710          	ld	_time_min,a
3662                     ; 356 time_hour=(((buff_for_time[2]&0x30)>>4)*10)+(buff_for_time[2]&0x0f);
3664  022a b614          	ld	a,_buff_for_time+2
3665  022c a40f          	and	a,#15
3666  022e 6b01          	ld	(OFST+0,sp),a
3667  0230 b614          	ld	a,_buff_for_time+2
3668  0232 a430          	and	a,#48
3669  0234 4e            	swap	a
3670  0235 a40f          	and	a,#15
3671  0237 97            	ld	xl,a
3672  0238 a60a          	ld	a,#10
3673  023a 42            	mul	x,a
3674  023b 9f            	ld	a,xl
3675  023c 1b01          	add	a,(OFST+0,sp)
3676  023e b70f          	ld	_time_hour,a
3677                     ; 357 time_date=(((buff_for_time[4]&0x30)>>4)*10)+(buff_for_time[4]&0x0f);
3679  0240 b616          	ld	a,_buff_for_time+4
3680  0242 a40f          	and	a,#15
3681  0244 6b01          	ld	(OFST+0,sp),a
3682  0246 b616          	ld	a,_buff_for_time+4
3683  0248 a430          	and	a,#48
3684  024a 4e            	swap	a
3685  024b a40f          	and	a,#15
3686  024d 97            	ld	xl,a
3687  024e a60a          	ld	a,#10
3688  0250 42            	mul	x,a
3689  0251 9f            	ld	a,xl
3690  0252 1b01          	add	a,(OFST+0,sp)
3691  0254 b703          	ld	_time_date,a
3692                     ; 358 time_month=(((buff_for_time[5]&0x10)>>4)*10)+(buff_for_time[5]&0x0f);
3694  0256 b617          	ld	a,_buff_for_time+5
3695  0258 a40f          	and	a,#15
3696  025a 6b01          	ld	(OFST+0,sp),a
3697  025c b617          	ld	a,_buff_for_time+5
3698  025e a410          	and	a,#16
3699  0260 4e            	swap	a
3700  0261 a40f          	and	a,#15
3701  0263 97            	ld	xl,a
3702  0264 a60a          	ld	a,#10
3703  0266 42            	mul	x,a
3704  0267 9f            	ld	a,xl
3705  0268 1b01          	add	a,(OFST+0,sp)
3706  026a b70d          	ld	_time_month,a
3707                     ; 359 time_year=(((buff_for_time[6]&0xf0)>>4)*10)+(buff_for_time[6]&0x0f);
3709  026c b618          	ld	a,_buff_for_time+6
3710  026e a40f          	and	a,#15
3711  0270 6b01          	ld	(OFST+0,sp),a
3712  0272 b618          	ld	a,_buff_for_time+6
3713  0274 a4f0          	and	a,#240
3714  0276 4e            	swap	a
3715  0277 a40f          	and	a,#15
3716  0279 97            	ld	xl,a
3717  027a a60a          	ld	a,#10
3718  027c 42            	mul	x,a
3719  027d 9f            	ld	a,xl
3720  027e 1b01          	add	a,(OFST+0,sp)
3721  0280 b70c          	ld	_time_year,a
3722                     ; 360 time_day_of_week=(buff_for_time[3]&0x07);
3724  0282 b615          	ld	a,_buff_for_time+3
3725  0284 a407          	and	a,#7
3726  0286 b70e          	ld	_time_day_of_week,a
3727                     ; 361 }
3730  0288 84            	pop	a
3731  0289 81            	ret
3761                     ; 365 void sheduler_hndl(void)
3761                     ; 366 {
3762                     	switch	.text
3763  028a               _sheduler_hndl:
3765  028a 89            	pushw	x
3766       00000002      OFST:	set	2
3769                     ; 369 day_sheduler_time=(unsigned char)(((((unsigned)time_hour)*60)+((unsigned)time_min))/10);
3771  028b b610          	ld	a,_time_min
3772  028d 5f            	clrw	x
3773  028e 97            	ld	xl,a
3774  028f 1f01          	ldw	(OFST-1,sp),x
3775  0291 b60f          	ld	a,_time_hour
3776  0293 5f            	clrw	x
3777  0294 97            	ld	xl,a
3778  0295 90ae003c      	ldw	y,#60
3779  0299 cd0000        	call	c_imul
3781  029c 72fb01        	addw	x,(OFST-1,sp)
3782  029f 90ae000a      	ldw	y,#10
3783  02a3 65            	divw	x,y
3784  02a4 9f            	ld	a,xl
3785  02a5 b702          	ld	_day_sheduler_time,a
3786                     ; 371 if((day_sheduler_time>=0)&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][0]))
3788  02a7 b60e          	ld	a,_time_day_of_week
3789  02a9 97            	ld	xl,a
3790  02aa a605          	ld	a,#5
3791  02ac 42            	mul	x,a
3792  02ad 1d0005        	subw	x,#5
3793  02b0 d64020        	ld	a,(_TABLE_TIME_EE,x)
3794  02b3 b102          	cp	a,_day_sheduler_time
3795  02b5 2321          	jrule	L5422
3796                     ; 373 	if(time_day_of_week==1)	temperRegToSheduler=TABLE_TEMPER_EE[6][4];
3798  02b7 b60e          	ld	a,_time_day_of_week
3799  02b9 a101          	cp	a,#1
3800  02bb 2609          	jrne	L7422
3803  02bd 55406a0004    	mov	_temperRegToSheduler,_TABLE_TEMPER_EE+34
3805  02c2 acbf03bf      	jpf	L3522
3806  02c6               L7422:
3807                     ; 374 	else 					temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-2][4];
3809  02c6 b60e          	ld	a,_time_day_of_week
3810  02c8 97            	ld	xl,a
3811  02c9 a605          	ld	a,#5
3812  02cb 42            	mul	x,a
3813  02cc 1d000a        	subw	x,#10
3814  02cf d6404c        	ld	a,(_TABLE_TEMPER_EE+4,x)
3815  02d2 b704          	ld	_temperRegToSheduler,a
3816  02d4 acbf03bf      	jpf	L3522
3817  02d8               L5422:
3818                     ; 376 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][0])&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][1]))
3820  02d8 b60e          	ld	a,_time_day_of_week
3821  02da 97            	ld	xl,a
3822  02db a605          	ld	a,#5
3823  02dd 42            	mul	x,a
3824  02de 1d0005        	subw	x,#5
3825  02e1 d64020        	ld	a,(_TABLE_TIME_EE,x)
3826  02e4 b102          	cp	a,_day_sheduler_time
3827  02e6 2222          	jrugt	L5522
3829  02e8 b60e          	ld	a,_time_day_of_week
3830  02ea 97            	ld	xl,a
3831  02eb a605          	ld	a,#5
3832  02ed 42            	mul	x,a
3833  02ee 1d0005        	subw	x,#5
3834  02f1 d64021        	ld	a,(_TABLE_TIME_EE+1,x)
3835  02f4 b102          	cp	a,_day_sheduler_time
3836  02f6 2312          	jrule	L5522
3837                     ; 378 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][0];
3839  02f8 b60e          	ld	a,_time_day_of_week
3840  02fa 97            	ld	xl,a
3841  02fb a605          	ld	a,#5
3842  02fd 42            	mul	x,a
3843  02fe 1d0005        	subw	x,#5
3844  0301 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
3845  0304 b704          	ld	_temperRegToSheduler,a
3847  0306 acbf03bf      	jpf	L3522
3848  030a               L5522:
3849                     ; 380 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][1])&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][2]))
3851  030a b60e          	ld	a,_time_day_of_week
3852  030c 97            	ld	xl,a
3853  030d a605          	ld	a,#5
3854  030f 42            	mul	x,a
3855  0310 1d0005        	subw	x,#5
3856  0313 d64021        	ld	a,(_TABLE_TIME_EE+1,x)
3857  0316 b102          	cp	a,_day_sheduler_time
3858  0318 2221          	jrugt	L1622
3860  031a b60e          	ld	a,_time_day_of_week
3861  031c 97            	ld	xl,a
3862  031d a605          	ld	a,#5
3863  031f 42            	mul	x,a
3864  0320 1d0005        	subw	x,#5
3865  0323 d64022        	ld	a,(_TABLE_TIME_EE+2,x)
3866  0326 b102          	cp	a,_day_sheduler_time
3867  0328 2311          	jrule	L1622
3868                     ; 382 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][1];
3870  032a b60e          	ld	a,_time_day_of_week
3871  032c 97            	ld	xl,a
3872  032d a605          	ld	a,#5
3873  032f 42            	mul	x,a
3874  0330 1d0005        	subw	x,#5
3875  0333 d64049        	ld	a,(_TABLE_TEMPER_EE+1,x)
3876  0336 b704          	ld	_temperRegToSheduler,a
3878  0338 cc03bf        	jra	L3522
3879  033b               L1622:
3880                     ; 384 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][2])&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][3]))
3882  033b b60e          	ld	a,_time_day_of_week
3883  033d 97            	ld	xl,a
3884  033e a605          	ld	a,#5
3885  0340 42            	mul	x,a
3886  0341 1d0005        	subw	x,#5
3887  0344 d64022        	ld	a,(_TABLE_TIME_EE+2,x)
3888  0347 b102          	cp	a,_day_sheduler_time
3889  0349 2220          	jrugt	L5622
3891  034b b60e          	ld	a,_time_day_of_week
3892  034d 97            	ld	xl,a
3893  034e a605          	ld	a,#5
3894  0350 42            	mul	x,a
3895  0351 1d0005        	subw	x,#5
3896  0354 d64023        	ld	a,(_TABLE_TIME_EE+3,x)
3897  0357 b102          	cp	a,_day_sheduler_time
3898  0359 2310          	jrule	L5622
3899                     ; 386 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][2];
3901  035b b60e          	ld	a,_time_day_of_week
3902  035d 97            	ld	xl,a
3903  035e a605          	ld	a,#5
3904  0360 42            	mul	x,a
3905  0361 1d0005        	subw	x,#5
3906  0364 d6404a        	ld	a,(_TABLE_TEMPER_EE+2,x)
3907  0367 b704          	ld	_temperRegToSheduler,a
3909  0369 2054          	jra	L3522
3910  036b               L5622:
3911                     ; 388 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][3])&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][4]))
3913  036b b60e          	ld	a,_time_day_of_week
3914  036d 97            	ld	xl,a
3915  036e a605          	ld	a,#5
3916  0370 42            	mul	x,a
3917  0371 1d0005        	subw	x,#5
3918  0374 d64023        	ld	a,(_TABLE_TIME_EE+3,x)
3919  0377 b102          	cp	a,_day_sheduler_time
3920  0379 2220          	jrugt	L1722
3922  037b b60e          	ld	a,_time_day_of_week
3923  037d 97            	ld	xl,a
3924  037e a605          	ld	a,#5
3925  0380 42            	mul	x,a
3926  0381 1d0005        	subw	x,#5
3927  0384 d64024        	ld	a,(_TABLE_TIME_EE+4,x)
3928  0387 b102          	cp	a,_day_sheduler_time
3929  0389 2310          	jrule	L1722
3930                     ; 390 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][3];
3932  038b b60e          	ld	a,_time_day_of_week
3933  038d 97            	ld	xl,a
3934  038e a605          	ld	a,#5
3935  0390 42            	mul	x,a
3936  0391 1d0005        	subw	x,#5
3937  0394 d6404b        	ld	a,(_TABLE_TEMPER_EE+3,x)
3938  0397 b704          	ld	_temperRegToSheduler,a
3940  0399 2024          	jra	L3522
3941  039b               L1722:
3942                     ; 392 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][4])&&(day_sheduler_time<144))
3944  039b b60e          	ld	a,_time_day_of_week
3945  039d 97            	ld	xl,a
3946  039e a605          	ld	a,#5
3947  03a0 42            	mul	x,a
3948  03a1 1d0005        	subw	x,#5
3949  03a4 d64024        	ld	a,(_TABLE_TIME_EE+4,x)
3950  03a7 b102          	cp	a,_day_sheduler_time
3951  03a9 2214          	jrugt	L3522
3953  03ab b602          	ld	a,_day_sheduler_time
3954  03ad a190          	cp	a,#144
3955  03af 240e          	jruge	L3522
3956                     ; 394 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][4];
3958  03b1 b60e          	ld	a,_time_day_of_week
3959  03b3 97            	ld	xl,a
3960  03b4 a605          	ld	a,#5
3961  03b6 42            	mul	x,a
3962  03b7 1d0005        	subw	x,#5
3963  03ba d6404c        	ld	a,(_TABLE_TEMPER_EE+4,x)
3964  03bd b704          	ld	_temperRegToSheduler,a
3965  03bf               L3522:
3966                     ; 396 }
3969  03bf 85            	popw	x
3970  03c0 81            	ret
4015                     ; 401 void power_hndl(void)
4015                     ; 402 {
4016                     	switch	.text
4017  03c1               _power_hndl:
4019  03c1 88            	push	a
4020       00000001      OFST:	set	1
4023                     ; 403 disableInterrupts();	
4026  03c2 9b            sim
4028                     ; 404 if((powerNecc)&&(powerNeccOld==0))
4031  03c3 3d25          	tnz	_powerNecc
4032  03c5 2707          	jreq	L5132
4034  03c7 3d26          	tnz	_powerNeccOld
4035  03c9 2603          	jrne	L5132
4036                     ; 406 	fiksRandom=currRandom;
4038  03cb 458584        	mov	_fiksRandom,_currRandom
4039  03ce               L5132:
4040                     ; 409 if(!powerNecc)
4042  03ce 3d25          	tnz	_powerNecc
4043  03d0 2608          	jrne	L7132
4044                     ; 411 	out_stat[0]=osOFF;
4046  03d2 3f20          	clr	_out_stat
4047                     ; 412 	out_stat[1]=osOFF;
4049  03d4 3f21          	clr	_out_stat+1
4050                     ; 413 	out_stat[2]=osOFF;
4052  03d6 3f22          	clr	_out_stat+2
4054  03d8 2063          	jra	L1232
4055  03da               L7132:
4056                     ; 418 	for(i=0;i<3;i++)
4058  03da 0f01          	clr	(OFST+0,sp)
4059  03dc               L3232:
4060                     ; 420 		if((i<powerNecc)&&(i<MAX_POWER_EE))		out_stat[warmOrder[fiksRandom][i]]=osON;
4062  03dc 9c            	rvf
4063  03dd 7b01          	ld	a,(OFST+0,sp)
4064  03df 5f            	clrw	x
4065  03e0 97            	ld	xl,a
4066  03e1 905f          	clrw	y
4067  03e3 b625          	ld	a,_powerNecc
4068  03e5 2a02          	jrpl	L42
4069  03e7 9053          	cplw	y
4070  03e9               L42:
4071  03e9 9097          	ld	yl,a
4072  03eb 90bf00        	ldw	c_y,y
4073  03ee b300          	cpw	x,c_y
4074  03f0 2e2f          	jrsge	L1332
4076  03f2 9c            	rvf
4077  03f3 7b01          	ld	a,(OFST+0,sp)
4078  03f5 5f            	clrw	x
4079  03f6 97            	ld	xl,a
4080  03f7 905f          	clrw	y
4081  03f9 c64047        	ld	a,_MAX_POWER_EE
4082  03fc 2a02          	jrpl	L62
4083  03fe 9053          	cplw	y
4084  0400               L62:
4085  0400 9097          	ld	yl,a
4086  0402 90bf00        	ldw	c_y,y
4087  0405 b300          	cpw	x,c_y
4088  0407 2e18          	jrsge	L1332
4091  0409 b684          	ld	a,_fiksRandom
4092  040b 97            	ld	xl,a
4093  040c a603          	ld	a,#3
4094  040e 42            	mul	x,a
4095  040f 01            	rrwa	x,a
4096  0410 1b01          	add	a,(OFST+0,sp)
4097  0412 2401          	jrnc	L03
4098  0414 5c            	incw	x
4099  0415               L03:
4100  0415 02            	rlwa	x,a
4101  0416 d60000        	ld	a,(_warmOrder,x)
4102  0419 5f            	clrw	x
4103  041a 97            	ld	xl,a
4104  041b a601          	ld	a,#1
4105  041d e720          	ld	(_out_stat,x),a
4107  041f 2014          	jra	L3332
4108  0421               L1332:
4109                     ; 421 		else									out_stat[warmOrder[fiksRandom][i]]=osOFF;
4111  0421 b684          	ld	a,_fiksRandom
4112  0423 97            	ld	xl,a
4113  0424 a603          	ld	a,#3
4114  0426 42            	mul	x,a
4115  0427 01            	rrwa	x,a
4116  0428 1b01          	add	a,(OFST+0,sp)
4117  042a 2401          	jrnc	L23
4118  042c 5c            	incw	x
4119  042d               L23:
4120  042d 02            	rlwa	x,a
4121  042e d60000        	ld	a,(_warmOrder,x)
4122  0431 5f            	clrw	x
4123  0432 97            	ld	xl,a
4124  0433 6f20          	clr	(_out_stat,x)
4125  0435               L3332:
4126                     ; 418 	for(i=0;i<3;i++)
4128  0435 0c01          	inc	(OFST+0,sp)
4131  0437 7b01          	ld	a,(OFST+0,sp)
4132  0439 a103          	cp	a,#3
4133  043b 259f          	jrult	L3232
4134  043d               L1232:
4135                     ; 425 powerNeccOld=powerNecc;
4137  043d 452526        	mov	_powerNeccOld,_powerNecc
4138                     ; 427 powerEnabled=0;
4140  0440 3f0a          	clr	_powerEnabled
4141                     ; 428 if((out_stat[0]==osON)&&(outMode==omON))powerEnabled++;
4143  0442 b620          	ld	a,_out_stat
4144  0444 a101          	cp	a,#1
4145  0446 2609          	jrne	L5332
4147  0448 c6401d        	ld	a,_outMode
4148  044b a101          	cp	a,#1
4149  044d 2602          	jrne	L5332
4152  044f 3c0a          	inc	_powerEnabled
4153  0451               L5332:
4154                     ; 429 if((out_stat[1]==osON)&&(outMode==omON))powerEnabled++;
4156  0451 b621          	ld	a,_out_stat+1
4157  0453 a101          	cp	a,#1
4158  0455 2609          	jrne	L7332
4160  0457 c6401d        	ld	a,_outMode
4161  045a a101          	cp	a,#1
4162  045c 2602          	jrne	L7332
4165  045e 3c0a          	inc	_powerEnabled
4166  0460               L7332:
4167                     ; 430 if((out_stat[2]==osON)&&(outMode==omON))powerEnabled++;
4169  0460 b622          	ld	a,_out_stat+2
4170  0462 a101          	cp	a,#1
4171  0464 2609          	jrne	L1432
4173  0466 c6401d        	ld	a,_outMode
4174  0469 a101          	cp	a,#1
4175  046b 2602          	jrne	L1432
4178  046d 3c0a          	inc	_powerEnabled
4179  046f               L1432:
4180                     ; 432 enableInterrupts();
4183  046f 9a            rim
4185                     ; 433 }
4189  0470 84            	pop	a
4190  0471 81            	ret
4220                     ; 436 void power_necc_hndl(void)
4220                     ; 437 {
4221                     	switch	.text
4222  0472               _power_necc_hndl:
4226                     ; 439 if((aktualTemper>=targetTemper)||(temperOfWater>=90)||(mainCnt<3)||(powerStat==psOFF))
4228  0472 9c            	rvf
4229  0473 b61d          	ld	a,_aktualTemper
4230  0475 b11c          	cp	a,_targetTemper
4231  0477 2e13          	jrsge	L5532
4233  0479 9c            	rvf
4234  047a b61f          	ld	a,_temperOfWater
4235  047c a15a          	cp	a,#90
4236  047e 2e0c          	jrsge	L5532
4238  0480 9c            	rvf
4239  0481 be82          	ldw	x,_mainCnt
4240  0483 a30003        	cpw	x,#3
4241  0486 2f04          	jrslt	L5532
4243  0488 3d29          	tnz	_powerStat
4244  048a 2603          	jrne	L3532
4245  048c               L5532:
4246                     ; 441 	powerNecc=0;	
4248  048c 3f25          	clr	_powerNecc
4250  048e               L3632:
4251                     ; 452 }
4254  048e 81            	ret
4255  048f               L3532:
4256                     ; 443 else if(aktualTemper<targetTemper)
4258  048f 9c            	rvf
4259  0490 b61d          	ld	a,_aktualTemper
4260  0492 b11c          	cp	a,_targetTemper
4261  0494 2ef8          	jrsge	L3632
4262                     ; 445 	powerNeccDelta=targetTemper-aktualTemper;
4264  0496 b61c          	ld	a,_targetTemper
4265  0498 b01d          	sub	a,_aktualTemper
4266  049a b70b          	ld	_powerNeccDelta,a
4267                     ; 446 	powerNecc=0;
4269  049c 3f25          	clr	_powerNecc
4270                     ; 447 	if(powerNeccDelta>=2) powerNecc=1;
4272  049e 9c            	rvf
4273  049f b60b          	ld	a,_powerNeccDelta
4274  04a1 a102          	cp	a,#2
4275  04a3 2f04          	jrslt	L7632
4278  04a5 35010025      	mov	_powerNecc,#1
4279  04a9               L7632:
4280                     ; 448 	if(powerNeccDelta>=3) powerNecc=2;
4282  04a9 9c            	rvf
4283  04aa b60b          	ld	a,_powerNeccDelta
4284  04ac a103          	cp	a,#3
4285  04ae 2f04          	jrslt	L1732
4288  04b0 35020025      	mov	_powerNecc,#2
4289  04b4               L1732:
4290                     ; 449 	if(powerNeccDelta>=4) powerNecc=3;
4292  04b4 9c            	rvf
4293  04b5 b60b          	ld	a,_powerNeccDelta
4294  04b7 a104          	cp	a,#4
4295  04b9 2fd3          	jrslt	L3632
4298  04bb 35030025      	mov	_powerNecc,#3
4299  04bf 20cd          	jra	L3632
4343                     ; 455 void matemath(void)
4343                     ; 456 {
4344                     	switch	.text
4345  04c1               _matemath:
4347  04c1 89            	pushw	x
4348       00000002      OFST:	set	2
4351                     ; 458 if((wire1_in[1]&0xf0)==0)
4353  04c2 c60001        	ld	a,_wire1_in+1
4354  04c5 a5f0          	bcp	a,#240
4355  04c7 2624          	jrne	L3142
4356                     ; 460 	temperOfWaterTemp=((wire1_in[0]&0xf0)>>4)+((wire1_in[1]&0x0f)<<4);
4358  04c9 c60001        	ld	a,_wire1_in+1
4359  04cc a40f          	and	a,#15
4360  04ce 97            	ld	xl,a
4361  04cf a610          	ld	a,#16
4362  04d1 42            	mul	x,a
4363  04d2 9f            	ld	a,xl
4364  04d3 6b01          	ld	(OFST-1,sp),a
4365  04d5 c60000        	ld	a,_wire1_in
4366  04d8 a4f0          	and	a,#240
4367  04da 4e            	swap	a
4368  04db a40f          	and	a,#15
4369  04dd 1b01          	add	a,(OFST-1,sp)
4370  04df 6b02          	ld	(OFST+0,sp),a
4371                     ; 461 	temperOfWater=(signed short)temperOfWaterTemp;
4373  04e1 7b02          	ld	a,(OFST+0,sp)
4374  04e3 b71f          	ld	_temperOfWater,a
4375                     ; 462 	if(bDEB)temperOfWater=1;
4377  04e5 3d00          	tnz	_bDEB
4378  04e7 2704          	jreq	L3142
4381  04e9 3501001f      	mov	_temperOfWater,#1
4382  04ed               L3142:
4383                     ; 464 if(MODE_EE==1)
4385  04ed c64046        	ld	a,_MODE_EE
4386  04f0 a101          	cp	a,#1
4387  04f2 260a          	jrne	L7142
4388                     ; 466 	aktualTemper=temperOfWater;
4390  04f4 451f1d        	mov	_aktualTemper,_temperOfWater
4391                     ; 467 	targetTemper=NECC_TEMPER_WATER_EE;
4393  04f7 554045001c    	mov	_targetTemper,_NECC_TEMPER_WATER_EE
4395  04fc 201e          	jra	L1242
4396  04fe               L7142:
4397                     ; 469 else if(MODE_EE==2)
4399  04fe c64046        	ld	a,_MODE_EE
4400  0501 a102          	cp	a,#2
4401  0503 260a          	jrne	L3242
4402                     ; 471 	aktualTemper=temperOfAir;
4404  0505 451e1d        	mov	_aktualTemper,_temperOfAir
4405                     ; 472 	targetTemper=NECC_TEMPER_AIR_EE;
4407  0508 554044001c    	mov	_targetTemper,_NECC_TEMPER_AIR_EE
4409  050d 200d          	jra	L1242
4410  050f               L3242:
4411                     ; 474 else if(MODE_EE==3)
4413  050f c64046        	ld	a,_MODE_EE
4414  0512 a103          	cp	a,#3
4415  0514 2606          	jrne	L1242
4416                     ; 476 	aktualTemper=temperOfAir;
4418  0516 451e1d        	mov	_aktualTemper,_temperOfAir
4419                     ; 477 	targetTemper=temperRegToSheduler;
4421  0519 45041c        	mov	_targetTemper,_temperRegToSheduler
4422  051c               L1242:
4423                     ; 479 }
4426  051c 85            	popw	x
4427  051d 81            	ret
4510                     ; 482 void ind_hndl(void)
4510                     ; 483 {
4511                     	switch	.text
4512  051e               _ind_hndl:
4514  051e 89            	pushw	x
4515       00000002      OFST:	set	2
4518                     ; 486 if(version_show_cnt)
4520  051f 725d000c      	tnz	_version_show_cnt
4521  0523 272c          	jreq	L1442
4522                     ; 488 	int2indII_slkuf(VERSION,3, 1, 1, 0, 0);
4524  0525 4b00          	push	#0
4525  0527 4b00          	push	#0
4526  0529 4b01          	push	#1
4527  052b 4b01          	push	#1
4528  052d 4b03          	push	#3
4529  052f ce0000        	ldw	x,_VERSION
4530  0532 cd0000        	call	_int2indII_slkuf
4532  0535 5b05          	addw	sp,#5
4533                     ; 489 	int2indII_slkuf(BUILD,0, 3, 0, 0, 0);
4535  0537 4b00          	push	#0
4536  0539 4b00          	push	#0
4537  053b 4b00          	push	#0
4538  053d 4b03          	push	#3
4539  053f 4b00          	push	#0
4540  0541 ce0000        	ldw	x,_BUILD
4541  0544 cd0000        	call	_int2indII_slkuf
4543  0547 5b05          	addw	sp,#5
4544                     ; 490 	ind_outG[3]&=0xfe;	
4546  0549 72110019      	bres	_ind_outG+3,#0
4548  054d ac7a167a      	jpf	L3442
4549  0551               L1442:
4550                     ; 492 else if(powerStat==psOFF)
4552  0551 3d29          	tnz	_powerStat
4553  0553 2616          	jrne	L5442
4554                     ; 494 	int2indII_slkuf(cbcVoltage,0, 4, 3, 0, 0);
4556  0555 4b00          	push	#0
4557  0557 4b00          	push	#0
4558  0559 4b03          	push	#3
4559  055b 4b04          	push	#4
4560  055d 4b00          	push	#0
4561  055f ce0006        	ldw	x,_cbcVoltage
4562  0562 cd0000        	call	_int2indII_slkuf
4564  0565 5b05          	addw	sp,#5
4566  0567 ac7a167a      	jpf	L3442
4567  056b               L5442:
4568                     ; 496 else if(ind==iMn)
4570  056b 3d61          	tnz	_a_ind
4571  056d 2703          	jreq	L653
4572  056f cc06d6        	jp	L1542
4573  0572               L653:
4574                     ; 498 	int2indII_slkuf(time_hour,2, 2, 0, 0, 0);
4576  0572 4b00          	push	#0
4577  0574 4b00          	push	#0
4578  0576 4b00          	push	#0
4579  0578 4b02          	push	#2
4580  057a 4b02          	push	#2
4581  057c b60f          	ld	a,_time_hour
4582  057e 5f            	clrw	x
4583  057f 97            	ld	xl,a
4584  0580 cd0000        	call	_int2indII_slkuf
4586  0583 5b05          	addw	sp,#5
4587                     ; 499 	int2indII_slkuf(time_min,0, 2, 0, 0, 0);
4589  0585 4b00          	push	#0
4590  0587 4b00          	push	#0
4591  0589 4b00          	push	#0
4592  058b 4b02          	push	#2
4593  058d 4b00          	push	#0
4594  058f b610          	ld	a,_time_min
4595  0591 5f            	clrw	x
4596  0592 97            	ld	xl,a
4597  0593 cd0000        	call	_int2indII_slkuf
4599  0596 5b05          	addw	sp,#5
4600                     ; 502 	if(bFL2)	ind_outG[2]&=0b11111110;
4602  0598 3d27          	tnz	_bFL2
4603  059a 2704          	jreq	L3542
4606  059c 72110018      	bres	_ind_outG+2,#0
4607  05a0               L3542:
4608                     ; 506 	if(aktualTemper>=0)
4610  05a0 9c            	rvf
4611  05a1 b61d          	ld	a,_aktualTemper
4612  05a3 a100          	cp	a,#0
4613  05a5 2f1c          	jrslt	L5542
4614                     ; 508 		int2indI_slkuf(aktualTemper,2, 2, 0, 1, 0);
4616  05a7 4b00          	push	#0
4617  05a9 4b01          	push	#1
4618  05ab 4b00          	push	#0
4619  05ad 4b02          	push	#2
4620  05af 4b02          	push	#2
4621  05b1 5f            	clrw	x
4622  05b2 b61d          	ld	a,_aktualTemper
4623  05b4 2a01          	jrpl	L24
4624  05b6 53            	cplw	x
4625  05b7               L24:
4626  05b7 97            	ld	xl,a
4627  05b8 cd0000        	call	_int2indI_slkuf
4629  05bb 5b05          	addw	sp,#5
4630                     ; 509 		ind_outB[1]=0b10011100;
4632  05bd 359c0076      	mov	_ind_outB+1,#156
4634  05c1 204a          	jra	L7542
4635  05c3               L5542:
4636                     ; 513 		if(-aktualTemper<10)
4638  05c3 9c            	rvf
4639  05c4 5f            	clrw	x
4640  05c5 b61d          	ld	a,_aktualTemper
4641  05c7 2a01          	jrpl	L44
4642  05c9 53            	cplw	x
4643  05ca               L44:
4644  05ca 97            	ld	xl,a
4645  05cb 50            	negw	x
4646  05cc a3000a        	cpw	x,#10
4647  05cf 2e21          	jrsge	L1642
4648                     ; 515 			ind_outB[3]=0b10111111;
4650  05d1 35bf0078      	mov	_ind_outB+3,#191
4651                     ; 516 			int2indI_slkuf(-aktualTemper,2, 1, 0, 1, 0);
4653  05d5 4b00          	push	#0
4654  05d7 4b01          	push	#1
4655  05d9 4b00          	push	#0
4656  05db 4b01          	push	#1
4657  05dd 4b02          	push	#2
4658  05df 5f            	clrw	x
4659  05e0 b61d          	ld	a,_aktualTemper
4660  05e2 2a01          	jrpl	L64
4661  05e4 53            	cplw	x
4662  05e5               L64:
4663  05e5 97            	ld	xl,a
4664  05e6 50            	negw	x
4665  05e7 cd0000        	call	_int2indI_slkuf
4667  05ea 5b05          	addw	sp,#5
4668                     ; 517 			ind_outB[1]=0b10011100;
4670  05ec 359c0076      	mov	_ind_outB+1,#156
4672  05f0 201b          	jra	L7542
4673  05f2               L1642:
4674                     ; 521 			ind_outB[3]=0b10111111;
4676  05f2 35bf0078      	mov	_ind_outB+3,#191
4677                     ; 522 			int2indI_slkuf(-aktualTemper,1, 2, 0, 1, 0);
4679  05f6 4b00          	push	#0
4680  05f8 4b01          	push	#1
4681  05fa 4b00          	push	#0
4682  05fc 4b02          	push	#2
4683  05fe 4b01          	push	#1
4684  0600 5f            	clrw	x
4685  0601 b61d          	ld	a,_aktualTemper
4686  0603 2a01          	jrpl	L05
4687  0605 53            	cplw	x
4688  0606               L05:
4689  0606 97            	ld	xl,a
4690  0607 50            	negw	x
4691  0608 cd0000        	call	_int2indI_slkuf
4693  060b 5b05          	addw	sp,#5
4694  060d               L7542:
4695                     ; 529 	led_mask_off(0x00);
4697  060d 4f            	clr	a
4698  060e cd0000        	call	_led_mask_off
4700                     ; 530 	if(outMode==omON)
4702  0611 c6401d        	ld	a,_outMode
4703  0614 a101          	cp	a,#1
4704  0616 262d          	jrne	L5642
4705                     ; 532 		if(MODE_EE==1)led_on(1);
4707  0618 c64046        	ld	a,_MODE_EE
4708  061b a101          	cp	a,#1
4709  061d 2607          	jrne	L7642
4712  061f a601          	ld	a,#1
4713  0621 cd0000        	call	_led_on
4716  0624 201f          	jra	L5642
4717  0626               L7642:
4718                     ; 533 		else if(MODE_EE==2) led_on(2);
4720  0626 c64046        	ld	a,_MODE_EE
4721  0629 a102          	cp	a,#2
4722  062b 2607          	jrne	L3742
4725  062d a602          	ld	a,#2
4726  062f cd0000        	call	_led_on
4729  0632 2011          	jra	L5642
4730  0634               L3742:
4731                     ; 534 		else if(MODE_EE==3)
4733  0634 c64046        	ld	a,_MODE_EE
4734  0637 a103          	cp	a,#3
4735  0639 260a          	jrne	L5642
4736                     ; 536 			led_on(2);
4738  063b a602          	ld	a,#2
4739  063d cd0000        	call	_led_on
4741                     ; 537 			led_on(3);
4743  0640 a603          	ld	a,#3
4744  0642 cd0000        	call	_led_on
4746  0645               L5642:
4747                     ; 540 	if(!optr_kontr_cnt)
4749  0645 725d0031      	tnz	_optr_kontr_cnt
4750  0649 2638          	jrne	L1052
4751                     ; 542 		if((outMode==omON)&&(out_stat[0]==osON))led_on(4);
4753  064b c6401d        	ld	a,_outMode
4754  064e a101          	cp	a,#1
4755  0650 260b          	jrne	L3052
4757  0652 b620          	ld	a,_out_stat
4758  0654 a101          	cp	a,#1
4759  0656 2605          	jrne	L3052
4762  0658 a604          	ld	a,#4
4763  065a cd0000        	call	_led_on
4765  065d               L3052:
4766                     ; 543 		if((outMode==omON)&&(out_stat[1]==osON))led_on(5);
4768  065d c6401d        	ld	a,_outMode
4769  0660 a101          	cp	a,#1
4770  0662 260b          	jrne	L5052
4772  0664 b621          	ld	a,_out_stat+1
4773  0666 a101          	cp	a,#1
4774  0668 2605          	jrne	L5052
4777  066a a605          	ld	a,#5
4778  066c cd0000        	call	_led_on
4780  066f               L5052:
4781                     ; 544 		if((outMode==omON)&&(out_stat[2]==osON))led_on(6);
4783  066f c6401d        	ld	a,_outMode
4784  0672 a101          	cp	a,#1
4785  0674 2643          	jrne	L1152
4787  0676 b622          	ld	a,_out_stat+2
4788  0678 a101          	cp	a,#1
4789  067a 263d          	jrne	L1152
4792  067c a606          	ld	a,#6
4793  067e cd0000        	call	_led_on
4795  0681 2036          	jra	L1152
4796  0683               L1052:
4797                     ; 548 		if(((optr_kontr_cnt)&&(optr_stat&0x01)))led_on(4);
4799  0683 725d0031      	tnz	_optr_kontr_cnt
4800  0687 270c          	jreq	L3152
4802  0689 c60032        	ld	a,_optr_stat
4803  068c a501          	bcp	a,#1
4804  068e 2705          	jreq	L3152
4807  0690 a604          	ld	a,#4
4808  0692 cd0000        	call	_led_on
4810  0695               L3152:
4811                     ; 549 		if(((optr_kontr_cnt)&&(optr_stat&0x02)))led_on(5);
4813  0695 725d0031      	tnz	_optr_kontr_cnt
4814  0699 270c          	jreq	L5152
4816  069b c60032        	ld	a,_optr_stat
4817  069e a502          	bcp	a,#2
4818  06a0 2705          	jreq	L5152
4821  06a2 a605          	ld	a,#5
4822  06a4 cd0000        	call	_led_on
4824  06a7               L5152:
4825                     ; 550 		if(((optr_kontr_cnt)&&(optr_stat&0x04)))led_on(6);
4827  06a7 725d0031      	tnz	_optr_kontr_cnt
4828  06ab 270c          	jreq	L1152
4830  06ad c60032        	ld	a,_optr_stat
4831  06b0 a504          	bcp	a,#4
4832  06b2 2705          	jreq	L1152
4835  06b4 a606          	ld	a,#6
4836  06b6 cd0000        	call	_led_on
4838  06b9               L1152:
4839                     ; 553 	if(bERR)led_on(7);
4841  06b9 3d08          	tnz	_bERR
4842  06bb 2709          	jreq	L1252
4845  06bd a607          	ld	a,#7
4846  06bf cd0000        	call	_led_on
4849  06c2 ac7a167a      	jpf	L3442
4850  06c6               L1252:
4851                     ; 554 	else if(bWARN)led_flash(7);
4853  06c6 3d07          	tnz	_bWARN
4854  06c8 2603          	jrne	L063
4855  06ca cc167a        	jp	L3442
4856  06cd               L063:
4859  06cd a607          	ld	a,#7
4860  06cf cd0000        	call	_led_flash
4862  06d2 ac7a167a      	jpf	L3442
4863  06d6               L1542:
4864                     ; 563 else if(ind==iDate_W)
4866  06d6 b661          	ld	a,_a_ind
4867  06d8 a104          	cp	a,#4
4868  06da 2661          	jrne	L1352
4869                     ; 565 	if(sub_ind==0)
4871  06dc 3d62          	tnz	_a_ind+1
4872  06de 262a          	jrne	L3352
4873                     ; 568 		int2indI_slkuf(time_date,1, 2, 0, 1, 0);
4875  06e0 4b00          	push	#0
4876  06e2 4b01          	push	#1
4877  06e4 4b00          	push	#0
4878  06e6 4b02          	push	#2
4879  06e8 4b01          	push	#1
4880  06ea b603          	ld	a,_time_date
4881  06ec 5f            	clrw	x
4882  06ed 97            	ld	xl,a
4883  06ee cd0000        	call	_int2indI_slkuf
4885  06f1 5b05          	addw	sp,#5
4886                     ; 569 		int2indII_slkuf(time_month,0, 2, 0, 1, 0);
4888  06f3 4b00          	push	#0
4889  06f5 4b01          	push	#1
4890  06f7 4b00          	push	#0
4891  06f9 4b02          	push	#2
4892  06fb 4b00          	push	#0
4893  06fd b60d          	ld	a,_time_month
4894  06ff 5f            	clrw	x
4895  0700 97            	ld	xl,a
4896  0701 cd0000        	call	_int2indII_slkuf
4898  0704 5b05          	addw	sp,#5
4900  0706 ac7a167a      	jpf	L3442
4901  070a               L3352:
4902                     ; 572 	else if(sub_ind==1)
4904  070a b662          	ld	a,_a_ind+1
4905  070c a101          	cp	a,#1
4906  070e 2703          	jreq	L263
4907  0710 cc167a        	jp	L3442
4908  0713               L263:
4909                     ; 575 		int2indI_slkuf(time_year,1, 2, 0, 1, 0);
4911  0713 4b00          	push	#0
4912  0715 4b01          	push	#1
4913  0717 4b00          	push	#0
4914  0719 4b02          	push	#2
4915  071b 4b01          	push	#1
4916  071d b60c          	ld	a,_time_year
4917  071f 5f            	clrw	x
4918  0720 97            	ld	xl,a
4919  0721 cd0000        	call	_int2indI_slkuf
4921  0724 5b05          	addw	sp,#5
4922                     ; 576 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 0);		
4924  0726 4b00          	push	#0
4925  0728 4b01          	push	#1
4926  072a 4b00          	push	#0
4927  072c 4b02          	push	#2
4928  072e 4b00          	push	#0
4929  0730 b60e          	ld	a,_time_day_of_week
4930  0732 5f            	clrw	x
4931  0733 97            	ld	xl,a
4932  0734 cd0000        	call	_int2indII_slkuf
4934  0737 5b05          	addw	sp,#5
4935  0739 ac7a167a      	jpf	L3442
4936  073d               L1352:
4937                     ; 580 else if(ind==iSet)
4939  073d b661          	ld	a,_a_ind
4940  073f a101          	cp	a,#1
4941  0741 2703          	jreq	L463
4942  0743 cc0894        	jp	L3452
4943  0746               L463:
4944                     ; 582 	int2indI_slkuf(sub_ind+1,1, 2, 0, 1, 1);
4946  0746 4b01          	push	#1
4947  0748 4b01          	push	#1
4948  074a 4b00          	push	#0
4949  074c 4b02          	push	#2
4950  074e 4b01          	push	#1
4951  0750 5f            	clrw	x
4952  0751 b662          	ld	a,_a_ind+1
4953  0753 2a01          	jrpl	L25
4954  0755 53            	cplw	x
4955  0756               L25:
4956  0756 97            	ld	xl,a
4957  0757 5c            	incw	x
4958  0758 cd0000        	call	_int2indI_slkuf
4960  075b 5b05          	addw	sp,#5
4961                     ; 583 	ind_outB[3]=0b10010001;	
4963  075d 35910078      	mov	_ind_outB+3,#145
4964                     ; 585 	if(sub_ind==0)
4966  0761 3d62          	tnz	_a_ind+1
4967  0763 261b          	jrne	L5452
4968                     ; 587 		int2indII_slkuf(MODE_EE,0, 2, 0, 1, 0);
4970  0765 4b00          	push	#0
4971  0767 4b01          	push	#1
4972  0769 4b00          	push	#0
4973  076b 4b02          	push	#2
4974  076d 4b00          	push	#0
4975  076f 5f            	clrw	x
4976  0770 c64046        	ld	a,_MODE_EE
4977  0773 2a01          	jrpl	L45
4978  0775 53            	cplw	x
4979  0776               L45:
4980  0776 97            	ld	xl,a
4981  0777 cd0000        	call	_int2indII_slkuf
4983  077a 5b05          	addw	sp,#5
4985  077c ac7a167a      	jpf	L3442
4986  0780               L5452:
4987                     ; 589 	else if(sub_ind==1)
4989  0780 b662          	ld	a,_a_ind+1
4990  0782 a101          	cp	a,#1
4991  0784 261b          	jrne	L1552
4992                     ; 591 		int2indII_slkuf(NECC_TEMPER_WATER_EE,0, 2, 0, 1, 0);
4994  0786 4b00          	push	#0
4995  0788 4b01          	push	#1
4996  078a 4b00          	push	#0
4997  078c 4b02          	push	#2
4998  078e 4b00          	push	#0
4999  0790 5f            	clrw	x
5000  0791 c64045        	ld	a,_NECC_TEMPER_WATER_EE
5001  0794 2a01          	jrpl	L65
5002  0796 53            	cplw	x
5003  0797               L65:
5004  0797 97            	ld	xl,a
5005  0798 cd0000        	call	_int2indII_slkuf
5007  079b 5b05          	addw	sp,#5
5009  079d ac7a167a      	jpf	L3442
5010  07a1               L1552:
5011                     ; 593 	else if(sub_ind==2)
5013  07a1 b662          	ld	a,_a_ind+1
5014  07a3 a102          	cp	a,#2
5015  07a5 261b          	jrne	L5552
5016                     ; 595 		int2indII_slkuf(NECC_TEMPER_AIR_EE,0, 2, 0, 1, 0);
5018  07a7 4b00          	push	#0
5019  07a9 4b01          	push	#1
5020  07ab 4b00          	push	#0
5021  07ad 4b02          	push	#2
5022  07af 4b00          	push	#0
5023  07b1 5f            	clrw	x
5024  07b2 c64044        	ld	a,_NECC_TEMPER_AIR_EE
5025  07b5 2a01          	jrpl	L06
5026  07b7 53            	cplw	x
5027  07b8               L06:
5028  07b8 97            	ld	xl,a
5029  07b9 cd0000        	call	_int2indII_slkuf
5031  07bc 5b05          	addw	sp,#5
5033  07be ac7a167a      	jpf	L3442
5034  07c2               L5552:
5035                     ; 597 	else if(sub_ind==3)
5037  07c2 b662          	ld	a,_a_ind+1
5038  07c4 a103          	cp	a,#3
5039  07c6 261b          	jrne	L1652
5040                     ; 599 		int2indII_slkuf(MAX_POWER_EE,0, 2, 0, 1, 0);
5042  07c8 4b00          	push	#0
5043  07ca 4b01          	push	#1
5044  07cc 4b00          	push	#0
5045  07ce 4b02          	push	#2
5046  07d0 4b00          	push	#0
5047  07d2 5f            	clrw	x
5048  07d3 c64047        	ld	a,_MAX_POWER_EE
5049  07d6 2a01          	jrpl	L26
5050  07d8 53            	cplw	x
5051  07d9               L26:
5052  07d9 97            	ld	xl,a
5053  07da cd0000        	call	_int2indII_slkuf
5055  07dd 5b05          	addw	sp,#5
5057  07df ac7a167a      	jpf	L3442
5058  07e3               L1652:
5059                     ; 601 	else if(sub_ind==4)
5061  07e3 b662          	ld	a,_a_ind+1
5062  07e5 a104          	cp	a,#4
5063  07e7 2617          	jrne	L5652
5064                     ; 603 		int2indII_slkuf(time_year,0, 2, 0, 1, 0);
5066  07e9 4b00          	push	#0
5067  07eb 4b01          	push	#1
5068  07ed 4b00          	push	#0
5069  07ef 4b02          	push	#2
5070  07f1 4b00          	push	#0
5071  07f3 b60c          	ld	a,_time_year
5072  07f5 5f            	clrw	x
5073  07f6 97            	ld	xl,a
5074  07f7 cd0000        	call	_int2indII_slkuf
5076  07fa 5b05          	addw	sp,#5
5078  07fc ac7a167a      	jpf	L3442
5079  0800               L5652:
5080                     ; 605 	else if(sub_ind==5)
5082  0800 b662          	ld	a,_a_ind+1
5083  0802 a105          	cp	a,#5
5084  0804 2617          	jrne	L1752
5085                     ; 607 		int2indII_slkuf(time_month,0, 2, 0, 1, 0);
5087  0806 4b00          	push	#0
5088  0808 4b01          	push	#1
5089  080a 4b00          	push	#0
5090  080c 4b02          	push	#2
5091  080e 4b00          	push	#0
5092  0810 b60d          	ld	a,_time_month
5093  0812 5f            	clrw	x
5094  0813 97            	ld	xl,a
5095  0814 cd0000        	call	_int2indII_slkuf
5097  0817 5b05          	addw	sp,#5
5099  0819 ac7a167a      	jpf	L3442
5100  081d               L1752:
5101                     ; 609 	else if(sub_ind==6)
5103  081d b662          	ld	a,_a_ind+1
5104  081f a106          	cp	a,#6
5105  0821 2617          	jrne	L5752
5106                     ; 611 		int2indII_slkuf(time_date,0, 2, 0, 1, 0);
5108  0823 4b00          	push	#0
5109  0825 4b01          	push	#1
5110  0827 4b00          	push	#0
5111  0829 4b02          	push	#2
5112  082b 4b00          	push	#0
5113  082d b603          	ld	a,_time_date
5114  082f 5f            	clrw	x
5115  0830 97            	ld	xl,a
5116  0831 cd0000        	call	_int2indII_slkuf
5118  0834 5b05          	addw	sp,#5
5120  0836 ac7a167a      	jpf	L3442
5121  083a               L5752:
5122                     ; 614 	else if(sub_ind==7)
5124  083a b662          	ld	a,_a_ind+1
5125  083c a107          	cp	a,#7
5126  083e 2617          	jrne	L1062
5127                     ; 616 		int2indII_slkuf(time_hour,0, 2, 0, 1, 0);
5129  0840 4b00          	push	#0
5130  0842 4b01          	push	#1
5131  0844 4b00          	push	#0
5132  0846 4b02          	push	#2
5133  0848 4b00          	push	#0
5134  084a b60f          	ld	a,_time_hour
5135  084c 5f            	clrw	x
5136  084d 97            	ld	xl,a
5137  084e cd0000        	call	_int2indII_slkuf
5139  0851 5b05          	addw	sp,#5
5141  0853 ac7a167a      	jpf	L3442
5142  0857               L1062:
5143                     ; 618 	else if(sub_ind==8)
5145  0857 b662          	ld	a,_a_ind+1
5146  0859 a108          	cp	a,#8
5147  085b 2617          	jrne	L5062
5148                     ; 620 		int2indII_slkuf(time_min,0, 2, 0, 1, 0);
5150  085d 4b00          	push	#0
5151  085f 4b01          	push	#1
5152  0861 4b00          	push	#0
5153  0863 4b02          	push	#2
5154  0865 4b00          	push	#0
5155  0867 b610          	ld	a,_time_min
5156  0869 5f            	clrw	x
5157  086a 97            	ld	xl,a
5158  086b cd0000        	call	_int2indII_slkuf
5160  086e 5b05          	addw	sp,#5
5162  0870 ac7a167a      	jpf	L3442
5163  0874               L5062:
5164                     ; 622 	else if(sub_ind==9)
5166  0874 b662          	ld	a,_a_ind+1
5167  0876 a109          	cp	a,#9
5168  0878 2703          	jreq	L663
5169  087a cc167a        	jp	L3442
5170  087d               L663:
5171                     ; 624 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 0);
5173  087d 4b00          	push	#0
5174  087f 4b01          	push	#1
5175  0881 4b00          	push	#0
5176  0883 4b02          	push	#2
5177  0885 4b00          	push	#0
5178  0887 b60e          	ld	a,_time_day_of_week
5179  0889 5f            	clrw	x
5180  088a 97            	ld	xl,a
5181  088b cd0000        	call	_int2indII_slkuf
5183  088e 5b05          	addw	sp,#5
5184  0890 ac7a167a      	jpf	L3442
5185  0894               L3452:
5186                     ; 628 else if(ind==iSet_)
5188  0894 b661          	ld	a,_a_ind
5189  0896 a102          	cp	a,#2
5190  0898 2703          	jreq	L073
5191  089a cc09eb        	jp	L5162
5192  089d               L073:
5193                     ; 630 	int2indI_slkuf(sub_ind+1,1, 2, 0, 1, 0);
5195  089d 4b00          	push	#0
5196  089f 4b01          	push	#1
5197  08a1 4b00          	push	#0
5198  08a3 4b02          	push	#2
5199  08a5 4b01          	push	#1
5200  08a7 5f            	clrw	x
5201  08a8 b662          	ld	a,_a_ind+1
5202  08aa 2a01          	jrpl	L46
5203  08ac 53            	cplw	x
5204  08ad               L46:
5205  08ad 97            	ld	xl,a
5206  08ae 5c            	incw	x
5207  08af cd0000        	call	_int2indI_slkuf
5209  08b2 5b05          	addw	sp,#5
5210                     ; 631 	ind_outB[3]=0b10010001;	
5212  08b4 35910078      	mov	_ind_outB+3,#145
5213                     ; 633 	if(sub_ind==0)
5215  08b8 3d62          	tnz	_a_ind+1
5216  08ba 261b          	jrne	L7162
5217                     ; 635 		int2indII_slkuf(MODE_EE,0, 2, 0, 1, 1);
5219  08bc 4b01          	push	#1
5220  08be 4b01          	push	#1
5221  08c0 4b00          	push	#0
5222  08c2 4b02          	push	#2
5223  08c4 4b00          	push	#0
5224  08c6 5f            	clrw	x
5225  08c7 c64046        	ld	a,_MODE_EE
5226  08ca 2a01          	jrpl	L66
5227  08cc 53            	cplw	x
5228  08cd               L66:
5229  08cd 97            	ld	xl,a
5230  08ce cd0000        	call	_int2indII_slkuf
5232  08d1 5b05          	addw	sp,#5
5234  08d3 ac7a167a      	jpf	L3442
5235  08d7               L7162:
5236                     ; 637 	else if(sub_ind==1)
5238  08d7 b662          	ld	a,_a_ind+1
5239  08d9 a101          	cp	a,#1
5240  08db 261b          	jrne	L3262
5241                     ; 639 		int2indII_slkuf(NECC_TEMPER_WATER_EE,0, 2, 0, 1, 1);
5243  08dd 4b01          	push	#1
5244  08df 4b01          	push	#1
5245  08e1 4b00          	push	#0
5246  08e3 4b02          	push	#2
5247  08e5 4b00          	push	#0
5248  08e7 5f            	clrw	x
5249  08e8 c64045        	ld	a,_NECC_TEMPER_WATER_EE
5250  08eb 2a01          	jrpl	L07
5251  08ed 53            	cplw	x
5252  08ee               L07:
5253  08ee 97            	ld	xl,a
5254  08ef cd0000        	call	_int2indII_slkuf
5256  08f2 5b05          	addw	sp,#5
5258  08f4 ac7a167a      	jpf	L3442
5259  08f8               L3262:
5260                     ; 641 	else if(sub_ind==2)
5262  08f8 b662          	ld	a,_a_ind+1
5263  08fa a102          	cp	a,#2
5264  08fc 261b          	jrne	L7262
5265                     ; 643 		int2indII_slkuf(NECC_TEMPER_AIR_EE,0, 2, 0, 1, 1);
5267  08fe 4b01          	push	#1
5268  0900 4b01          	push	#1
5269  0902 4b00          	push	#0
5270  0904 4b02          	push	#2
5271  0906 4b00          	push	#0
5272  0908 5f            	clrw	x
5273  0909 c64044        	ld	a,_NECC_TEMPER_AIR_EE
5274  090c 2a01          	jrpl	L27
5275  090e 53            	cplw	x
5276  090f               L27:
5277  090f 97            	ld	xl,a
5278  0910 cd0000        	call	_int2indII_slkuf
5280  0913 5b05          	addw	sp,#5
5282  0915 ac7a167a      	jpf	L3442
5283  0919               L7262:
5284                     ; 645 	else if(sub_ind==3)
5286  0919 b662          	ld	a,_a_ind+1
5287  091b a103          	cp	a,#3
5288  091d 261b          	jrne	L3362
5289                     ; 647 		int2indII_slkuf(MAX_POWER_EE,0, 2, 0, 1, 1);
5291  091f 4b01          	push	#1
5292  0921 4b01          	push	#1
5293  0923 4b00          	push	#0
5294  0925 4b02          	push	#2
5295  0927 4b00          	push	#0
5296  0929 5f            	clrw	x
5297  092a c64047        	ld	a,_MAX_POWER_EE
5298  092d 2a01          	jrpl	L47
5299  092f 53            	cplw	x
5300  0930               L47:
5301  0930 97            	ld	xl,a
5302  0931 cd0000        	call	_int2indII_slkuf
5304  0934 5b05          	addw	sp,#5
5306  0936 ac7a167a      	jpf	L3442
5307  093a               L3362:
5308                     ; 649 	else if(sub_ind==4)
5310  093a b662          	ld	a,_a_ind+1
5311  093c a104          	cp	a,#4
5312  093e 2617          	jrne	L7362
5313                     ; 651 		int2indII_slkuf(time_year,0, 2, 0, 1, 1);
5315  0940 4b01          	push	#1
5316  0942 4b01          	push	#1
5317  0944 4b00          	push	#0
5318  0946 4b02          	push	#2
5319  0948 4b00          	push	#0
5320  094a b60c          	ld	a,_time_year
5321  094c 5f            	clrw	x
5322  094d 97            	ld	xl,a
5323  094e cd0000        	call	_int2indII_slkuf
5325  0951 5b05          	addw	sp,#5
5327  0953 ac7a167a      	jpf	L3442
5328  0957               L7362:
5329                     ; 653 	else if(sub_ind==5)
5331  0957 b662          	ld	a,_a_ind+1
5332  0959 a105          	cp	a,#5
5333  095b 2617          	jrne	L3462
5334                     ; 655 		int2indII_slkuf(time_month,0, 2, 0, 1, 1);
5336  095d 4b01          	push	#1
5337  095f 4b01          	push	#1
5338  0961 4b00          	push	#0
5339  0963 4b02          	push	#2
5340  0965 4b00          	push	#0
5341  0967 b60d          	ld	a,_time_month
5342  0969 5f            	clrw	x
5343  096a 97            	ld	xl,a
5344  096b cd0000        	call	_int2indII_slkuf
5346  096e 5b05          	addw	sp,#5
5348  0970 ac7a167a      	jpf	L3442
5349  0974               L3462:
5350                     ; 657 	else if(sub_ind==6)
5352  0974 b662          	ld	a,_a_ind+1
5353  0976 a106          	cp	a,#6
5354  0978 2617          	jrne	L7462
5355                     ; 659 		int2indII_slkuf(time_date,0, 2, 0, 1, 1);
5357  097a 4b01          	push	#1
5358  097c 4b01          	push	#1
5359  097e 4b00          	push	#0
5360  0980 4b02          	push	#2
5361  0982 4b00          	push	#0
5362  0984 b603          	ld	a,_time_date
5363  0986 5f            	clrw	x
5364  0987 97            	ld	xl,a
5365  0988 cd0000        	call	_int2indII_slkuf
5367  098b 5b05          	addw	sp,#5
5369  098d ac7a167a      	jpf	L3442
5370  0991               L7462:
5371                     ; 662 	else if(sub_ind==7)
5373  0991 b662          	ld	a,_a_ind+1
5374  0993 a107          	cp	a,#7
5375  0995 2617          	jrne	L3562
5376                     ; 664 		int2indII_slkuf(time_hour,0, 2, 0, 1, 1);
5378  0997 4b01          	push	#1
5379  0999 4b01          	push	#1
5380  099b 4b00          	push	#0
5381  099d 4b02          	push	#2
5382  099f 4b00          	push	#0
5383  09a1 b60f          	ld	a,_time_hour
5384  09a3 5f            	clrw	x
5385  09a4 97            	ld	xl,a
5386  09a5 cd0000        	call	_int2indII_slkuf
5388  09a8 5b05          	addw	sp,#5
5390  09aa ac7a167a      	jpf	L3442
5391  09ae               L3562:
5392                     ; 666 	else if(sub_ind==8)
5394  09ae b662          	ld	a,_a_ind+1
5395  09b0 a108          	cp	a,#8
5396  09b2 2617          	jrne	L7562
5397                     ; 668 		int2indII_slkuf(time_min,0, 2, 0, 1, 1);
5399  09b4 4b01          	push	#1
5400  09b6 4b01          	push	#1
5401  09b8 4b00          	push	#0
5402  09ba 4b02          	push	#2
5403  09bc 4b00          	push	#0
5404  09be b610          	ld	a,_time_min
5405  09c0 5f            	clrw	x
5406  09c1 97            	ld	xl,a
5407  09c2 cd0000        	call	_int2indII_slkuf
5409  09c5 5b05          	addw	sp,#5
5411  09c7 ac7a167a      	jpf	L3442
5412  09cb               L7562:
5413                     ; 670 	else if(sub_ind==9)
5415  09cb b662          	ld	a,_a_ind+1
5416  09cd a109          	cp	a,#9
5417  09cf 2703          	jreq	L273
5418  09d1 cc167a        	jp	L3442
5419  09d4               L273:
5420                     ; 672 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 1);
5422  09d4 4b01          	push	#1
5423  09d6 4b01          	push	#1
5424  09d8 4b00          	push	#0
5425  09da 4b02          	push	#2
5426  09dc 4b00          	push	#0
5427  09de b60e          	ld	a,_time_day_of_week
5428  09e0 5f            	clrw	x
5429  09e1 97            	ld	xl,a
5430  09e2 cd0000        	call	_int2indII_slkuf
5432  09e5 5b05          	addw	sp,#5
5433  09e7 ac7a167a      	jpf	L3442
5434  09eb               L5162:
5435                     ; 676 else if(ind==iSetTable)
5437  09eb b661          	ld	a,_a_ind
5438  09ed a105          	cp	a,#5
5439  09ef 2703          	jreq	L473
5440  09f1 cc0aff        	jp	L7662
5441  09f4               L473:
5442                     ; 678 	ind_outB[3]=0b11001110;
5444  09f4 35ce0078      	mov	_ind_outB+3,#206
5445                     ; 679 	int2indI_slkuf(((sub_ind/5)+1)*10 + ((sub_ind)%5)+1,1, 2, 1, 0, 1);
5447  09f8 4b01          	push	#1
5448  09fa 4b00          	push	#0
5449  09fc 4b01          	push	#1
5450  09fe 4b02          	push	#2
5451  0a00 4b01          	push	#1
5452  0a02 5f            	clrw	x
5453  0a03 b662          	ld	a,_a_ind+1
5454  0a05 2a01          	jrpl	L67
5455  0a07 53            	cplw	x
5456  0a08               L67:
5457  0a08 97            	ld	xl,a
5458  0a09 a605          	ld	a,#5
5459  0a0b cd0000        	call	c_smodx
5461  0a0e 1f06          	ldw	(OFST+4,sp),x
5462  0a10 5f            	clrw	x
5463  0a11 b662          	ld	a,_a_ind+1
5464  0a13 2a01          	jrpl	L001
5465  0a15 53            	cplw	x
5466  0a16               L001:
5467  0a16 97            	ld	xl,a
5468  0a17 a605          	ld	a,#5
5469  0a19 cd0000        	call	c_sdivx
5471  0a1c 90ae000a      	ldw	y,#10
5472  0a20 cd0000        	call	c_imul
5474  0a23 72fb06        	addw	x,(OFST+4,sp)
5475  0a26 1c000b        	addw	x,#11
5476  0a29 cd0000        	call	_int2indI_slkuf
5478  0a2c 5b05          	addw	sp,#5
5479                     ; 681 	if(sub_ind1==0) 
5481  0a2e 3d63          	tnz	_a_ind+2
5482  0a30 2703cc0abb    	jrne	L1762
5483                     ; 683 		int2indII_slkuf((TABLE_TIME_EE[sub_ind/5][sub_ind%5]*10)/60,2, 2, 0, 1, 0);
5485  0a35 4b00          	push	#0
5486  0a37 4b01          	push	#1
5487  0a39 4b00          	push	#0
5488  0a3b 4b02          	push	#2
5489  0a3d 4b02          	push	#2
5490  0a3f 5f            	clrw	x
5491  0a40 b662          	ld	a,_a_ind+1
5492  0a42 2a01          	jrpl	L201
5493  0a44 53            	cplw	x
5494  0a45               L201:
5495  0a45 97            	ld	xl,a
5496  0a46 a605          	ld	a,#5
5497  0a48 cd0000        	call	c_smodx
5499  0a4b 1f06          	ldw	(OFST+4,sp),x
5500  0a4d 5f            	clrw	x
5501  0a4e b662          	ld	a,_a_ind+1
5502  0a50 2a01          	jrpl	L401
5503  0a52 53            	cplw	x
5504  0a53               L401:
5505  0a53 97            	ld	xl,a
5506  0a54 a605          	ld	a,#5
5507  0a56 cd0000        	call	c_sdivx
5509  0a59 90ae0005      	ldw	y,#5
5510  0a5d cd0000        	call	c_imul
5512  0a60 72fb06        	addw	x,(OFST+4,sp)
5513  0a63 d64020        	ld	a,(_TABLE_TIME_EE,x)
5514  0a66 97            	ld	xl,a
5515  0a67 a60a          	ld	a,#10
5516  0a69 42            	mul	x,a
5517  0a6a a63c          	ld	a,#60
5518  0a6c cd0000        	call	c_sdivx
5520  0a6f cd0000        	call	_int2indII_slkuf
5522  0a72 5b05          	addw	sp,#5
5523                     ; 684 		int2indII_slkuf((TABLE_TIME_EE[sub_ind/5][sub_ind%5]*10)%60,0, 2, 0, 0, 0);
5525  0a74 4b00          	push	#0
5526  0a76 4b00          	push	#0
5527  0a78 4b00          	push	#0
5528  0a7a 4b02          	push	#2
5529  0a7c 4b00          	push	#0
5530  0a7e 5f            	clrw	x
5531  0a7f b662          	ld	a,_a_ind+1
5532  0a81 2a01          	jrpl	L601
5533  0a83 53            	cplw	x
5534  0a84               L601:
5535  0a84 97            	ld	xl,a
5536  0a85 a605          	ld	a,#5
5537  0a87 cd0000        	call	c_smodx
5539  0a8a 1f06          	ldw	(OFST+4,sp),x
5540  0a8c 5f            	clrw	x
5541  0a8d b662          	ld	a,_a_ind+1
5542  0a8f 2a01          	jrpl	L011
5543  0a91 53            	cplw	x
5544  0a92               L011:
5545  0a92 97            	ld	xl,a
5546  0a93 a605          	ld	a,#5
5547  0a95 cd0000        	call	c_sdivx
5549  0a98 90ae0005      	ldw	y,#5
5550  0a9c cd0000        	call	c_imul
5552  0a9f 72fb06        	addw	x,(OFST+4,sp)
5553  0aa2 d64020        	ld	a,(_TABLE_TIME_EE,x)
5554  0aa5 97            	ld	xl,a
5555  0aa6 a60a          	ld	a,#10
5556  0aa8 42            	mul	x,a
5557  0aa9 a63c          	ld	a,#60
5558  0aab cd0000        	call	c_smodx
5560  0aae cd0000        	call	_int2indII_slkuf
5562  0ab1 5b05          	addw	sp,#5
5563                     ; 685 		ind_outG[2]&=0b11111110;
5565  0ab3 72110018      	bres	_ind_outG+2,#0
5567  0ab7 ac7a167a      	jpf	L3442
5568  0abb               L1762:
5569                     ; 689 		int2indII_slkuf(TABLE_TEMPER_EE[sub_ind/5][sub_ind%5],1, 2, 0, 1, 0);
5571  0abb 4b00          	push	#0
5572  0abd 4b01          	push	#1
5573  0abf 4b00          	push	#0
5574  0ac1 4b02          	push	#2
5575  0ac3 4b01          	push	#1
5576  0ac5 5f            	clrw	x
5577  0ac6 b662          	ld	a,_a_ind+1
5578  0ac8 2a01          	jrpl	L211
5579  0aca 53            	cplw	x
5580  0acb               L211:
5581  0acb 97            	ld	xl,a
5582  0acc a605          	ld	a,#5
5583  0ace cd0000        	call	c_smodx
5585  0ad1 1f06          	ldw	(OFST+4,sp),x
5586  0ad3 5f            	clrw	x
5587  0ad4 b662          	ld	a,_a_ind+1
5588  0ad6 2a01          	jrpl	L411
5589  0ad8 53            	cplw	x
5590  0ad9               L411:
5591  0ad9 97            	ld	xl,a
5592  0ada a605          	ld	a,#5
5593  0adc cd0000        	call	c_sdivx
5595  0adf 90ae0005      	ldw	y,#5
5596  0ae3 cd0000        	call	c_imul
5598  0ae6 72fb06        	addw	x,(OFST+4,sp)
5599  0ae9 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
5600  0aec 5f            	clrw	x
5601  0aed 4d            	tnz	a
5602  0aee 2a01          	jrpl	L611
5603  0af0 53            	cplw	x
5604  0af1               L611:
5605  0af1 97            	ld	xl,a
5606  0af2 cd0000        	call	_int2indII_slkuf
5608  0af5 5b05          	addw	sp,#5
5609                     ; 690 		ind_outC[0]=0b00111000;
5611  0af7 3538000a      	mov	_ind_outC,#56
5612  0afb ac7a167a      	jpf	L3442
5613  0aff               L7662:
5614                     ; 695 else if(ind==iSetTable_)
5616  0aff b661          	ld	a,_a_ind
5617  0b01 a106          	cp	a,#6
5618  0b03 2703          	jreq	L673
5619  0b05 cc0c1f        	jp	L7762
5620  0b08               L673:
5621                     ; 697 	ind_outB[3]=0b11001110;
5623  0b08 35ce0078      	mov	_ind_outB+3,#206
5624                     ; 698 	int2indI_slkuf(((sub_ind/5)+1)*10 + ((sub_ind)%5)+1,1, 2, 1, 0, 0);
5626  0b0c 4b00          	push	#0
5627  0b0e 4b00          	push	#0
5628  0b10 4b01          	push	#1
5629  0b12 4b02          	push	#2
5630  0b14 4b01          	push	#1
5631  0b16 5f            	clrw	x
5632  0b17 b662          	ld	a,_a_ind+1
5633  0b19 2a01          	jrpl	L021
5634  0b1b 53            	cplw	x
5635  0b1c               L021:
5636  0b1c 97            	ld	xl,a
5637  0b1d a605          	ld	a,#5
5638  0b1f cd0000        	call	c_smodx
5640  0b22 1f06          	ldw	(OFST+4,sp),x
5641  0b24 5f            	clrw	x
5642  0b25 b662          	ld	a,_a_ind+1
5643  0b27 2a01          	jrpl	L221
5644  0b29 53            	cplw	x
5645  0b2a               L221:
5646  0b2a 97            	ld	xl,a
5647  0b2b a605          	ld	a,#5
5648  0b2d cd0000        	call	c_sdivx
5650  0b30 90ae000a      	ldw	y,#10
5651  0b34 cd0000        	call	c_imul
5653  0b37 72fb06        	addw	x,(OFST+4,sp)
5654  0b3a 1c000b        	addw	x,#11
5655  0b3d cd0000        	call	_int2indI_slkuf
5657  0b40 5b05          	addw	sp,#5
5658                     ; 700 	if(sub_ind1==0) 
5660  0b42 3d63          	tnz	_a_ind+2
5661  0b44 2703          	jreq	L004
5662  0b46 cc0bdb        	jp	L1072
5663  0b49               L004:
5664                     ; 702 		int2indII_slkuf((TABLE_TIME_EE[sub_ind/5][sub_ind%5]*10)/60,2, 2, 0, 1, 1);
5666  0b49 4b01          	push	#1
5667  0b4b 4b01          	push	#1
5668  0b4d 4b00          	push	#0
5669  0b4f 4b02          	push	#2
5670  0b51 4b02          	push	#2
5671  0b53 5f            	clrw	x
5672  0b54 b662          	ld	a,_a_ind+1
5673  0b56 2a01          	jrpl	L421
5674  0b58 53            	cplw	x
5675  0b59               L421:
5676  0b59 97            	ld	xl,a
5677  0b5a a605          	ld	a,#5
5678  0b5c cd0000        	call	c_smodx
5680  0b5f 1f06          	ldw	(OFST+4,sp),x
5681  0b61 5f            	clrw	x
5682  0b62 b662          	ld	a,_a_ind+1
5683  0b64 2a01          	jrpl	L621
5684  0b66 53            	cplw	x
5685  0b67               L621:
5686  0b67 97            	ld	xl,a
5687  0b68 a605          	ld	a,#5
5688  0b6a cd0000        	call	c_sdivx
5690  0b6d 90ae0005      	ldw	y,#5
5691  0b71 cd0000        	call	c_imul
5693  0b74 72fb06        	addw	x,(OFST+4,sp)
5694  0b77 d64020        	ld	a,(_TABLE_TIME_EE,x)
5695  0b7a 97            	ld	xl,a
5696  0b7b a60a          	ld	a,#10
5697  0b7d 42            	mul	x,a
5698  0b7e a63c          	ld	a,#60
5699  0b80 cd0000        	call	c_sdivx
5701  0b83 cd0000        	call	_int2indII_slkuf
5703  0b86 5b05          	addw	sp,#5
5704                     ; 703 		int2indII_slkuf((TABLE_TIME_EE[sub_ind/5][sub_ind%5]*10)%60,0, 2, 0, 0, 1);
5706  0b88 4b01          	push	#1
5707  0b8a 4b00          	push	#0
5708  0b8c 4b00          	push	#0
5709  0b8e 4b02          	push	#2
5710  0b90 4b00          	push	#0
5711  0b92 5f            	clrw	x
5712  0b93 b662          	ld	a,_a_ind+1
5713  0b95 2a01          	jrpl	L031
5714  0b97 53            	cplw	x
5715  0b98               L031:
5716  0b98 97            	ld	xl,a
5717  0b99 a605          	ld	a,#5
5718  0b9b cd0000        	call	c_smodx
5720  0b9e 1f06          	ldw	(OFST+4,sp),x
5721  0ba0 5f            	clrw	x
5722  0ba1 b662          	ld	a,_a_ind+1
5723  0ba3 2a01          	jrpl	L231
5724  0ba5 53            	cplw	x
5725  0ba6               L231:
5726  0ba6 97            	ld	xl,a
5727  0ba7 a605          	ld	a,#5
5728  0ba9 cd0000        	call	c_sdivx
5730  0bac 90ae0005      	ldw	y,#5
5731  0bb0 cd0000        	call	c_imul
5733  0bb3 72fb06        	addw	x,(OFST+4,sp)
5734  0bb6 d64020        	ld	a,(_TABLE_TIME_EE,x)
5735  0bb9 97            	ld	xl,a
5736  0bba a60a          	ld	a,#10
5737  0bbc 42            	mul	x,a
5738  0bbd a63c          	ld	a,#60
5739  0bbf cd0000        	call	c_smodx
5741  0bc2 cd0000        	call	_int2indII_slkuf
5743  0bc5 5b05          	addw	sp,#5
5744                     ; 704 		if(!bFL2)	ind_outG[2]&=0b11111110;
5746  0bc7 3d27          	tnz	_bFL2
5747  0bc9 2608          	jrne	L3072
5750  0bcb 72110018      	bres	_ind_outG+2,#0
5752  0bcf ac7a167a      	jpf	L3442
5753  0bd3               L3072:
5754                     ; 705 		else 		ind_outG[2]|=0b00000001;
5756  0bd3 72100018      	bset	_ind_outG+2,#0
5757  0bd7 ac7a167a      	jpf	L3442
5758  0bdb               L1072:
5759                     ; 709 		int2indII_slkuf(TABLE_TEMPER_EE[sub_ind/5][sub_ind%5],1, 2, 0, 1, 1);
5761  0bdb 4b01          	push	#1
5762  0bdd 4b01          	push	#1
5763  0bdf 4b00          	push	#0
5764  0be1 4b02          	push	#2
5765  0be3 4b01          	push	#1
5766  0be5 5f            	clrw	x
5767  0be6 b662          	ld	a,_a_ind+1
5768  0be8 2a01          	jrpl	L431
5769  0bea 53            	cplw	x
5770  0beb               L431:
5771  0beb 97            	ld	xl,a
5772  0bec a605          	ld	a,#5
5773  0bee cd0000        	call	c_smodx
5775  0bf1 1f06          	ldw	(OFST+4,sp),x
5776  0bf3 5f            	clrw	x
5777  0bf4 b662          	ld	a,_a_ind+1
5778  0bf6 2a01          	jrpl	L631
5779  0bf8 53            	cplw	x
5780  0bf9               L631:
5781  0bf9 97            	ld	xl,a
5782  0bfa a605          	ld	a,#5
5783  0bfc cd0000        	call	c_sdivx
5785  0bff 90ae0005      	ldw	y,#5
5786  0c03 cd0000        	call	c_imul
5788  0c06 72fb06        	addw	x,(OFST+4,sp)
5789  0c09 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
5790  0c0c 5f            	clrw	x
5791  0c0d 4d            	tnz	a
5792  0c0e 2a01          	jrpl	L041
5793  0c10 53            	cplw	x
5794  0c11               L041:
5795  0c11 97            	ld	xl,a
5796  0c12 cd0000        	call	_int2indII_slkuf
5798  0c15 5b05          	addw	sp,#5
5799                     ; 710 		ind_outC[0]=0b00111000;
5801  0c17 3538000a      	mov	_ind_outC,#56
5802  0c1b ac7a167a      	jpf	L3442
5803  0c1f               L7762:
5804                     ; 715 else if(ind==iDeb)
5806  0c1f b661          	ld	a,_a_ind
5807  0c21 a107          	cp	a,#7
5808  0c23 2703          	jreq	L204
5809  0c25 cc10f2        	jp	L3172
5810  0c28               L204:
5811                     ; 717 	led_mask_off(0x00);
5813  0c28 4f            	clr	a
5814  0c29 cd0000        	call	_led_mask_off
5816                     ; 718 	led_on(sub_ind+1);
5818  0c2c b662          	ld	a,_a_ind+1
5819  0c2e 4c            	inc	a
5820  0c2f cd0000        	call	_led_on
5822                     ; 720 	if(sub_ind==0)
5824  0c32 3d62          	tnz	_a_ind+1
5825  0c34 2630          	jrne	L5172
5826                     ; 722 		int2indI_slkuf(targetTemper,1, 2, 0, 0, 0);
5828  0c36 4b00          	push	#0
5829  0c38 4b00          	push	#0
5830  0c3a 4b00          	push	#0
5831  0c3c 4b02          	push	#2
5832  0c3e 4b01          	push	#1
5833  0c40 5f            	clrw	x
5834  0c41 b61c          	ld	a,_targetTemper
5835  0c43 2a01          	jrpl	L241
5836  0c45 53            	cplw	x
5837  0c46               L241:
5838  0c46 97            	ld	xl,a
5839  0c47 cd0000        	call	_int2indI_slkuf
5841  0c4a 5b05          	addw	sp,#5
5842                     ; 723 		int2indII_slkuf(aktualTemper,0, 2, 0, 0, 0);
5844  0c4c 4b00          	push	#0
5845  0c4e 4b00          	push	#0
5846  0c50 4b00          	push	#0
5847  0c52 4b02          	push	#2
5848  0c54 4b00          	push	#0
5849  0c56 5f            	clrw	x
5850  0c57 b61d          	ld	a,_aktualTemper
5851  0c59 2a01          	jrpl	L441
5852  0c5b 53            	cplw	x
5853  0c5c               L441:
5854  0c5c 97            	ld	xl,a
5855  0c5d cd0000        	call	_int2indII_slkuf
5857  0c60 5b05          	addw	sp,#5
5859  0c62 ac7a167a      	jpf	L3442
5860  0c66               L5172:
5861                     ; 726 	else if(sub_ind==1)
5863  0c66 b662          	ld	a,_a_ind+1
5864  0c68 a101          	cp	a,#1
5865  0c6a 2630          	jrne	L1272
5866                     ; 728 		int2indI_slkuf(temperOfWater,1, 2, 0, 0, 0);
5868  0c6c 4b00          	push	#0
5869  0c6e 4b00          	push	#0
5870  0c70 4b00          	push	#0
5871  0c72 4b02          	push	#2
5872  0c74 4b01          	push	#1
5873  0c76 5f            	clrw	x
5874  0c77 b61f          	ld	a,_temperOfWater
5875  0c79 2a01          	jrpl	L641
5876  0c7b 53            	cplw	x
5877  0c7c               L641:
5878  0c7c 97            	ld	xl,a
5879  0c7d cd0000        	call	_int2indI_slkuf
5881  0c80 5b05          	addw	sp,#5
5882                     ; 729 		int2indII_slkuf(temperOfAir,0, 2, 0, 0, 0);
5884  0c82 4b00          	push	#0
5885  0c84 4b00          	push	#0
5886  0c86 4b00          	push	#0
5887  0c88 4b02          	push	#2
5888  0c8a 4b00          	push	#0
5889  0c8c 5f            	clrw	x
5890  0c8d b61e          	ld	a,_temperOfAir
5891  0c8f 2a01          	jrpl	L051
5892  0c91 53            	cplw	x
5893  0c92               L051:
5894  0c92 97            	ld	xl,a
5895  0c93 cd0000        	call	_int2indII_slkuf
5897  0c96 5b05          	addw	sp,#5
5899  0c98 ac7a167a      	jpf	L3442
5900  0c9c               L1272:
5901                     ; 732 	else if(sub_ind==2)
5903  0c9c b662          	ld	a,_a_ind+1
5904  0c9e a102          	cp	a,#2
5905  0ca0 2647          	jrne	L5272
5906                     ; 734 		int2indI_slkuf(MAX_POWER_EE,1, 2, 0, 0, 0);
5908  0ca2 4b00          	push	#0
5909  0ca4 4b00          	push	#0
5910  0ca6 4b00          	push	#0
5911  0ca8 4b02          	push	#2
5912  0caa 4b01          	push	#1
5913  0cac 5f            	clrw	x
5914  0cad c64047        	ld	a,_MAX_POWER_EE
5915  0cb0 2a01          	jrpl	L251
5916  0cb2 53            	cplw	x
5917  0cb3               L251:
5918  0cb3 97            	ld	xl,a
5919  0cb4 cd0000        	call	_int2indI_slkuf
5921  0cb7 5b05          	addw	sp,#5
5922                     ; 735 		int2indII_slkuf(powerNeccDelta,2, 2, 0, 0, 0);
5924  0cb9 4b00          	push	#0
5925  0cbb 4b00          	push	#0
5926  0cbd 4b00          	push	#0
5927  0cbf 4b02          	push	#2
5928  0cc1 4b02          	push	#2
5929  0cc3 5f            	clrw	x
5930  0cc4 b60b          	ld	a,_powerNeccDelta
5931  0cc6 2a01          	jrpl	L451
5932  0cc8 53            	cplw	x
5933  0cc9               L451:
5934  0cc9 97            	ld	xl,a
5935  0cca cd0000        	call	_int2indII_slkuf
5937  0ccd 5b05          	addw	sp,#5
5938                     ; 736 		int2indII_slkuf(powerNecc,0, 2, 0, 0, 0);
5940  0ccf 4b00          	push	#0
5941  0cd1 4b00          	push	#0
5942  0cd3 4b00          	push	#0
5943  0cd5 4b02          	push	#2
5944  0cd7 4b00          	push	#0
5945  0cd9 5f            	clrw	x
5946  0cda b625          	ld	a,_powerNecc
5947  0cdc 2a01          	jrpl	L651
5948  0cde 53            	cplw	x
5949  0cdf               L651:
5950  0cdf 97            	ld	xl,a
5951  0ce0 cd0000        	call	_int2indII_slkuf
5953  0ce3 5b05          	addw	sp,#5
5955  0ce5 ac7a167a      	jpf	L3442
5956  0ce9               L5272:
5957                     ; 738 	else if(sub_ind==3)
5959  0ce9 b662          	ld	a,_a_ind+1
5960  0ceb a103          	cp	a,#3
5961  0ced 267c          	jrne	L1372
5962                     ; 740 		int2indI_slkuf(aktualTemper,2, 2, 0, 0, 0);	
5964  0cef 4b00          	push	#0
5965  0cf1 4b00          	push	#0
5966  0cf3 4b00          	push	#0
5967  0cf5 4b02          	push	#2
5968  0cf7 4b02          	push	#2
5969  0cf9 5f            	clrw	x
5970  0cfa b61d          	ld	a,_aktualTemper
5971  0cfc 2a01          	jrpl	L061
5972  0cfe 53            	cplw	x
5973  0cff               L061:
5974  0cff 97            	ld	xl,a
5975  0d00 cd0000        	call	_int2indI_slkuf
5977  0d03 5b05          	addw	sp,#5
5978                     ; 741 		int2indI_slkuf(powerNecc,1, 1, 0, 0, 0);
5980  0d05 4b00          	push	#0
5981  0d07 4b00          	push	#0
5982  0d09 4b00          	push	#0
5983  0d0b 4b01          	push	#1
5984  0d0d 4b01          	push	#1
5985  0d0f 5f            	clrw	x
5986  0d10 b625          	ld	a,_powerNecc
5987  0d12 2a01          	jrpl	L261
5988  0d14 53            	cplw	x
5989  0d15               L261:
5990  0d15 97            	ld	xl,a
5991  0d16 cd0000        	call	_int2indI_slkuf
5993  0d19 5b05          	addw	sp,#5
5994                     ; 742 		int2indII_slkuf(out_stat[0],3, 1, 0, 0, 0);
5996  0d1b 4b00          	push	#0
5997  0d1d 4b00          	push	#0
5998  0d1f 4b00          	push	#0
5999  0d21 4b01          	push	#1
6000  0d23 4b03          	push	#3
6001  0d25 b620          	ld	a,_out_stat
6002  0d27 5f            	clrw	x
6003  0d28 97            	ld	xl,a
6004  0d29 cd0000        	call	_int2indII_slkuf
6006  0d2c 5b05          	addw	sp,#5
6007                     ; 743 		int2indII_slkuf(out_stat[1],2, 1, 0, 0, 0);
6009  0d2e 4b00          	push	#0
6010  0d30 4b00          	push	#0
6011  0d32 4b00          	push	#0
6012  0d34 4b01          	push	#1
6013  0d36 4b02          	push	#2
6014  0d38 b621          	ld	a,_out_stat+1
6015  0d3a 5f            	clrw	x
6016  0d3b 97            	ld	xl,a
6017  0d3c cd0000        	call	_int2indII_slkuf
6019  0d3f 5b05          	addw	sp,#5
6020                     ; 744 		int2indII_slkuf(out_stat[2],1, 1, 0, 0, 0);
6022  0d41 4b00          	push	#0
6023  0d43 4b00          	push	#0
6024  0d45 4b00          	push	#0
6025  0d47 4b01          	push	#1
6026  0d49 4b01          	push	#1
6027  0d4b b622          	ld	a,_out_stat+2
6028  0d4d 5f            	clrw	x
6029  0d4e 97            	ld	xl,a
6030  0d4f cd0000        	call	_int2indII_slkuf
6032  0d52 5b05          	addw	sp,#5
6033                     ; 745 		int2indII_slkuf(fiksRandom,0, 1, 0, 0, 0);
6035  0d54 4b00          	push	#0
6036  0d56 4b00          	push	#0
6037  0d58 4b00          	push	#0
6038  0d5a 4b01          	push	#1
6039  0d5c 4b00          	push	#0
6040  0d5e b684          	ld	a,_fiksRandom
6041  0d60 5f            	clrw	x
6042  0d61 97            	ld	xl,a
6043  0d62 cd0000        	call	_int2indII_slkuf
6045  0d65 5b05          	addw	sp,#5
6047  0d67 ac7a167a      	jpf	L3442
6048  0d6b               L1372:
6049                     ; 747 	else if(sub_ind==4)
6051  0d6b b662          	ld	a,_a_ind+1
6052  0d6d a104          	cp	a,#4
6053  0d6f 2640          	jrne	L5372
6054                     ; 749 		int2indI_slkuf(temperRegToSheduler,1, 2, 0, 0, 0);	
6056  0d71 4b00          	push	#0
6057  0d73 4b00          	push	#0
6058  0d75 4b00          	push	#0
6059  0d77 4b02          	push	#2
6060  0d79 4b01          	push	#1
6061  0d7b 5f            	clrw	x
6062  0d7c b604          	ld	a,_temperRegToSheduler
6063  0d7e 2a01          	jrpl	L461
6064  0d80 53            	cplw	x
6065  0d81               L461:
6066  0d81 97            	ld	xl,a
6067  0d82 cd0000        	call	_int2indI_slkuf
6069  0d85 5b05          	addw	sp,#5
6070                     ; 751 		int2indII_slkuf(time_day_of_week,3, 1, 0, 0, 0);
6072  0d87 4b00          	push	#0
6073  0d89 4b00          	push	#0
6074  0d8b 4b00          	push	#0
6075  0d8d 4b01          	push	#1
6076  0d8f 4b03          	push	#3
6077  0d91 b60e          	ld	a,_time_day_of_week
6078  0d93 5f            	clrw	x
6079  0d94 97            	ld	xl,a
6080  0d95 cd0000        	call	_int2indII_slkuf
6082  0d98 5b05          	addw	sp,#5
6083                     ; 754 		int2indII_slkuf(day_sheduler_time,0, 3, 0, 0, 0);
6085  0d9a 4b00          	push	#0
6086  0d9c 4b00          	push	#0
6087  0d9e 4b00          	push	#0
6088  0da0 4b03          	push	#3
6089  0da2 4b00          	push	#0
6090  0da4 b602          	ld	a,_day_sheduler_time
6091  0da6 5f            	clrw	x
6092  0da7 97            	ld	xl,a
6093  0da8 cd0000        	call	_int2indII_slkuf
6095  0dab 5b05          	addw	sp,#5
6097  0dad ac7a167a      	jpf	L3442
6098  0db1               L5372:
6099                     ; 757 	else if(sub_ind==5)
6101  0db1 b662          	ld	a,_a_ind+1
6102  0db3 a105          	cp	a,#5
6103  0db5 2616          	jrne	L1472
6104                     ; 764 		int2indII_slkuf(4,3, 1, 0, 0, 1);
6106  0db7 4b01          	push	#1
6107  0db9 4b00          	push	#0
6108  0dbb 4b00          	push	#0
6109  0dbd 4b01          	push	#1
6110  0dbf 4b03          	push	#3
6111  0dc1 ae0004        	ldw	x,#4
6112  0dc4 cd0000        	call	_int2indII_slkuf
6114  0dc7 5b05          	addw	sp,#5
6116  0dc9 ac7a167a      	jpf	L3442
6117  0dcd               L1472:
6118                     ; 766 	else if(sub_ind==6)
6120  0dcd b662          	ld	a,_a_ind+1
6121  0dcf a106          	cp	a,#6
6122  0dd1 262a          	jrne	L5472
6123                     ; 768 		int2indI_slkuf(main_power_off_hndl_cnt,1, 3, 0, 0, 0);	
6125  0dd3 4b00          	push	#0
6126  0dd5 4b00          	push	#0
6127  0dd7 4b00          	push	#0
6128  0dd9 4b03          	push	#3
6129  0ddb 4b01          	push	#1
6130  0ddd ce0027        	ldw	x,_main_power_off_hndl_cnt
6131  0de0 cd0000        	call	_int2indI_slkuf
6133  0de3 5b05          	addw	sp,#5
6134                     ; 770 		int2indII_slkuf(cbcSystemRequ,0, 1, 0, 0, 0);
6136  0de5 4b00          	push	#0
6137  0de7 4b00          	push	#0
6138  0de9 4b00          	push	#0
6139  0deb 4b01          	push	#1
6140  0ded 4b00          	push	#0
6141  0def c60026        	ld	a,_cbcSystemRequ
6142  0df2 5f            	clrw	x
6143  0df3 97            	ld	xl,a
6144  0df4 cd0000        	call	_int2indII_slkuf
6146  0df7 5b05          	addw	sp,#5
6148  0df9 ac7a167a      	jpf	L3442
6149  0dfd               L5472:
6150                     ; 776 	else if(sub_ind==7)
6152  0dfd b662          	ld	a,_a_ind+1
6153  0dff a107          	cp	a,#7
6154  0e01 2603          	jrne	L404
6155  0e03 cc167a        	jp	L3442
6156  0e06               L404:
6158                     ; 785 	else if(sub_ind==8)
6160  0e06 b662          	ld	a,_a_ind+1
6161  0e08 a108          	cp	a,#8
6162  0e0a 2703          	jreq	L604
6163  0e0c cc0fc8        	jp	L5572
6164  0e0f               L604:
6165                     ; 791 		if(++ind_check_cnt1>=5)
6167  0e0f 9c            	rvf
6168  0e10 ce0000        	ldw	x,_ind_check_cnt1
6169  0e13 1c0001        	addw	x,#1
6170  0e16 cf0000        	ldw	_ind_check_cnt1,x
6171  0e19 a30005        	cpw	x,#5
6172  0e1c 2f17          	jrslt	L7572
6173                     ; 793 			ind_check_cnt1=0;
6175  0e1e 5f            	clrw	x
6176  0e1f cf0000        	ldw	_ind_check_cnt1,x
6177                     ; 794 			if(++ind_check_cnt>=64)ind_check_cnt=0;
6179  0e22 9c            	rvf
6180  0e23 ce0002        	ldw	x,_ind_check_cnt
6181  0e26 1c0001        	addw	x,#1
6182  0e29 cf0002        	ldw	_ind_check_cnt,x
6183  0e2c a30040        	cpw	x,#64
6184  0e2f 2f04          	jrslt	L7572
6187  0e31 5f            	clrw	x
6188  0e32 cf0002        	ldw	_ind_check_cnt,x
6189  0e35               L7572:
6190                     ; 796 		ind_outB[0]=0xff;
6192  0e35 35ff0075      	mov	_ind_outB,#255
6193                     ; 797 		ind_outB[1]=0xff;
6195  0e39 35ff0076      	mov	_ind_outB+1,#255
6196                     ; 798 		ind_outB[2]=0xff;
6198  0e3d 35ff0077      	mov	_ind_outB+2,#255
6199                     ; 799 		ind_outB[3]=0xff;
6201  0e41 35ff0078      	mov	_ind_outB+3,#255
6202                     ; 800 		ind_outC[0]=0xff;
6204  0e45 35ff000a      	mov	_ind_outC,#255
6205                     ; 801 		ind_outC[1]=0xff;
6207  0e49 35ff000b      	mov	_ind_outC+1,#255
6208                     ; 802 		ind_outC[2]=0xff;
6210  0e4d 35ff000c      	mov	_ind_outC+2,#255
6211                     ; 803 		ind_outC[3]=0xff;
6213  0e51 35ff000d      	mov	_ind_outC+3,#255
6214                     ; 804 		ind_outG[0]=0xff;
6216  0e55 35ff0016      	mov	_ind_outG,#255
6217                     ; 805 		ind_outG[1]=0xff;
6219  0e59 35ff0017      	mov	_ind_outG+1,#255
6220                     ; 806 		ind_outG[2]=0xff;
6222  0e5d 35ff0018      	mov	_ind_outG+2,#255
6223                     ; 807 		ind_outG[3]=0xff;
6225  0e61 35ff0019      	mov	_ind_outG+3,#255
6226                     ; 809 		if(ind_check_cnt<=7)
6228  0e65 9c            	rvf
6229  0e66 ce0002        	ldw	x,_ind_check_cnt
6230  0e69 a30008        	cpw	x,#8
6231  0e6c 2e1a          	jrsge	L3672
6232                     ; 811 			ind_outB[3]&=(~(1<<ind_check_cnt));	
6234  0e6e 5f            	clrw	x
6235  0e6f c60003        	ld	a,_ind_check_cnt+1
6236  0e72 2a01          	jrpl	L661
6237  0e74 53            	cplw	x
6238  0e75               L661:
6239  0e75 97            	ld	xl,a
6240  0e76 a601          	ld	a,#1
6241  0e78 5d            	tnzw	x
6242  0e79 2704          	jreq	L071
6243  0e7b               L271:
6244  0e7b 48            	sll	a
6245  0e7c 5a            	decw	x
6246  0e7d 26fc          	jrne	L271
6247  0e7f               L071:
6248  0e7f 43            	cpl	a
6249  0e80 b478          	and	a,_ind_outB+3
6250  0e82 b778          	ld	_ind_outB+3,a
6252  0e84 ac7a167a      	jpf	L3442
6253  0e88               L3672:
6254                     ; 813 		else if(ind_check_cnt<=15)
6256  0e88 9c            	rvf
6257  0e89 ce0002        	ldw	x,_ind_check_cnt
6258  0e8c a30010        	cpw	x,#16
6259  0e8f 2e1d          	jrsge	L7672
6260                     ; 815 			ind_outB[2]&=(~(1<<(ind_check_cnt-8)));	
6262  0e91 c60003        	ld	a,_ind_check_cnt+1
6263  0e94 a008          	sub	a,#8
6264  0e96 5f            	clrw	x
6265  0e97 4d            	tnz	a
6266  0e98 2a01          	jrpl	L471
6267  0e9a 53            	cplw	x
6268  0e9b               L471:
6269  0e9b 97            	ld	xl,a
6270  0e9c a601          	ld	a,#1
6271  0e9e 5d            	tnzw	x
6272  0e9f 2704          	jreq	L671
6273  0ea1               L002:
6274  0ea1 48            	sll	a
6275  0ea2 5a            	decw	x
6276  0ea3 26fc          	jrne	L002
6277  0ea5               L671:
6278  0ea5 43            	cpl	a
6279  0ea6 b477          	and	a,_ind_outB+2
6280  0ea8 b777          	ld	_ind_outB+2,a
6282  0eaa ac7a167a      	jpf	L3442
6283  0eae               L7672:
6284                     ; 817 		else if(ind_check_cnt<=23)
6286  0eae 9c            	rvf
6287  0eaf ce0002        	ldw	x,_ind_check_cnt
6288  0eb2 a30018        	cpw	x,#24
6289  0eb5 2e1d          	jrsge	L3772
6290                     ; 819 			ind_outB[1]&=(~(1<<(ind_check_cnt-16)));	
6292  0eb7 c60003        	ld	a,_ind_check_cnt+1
6293  0eba a010          	sub	a,#16
6294  0ebc 5f            	clrw	x
6295  0ebd 4d            	tnz	a
6296  0ebe 2a01          	jrpl	L202
6297  0ec0 53            	cplw	x
6298  0ec1               L202:
6299  0ec1 97            	ld	xl,a
6300  0ec2 a601          	ld	a,#1
6301  0ec4 5d            	tnzw	x
6302  0ec5 2704          	jreq	L402
6303  0ec7               L602:
6304  0ec7 48            	sll	a
6305  0ec8 5a            	decw	x
6306  0ec9 26fc          	jrne	L602
6307  0ecb               L402:
6308  0ecb 43            	cpl	a
6309  0ecc b476          	and	a,_ind_outB+1
6310  0ece b776          	ld	_ind_outB+1,a
6312  0ed0 ac7a167a      	jpf	L3442
6313  0ed4               L3772:
6314                     ; 821 		else if(ind_check_cnt<=30)
6316  0ed4 9c            	rvf
6317  0ed5 ce0002        	ldw	x,_ind_check_cnt
6318  0ed8 a3001f        	cpw	x,#31
6319  0edb 2e1d          	jrsge	L7772
6320                     ; 823 			ind_outC[3]&=(~(1<<(ind_check_cnt-23)));	
6322  0edd c60003        	ld	a,_ind_check_cnt+1
6323  0ee0 a017          	sub	a,#23
6324  0ee2 5f            	clrw	x
6325  0ee3 4d            	tnz	a
6326  0ee4 2a01          	jrpl	L012
6327  0ee6 53            	cplw	x
6328  0ee7               L012:
6329  0ee7 97            	ld	xl,a
6330  0ee8 a601          	ld	a,#1
6331  0eea 5d            	tnzw	x
6332  0eeb 2704          	jreq	L212
6333  0eed               L412:
6334  0eed 48            	sll	a
6335  0eee 5a            	decw	x
6336  0eef 26fc          	jrne	L412
6337  0ef1               L212:
6338  0ef1 43            	cpl	a
6339  0ef2 b40d          	and	a,_ind_outC+3
6340  0ef4 b70d          	ld	_ind_outC+3,a
6342  0ef6 ac7a167a      	jpf	L3442
6343  0efa               L7772:
6344                     ; 825 		else if(ind_check_cnt==31)
6346  0efa ce0002        	ldw	x,_ind_check_cnt
6347  0efd a3001f        	cpw	x,#31
6348  0f00 2608          	jrne	L3003
6349                     ; 827 			ind_outG[3]&=0xfe;	
6351  0f02 72110019      	bres	_ind_outG+3,#0
6353  0f06 ac7a167a      	jpf	L3442
6354  0f0a               L3003:
6355                     ; 829 		else if(ind_check_cnt<=38)
6357  0f0a 9c            	rvf
6358  0f0b ce0002        	ldw	x,_ind_check_cnt
6359  0f0e a30027        	cpw	x,#39
6360  0f11 2e1d          	jrsge	L7003
6361                     ; 831 			ind_outC[2]&=(~(1<<(ind_check_cnt-31)));	
6363  0f13 c60003        	ld	a,_ind_check_cnt+1
6364  0f16 a01f          	sub	a,#31
6365  0f18 5f            	clrw	x
6366  0f19 4d            	tnz	a
6367  0f1a 2a01          	jrpl	L612
6368  0f1c 53            	cplw	x
6369  0f1d               L612:
6370  0f1d 97            	ld	xl,a
6371  0f1e a601          	ld	a,#1
6372  0f20 5d            	tnzw	x
6373  0f21 2704          	jreq	L022
6374  0f23               L222:
6375  0f23 48            	sll	a
6376  0f24 5a            	decw	x
6377  0f25 26fc          	jrne	L222
6378  0f27               L022:
6379  0f27 43            	cpl	a
6380  0f28 b40c          	and	a,_ind_outC+2
6381  0f2a b70c          	ld	_ind_outC+2,a
6383  0f2c ac7a167a      	jpf	L3442
6384  0f30               L7003:
6385                     ; 833 		else if(ind_check_cnt==39)
6387  0f30 ce0002        	ldw	x,_ind_check_cnt
6388  0f33 a30027        	cpw	x,#39
6389  0f36 2608          	jrne	L3103
6390                     ; 835 			ind_outG[2]&=0xfe;	
6392  0f38 72110018      	bres	_ind_outG+2,#0
6394  0f3c ac7a167a      	jpf	L3442
6395  0f40               L3103:
6396                     ; 837 		else if(ind_check_cnt<=46)
6398  0f40 9c            	rvf
6399  0f41 ce0002        	ldw	x,_ind_check_cnt
6400  0f44 a3002f        	cpw	x,#47
6401  0f47 2e1d          	jrsge	L7103
6402                     ; 839 			ind_outC[1]&=(~(1<<(ind_check_cnt-39)));	
6404  0f49 c60003        	ld	a,_ind_check_cnt+1
6405  0f4c a027          	sub	a,#39
6406  0f4e 5f            	clrw	x
6407  0f4f 4d            	tnz	a
6408  0f50 2a01          	jrpl	L422
6409  0f52 53            	cplw	x
6410  0f53               L422:
6411  0f53 97            	ld	xl,a
6412  0f54 a601          	ld	a,#1
6413  0f56 5d            	tnzw	x
6414  0f57 2704          	jreq	L622
6415  0f59               L032:
6416  0f59 48            	sll	a
6417  0f5a 5a            	decw	x
6418  0f5b 26fc          	jrne	L032
6419  0f5d               L622:
6420  0f5d 43            	cpl	a
6421  0f5e b40b          	and	a,_ind_outC+1
6422  0f60 b70b          	ld	_ind_outC+1,a
6424  0f62 ac7a167a      	jpf	L3442
6425  0f66               L7103:
6426                     ; 841 		else if(ind_check_cnt==47)
6428  0f66 ce0002        	ldw	x,_ind_check_cnt
6429  0f69 a3002f        	cpw	x,#47
6430  0f6c 2608          	jrne	L3203
6431                     ; 843 			ind_outG[1]&=0xfe;	
6433  0f6e 72110017      	bres	_ind_outG+1,#0
6435  0f72 ac7a167a      	jpf	L3442
6436  0f76               L3203:
6437                     ; 845 		else if(ind_check_cnt<=54)
6439  0f76 9c            	rvf
6440  0f77 ce0002        	ldw	x,_ind_check_cnt
6441  0f7a a30037        	cpw	x,#55
6442  0f7d 2e1d          	jrsge	L7203
6443                     ; 847 			ind_outC[0]&=(~(1<<(ind_check_cnt-47)));	
6445  0f7f c60003        	ld	a,_ind_check_cnt+1
6446  0f82 a02f          	sub	a,#47
6447  0f84 5f            	clrw	x
6448  0f85 4d            	tnz	a
6449  0f86 2a01          	jrpl	L232
6450  0f88 53            	cplw	x
6451  0f89               L232:
6452  0f89 97            	ld	xl,a
6453  0f8a a601          	ld	a,#1
6454  0f8c 5d            	tnzw	x
6455  0f8d 2704          	jreq	L432
6456  0f8f               L632:
6457  0f8f 48            	sll	a
6458  0f90 5a            	decw	x
6459  0f91 26fc          	jrne	L632
6460  0f93               L432:
6461  0f93 43            	cpl	a
6462  0f94 b40a          	and	a,_ind_outC
6463  0f96 b70a          	ld	_ind_outC,a
6465  0f98 ac7a167a      	jpf	L3442
6466  0f9c               L7203:
6467                     ; 849 		else if(ind_check_cnt==55)
6469  0f9c ce0002        	ldw	x,_ind_check_cnt
6470  0f9f a30037        	cpw	x,#55
6471  0fa2 2608          	jrne	L3303
6472                     ; 851 			ind_outG[0]&=0xfe;	
6474  0fa4 72110016      	bres	_ind_outG,#0
6476  0fa8 ac7a167a      	jpf	L3442
6477  0fac               L3303:
6478                     ; 853 		else if(ind_check_cnt<=64)
6480  0fac 9c            	rvf
6481  0fad ce0002        	ldw	x,_ind_check_cnt
6482  0fb0 a30041        	cpw	x,#65
6483  0fb3 2f03          	jrslt	L014
6484  0fb5 cc167a        	jp	L3442
6485  0fb8               L014:
6486                     ; 855 			led_mask_off(0x00);
6488  0fb8 4f            	clr	a
6489  0fb9 cd0000        	call	_led_mask_off
6491                     ; 856 			led_on(ind_check_cnt-55);	
6493  0fbc c60003        	ld	a,_ind_check_cnt+1
6494  0fbf a037          	sub	a,#55
6495  0fc1 cd0000        	call	_led_on
6497  0fc4 ac7a167a      	jpf	L3442
6498  0fc8               L5572:
6499                     ; 859 	else if(sub_ind==9)
6501  0fc8 b662          	ld	a,_a_ind+1
6502  0fca a109          	cp	a,#9
6503  0fcc 2642          	jrne	L3403
6504                     ; 861 		int2indI_slkuf(waterTemperAlarmCnt,1, 3, 0, 0, 0);
6506  0fce 4b00          	push	#0
6507  0fd0 4b00          	push	#0
6508  0fd2 4b00          	push	#0
6509  0fd4 4b03          	push	#3
6510  0fd6 4b01          	push	#1
6511  0fd8 5f            	clrw	x
6512  0fd9 c60030        	ld	a,_waterTemperAlarmCnt
6513  0fdc 2a01          	jrpl	L042
6514  0fde 53            	cplw	x
6515  0fdf               L042:
6516  0fdf 97            	ld	xl,a
6517  0fe0 cd0000        	call	_int2indI_slkuf
6519  0fe3 5b05          	addw	sp,#5
6520                     ; 862 		int2indII_slkuf(mainCnt,0, 2, 0, 0, 0);
6522  0fe5 4b00          	push	#0
6523  0fe7 4b00          	push	#0
6524  0fe9 4b00          	push	#0
6525  0feb 4b02          	push	#2
6526  0fed 4b00          	push	#0
6527  0fef be82          	ldw	x,_mainCnt
6528  0ff1 cd0000        	call	_int2indII_slkuf
6530  0ff4 5b05          	addw	sp,#5
6531                     ; 863 		int2indII_slkuf(temperOfWater,2, 2, 0, 0, 0);
6533  0ff6 4b00          	push	#0
6534  0ff8 4b00          	push	#0
6535  0ffa 4b00          	push	#0
6536  0ffc 4b02          	push	#2
6537  0ffe 4b02          	push	#2
6538  1000 5f            	clrw	x
6539  1001 b61f          	ld	a,_temperOfWater
6540  1003 2a01          	jrpl	L242
6541  1005 53            	cplw	x
6542  1006               L242:
6543  1006 97            	ld	xl,a
6544  1007 cd0000        	call	_int2indII_slkuf
6546  100a 5b05          	addw	sp,#5
6548  100c ac7a167a      	jpf	L3442
6549  1010               L3403:
6550                     ; 865 	else if(sub_ind==10)
6552  1010 b662          	ld	a,_a_ind+1
6553  1012 a10a          	cp	a,#10
6554  1014 2651          	jrne	L7403
6555                     ; 867 		int2indI_slkuf(waterTemperAlarm,1, 1, 0, 0, 0);
6557  1016 4b00          	push	#0
6558  1018 4b00          	push	#0
6559  101a 4b00          	push	#0
6560  101c 4b01          	push	#1
6561  101e 4b01          	push	#1
6562  1020 b627          	ld	a,_waterTemperAlarm
6563  1022 5f            	clrw	x
6564  1023 97            	ld	xl,a
6565  1024 cd0000        	call	_int2indI_slkuf
6567  1027 5b05          	addw	sp,#5
6568                     ; 868 		int2indI_slkuf(waterTemperAlarmOld,3, 1, 0, 0, 0);
6570  1029 4b00          	push	#0
6571  102b 4b00          	push	#0
6572  102d 4b00          	push	#0
6573  102f 4b01          	push	#1
6574  1031 4b03          	push	#3
6575  1033 b628          	ld	a,_waterTemperAlarmOld
6576  1035 5f            	clrw	x
6577  1036 97            	ld	xl,a
6578  1037 cd0000        	call	_int2indI_slkuf
6580  103a 5b05          	addw	sp,#5
6581                     ; 869 		int2indII_slkuf(mainCnt,0, 2, 0, 0, 0);
6583  103c 4b00          	push	#0
6584  103e 4b00          	push	#0
6585  1040 4b00          	push	#0
6586  1042 4b02          	push	#2
6587  1044 4b00          	push	#0
6588  1046 be82          	ldw	x,_mainCnt
6589  1048 cd0000        	call	_int2indII_slkuf
6591  104b 5b05          	addw	sp,#5
6592                     ; 870 		int2indII_slkuf(temperOfWater,2, 2, 0, 0, 0);
6594  104d 4b00          	push	#0
6595  104f 4b00          	push	#0
6596  1051 4b00          	push	#0
6597  1053 4b02          	push	#2
6598  1055 4b02          	push	#2
6599  1057 5f            	clrw	x
6600  1058 b61f          	ld	a,_temperOfWater
6601  105a 2a01          	jrpl	L442
6602  105c 53            	cplw	x
6603  105d               L442:
6604  105d 97            	ld	xl,a
6605  105e cd0000        	call	_int2indII_slkuf
6607  1061 5b05          	addw	sp,#5
6609  1063 ac7a167a      	jpf	L3442
6610  1067               L7403:
6611                     ; 872 	else if(sub_ind==11)
6613  1067 b662          	ld	a,_a_ind+1
6614  1069 a10b          	cp	a,#11
6615  106b 262c          	jrne	L3503
6616                     ; 874 		int2indI_slkuf(optr_stat,1, 3, 0, 0, 0);
6618  106d 4b00          	push	#0
6619  106f 4b00          	push	#0
6620  1071 4b00          	push	#0
6621  1073 4b03          	push	#3
6622  1075 4b01          	push	#1
6623  1077 c60032        	ld	a,_optr_stat
6624  107a 5f            	clrw	x
6625  107b 97            	ld	xl,a
6626  107c cd0000        	call	_int2indI_slkuf
6628  107f 5b05          	addw	sp,#5
6629                     ; 875 		int2indII_slkuf(optr_kontr_cnt,0, 3, 0, 0, 0);
6631  1081 4b00          	push	#0
6632  1083 4b00          	push	#0
6633  1085 4b00          	push	#0
6634  1087 4b03          	push	#3
6635  1089 4b00          	push	#0
6636  108b c60031        	ld	a,_optr_kontr_cnt
6637  108e 5f            	clrw	x
6638  108f 97            	ld	xl,a
6639  1090 cd0000        	call	_int2indII_slkuf
6641  1093 5b05          	addw	sp,#5
6643  1095 ac7a167a      	jpf	L3442
6644  1099               L3503:
6645                     ; 877 	else if(sub_ind==12)
6647  1099 b662          	ld	a,_a_ind+1
6648  109b a10c          	cp	a,#12
6649  109d 2703          	jreq	L214
6650  109f cc167a        	jp	L3442
6651  10a2               L214:
6652                     ; 879 		int2indI_slkuf(cntAirSensorLineErrorLo,1, 1, 0, 0, 0);
6654  10a2 4b00          	push	#0
6655  10a4 4b00          	push	#0
6656  10a6 4b00          	push	#0
6657  10a8 4b01          	push	#1
6658  10aa 4b01          	push	#1
6659  10ac b606          	ld	a,_cntAirSensorLineErrorLo
6660  10ae 5f            	clrw	x
6661  10af 97            	ld	xl,a
6662  10b0 cd0000        	call	_int2indI_slkuf
6664  10b3 5b05          	addw	sp,#5
6665                     ; 880 		int2indI_slkuf(cntAirSensorLineErrorHi,3, 1, 0, 0, 0);
6667  10b5 4b00          	push	#0
6668  10b7 4b00          	push	#0
6669  10b9 4b00          	push	#0
6670  10bb 4b01          	push	#1
6671  10bd 4b03          	push	#3
6672  10bf b605          	ld	a,_cntAirSensorLineErrorHi
6673  10c1 5f            	clrw	x
6674  10c2 97            	ld	xl,a
6675  10c3 cd0000        	call	_int2indI_slkuf
6677  10c6 5b05          	addw	sp,#5
6678                     ; 881 		int2indII_slkuf(airSensorErrorStat,0, 2, 0, 0, 0);
6680  10c8 4b00          	push	#0
6681  10ca 4b00          	push	#0
6682  10cc 4b00          	push	#0
6683  10ce 4b02          	push	#2
6684  10d0 4b00          	push	#0
6685  10d2 b623          	ld	a,_airSensorErrorStat
6686  10d4 5f            	clrw	x
6687  10d5 97            	ld	xl,a
6688  10d6 cd0000        	call	_int2indII_slkuf
6690  10d9 5b05          	addw	sp,#5
6691                     ; 882 		int2indII_slkuf(airSensorErrorStatOld,2, 2, 0, 0, 0);
6693  10db 4b00          	push	#0
6694  10dd 4b00          	push	#0
6695  10df 4b00          	push	#0
6696  10e1 4b02          	push	#2
6697  10e3 4b02          	push	#2
6698  10e5 b624          	ld	a,_airSensorErrorStatOld
6699  10e7 5f            	clrw	x
6700  10e8 97            	ld	xl,a
6701  10e9 cd0000        	call	_int2indII_slkuf
6703  10ec 5b05          	addw	sp,#5
6704  10ee ac7a167a      	jpf	L3442
6705  10f2               L3172:
6706                     ; 887 else if(ind==iModem_deb)
6708  10f2 b661          	ld	a,_a_ind
6709  10f4 a10a          	cp	a,#10
6710  10f6 2703          	jreq	L414
6711  10f8 cc125c        	jp	L3603
6712  10fb               L414:
6713                     ; 889 	led_mask_off(0x00);
6715  10fb 4f            	clr	a
6716  10fc cd0000        	call	_led_mask_off
6718                     ; 890 	led_on(1);
6720  10ff a601          	ld	a,#1
6721  1101 cd0000        	call	_led_on
6723                     ; 891 	led_on(2);
6725  1104 a602          	ld	a,#2
6726  1106 cd0000        	call	_led_on
6728                     ; 893 	if(sub_ind==0)
6730  1109 3d62          	tnz	_a_ind+1
6731  110b 2637          	jrne	L5603
6732                     ; 901 		if(AUTH_NUMBER_FLAGS&0x01)led_on(8);
6734  110d c6407f        	ld	a,_AUTH_NUMBER_FLAGS
6735  1110 a501          	bcp	a,#1
6736  1112 2705          	jreq	L7603
6739  1114 a608          	ld	a,#8
6740  1116 cd0000        	call	_led_on
6742  1119               L7603:
6743                     ; 902 		if(AUTH_NUMBER_FLAGS&0x02)led_on(7);
6745  1119 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
6746  111c a502          	bcp	a,#2
6747  111e 2705          	jreq	L1703
6750  1120 a607          	ld	a,#7
6751  1122 cd0000        	call	_led_on
6753  1125               L1703:
6754                     ; 903 		if(AUTH_NUMBER_FLAGS&0x04)led_on(6);
6756  1125 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
6757  1128 a504          	bcp	a,#4
6758  112a 2705          	jreq	L3703
6761  112c a606          	ld	a,#6
6762  112e cd0000        	call	_led_on
6764  1131               L3703:
6765                     ; 904 		if(AUTH_NUMBER_FLAGS&0x08)led_on(5);
6767  1131 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
6768  1134 a508          	bcp	a,#8
6769  1136 2603          	jrne	L614
6770  1138 cc167a        	jp	L3442
6771  113b               L614:
6774  113b a605          	ld	a,#5
6775  113d cd0000        	call	_led_on
6777  1140 ac7a167a      	jpf	L3442
6778  1144               L5603:
6779                     ; 907 	else if(sub_ind==1)
6781  1144 b662          	ld	a,_a_ind+1
6782  1146 a101          	cp	a,#1
6783  1148 2647          	jrne	L1013
6784                     ; 909 		int2indI_slkuf(MAX_POWER_EE,1, 2, 0, 0, 0);
6786  114a 4b00          	push	#0
6787  114c 4b00          	push	#0
6788  114e 4b00          	push	#0
6789  1150 4b02          	push	#2
6790  1152 4b01          	push	#1
6791  1154 5f            	clrw	x
6792  1155 c64047        	ld	a,_MAX_POWER_EE
6793  1158 2a01          	jrpl	L642
6794  115a 53            	cplw	x
6795  115b               L642:
6796  115b 97            	ld	xl,a
6797  115c cd0000        	call	_int2indI_slkuf
6799  115f 5b05          	addw	sp,#5
6800                     ; 910 		int2indII_slkuf(powerNeccDelta,2, 2, 0, 0, 0);
6802  1161 4b00          	push	#0
6803  1163 4b00          	push	#0
6804  1165 4b00          	push	#0
6805  1167 4b02          	push	#2
6806  1169 4b02          	push	#2
6807  116b 5f            	clrw	x
6808  116c b60b          	ld	a,_powerNeccDelta
6809  116e 2a01          	jrpl	L052
6810  1170 53            	cplw	x
6811  1171               L052:
6812  1171 97            	ld	xl,a
6813  1172 cd0000        	call	_int2indII_slkuf
6815  1175 5b05          	addw	sp,#5
6816                     ; 911 		int2indII_slkuf(powerNecc,0, 2, 0, 0, 0);
6818  1177 4b00          	push	#0
6819  1179 4b00          	push	#0
6820  117b 4b00          	push	#0
6821  117d 4b02          	push	#2
6822  117f 4b00          	push	#0
6823  1181 5f            	clrw	x
6824  1182 b625          	ld	a,_powerNecc
6825  1184 2a01          	jrpl	L252
6826  1186 53            	cplw	x
6827  1187               L252:
6828  1187 97            	ld	xl,a
6829  1188 cd0000        	call	_int2indII_slkuf
6831  118b 5b05          	addw	sp,#5
6833  118d ac7a167a      	jpf	L3442
6834  1191               L1013:
6835                     ; 913 	else if(sub_ind==2)
6837  1191 b662          	ld	a,_a_ind+1
6838  1193 a102          	cp	a,#2
6839  1195 267c          	jrne	L5013
6840                     ; 915 		int2indI_slkuf(aktualTemper,2, 2, 0, 0, 0);	
6842  1197 4b00          	push	#0
6843  1199 4b00          	push	#0
6844  119b 4b00          	push	#0
6845  119d 4b02          	push	#2
6846  119f 4b02          	push	#2
6847  11a1 5f            	clrw	x
6848  11a2 b61d          	ld	a,_aktualTemper
6849  11a4 2a01          	jrpl	L452
6850  11a6 53            	cplw	x
6851  11a7               L452:
6852  11a7 97            	ld	xl,a
6853  11a8 cd0000        	call	_int2indI_slkuf
6855  11ab 5b05          	addw	sp,#5
6856                     ; 916 		int2indI_slkuf(powerNecc,1, 1, 0, 0, 0);
6858  11ad 4b00          	push	#0
6859  11af 4b00          	push	#0
6860  11b1 4b00          	push	#0
6861  11b3 4b01          	push	#1
6862  11b5 4b01          	push	#1
6863  11b7 5f            	clrw	x
6864  11b8 b625          	ld	a,_powerNecc
6865  11ba 2a01          	jrpl	L652
6866  11bc 53            	cplw	x
6867  11bd               L652:
6868  11bd 97            	ld	xl,a
6869  11be cd0000        	call	_int2indI_slkuf
6871  11c1 5b05          	addw	sp,#5
6872                     ; 917 		int2indII_slkuf(out_stat[0],3, 1, 0, 0, 0);
6874  11c3 4b00          	push	#0
6875  11c5 4b00          	push	#0
6876  11c7 4b00          	push	#0
6877  11c9 4b01          	push	#1
6878  11cb 4b03          	push	#3
6879  11cd b620          	ld	a,_out_stat
6880  11cf 5f            	clrw	x
6881  11d0 97            	ld	xl,a
6882  11d1 cd0000        	call	_int2indII_slkuf
6884  11d4 5b05          	addw	sp,#5
6885                     ; 918 		int2indII_slkuf(out_stat[1],2, 1, 0, 0, 0);
6887  11d6 4b00          	push	#0
6888  11d8 4b00          	push	#0
6889  11da 4b00          	push	#0
6890  11dc 4b01          	push	#1
6891  11de 4b02          	push	#2
6892  11e0 b621          	ld	a,_out_stat+1
6893  11e2 5f            	clrw	x
6894  11e3 97            	ld	xl,a
6895  11e4 cd0000        	call	_int2indII_slkuf
6897  11e7 5b05          	addw	sp,#5
6898                     ; 919 		int2indII_slkuf(out_stat[2],1, 1, 0, 0, 0);
6900  11e9 4b00          	push	#0
6901  11eb 4b00          	push	#0
6902  11ed 4b00          	push	#0
6903  11ef 4b01          	push	#1
6904  11f1 4b01          	push	#1
6905  11f3 b622          	ld	a,_out_stat+2
6906  11f5 5f            	clrw	x
6907  11f6 97            	ld	xl,a
6908  11f7 cd0000        	call	_int2indII_slkuf
6910  11fa 5b05          	addw	sp,#5
6911                     ; 920 		int2indII_slkuf(fiksRandom,0, 1, 0, 0, 0);
6913  11fc 4b00          	push	#0
6914  11fe 4b00          	push	#0
6915  1200 4b00          	push	#0
6916  1202 4b01          	push	#1
6917  1204 4b00          	push	#0
6918  1206 b684          	ld	a,_fiksRandom
6919  1208 5f            	clrw	x
6920  1209 97            	ld	xl,a
6921  120a cd0000        	call	_int2indII_slkuf
6923  120d 5b05          	addw	sp,#5
6925  120f ac7a167a      	jpf	L3442
6926  1213               L5013:
6927                     ; 922 	else if(sub_ind==3)
6929  1213 b662          	ld	a,_a_ind+1
6930  1215 a103          	cp	a,#3
6931  1217 2703          	jreq	L024
6932  1219 cc167a        	jp	L3442
6933  121c               L024:
6934                     ; 924 		int2indI_slkuf(temperRegToSheduler,1, 2, 0, 0, 0);	
6936  121c 4b00          	push	#0
6937  121e 4b00          	push	#0
6938  1220 4b00          	push	#0
6939  1222 4b02          	push	#2
6940  1224 4b01          	push	#1
6941  1226 5f            	clrw	x
6942  1227 b604          	ld	a,_temperRegToSheduler
6943  1229 2a01          	jrpl	L062
6944  122b 53            	cplw	x
6945  122c               L062:
6946  122c 97            	ld	xl,a
6947  122d cd0000        	call	_int2indI_slkuf
6949  1230 5b05          	addw	sp,#5
6950                     ; 926 		int2indII_slkuf(time_day_of_week,3, 1, 0, 0, 0);
6952  1232 4b00          	push	#0
6953  1234 4b00          	push	#0
6954  1236 4b00          	push	#0
6955  1238 4b01          	push	#1
6956  123a 4b03          	push	#3
6957  123c b60e          	ld	a,_time_day_of_week
6958  123e 5f            	clrw	x
6959  123f 97            	ld	xl,a
6960  1240 cd0000        	call	_int2indII_slkuf
6962  1243 5b05          	addw	sp,#5
6963                     ; 929 		int2indII_slkuf(day_sheduler_time,0, 3, 0, 0, 0);
6965  1245 4b00          	push	#0
6966  1247 4b00          	push	#0
6967  1249 4b00          	push	#0
6968  124b 4b03          	push	#3
6969  124d 4b00          	push	#0
6970  124f b602          	ld	a,_day_sheduler_time
6971  1251 5f            	clrw	x
6972  1252 97            	ld	xl,a
6973  1253 cd0000        	call	_int2indII_slkuf
6975  1256 5b05          	addw	sp,#5
6976  1258 ac7a167a      	jpf	L3442
6977  125c               L3603:
6978                     ; 933 else if(ind==iTemperSet)
6980  125c b661          	ld	a,_a_ind
6981  125e a108          	cp	a,#8
6982  1260 2703          	jreq	L224
6983  1262 cc1390        	jp	L5113
6984  1265               L224:
6985                     ; 942 	led_mask_off(0x00);
6987  1265 4f            	clr	a
6988  1266 cd0000        	call	_led_mask_off
6990                     ; 943 	if(outMode==omON)
6992  1269 c6401d        	ld	a,_outMode
6993  126c a101          	cp	a,#1
6994  126e 262d          	jrne	L7113
6995                     ; 945 		if(MODE_EE==1)led_on(1);
6997  1270 c64046        	ld	a,_MODE_EE
6998  1273 a101          	cp	a,#1
6999  1275 2607          	jrne	L1213
7002  1277 a601          	ld	a,#1
7003  1279 cd0000        	call	_led_on
7006  127c 201f          	jra	L7113
7007  127e               L1213:
7008                     ; 946 		else if(MODE_EE==2) led_on(2);
7010  127e c64046        	ld	a,_MODE_EE
7011  1281 a102          	cp	a,#2
7012  1283 2607          	jrne	L5213
7015  1285 a602          	ld	a,#2
7016  1287 cd0000        	call	_led_on
7019  128a 2011          	jra	L7113
7020  128c               L5213:
7021                     ; 947 		else if(MODE_EE==3)
7023  128c c64046        	ld	a,_MODE_EE
7024  128f a103          	cp	a,#3
7025  1291 260a          	jrne	L7113
7026                     ; 949 			led_on(2);
7028  1293 a602          	ld	a,#2
7029  1295 cd0000        	call	_led_on
7031                     ; 950 			led_on(3);
7033  1298 a603          	ld	a,#3
7034  129a cd0000        	call	_led_on
7036  129d               L7113:
7037                     ; 953 	if((outMode==omON)&&(out_stat[0]==osON))led_on(4);
7039  129d c6401d        	ld	a,_outMode
7040  12a0 a101          	cp	a,#1
7041  12a2 260b          	jrne	L3313
7043  12a4 b620          	ld	a,_out_stat
7044  12a6 a101          	cp	a,#1
7045  12a8 2605          	jrne	L3313
7048  12aa a604          	ld	a,#4
7049  12ac cd0000        	call	_led_on
7051  12af               L3313:
7052                     ; 954 	if((outMode==omON)&&(out_stat[1]==osON))led_on(5);
7054  12af c6401d        	ld	a,_outMode
7055  12b2 a101          	cp	a,#1
7056  12b4 260b          	jrne	L5313
7058  12b6 b621          	ld	a,_out_stat+1
7059  12b8 a101          	cp	a,#1
7060  12ba 2605          	jrne	L5313
7063  12bc a605          	ld	a,#5
7064  12be cd0000        	call	_led_on
7066  12c1               L5313:
7067                     ; 955 	if((outMode==omON)&&(out_stat[2]==osON))led_on(6);
7069  12c1 c6401d        	ld	a,_outMode
7070  12c4 a101          	cp	a,#1
7071  12c6 260b          	jrne	L7313
7073  12c8 b622          	ld	a,_out_stat+2
7074  12ca a101          	cp	a,#1
7075  12cc 2605          	jrne	L7313
7078  12ce a606          	ld	a,#6
7079  12d0 cd0000        	call	_led_on
7081  12d3               L7313:
7082                     ; 957 	if(bERR)led_on(7);
7084  12d3 3d08          	tnz	_bERR
7085  12d5 2707          	jreq	L1413
7088  12d7 a607          	ld	a,#7
7089  12d9 cd0000        	call	_led_on
7092  12dc 2009          	jra	L3413
7093  12de               L1413:
7094                     ; 958 	else if(bWARN)led_flash(7);
7096  12de 3d07          	tnz	_bWARN
7097  12e0 2705          	jreq	L3413
7100  12e2 a607          	ld	a,#7
7101  12e4 cd0000        	call	_led_flash
7103  12e7               L3413:
7104                     ; 960 	if(aktualTemper>=0)
7106  12e7 9c            	rvf
7107  12e8 b61d          	ld	a,_aktualTemper
7108  12ea a100          	cp	a,#0
7109  12ec 2f1c          	jrslt	L7413
7110                     ; 962 		int2indI_slkuf(aktualTemper,2, 2, 0, 1, 0);
7112  12ee 4b00          	push	#0
7113  12f0 4b01          	push	#1
7114  12f2 4b00          	push	#0
7115  12f4 4b02          	push	#2
7116  12f6 4b02          	push	#2
7117  12f8 5f            	clrw	x
7118  12f9 b61d          	ld	a,_aktualTemper
7119  12fb 2a01          	jrpl	L262
7120  12fd 53            	cplw	x
7121  12fe               L262:
7122  12fe 97            	ld	xl,a
7123  12ff cd0000        	call	_int2indI_slkuf
7125  1302 5b05          	addw	sp,#5
7126                     ; 963 		ind_outB[1]=0b10011100;
7128  1304 359c0076      	mov	_ind_outB+1,#156
7130  1308 204a          	jra	L1513
7131  130a               L7413:
7132                     ; 967 		if(-aktualTemper<10)
7134  130a 9c            	rvf
7135  130b 5f            	clrw	x
7136  130c b61d          	ld	a,_aktualTemper
7137  130e 2a01          	jrpl	L462
7138  1310 53            	cplw	x
7139  1311               L462:
7140  1311 97            	ld	xl,a
7141  1312 50            	negw	x
7142  1313 a3000a        	cpw	x,#10
7143  1316 2e21          	jrsge	L3513
7144                     ; 969 			ind_outB[3]=0b10111111;
7146  1318 35bf0078      	mov	_ind_outB+3,#191
7147                     ; 970 			int2indI_slkuf(-aktualTemper,2, 1, 0, 1, 0);
7149  131c 4b00          	push	#0
7150  131e 4b01          	push	#1
7151  1320 4b00          	push	#0
7152  1322 4b01          	push	#1
7153  1324 4b02          	push	#2
7154  1326 5f            	clrw	x
7155  1327 b61d          	ld	a,_aktualTemper
7156  1329 2a01          	jrpl	L662
7157  132b 53            	cplw	x
7158  132c               L662:
7159  132c 97            	ld	xl,a
7160  132d 50            	negw	x
7161  132e cd0000        	call	_int2indI_slkuf
7163  1331 5b05          	addw	sp,#5
7164                     ; 971 			ind_outB[1]=0b10011100;
7166  1333 359c0076      	mov	_ind_outB+1,#156
7168  1337 201b          	jra	L1513
7169  1339               L3513:
7170                     ; 975 			ind_outB[3]=0b10111111;
7172  1339 35bf0078      	mov	_ind_outB+3,#191
7173                     ; 976 			int2indI_slkuf(-aktualTemper,1, 2, 0, 1, 0);
7175  133d 4b00          	push	#0
7176  133f 4b01          	push	#1
7177  1341 4b00          	push	#0
7178  1343 4b02          	push	#2
7179  1345 4b01          	push	#1
7180  1347 5f            	clrw	x
7181  1348 b61d          	ld	a,_aktualTemper
7182  134a 2a01          	jrpl	L072
7183  134c 53            	cplw	x
7184  134d               L072:
7185  134d 97            	ld	xl,a
7186  134e 50            	negw	x
7187  134f cd0000        	call	_int2indI_slkuf
7189  1352 5b05          	addw	sp,#5
7190  1354               L1513:
7191                     ; 980 	int2indII_slkuf(targetTemper,1, 2, 0, 1, MODE_EE==3?0:1);
7193  1354 c64046        	ld	a,_MODE_EE
7194  1357 a103          	cp	a,#3
7195  1359 2603          	jrne	L272
7196  135b 4f            	clr	a
7197  135c 2002          	jra	L472
7198  135e               L272:
7199  135e a601          	ld	a,#1
7200  1360               L472:
7201  1360 88            	push	a
7202  1361 4b01          	push	#1
7203  1363 4b00          	push	#0
7204  1365 4b02          	push	#2
7205  1367 4b01          	push	#1
7206  1369 5f            	clrw	x
7207  136a b61c          	ld	a,_targetTemper
7208  136c 2a01          	jrpl	L672
7209  136e 53            	cplw	x
7210  136f               L672:
7211  136f 97            	ld	xl,a
7212  1370 cd0000        	call	_int2indII_slkuf
7214  1373 5b05          	addw	sp,#5
7215                     ; 981 	if((bFL2)&&(MODE_EE!=3))	ind_outC[0]=0b11111111;
7217  1375 3d27          	tnz	_bFL2
7218  1377 270f          	jreq	L7513
7220  1379 c64046        	ld	a,_MODE_EE
7221  137c a103          	cp	a,#3
7222  137e 2708          	jreq	L7513
7225  1380 35ff000a      	mov	_ind_outC,#255
7227  1384 ac7a167a      	jpf	L3442
7228  1388               L7513:
7229                     ; 982 	else 						ind_outC[0]=0b00111000;
7231  1388 3538000a      	mov	_ind_outC,#56
7232  138c ac7a167a      	jpf	L3442
7233  1390               L5113:
7234                     ; 986 else if(ind==iDefSet)
7236  1390 b661          	ld	a,_a_ind
7237  1392 a109          	cp	a,#9
7238  1394 262c          	jrne	L5613
7239                     ; 988 	led_mask_off(0x00);
7241  1396 4f            	clr	a
7242  1397 cd0000        	call	_led_mask_off
7244                     ; 990 	int2indI_slkuf(123,1, 3, 0, 0, 0);
7246  139a 4b00          	push	#0
7247  139c 4b00          	push	#0
7248  139e 4b00          	push	#0
7249  13a0 4b03          	push	#3
7250  13a2 4b01          	push	#1
7251  13a4 ae007b        	ldw	x,#123
7252  13a7 cd0000        	call	_int2indI_slkuf
7254  13aa 5b05          	addw	sp,#5
7255                     ; 991 	int2indII_slkuf(4567,0, 4, 0, 0, 0);
7257  13ac 4b00          	push	#0
7258  13ae 4b00          	push	#0
7259  13b0 4b00          	push	#0
7260  13b2 4b04          	push	#4
7261  13b4 4b00          	push	#0
7262  13b6 ae11d7        	ldw	x,#4567
7263  13b9 cd0000        	call	_int2indII_slkuf
7265  13bc 5b05          	addw	sp,#5
7267  13be ac7a167a      	jpf	L3442
7268  13c2               L5613:
7269                     ; 993 else if(ind==iMn_number)
7271  13c2 b661          	ld	a,_a_ind
7272  13c4 a10b          	cp	a,#11
7273  13c6 2703cc145f    	jrne	L1713
7274                     ; 995 	led_mask_off(0x00);
7276  13cb 4f            	clr	a
7277  13cc cd0000        	call	_led_mask_off
7279                     ; 997 	int2indI_slkuf(rand_dig[0], 3, 1, 0, 0, 0);
7281  13cf 4b00          	push	#0
7282  13d1 4b00          	push	#0
7283  13d3 4b00          	push	#0
7284  13d5 4b01          	push	#1
7285  13d7 4b03          	push	#3
7286  13d9 c60029        	ld	a,_rand_dig
7287  13dc 5f            	clrw	x
7288  13dd 97            	ld	xl,a
7289  13de cd0000        	call	_int2indI_slkuf
7291  13e1 5b05          	addw	sp,#5
7292                     ; 998 	int2indI_slkuf(rand_dig[1], 2, 1, 0, 0, 0);
7294  13e3 4b00          	push	#0
7295  13e5 4b00          	push	#0
7296  13e7 4b00          	push	#0
7297  13e9 4b01          	push	#1
7298  13eb 4b02          	push	#2
7299  13ed c6002a        	ld	a,_rand_dig+1
7300  13f0 5f            	clrw	x
7301  13f1 97            	ld	xl,a
7302  13f2 cd0000        	call	_int2indI_slkuf
7304  13f5 5b05          	addw	sp,#5
7305                     ; 999 	int2indI_slkuf(rand_dig[2], 1, 1, 0, 0, 0);
7307  13f7 4b00          	push	#0
7308  13f9 4b00          	push	#0
7309  13fb 4b00          	push	#0
7310  13fd 4b01          	push	#1
7311  13ff 4b01          	push	#1
7312  1401 c6002b        	ld	a,_rand_dig+2
7313  1404 5f            	clrw	x
7314  1405 97            	ld	xl,a
7315  1406 cd0000        	call	_int2indI_slkuf
7317  1409 5b05          	addw	sp,#5
7318                     ; 1000 	int2indII_slkuf(rand_dig[3], 3, 1, 0, 0, 0);
7320  140b 4b00          	push	#0
7321  140d 4b00          	push	#0
7322  140f 4b00          	push	#0
7323  1411 4b01          	push	#1
7324  1413 4b03          	push	#3
7325  1415 c6002c        	ld	a,_rand_dig+3
7326  1418 5f            	clrw	x
7327  1419 97            	ld	xl,a
7328  141a cd0000        	call	_int2indII_slkuf
7330  141d 5b05          	addw	sp,#5
7331                     ; 1001 	int2indII_slkuf(rand_dig[4], 2, 1, 0, 0, 0);
7333  141f 4b00          	push	#0
7334  1421 4b00          	push	#0
7335  1423 4b00          	push	#0
7336  1425 4b01          	push	#1
7337  1427 4b02          	push	#2
7338  1429 c6002d        	ld	a,_rand_dig+4
7339  142c 5f            	clrw	x
7340  142d 97            	ld	xl,a
7341  142e cd0000        	call	_int2indII_slkuf
7343  1431 5b05          	addw	sp,#5
7344                     ; 1002 	int2indII_slkuf(rand_dig[5], 1, 1, 0, 0, 0);
7346  1433 4b00          	push	#0
7347  1435 4b00          	push	#0
7348  1437 4b00          	push	#0
7349  1439 4b01          	push	#1
7350  143b 4b01          	push	#1
7351  143d c6002e        	ld	a,_rand_dig+5
7352  1440 5f            	clrw	x
7353  1441 97            	ld	xl,a
7354  1442 cd0000        	call	_int2indII_slkuf
7356  1445 5b05          	addw	sp,#5
7357                     ; 1003 	int2indII_slkuf(rand_dig[6], 0, 1, 0, 0, 0);
7359  1447 4b00          	push	#0
7360  1449 4b00          	push	#0
7361  144b 4b00          	push	#0
7362  144d 4b01          	push	#1
7363  144f 4b00          	push	#0
7364  1451 c6002f        	ld	a,_rand_dig+6
7365  1454 5f            	clrw	x
7366  1455 97            	ld	xl,a
7367  1456 cd0000        	call	_int2indII_slkuf
7369  1459 5b05          	addw	sp,#5
7371  145b ac7a167a      	jpf	L3442
7372  145f               L1713:
7373                     ; 1006 else if(ind==iAfterReset)
7375  145f b661          	ld	a,_a_ind
7376  1461 a10c          	cp	a,#12
7377  1463 2619          	jrne	L5713
7378                     ; 1008 	led_mask_off(0x00);
7380  1465 4f            	clr	a
7381  1466 cd0000        	call	_led_mask_off
7383                     ; 1010 	int2indI_slkuf(mainCnt, 1, 3, 0, 0, 0);
7385  1469 4b00          	push	#0
7386  146b 4b00          	push	#0
7387  146d 4b00          	push	#0
7388  146f 4b03          	push	#3
7389  1471 4b01          	push	#1
7390  1473 be82          	ldw	x,_mainCnt
7391  1475 cd0000        	call	_int2indI_slkuf
7393  1478 5b05          	addw	sp,#5
7395  147a ac7a167a      	jpf	L3442
7396  147e               L5713:
7397                     ; 1013 else if(ind==iWater)
7399  147e b661          	ld	a,_a_ind
7400  1480 a10d          	cp	a,#13
7401  1482 261e          	jrne	L1023
7402                     ; 1015 	led_mask_off(0x00);
7404  1484 4f            	clr	a
7405  1485 cd0000        	call	_led_mask_off
7407                     ; 1017 	int2indI_slkuf(temperOfWater,1, 3, 0, 0, 0);
7409  1488 4b00          	push	#0
7410  148a 4b00          	push	#0
7411  148c 4b00          	push	#0
7412  148e 4b03          	push	#3
7413  1490 4b01          	push	#1
7414  1492 5f            	clrw	x
7415  1493 b61f          	ld	a,_temperOfWater
7416  1495 2a01          	jrpl	L003
7417  1497 53            	cplw	x
7418  1498               L003:
7419  1498 97            	ld	xl,a
7420  1499 cd0000        	call	_int2indI_slkuf
7422  149c 5b05          	addw	sp,#5
7424  149e ac7a167a      	jpf	L3442
7425  14a2               L1023:
7426                     ; 1021 else if(ind==iAir)
7428  14a2 b661          	ld	a,_a_ind
7429  14a4 a10e          	cp	a,#14
7430  14a6 261e          	jrne	L5023
7431                     ; 1023 	led_mask_off(0x00);
7433  14a8 4f            	clr	a
7434  14a9 cd0000        	call	_led_mask_off
7436                     ; 1025 	int2indI_slkuf(temperOfAir,1, 3, 0, 0, 0);
7438  14ac 4b00          	push	#0
7439  14ae 4b00          	push	#0
7440  14b0 4b00          	push	#0
7441  14b2 4b03          	push	#3
7442  14b4 4b01          	push	#1
7443  14b6 5f            	clrw	x
7444  14b7 b61e          	ld	a,_temperOfAir
7445  14b9 2a01          	jrpl	L203
7446  14bb 53            	cplw	x
7447  14bc               L203:
7448  14bc 97            	ld	xl,a
7449  14bd cd0000        	call	_int2indI_slkuf
7451  14c0 5b05          	addw	sp,#5
7453  14c2 ac7a167a      	jpf	L3442
7454  14c6               L5023:
7455                     ; 1029 else if(ind==iInterf)
7457  14c6 b661          	ld	a,_a_ind
7458  14c8 a10f          	cp	a,#15
7459  14ca 2703          	jreq	L424
7460  14cc cc167a        	jp	L3442
7461  14cf               L424:
7462                     ; 1035 	if(++ind_check_cnt1>=5)
7464  14cf 9c            	rvf
7465  14d0 ce0000        	ldw	x,_ind_check_cnt1
7466  14d3 1c0001        	addw	x,#1
7467  14d6 cf0000        	ldw	_ind_check_cnt1,x
7468  14d9 a30005        	cpw	x,#5
7469  14dc 2f17          	jrslt	L3123
7470                     ; 1037 		ind_check_cnt1=0;
7472  14de 5f            	clrw	x
7473  14df cf0000        	ldw	_ind_check_cnt1,x
7474                     ; 1038 		if(++ind_check_cnt>=64)ind_check_cnt=0;
7476  14e2 9c            	rvf
7477  14e3 ce0002        	ldw	x,_ind_check_cnt
7478  14e6 1c0001        	addw	x,#1
7479  14e9 cf0002        	ldw	_ind_check_cnt,x
7480  14ec a30040        	cpw	x,#64
7481  14ef 2f04          	jrslt	L3123
7484  14f1 5f            	clrw	x
7485  14f2 cf0002        	ldw	_ind_check_cnt,x
7486  14f5               L3123:
7487                     ; 1040 	ind_outB[0]=0xff;
7489  14f5 35ff0075      	mov	_ind_outB,#255
7490                     ; 1041 	ind_outB[1]=0xff;
7492  14f9 35ff0076      	mov	_ind_outB+1,#255
7493                     ; 1042 	ind_outB[2]=0xff;
7495  14fd 35ff0077      	mov	_ind_outB+2,#255
7496                     ; 1043 	ind_outB[3]=0xff;
7498  1501 35ff0078      	mov	_ind_outB+3,#255
7499                     ; 1044 	ind_outC[0]=0xff;
7501  1505 35ff000a      	mov	_ind_outC,#255
7502                     ; 1045 	ind_outC[1]=0xff;
7504  1509 35ff000b      	mov	_ind_outC+1,#255
7505                     ; 1046 	ind_outC[2]=0xff;
7507  150d 35ff000c      	mov	_ind_outC+2,#255
7508                     ; 1047 	ind_outC[3]=0xff;
7510  1511 35ff000d      	mov	_ind_outC+3,#255
7511                     ; 1048 	ind_outG[0]=0xff;
7513  1515 35ff0016      	mov	_ind_outG,#255
7514                     ; 1049 	ind_outG[1]=0xff;
7516  1519 35ff0017      	mov	_ind_outG+1,#255
7517                     ; 1050 	ind_outG[2]=0xff;
7519  151d 35ff0018      	mov	_ind_outG+2,#255
7520                     ; 1051 	ind_outG[3]=0xff;
7522  1521 35ff0019      	mov	_ind_outG+3,#255
7523                     ; 1052 	led_mask_off(0x00);
7525  1525 4f            	clr	a
7526  1526 cd0000        	call	_led_mask_off
7528                     ; 1054 	if(ind_check_cnt<=7)
7530  1529 9c            	rvf
7531  152a ce0002        	ldw	x,_ind_check_cnt
7532  152d a30008        	cpw	x,#8
7533  1530 2e1a          	jrsge	L7123
7534                     ; 1056 		ind_outB[3]&=(~(1<<ind_check_cnt));	
7536  1532 5f            	clrw	x
7537  1533 c60003        	ld	a,_ind_check_cnt+1
7538  1536 2a01          	jrpl	L403
7539  1538 53            	cplw	x
7540  1539               L403:
7541  1539 97            	ld	xl,a
7542  153a a601          	ld	a,#1
7543  153c 5d            	tnzw	x
7544  153d 2704          	jreq	L603
7545  153f               L013:
7546  153f 48            	sll	a
7547  1540 5a            	decw	x
7548  1541 26fc          	jrne	L013
7549  1543               L603:
7550  1543 43            	cpl	a
7551  1544 b478          	and	a,_ind_outB+3
7552  1546 b778          	ld	_ind_outB+3,a
7554  1548 ac7a167a      	jpf	L3442
7555  154c               L7123:
7556                     ; 1058 	else if(ind_check_cnt<=15)
7558  154c 9c            	rvf
7559  154d ce0002        	ldw	x,_ind_check_cnt
7560  1550 a30010        	cpw	x,#16
7561  1553 2e1d          	jrsge	L3223
7562                     ; 1060 		ind_outB[2]&=(~(1<<(ind_check_cnt-8)));	
7564  1555 c60003        	ld	a,_ind_check_cnt+1
7565  1558 a008          	sub	a,#8
7566  155a 5f            	clrw	x
7567  155b 4d            	tnz	a
7568  155c 2a01          	jrpl	L213
7569  155e 53            	cplw	x
7570  155f               L213:
7571  155f 97            	ld	xl,a
7572  1560 a601          	ld	a,#1
7573  1562 5d            	tnzw	x
7574  1563 2704          	jreq	L413
7575  1565               L613:
7576  1565 48            	sll	a
7577  1566 5a            	decw	x
7578  1567 26fc          	jrne	L613
7579  1569               L413:
7580  1569 43            	cpl	a
7581  156a b477          	and	a,_ind_outB+2
7582  156c b777          	ld	_ind_outB+2,a
7584  156e ac7a167a      	jpf	L3442
7585  1572               L3223:
7586                     ; 1062 	else if(ind_check_cnt<=23)
7588  1572 9c            	rvf
7589  1573 ce0002        	ldw	x,_ind_check_cnt
7590  1576 a30018        	cpw	x,#24
7591  1579 2e1d          	jrsge	L7223
7592                     ; 1064 		ind_outB[1]&=(~(1<<(ind_check_cnt-16)));	
7594  157b c60003        	ld	a,_ind_check_cnt+1
7595  157e a010          	sub	a,#16
7596  1580 5f            	clrw	x
7597  1581 4d            	tnz	a
7598  1582 2a01          	jrpl	L023
7599  1584 53            	cplw	x
7600  1585               L023:
7601  1585 97            	ld	xl,a
7602  1586 a601          	ld	a,#1
7603  1588 5d            	tnzw	x
7604  1589 2704          	jreq	L223
7605  158b               L423:
7606  158b 48            	sll	a
7607  158c 5a            	decw	x
7608  158d 26fc          	jrne	L423
7609  158f               L223:
7610  158f 43            	cpl	a
7611  1590 b476          	and	a,_ind_outB+1
7612  1592 b776          	ld	_ind_outB+1,a
7614  1594 ac7a167a      	jpf	L3442
7615  1598               L7223:
7616                     ; 1066 	else if(ind_check_cnt<=30)
7618  1598 9c            	rvf
7619  1599 ce0002        	ldw	x,_ind_check_cnt
7620  159c a3001f        	cpw	x,#31
7621  159f 2e1d          	jrsge	L3323
7622                     ; 1068 		ind_outC[3]&=(~(1<<(ind_check_cnt-23)));	
7624  15a1 c60003        	ld	a,_ind_check_cnt+1
7625  15a4 a017          	sub	a,#23
7626  15a6 5f            	clrw	x
7627  15a7 4d            	tnz	a
7628  15a8 2a01          	jrpl	L623
7629  15aa 53            	cplw	x
7630  15ab               L623:
7631  15ab 97            	ld	xl,a
7632  15ac a601          	ld	a,#1
7633  15ae 5d            	tnzw	x
7634  15af 2704          	jreq	L033
7635  15b1               L233:
7636  15b1 48            	sll	a
7637  15b2 5a            	decw	x
7638  15b3 26fc          	jrne	L233
7639  15b5               L033:
7640  15b5 43            	cpl	a
7641  15b6 b40d          	and	a,_ind_outC+3
7642  15b8 b70d          	ld	_ind_outC+3,a
7644  15ba ac7a167a      	jpf	L3442
7645  15be               L3323:
7646                     ; 1070 	else if(ind_check_cnt==31)
7648  15be ce0002        	ldw	x,_ind_check_cnt
7649  15c1 a3001f        	cpw	x,#31
7650  15c4 2608          	jrne	L7323
7651                     ; 1072 		ind_outG[3]&=0xfe;	
7653  15c6 72110019      	bres	_ind_outG+3,#0
7655  15ca ac7a167a      	jpf	L3442
7656  15ce               L7323:
7657                     ; 1074 	else if(ind_check_cnt<=38)
7659  15ce 9c            	rvf
7660  15cf ce0002        	ldw	x,_ind_check_cnt
7661  15d2 a30027        	cpw	x,#39
7662  15d5 2e1c          	jrsge	L3423
7663                     ; 1076 		ind_outC[2]&=(~(1<<(ind_check_cnt-31)));	
7665  15d7 c60003        	ld	a,_ind_check_cnt+1
7666  15da a01f          	sub	a,#31
7667  15dc 5f            	clrw	x
7668  15dd 4d            	tnz	a
7669  15de 2a01          	jrpl	L433
7670  15e0 53            	cplw	x
7671  15e1               L433:
7672  15e1 97            	ld	xl,a
7673  15e2 a601          	ld	a,#1
7674  15e4 5d            	tnzw	x
7675  15e5 2704          	jreq	L633
7676  15e7               L043:
7677  15e7 48            	sll	a
7678  15e8 5a            	decw	x
7679  15e9 26fc          	jrne	L043
7680  15eb               L633:
7681  15eb 43            	cpl	a
7682  15ec b40c          	and	a,_ind_outC+2
7683  15ee b70c          	ld	_ind_outC+2,a
7685  15f0 cc167a        	jra	L3442
7686  15f3               L3423:
7687                     ; 1078 	else if(ind_check_cnt==39)
7689  15f3 ce0002        	ldw	x,_ind_check_cnt
7690  15f6 a30027        	cpw	x,#39
7691  15f9 2606          	jrne	L7423
7692                     ; 1080 		ind_outG[2]&=0xfe;	
7694  15fb 72110018      	bres	_ind_outG+2,#0
7696  15ff 2079          	jra	L3442
7697  1601               L7423:
7698                     ; 1082 	else if(ind_check_cnt<=46)
7700  1601 9c            	rvf
7701  1602 ce0002        	ldw	x,_ind_check_cnt
7702  1605 a3002f        	cpw	x,#47
7703  1608 2e1b          	jrsge	L3523
7704                     ; 1084 		ind_outC[1]&=(~(1<<(ind_check_cnt-39)));	
7706  160a c60003        	ld	a,_ind_check_cnt+1
7707  160d a027          	sub	a,#39
7708  160f 5f            	clrw	x
7709  1610 4d            	tnz	a
7710  1611 2a01          	jrpl	L243
7711  1613 53            	cplw	x
7712  1614               L243:
7713  1614 97            	ld	xl,a
7714  1615 a601          	ld	a,#1
7715  1617 5d            	tnzw	x
7716  1618 2704          	jreq	L443
7717  161a               L643:
7718  161a 48            	sll	a
7719  161b 5a            	decw	x
7720  161c 26fc          	jrne	L643
7721  161e               L443:
7722  161e 43            	cpl	a
7723  161f b40b          	and	a,_ind_outC+1
7724  1621 b70b          	ld	_ind_outC+1,a
7726  1623 2055          	jra	L3442
7727  1625               L3523:
7728                     ; 1086 	else if(ind_check_cnt==47)
7730  1625 ce0002        	ldw	x,_ind_check_cnt
7731  1628 a3002f        	cpw	x,#47
7732  162b 2606          	jrne	L7523
7733                     ; 1088 		ind_outG[1]&=0xfe;	
7735  162d 72110017      	bres	_ind_outG+1,#0
7737  1631 2047          	jra	L3442
7738  1633               L7523:
7739                     ; 1090 	else if(ind_check_cnt<=54)
7741  1633 9c            	rvf
7742  1634 ce0002        	ldw	x,_ind_check_cnt
7743  1637 a30037        	cpw	x,#55
7744  163a 2e1b          	jrsge	L3623
7745                     ; 1092 		ind_outC[0]&=(~(1<<(ind_check_cnt-47)));	
7747  163c c60003        	ld	a,_ind_check_cnt+1
7748  163f a02f          	sub	a,#47
7749  1641 5f            	clrw	x
7750  1642 4d            	tnz	a
7751  1643 2a01          	jrpl	L053
7752  1645 53            	cplw	x
7753  1646               L053:
7754  1646 97            	ld	xl,a
7755  1647 a601          	ld	a,#1
7756  1649 5d            	tnzw	x
7757  164a 2704          	jreq	L253
7758  164c               L453:
7759  164c 48            	sll	a
7760  164d 5a            	decw	x
7761  164e 26fc          	jrne	L453
7762  1650               L253:
7763  1650 43            	cpl	a
7764  1651 b40a          	and	a,_ind_outC
7765  1653 b70a          	ld	_ind_outC,a
7767  1655 2023          	jra	L3442
7768  1657               L3623:
7769                     ; 1094 	else if(ind_check_cnt==55)
7771  1657 ce0002        	ldw	x,_ind_check_cnt
7772  165a a30037        	cpw	x,#55
7773  165d 2606          	jrne	L7623
7774                     ; 1096 		ind_outG[0]&=0xfe;	
7776  165f 72110016      	bres	_ind_outG,#0
7778  1663 2015          	jra	L3442
7779  1665               L7623:
7780                     ; 1098 	else if(ind_check_cnt<=64)
7782  1665 9c            	rvf
7783  1666 ce0002        	ldw	x,_ind_check_cnt
7784  1669 a30041        	cpw	x,#65
7785  166c 2e0c          	jrsge	L3442
7786                     ; 1100 		led_mask_off(0x00);
7788  166e 4f            	clr	a
7789  166f cd0000        	call	_led_mask_off
7791                     ; 1101 		led_on(ind_check_cnt-55);	
7793  1672 c60003        	ld	a,_ind_check_cnt+1
7794  1675 a037          	sub	a,#55
7795  1677 cd0000        	call	_led_on
7797  167a               L3442:
7798                     ; 1105 if(powerStat==psOFF)
7800  167a 3d29          	tnz	_powerStat
7801  167c 263a          	jrne	L5723
7802                     ; 1107 	led_set(1,0);
7804  167e 5f            	clrw	x
7805  167f a601          	ld	a,#1
7806  1681 95            	ld	xh,a
7807  1682 cd0000        	call	_led_set
7809                     ; 1108 	led_set(2,0);
7811  1685 5f            	clrw	x
7812  1686 a602          	ld	a,#2
7813  1688 95            	ld	xh,a
7814  1689 cd0000        	call	_led_set
7816                     ; 1109 	led_set(3,0);
7818  168c 5f            	clrw	x
7819  168d a603          	ld	a,#3
7820  168f 95            	ld	xh,a
7821  1690 cd0000        	call	_led_set
7823                     ; 1110 	led_set(4,0);
7825  1693 5f            	clrw	x
7826  1694 a604          	ld	a,#4
7827  1696 95            	ld	xh,a
7828  1697 cd0000        	call	_led_set
7830                     ; 1111 	led_set(5,0);
7832  169a 5f            	clrw	x
7833  169b a605          	ld	a,#5
7834  169d 95            	ld	xh,a
7835  169e cd0000        	call	_led_set
7837                     ; 1112 	led_set(6,0);
7839  16a1 5f            	clrw	x
7840  16a2 a606          	ld	a,#6
7841  16a4 95            	ld	xh,a
7842  16a5 cd0000        	call	_led_set
7844                     ; 1113 	led_set(7,0);
7846  16a8 5f            	clrw	x
7847  16a9 a607          	ld	a,#7
7848  16ab 95            	ld	xh,a
7849  16ac cd0000        	call	_led_set
7851                     ; 1114 	led_set(8,2);
7853  16af ae0002        	ldw	x,#2
7854  16b2 a608          	ld	a,#8
7855  16b4 95            	ld	xh,a
7856  16b5 cd0000        	call	_led_set
7858  16b8               L5723:
7859                     ; 1117 if(bFL5)
7861  16b8 3d28          	tnz	_bFL5
7862  16ba 2717          	jreq	L7723
7863                     ; 1119 	ind_outB[0]=led_ind_out1;
7865  16bc 452475        	mov	_ind_outB,_led_ind_out1
7866                     ; 1120 	ind_outB[4]=led_ind_out1;
7868  16bf 452479        	mov	_ind_outB+4,_led_ind_out1
7869                     ; 1121 	ind_outB[5]=led_ind_out1;
7871  16c2 45247a        	mov	_ind_outB+5,_led_ind_out1
7872                     ; 1122 	ind_outB[6]=led_ind_out1;
7874  16c5 45247b        	mov	_ind_outB+6,_led_ind_out1
7875                     ; 1123 	ind_outB[7]=led_ind_out1;
7877  16c8 45247c        	mov	_ind_outB+7,_led_ind_out1
7878                     ; 1124 	ind_outB[8]=led_ind_out1;
7880  16cb 45247d        	mov	_ind_outB+8,_led_ind_out1
7881                     ; 1125 	ind_outB[9]=led_ind_out1;
7883  16ce 45247e        	mov	_ind_outB+9,_led_ind_out1
7885  16d1 2015          	jra	L1033
7886  16d3               L7723:
7887                     ; 1129 	ind_outB[0]=led_ind_out2;
7889  16d3 452375        	mov	_ind_outB,_led_ind_out2
7890                     ; 1130 	ind_outB[4]=led_ind_out2;
7892  16d6 452379        	mov	_ind_outB+4,_led_ind_out2
7893                     ; 1131 	ind_outB[5]=led_ind_out2;
7895  16d9 45237a        	mov	_ind_outB+5,_led_ind_out2
7896                     ; 1132 	ind_outB[6]=led_ind_out2;
7898  16dc 45237b        	mov	_ind_outB+6,_led_ind_out2
7899                     ; 1133 	ind_outB[7]=led_ind_out2;
7901  16df 45237c        	mov	_ind_outB+7,_led_ind_out2
7902                     ; 1134 	ind_outB[8]=led_ind_out2;
7904  16e2 45237d        	mov	_ind_outB+8,_led_ind_out2
7905                     ; 1135 	ind_outB[9]=led_ind_out2;
7907  16e5 45237e        	mov	_ind_outB+9,_led_ind_out2
7908  16e8               L1033:
7909                     ; 1137 }
7912  16e8 85            	popw	x
7913  16e9 81            	ret
8074                     ; 1142 void but_an(void)
8074                     ; 1143 {
8075                     	switch	.text
8076  16ea               _but_an:
8078  16ea 5203          	subw	sp,#3
8079       00000003      OFST:	set	3
8082                     ; 1144 if(!n_but) return;
8084  16ec 3d00          	tnz	_n_but
8085  16ee 2603          	jrne	L655
8086  16f0 cc2646        	jp	L455
8087  16f3               L655:
8090                     ; 1145 n_but=0;
8092  16f3 3f00          	clr	_n_but
8093                     ; 1147 if(ind==iMn)
8095  16f5 3d61          	tnz	_a_ind
8096  16f7 2703          	jreq	L065
8097  16f9 cc1797        	jp	L3733
8098  16fc               L065:
8099                     ; 1149 	if(but==butM_)
8101  16fc b600          	ld	a,_but
8102  16fe a17d          	cp	a,#125
8103  1700 2610          	jrne	L5733
8104                     ; 1151 		tree_up(iSet,0,0,0);
8106  1702 4b00          	push	#0
8107  1704 4b00          	push	#0
8108  1706 5f            	clrw	x
8109  1707 a601          	ld	a,#1
8110  1709 95            	ld	xh,a
8111  170a cd0000        	call	_tree_up
8113  170d 85            	popw	x
8115  170e ac462646      	jpf	L3343
8116  1712               L5733:
8117                     ; 1153 	else if(but==butM)
8119  1712 b600          	ld	a,_but
8120  1714 a1fd          	cp	a,#253
8121  1716 2617          	jrne	L1043
8122                     ; 1155 		tree_up(iTemperSet,0,0,0);
8124  1718 4b00          	push	#0
8125  171a 4b00          	push	#0
8126  171c 5f            	clrw	x
8127  171d a608          	ld	a,#8
8128  171f 95            	ld	xh,a
8129  1720 cd0000        	call	_tree_up
8131  1723 85            	popw	x
8132                     ; 1156 		ret_ind(5,0);
8134  1724 5f            	clrw	x
8135  1725 a605          	ld	a,#5
8136  1727 95            	ld	xh,a
8137  1728 cd0000        	call	_ret_ind
8140  172b ac462646      	jpf	L3343
8141  172f               L1043:
8142                     ; 1158 	else if(but==butU)
8144  172f b600          	ld	a,_but
8145  1731 a1fb          	cp	a,#251
8146  1733 2617          	jrne	L5043
8147                     ; 1160 		tree_up(iDate_W,0,0,0);
8149  1735 4b00          	push	#0
8150  1737 4b00          	push	#0
8151  1739 5f            	clrw	x
8152  173a a604          	ld	a,#4
8153  173c 95            	ld	xh,a
8154  173d cd0000        	call	_tree_up
8156  1740 85            	popw	x
8157                     ; 1161 		ret_ind(4,0);
8159  1741 5f            	clrw	x
8160  1742 a604          	ld	a,#4
8161  1744 95            	ld	xh,a
8162  1745 cd0000        	call	_ret_ind
8165  1748 ac462646      	jpf	L3343
8166  174c               L5043:
8167                     ; 1163 	else if(but==butD_)
8169  174c b600          	ld	a,_but
8170  174e a177          	cp	a,#119
8171  1750 2603          	jrne	L265
8172  1752 cc2646        	jp	L3343
8173  1755               L265:
8175                     ; 1171 	else if(but==butD)
8177  1755 b600          	ld	a,_but
8178  1757 a1f7          	cp	a,#247
8179  1759 2603          	jrne	L465
8180  175b cc2646        	jp	L3343
8181  175e               L465:
8183                     ; 1180 	else if(but==butU_)
8185  175e b600          	ld	a,_but
8186  1760 a17b          	cp	a,#123
8187  1762 2603          	jrne	L665
8188  1764 cc2646        	jp	L3343
8189  1767               L665:
8191                     ; 1184 	else if(but==butON)
8193  1767 b600          	ld	a,_but
8194  1769 a1fe          	cp	a,#254
8195  176b 2703          	jreq	L075
8196  176d cc2646        	jp	L3343
8197  1770               L075:
8198                     ; 1186 		if(outMode==omON)	outMode=omOFF;
8200  1770 c6401d        	ld	a,_outMode
8201  1773 a101          	cp	a,#1
8202  1775 2609          	jrne	L7243
8205  1777 4f            	clr	a
8206  1778 ae401d        	ldw	x,#_outMode
8207  177b cd0000        	call	c_eewrc
8210  177e 2008          	jra	L1343
8211  1780               L7243:
8212                     ; 1187 		else 				outMode=omON;
8214  1780 a601          	ld	a,#1
8215  1782 ae401d        	ldw	x,#_outMode
8216  1785 cd0000        	call	c_eewrc
8218  1788               L1343:
8219                     ; 1188 		HUMAN_SET_EE=1;
8221  1788 ae0001        	ldw	x,#1
8222  178b 89            	pushw	x
8223  178c ae401e        	ldw	x,#_HUMAN_SET_EE
8224  178f cd0000        	call	c_eewrw
8226  1792 85            	popw	x
8227  1793 ac462646      	jpf	L3343
8228  1797               L3733:
8229                     ; 1192 else if(ind==iTemperSet)
8231  1797 b661          	ld	a,_a_ind
8232  1799 a108          	cp	a,#8
8233  179b 2703          	jreq	L275
8234  179d cc18a3        	jp	L5343
8235  17a0               L275:
8236                     ; 1194 	if(but==butM)
8238  17a0 b600          	ld	a,_but
8239  17a2 a1fd          	cp	a,#253
8240  17a4 2610          	jrne	L7343
8241                     ; 1196 		tree_down(0,0);
8243  17a6 5f            	clrw	x
8244  17a7 4f            	clr	a
8245  17a8 95            	ld	xh,a
8246  17a9 cd0000        	call	_tree_down
8248                     ; 1197 		ret_ind(0,0);
8250  17ac 5f            	clrw	x
8251  17ad 4f            	clr	a
8252  17ae 95            	ld	xh,a
8253  17af cd0000        	call	_ret_ind
8256  17b2 ac462646      	jpf	L3343
8257  17b6               L7343:
8258                     ; 1199 	else if(MODE_EE==1)
8260  17b6 c64046        	ld	a,_MODE_EE
8261  17b9 a101          	cp	a,#1
8262  17bb 266e          	jrne	L3443
8263                     ; 1201 		ret_ind(4,0);
8265  17bd 5f            	clrw	x
8266  17be a604          	ld	a,#4
8267  17c0 95            	ld	xh,a
8268  17c1 cd0000        	call	_ret_ind
8270                     ; 1202 		if((but==butU)||(but==butU_))
8272  17c4 b600          	ld	a,_but
8273  17c6 a1fb          	cp	a,#251
8274  17c8 2706          	jreq	L7443
8276  17ca b600          	ld	a,_but
8277  17cc a17b          	cp	a,#123
8278  17ce 2624          	jrne	L5443
8279  17d0               L7443:
8280                     ; 1204 			NECC_TEMPER_WATER_EE++;
8282  17d0 c64045        	ld	a,_NECC_TEMPER_WATER_EE
8283  17d3 4c            	inc	a
8284  17d4 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8285  17d7 cd0000        	call	c_eewrc
8287                     ; 1205 			gran_char(&NECC_TEMPER_WATER_EE,5,85);
8289  17da 4b55          	push	#85
8290  17dc 4b05          	push	#5
8291  17de ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8292  17e1 cd0000        	call	_gran_char
8294  17e4 85            	popw	x
8295                     ; 1206 			speed=1;
8297  17e5 35010000      	mov	_speed,#1
8298                     ; 1207 			HUMAN_SET_EE=1;
8300  17e9 ae0001        	ldw	x,#1
8301  17ec 89            	pushw	x
8302  17ed ae401e        	ldw	x,#_HUMAN_SET_EE
8303  17f0 cd0000        	call	c_eewrw
8305  17f3 85            	popw	x
8306  17f4               L5443:
8307                     ; 1209 		if((but==butD)||(but==butD_))
8309  17f4 b600          	ld	a,_but
8310  17f6 a1f7          	cp	a,#247
8311  17f8 2709          	jreq	L3543
8313  17fa b600          	ld	a,_but
8314  17fc a177          	cp	a,#119
8315  17fe 2703          	jreq	L475
8316  1800 cc2646        	jp	L3343
8317  1803               L475:
8318  1803               L3543:
8319                     ; 1211 			NECC_TEMPER_WATER_EE--;
8321  1803 c64045        	ld	a,_NECC_TEMPER_WATER_EE
8322  1806 4a            	dec	a
8323  1807 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8324  180a cd0000        	call	c_eewrc
8326                     ; 1212 			gran_char(&NECC_TEMPER_WATER_EE,5,85);
8328  180d 4b55          	push	#85
8329  180f 4b05          	push	#5
8330  1811 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8331  1814 cd0000        	call	_gran_char
8333  1817 85            	popw	x
8334                     ; 1213 			speed=1;
8336  1818 35010000      	mov	_speed,#1
8337                     ; 1214 			HUMAN_SET_EE=1;
8339  181c ae0001        	ldw	x,#1
8340  181f 89            	pushw	x
8341  1820 ae401e        	ldw	x,#_HUMAN_SET_EE
8342  1823 cd0000        	call	c_eewrw
8344  1826 85            	popw	x
8345  1827 ac462646      	jpf	L3343
8346  182b               L3443:
8347                     ; 1217 	else if(MODE_EE==2)
8349  182b c64046        	ld	a,_MODE_EE
8350  182e a102          	cp	a,#2
8351  1830 2703          	jreq	L675
8352  1832 cc2646        	jp	L3343
8353  1835               L675:
8354                     ; 1219 		ret_ind(4,0);
8356  1835 5f            	clrw	x
8357  1836 a604          	ld	a,#4
8358  1838 95            	ld	xh,a
8359  1839 cd0000        	call	_ret_ind
8361                     ; 1220 		if((but==butU)||(but==butU_))
8363  183c b600          	ld	a,_but
8364  183e a1fb          	cp	a,#251
8365  1840 2706          	jreq	L3643
8367  1842 b600          	ld	a,_but
8368  1844 a17b          	cp	a,#123
8369  1846 2624          	jrne	L1643
8370  1848               L3643:
8371                     ; 1222 			NECC_TEMPER_AIR_EE++;
8373  1848 c64044        	ld	a,_NECC_TEMPER_AIR_EE
8374  184b 4c            	inc	a
8375  184c ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8376  184f cd0000        	call	c_eewrc
8378                     ; 1223 			gran_char(&NECC_TEMPER_AIR_EE,5,35);
8380  1852 4b23          	push	#35
8381  1854 4b05          	push	#5
8382  1856 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8383  1859 cd0000        	call	_gran_char
8385  185c 85            	popw	x
8386                     ; 1224 			speed=1;
8388  185d 35010000      	mov	_speed,#1
8389                     ; 1225 			HUMAN_SET_EE=1;
8391  1861 ae0001        	ldw	x,#1
8392  1864 89            	pushw	x
8393  1865 ae401e        	ldw	x,#_HUMAN_SET_EE
8394  1868 cd0000        	call	c_eewrw
8396  186b 85            	popw	x
8397  186c               L1643:
8398                     ; 1227 		if((but==butD)||(but==butD_))
8400  186c b600          	ld	a,_but
8401  186e a1f7          	cp	a,#247
8402  1870 2709          	jreq	L7643
8404  1872 b600          	ld	a,_but
8405  1874 a177          	cp	a,#119
8406  1876 2703          	jreq	L006
8407  1878 cc2646        	jp	L3343
8408  187b               L006:
8409  187b               L7643:
8410                     ; 1229 			NECC_TEMPER_AIR_EE--;
8412  187b c64044        	ld	a,_NECC_TEMPER_AIR_EE
8413  187e 4a            	dec	a
8414  187f ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8415  1882 cd0000        	call	c_eewrc
8417                     ; 1230 			gran_char(&NECC_TEMPER_AIR_EE,5,35);
8419  1885 4b23          	push	#35
8420  1887 4b05          	push	#5
8421  1889 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8422  188c cd0000        	call	_gran_char
8424  188f 85            	popw	x
8425                     ; 1231 			speed=1;
8427  1890 35010000      	mov	_speed,#1
8428                     ; 1232 			HUMAN_SET_EE=1;
8430  1894 ae0001        	ldw	x,#1
8431  1897 89            	pushw	x
8432  1898 ae401e        	ldw	x,#_HUMAN_SET_EE
8433  189b cd0000        	call	c_eewrw
8435  189e 85            	popw	x
8436  189f ac462646      	jpf	L3343
8437  18a3               L5343:
8438                     ; 1236 else if(ind==iDate_W)
8440  18a3 b661          	ld	a,_a_ind
8441  18a5 a104          	cp	a,#4
8442  18a7 2635          	jrne	L3743
8443                     ; 1238 	if(but==butU)
8445  18a9 b600          	ld	a,_but
8446  18ab a1fb          	cp	a,#251
8447  18ad 2703          	jreq	L206
8448  18af cc2646        	jp	L3343
8449  18b2               L206:
8450                     ; 1240 		if(sub_ind==0)
8452  18b2 3d62          	tnz	_a_ind+1
8453  18b4 2615          	jrne	L7743
8454                     ; 1242 			sub_ind=1;
8456  18b6 35010062      	mov	_a_ind+1,#1
8457                     ; 1243 			ret_ind(4,0);
8459  18ba 5f            	clrw	x
8460  18bb a604          	ld	a,#4
8461  18bd 95            	ld	xh,a
8462  18be cd0000        	call	_ret_ind
8464                     ; 1244 			clear_ind();
8466  18c1 cd0000        	call	_clear_ind
8468                     ; 1245 			ind_hndl();			
8470  18c4 cd051e        	call	_ind_hndl
8473  18c7 ac462646      	jpf	L3343
8474  18cb               L7743:
8475                     ; 1247 		else if(sub_ind==1)
8477  18cb b662          	ld	a,_a_ind+1
8478  18cd a101          	cp	a,#1
8479  18cf 2703          	jreq	L406
8480  18d1 cc2646        	jp	L3343
8481  18d4               L406:
8482                     ; 1249 			tree_down(0,0);	
8484  18d4 5f            	clrw	x
8485  18d5 4f            	clr	a
8486  18d6 95            	ld	xh,a
8487  18d7 cd0000        	call	_tree_down
8489  18da ac462646      	jpf	L3343
8490  18de               L3743:
8491                     ; 1253 else if(ind==iSet)
8493  18de b661          	ld	a,_a_ind
8494  18e0 a101          	cp	a,#1
8495  18e2 2703          	jreq	L606
8496  18e4 cc198b        	jp	L7053
8497  18e7               L606:
8498                     ; 1255 	if((but==butU)||(but==butU_))
8500  18e7 b600          	ld	a,_but
8501  18e9 a1fb          	cp	a,#251
8502  18eb 2706          	jreq	L3153
8504  18ed b600          	ld	a,_but
8505  18ef a17b          	cp	a,#123
8506  18f1 2617          	jrne	L1153
8507  18f3               L3153:
8508                     ; 1257 		sub_ind++;
8510  18f3 3c62          	inc	_a_ind+1
8511                     ; 1258 		gran_char(&sub_ind,0,11);
8513  18f5 4b0b          	push	#11
8514  18f7 4b00          	push	#0
8515  18f9 ae0062        	ldw	x,#_a_ind+1
8516  18fc cd0000        	call	_gran_char
8518  18ff 85            	popw	x
8519                     ; 1259 		clear_ind();
8521  1900 cd0000        	call	_clear_ind
8523                     ; 1260 		ind_hndl();
8525  1903 cd051e        	call	_ind_hndl
8528  1906 ac462646      	jpf	L3343
8529  190a               L1153:
8530                     ; 1262 	else if((but==butD)||(but==butD_))
8532  190a b600          	ld	a,_but
8533  190c a1f7          	cp	a,#247
8534  190e 2706          	jreq	L1253
8536  1910 b600          	ld	a,_but
8537  1912 a177          	cp	a,#119
8538  1914 2617          	jrne	L7153
8539  1916               L1253:
8540                     ; 1264 		sub_ind--;
8542  1916 3a62          	dec	_a_ind+1
8543                     ; 1265 		gran_char(&sub_ind,0,11);
8545  1918 4b0b          	push	#11
8546  191a 4b00          	push	#0
8547  191c ae0062        	ldw	x,#_a_ind+1
8548  191f cd0000        	call	_gran_char
8550  1922 85            	popw	x
8551                     ; 1266 		clear_ind();
8553  1923 cd0000        	call	_clear_ind
8555                     ; 1267 		ind_hndl();
8557  1926 cd051e        	call	_ind_hndl
8560  1929 ac462646      	jpf	L3343
8561  192d               L7153:
8562                     ; 1269 	else if(but==butM_)
8564  192d b600          	ld	a,_but
8565  192f a17d          	cp	a,#125
8566  1931 2638          	jrne	L5253
8567                     ; 1271 		if(sub_ind==11) //Выход 
8569  1933 b662          	ld	a,_a_ind+1
8570  1935 a10b          	cp	a,#11
8571  1937 260a          	jrne	L7253
8572                     ; 1273 			tree_down(0,0);
8574  1939 5f            	clrw	x
8575  193a 4f            	clr	a
8576  193b 95            	ld	xh,a
8577  193c cd0000        	call	_tree_down
8580  193f ac462646      	jpf	L3343
8581  1943               L7253:
8582                     ; 1275 		else if(sub_ind==10) //Вход в установку графика
8584  1943 b662          	ld	a,_a_ind+1
8585  1945 a10a          	cp	a,#10
8586  1947 2610          	jrne	L3353
8587                     ; 1277 			tree_up(iSetTable,0,0,0);
8589  1949 4b00          	push	#0
8590  194b 4b00          	push	#0
8591  194d 5f            	clrw	x
8592  194e a605          	ld	a,#5
8593  1950 95            	ld	xh,a
8594  1951 cd0000        	call	_tree_up
8596  1954 85            	popw	x
8598  1955 ac462646      	jpf	L3343
8599  1959               L3353:
8600                     ; 1281 			tree_up(iSet_,sub_ind,0,0);
8602  1959 4b00          	push	#0
8603  195b 4b00          	push	#0
8604  195d b662          	ld	a,_a_ind+1
8605  195f 97            	ld	xl,a
8606  1960 a602          	ld	a,#2
8607  1962 95            	ld	xh,a
8608  1963 cd0000        	call	_tree_up
8610  1966 85            	popw	x
8611  1967 ac462646      	jpf	L3343
8612  196b               L5253:
8613                     ; 1284 	else if(but==butOND_)
8615  196b b600          	ld	a,_but
8616  196d a176          	cp	a,#118
8617  196f 2703          	jreq	L016
8618  1971 cc2646        	jp	L3343
8619  1974               L016:
8620                     ; 1286 		tree_up(iDefSet,0,0,0);
8622  1974 4b00          	push	#0
8623  1976 4b00          	push	#0
8624  1978 5f            	clrw	x
8625  1979 a609          	ld	a,#9
8626  197b 95            	ld	xh,a
8627  197c cd0000        	call	_tree_up
8629  197f 85            	popw	x
8630                     ; 1287 		ret_ind(5,0);
8632  1980 5f            	clrw	x
8633  1981 a605          	ld	a,#5
8634  1983 95            	ld	xh,a
8635  1984 cd0000        	call	_ret_ind
8637  1987 ac462646      	jpf	L3343
8638  198b               L7053:
8639                     ; 1290 else if(ind==iSet_)
8641  198b b661          	ld	a,_a_ind
8642  198d a102          	cp	a,#2
8643  198f 2703          	jreq	L216
8644  1991 cc1f36        	jp	L5453
8645  1994               L216:
8646                     ; 1292 	if(but==butM_)
8648  1994 b600          	ld	a,_but
8649  1996 a17d          	cp	a,#125
8650  1998 260a          	jrne	L7453
8651                     ; 1294 		tree_down(0,0);
8653  199a 5f            	clrw	x
8654  199b 4f            	clr	a
8655  199c 95            	ld	xh,a
8656  199d cd0000        	call	_tree_down
8659  19a0 ac462646      	jpf	L3343
8660  19a4               L7453:
8661                     ; 1298 		if(sub_ind==0)
8663  19a4 3d62          	tnz	_a_ind+1
8664  19a6 265f          	jrne	L3553
8665                     ; 1300 			if((but==butU)||(but==butU_))
8667  19a8 b600          	ld	a,_but
8668  19aa a1fb          	cp	a,#251
8669  19ac 2706          	jreq	L7553
8671  19ae b600          	ld	a,_but
8672  19b0 a17b          	cp	a,#123
8673  19b2 2620          	jrne	L5553
8674  19b4               L7553:
8675                     ; 1302 				MODE_EE++;
8677  19b4 c64046        	ld	a,_MODE_EE
8678  19b7 4c            	inc	a
8679  19b8 ae4046        	ldw	x,#_MODE_EE
8680  19bb cd0000        	call	c_eewrc
8682                     ; 1303 				gran_char(&MODE_EE,1,3);
8684  19be 4b03          	push	#3
8685  19c0 4b01          	push	#1
8686  19c2 ae4046        	ldw	x,#_MODE_EE
8687  19c5 cd0000        	call	_gran_char
8689  19c8 85            	popw	x
8690                     ; 1304 				HUMAN_SET_EE=1;
8692  19c9 ae0001        	ldw	x,#1
8693  19cc 89            	pushw	x
8694  19cd ae401e        	ldw	x,#_HUMAN_SET_EE
8695  19d0 cd0000        	call	c_eewrw
8697  19d3 85            	popw	x
8698  19d4               L5553:
8699                     ; 1306 			if((but==butD)||(but==butD_))
8701  19d4 b600          	ld	a,_but
8702  19d6 a1f7          	cp	a,#247
8703  19d8 2709          	jreq	L3653
8705  19da b600          	ld	a,_but
8706  19dc a177          	cp	a,#119
8707  19de 2703          	jreq	L416
8708  19e0 cc2646        	jp	L3343
8709  19e3               L416:
8710  19e3               L3653:
8711                     ; 1308 				MODE_EE--;
8713  19e3 c64046        	ld	a,_MODE_EE
8714  19e6 4a            	dec	a
8715  19e7 ae4046        	ldw	x,#_MODE_EE
8716  19ea cd0000        	call	c_eewrc
8718                     ; 1309 				gran_char(&MODE_EE,1,3);
8720  19ed 4b03          	push	#3
8721  19ef 4b01          	push	#1
8722  19f1 ae4046        	ldw	x,#_MODE_EE
8723  19f4 cd0000        	call	_gran_char
8725  19f7 85            	popw	x
8726                     ; 1310 				HUMAN_SET_EE=1;
8728  19f8 ae0001        	ldw	x,#1
8729  19fb 89            	pushw	x
8730  19fc ae401e        	ldw	x,#_HUMAN_SET_EE
8731  19ff cd0000        	call	c_eewrw
8733  1a02 85            	popw	x
8734  1a03 ac462646      	jpf	L3343
8735  1a07               L3553:
8736                     ; 1313 		else if(sub_ind==1)
8738  1a07 b662          	ld	a,_a_ind+1
8739  1a09 a101          	cp	a,#1
8740  1a0b 2667          	jrne	L7653
8741                     ; 1315 			if((but==butU)||(but==butU_))
8743  1a0d b600          	ld	a,_but
8744  1a0f a1fb          	cp	a,#251
8745  1a11 2706          	jreq	L3753
8747  1a13 b600          	ld	a,_but
8748  1a15 a17b          	cp	a,#123
8749  1a17 2624          	jrne	L1753
8750  1a19               L3753:
8751                     ; 1317 				NECC_TEMPER_WATER_EE++;
8753  1a19 c64045        	ld	a,_NECC_TEMPER_WATER_EE
8754  1a1c 4c            	inc	a
8755  1a1d ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8756  1a20 cd0000        	call	c_eewrc
8758                     ; 1318 				gran_char(&NECC_TEMPER_WATER_EE,5,85);
8760  1a23 4b55          	push	#85
8761  1a25 4b05          	push	#5
8762  1a27 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8763  1a2a cd0000        	call	_gran_char
8765  1a2d 85            	popw	x
8766                     ; 1319 				speed=1;
8768  1a2e 35010000      	mov	_speed,#1
8769                     ; 1320 				HUMAN_SET_EE=1;
8771  1a32 ae0001        	ldw	x,#1
8772  1a35 89            	pushw	x
8773  1a36 ae401e        	ldw	x,#_HUMAN_SET_EE
8774  1a39 cd0000        	call	c_eewrw
8776  1a3c 85            	popw	x
8777  1a3d               L1753:
8778                     ; 1322 			if((but==butD)||(but==butD_))
8780  1a3d b600          	ld	a,_but
8781  1a3f a1f7          	cp	a,#247
8782  1a41 2709          	jreq	L7753
8784  1a43 b600          	ld	a,_but
8785  1a45 a177          	cp	a,#119
8786  1a47 2703          	jreq	L616
8787  1a49 cc2646        	jp	L3343
8788  1a4c               L616:
8789  1a4c               L7753:
8790                     ; 1324 				NECC_TEMPER_WATER_EE--;
8792  1a4c c64045        	ld	a,_NECC_TEMPER_WATER_EE
8793  1a4f 4a            	dec	a
8794  1a50 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8795  1a53 cd0000        	call	c_eewrc
8797                     ; 1325 				gran_char(&NECC_TEMPER_WATER_EE,5,85);
8799  1a56 4b55          	push	#85
8800  1a58 4b05          	push	#5
8801  1a5a ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8802  1a5d cd0000        	call	_gran_char
8804  1a60 85            	popw	x
8805                     ; 1326 				speed=1;
8807  1a61 35010000      	mov	_speed,#1
8808                     ; 1327 				HUMAN_SET_EE=1;
8810  1a65 ae0001        	ldw	x,#1
8811  1a68 89            	pushw	x
8812  1a69 ae401e        	ldw	x,#_HUMAN_SET_EE
8813  1a6c cd0000        	call	c_eewrw
8815  1a6f 85            	popw	x
8816  1a70 ac462646      	jpf	L3343
8817  1a74               L7653:
8818                     ; 1330 		else if(sub_ind==2)
8820  1a74 b662          	ld	a,_a_ind+1
8821  1a76 a102          	cp	a,#2
8822  1a78 2667          	jrne	L3063
8823                     ; 1332 			if((but==butU)||(but==butU_))
8825  1a7a b600          	ld	a,_but
8826  1a7c a1fb          	cp	a,#251
8827  1a7e 2706          	jreq	L7063
8829  1a80 b600          	ld	a,_but
8830  1a82 a17b          	cp	a,#123
8831  1a84 2624          	jrne	L5063
8832  1a86               L7063:
8833                     ; 1334 				NECC_TEMPER_AIR_EE++;
8835  1a86 c64044        	ld	a,_NECC_TEMPER_AIR_EE
8836  1a89 4c            	inc	a
8837  1a8a ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8838  1a8d cd0000        	call	c_eewrc
8840                     ; 1335 				gran_char(&NECC_TEMPER_AIR_EE,5,35);
8842  1a90 4b23          	push	#35
8843  1a92 4b05          	push	#5
8844  1a94 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8845  1a97 cd0000        	call	_gran_char
8847  1a9a 85            	popw	x
8848                     ; 1336 				speed=1;
8850  1a9b 35010000      	mov	_speed,#1
8851                     ; 1337 				HUMAN_SET_EE=1;
8853  1a9f ae0001        	ldw	x,#1
8854  1aa2 89            	pushw	x
8855  1aa3 ae401e        	ldw	x,#_HUMAN_SET_EE
8856  1aa6 cd0000        	call	c_eewrw
8858  1aa9 85            	popw	x
8859  1aaa               L5063:
8860                     ; 1339 			if((but==butD)||(but==butD_))
8862  1aaa b600          	ld	a,_but
8863  1aac a1f7          	cp	a,#247
8864  1aae 2709          	jreq	L3163
8866  1ab0 b600          	ld	a,_but
8867  1ab2 a177          	cp	a,#119
8868  1ab4 2703          	jreq	L026
8869  1ab6 cc2646        	jp	L3343
8870  1ab9               L026:
8871  1ab9               L3163:
8872                     ; 1341 				NECC_TEMPER_AIR_EE--;
8874  1ab9 c64044        	ld	a,_NECC_TEMPER_AIR_EE
8875  1abc 4a            	dec	a
8876  1abd ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8877  1ac0 cd0000        	call	c_eewrc
8879                     ; 1342 				gran_char(&NECC_TEMPER_AIR_EE,5,35);
8881  1ac3 4b23          	push	#35
8882  1ac5 4b05          	push	#5
8883  1ac7 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8884  1aca cd0000        	call	_gran_char
8886  1acd 85            	popw	x
8887                     ; 1343 				speed=1;
8889  1ace 35010000      	mov	_speed,#1
8890                     ; 1344 				HUMAN_SET_EE=1;
8892  1ad2 ae0001        	ldw	x,#1
8893  1ad5 89            	pushw	x
8894  1ad6 ae401e        	ldw	x,#_HUMAN_SET_EE
8895  1ad9 cd0000        	call	c_eewrw
8897  1adc 85            	popw	x
8898  1add ac462646      	jpf	L3343
8899  1ae1               L3063:
8900                     ; 1348 		else if(sub_ind==3)
8902  1ae1 b662          	ld	a,_a_ind+1
8903  1ae3 a103          	cp	a,#3
8904  1ae5 2667          	jrne	L7163
8905                     ; 1350 			if((but==butU)||(but==butU_))
8907  1ae7 b600          	ld	a,_but
8908  1ae9 a1fb          	cp	a,#251
8909  1aeb 2706          	jreq	L3263
8911  1aed b600          	ld	a,_but
8912  1aef a17b          	cp	a,#123
8913  1af1 2624          	jrne	L1263
8914  1af3               L3263:
8915                     ; 1352 				MAX_POWER_EE++;
8917  1af3 c64047        	ld	a,_MAX_POWER_EE
8918  1af6 4c            	inc	a
8919  1af7 ae4047        	ldw	x,#_MAX_POWER_EE
8920  1afa cd0000        	call	c_eewrc
8922                     ; 1353 				gran_char(&MAX_POWER_EE,1,3);
8924  1afd 4b03          	push	#3
8925  1aff 4b01          	push	#1
8926  1b01 ae4047        	ldw	x,#_MAX_POWER_EE
8927  1b04 cd0000        	call	_gran_char
8929  1b07 85            	popw	x
8930                     ; 1354 				speed=1;
8932  1b08 35010000      	mov	_speed,#1
8933                     ; 1355 				HUMAN_SET_EE=1;
8935  1b0c ae0001        	ldw	x,#1
8936  1b0f 89            	pushw	x
8937  1b10 ae401e        	ldw	x,#_HUMAN_SET_EE
8938  1b13 cd0000        	call	c_eewrw
8940  1b16 85            	popw	x
8941  1b17               L1263:
8942                     ; 1357 			if((but==butD)||(but==butD_))
8944  1b17 b600          	ld	a,_but
8945  1b19 a1f7          	cp	a,#247
8946  1b1b 2709          	jreq	L7263
8948  1b1d b600          	ld	a,_but
8949  1b1f a177          	cp	a,#119
8950  1b21 2703          	jreq	L226
8951  1b23 cc2646        	jp	L3343
8952  1b26               L226:
8953  1b26               L7263:
8954                     ; 1359 				MAX_POWER_EE--;
8956  1b26 c64047        	ld	a,_MAX_POWER_EE
8957  1b29 4a            	dec	a
8958  1b2a ae4047        	ldw	x,#_MAX_POWER_EE
8959  1b2d cd0000        	call	c_eewrc
8961                     ; 1360 				gran_char(&MAX_POWER_EE,1,3);
8963  1b30 4b03          	push	#3
8964  1b32 4b01          	push	#1
8965  1b34 ae4047        	ldw	x,#_MAX_POWER_EE
8966  1b37 cd0000        	call	_gran_char
8968  1b3a 85            	popw	x
8969                     ; 1361 				speed=1;
8971  1b3b 35010000      	mov	_speed,#1
8972                     ; 1362 				HUMAN_SET_EE=1;
8974  1b3f ae0001        	ldw	x,#1
8975  1b42 89            	pushw	x
8976  1b43 ae401e        	ldw	x,#_HUMAN_SET_EE
8977  1b46 cd0000        	call	c_eewrw
8979  1b49 85            	popw	x
8980  1b4a ac462646      	jpf	L3343
8981  1b4e               L7163:
8982                     ; 1365 		else if(sub_ind==4)
8984  1b4e b662          	ld	a,_a_ind+1
8985  1b50 a104          	cp	a,#4
8986  1b52 2703          	jreq	L426
8987  1b54 cc1bf4        	jp	L3363
8988  1b57               L426:
8989                     ; 1368 			temp=time_year;
8991  1b57 b60c          	ld	a,_time_year
8992  1b59 6b03          	ld	(OFST+0,sp),a
8993                     ; 1370 			if((but==butU)||(but==butU_))
8995  1b5b b600          	ld	a,_but
8996  1b5d a1fb          	cp	a,#251
8997  1b5f 2706          	jreq	L7363
8999  1b61 b600          	ld	a,_but
9000  1b63 a17b          	cp	a,#123
9001  1b65 263d          	jrne	L5363
9002  1b67               L7363:
9003                     ; 1372 				temp++;
9005  1b67 0c03          	inc	(OFST+0,sp)
9006                     ; 1373 				gran_char(&temp,0,99);
9008  1b69 4b63          	push	#99
9009  1b6b 4b00          	push	#0
9010  1b6d 96            	ldw	x,sp
9011  1b6e 1c0005        	addw	x,#OFST+2
9012  1b71 cd0000        	call	_gran_char
9014  1b74 85            	popw	x
9015                     ; 1374 				_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
9017  1b75 7b03          	ld	a,(OFST+0,sp)
9018  1b77 ae000a        	ldw	x,#10
9019  1b7a 51            	exgw	x,y
9020  1b7b 5f            	clrw	x
9021  1b7c 4d            	tnz	a
9022  1b7d 2a01          	jrpl	L034
9023  1b7f 5a            	decw	x
9024  1b80               L034:
9025  1b80 02            	rlwa	x,a
9026  1b81 cd0000        	call	c_idiv
9028  1b84 909f          	ld	a,yl
9029  1b86 6b01          	ld	(OFST-2,sp),a
9030  1b88 7b03          	ld	a,(OFST+0,sp)
9031  1b8a ae000a        	ldw	x,#10
9032  1b8d 51            	exgw	x,y
9033  1b8e 5f            	clrw	x
9034  1b8f 4d            	tnz	a
9035  1b90 2a01          	jrpl	L234
9036  1b92 5a            	decw	x
9037  1b93               L234:
9038  1b93 02            	rlwa	x,a
9039  1b94 cd0000        	call	c_idiv
9041  1b97 9f            	ld	a,xl
9042  1b98 4e            	swap	a
9043  1b99 a4f0          	and	a,#240
9044  1b9b 1b01          	add	a,(OFST-2,sp)
9045  1b9d 97            	ld	xl,a
9046  1b9e a606          	ld	a,#6
9047  1ba0 95            	ld	xh,a
9048  1ba1 cd0000        	call	__ds1307_write_byte
9050  1ba4               L5363:
9051                     ; 1377 			if((but==butD)||(but==butD_))
9053  1ba4 b600          	ld	a,_but
9054  1ba6 a1f7          	cp	a,#247
9055  1ba8 2709          	jreq	L3463
9057  1baa b600          	ld	a,_but
9058  1bac a177          	cp	a,#119
9059  1bae 2703          	jreq	L626
9060  1bb0 cc2646        	jp	L3343
9061  1bb3               L626:
9062  1bb3               L3463:
9063                     ; 1379 				temp--;
9065  1bb3 0a03          	dec	(OFST+0,sp)
9066                     ; 1380 				gran_char(&temp,0,99);
9068  1bb5 4b63          	push	#99
9069  1bb7 4b00          	push	#0
9070  1bb9 96            	ldw	x,sp
9071  1bba 1c0005        	addw	x,#OFST+2
9072  1bbd cd0000        	call	_gran_char
9074  1bc0 85            	popw	x
9075                     ; 1381 				_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
9077  1bc1 7b03          	ld	a,(OFST+0,sp)
9078  1bc3 ae000a        	ldw	x,#10
9079  1bc6 51            	exgw	x,y
9080  1bc7 5f            	clrw	x
9081  1bc8 4d            	tnz	a
9082  1bc9 2a01          	jrpl	L434
9083  1bcb 5a            	decw	x
9084  1bcc               L434:
9085  1bcc 02            	rlwa	x,a
9086  1bcd cd0000        	call	c_idiv
9088  1bd0 909f          	ld	a,yl
9089  1bd2 6b01          	ld	(OFST-2,sp),a
9090  1bd4 7b03          	ld	a,(OFST+0,sp)
9091  1bd6 ae000a        	ldw	x,#10
9092  1bd9 51            	exgw	x,y
9093  1bda 5f            	clrw	x
9094  1bdb 4d            	tnz	a
9095  1bdc 2a01          	jrpl	L634
9096  1bde 5a            	decw	x
9097  1bdf               L634:
9098  1bdf 02            	rlwa	x,a
9099  1be0 cd0000        	call	c_idiv
9101  1be3 9f            	ld	a,xl
9102  1be4 4e            	swap	a
9103  1be5 a4f0          	and	a,#240
9104  1be7 1b01          	add	a,(OFST-2,sp)
9105  1be9 97            	ld	xl,a
9106  1bea a606          	ld	a,#6
9107  1bec 95            	ld	xh,a
9108  1bed cd0000        	call	__ds1307_write_byte
9110  1bf0 ac462646      	jpf	L3343
9111  1bf4               L3363:
9112                     ; 1384 		else if(sub_ind==5)
9114  1bf4 b662          	ld	a,_a_ind+1
9115  1bf6 a105          	cp	a,#5
9116  1bf8 2703          	jreq	L036
9117  1bfa cc1c9a        	jp	L7463
9118  1bfd               L036:
9119                     ; 1387 			temp=time_month;
9121  1bfd b60d          	ld	a,_time_month
9122  1bff 6b03          	ld	(OFST+0,sp),a
9123                     ; 1389 			if((but==butU)||(but==butU_))
9125  1c01 b600          	ld	a,_but
9126  1c03 a1fb          	cp	a,#251
9127  1c05 2706          	jreq	L3563
9129  1c07 b600          	ld	a,_but
9130  1c09 a17b          	cp	a,#123
9131  1c0b 263d          	jrne	L1563
9132  1c0d               L3563:
9133                     ; 1391 				temp++;
9135  1c0d 0c03          	inc	(OFST+0,sp)
9136                     ; 1392 				gran_ring_char(&temp,1,12);
9138  1c0f 4b0c          	push	#12
9139  1c11 4b01          	push	#1
9140  1c13 96            	ldw	x,sp
9141  1c14 1c0005        	addw	x,#OFST+2
9142  1c17 cd0000        	call	_gran_ring_char
9144  1c1a 85            	popw	x
9145                     ; 1393 				_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));
9147  1c1b 7b03          	ld	a,(OFST+0,sp)
9148  1c1d ae000a        	ldw	x,#10
9149  1c20 51            	exgw	x,y
9150  1c21 5f            	clrw	x
9151  1c22 4d            	tnz	a
9152  1c23 2a01          	jrpl	L044
9153  1c25 5a            	decw	x
9154  1c26               L044:
9155  1c26 02            	rlwa	x,a
9156  1c27 cd0000        	call	c_idiv
9158  1c2a 909f          	ld	a,yl
9159  1c2c 6b01          	ld	(OFST-2,sp),a
9160  1c2e 7b03          	ld	a,(OFST+0,sp)
9161  1c30 ae000a        	ldw	x,#10
9162  1c33 51            	exgw	x,y
9163  1c34 5f            	clrw	x
9164  1c35 4d            	tnz	a
9165  1c36 2a01          	jrpl	L244
9166  1c38 5a            	decw	x
9167  1c39               L244:
9168  1c39 02            	rlwa	x,a
9169  1c3a cd0000        	call	c_idiv
9171  1c3d 9f            	ld	a,xl
9172  1c3e 4e            	swap	a
9173  1c3f a4f0          	and	a,#240
9174  1c41 1b01          	add	a,(OFST-2,sp)
9175  1c43 97            	ld	xl,a
9176  1c44 a605          	ld	a,#5
9177  1c46 95            	ld	xh,a
9178  1c47 cd0000        	call	__ds1307_write_byte
9180  1c4a               L1563:
9181                     ; 1396 			if((but==butD)||(but==butD_))
9183  1c4a b600          	ld	a,_but
9184  1c4c a1f7          	cp	a,#247
9185  1c4e 2709          	jreq	L7563
9187  1c50 b600          	ld	a,_but
9188  1c52 a177          	cp	a,#119
9189  1c54 2703          	jreq	L236
9190  1c56 cc2646        	jp	L3343
9191  1c59               L236:
9192  1c59               L7563:
9193                     ; 1398 				temp--;
9195  1c59 0a03          	dec	(OFST+0,sp)
9196                     ; 1399 				gran_ring_char(&temp,1,12);
9198  1c5b 4b0c          	push	#12
9199  1c5d 4b01          	push	#1
9200  1c5f 96            	ldw	x,sp
9201  1c60 1c0005        	addw	x,#OFST+2
9202  1c63 cd0000        	call	_gran_ring_char
9204  1c66 85            	popw	x
9205                     ; 1400 				_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));
9207  1c67 7b03          	ld	a,(OFST+0,sp)
9208  1c69 ae000a        	ldw	x,#10
9209  1c6c 51            	exgw	x,y
9210  1c6d 5f            	clrw	x
9211  1c6e 4d            	tnz	a
9212  1c6f 2a01          	jrpl	L444
9213  1c71 5a            	decw	x
9214  1c72               L444:
9215  1c72 02            	rlwa	x,a
9216  1c73 cd0000        	call	c_idiv
9218  1c76 909f          	ld	a,yl
9219  1c78 6b01          	ld	(OFST-2,sp),a
9220  1c7a 7b03          	ld	a,(OFST+0,sp)
9221  1c7c ae000a        	ldw	x,#10
9222  1c7f 51            	exgw	x,y
9223  1c80 5f            	clrw	x
9224  1c81 4d            	tnz	a
9225  1c82 2a01          	jrpl	L644
9226  1c84 5a            	decw	x
9227  1c85               L644:
9228  1c85 02            	rlwa	x,a
9229  1c86 cd0000        	call	c_idiv
9231  1c89 9f            	ld	a,xl
9232  1c8a 4e            	swap	a
9233  1c8b a4f0          	and	a,#240
9234  1c8d 1b01          	add	a,(OFST-2,sp)
9235  1c8f 97            	ld	xl,a
9236  1c90 a605          	ld	a,#5
9237  1c92 95            	ld	xh,a
9238  1c93 cd0000        	call	__ds1307_write_byte
9240  1c96 ac462646      	jpf	L3343
9241  1c9a               L7463:
9242                     ; 1403 		else if(sub_ind==6)
9244  1c9a b662          	ld	a,_a_ind+1
9245  1c9c a106          	cp	a,#6
9246  1c9e 2703          	jreq	L436
9247  1ca0 cc1d7c        	jp	L3663
9248  1ca3               L436:
9249                     ; 1406 			temp=time_date;
9251  1ca3 b603          	ld	a,_time_date
9252  1ca5 6b03          	ld	(OFST+0,sp),a
9253                     ; 1407 			max_day=31;
9255  1ca7 a61f          	ld	a,#31
9256  1ca9 6b02          	ld	(OFST-1,sp),a
9257                     ; 1408 			if((time_month==4)||(time_month==6)||(time_month==9)||(time_month==11))max_day=30;
9259  1cab b60d          	ld	a,_time_month
9260  1cad a104          	cp	a,#4
9261  1caf 2712          	jreq	L7663
9263  1cb1 b60d          	ld	a,_time_month
9264  1cb3 a106          	cp	a,#6
9265  1cb5 270c          	jreq	L7663
9267  1cb7 b60d          	ld	a,_time_month
9268  1cb9 a109          	cp	a,#9
9269  1cbb 2706          	jreq	L7663
9271  1cbd b60d          	ld	a,_time_month
9272  1cbf a10b          	cp	a,#11
9273  1cc1 2612          	jrne	L5663
9274  1cc3               L7663:
9277  1cc3 a61e          	ld	a,#30
9278  1cc5 6b02          	ld	(OFST-1,sp),a
9280  1cc7               L5763:
9281                     ; 1414 			if((but==butU)||(but==butU_))
9283  1cc7 b600          	ld	a,_but
9284  1cc9 a1fb          	cp	a,#251
9285  1ccb 2720          	jreq	L7073
9287  1ccd b600          	ld	a,_but
9288  1ccf a17b          	cp	a,#123
9289  1cd1 2658          	jrne	L5073
9290  1cd3 2018          	jra	L7073
9291  1cd5               L5663:
9292                     ; 1409 			else if(time_month==2)
9294  1cd5 b60d          	ld	a,_time_month
9295  1cd7 a102          	cp	a,#2
9296  1cd9 26ec          	jrne	L5763
9297                     ; 1411 				if((time_year%4)==0)max_day=29;
9299  1cdb b60c          	ld	a,_time_year
9300  1cdd a503          	bcp	a,#3
9301  1cdf 2606          	jrne	L1073
9304  1ce1 a61d          	ld	a,#29
9305  1ce3 6b02          	ld	(OFST-1,sp),a
9307  1ce5 20e0          	jra	L5763
9308  1ce7               L1073:
9309                     ; 1412 				else max_day=28;
9311  1ce7 a61c          	ld	a,#28
9312  1ce9 6b02          	ld	(OFST-1,sp),a
9313  1ceb 20da          	jra	L5763
9314  1ced               L7073:
9315                     ; 1416 				temp++;
9317  1ced 0c03          	inc	(OFST+0,sp)
9318                     ; 1417 				gran_ring_char(&temp,1,max_day);
9320  1cef 7b02          	ld	a,(OFST-1,sp)
9321  1cf1 88            	push	a
9322  1cf2 4b01          	push	#1
9323  1cf4 96            	ldw	x,sp
9324  1cf5 1c0005        	addw	x,#OFST+2
9325  1cf8 cd0000        	call	_gran_ring_char
9327  1cfb 85            	popw	x
9328                     ; 1418 				_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
9330  1cfc 7b03          	ld	a,(OFST+0,sp)
9331  1cfe ae000a        	ldw	x,#10
9332  1d01 51            	exgw	x,y
9333  1d02 5f            	clrw	x
9334  1d03 4d            	tnz	a
9335  1d04 2a01          	jrpl	L054
9336  1d06 5a            	decw	x
9337  1d07               L054:
9338  1d07 02            	rlwa	x,a
9339  1d08 cd0000        	call	c_idiv
9341  1d0b 909f          	ld	a,yl
9342  1d0d 6b01          	ld	(OFST-2,sp),a
9343  1d0f 7b03          	ld	a,(OFST+0,sp)
9344  1d11 ae000a        	ldw	x,#10
9345  1d14 51            	exgw	x,y
9346  1d15 5f            	clrw	x
9347  1d16 4d            	tnz	a
9348  1d17 2a01          	jrpl	L254
9349  1d19 5a            	decw	x
9350  1d1a               L254:
9351  1d1a 02            	rlwa	x,a
9352  1d1b cd0000        	call	c_idiv
9354  1d1e 9f            	ld	a,xl
9355  1d1f 4e            	swap	a
9356  1d20 a4f0          	and	a,#240
9357  1d22 1b01          	add	a,(OFST-2,sp)
9358  1d24 97            	ld	xl,a
9359  1d25 a604          	ld	a,#4
9360  1d27 95            	ld	xh,a
9361  1d28 cd0000        	call	__ds1307_write_byte
9363  1d2b               L5073:
9364                     ; 1421 			if((but==butD)||(but==butD_))
9366  1d2b b600          	ld	a,_but
9367  1d2d a1f7          	cp	a,#247
9368  1d2f 2709          	jreq	L3173
9370  1d31 b600          	ld	a,_but
9371  1d33 a177          	cp	a,#119
9372  1d35 2703          	jreq	L636
9373  1d37 cc2646        	jp	L3343
9374  1d3a               L636:
9375  1d3a               L3173:
9376                     ; 1423 				temp--;
9378  1d3a 0a03          	dec	(OFST+0,sp)
9379                     ; 1424 				gran_ring_char(&temp,1,max_day);
9381  1d3c 7b02          	ld	a,(OFST-1,sp)
9382  1d3e 88            	push	a
9383  1d3f 4b01          	push	#1
9384  1d41 96            	ldw	x,sp
9385  1d42 1c0005        	addw	x,#OFST+2
9386  1d45 cd0000        	call	_gran_ring_char
9388  1d48 85            	popw	x
9389                     ; 1425 				_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
9391  1d49 7b03          	ld	a,(OFST+0,sp)
9392  1d4b ae000a        	ldw	x,#10
9393  1d4e 51            	exgw	x,y
9394  1d4f 5f            	clrw	x
9395  1d50 4d            	tnz	a
9396  1d51 2a01          	jrpl	L454
9397  1d53 5a            	decw	x
9398  1d54               L454:
9399  1d54 02            	rlwa	x,a
9400  1d55 cd0000        	call	c_idiv
9402  1d58 909f          	ld	a,yl
9403  1d5a 6b01          	ld	(OFST-2,sp),a
9404  1d5c 7b03          	ld	a,(OFST+0,sp)
9405  1d5e ae000a        	ldw	x,#10
9406  1d61 51            	exgw	x,y
9407  1d62 5f            	clrw	x
9408  1d63 4d            	tnz	a
9409  1d64 2a01          	jrpl	L654
9410  1d66 5a            	decw	x
9411  1d67               L654:
9412  1d67 02            	rlwa	x,a
9413  1d68 cd0000        	call	c_idiv
9415  1d6b 9f            	ld	a,xl
9416  1d6c 4e            	swap	a
9417  1d6d a4f0          	and	a,#240
9418  1d6f 1b01          	add	a,(OFST-2,sp)
9419  1d71 97            	ld	xl,a
9420  1d72 a604          	ld	a,#4
9421  1d74 95            	ld	xh,a
9422  1d75 cd0000        	call	__ds1307_write_byte
9424  1d78 ac462646      	jpf	L3343
9425  1d7c               L3663:
9426                     ; 1428 		else if(sub_ind==7)
9428  1d7c b662          	ld	a,_a_ind+1
9429  1d7e a107          	cp	a,#7
9430  1d80 2703          	jreq	L046
9431  1d82 cc1e26        	jp	L7173
9432  1d85               L046:
9433                     ; 1431 			temp=time_hour;
9435  1d85 b60f          	ld	a,_time_hour
9436  1d87 6b03          	ld	(OFST+0,sp),a
9437                     ; 1433 			if((but==butU)||(but==butU_))
9439  1d89 b600          	ld	a,_but
9440  1d8b a1fb          	cp	a,#251
9441  1d8d 2706          	jreq	L3273
9443  1d8f b600          	ld	a,_but
9444  1d91 a17b          	cp	a,#123
9445  1d93 263f          	jrne	L1273
9446  1d95               L3273:
9447                     ; 1435 				temp++;
9449  1d95 0c03          	inc	(OFST+0,sp)
9450                     ; 1436 				gran_ring_char(&temp,0,23);
9452  1d97 4b17          	push	#23
9453  1d99 4b00          	push	#0
9454  1d9b 96            	ldw	x,sp
9455  1d9c 1c0005        	addw	x,#OFST+2
9456  1d9f cd0000        	call	_gran_ring_char
9458  1da2 85            	popw	x
9459                     ; 1437 				_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);
9461  1da3 7b03          	ld	a,(OFST+0,sp)
9462  1da5 ae000a        	ldw	x,#10
9463  1da8 51            	exgw	x,y
9464  1da9 5f            	clrw	x
9465  1daa 4d            	tnz	a
9466  1dab 2a01          	jrpl	L064
9467  1dad 5a            	decw	x
9468  1dae               L064:
9469  1dae 02            	rlwa	x,a
9470  1daf cd0000        	call	c_idiv
9472  1db2 909f          	ld	a,yl
9473  1db4 6b01          	ld	(OFST-2,sp),a
9474  1db6 7b03          	ld	a,(OFST+0,sp)
9475  1db8 ae000a        	ldw	x,#10
9476  1dbb 51            	exgw	x,y
9477  1dbc 5f            	clrw	x
9478  1dbd 4d            	tnz	a
9479  1dbe 2a01          	jrpl	L264
9480  1dc0 5a            	decw	x
9481  1dc1               L264:
9482  1dc1 02            	rlwa	x,a
9483  1dc2 cd0000        	call	c_idiv
9485  1dc5 9f            	ld	a,xl
9486  1dc6 4e            	swap	a
9487  1dc7 a4f0          	and	a,#240
9488  1dc9 1b01          	add	a,(OFST-2,sp)
9489  1dcb a4bf          	and	a,#191
9490  1dcd 97            	ld	xl,a
9491  1dce a602          	ld	a,#2
9492  1dd0 95            	ld	xh,a
9493  1dd1 cd0000        	call	__ds1307_write_byte
9495  1dd4               L1273:
9496                     ; 1440 			if((but==butD)||(but==butD_))
9498  1dd4 b600          	ld	a,_but
9499  1dd6 a1f7          	cp	a,#247
9500  1dd8 2709          	jreq	L7273
9502  1dda b600          	ld	a,_but
9503  1ddc a177          	cp	a,#119
9504  1dde 2703          	jreq	L246
9505  1de0 cc2646        	jp	L3343
9506  1de3               L246:
9507  1de3               L7273:
9508                     ; 1442 				temp--;
9510  1de3 0a03          	dec	(OFST+0,sp)
9511                     ; 1443 				gran_ring_char(&temp,0,23);
9513  1de5 4b17          	push	#23
9514  1de7 4b00          	push	#0
9515  1de9 96            	ldw	x,sp
9516  1dea 1c0005        	addw	x,#OFST+2
9517  1ded cd0000        	call	_gran_ring_char
9519  1df0 85            	popw	x
9520                     ; 1444 				_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);
9522  1df1 7b03          	ld	a,(OFST+0,sp)
9523  1df3 ae000a        	ldw	x,#10
9524  1df6 51            	exgw	x,y
9525  1df7 5f            	clrw	x
9526  1df8 4d            	tnz	a
9527  1df9 2a01          	jrpl	L464
9528  1dfb 5a            	decw	x
9529  1dfc               L464:
9530  1dfc 02            	rlwa	x,a
9531  1dfd cd0000        	call	c_idiv
9533  1e00 909f          	ld	a,yl
9534  1e02 6b01          	ld	(OFST-2,sp),a
9535  1e04 7b03          	ld	a,(OFST+0,sp)
9536  1e06 ae000a        	ldw	x,#10
9537  1e09 51            	exgw	x,y
9538  1e0a 5f            	clrw	x
9539  1e0b 4d            	tnz	a
9540  1e0c 2a01          	jrpl	L664
9541  1e0e 5a            	decw	x
9542  1e0f               L664:
9543  1e0f 02            	rlwa	x,a
9544  1e10 cd0000        	call	c_idiv
9546  1e13 9f            	ld	a,xl
9547  1e14 4e            	swap	a
9548  1e15 a4f0          	and	a,#240
9549  1e17 1b01          	add	a,(OFST-2,sp)
9550  1e19 a4bf          	and	a,#191
9551  1e1b 97            	ld	xl,a
9552  1e1c a602          	ld	a,#2
9553  1e1e 95            	ld	xh,a
9554  1e1f cd0000        	call	__ds1307_write_byte
9556  1e22 ac462646      	jpf	L3343
9557  1e26               L7173:
9558                     ; 1447 		else if(sub_ind==8)
9560  1e26 b662          	ld	a,_a_ind+1
9561  1e28 a108          	cp	a,#8
9562  1e2a 2703          	jreq	L446
9563  1e2c cc1ed8        	jp	L3373
9564  1e2f               L446:
9565                     ; 1450 			temp=time_min;
9567  1e2f b610          	ld	a,_time_min
9568  1e31 6b03          	ld	(OFST+0,sp),a
9569                     ; 1452 			if((but==butU)||(but==butU_))
9571  1e33 b600          	ld	a,_but
9572  1e35 a1fb          	cp	a,#251
9573  1e37 2706          	jreq	L7373
9575  1e39 b600          	ld	a,_but
9576  1e3b a17b          	cp	a,#123
9577  1e3d 2643          	jrne	L5373
9578  1e3f               L7373:
9579                     ; 1454 				temp++;
9581  1e3f 0c03          	inc	(OFST+0,sp)
9582                     ; 1455 				gran_ring_char(&temp,0,59);
9584  1e41 4b3b          	push	#59
9585  1e43 4b00          	push	#0
9586  1e45 96            	ldw	x,sp
9587  1e46 1c0005        	addw	x,#OFST+2
9588  1e49 cd0000        	call	_gran_ring_char
9590  1e4c 85            	popw	x
9591                     ; 1456 				_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));
9593  1e4d 7b03          	ld	a,(OFST+0,sp)
9594  1e4f ae000a        	ldw	x,#10
9595  1e52 51            	exgw	x,y
9596  1e53 5f            	clrw	x
9597  1e54 4d            	tnz	a
9598  1e55 2a01          	jrpl	L074
9599  1e57 5a            	decw	x
9600  1e58               L074:
9601  1e58 02            	rlwa	x,a
9602  1e59 cd0000        	call	c_idiv
9604  1e5c 909f          	ld	a,yl
9605  1e5e 6b01          	ld	(OFST-2,sp),a
9606  1e60 7b03          	ld	a,(OFST+0,sp)
9607  1e62 ae000a        	ldw	x,#10
9608  1e65 51            	exgw	x,y
9609  1e66 5f            	clrw	x
9610  1e67 4d            	tnz	a
9611  1e68 2a01          	jrpl	L274
9612  1e6a 5a            	decw	x
9613  1e6b               L274:
9614  1e6b 02            	rlwa	x,a
9615  1e6c cd0000        	call	c_idiv
9617  1e6f 9f            	ld	a,xl
9618  1e70 4e            	swap	a
9619  1e71 a4f0          	and	a,#240
9620  1e73 1b01          	add	a,(OFST-2,sp)
9621  1e75 97            	ld	xl,a
9622  1e76 a601          	ld	a,#1
9623  1e78 95            	ld	xh,a
9624  1e79 cd0000        	call	__ds1307_write_byte
9626                     ; 1457 				_ds1307_write_byte(0,0);
9628  1e7c 5f            	clrw	x
9629  1e7d 4f            	clr	a
9630  1e7e 95            	ld	xh,a
9631  1e7f cd0000        	call	__ds1307_write_byte
9633  1e82               L5373:
9634                     ; 1459 			if((but==butD)||(but==butD_))
9636  1e82 b600          	ld	a,_but
9637  1e84 a1f7          	cp	a,#247
9638  1e86 2709          	jreq	L3473
9640  1e88 b600          	ld	a,_but
9641  1e8a a177          	cp	a,#119
9642  1e8c 2703          	jreq	L646
9643  1e8e cc2646        	jp	L3343
9644  1e91               L646:
9645  1e91               L3473:
9646                     ; 1461 				temp--;
9648  1e91 0a03          	dec	(OFST+0,sp)
9649                     ; 1462 				gran_ring_char(&temp,0,59);
9651  1e93 4b3b          	push	#59
9652  1e95 4b00          	push	#0
9653  1e97 96            	ldw	x,sp
9654  1e98 1c0005        	addw	x,#OFST+2
9655  1e9b cd0000        	call	_gran_ring_char
9657  1e9e 85            	popw	x
9658                     ; 1463 				_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));
9660  1e9f 7b03          	ld	a,(OFST+0,sp)
9661  1ea1 ae000a        	ldw	x,#10
9662  1ea4 51            	exgw	x,y
9663  1ea5 5f            	clrw	x
9664  1ea6 4d            	tnz	a
9665  1ea7 2a01          	jrpl	L474
9666  1ea9 5a            	decw	x
9667  1eaa               L474:
9668  1eaa 02            	rlwa	x,a
9669  1eab cd0000        	call	c_idiv
9671  1eae 909f          	ld	a,yl
9672  1eb0 6b01          	ld	(OFST-2,sp),a
9673  1eb2 7b03          	ld	a,(OFST+0,sp)
9674  1eb4 ae000a        	ldw	x,#10
9675  1eb7 51            	exgw	x,y
9676  1eb8 5f            	clrw	x
9677  1eb9 4d            	tnz	a
9678  1eba 2a01          	jrpl	L674
9679  1ebc 5a            	decw	x
9680  1ebd               L674:
9681  1ebd 02            	rlwa	x,a
9682  1ebe cd0000        	call	c_idiv
9684  1ec1 9f            	ld	a,xl
9685  1ec2 4e            	swap	a
9686  1ec3 a4f0          	and	a,#240
9687  1ec5 1b01          	add	a,(OFST-2,sp)
9688  1ec7 97            	ld	xl,a
9689  1ec8 a601          	ld	a,#1
9690  1eca 95            	ld	xh,a
9691  1ecb cd0000        	call	__ds1307_write_byte
9693                     ; 1464 				_ds1307_write_byte(0,0);
9695  1ece 5f            	clrw	x
9696  1ecf 4f            	clr	a
9697  1ed0 95            	ld	xh,a
9698  1ed1 cd0000        	call	__ds1307_write_byte
9700  1ed4 ac462646      	jpf	L3343
9701  1ed8               L3373:
9702                     ; 1467 		else if(sub_ind==9)
9704  1ed8 b662          	ld	a,_a_ind+1
9705  1eda a109          	cp	a,#9
9706  1edc 2703          	jreq	L056
9707  1ede cc2646        	jp	L3343
9708  1ee1               L056:
9709                     ; 1470 			temp=time_day_of_week;
9711  1ee1 b60e          	ld	a,_time_day_of_week
9712  1ee3 6b03          	ld	(OFST+0,sp),a
9713                     ; 1472 			if((but==butU)||(but==butU_))
9715  1ee5 b600          	ld	a,_but
9716  1ee7 a1fb          	cp	a,#251
9717  1ee9 2706          	jreq	L3573
9719  1eeb b600          	ld	a,_but
9720  1eed a17b          	cp	a,#123
9721  1eef 2619          	jrne	L1573
9722  1ef1               L3573:
9723                     ; 1474 				temp++;
9725  1ef1 0c03          	inc	(OFST+0,sp)
9726                     ; 1475 				gran_ring_char(&temp,1,7);
9728  1ef3 4b07          	push	#7
9729  1ef5 4b01          	push	#1
9730  1ef7 96            	ldw	x,sp
9731  1ef8 1c0005        	addw	x,#OFST+2
9732  1efb cd0000        	call	_gran_ring_char
9734  1efe 85            	popw	x
9735                     ; 1476 				_ds1307_write_byte(3,temp&0x07);
9737  1eff 7b03          	ld	a,(OFST+0,sp)
9738  1f01 a407          	and	a,#7
9739  1f03 97            	ld	xl,a
9740  1f04 a603          	ld	a,#3
9741  1f06 95            	ld	xh,a
9742  1f07 cd0000        	call	__ds1307_write_byte
9744  1f0a               L1573:
9745                     ; 1478 			if((but==butD)||(but==butD_))
9747  1f0a b600          	ld	a,_but
9748  1f0c a1f7          	cp	a,#247
9749  1f0e 2709          	jreq	L7573
9751  1f10 b600          	ld	a,_but
9752  1f12 a177          	cp	a,#119
9753  1f14 2703          	jreq	L256
9754  1f16 cc2646        	jp	L3343
9755  1f19               L256:
9756  1f19               L7573:
9757                     ; 1480 				temp--;
9759  1f19 0a03          	dec	(OFST+0,sp)
9760                     ; 1481 				gran_ring_char(&temp,1,7);
9762  1f1b 4b07          	push	#7
9763  1f1d 4b01          	push	#1
9764  1f1f 96            	ldw	x,sp
9765  1f20 1c0005        	addw	x,#OFST+2
9766  1f23 cd0000        	call	_gran_ring_char
9768  1f26 85            	popw	x
9769                     ; 1482 				_ds1307_write_byte(3,temp&0x07);
9771  1f27 7b03          	ld	a,(OFST+0,sp)
9772  1f29 a407          	and	a,#7
9773  1f2b 97            	ld	xl,a
9774  1f2c a603          	ld	a,#3
9775  1f2e 95            	ld	xh,a
9776  1f2f cd0000        	call	__ds1307_write_byte
9778  1f32 ac462646      	jpf	L3343
9779  1f36               L5453:
9780                     ; 1487 else if(ind==iSetTable)
9782  1f36 b661          	ld	a,_a_ind
9783  1f38 a105          	cp	a,#5
9784  1f3a 2703          	jreq	L456
9785  1f3c cc1fd0        	jp	L3673
9786  1f3f               L456:
9787                     ; 1489 	if((but==butU)/*||(but==butU_)*/)
9789  1f3f b600          	ld	a,_but
9790  1f41 a1fb          	cp	a,#251
9791  1f43 2617          	jrne	L5673
9792                     ; 1491 		sub_ind++;
9794  1f45 3c62          	inc	_a_ind+1
9795                     ; 1492 		gran_char(&sub_ind,0,34);
9797  1f47 4b22          	push	#34
9798  1f49 4b00          	push	#0
9799  1f4b ae0062        	ldw	x,#_a_ind+1
9800  1f4e cd0000        	call	_gran_char
9802  1f51 85            	popw	x
9803                     ; 1493 		clear_ind();
9805  1f52 cd0000        	call	_clear_ind
9807                     ; 1494 		ind_hndl();
9809  1f55 cd051e        	call	_ind_hndl
9812  1f58 ac462646      	jpf	L3343
9813  1f5c               L5673:
9814                     ; 1496 	else if((but==butD)/*||(but==butD_)*/)
9816  1f5c b600          	ld	a,_but
9817  1f5e a1f7          	cp	a,#247
9818  1f60 2617          	jrne	L1773
9819                     ; 1498 		sub_ind--;
9821  1f62 3a62          	dec	_a_ind+1
9822                     ; 1499 		gran_char(&sub_ind,0,34);
9824  1f64 4b22          	push	#34
9825  1f66 4b00          	push	#0
9826  1f68 ae0062        	ldw	x,#_a_ind+1
9827  1f6b cd0000        	call	_gran_char
9829  1f6e 85            	popw	x
9830                     ; 1500 		clear_ind();
9832  1f6f cd0000        	call	_clear_ind
9834                     ; 1501 		ind_hndl();
9836  1f72 cd051e        	call	_ind_hndl
9839  1f75 ac462646      	jpf	L3343
9840  1f79               L1773:
9841                     ; 1503 	else if(but==butM)
9843  1f79 b600          	ld	a,_but
9844  1f7b a1fd          	cp	a,#253
9845  1f7d 2616          	jrne	L5773
9846                     ; 1505 		if(sub_ind1==0)sub_ind1=1;
9848  1f7f 3d63          	tnz	_a_ind+2
9849  1f81 2606          	jrne	L7773
9852  1f83 35010063      	mov	_a_ind+2,#1
9854  1f87 2002          	jra	L1004
9855  1f89               L7773:
9856                     ; 1506 		else sub_ind1=0;
9858  1f89 3f63          	clr	_a_ind+2
9859  1f8b               L1004:
9860                     ; 1507 		clear_ind();
9862  1f8b cd0000        	call	_clear_ind
9864                     ; 1508 		ind_hndl();
9866  1f8e cd051e        	call	_ind_hndl
9869  1f91 ac462646      	jpf	L3343
9870  1f95               L5773:
9871                     ; 1510 	else if((but==butD_)/*||(but==butD_)*/)
9873  1f95 b600          	ld	a,_but
9874  1f97 a177          	cp	a,#119
9875  1f99 2610          	jrne	L5004
9876                     ; 1512 		tree_down(0,0);
9878  1f9b 5f            	clrw	x
9879  1f9c 4f            	clr	a
9880  1f9d 95            	ld	xh,a
9881  1f9e cd0000        	call	_tree_down
9883                     ; 1513 		clear_ind();
9885  1fa1 cd0000        	call	_clear_ind
9887                     ; 1514 		ind_hndl();
9889  1fa4 cd051e        	call	_ind_hndl
9892  1fa7 ac462646      	jpf	L3343
9893  1fab               L5004:
9894                     ; 1516 	else if(but==butUD_)
9896  1fab b600          	ld	a,_but
9897  1fad a173          	cp	a,#115
9898  1faf 2603          	jrne	L656
9899  1fb1 cc2646        	jp	L3343
9900  1fb4               L656:
9902                     ; 1597 	else if(but==butM_)
9904  1fb4 b600          	ld	a,_but
9905  1fb6 a17d          	cp	a,#125
9906  1fb8 2703          	jreq	L066
9907  1fba cc2646        	jp	L3343
9908  1fbd               L066:
9909                     ; 1599 		tree_up(iSetTable_,sub_ind,0,sub_ind1);
9911  1fbd 3b0063        	push	_a_ind+2
9912  1fc0 4b00          	push	#0
9913  1fc2 b662          	ld	a,_a_ind+1
9914  1fc4 97            	ld	xl,a
9915  1fc5 a606          	ld	a,#6
9916  1fc7 95            	ld	xh,a
9917  1fc8 cd0000        	call	_tree_up
9919  1fcb 85            	popw	x
9920  1fcc ac462646      	jpf	L3343
9921  1fd0               L3673:
9922                     ; 1603 else if(ind==iSetTable_)
9924  1fd0 b661          	ld	a,_a_ind
9925  1fd2 a106          	cp	a,#6
9926  1fd4 2703          	jreq	L266
9927  1fd6 cc225b        	jp	L1204
9928  1fd9               L266:
9929                     ; 1605 	if(but==butM_)
9931  1fd9 b600          	ld	a,_but
9932  1fdb a17d          	cp	a,#125
9933  1fdd 260a          	jrne	L3204
9934                     ; 1607 		tree_down(0,0);
9936  1fdf 5f            	clrw	x
9937  1fe0 4f            	clr	a
9938  1fe1 95            	ld	xh,a
9939  1fe2 cd0000        	call	_tree_down
9942  1fe5 ac462646      	jpf	L3343
9943  1fe9               L3204:
9944                     ; 1609 	else if(but==butM)
9946  1fe9 b600          	ld	a,_but
9947  1feb a1fd          	cp	a,#253
9948  1fed 2618          	jrne	L7204
9949                     ; 1611 		if(sub_ind1==1)sub_ind1=0;
9951  1fef b663          	ld	a,_a_ind+2
9952  1ff1 a101          	cp	a,#1
9953  1ff3 2604          	jrne	L1304
9956  1ff5 3f63          	clr	_a_ind+2
9958  1ff7 2004          	jra	L3304
9959  1ff9               L1304:
9960                     ; 1612 		else sub_ind1=1;
9962  1ff9 35010063      	mov	_a_ind+2,#1
9963  1ffd               L3304:
9964                     ; 1613 		clear_ind();
9966  1ffd cd0000        	call	_clear_ind
9968                     ; 1614 		ind_hndl();
9970  2000 cd051e        	call	_ind_hndl
9973  2003 ac462646      	jpf	L3343
9974  2007               L7204:
9975                     ; 1616 	else if(sub_ind1==0)
9977  2007 3d63          	tnz	_a_ind+2
9978  2009 2703          	jreq	L466
9979  200b cc213e        	jp	L7304
9980  200e               L466:
9981                     ; 1621 		num_of_day=sub_ind/5;
9983  200e b662          	ld	a,_a_ind+1
9984  2010 ae0005        	ldw	x,#5
9985  2013 51            	exgw	x,y
9986  2014 5f            	clrw	x
9987  2015 4d            	tnz	a
9988  2016 2a01          	jrpl	L005
9989  2018 5a            	decw	x
9990  2019               L005:
9991  2019 02            	rlwa	x,a
9992  201a cd0000        	call	c_idiv
9994  201d 9f            	ld	a,xl
9995  201e 6b02          	ld	(OFST-1,sp),a
9996                     ; 1622 		num_of_set=sub_ind%5;
9998  2020 b662          	ld	a,_a_ind+1
9999  2022 ae0005        	ldw	x,#5
10000  2025 51            	exgw	x,y
10001  2026 5f            	clrw	x
10002  2027 4d            	tnz	a
10003  2028 2a01          	jrpl	L205
10004  202a 5a            	decw	x
10005  202b               L205:
10006  202b 02            	rlwa	x,a
10007  202c cd0000        	call	c_idiv
10009  202f 909f          	ld	a,yl
10010  2031 6b03          	ld	(OFST+0,sp),a
10011                     ; 1624 		if((but==butU)||(but==butU_))
10013  2033 b600          	ld	a,_but
10014  2035 a1fb          	cp	a,#251
10015  2037 2706          	jreq	L3404
10017  2039 b600          	ld	a,_but
10018  203b a17b          	cp	a,#123
10019  203d 2674          	jrne	L1404
10020  203f               L3404:
10021                     ; 1626 			tempUC=TABLE_TIME_EE[num_of_day][num_of_set];
10023  203f 7b02          	ld	a,(OFST-1,sp)
10024  2041 97            	ld	xl,a
10025  2042 a605          	ld	a,#5
10026  2044 42            	mul	x,a
10027  2045 01            	rrwa	x,a
10028  2046 1b03          	add	a,(OFST+0,sp)
10029  2048 2401          	jrnc	L405
10030  204a 5c            	incw	x
10031  204b               L405:
10032  204b 02            	rlwa	x,a
10033  204c d64020        	ld	a,(_TABLE_TIME_EE,x)
10034  204f b701          	ld	_tempUC,a
10035                     ; 1627 			tempUC++;
10037  2051 3c01          	inc	_tempUC
10038                     ; 1628 			if(tempUC>TABLE_TIME_EE_MAX[num_of_set])tempUC=TABLE_TIME_EE_MAX[num_of_set];
10040  2053 7b03          	ld	a,(OFST+0,sp)
10041  2055 5f            	clrw	x
10042  2056 97            	ld	xl,a
10043  2057 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10044  205a b101          	cp	a,_tempUC
10045  205c 2409          	jruge	L5404
10048  205e 7b03          	ld	a,(OFST+0,sp)
10049  2060 5f            	clrw	x
10050  2061 97            	ld	xl,a
10051  2062 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10052  2065 b701          	ld	_tempUC,a
10053  2067               L5404:
10054                     ; 1629 			if(tempUC<TABLE_TIME_EE_MIN[num_of_set])tempUC=TABLE_TIME_EE_MIN[num_of_set];
10056  2067 7b03          	ld	a,(OFST+0,sp)
10057  2069 5f            	clrw	x
10058  206a 97            	ld	xl,a
10059  206b d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10060  206e b101          	cp	a,_tempUC
10061  2070 2309          	jrule	L7404
10064  2072 7b03          	ld	a,(OFST+0,sp)
10065  2074 5f            	clrw	x
10066  2075 97            	ld	xl,a
10067  2076 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10068  2079 b701          	ld	_tempUC,a
10069  207b               L7404:
10070                     ; 1630 			if(TABLE_TIME_EE[num_of_day][num_of_set]!=tempUC)TABLE_TIME_EE[num_of_day][num_of_set]=tempUC;
10072  207b 7b02          	ld	a,(OFST-1,sp)
10073  207d 97            	ld	xl,a
10074  207e a605          	ld	a,#5
10075  2080 42            	mul	x,a
10076  2081 01            	rrwa	x,a
10077  2082 1b03          	add	a,(OFST+0,sp)
10078  2084 2401          	jrnc	L605
10079  2086 5c            	incw	x
10080  2087               L605:
10081  2087 02            	rlwa	x,a
10082  2088 d64020        	ld	a,(_TABLE_TIME_EE,x)
10083  208b b101          	cp	a,_tempUC
10084  208d 2715          	jreq	L1504
10087  208f 7b02          	ld	a,(OFST-1,sp)
10088  2091 97            	ld	xl,a
10089  2092 a605          	ld	a,#5
10090  2094 42            	mul	x,a
10091  2095 01            	rrwa	x,a
10092  2096 1b03          	add	a,(OFST+0,sp)
10093  2098 2401          	jrnc	L015
10094  209a 5c            	incw	x
10095  209b               L015:
10096  209b 02            	rlwa	x,a
10097  209c b601          	ld	a,_tempUC
10098  209e 1c4020        	addw	x,#_TABLE_TIME_EE
10099  20a1 cd0000        	call	c_eewrc
10101  20a4               L1504:
10102                     ; 1631 			speed=1;
10104  20a4 35010000      	mov	_speed,#1
10105                     ; 1632 			HUMAN_SET_EE=1;
10107  20a8 ae0001        	ldw	x,#1
10108  20ab 89            	pushw	x
10109  20ac ae401e        	ldw	x,#_HUMAN_SET_EE
10110  20af cd0000        	call	c_eewrw
10112  20b2 85            	popw	x
10113  20b3               L1404:
10114                     ; 1634 		if((but==butD)||(but==butD_))
10116  20b3 b600          	ld	a,_but
10117  20b5 a1f7          	cp	a,#247
10118  20b7 2709          	jreq	L5504
10120  20b9 b600          	ld	a,_but
10121  20bb a177          	cp	a,#119
10122  20bd 2703          	jreq	L666
10123  20bf cc2646        	jp	L3343
10124  20c2               L666:
10125  20c2               L5504:
10126                     ; 1636 			tempUC=TABLE_TIME_EE[num_of_day][num_of_set];
10128  20c2 7b02          	ld	a,(OFST-1,sp)
10129  20c4 97            	ld	xl,a
10130  20c5 a605          	ld	a,#5
10131  20c7 42            	mul	x,a
10132  20c8 01            	rrwa	x,a
10133  20c9 1b03          	add	a,(OFST+0,sp)
10134  20cb 2401          	jrnc	L215
10135  20cd 5c            	incw	x
10136  20ce               L215:
10137  20ce 02            	rlwa	x,a
10138  20cf d64020        	ld	a,(_TABLE_TIME_EE,x)
10139  20d2 b701          	ld	_tempUC,a
10140                     ; 1637 			if(tempUC)tempUC--;
10142  20d4 3d01          	tnz	_tempUC
10143  20d6 2702          	jreq	L7504
10146  20d8 3a01          	dec	_tempUC
10147  20da               L7504:
10148                     ; 1638 			if(tempUC>TABLE_TIME_EE_MAX[num_of_set])tempUC=TABLE_TIME_EE_MAX[num_of_set];
10150  20da 7b03          	ld	a,(OFST+0,sp)
10151  20dc 5f            	clrw	x
10152  20dd 97            	ld	xl,a
10153  20de d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10154  20e1 b101          	cp	a,_tempUC
10155  20e3 2409          	jruge	L1604
10158  20e5 7b03          	ld	a,(OFST+0,sp)
10159  20e7 5f            	clrw	x
10160  20e8 97            	ld	xl,a
10161  20e9 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10162  20ec b701          	ld	_tempUC,a
10163  20ee               L1604:
10164                     ; 1639 			if(tempUC<TABLE_TIME_EE_MIN[num_of_set])tempUC=TABLE_TIME_EE_MIN[num_of_set];
10166  20ee 7b03          	ld	a,(OFST+0,sp)
10167  20f0 5f            	clrw	x
10168  20f1 97            	ld	xl,a
10169  20f2 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10170  20f5 b101          	cp	a,_tempUC
10171  20f7 2309          	jrule	L3604
10174  20f9 7b03          	ld	a,(OFST+0,sp)
10175  20fb 5f            	clrw	x
10176  20fc 97            	ld	xl,a
10177  20fd d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10178  2100 b701          	ld	_tempUC,a
10179  2102               L3604:
10180                     ; 1640 			if(TABLE_TIME_EE[num_of_day][num_of_set]!=tempUC)TABLE_TIME_EE[num_of_day][num_of_set]=tempUC;
10182  2102 7b02          	ld	a,(OFST-1,sp)
10183  2104 97            	ld	xl,a
10184  2105 a605          	ld	a,#5
10185  2107 42            	mul	x,a
10186  2108 01            	rrwa	x,a
10187  2109 1b03          	add	a,(OFST+0,sp)
10188  210b 2401          	jrnc	L415
10189  210d 5c            	incw	x
10190  210e               L415:
10191  210e 02            	rlwa	x,a
10192  210f d64020        	ld	a,(_TABLE_TIME_EE,x)
10193  2112 b101          	cp	a,_tempUC
10194  2114 2715          	jreq	L5604
10197  2116 7b02          	ld	a,(OFST-1,sp)
10198  2118 97            	ld	xl,a
10199  2119 a605          	ld	a,#5
10200  211b 42            	mul	x,a
10201  211c 01            	rrwa	x,a
10202  211d 1b03          	add	a,(OFST+0,sp)
10203  211f 2401          	jrnc	L615
10204  2121 5c            	incw	x
10205  2122               L615:
10206  2122 02            	rlwa	x,a
10207  2123 b601          	ld	a,_tempUC
10208  2125 1c4020        	addw	x,#_TABLE_TIME_EE
10209  2128 cd0000        	call	c_eewrc
10211  212b               L5604:
10212                     ; 1641 			speed=1;
10214  212b 35010000      	mov	_speed,#1
10215                     ; 1642 			HUMAN_SET_EE=1;
10217  212f ae0001        	ldw	x,#1
10218  2132 89            	pushw	x
10219  2133 ae401e        	ldw	x,#_HUMAN_SET_EE
10220  2136 cd0000        	call	c_eewrw
10222  2139 85            	popw	x
10223  213a ac462646      	jpf	L3343
10224  213e               L7304:
10225                     ; 1645 	else if(sub_ind1==1)
10227  213e b663          	ld	a,_a_ind+2
10228  2140 a101          	cp	a,#1
10229  2142 2703          	jreq	L076
10230  2144 cc2646        	jp	L3343
10231  2147               L076:
10232                     ; 1650 		num_of_day=sub_ind/5;
10234  2147 b662          	ld	a,_a_ind+1
10235  2149 ae0005        	ldw	x,#5
10236  214c 51            	exgw	x,y
10237  214d 5f            	clrw	x
10238  214e 4d            	tnz	a
10239  214f 2a01          	jrpl	L025
10240  2151 5a            	decw	x
10241  2152               L025:
10242  2152 02            	rlwa	x,a
10243  2153 cd0000        	call	c_idiv
10245  2156 9f            	ld	a,xl
10246  2157 6b02          	ld	(OFST-1,sp),a
10247                     ; 1651 		num_of_set=sub_ind%5;
10249  2159 b662          	ld	a,_a_ind+1
10250  215b ae0005        	ldw	x,#5
10251  215e 51            	exgw	x,y
10252  215f 5f            	clrw	x
10253  2160 4d            	tnz	a
10254  2161 2a01          	jrpl	L225
10255  2163 5a            	decw	x
10256  2164               L225:
10257  2164 02            	rlwa	x,a
10258  2165 cd0000        	call	c_idiv
10260  2168 909f          	ld	a,yl
10261  216a 6b03          	ld	(OFST+0,sp),a
10262                     ; 1653 		if((but==butU)||(but==butU_))
10264  216c b600          	ld	a,_but
10265  216e a1fb          	cp	a,#251
10266  2170 2706          	jreq	L5704
10268  2172 b600          	ld	a,_but
10269  2174 a17b          	cp	a,#123
10270  2176 2668          	jrne	L3704
10271  2178               L5704:
10272                     ; 1655 			tempUC=TABLE_TEMPER_EE[num_of_day][num_of_set];
10274  2178 7b02          	ld	a,(OFST-1,sp)
10275  217a 97            	ld	xl,a
10276  217b a605          	ld	a,#5
10277  217d 42            	mul	x,a
10278  217e 01            	rrwa	x,a
10279  217f 1b03          	add	a,(OFST+0,sp)
10280  2181 2401          	jrnc	L425
10281  2183 5c            	incw	x
10282  2184               L425:
10283  2184 02            	rlwa	x,a
10284  2185 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10285  2188 b701          	ld	_tempUC,a
10286                     ; 1656 			if(tempUC)tempUC++;
10288  218a 3d01          	tnz	_tempUC
10289  218c 2702          	jreq	L7704
10292  218e 3c01          	inc	_tempUC
10293  2190               L7704:
10294                     ; 1657 			if(tempUC>35)tempUC=35;
10296  2190 b601          	ld	a,_tempUC
10297  2192 a124          	cp	a,#36
10298  2194 2504          	jrult	L1014
10301  2196 35230001      	mov	_tempUC,#35
10302  219a               L1014:
10303                     ; 1658 			if(tempUC<5)tempUC=5;
10305  219a b601          	ld	a,_tempUC
10306  219c a105          	cp	a,#5
10307  219e 2404          	jruge	L3014
10310  21a0 35050001      	mov	_tempUC,#5
10311  21a4               L3014:
10312                     ; 1659 			if(TABLE_TEMPER_EE[num_of_day][num_of_set]!=tempUC)TABLE_TEMPER_EE[num_of_day][num_of_set]=tempUC;
10314  21a4 7b02          	ld	a,(OFST-1,sp)
10315  21a6 97            	ld	xl,a
10316  21a7 a605          	ld	a,#5
10317  21a9 42            	mul	x,a
10318  21aa 01            	rrwa	x,a
10319  21ab 1b03          	add	a,(OFST+0,sp)
10320  21ad 2401          	jrnc	L625
10321  21af 5c            	incw	x
10322  21b0               L625:
10323  21b0 02            	rlwa	x,a
10324  21b1 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10325  21b4 5f            	clrw	x
10326  21b5 4d            	tnz	a
10327  21b6 2a01          	jrpl	L035
10328  21b8 53            	cplw	x
10329  21b9               L035:
10330  21b9 97            	ld	xl,a
10331  21ba b601          	ld	a,_tempUC
10332  21bc 905f          	clrw	y
10333  21be 9097          	ld	yl,a
10334  21c0 90bf00        	ldw	c_y,y
10335  21c3 b300          	cpw	x,c_y
10336  21c5 2715          	jreq	L5014
10339  21c7 7b02          	ld	a,(OFST-1,sp)
10340  21c9 97            	ld	xl,a
10341  21ca a605          	ld	a,#5
10342  21cc 42            	mul	x,a
10343  21cd 01            	rrwa	x,a
10344  21ce 1b03          	add	a,(OFST+0,sp)
10345  21d0 2401          	jrnc	L235
10346  21d2 5c            	incw	x
10347  21d3               L235:
10348  21d3 02            	rlwa	x,a
10349  21d4 b601          	ld	a,_tempUC
10350  21d6 1c4048        	addw	x,#_TABLE_TEMPER_EE
10351  21d9 cd0000        	call	c_eewrc
10353  21dc               L5014:
10354                     ; 1660 			speed=1;
10356  21dc 35010000      	mov	_speed,#1
10357  21e0               L3704:
10358                     ; 1662 		if((but==butD)||(but==butD_))
10360  21e0 b600          	ld	a,_but
10361  21e2 a1f7          	cp	a,#247
10362  21e4 2709          	jreq	L1114
10364  21e6 b600          	ld	a,_but
10365  21e8 a177          	cp	a,#119
10366  21ea 2703          	jreq	L276
10367  21ec cc2646        	jp	L3343
10368  21ef               L276:
10369  21ef               L1114:
10370                     ; 1664 			tempUC=TABLE_TEMPER_EE[num_of_day][num_of_set];
10372  21ef 7b02          	ld	a,(OFST-1,sp)
10373  21f1 97            	ld	xl,a
10374  21f2 a605          	ld	a,#5
10375  21f4 42            	mul	x,a
10376  21f5 01            	rrwa	x,a
10377  21f6 1b03          	add	a,(OFST+0,sp)
10378  21f8 2401          	jrnc	L435
10379  21fa 5c            	incw	x
10380  21fb               L435:
10381  21fb 02            	rlwa	x,a
10382  21fc d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10383  21ff b701          	ld	_tempUC,a
10384                     ; 1665 			if(tempUC)tempUC--;
10386  2201 3d01          	tnz	_tempUC
10387  2203 2702          	jreq	L3114
10390  2205 3a01          	dec	_tempUC
10391  2207               L3114:
10392                     ; 1666 			if(tempUC>35)tempUC=35;
10394  2207 b601          	ld	a,_tempUC
10395  2209 a124          	cp	a,#36
10396  220b 2504          	jrult	L5114
10399  220d 35230001      	mov	_tempUC,#35
10400  2211               L5114:
10401                     ; 1667 			if(tempUC<5)tempUC=5;
10403  2211 b601          	ld	a,_tempUC
10404  2213 a105          	cp	a,#5
10405  2215 2404          	jruge	L7114
10408  2217 35050001      	mov	_tempUC,#5
10409  221b               L7114:
10410                     ; 1668 			if(TABLE_TEMPER_EE[num_of_day][num_of_set]!=tempUC)TABLE_TEMPER_EE[num_of_day][num_of_set]=tempUC;
10412  221b 7b02          	ld	a,(OFST-1,sp)
10413  221d 97            	ld	xl,a
10414  221e a605          	ld	a,#5
10415  2220 42            	mul	x,a
10416  2221 01            	rrwa	x,a
10417  2222 1b03          	add	a,(OFST+0,sp)
10418  2224 2401          	jrnc	L635
10419  2226 5c            	incw	x
10420  2227               L635:
10421  2227 02            	rlwa	x,a
10422  2228 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10423  222b 5f            	clrw	x
10424  222c 4d            	tnz	a
10425  222d 2a01          	jrpl	L045
10426  222f 53            	cplw	x
10427  2230               L045:
10428  2230 97            	ld	xl,a
10429  2231 b601          	ld	a,_tempUC
10430  2233 905f          	clrw	y
10431  2235 9097          	ld	yl,a
10432  2237 90bf00        	ldw	c_y,y
10433  223a b300          	cpw	x,c_y
10434  223c 2715          	jreq	L1214
10437  223e 7b02          	ld	a,(OFST-1,sp)
10438  2240 97            	ld	xl,a
10439  2241 a605          	ld	a,#5
10440  2243 42            	mul	x,a
10441  2244 01            	rrwa	x,a
10442  2245 1b03          	add	a,(OFST+0,sp)
10443  2247 2401          	jrnc	L245
10444  2249 5c            	incw	x
10445  224a               L245:
10446  224a 02            	rlwa	x,a
10447  224b b601          	ld	a,_tempUC
10448  224d 1c4048        	addw	x,#_TABLE_TEMPER_EE
10449  2250 cd0000        	call	c_eewrc
10451  2253               L1214:
10452                     ; 1669 			speed=1;
10454  2253 35010000      	mov	_speed,#1
10455  2257 ac462646      	jpf	L3343
10456  225b               L1204:
10457                     ; 1673 else if(ind==iDeb)
10459  225b b661          	ld	a,_a_ind
10460  225d a107          	cp	a,#7
10461  225f 2703          	jreq	L476
10462  2261 cc22f5        	jp	L5214
10463  2264               L476:
10464                     ; 1675 	if(but==butU)
10466  2264 b600          	ld	a,_but
10467  2266 a1fb          	cp	a,#251
10468  2268 2617          	jrne	L7214
10469                     ; 1677 		sub_ind++;
10471  226a 3c62          	inc	_a_ind+1
10472                     ; 1678 		gran_char(&sub_ind,0,12);
10474  226c 4b0c          	push	#12
10475  226e 4b00          	push	#0
10476  2270 ae0062        	ldw	x,#_a_ind+1
10477  2273 cd0000        	call	_gran_char
10479  2276 85            	popw	x
10480                     ; 1679 		clear_ind();
10482  2277 cd0000        	call	_clear_ind
10484                     ; 1680 		ind_hndl();
10486  227a cd051e        	call	_ind_hndl
10489  227d ac462646      	jpf	L3343
10490  2281               L7214:
10491                     ; 1682 	else if(but==butD)
10493  2281 b600          	ld	a,_but
10494  2283 a1f7          	cp	a,#247
10495  2285 2617          	jrne	L3314
10496                     ; 1684 		sub_ind--;
10498  2287 3a62          	dec	_a_ind+1
10499                     ; 1685 		gran_char(&sub_ind,0,12);
10501  2289 4b0c          	push	#12
10502  228b 4b00          	push	#0
10503  228d ae0062        	ldw	x,#_a_ind+1
10504  2290 cd0000        	call	_gran_char
10506  2293 85            	popw	x
10507                     ; 1686 		clear_ind();
10509  2294 cd0000        	call	_clear_ind
10511                     ; 1687 		ind_hndl();
10513  2297 cd051e        	call	_ind_hndl
10516  229a ac462646      	jpf	L3343
10517  229e               L3314:
10518                     ; 1689 	else if(but==butD_)
10520  229e b600          	ld	a,_but
10521  22a0 a177          	cp	a,#119
10522  22a2 260b          	jrne	L7314
10523                     ; 1691 		tree_down(-1,0);
10525  22a4 5f            	clrw	x
10526  22a5 a6ff          	ld	a,#255
10527  22a7 95            	ld	xh,a
10528  22a8 cd0000        	call	_tree_down
10531  22ab ac462646      	jpf	L3343
10532  22af               L7314:
10533                     ; 1693 	else if(but==butM)
10535  22af b600          	ld	a,_but
10536  22b1 a1fd          	cp	a,#253
10537  22b3 2610          	jrne	L3414
10538                     ; 1695 		tree_up(iModem_deb,0,0,0);
10540  22b5 4b00          	push	#0
10541  22b7 4b00          	push	#0
10542  22b9 5f            	clrw	x
10543  22ba a60a          	ld	a,#10
10544  22bc 95            	ld	xh,a
10545  22bd cd0000        	call	_tree_up
10547  22c0 85            	popw	x
10549  22c1 ac462646      	jpf	L3343
10550  22c5               L3414:
10551                     ; 1700 	else if(sub_ind==8)
10553  22c5 b662          	ld	a,_a_ind+1
10554  22c7 a108          	cp	a,#8
10555  22c9 2703          	jreq	L676
10556  22cb cc2646        	jp	L3343
10557  22ce               L676:
10558                     ; 1702 		if((but==butU)||(but==butD)||(but==butM)||(but==butON))	
10560  22ce b600          	ld	a,_but
10561  22d0 a1fb          	cp	a,#251
10562  22d2 2715          	jreq	L3514
10564  22d4 b600          	ld	a,_but
10565  22d6 a1f7          	cp	a,#247
10566  22d8 270f          	jreq	L3514
10568  22da b600          	ld	a,_but
10569  22dc a1fd          	cp	a,#253
10570  22de 2709          	jreq	L3514
10572  22e0 b600          	ld	a,_but
10573  22e2 a1fe          	cp	a,#254
10574  22e4 2703          	jreq	L007
10575  22e6 cc2646        	jp	L3343
10576  22e9               L007:
10577  22e9               L3514:
10578                     ; 1704 			beepTestCnt=10;
10580  22e9 350a0004      	mov	_beepTestCnt,#10
10581                     ; 1705 			ind_check_cnt=0;
10583  22ed 5f            	clrw	x
10584  22ee cf0002        	ldw	_ind_check_cnt,x
10585  22f1 ac462646      	jpf	L3343
10586  22f5               L5214:
10587                     ; 1710 else if(ind==iModem_deb)
10589  22f5 b661          	ld	a,_a_ind
10590  22f7 a10a          	cp	a,#10
10591  22f9 2703          	jreq	L207
10592  22fb cc23ac        	jp	L3614
10593  22fe               L207:
10594                     ; 1712 	if(but==butU)
10596  22fe b600          	ld	a,_but
10597  2300 a1fb          	cp	a,#251
10598  2302 2603          	jrne	L407
10599  2304 cc2646        	jp	L3343
10600  2307               L407:
10602                     ; 1723 	else if(but==butD)
10604  2307 b600          	ld	a,_but
10605  2309 a1f7          	cp	a,#247
10606  230b 2603          	jrne	L607
10607  230d cc2646        	jp	L3343
10608  2310               L607:
10610                     ; 1731 	else if(but==butUD_)
10612  2310 b600          	ld	a,_but
10613  2312 a173          	cp	a,#115
10614  2314 260a          	jrne	L5714
10615                     ; 1733 		tree_down(0,0);
10617  2316 5f            	clrw	x
10618  2317 4f            	clr	a
10619  2318 95            	ld	xh,a
10620  2319 cd0000        	call	_tree_down
10623  231c ac462646      	jpf	L3343
10624  2320               L5714:
10625                     ; 1751 	else if(but==butD_)
10627  2320 b600          	ld	a,_but
10628  2322 a177          	cp	a,#119
10629  2324 2616          	jrne	L1024
10630                     ; 1753 		AUTH_NUMBER_FLAGS=0;
10632  2326 4f            	clr	a
10633  2327 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
10634  232a cd0000        	call	c_eewrc
10636                     ; 1758 		HUMAN_SET_EE=1;
10638  232d ae0001        	ldw	x,#1
10639  2330 89            	pushw	x
10640  2331 ae401e        	ldw	x,#_HUMAN_SET_EE
10641  2334 cd0000        	call	c_eewrw
10643  2337 85            	popw	x
10645  2338 ac462646      	jpf	L3343
10646  233c               L1024:
10647                     ; 1760 	else if(but==butU_)
10649  233c b600          	ld	a,_but
10650  233e a17b          	cp	a,#123
10651  2340 261a          	jrne	L5024
10652                     ; 1762 		AUTH_NUMBER_FLAGS&=0x01;
10654  2342 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
10655  2345 a401          	and	a,#1
10656  2347 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
10657  234a cd0000        	call	c_eewrc
10659                     ; 1767 		HUMAN_SET_EE=1;
10661  234d ae0001        	ldw	x,#1
10662  2350 89            	pushw	x
10663  2351 ae401e        	ldw	x,#_HUMAN_SET_EE
10664  2354 cd0000        	call	c_eewrw
10666  2357 85            	popw	x
10668  2358 ac462646      	jpf	L3343
10669  235c               L5024:
10670                     ; 1769 	else if(but==butUD_)
10672  235c b600          	ld	a,_but
10673  235e a173          	cp	a,#115
10674  2360 2703          	jreq	L017
10675  2362 cc2646        	jp	L3343
10676  2365               L017:
10677                     ; 1771 		AUTH_NUMBER_FLAGS=0x0f;
10679  2365 a60f          	ld	a,#15
10680  2367 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
10681  236a cd0000        	call	c_eewrc
10683                     ; 1772 		memcpy(MAIN_NUMBER,"9139294352",10);
10685  236d ae000a        	ldw	x,#10
10686  2370               L445:
10687  2370 d60067        	ld	a,(L3124-1,x)
10688  2373 d74001        	ld	(_MAIN_NUMBER-1,x),a
10689  2376 5a            	decw	x
10690  2377 26f7          	jrne	L445
10691                     ; 1773 		memcpy(AUTH_NUMBER_1,"9134863890",10);
10693  2379 ae000a        	ldw	x,#10
10694  237c               L645:
10695  237c d6005c        	ld	a,(L5124-1,x)
10696  237f d7400b        	ld	(_AUTH_NUMBER_1-1,x),a
10697  2382 5a            	decw	x
10698  2383 26f7          	jrne	L645
10699                     ; 1774 		memcpy(AUTH_NUMBER_2,"9237328354",10);
10701  2385 ae000a        	ldw	x,#10
10702  2388               L055:
10703  2388 d60051        	ld	a,(L7124-1,x)
10704  238b d7406a        	ld	(_AUTH_NUMBER_2-1,x),a
10705  238e 5a            	decw	x
10706  238f 26f7          	jrne	L055
10707                     ; 1775 		memcpy(AUTH_NUMBER_3,"11234567890",10);
10709  2391 ae000a        	ldw	x,#10
10710  2394               L255:
10711  2394 d60045        	ld	a,(L1224-1,x)
10712  2397 d74074        	ld	(_AUTH_NUMBER_3-1,x),a
10713  239a 5a            	decw	x
10714  239b 26f7          	jrne	L255
10715                     ; 1776 		HUMAN_SET_EE=1;
10717  239d ae0001        	ldw	x,#1
10718  23a0 89            	pushw	x
10719  23a1 ae401e        	ldw	x,#_HUMAN_SET_EE
10720  23a4 cd0000        	call	c_eewrw
10722  23a7 85            	popw	x
10723  23a8 ac462646      	jpf	L3343
10724  23ac               L3614:
10725                     ; 1780 else if(ind==iDefSet)
10727  23ac b661          	ld	a,_a_ind
10728  23ae a109          	cp	a,#9
10729  23b0 2703          	jreq	L217
10730  23b2 cc2620        	jp	L5224
10731  23b5               L217:
10732                     ; 1782 	if(but==butMU_)
10734  23b5 b600          	ld	a,_but
10735  23b7 a179          	cp	a,#121
10736  23b9 2703          	jreq	L417
10737  23bb cc2646        	jp	L3343
10738  23be               L417:
10739                     ; 1784 		TABLE_TIME_EE[0][0]=0;
10741  23be 4f            	clr	a
10742  23bf ae4020        	ldw	x,#_TABLE_TIME_EE
10743  23c2 cd0000        	call	c_eewrc
10745                     ; 1785 		TABLE_TEMPER_EE[0][0]=20;	
10747  23c5 a614          	ld	a,#20
10748  23c7 ae4048        	ldw	x,#_TABLE_TEMPER_EE
10749  23ca cd0000        	call	c_eewrc
10751                     ; 1786 		TABLE_TIME_EE[0][1]=36;
10753  23cd a624          	ld	a,#36
10754  23cf ae4021        	ldw	x,#_TABLE_TIME_EE+1
10755  23d2 cd0000        	call	c_eewrc
10757                     ; 1787 		TABLE_TEMPER_EE[0][1]=20;	
10759  23d5 a614          	ld	a,#20
10760  23d7 ae4049        	ldw	x,#_TABLE_TEMPER_EE+1
10761  23da cd0000        	call	c_eewrc
10763                     ; 1788 		TABLE_TIME_EE[0][2]=72;
10765  23dd a648          	ld	a,#72
10766  23df ae4022        	ldw	x,#_TABLE_TIME_EE+2
10767  23e2 cd0000        	call	c_eewrc
10769                     ; 1789 		TABLE_TEMPER_EE[0][2]=20;	
10771  23e5 a614          	ld	a,#20
10772  23e7 ae404a        	ldw	x,#_TABLE_TEMPER_EE+2
10773  23ea cd0000        	call	c_eewrc
10775                     ; 1790 		TABLE_TIME_EE[0][3]=108;
10777  23ed a66c          	ld	a,#108
10778  23ef ae4023        	ldw	x,#_TABLE_TIME_EE+3
10779  23f2 cd0000        	call	c_eewrc
10781                     ; 1791 		TABLE_TEMPER_EE[0][3]=20;	
10783  23f5 a614          	ld	a,#20
10784  23f7 ae404b        	ldw	x,#_TABLE_TEMPER_EE+3
10785  23fa cd0000        	call	c_eewrc
10787                     ; 1792 		TABLE_TIME_EE[0][4]=126;
10789  23fd a67e          	ld	a,#126
10790  23ff ae4024        	ldw	x,#_TABLE_TIME_EE+4
10791  2402 cd0000        	call	c_eewrc
10793                     ; 1793 		TABLE_TEMPER_EE[0][4]=20;
10795  2405 a614          	ld	a,#20
10796  2407 ae404c        	ldw	x,#_TABLE_TEMPER_EE+4
10797  240a cd0000        	call	c_eewrc
10799                     ; 1795 		TABLE_TIME_EE[1][0]=0;
10801  240d 4f            	clr	a
10802  240e ae4025        	ldw	x,#_TABLE_TIME_EE+5
10803  2411 cd0000        	call	c_eewrc
10805                     ; 1796 		TABLE_TEMPER_EE[1][0]=20;	
10807  2414 a614          	ld	a,#20
10808  2416 ae404d        	ldw	x,#_TABLE_TEMPER_EE+5
10809  2419 cd0000        	call	c_eewrc
10811                     ; 1797 		TABLE_TIME_EE[1][1]=36;
10813  241c a624          	ld	a,#36
10814  241e ae4026        	ldw	x,#_TABLE_TIME_EE+6
10815  2421 cd0000        	call	c_eewrc
10817                     ; 1798 		TABLE_TEMPER_EE[1][1]=20;	
10819  2424 a614          	ld	a,#20
10820  2426 ae404e        	ldw	x,#_TABLE_TEMPER_EE+6
10821  2429 cd0000        	call	c_eewrc
10823                     ; 1799 		TABLE_TIME_EE[1][2]=72;
10825  242c a648          	ld	a,#72
10826  242e ae4027        	ldw	x,#_TABLE_TIME_EE+7
10827  2431 cd0000        	call	c_eewrc
10829                     ; 1800 		TABLE_TEMPER_EE[1][2]=20;	
10831  2434 a614          	ld	a,#20
10832  2436 ae404f        	ldw	x,#_TABLE_TEMPER_EE+7
10833  2439 cd0000        	call	c_eewrc
10835                     ; 1801 		TABLE_TIME_EE[1][3]=108;
10837  243c a66c          	ld	a,#108
10838  243e ae4028        	ldw	x,#_TABLE_TIME_EE+8
10839  2441 cd0000        	call	c_eewrc
10841                     ; 1802 		TABLE_TEMPER_EE[1][3]=20;	
10843  2444 a614          	ld	a,#20
10844  2446 ae4050        	ldw	x,#_TABLE_TEMPER_EE+8
10845  2449 cd0000        	call	c_eewrc
10847                     ; 1803 		TABLE_TIME_EE[1][4]=126;
10849  244c a67e          	ld	a,#126
10850  244e ae4029        	ldw	x,#_TABLE_TIME_EE+9
10851  2451 cd0000        	call	c_eewrc
10853                     ; 1804 		TABLE_TEMPER_EE[1][4]=20;	
10855  2454 a614          	ld	a,#20
10856  2456 ae4051        	ldw	x,#_TABLE_TEMPER_EE+9
10857  2459 cd0000        	call	c_eewrc
10859                     ; 1806 		TABLE_TIME_EE[2][0]=0;
10861  245c 4f            	clr	a
10862  245d ae402a        	ldw	x,#_TABLE_TIME_EE+10
10863  2460 cd0000        	call	c_eewrc
10865                     ; 1807 		TABLE_TEMPER_EE[2][0]=20;	
10867  2463 a614          	ld	a,#20
10868  2465 ae4052        	ldw	x,#_TABLE_TEMPER_EE+10
10869  2468 cd0000        	call	c_eewrc
10871                     ; 1808 		TABLE_TIME_EE[2][1]=36;
10873  246b a624          	ld	a,#36
10874  246d ae402b        	ldw	x,#_TABLE_TIME_EE+11
10875  2470 cd0000        	call	c_eewrc
10877                     ; 1809 		TABLE_TEMPER_EE[2][1]=20;	
10879  2473 a614          	ld	a,#20
10880  2475 ae4053        	ldw	x,#_TABLE_TEMPER_EE+11
10881  2478 cd0000        	call	c_eewrc
10883                     ; 1810 		TABLE_TIME_EE[2][2]=72;
10885  247b a648          	ld	a,#72
10886  247d ae402c        	ldw	x,#_TABLE_TIME_EE+12
10887  2480 cd0000        	call	c_eewrc
10889                     ; 1811 		TABLE_TEMPER_EE[2][2]=20;	
10891  2483 a614          	ld	a,#20
10892  2485 ae4054        	ldw	x,#_TABLE_TEMPER_EE+12
10893  2488 cd0000        	call	c_eewrc
10895                     ; 1812 		TABLE_TIME_EE[2][3]=108;
10897  248b a66c          	ld	a,#108
10898  248d ae402d        	ldw	x,#_TABLE_TIME_EE+13
10899  2490 cd0000        	call	c_eewrc
10901                     ; 1813 		TABLE_TEMPER_EE[2][3]=20;	
10903  2493 a614          	ld	a,#20
10904  2495 ae4055        	ldw	x,#_TABLE_TEMPER_EE+13
10905  2498 cd0000        	call	c_eewrc
10907                     ; 1814 		TABLE_TIME_EE[2][4]=126;
10909  249b a67e          	ld	a,#126
10910  249d ae402e        	ldw	x,#_TABLE_TIME_EE+14
10911  24a0 cd0000        	call	c_eewrc
10913                     ; 1815 		TABLE_TEMPER_EE[2][4]=20;
10915  24a3 a614          	ld	a,#20
10916  24a5 ae4056        	ldw	x,#_TABLE_TEMPER_EE+14
10917  24a8 cd0000        	call	c_eewrc
10919                     ; 1817 		TABLE_TIME_EE[3][0]=0;
10921  24ab 4f            	clr	a
10922  24ac ae402f        	ldw	x,#_TABLE_TIME_EE+15
10923  24af cd0000        	call	c_eewrc
10925                     ; 1818 		TABLE_TEMPER_EE[3][0]=20;	
10927  24b2 a614          	ld	a,#20
10928  24b4 ae4057        	ldw	x,#_TABLE_TEMPER_EE+15
10929  24b7 cd0000        	call	c_eewrc
10931                     ; 1819 		TABLE_TIME_EE[3][1]=36;
10933  24ba a624          	ld	a,#36
10934  24bc ae4030        	ldw	x,#_TABLE_TIME_EE+16
10935  24bf cd0000        	call	c_eewrc
10937                     ; 1820 		TABLE_TEMPER_EE[3][1]=20;	
10939  24c2 a614          	ld	a,#20
10940  24c4 ae4058        	ldw	x,#_TABLE_TEMPER_EE+16
10941  24c7 cd0000        	call	c_eewrc
10943                     ; 1821 		TABLE_TIME_EE[3][2]=72;
10945  24ca a648          	ld	a,#72
10946  24cc ae4031        	ldw	x,#_TABLE_TIME_EE+17
10947  24cf cd0000        	call	c_eewrc
10949                     ; 1822 		TABLE_TEMPER_EE[3][2]=20;	
10951  24d2 a614          	ld	a,#20
10952  24d4 ae4059        	ldw	x,#_TABLE_TEMPER_EE+17
10953  24d7 cd0000        	call	c_eewrc
10955                     ; 1823 		TABLE_TIME_EE[3][3]=108;
10957  24da a66c          	ld	a,#108
10958  24dc ae4032        	ldw	x,#_TABLE_TIME_EE+18
10959  24df cd0000        	call	c_eewrc
10961                     ; 1824 		TABLE_TEMPER_EE[3][3]=20;	
10963  24e2 a614          	ld	a,#20
10964  24e4 ae405a        	ldw	x,#_TABLE_TEMPER_EE+18
10965  24e7 cd0000        	call	c_eewrc
10967                     ; 1825 		TABLE_TIME_EE[3][4]=126;
10969  24ea a67e          	ld	a,#126
10970  24ec ae4033        	ldw	x,#_TABLE_TIME_EE+19
10971  24ef cd0000        	call	c_eewrc
10973                     ; 1826 		TABLE_TEMPER_EE[3][4]=20;
10975  24f2 a614          	ld	a,#20
10976  24f4 ae405b        	ldw	x,#_TABLE_TEMPER_EE+19
10977  24f7 cd0000        	call	c_eewrc
10979                     ; 1828 		TABLE_TIME_EE[4][0]=0;
10981  24fa 4f            	clr	a
10982  24fb ae4034        	ldw	x,#_TABLE_TIME_EE+20
10983  24fe cd0000        	call	c_eewrc
10985                     ; 1829 		TABLE_TEMPER_EE[4][0]=20;	
10987  2501 a614          	ld	a,#20
10988  2503 ae405c        	ldw	x,#_TABLE_TEMPER_EE+20
10989  2506 cd0000        	call	c_eewrc
10991                     ; 1830 		TABLE_TIME_EE[4][1]=36;
10993  2509 a624          	ld	a,#36
10994  250b ae4035        	ldw	x,#_TABLE_TIME_EE+21
10995  250e cd0000        	call	c_eewrc
10997                     ; 1831 		TABLE_TEMPER_EE[4][1]=20;	
10999  2511 a614          	ld	a,#20
11000  2513 ae405d        	ldw	x,#_TABLE_TEMPER_EE+21
11001  2516 cd0000        	call	c_eewrc
11003                     ; 1832 		TABLE_TIME_EE[4][2]=72;
11005  2519 a648          	ld	a,#72
11006  251b ae4036        	ldw	x,#_TABLE_TIME_EE+22
11007  251e cd0000        	call	c_eewrc
11009                     ; 1833 		TABLE_TEMPER_EE[4][2]=20;	
11011  2521 a614          	ld	a,#20
11012  2523 ae405e        	ldw	x,#_TABLE_TEMPER_EE+22
11013  2526 cd0000        	call	c_eewrc
11015                     ; 1834 		TABLE_TIME_EE[4][3]=108;
11017  2529 a66c          	ld	a,#108
11018  252b ae4037        	ldw	x,#_TABLE_TIME_EE+23
11019  252e cd0000        	call	c_eewrc
11021                     ; 1835 		TABLE_TEMPER_EE[4][3]=20;	
11023  2531 a614          	ld	a,#20
11024  2533 ae405f        	ldw	x,#_TABLE_TEMPER_EE+23
11025  2536 cd0000        	call	c_eewrc
11027                     ; 1836 		TABLE_TIME_EE[4][4]=126;
11029  2539 a67e          	ld	a,#126
11030  253b ae4038        	ldw	x,#_TABLE_TIME_EE+24
11031  253e cd0000        	call	c_eewrc
11033                     ; 1837 		TABLE_TEMPER_EE[4][4]=20;
11035  2541 a614          	ld	a,#20
11036  2543 ae4060        	ldw	x,#_TABLE_TEMPER_EE+24
11037  2546 cd0000        	call	c_eewrc
11039                     ; 1839 		TABLE_TIME_EE[5][0]=0;
11041  2549 4f            	clr	a
11042  254a ae4039        	ldw	x,#_TABLE_TIME_EE+25
11043  254d cd0000        	call	c_eewrc
11045                     ; 1840 		TABLE_TEMPER_EE[5][0]=20;	
11047  2550 a614          	ld	a,#20
11048  2552 ae4061        	ldw	x,#_TABLE_TEMPER_EE+25
11049  2555 cd0000        	call	c_eewrc
11051                     ; 1841 		TABLE_TIME_EE[5][1]=36;
11053  2558 a624          	ld	a,#36
11054  255a ae403a        	ldw	x,#_TABLE_TIME_EE+26
11055  255d cd0000        	call	c_eewrc
11057                     ; 1842 		TABLE_TEMPER_EE[5][1]=20;	
11059  2560 a614          	ld	a,#20
11060  2562 ae4062        	ldw	x,#_TABLE_TEMPER_EE+26
11061  2565 cd0000        	call	c_eewrc
11063                     ; 1843 		TABLE_TIME_EE[5][2]=72;
11065  2568 a648          	ld	a,#72
11066  256a ae403b        	ldw	x,#_TABLE_TIME_EE+27
11067  256d cd0000        	call	c_eewrc
11069                     ; 1844 		TABLE_TEMPER_EE[5][2]=20;	
11071  2570 a614          	ld	a,#20
11072  2572 ae4063        	ldw	x,#_TABLE_TEMPER_EE+27
11073  2575 cd0000        	call	c_eewrc
11075                     ; 1845 		TABLE_TIME_EE[5][3]=108;
11077  2578 a66c          	ld	a,#108
11078  257a ae403c        	ldw	x,#_TABLE_TIME_EE+28
11079  257d cd0000        	call	c_eewrc
11081                     ; 1846 		TABLE_TEMPER_EE[5][3]=20;	
11083  2580 a614          	ld	a,#20
11084  2582 ae4064        	ldw	x,#_TABLE_TEMPER_EE+28
11085  2585 cd0000        	call	c_eewrc
11087                     ; 1847 		TABLE_TIME_EE[5][4]=126;
11089  2588 a67e          	ld	a,#126
11090  258a ae403d        	ldw	x,#_TABLE_TIME_EE+29
11091  258d cd0000        	call	c_eewrc
11093                     ; 1848 		TABLE_TEMPER_EE[5][4]=20;
11095  2590 a614          	ld	a,#20
11096  2592 ae4065        	ldw	x,#_TABLE_TEMPER_EE+29
11097  2595 cd0000        	call	c_eewrc
11099                     ; 1850 		TABLE_TIME_EE[6][0]=0;
11101  2598 4f            	clr	a
11102  2599 ae403e        	ldw	x,#_TABLE_TIME_EE+30
11103  259c cd0000        	call	c_eewrc
11105                     ; 1851 		TABLE_TEMPER_EE[6][0]=20;	
11107  259f a614          	ld	a,#20
11108  25a1 ae4066        	ldw	x,#_TABLE_TEMPER_EE+30
11109  25a4 cd0000        	call	c_eewrc
11111                     ; 1852 		TABLE_TIME_EE[6][1]=36;
11113  25a7 a624          	ld	a,#36
11114  25a9 ae403f        	ldw	x,#_TABLE_TIME_EE+31
11115  25ac cd0000        	call	c_eewrc
11117                     ; 1853 		TABLE_TEMPER_EE[6][1]=20;	
11119  25af a614          	ld	a,#20
11120  25b1 ae4067        	ldw	x,#_TABLE_TEMPER_EE+31
11121  25b4 cd0000        	call	c_eewrc
11123                     ; 1854 		TABLE_TIME_EE[6][2]=72;
11125  25b7 a648          	ld	a,#72
11126  25b9 ae4040        	ldw	x,#_TABLE_TIME_EE+32
11127  25bc cd0000        	call	c_eewrc
11129                     ; 1855 		TABLE_TEMPER_EE[6][2]=20;	
11131  25bf a614          	ld	a,#20
11132  25c1 ae4068        	ldw	x,#_TABLE_TEMPER_EE+32
11133  25c4 cd0000        	call	c_eewrc
11135                     ; 1856 		TABLE_TIME_EE[6][3]=108;
11137  25c7 a66c          	ld	a,#108
11138  25c9 ae4041        	ldw	x,#_TABLE_TIME_EE+33
11139  25cc cd0000        	call	c_eewrc
11141                     ; 1857 		TABLE_TEMPER_EE[6][3]=20;	
11143  25cf a614          	ld	a,#20
11144  25d1 ae4069        	ldw	x,#_TABLE_TEMPER_EE+33
11145  25d4 cd0000        	call	c_eewrc
11147                     ; 1858 		TABLE_TIME_EE[6][4]=126;
11149  25d7 a67e          	ld	a,#126
11150  25d9 ae4042        	ldw	x,#_TABLE_TIME_EE+34
11151  25dc cd0000        	call	c_eewrc
11153                     ; 1859 		TABLE_TEMPER_EE[6][4]=20;
11155  25df a614          	ld	a,#20
11156  25e1 ae406a        	ldw	x,#_TABLE_TEMPER_EE+34
11157  25e4 cd0000        	call	c_eewrc
11159                     ; 1861 		MODE_EE=1;
11161  25e7 a601          	ld	a,#1
11162  25e9 ae4046        	ldw	x,#_MODE_EE
11163  25ec cd0000        	call	c_eewrc
11165                     ; 1862 		NECC_TEMPER_WATER_EE=50;
11167  25ef a632          	ld	a,#50
11168  25f1 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
11169  25f4 cd0000        	call	c_eewrc
11171                     ; 1863 		NECC_TEMPER_AIR_EE=20;
11173  25f7 a614          	ld	a,#20
11174  25f9 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
11175  25fc cd0000        	call	c_eewrc
11177                     ; 1864 		MAX_POWER_EE=3;
11179  25ff a603          	ld	a,#3
11180  2601 ae4047        	ldw	x,#_MAX_POWER_EE
11181  2604 cd0000        	call	c_eewrc
11183                     ; 1866 		tree_down(0,0);
11185  2607 5f            	clrw	x
11186  2608 4f            	clr	a
11187  2609 95            	ld	xh,a
11188  260a cd0000        	call	_tree_down
11190                     ; 1867 		ret_ind(0,0);
11192  260d 5f            	clrw	x
11193  260e 4f            	clr	a
11194  260f 95            	ld	xh,a
11195  2610 cd0000        	call	_ret_ind
11197                     ; 1868 		HUMAN_SET_EE=1;
11199  2613 ae0001        	ldw	x,#1
11200  2616 89            	pushw	x
11201  2617 ae401e        	ldw	x,#_HUMAN_SET_EE
11202  261a cd0000        	call	c_eewrw
11204  261d 85            	popw	x
11205  261e 2026          	jra	L3343
11206  2620               L5224:
11207                     ; 1872 else if(ind==iInterf)
11209  2620 b661          	ld	a,_a_ind
11210  2622 a10f          	cp	a,#15
11211  2624 2620          	jrne	L3343
11212                     ; 1874 	if((but==butU)||(but==butD)||(but==butM)||(but==butON))	
11214  2626 b600          	ld	a,_but
11215  2628 a1fb          	cp	a,#251
11216  262a 2712          	jreq	L7324
11218  262c b600          	ld	a,_but
11219  262e a1f7          	cp	a,#247
11220  2630 270c          	jreq	L7324
11222  2632 b600          	ld	a,_but
11223  2634 a1fd          	cp	a,#253
11224  2636 2706          	jreq	L7324
11226  2638 b600          	ld	a,_but
11227  263a a1fe          	cp	a,#254
11228  263c 2608          	jrne	L3343
11229  263e               L7324:
11230                     ; 1876 		beepTestCnt=10;
11232  263e 350a0004      	mov	_beepTestCnt,#10
11233                     ; 1877 		ind_check_cnt=0;
11235  2642 5f            	clrw	x
11236  2643 cf0002        	ldw	_ind_check_cnt,x
11237  2646               L3343:
11238                     ; 1880 }
11239  2646               L455:
11242  2646 5b03          	addw	sp,#3
11243  2648 81            	ret
11266                     ; 1882 void t4_init(void)
11266                     ; 1883 {
11267                     	switch	.text
11268  2649               _t4_init:
11272                     ; 1884 TIM4->PSCR = 6;
11274  2649 35065345      	mov	21317,#6
11275                     ; 1885 TIM4->ARR= 158;
11277  264d 359e5346      	mov	21318,#158
11278                     ; 1886 TIM4->IER|= TIM4_IER_UIE;					// enable break interrupt
11280  2651 72105341      	bset	21313,#0
11281                     ; 1888 TIM4->CR1=(TIM4_CR1_URS | TIM4_CR1_CEN | TIM4_CR1_ARPE);	
11283  2655 35855340      	mov	21312,#133
11284                     ; 1890 }
11287  2659 81            	ret
11330                     ; 1896 @far @interrupt void TIM4_UPD_Interrupt (void) 
11330                     ; 1897 {
11332                     	switch	.text
11333  265a               f_TIM4_UPD_Interrupt:
11337                     ; 1899 GPIOD->ODR|=0b00111100;
11339  265a c6500f        	ld	a,20495
11340  265d aa3c          	or	a,#60
11341  265f c7500f        	ld	20495,a
11342                     ; 1900 ind_cnt++;
11344  2662 3c81          	inc	_ind_cnt
11345                     ; 1901 if(ind_cnt>=10)
11347  2664 b681          	ld	a,_ind_cnt
11348  2666 a10a          	cp	a,#10
11349  2668 2507          	jrult	L5624
11350                     ; 1903 	ind_cnt=0;
11352  266a 3f81          	clr	_ind_cnt
11353                     ; 1904 	but_new=GPIOB->IDR;
11355  266c 5550060000    	mov	_but_new,20486
11356  2671               L5624:
11357                     ; 1906 GPIOB->ODR=ind_outB[ind_cnt];
11359  2671 b681          	ld	a,_ind_cnt
11360  2673 5f            	clrw	x
11361  2674 97            	ld	xl,a
11362  2675 e675          	ld	a,(_ind_outB,x)
11363  2677 c75005        	ld	20485,a
11364                     ; 1907 GPIOC->ODR=ind_outC[ind_cnt];
11366  267a b681          	ld	a,_ind_cnt
11367  267c 5f            	clrw	x
11368  267d 97            	ld	xl,a
11369  267e e60a          	ld	a,(_ind_outC,x)
11370  2680 c7500a        	ld	20490,a
11371                     ; 1908 if(powerStat==psOFF)GPIOC->ODR=0xff;
11373  2683 3d29          	tnz	_powerStat
11374  2685 2604          	jrne	L7624
11377  2687 35ff500a      	mov	20490,#255
11378  268b               L7624:
11379                     ; 1909 GPIOG->ODR|=0x01;
11381  268b 7210501e      	bset	20510,#0
11382                     ; 1910 GPIOG->ODR&=ind_outG[ind_cnt];
11384  268f b681          	ld	a,_ind_cnt
11385  2691 5f            	clrw	x
11386  2692 97            	ld	xl,a
11387  2693 c6501e        	ld	a,20510
11388  2696 e416          	and	a,(_ind_outG,x)
11389  2698 c7501e        	ld	20510,a
11390                     ; 1911 if(ind_cnt==9)GPIOB->DDR=0x00;
11392  269b b681          	ld	a,_ind_cnt
11393  269d a109          	cp	a,#9
11394  269f 2606          	jrne	L1724
11397  26a1 725f5007      	clr	20487
11399  26a5 2004          	jra	L3724
11400  26a7               L1724:
11401                     ; 1912 else GPIOB->DDR=0xff;
11403  26a7 35ff5007      	mov	20487,#255
11404  26ab               L3724:
11405                     ; 1913 if(powerStat==psOFF)
11407  26ab 3d29          	tnz	_powerStat
11408  26ad 2618          	jrne	L5724
11409                     ; 1915 	GPIOD->ODR|=0b00111100;
11411  26af c6500f        	ld	a,20495
11412  26b2 aa3c          	or	a,#60
11413  26b4 c7500f        	ld	20495,a
11414                     ; 1916 	if((ind_cnt==0)||(ind_cnt>3))GPIOD->ODR&=ind_strob[0];
11416  26b7 3d81          	tnz	_ind_cnt
11417  26b9 2706          	jreq	L1034
11419  26bb b681          	ld	a,_ind_cnt
11420  26bd a104          	cp	a,#4
11421  26bf 2513          	jrult	L3034
11422  26c1               L1034:
11425  26c1 721b500f      	bres	20495,#5
11426  26c5 200d          	jra	L3034
11427  26c7               L5724:
11428                     ; 1918 else GPIOD->ODR&=ind_strob[ind_cnt];
11430  26c7 b681          	ld	a,_ind_cnt
11431  26c9 5f            	clrw	x
11432  26ca 97            	ld	xl,a
11433  26cb c6500f        	ld	a,20495
11434  26ce d40012        	and	a,(_ind_strob,x)
11435  26d1 c7500f        	ld	20495,a
11436  26d4               L3034:
11437                     ; 1920 if(++t0_cnt0>=10)
11439  26d4 3c05          	inc	_t0_cnt0
11440  26d6 b605          	ld	a,_t0_cnt0
11441  26d8 a10a          	cp	a,#10
11442  26da 255f          	jrult	L5034
11443                     ; 1922   t0_cnt0=0;
11445  26dc 3f05          	clr	_t0_cnt0
11446                     ; 1923   b100Hz=1;
11448  26de 35010000      	mov	_b100Hz,#1
11449                     ; 1925 	if(++t0_cnt1>=10)
11451  26e2 3c06          	inc	_t0_cnt1
11452  26e4 b606          	ld	a,_t0_cnt1
11453  26e6 a10a          	cp	a,#10
11454  26e8 2506          	jrult	L7034
11455                     ; 1927 		t0_cnt1=0;
11457  26ea 3f06          	clr	_t0_cnt1
11458                     ; 1928 		b10Hz=1;
11460  26ec 35010001      	mov	_b10Hz,#1
11461  26f0               L7034:
11462                     ; 1931 	if(++t0_cnt2>=20)
11464  26f0 3c07          	inc	_t0_cnt2
11465  26f2 b607          	ld	a,_t0_cnt2
11466  26f4 a114          	cp	a,#20
11467  26f6 2511          	jrult	L1134
11468                     ; 1933 		t0_cnt2=0;
11470  26f8 3f07          	clr	_t0_cnt2
11471                     ; 1934 		b5Hz=1;
11473  26fa 35010002      	mov	_b5Hz,#1
11474                     ; 1935 		bFL5=!bFL5;
11476  26fe 3d28          	tnz	_bFL5
11477  2700 2604          	jrne	L227
11478  2702 a601          	ld	a,#1
11479  2704 2001          	jra	L427
11480  2706               L227:
11481  2706 4f            	clr	a
11482  2707               L427:
11483  2707 b728          	ld	_bFL5,a
11484  2709               L1134:
11485                     ; 1938 	if(++t0_cnt3>=50)
11487  2709 3c08          	inc	_t0_cnt3
11488  270b b608          	ld	a,_t0_cnt3
11489  270d a132          	cp	a,#50
11490  270f 2511          	jrult	L3134
11491                     ; 1940 		t0_cnt3=0;
11493  2711 3f08          	clr	_t0_cnt3
11494                     ; 1941 		b2Hz=1;
11496  2713 35010003      	mov	_b2Hz,#1
11497                     ; 1942 		bFL2=!bFL2;
11499  2717 3d27          	tnz	_bFL2
11500  2719 2604          	jrne	L627
11501  271b a601          	ld	a,#1
11502  271d 2001          	jra	L037
11503  271f               L627:
11504  271f 4f            	clr	a
11505  2720               L037:
11506  2720 b727          	ld	_bFL2,a
11507  2722               L3134:
11508                     ; 1944 	if(++t0_cnt4>=100)
11510  2722 3c09          	inc	_t0_cnt4
11511  2724 b609          	ld	a,_t0_cnt4
11512  2726 a164          	cp	a,#100
11513  2728 2511          	jrult	L5034
11514                     ; 1946 		t0_cnt4=0;
11516  272a 3f09          	clr	_t0_cnt4
11517                     ; 1947 		b1Hz=1;
11519  272c 35010004      	mov	_b1Hz,#1
11520                     ; 1948 		bFL1=!bFL1;
11522  2730 3d26          	tnz	_bFL1
11523  2732 2604          	jrne	L237
11524  2734 a601          	ld	a,#1
11525  2736 2001          	jra	L437
11526  2738               L237:
11527  2738 4f            	clr	a
11528  2739               L437:
11529  2739 b726          	ld	_bFL1,a
11530  273b               L5034:
11531                     ; 1951 TIM4->SR1&=~TIM4_SR1_UIF;			// disable break interrupt
11533  273b 72115342      	bres	21314,#0
11534                     ; 1952 return;
11537  273f 80            	iret
11596                     ; 1959 main()
11596                     ; 1960 {
11598                     	switch	.text
11599  2740               _main:
11603                     ; 1961 CLK->ECKR|=1;
11605  2740 721050c1      	bset	20673,#0
11607  2744               L1334:
11608                     ; 1962 while((CLK->ECKR & 2) == 0);
11610  2744 c650c1        	ld	a,20673
11611  2747 a502          	bcp	a,#2
11612  2749 27f9          	jreq	L1334
11613                     ; 1963 CLK->SWCR|=2;
11615  274b 721250c5      	bset	20677,#1
11616                     ; 1964 CLK->SWR=0xB4;	
11618  274f 35b450c4      	mov	20676,#180
11619                     ; 1966 CLK->CKDIVR=0;
11621  2753 725f50c6      	clr	20678
11622                     ; 1968 FLASH_DUKR=0xae;
11624  2757 35ae5064      	mov	_FLASH_DUKR,#174
11625                     ; 1969 FLASH_DUKR=0x56;
11627  275b 35565064      	mov	_FLASH_DUKR,#86
11628                     ; 1972 GPIOD->DDR|=0b00111100;		//PD2-PD5 выходы открытый коллектор
11630  275f c65011        	ld	a,20497
11631  2762 aa3c          	or	a,#60
11632  2764 c75011        	ld	20497,a
11633                     ; 1973 GPIOD->CR1&=0b11000011;		//....
11635  2767 c65012        	ld	a,20498
11636  276a a4c3          	and	a,#195
11637  276c c75012        	ld	20498,a
11638                     ; 1974 GPIOD->CR2&=0b11000011;		//....
11640  276f c65013        	ld	a,20499
11641  2772 a4c3          	and	a,#195
11642  2774 c75013        	ld	20499,a
11643                     ; 1975 GPIOB->DDR|=0b11111111;		//PORTB все выходы ТТЛ
11645  2777 c65007        	ld	a,20487
11646  277a aaff          	or	a,#255
11647  277c c75007        	ld	20487,a
11648                     ; 1976 GPIOB->CR1|=0b11111111;		//....
11650  277f c65008        	ld	a,20488
11651  2782 aaff          	or	a,#255
11652  2784 c75008        	ld	20488,a
11653                     ; 1977 GPIOB->CR2&=0b00000000;		//....
11655  2787 725f5009      	clr	20489
11656                     ; 1978 GPIOC->DDR|=0b11111111;		//PORTC все выходы открытый коллектор
11658  278b c6500c        	ld	a,20492
11659  278e aaff          	or	a,#255
11660  2790 c7500c        	ld	20492,a
11661                     ; 1979 GPIOC->CR1&=0b00000000;		//....
11663  2793 725f500d      	clr	20493
11664                     ; 1980 GPIOC->CR2&=0b00000000;		//....
11666  2797 725f500e      	clr	20494
11667                     ; 1981 GPIOG->DDR|=0b00000001;		//PG0 выход открытый коллектор
11669  279b 72105020      	bset	20512,#0
11670                     ; 1982 GPIOG->CR1&=0b11111110;		//....
11672  279f 72115021      	bres	20513,#0
11673                     ; 1983 GPIOG->CR2&=0b11111110;		//....
11675  27a3 72115022      	bres	20514,#0
11676                     ; 1984 t4_init();
11678  27a7 cd2649        	call	_t4_init
11680                     ; 1985 uart3_init();
11682  27aa cd0000        	call	_uart3_init
11684                     ; 1989 enableInterrupts();
11687  27ad 9a            rim
11689                     ; 1991 clear_ind();
11692  27ae cd0000        	call	_clear_ind
11694                     ; 1992 ind=iMn;//iModem_deb;
11696  27b1 3f61          	clr	_a_ind
11697                     ; 1998 bERR=0;
11699  27b3 3f08          	clr	_bERR
11700                     ; 1999 bWARN=0;
11702  27b5 3f07          	clr	_bWARN
11703                     ; 2006 watchdog_enable();
11705  27b7 cd0000        	call	_watchdog_enable
11707                     ; 2008 if(power_in_test()==0)
11709  27ba cd0000        	call	_power_in_test
11711  27bd a30000        	cpw	x,#0
11712  27c0 2609          	jrne	L7334
11713                     ; 2010 	GPIOD->ODR|=0b00111100;
11715  27c2 c6500f        	ld	a,20495
11716  27c5 aa3c          	or	a,#60
11717  27c7 c7500f        	ld	20495,a
11718                     ; 2011 	halt();
11721  27ca 8e            halt
11724  27cb               L7334:
11725                     ; 2017 	if(b100Hz)
11727  27cb 3d00          	tnz	_b100Hz
11728  27cd 270b          	jreq	L3434
11729                     ; 2019 		b100Hz=0;
11731  27cf 3f00          	clr	_b100Hz
11732                     ; 2021 		but_drv();
11734  27d1 cd0000        	call	_but_drv
11736                     ; 2022 		but_an();
11738  27d4 cd16ea        	call	_but_an
11740                     ; 2023 		beep_drv();
11742  27d7 cd0176        	call	_beep_drv
11744  27da               L3434:
11745                     ; 2027 	if(b10Hz)
11747  27da 3d01          	tnz	_b10Hz
11748  27dc 2715          	jreq	L5434
11749                     ; 2029 		b10Hz=0;
11751  27de 3f01          	clr	_b10Hz
11752                     ; 2031 		if(bWATCHDOG_REFRESH)watchdog_reset();
11754  27e0 3d2a          	tnz	_bWATCHDOG_REFRESH
11755  27e2 2703          	jreq	L7434
11758  27e4 cd0000        	call	_watchdog_reset
11760  27e7               L7434:
11761                     ; 2032 		ind_hndl();
11763  27e7 cd051e        	call	_ind_hndl
11765                     ; 2033 		uart3_in_an();
11767  27ea cd0000        	call	_uart3_in_an
11769                     ; 2034 		out_drv();
11771  27ed cd0000        	call	_out_drv
11773                     ; 2035 		matemath();
11775  27f0 cd04c1        	call	_matemath
11777  27f3               L5434:
11778                     ; 2040 	if(b5Hz)
11780  27f3 3d02          	tnz	_b5Hz
11781  27f5 270c          	jreq	L1534
11782                     ; 2042 		b5Hz=0;
11784  27f7 3f02          	clr	_b5Hz
11785                     ; 2044 		if(version_show_cnt)version_show_cnt--;
11787  27f9 725d000c      	tnz	_version_show_cnt
11788  27fd 2704          	jreq	L1534
11791  27ff 725a000c      	dec	_version_show_cnt
11792  2803               L1534:
11793                     ; 2046 	if(b2Hz)
11795  2803 3d03          	tnz	_b2Hz
11796  2805 2705          	jreq	L5534
11797                     ; 2048 		b2Hz=0;
11799  2807 3f03          	clr	_b2Hz
11800                     ; 2050 		time_drv();
11802  2809 cd01f7        	call	_time_drv
11804  280c               L5534:
11805                     ; 2052 	if(b1Hz)
11807  280c 3d04          	tnz	_b1Hz
11808  280e 27bb          	jreq	L7334
11809                     ; 2054 		b1Hz=0;
11811  2810 3f04          	clr	_b1Hz
11812                     ; 2056 		if(mainCnt<1000)
11814  2812 9c            	rvf
11815  2813 be82          	ldw	x,_mainCnt
11816  2815 a303e8        	cpw	x,#1000
11817  2818 2e07          	jrsge	L1634
11818                     ; 2058 			mainCnt++;
11820  281a be82          	ldw	x,_mainCnt
11821  281c 1c0001        	addw	x,#1
11822  281f bf82          	ldw	_mainCnt,x
11823  2821               L1634:
11824                     ; 2062 		ds18b20_temper_drv();
11826  2821 cd0000        	call	_ds18b20_temper_drv
11828                     ; 2063 		ret_ind_hndl();
11830  2824 cd0000        	call	_ret_ind_hndl
11832                     ; 2064 		random_gen();
11834  2827 cd0000        	call	_random_gen
11836                     ; 2065 		power_necc_hndl();
11838  282a cd0472        	call	_power_necc_hndl
11840                     ; 2066 		power_hndl();
11842  282d cd03c1        	call	_power_hndl
11844                     ; 2067 		sheduler_hndl();
11846  2830 cd028a        	call	_sheduler_hndl
11848                     ; 2068 		error_warn_hndl();
11850  2833 cd0043        	call	_error_warn_hndl
11852                     ; 2069 		airSensorLineErrorDrv();
11854  2836 cd00a5        	call	_airSensorLineErrorDrv
11856                     ; 2070 		waterTemperAlarmHndl();
11858  2839 cd00e0        	call	_waterTemperAlarmHndl
11860  283c 208d          	jra	L7334
13130                     	xdef	_main
13131                     	xdef	f_TIM4_UPD_Interrupt
13132                     	xdef	_matemath
13133                     	xdef	_power_necc_hndl
13134                     	xdef	_power_hndl
13135                     	xdef	_sheduler_hndl
13136                     	xdef	_time_drv
13137                     	xdef	_beep_drv
13138                     	xdef	_waterTemperAlarmHndl
13139                     	xdef	_airSensorLineErrorDrv
13140                     	xdef	_error_warn_hndl
13141                     	xdef	_power_in_test
13142                     	xdef	_version_show_cnt
13143                     	switch	.ubsct
13144  0000               _bDEB:
13145  0000 00            	ds.b	1
13146                     	xdef	_bDEB
13147                     	xdef	_bWATCHDOG_REFRESH
13148  0001               _tempUC:
13149  0001 00            	ds.b	1
13150                     	xdef	_tempUC
13151                     	xdef	_TABLE_TIME_EE_MAX
13152                     	xdef	_TABLE_TIME_EE_MIN
13153  0002               _day_sheduler_time:
13154  0002 00            	ds.b	1
13155                     	xdef	_day_sheduler_time
13156  0003               _time_date:
13157  0003 00            	ds.b	1
13158                     	xdef	_time_date
13159  0004               _temperRegToSheduler:
13160  0004 00            	ds.b	1
13161                     	xdef	_temperRegToSheduler
13162                     	xdef	_b1Hz
13163                     	xdef	_b2Hz
13164                     	xdef	_b5Hz
13165                     	xdef	_b10Hz
13166                     	xdef	_b100Hz
13167                     	xref	_BUILD
13168                     	xref	_VERSION
13169                     	xref	_watchdog_reset
13170                     	xref	_watchdog_enable
13171                     	xref	__ds1307_read_time
13172                     	xref	__ds1307_write_byte
13173                     	xref	_uart3_in_an
13174                     	xref	_uart3_init
13175                     	xref	_ds18b20_temper_drv
13176                     	xref	_waterSensorErrorStat
13177                     	xref	_wire1_in
13178                     	xref	_random_gen
13179                     	xref	_led_flash
13180                     	xref	_led_on
13181                     	xref	_led_mask_off
13182                     	xref	_led_set
13183                     	xref	_ret_ind_hndl
13184                     	xref	_ret_ind
13185                     	xref	_int2indII_slkuf
13186                     	xref	_int2indI_slkuf
13187                     	xref	_gran_ring_char
13188                     	xref	_gran_char
13189                     	xref	_tree_up
13190                     	xref	_tree_down
13191                     	xref	_clear_ind
13192                     	xref	_but_drv
13193                     	xref	_out_drv
13194                     	xref.b	_speed
13195                     	xref.b	_n_but
13196                     	xref.b	_but
13197                     	xref.b	_but_new
13198                     	xdef	_t4_init
13199                     	xdef	_ind_hndl
13200                     	xdef	_but_an
13201                     	switch	.bss
13202  0000               _ind_check_cnt1:
13203  0000 0000          	ds.b	2
13204                     	xdef	_ind_check_cnt1
13205  0002               _ind_check_cnt:
13206  0002 0000          	ds.b	2
13207                     	xdef	_ind_check_cnt
13208  0004               _beepTestCnt:
13209  0004 00            	ds.b	1
13210                     	xdef	_beepTestCnt
13211  0005               _bCBC_SELF:
13212  0005 00            	ds.b	1
13213                     	xdef	_bCBC_SELF
13214  0006               _cbcVoltage:
13215  0006 0000          	ds.b	2
13216                     	xdef	_cbcVoltage
13217  0008               _cbc_temp1:
13218  0008 000000000000  	ds.b	15
13219                     	xdef	_cbc_temp1
13220  0017               _cbc_temp:
13221  0017 000000000000  	ds.b	15
13222                     	xdef	_cbc_temp
13223  0026               _cbcSystemRequ:
13224  0026 00            	ds.b	1
13225                     	xdef	_cbcSystemRequ
13226  0027               _main_power_off_hndl_cnt:
13227  0027 0000          	ds.b	2
13228                     	xdef	_main_power_off_hndl_cnt
13229                     	xdef	_powerStat
13230                     	xdef	_power_in_drv_alarm_cnt
13231                     	xdef	_power_in_drv_off_cnt
13232                     	xdef	_rand_dig_str
13233  0029               _rand_dig:
13234  0029 000000000000  	ds.b	7
13235                     	xdef	_rand_dig
13236  0030               _waterTemperAlarmCnt:
13237  0030 00            	ds.b	1
13238                     	xdef	_waterTemperAlarmCnt
13239                     	xdef	_waterTemperAlarmOld
13240                     	xdef	_waterTemperAlarm
13241                     	switch	.ubsct
13242  0005               _cntAirSensorLineErrorHi:
13243  0005 00            	ds.b	1
13244                     	xdef	_cntAirSensorLineErrorHi
13245  0006               _cntAirSensorLineErrorLo:
13246  0006 00            	ds.b	1
13247                     	xdef	_cntAirSensorLineErrorLo
13248  0007               _bWARN:
13249  0007 00            	ds.b	1
13250                     	xdef	_bWARN
13251  0008               _bERR:
13252  0008 00            	ds.b	1
13253                     	xdef	_bERR
13254  0009               _beep_drv_cnt:
13255  0009 00            	ds.b	1
13256                     	xdef	_beep_drv_cnt
13257  000a               _powerEnabled:
13258  000a 00            	ds.b	1
13259                     	xdef	_powerEnabled
13260  000b               _powerNeccDelta:
13261  000b 00            	ds.b	1
13262                     	xdef	_powerNeccDelta
13263                     	xdef	_powerNeccOld
13264                     	xdef	_powerNecc
13265  000c               _time_year:
13266  000c 00            	ds.b	1
13267                     	xdef	_time_year
13268  000d               _time_month:
13269  000d 00            	ds.b	1
13270                     	xdef	_time_month
13271  000e               _time_day_of_week:
13272  000e 00            	ds.b	1
13273                     	xdef	_time_day_of_week
13274  000f               _time_hour:
13275  000f 00            	ds.b	1
13276                     	xdef	_time_hour
13277  0010               _time_min:
13278  0010 00            	ds.b	1
13279                     	xdef	_time_min
13280  0011               _time_sec:
13281  0011 00            	ds.b	1
13282                     	xdef	_time_sec
13283  0012               _buff_for_time:
13284  0012 000000000000  	ds.b	10
13285                     	xdef	_buff_for_time
13286                     	xdef	_airSensorErrorStatOld
13287                     	xdef	_airSensorErrorStat
13288  001c               _targetTemper:
13289  001c 00            	ds.b	1
13290                     	xdef	_targetTemper
13291  001d               _aktualTemper:
13292  001d 00            	ds.b	1
13293                     	xdef	_aktualTemper
13294  001e               _temperOfAir:
13295  001e 00            	ds.b	1
13296                     	xdef	_temperOfAir
13297  001f               _temperOfWater:
13298  001f 00            	ds.b	1
13299                     	xdef	_temperOfWater
13300                     	switch	.bss
13301  0031               _optr_kontr_cnt:
13302  0031 00            	ds.b	1
13303                     	xdef	_optr_kontr_cnt
13304  0032               _optr_stat:
13305  0032 00            	ds.b	1
13306                     	xdef	_optr_stat
13307                     	switch	.ubsct
13308  0020               _out_stat:
13309  0020 000000        	ds.b	3
13310                     	xdef	_out_stat
13311  0023               _led_ind_out2:
13312  0023 00            	ds.b	1
13313                     	xdef	_led_ind_out2
13314  0024               _led_ind_out1:
13315  0024 00            	ds.b	1
13316                     	xdef	_led_ind_out1
13317  0025               _bFL_:
13318  0025 00            	ds.b	1
13319                     	xdef	_bFL_
13320  0026               _bFL1:
13321  0026 00            	ds.b	1
13322                     	xdef	_bFL1
13323  0027               _bFL2:
13324  0027 00            	ds.b	1
13325                     	xdef	_bFL2
13326  0028               _bFL5:
13327  0028 00            	ds.b	1
13328                     	xdef	_bFL5
13329  0029               _zero_on:
13330  0029 00            	ds.b	1
13331                     	xdef	_zero_on
13332                     	xdef	_ind_pointer
13333  002a               _c_ind:
13334  002a 0000000000    	ds.b	5
13335                     	xdef	_c_ind
13336  002f               _b_ind:
13337  002f 000000000000  	ds.b	50
13338                     	xdef	_b_ind
13339  0061               _a_ind:
13340  0061 0000000000    	ds.b	5
13341                     	xdef	_a_ind
13342                     	xdef	_DIGISYM
13343  0066               _ind_out_:
13344  0066 0000000000    	ds.b	5
13345                     	xdef	_ind_out_
13346  006b               _dig:
13347  006b 000000000000  	ds.b	10
13348                     	xdef	_dig
13349                     	xdef	_ind_strob
13350                     	xdef	_ind_outG
13351                     	xdef	_ind_outC
13352  0075               _ind_outB:
13353  0075 000000000000  	ds.b	12
13354                     	xdef	_ind_outB
13355  0081               _ind_cnt:
13356  0081 00            	ds.b	1
13357                     	xdef	_ind_cnt
13358  0082               _mainCnt:
13359  0082 0000          	ds.b	2
13360                     	xdef	_mainCnt
13361                     	xdef	_t0_cnt4
13362                     	xdef	_t0_cnt3
13363                     	xdef	_t0_cnt2
13364                     	xdef	_t0_cnt1
13365                     	xdef	_t0_cnt0
13366  0084               _fiksRandom:
13367  0084 00            	ds.b	1
13368                     	xdef	_fiksRandom
13369  0085               _currRandom:
13370  0085 00            	ds.b	1
13371                     	xdef	_currRandom
13372                     	xdef	_warmOrder
13373                     	switch	.const
13374  0046               L1224:
13375  0046 313132333435  	dc.b	"11234567890",0
13376  0052               L7124:
13377  0052 393233373332  	dc.b	"9237328354",0
13378  005d               L5124:
13379  005d 393133343836  	dc.b	"9134863890",0
13380  0068               L3124:
13381  0068 393133393239  	dc.b	"9139294352",0
13382                     	xref.b	c_x
13383                     	xref.b	c_y
13403                     	xref	c_idiv
13404                     	xref	c_eewrw
13405                     	xref	c_eewrc
13406                     	xref	c_smodx
13407                     	xref	c_smody
13408                     	xref	c_sdivx
13409                     	xref	c_imul
13410                     	end
