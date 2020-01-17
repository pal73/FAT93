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
3014                     ; 186 void power_in_drv(void)
3014                     ; 187 {
3016                     	switch	.text
3017  0000               _power_in_drv:
3021                     ; 189 GPIOA->DDR&=~(1<<6);		
3023  0000 721d5002      	bres	20482,#6
3024                     ; 190 GPIOA->CR1&=~(1<<6);		
3026  0004 721d5003      	bres	20483,#6
3027                     ; 191 GPIOA->CR2&=~(1<<6);
3029  0008 721d5004      	bres	20484,#6
3030                     ; 192 GPIOA->ODR&=~(1<<6);
3032  000c 721d5000      	bres	20480,#6
3033                     ; 194 if(!((GPIOA->IDR)&(1<<6)))
3035  0010 c65001        	ld	a,20481
3036  0013 a540          	bcp	a,#64
3037  0015 2703          	jreq	L6
3038  0017 cc00cd        	jp	L1002
3039  001a               L6:
3040                     ; 196 	if(power_in_drv_off_cnt<10)
3042  001a 9c            	rvf
3043  001b ce0008        	ldw	x,_power_in_drv_off_cnt
3044  001e a3000a        	cpw	x,#10
3045  0021 2e0b          	jrsge	L3002
3046                     ; 198 		power_in_drv_off_cnt++;	
3048  0023 ce0008        	ldw	x,_power_in_drv_off_cnt
3049  0026 1c0001        	addw	x,#1
3050  0029 cf0008        	ldw	_power_in_drv_off_cnt,x
3052  002c 2002          	jra	L5002
3053  002e               L3002:
3054                     ; 202 		powerStat=psOFF;
3056  002e 3f29          	clr	_powerStat
3057  0030               L5002:
3058                     ; 205 	if(power_in_drv_alarm_cnt<60)
3060  0030 9c            	rvf
3061  0031 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3062  0034 a3003c        	cpw	x,#60
3063  0037 2f03          	jrslt	L01
3064  0039 cc0168        	jp	L5202
3065  003c               L01:
3066                     ; 207 		power_in_drv_alarm_cnt++;	
3068  003c ce000a        	ldw	x,_power_in_drv_alarm_cnt
3069  003f 1c0001        	addw	x,#1
3070  0042 cf000a        	ldw	_power_in_drv_alarm_cnt,x
3071                     ; 208 		if((power_in_drv_alarm_cnt>=60)&&(powerAlarm!=paALARM))
3073  0045 9c            	rvf
3074  0046 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3075  0049 a3003c        	cpw	x,#60
3076  004c 2e03          	jrsge	L21
3077  004e cc0168        	jp	L5202
3078  0051               L21:
3080  0051 c6401c        	ld	a,_powerAlarm
3081  0054 a101          	cp	a,#1
3082  0056 2603          	jrne	L41
3083  0058 cc0168        	jp	L5202
3084  005b               L41:
3085                     ; 210 			powerAlarm=paALARM;
3087  005b a601          	ld	a,#1
3088  005d ae401c        	ldw	x,#_powerAlarm
3089  0060 cd0000        	call	c_eewrc
3091                     ; 212 			strcpy(tempRussianText,"Ёлектричество отключено"); 
3093  0063 ae0109        	ldw	x,#L3102
3094  0066 89            	pushw	x
3095  0067 ae0000        	ldw	x,#_tempRussianText
3096  006a cd0000        	call	_strcpy
3098  006d 85            	popw	x
3099                     ; 214 			if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3101  006e c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3102  0071 a501          	bcp	a,#1
3103  0073 270f          	jreq	L5102
3104                     ; 216 				modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3106  0075 ae0000        	ldw	x,#_tempRussianText
3107  0078 89            	pushw	x
3108  0079 ae4002        	ldw	x,#_MAIN_NUMBER
3109  007c 89            	pushw	x
3110  007d a670          	ld	a,#112
3111  007f cd0000        	call	_modem_send_sms
3113  0082 5b04          	addw	sp,#4
3114  0084               L5102:
3115                     ; 218 			if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3117  0084 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3118  0087 a502          	bcp	a,#2
3119  0089 270f          	jreq	L7102
3120                     ; 220 				modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3122  008b ae0000        	ldw	x,#_tempRussianText
3123  008e 89            	pushw	x
3124  008f ae400c        	ldw	x,#_AUTH_NUMBER_1
3125  0092 89            	pushw	x
3126  0093 a670          	ld	a,#112
3127  0095 cd0000        	call	_modem_send_sms
3129  0098 5b04          	addw	sp,#4
3130  009a               L7102:
3131                     ; 222 			if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3133  009a c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3134  009d a504          	bcp	a,#4
3135  009f 270f          	jreq	L1202
3136                     ; 224 				modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3138  00a1 ae0000        	ldw	x,#_tempRussianText
3139  00a4 89            	pushw	x
3140  00a5 ae406b        	ldw	x,#_AUTH_NUMBER_2
3141  00a8 89            	pushw	x
3142  00a9 a670          	ld	a,#112
3143  00ab cd0000        	call	_modem_send_sms
3145  00ae 5b04          	addw	sp,#4
3146  00b0               L1202:
3147                     ; 226 			if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3149  00b0 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3150  00b3 a508          	bcp	a,#8
3151  00b5 2603          	jrne	L61
3152  00b7 cc0168        	jp	L5202
3153  00ba               L61:
3154                     ; 228 				modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3156  00ba ae0000        	ldw	x,#_tempRussianText
3157  00bd 89            	pushw	x
3158  00be ae4075        	ldw	x,#_AUTH_NUMBER_3
3159  00c1 89            	pushw	x
3160  00c2 a670          	ld	a,#112
3161  00c4 cd0000        	call	_modem_send_sms
3163  00c7 5b04          	addw	sp,#4
3164  00c9 ac680168      	jpf	L5202
3165  00cd               L1002:
3166                     ; 236 	if(power_in_drv_off_cnt)
3168  00cd ce0008        	ldw	x,_power_in_drv_off_cnt
3169  00d0 270f          	jreq	L7202
3170                     ; 238 		power_in_drv_off_cnt--;
3172  00d2 ce0008        	ldw	x,_power_in_drv_off_cnt
3173  00d5 1d0001        	subw	x,#1
3174  00d8 cf0008        	ldw	_power_in_drv_off_cnt,x
3175                     ; 239 		version_show_cnt=10;			
3177  00db 350a000c      	mov	_version_show_cnt,#10
3179  00df 2004          	jra	L1302
3180  00e1               L7202:
3181                     ; 243 		powerStat=psON;
3183  00e1 35010029      	mov	_powerStat,#1
3184  00e5               L1302:
3185                     ; 246 	if(power_in_drv_alarm_cnt)
3187  00e5 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3188  00e8 277e          	jreq	L5202
3189                     ; 248 		power_in_drv_alarm_cnt--;	
3191  00ea ce000a        	ldw	x,_power_in_drv_alarm_cnt
3192  00ed 1d0001        	subw	x,#1
3193  00f0 cf000a        	ldw	_power_in_drv_alarm_cnt,x
3194                     ; 249 		if((power_in_drv_alarm_cnt==0)&&(powerAlarm!=paNORM))
3196  00f3 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3197  00f6 2670          	jrne	L5202
3199  00f8 725d401c      	tnz	_powerAlarm
3200  00fc 276a          	jreq	L5202
3201                     ; 251 			powerAlarm=paNORM;
3203  00fe 4f            	clr	a
3204  00ff ae401c        	ldw	x,#_powerAlarm
3205  0102 cd0000        	call	c_eewrc
3207                     ; 253 			strcpy(tempRussianText,"Ёлектричество включено"); 
3209  0105 ae00f2        	ldw	x,#L7302
3210  0108 89            	pushw	x
3211  0109 ae0000        	ldw	x,#_tempRussianText
3212  010c cd0000        	call	_strcpy
3214  010f 85            	popw	x
3215                     ; 255 			if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3217  0110 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3218  0113 a501          	bcp	a,#1
3219  0115 270f          	jreq	L1402
3220                     ; 257 				modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3222  0117 ae0000        	ldw	x,#_tempRussianText
3223  011a 89            	pushw	x
3224  011b ae4002        	ldw	x,#_MAIN_NUMBER
3225  011e 89            	pushw	x
3226  011f a670          	ld	a,#112
3227  0121 cd0000        	call	_modem_send_sms
3229  0124 5b04          	addw	sp,#4
3230  0126               L1402:
3231                     ; 259 			if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3233  0126 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3234  0129 a502          	bcp	a,#2
3235  012b 270f          	jreq	L3402
3236                     ; 261 				modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3238  012d ae0000        	ldw	x,#_tempRussianText
3239  0130 89            	pushw	x
3240  0131 ae400c        	ldw	x,#_AUTH_NUMBER_1
3241  0134 89            	pushw	x
3242  0135 a670          	ld	a,#112
3243  0137 cd0000        	call	_modem_send_sms
3245  013a 5b04          	addw	sp,#4
3246  013c               L3402:
3247                     ; 263 			if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3249  013c c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3250  013f a504          	bcp	a,#4
3251  0141 270f          	jreq	L5402
3252                     ; 265 				modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3254  0143 ae0000        	ldw	x,#_tempRussianText
3255  0146 89            	pushw	x
3256  0147 ae406b        	ldw	x,#_AUTH_NUMBER_2
3257  014a 89            	pushw	x
3258  014b a670          	ld	a,#112
3259  014d cd0000        	call	_modem_send_sms
3261  0150 5b04          	addw	sp,#4
3262  0152               L5402:
3263                     ; 267 			if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3265  0152 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3266  0155 a508          	bcp	a,#8
3267  0157 270f          	jreq	L5202
3268                     ; 269 				modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3270  0159 ae0000        	ldw	x,#_tempRussianText
3271  015c 89            	pushw	x
3272  015d ae4075        	ldw	x,#_AUTH_NUMBER_3
3273  0160 89            	pushw	x
3274  0161 a670          	ld	a,#112
3275  0163 cd0000        	call	_modem_send_sms
3277  0166 5b04          	addw	sp,#4
3278  0168               L5202:
3279                     ; 275 }
3282  0168 81            	ret
3306                     ; 279 short power_in_test(void)
3306                     ; 280 {
3307                     	switch	.text
3308  0169               _power_in_test:
3312                     ; 282 GPIOA->DDR&=~(1<<6);		
3314  0169 721d5002      	bres	20482,#6
3315                     ; 283 GPIOA->CR1&=~(1<<6);		
3317  016d 721d5003      	bres	20483,#6
3318                     ; 284 GPIOA->CR2&=~(1<<6);
3320  0171 721d5004      	bres	20484,#6
3321                     ; 285 GPIOA->ODR&=~(1<<6);
3323  0175 721d5000      	bres	20480,#6
3324                     ; 287 power_in_drv_off_cnt=500;
3326  0179 ae01f4        	ldw	x,#500
3327  017c cf0008        	ldw	_power_in_drv_off_cnt,x
3328  017f               L1602:
3329                     ; 291 	if(!((GPIOA->IDR)&(1<<6)))
3331  017f c65001        	ld	a,20481
3332  0182 a540          	bcp	a,#64
3333  0184 2614          	jrne	L5602
3334                     ; 293 		power_in_drv_off_cnt++;	
3336  0186 ce0008        	ldw	x,_power_in_drv_off_cnt
3337  0189 1c0001        	addw	x,#1
3338  018c cf0008        	ldw	_power_in_drv_off_cnt,x
3339                     ; 294 		if(power_in_drv_off_cnt>1000) return 0;
3341  018f 9c            	rvf
3342  0190 ce0008        	ldw	x,_power_in_drv_off_cnt
3343  0193 a303e9        	cpw	x,#1001
3344  0196 2fe7          	jrslt	L1602
3347  0198 5f            	clrw	x
3350  0199 81            	ret
3351  019a               L5602:
3352                     ; 298 		power_in_drv_off_cnt--;	
3354  019a ce0008        	ldw	x,_power_in_drv_off_cnt
3355  019d 1d0001        	subw	x,#1
3356  01a0 cf0008        	ldw	_power_in_drv_off_cnt,x
3357                     ; 299 		if(power_in_drv_off_cnt==0) return 1;		
3359  01a3 ce0008        	ldw	x,_power_in_drv_off_cnt
3360  01a6 26d7          	jrne	L1602
3363  01a8 ae0001        	ldw	x,#1
3366  01ab 81            	ret
3396                     ; 304 void error_warn_hndl(void)
3396                     ; 305 {
3397                     	switch	.text
3398  01ac               _error_warn_hndl:
3402                     ; 306 if(mainCnt<3)return;	
3404  01ac 9c            	rvf
3405  01ad be82          	ldw	x,_mainCnt
3406  01af a30003        	cpw	x,#3
3407  01b2 2e01          	jrsge	L5012
3411  01b4 81            	ret
3412  01b5               L5012:
3413                     ; 307 if(MODE_EE==1)
3415  01b5 c64046        	ld	a,_MODE_EE
3416  01b8 a101          	cp	a,#1
3417  01ba 2611          	jrne	L7012
3418                     ; 309 	if(waterSensorErrorStat!=dsesNORM)bWARN=1;
3420  01bc c60000        	ld	a,_waterSensorErrorStat
3421  01bf a155          	cp	a,#85
3422  01c1 2706          	jreq	L1112
3425  01c3 35010007      	mov	_bWARN,#1
3427  01c7 2023          	jra	L5112
3428  01c9               L1112:
3429                     ; 310 	else bWARN=0;
3431  01c9 3f07          	clr	_bWARN
3432  01cb 201f          	jra	L5112
3433  01cd               L7012:
3434                     ; 312 else if((MODE_EE==2)||(MODE_EE==3))
3436  01cd c64046        	ld	a,_MODE_EE
3437  01d0 a102          	cp	a,#2
3438  01d2 2707          	jreq	L1212
3440  01d4 c64046        	ld	a,_MODE_EE
3441  01d7 a103          	cp	a,#3
3442  01d9 2611          	jrne	L5112
3443  01db               L1212:
3444                     ; 314 	if((airSensorErrorStat!=taesNORM)||(waterSensorErrorStat!=dsesNORM))bWARN=1;
3446  01db b623          	ld	a,_airSensorErrorStat
3447  01dd a155          	cp	a,#85
3448  01df 2607          	jrne	L5212
3450  01e1 c60000        	ld	a,_waterSensorErrorStat
3451  01e4 a155          	cp	a,#85
3452  01e6 2719          	jreq	L3212
3453  01e8               L5212:
3456  01e8 35010007      	mov	_bWARN,#1
3458  01ec               L5112:
3459                     ; 318 if((waterSensorErrorStat==dsesNORM)&&((waterTemperAlarm==wtaCOOL/*temperOfWater<=3*/)||(waterTemperAlarm==wtaHEAT/*temperOfWater>=90*/)))bERR=1;	
3461  01ec c60000        	ld	a,_waterSensorErrorStat
3462  01ef a155          	cp	a,#85
3463  01f1 2618          	jrne	L1312
3465  01f3 b627          	ld	a,_waterTemperAlarm
3466  01f5 a101          	cp	a,#1
3467  01f7 270c          	jreq	L3312
3469  01f9 b627          	ld	a,_waterTemperAlarm
3470  01fb a102          	cp	a,#2
3471  01fd 260c          	jrne	L1312
3472  01ff 2004          	jra	L3312
3473  0201               L3212:
3474                     ; 315 	else bWARN=0;
3476  0201 3f07          	clr	_bWARN
3477  0203 20e7          	jra	L5112
3478  0205               L3312:
3479                     ; 318 if((waterSensorErrorStat==dsesNORM)&&((waterTemperAlarm==wtaCOOL/*temperOfWater<=3*/)||(waterTemperAlarm==wtaHEAT/*temperOfWater>=90*/)))bERR=1;	
3481  0205 35010008      	mov	_bERR,#1
3483  0209 2002          	jra	L5312
3484  020b               L1312:
3485                     ; 319 else bERR=0;
3487  020b 3f08          	clr	_bERR
3488  020d               L5312:
3489                     ; 320 }
3492  020d 81            	ret
3528                     ; 323 void airSensorLineErrorDrv(void)
3528                     ; 324 {
3529                     	switch	.text
3530  020e               _airSensorLineErrorDrv:
3534                     ; 325 if(GPIOD->IDR&(1<<6)) 
3536  020e c65010        	ld	a,20496
3537  0211 a540          	bcp	a,#64
3538  0213 2714          	jreq	L7412
3539                     ; 327 	if(cntAirSensorLineErrorLo<10)
3541  0215 b606          	ld	a,_cntAirSensorLineErrorLo
3542  0217 a10a          	cp	a,#10
3543  0219 2420          	jruge	L5512
3544                     ; 329 		cntAirSensorLineErrorLo++;
3546  021b 3c06          	inc	_cntAirSensorLineErrorLo
3547                     ; 330 		if(cntAirSensorLineErrorLo>=10)
3549  021d b606          	ld	a,_cntAirSensorLineErrorLo
3550  021f a10a          	cp	a,#10
3551  0221 2518          	jrult	L5512
3552                     ; 332 			airSensorErrorStat=taesLLO;	
3554  0223 35020023      	mov	_airSensorErrorStat,#2
3555  0227 2012          	jra	L5512
3556  0229               L7412:
3557                     ; 338 	if(cntAirSensorLineErrorHi<10)
3559  0229 b605          	ld	a,_cntAirSensorLineErrorHi
3560  022b a10a          	cp	a,#10
3561  022d 240c          	jruge	L5512
3562                     ; 340 		cntAirSensorLineErrorHi++;
3564  022f 3c05          	inc	_cntAirSensorLineErrorHi
3565                     ; 341 		if(cntAirSensorLineErrorHi>=10)
3567  0231 b605          	ld	a,_cntAirSensorLineErrorHi
3568  0233 a10a          	cp	a,#10
3569  0235 2504          	jrult	L5512
3570                     ; 343 			airSensorErrorStat=taesLHI;	
3572  0237 35030023      	mov	_airSensorErrorStat,#3
3573  023b               L5512:
3574                     ; 348 if((airSensorErrorStat!=taesNORM)&&(airSensorErrorStatOld==taesNORM))
3576  023b b623          	ld	a,_airSensorErrorStat
3577  023d a155          	cp	a,#85
3578  023f 2769          	jreq	L3612
3580  0241 b624          	ld	a,_airSensorErrorStatOld
3581  0243 a155          	cp	a,#85
3582  0245 2663          	jrne	L3612
3583                     ; 350 	strcpy(tempRussianText,"Ќеисправность датчика температуры воздуха"); 
3585  0247 ae00c8        	ldw	x,#L5612
3586  024a 89            	pushw	x
3587  024b ae0000        	ldw	x,#_tempRussianText
3588  024e cd0000        	call	_strcpy
3590  0251 85            	popw	x
3591                     ; 353 	if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3593  0252 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3594  0255 a501          	bcp	a,#1
3595  0257 270f          	jreq	L7612
3596                     ; 355 		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3598  0259 ae0000        	ldw	x,#_tempRussianText
3599  025c 89            	pushw	x
3600  025d ae4002        	ldw	x,#_MAIN_NUMBER
3601  0260 89            	pushw	x
3602  0261 a670          	ld	a,#112
3603  0263 cd0000        	call	_modem_send_sms
3605  0266 5b04          	addw	sp,#4
3606  0268               L7612:
3607                     ; 357 	if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3609  0268 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3610  026b a502          	bcp	a,#2
3611  026d 270f          	jreq	L1712
3612                     ; 359 		modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3614  026f ae0000        	ldw	x,#_tempRussianText
3615  0272 89            	pushw	x
3616  0273 ae400c        	ldw	x,#_AUTH_NUMBER_1
3617  0276 89            	pushw	x
3618  0277 a670          	ld	a,#112
3619  0279 cd0000        	call	_modem_send_sms
3621  027c 5b04          	addw	sp,#4
3622  027e               L1712:
3623                     ; 361 	if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3625  027e c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3626  0281 a504          	bcp	a,#4
3627  0283 270f          	jreq	L3712
3628                     ; 363 		modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3630  0285 ae0000        	ldw	x,#_tempRussianText
3631  0288 89            	pushw	x
3632  0289 ae406b        	ldw	x,#_AUTH_NUMBER_2
3633  028c 89            	pushw	x
3634  028d a670          	ld	a,#112
3635  028f cd0000        	call	_modem_send_sms
3637  0292 5b04          	addw	sp,#4
3638  0294               L3712:
3639                     ; 365 	if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3641  0294 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3642  0297 a508          	bcp	a,#8
3643  0299 270f          	jreq	L3612
3644                     ; 367 		modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3646  029b ae0000        	ldw	x,#_tempRussianText
3647  029e 89            	pushw	x
3648  029f ae4075        	ldw	x,#_AUTH_NUMBER_3
3649  02a2 89            	pushw	x
3650  02a3 a670          	ld	a,#112
3651  02a5 cd0000        	call	_modem_send_sms
3653  02a8 5b04          	addw	sp,#4
3654  02aa               L3612:
3655                     ; 371 airSensorErrorStatOld=airSensorErrorStat;
3657  02aa 452324        	mov	_airSensorErrorStatOld,_airSensorErrorStat
3658                     ; 372 }
3661  02ad 81            	ret
3699                     ; 375 void waterTemperAlarmHndl(void)
3699                     ; 376 {
3700                     	switch	.text
3701  02ae               _waterTemperAlarmHndl:
3705                     ; 377 if((waterSensorErrorStat==dsesNORM)&&((temperOfWater<3)||(temperOfWater>90))&&(mainCnt>60))
3707  02ae c60000        	ld	a,_waterSensorErrorStat
3708  02b1 a155          	cp	a,#85
3709  02b3 2624          	jrne	L7022
3711  02b5 9c            	rvf
3712  02b6 b61f          	ld	a,_temperOfWater
3713  02b8 a103          	cp	a,#3
3714  02ba 2f07          	jrslt	L1122
3716  02bc 9c            	rvf
3717  02bd b61f          	ld	a,_temperOfWater
3718  02bf a15b          	cp	a,#91
3719  02c1 2f16          	jrslt	L7022
3720  02c3               L1122:
3722  02c3 9c            	rvf
3723  02c4 be82          	ldw	x,_mainCnt
3724  02c6 a3003d        	cpw	x,#61
3725  02c9 2f0e          	jrslt	L7022
3726                     ; 379 	if(waterTemperAlarmCnt<15)waterTemperAlarmCnt++;//=wtaCOOL;	
3728  02cb 9c            	rvf
3729  02cc c60031        	ld	a,_waterTemperAlarmCnt
3730  02cf a10f          	cp	a,#15
3731  02d1 2e25          	jrsge	L5122
3734  02d3 725c0031      	inc	_waterTemperAlarmCnt
3735  02d7 201f          	jra	L5122
3736  02d9               L7022:
3737                     ; 385 else if((waterSensorErrorStat==dsesNORM)&&(temperOfWater>=10)&&(temperOfWater<=80))
3739  02d9 c60000        	ld	a,_waterSensorErrorStat
3740  02dc a155          	cp	a,#85
3741  02de 2618          	jrne	L5122
3743  02e0 9c            	rvf
3744  02e1 b61f          	ld	a,_temperOfWater
3745  02e3 a10a          	cp	a,#10
3746  02e5 2f11          	jrslt	L5122
3748  02e7 9c            	rvf
3749  02e8 b61f          	ld	a,_temperOfWater
3750  02ea a151          	cp	a,#81
3751  02ec 2e0a          	jrsge	L5122
3752                     ; 387 	if(waterTemperAlarmCnt)waterTemperAlarmCnt--;//waterTemperAlarm=wtaNORM;	
3754  02ee 725d0031      	tnz	_waterTemperAlarmCnt
3755  02f2 2704          	jreq	L5122
3758  02f4 725a0031      	dec	_waterTemperAlarmCnt
3759  02f8               L5122:
3760                     ; 390 if(waterTemperAlarmCnt>14)
3762  02f8 9c            	rvf
3763  02f9 c60031        	ld	a,_waterTemperAlarmCnt
3764  02fc a10f          	cp	a,#15
3765  02fe 2f1a          	jrslt	L3222
3766                     ; 392 	if(temperOfWater<3)waterTemperAlarm=wtaCOOL;
3768  0300 9c            	rvf
3769  0301 b61f          	ld	a,_temperOfWater
3770  0303 a103          	cp	a,#3
3771  0305 2e06          	jrsge	L5222
3774  0307 35010027      	mov	_waterTemperAlarm,#1
3776  030b 2017          	jra	L3322
3777  030d               L5222:
3778                     ; 393 	else if(temperOfWater>90)waterTemperAlarm=wtaHEAT;
3780  030d 9c            	rvf
3781  030e b61f          	ld	a,_temperOfWater
3782  0310 a15b          	cp	a,#91
3783  0312 2f10          	jrslt	L3322
3786  0314 35020027      	mov	_waterTemperAlarm,#2
3787  0318 200a          	jra	L3322
3788  031a               L3222:
3789                     ; 395 else if(waterTemperAlarmCnt<1)
3791  031a 9c            	rvf
3792  031b c60031        	ld	a,_waterTemperAlarmCnt
3793  031e a101          	cp	a,#1
3794  0320 2e02          	jrsge	L3322
3795                     ; 397 	waterTemperAlarm=wtaNORM;	
3797  0322 3f27          	clr	_waterTemperAlarm
3798  0324               L3322:
3799                     ; 400 if((waterTemperAlarm!=wtaNORM)&&(waterTemperAlarmOld==wtaNORM))
3801  0324 3d27          	tnz	_waterTemperAlarm
3802  0326 2603cc03ab    	jreq	L7322
3804  032b 3d28          	tnz	_waterTemperAlarmOld
3805  032d 267c          	jrne	L7322
3806                     ; 402 	if(waterTemperAlarm==wtaCOOL) strcpy(tempRussianText,"“емпература воды в системе ниже 3 гр.÷."); 
3808  032f b627          	ld	a,_waterTemperAlarm
3809  0331 a101          	cp	a,#1
3810  0333 260d          	jrne	L1422
3813  0335 ae00a0        	ldw	x,#L3422
3814  0338 89            	pushw	x
3815  0339 ae0000        	ldw	x,#_tempRussianText
3816  033c cd0000        	call	_strcpy
3818  033f 85            	popw	x
3820  0340 2011          	jra	L5422
3821  0342               L1422:
3822                     ; 403 	else if(waterTemperAlarm==wtaHEAT) strcpy(tempRussianText,"“емпература воды в системе выше 90 гр.÷."); 
3824  0342 b627          	ld	a,_waterTemperAlarm
3825  0344 a102          	cp	a,#2
3826  0346 260b          	jrne	L5422
3829  0348 ae0077        	ldw	x,#L1522
3830  034b 89            	pushw	x
3831  034c ae0000        	ldw	x,#_tempRussianText
3832  034f cd0000        	call	_strcpy
3834  0352 85            	popw	x
3835  0353               L5422:
3836                     ; 406 	if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3838  0353 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3839  0356 a501          	bcp	a,#1
3840  0358 270f          	jreq	L3522
3841                     ; 408 		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3843  035a ae0000        	ldw	x,#_tempRussianText
3844  035d 89            	pushw	x
3845  035e ae4002        	ldw	x,#_MAIN_NUMBER
3846  0361 89            	pushw	x
3847  0362 a670          	ld	a,#112
3848  0364 cd0000        	call	_modem_send_sms
3850  0367 5b04          	addw	sp,#4
3851  0369               L3522:
3852                     ; 411 	if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3854  0369 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3855  036c a502          	bcp	a,#2
3856  036e 270f          	jreq	L5522
3857                     ; 413 		modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3859  0370 ae0000        	ldw	x,#_tempRussianText
3860  0373 89            	pushw	x
3861  0374 ae400c        	ldw	x,#_AUTH_NUMBER_1
3862  0377 89            	pushw	x
3863  0378 a670          	ld	a,#112
3864  037a cd0000        	call	_modem_send_sms
3866  037d 5b04          	addw	sp,#4
3867  037f               L5522:
3868                     ; 415 	if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3870  037f c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3871  0382 a504          	bcp	a,#4
3872  0384 270f          	jreq	L7522
3873                     ; 417 		modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3875  0386 ae0000        	ldw	x,#_tempRussianText
3876  0389 89            	pushw	x
3877  038a ae406b        	ldw	x,#_AUTH_NUMBER_2
3878  038d 89            	pushw	x
3879  038e a670          	ld	a,#112
3880  0390 cd0000        	call	_modem_send_sms
3882  0393 5b04          	addw	sp,#4
3883  0395               L7522:
3884                     ; 419 	if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3886  0395 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3887  0398 a508          	bcp	a,#8
3888  039a 270f          	jreq	L7322
3889                     ; 421 		modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3891  039c ae0000        	ldw	x,#_tempRussianText
3892  039f 89            	pushw	x
3893  03a0 ae4075        	ldw	x,#_AUTH_NUMBER_3
3894  03a3 89            	pushw	x
3895  03a4 a670          	ld	a,#112
3896  03a6 cd0000        	call	_modem_send_sms
3898  03a9 5b04          	addw	sp,#4
3899  03ab               L7322:
3900                     ; 425 waterTemperAlarmOld=waterTemperAlarm;
3902  03ab 452728        	mov	_waterTemperAlarmOld,_waterTemperAlarm
3903                     ; 426 }
3906  03ae 81            	ret
3933                     ; 429 void beep_drv(void)
3933                     ; 430 {
3934                     	switch	.text
3935  03af               _beep_drv:
3939                     ; 431 GPIOG->DDR|=0b00000010;
3941  03af 72125020      	bset	20512,#1
3942                     ; 432 GPIOG->CR1|=0b00000010;
3944  03b3 72125021      	bset	20513,#1
3945                     ; 433 GPIOG->CR2&=0b11111101;
3947  03b7 72135022      	bres	20514,#1
3948                     ; 437 if(bERR)
3950  03bb 3d08          	tnz	_bERR
3951  03bd 271e          	jreq	L3722
3952                     ; 439 	if(++beep_drv_cnt>=15)beep_drv_cnt=0;
3954  03bf 9c            	rvf
3955  03c0 3c09          	inc	_beep_drv_cnt
3956  03c2 b609          	ld	a,_beep_drv_cnt
3957  03c4 a10f          	cp	a,#15
3958  03c6 2f02          	jrslt	L5722
3961  03c8 3f09          	clr	_beep_drv_cnt
3962  03ca               L5722:
3963                     ; 440 	if(beep_drv_cnt<5)
3965  03ca 9c            	rvf
3966  03cb b609          	ld	a,_beep_drv_cnt
3967  03cd a105          	cp	a,#5
3968  03cf 2e06          	jrsge	L7722
3969                     ; 442 		GPIOG->ODR|=0b00000010;
3971  03d1 7212501e      	bset	20510,#1
3973  03d5 2058          	jra	L3032
3974  03d7               L7722:
3975                     ; 444 	else GPIOG->ODR&=0b11111101;
3977  03d7 7213501e      	bres	20510,#1
3978  03db 2052          	jra	L3032
3979  03dd               L3722:
3980                     ; 446 else if(bWARN)
3982  03dd 3d07          	tnz	_bWARN
3983  03df 273a          	jreq	L5032
3984                     ; 448 	if(++beep_drv_cnt>=100)beep_drv_cnt=0;
3986  03e1 9c            	rvf
3987  03e2 3c09          	inc	_beep_drv_cnt
3988  03e4 b609          	ld	a,_beep_drv_cnt
3989  03e6 a164          	cp	a,#100
3990  03e8 2f02          	jrslt	L7032
3993  03ea 3f09          	clr	_beep_drv_cnt
3994  03ec               L7032:
3995                     ; 449 	if((beep_drv_cnt<5)||((beep_drv_cnt>=15)&&(beep_drv_cnt<20))||((beep_drv_cnt>=30)&&(beep_drv_cnt<35)))
3997  03ec 9c            	rvf
3998  03ed b609          	ld	a,_beep_drv_cnt
3999  03ef a105          	cp	a,#5
4000  03f1 2f1c          	jrslt	L3132
4002  03f3 9c            	rvf
4003  03f4 b609          	ld	a,_beep_drv_cnt
4004  03f6 a10f          	cp	a,#15
4005  03f8 2f07          	jrslt	L7132
4007  03fa 9c            	rvf
4008  03fb b609          	ld	a,_beep_drv_cnt
4009  03fd a114          	cp	a,#20
4010  03ff 2f0e          	jrslt	L3132
4011  0401               L7132:
4013  0401 9c            	rvf
4014  0402 b609          	ld	a,_beep_drv_cnt
4015  0404 a11e          	cp	a,#30
4016  0406 2f0d          	jrslt	L1132
4018  0408 9c            	rvf
4019  0409 b609          	ld	a,_beep_drv_cnt
4020  040b a123          	cp	a,#35
4021  040d 2e06          	jrsge	L1132
4022  040f               L3132:
4023                     ; 451 		GPIOG->ODR|=0b00000010;
4025  040f 7212501e      	bset	20510,#1
4027  0413 201a          	jra	L3032
4028  0415               L1132:
4029                     ; 453 	else GPIOG->ODR&=0b11111101;
4031  0415 7213501e      	bres	20510,#1
4032  0419 2014          	jra	L3032
4033  041b               L5032:
4034                     ; 455 else if(beepTestCnt)
4036  041b 725d0005      	tnz	_beepTestCnt
4037  041f 270a          	jreq	L5232
4038                     ; 457 	beepTestCnt--;
4040  0421 725a0005      	dec	_beepTestCnt
4041                     ; 458 	GPIOG->ODR|=0b00000010;
4043  0425 7212501e      	bset	20510,#1
4045  0429 2004          	jra	L3032
4046  042b               L5232:
4047                     ; 460 else GPIOG->ODR&=0b11111101;
4049  042b 7213501e      	bres	20510,#1
4050  042f               L3032:
4051                     ; 461 }
4054  042f 81            	ret
4086                     ; 464 void time_drv(void)
4086                     ; 465 {
4087                     	switch	.text
4088  0430               _time_drv:
4090  0430 88            	push	a
4091       00000001      OFST:	set	1
4094                     ; 466 _ds1307_read_time(buff_for_time);
4096  0431 ae0012        	ldw	x,#_buff_for_time
4097  0434 cd0000        	call	__ds1307_read_time
4099                     ; 468 time_sec=(((buff_for_time[0]&0x70)>>4)*10)+(buff_for_time[0]&0x0f);
4101  0437 b612          	ld	a,_buff_for_time
4102  0439 a40f          	and	a,#15
4103  043b 6b01          	ld	(OFST+0,sp),a
4104  043d b612          	ld	a,_buff_for_time
4105  043f a470          	and	a,#112
4106  0441 4e            	swap	a
4107  0442 a40f          	and	a,#15
4108  0444 97            	ld	xl,a
4109  0445 a60a          	ld	a,#10
4110  0447 42            	mul	x,a
4111  0448 9f            	ld	a,xl
4112  0449 1b01          	add	a,(OFST+0,sp)
4113  044b b711          	ld	_time_sec,a
4114                     ; 469 time_min=(((buff_for_time[1]&0x70)>>4)*10)+(buff_for_time[1]&0x0f);
4116  044d b613          	ld	a,_buff_for_time+1
4117  044f a40f          	and	a,#15
4118  0451 6b01          	ld	(OFST+0,sp),a
4119  0453 b613          	ld	a,_buff_for_time+1
4120  0455 a470          	and	a,#112
4121  0457 4e            	swap	a
4122  0458 a40f          	and	a,#15
4123  045a 97            	ld	xl,a
4124  045b a60a          	ld	a,#10
4125  045d 42            	mul	x,a
4126  045e 9f            	ld	a,xl
4127  045f 1b01          	add	a,(OFST+0,sp)
4128  0461 b710          	ld	_time_min,a
4129                     ; 470 time_hour=(((buff_for_time[2]&0x30)>>4)*10)+(buff_for_time[2]&0x0f);
4131  0463 b614          	ld	a,_buff_for_time+2
4132  0465 a40f          	and	a,#15
4133  0467 6b01          	ld	(OFST+0,sp),a
4134  0469 b614          	ld	a,_buff_for_time+2
4135  046b a430          	and	a,#48
4136  046d 4e            	swap	a
4137  046e a40f          	and	a,#15
4138  0470 97            	ld	xl,a
4139  0471 a60a          	ld	a,#10
4140  0473 42            	mul	x,a
4141  0474 9f            	ld	a,xl
4142  0475 1b01          	add	a,(OFST+0,sp)
4143  0477 b70f          	ld	_time_hour,a
4144                     ; 471 time_date=(((buff_for_time[4]&0x30)>>4)*10)+(buff_for_time[4]&0x0f);
4146  0479 b616          	ld	a,_buff_for_time+4
4147  047b a40f          	and	a,#15
4148  047d 6b01          	ld	(OFST+0,sp),a
4149  047f b616          	ld	a,_buff_for_time+4
4150  0481 a430          	and	a,#48
4151  0483 4e            	swap	a
4152  0484 a40f          	and	a,#15
4153  0486 97            	ld	xl,a
4154  0487 a60a          	ld	a,#10
4155  0489 42            	mul	x,a
4156  048a 9f            	ld	a,xl
4157  048b 1b01          	add	a,(OFST+0,sp)
4158  048d b703          	ld	_time_date,a
4159                     ; 472 time_month=(((buff_for_time[5]&0x10)>>4)*10)+(buff_for_time[5]&0x0f);
4161  048f b617          	ld	a,_buff_for_time+5
4162  0491 a40f          	and	a,#15
4163  0493 6b01          	ld	(OFST+0,sp),a
4164  0495 b617          	ld	a,_buff_for_time+5
4165  0497 a410          	and	a,#16
4166  0499 4e            	swap	a
4167  049a a40f          	and	a,#15
4168  049c 97            	ld	xl,a
4169  049d a60a          	ld	a,#10
4170  049f 42            	mul	x,a
4171  04a0 9f            	ld	a,xl
4172  04a1 1b01          	add	a,(OFST+0,sp)
4173  04a3 b70d          	ld	_time_month,a
4174                     ; 473 time_year=(((buff_for_time[6]&0xf0)>>4)*10)+(buff_for_time[6]&0x0f);
4176  04a5 b618          	ld	a,_buff_for_time+6
4177  04a7 a40f          	and	a,#15
4178  04a9 6b01          	ld	(OFST+0,sp),a
4179  04ab b618          	ld	a,_buff_for_time+6
4180  04ad a4f0          	and	a,#240
4181  04af 4e            	swap	a
4182  04b0 a40f          	and	a,#15
4183  04b2 97            	ld	xl,a
4184  04b3 a60a          	ld	a,#10
4185  04b5 42            	mul	x,a
4186  04b6 9f            	ld	a,xl
4187  04b7 1b01          	add	a,(OFST+0,sp)
4188  04b9 b70c          	ld	_time_year,a
4189                     ; 474 time_day_of_week=(buff_for_time[3]&0x07);
4191  04bb b615          	ld	a,_buff_for_time+3
4192  04bd a407          	and	a,#7
4193  04bf b70e          	ld	_time_day_of_week,a
4194                     ; 475 }
4197  04c1 84            	pop	a
4198  04c2 81            	ret
4221                     ; 479 void sheduler_hndl(void)
4221                     ; 480 {
4222                     	switch	.text
4223  04c3               _sheduler_hndl:
4227                     ; 510 }
4230  04c3 81            	ret
4256                     ; 513 void isp_hndl(void)
4256                     ; 514 {
4257                     	switch	.text
4258  04c4               _isp_hndl:
4262                     ; 515 isp_cnt++;
4264  04c4 725c0000      	inc	_isp_cnt
4265                     ; 516 if(isp_cnt>=10)
4267  04c8 c60000        	ld	a,_isp_cnt
4268  04cb a10a          	cp	a,#10
4269  04cd 2515          	jrult	L1632
4270                     ; 518 	isp_cnt=0;
4272  04cf 725f0000      	clr	_isp_cnt
4273                     ; 519 	isp_main_cnt++;
4275  04d3 ae4020        	ldw	x,#_isp_main_cnt
4276  04d6 cd0000        	call	c_ltor
4278  04d9 a601          	ld	a,#1
4279  04db cd0000        	call	c_ladc
4281  04de ae4020        	ldw	x,#_isp_main_cnt
4282  04e1 cd0000        	call	c_eewrl
4284  04e4               L1632:
4285                     ; 522 if((isp_cnt>=1)&&(isp_cnt<6))out_stat[0]=osON;	
4287  04e4 725d0000      	tnz	_isp_cnt
4288  04e8 270d          	jreq	L3632
4290  04ea c60000        	ld	a,_isp_cnt
4291  04ed a106          	cp	a,#6
4292  04ef 2406          	jruge	L3632
4295  04f1 35010020      	mov	_out_stat,#1
4297  04f5 2002          	jra	L5632
4298  04f7               L3632:
4299                     ; 523 else out_stat[0]=osOFF;
4301  04f7 3f20          	clr	_out_stat
4302  04f9               L5632:
4303                     ; 525 if((isp_cnt>=2)&&(isp_cnt<7))out_stat[1]=osON;	
4305  04f9 c60000        	ld	a,_isp_cnt
4306  04fc a102          	cp	a,#2
4307  04fe 250d          	jrult	L7632
4309  0500 c60000        	ld	a,_isp_cnt
4310  0503 a107          	cp	a,#7
4311  0505 2406          	jruge	L7632
4314  0507 35010021      	mov	_out_stat+1,#1
4316  050b 2002          	jra	L1732
4317  050d               L7632:
4318                     ; 526 else out_stat[1]=osOFF;
4320  050d 3f21          	clr	_out_stat+1
4321  050f               L1732:
4322                     ; 528 if((isp_cnt>=3)&&(isp_cnt<8))out_stat[2]=osON;	
4324  050f c60000        	ld	a,_isp_cnt
4325  0512 a103          	cp	a,#3
4326  0514 250d          	jrult	L3732
4328  0516 c60000        	ld	a,_isp_cnt
4329  0519 a108          	cp	a,#8
4330  051b 2406          	jruge	L3732
4333  051d 35010022      	mov	_out_stat+2,#1
4335  0521 2002          	jra	L5732
4336  0523               L3732:
4337                     ; 529 else out_stat[2]=osOFF;
4339  0523 3f22          	clr	_out_stat+2
4340  0525               L5732:
4341                     ; 530 }
4344  0525 81            	ret
4389                     ; 533 void power_hndl(void)
4389                     ; 534 {
4390                     	switch	.text
4391  0526               _power_hndl:
4393  0526 88            	push	a
4394       00000001      OFST:	set	1
4397                     ; 535 disableInterrupts();	
4400  0527 9b            sim
4402                     ; 536 if((powerNecc)&&(powerNeccOld==0))
4405  0528 3d25          	tnz	_powerNecc
4406  052a 2707          	jreq	L5142
4408  052c 3d26          	tnz	_powerNeccOld
4409  052e 2603          	jrne	L5142
4410                     ; 538 	fiksRandom=currRandom;
4412  0530 458584        	mov	_fiksRandom,_currRandom
4413  0533               L5142:
4414                     ; 541 if(!powerNecc)
4416  0533 3d25          	tnz	_powerNecc
4417  0535 2608          	jrne	L7142
4418                     ; 543 	out_stat[0]=osOFF;
4420  0537 3f20          	clr	_out_stat
4421                     ; 544 	out_stat[1]=osOFF;
4423  0539 3f21          	clr	_out_stat+1
4424                     ; 545 	out_stat[2]=osOFF;
4426  053b 3f22          	clr	_out_stat+2
4428  053d 2063          	jra	L1242
4429  053f               L7142:
4430                     ; 550 	for(i=0;i<3;i++)
4432  053f 0f01          	clr	(OFST+0,sp)
4433  0541               L3242:
4434                     ; 552 		if((i<powerNecc)&&(i<MAX_POWER_EE))		out_stat[warmOrder[fiksRandom][i]]=osON;
4436  0541 9c            	rvf
4437  0542 7b01          	ld	a,(OFST+0,sp)
4438  0544 5f            	clrw	x
4439  0545 97            	ld	xl,a
4440  0546 905f          	clrw	y
4441  0548 b625          	ld	a,_powerNecc
4442  054a 2a02          	jrpl	L24
4443  054c 9053          	cplw	y
4444  054e               L24:
4445  054e 9097          	ld	yl,a
4446  0550 90bf00        	ldw	c_y,y
4447  0553 b300          	cpw	x,c_y
4448  0555 2e2f          	jrsge	L1342
4450  0557 9c            	rvf
4451  0558 7b01          	ld	a,(OFST+0,sp)
4452  055a 5f            	clrw	x
4453  055b 97            	ld	xl,a
4454  055c 905f          	clrw	y
4455  055e c64047        	ld	a,_MAX_POWER_EE
4456  0561 2a02          	jrpl	L44
4457  0563 9053          	cplw	y
4458  0565               L44:
4459  0565 9097          	ld	yl,a
4460  0567 90bf00        	ldw	c_y,y
4461  056a b300          	cpw	x,c_y
4462  056c 2e18          	jrsge	L1342
4465  056e b684          	ld	a,_fiksRandom
4466  0570 97            	ld	xl,a
4467  0571 a603          	ld	a,#3
4468  0573 42            	mul	x,a
4469  0574 01            	rrwa	x,a
4470  0575 1b01          	add	a,(OFST+0,sp)
4471  0577 2401          	jrnc	L64
4472  0579 5c            	incw	x
4473  057a               L64:
4474  057a 02            	rlwa	x,a
4475  057b d60000        	ld	a,(_warmOrder,x)
4476  057e 5f            	clrw	x
4477  057f 97            	ld	xl,a
4478  0580 a601          	ld	a,#1
4479  0582 e720          	ld	(_out_stat,x),a
4481  0584 2014          	jra	L3342
4482  0586               L1342:
4483                     ; 553 		else									out_stat[warmOrder[fiksRandom][i]]=osOFF;
4485  0586 b684          	ld	a,_fiksRandom
4486  0588 97            	ld	xl,a
4487  0589 a603          	ld	a,#3
4488  058b 42            	mul	x,a
4489  058c 01            	rrwa	x,a
4490  058d 1b01          	add	a,(OFST+0,sp)
4491  058f 2401          	jrnc	L05
4492  0591 5c            	incw	x
4493  0592               L05:
4494  0592 02            	rlwa	x,a
4495  0593 d60000        	ld	a,(_warmOrder,x)
4496  0596 5f            	clrw	x
4497  0597 97            	ld	xl,a
4498  0598 6f20          	clr	(_out_stat,x)
4499  059a               L3342:
4500                     ; 550 	for(i=0;i<3;i++)
4502  059a 0c01          	inc	(OFST+0,sp)
4505  059c 7b01          	ld	a,(OFST+0,sp)
4506  059e a103          	cp	a,#3
4507  05a0 259f          	jrult	L3242
4508  05a2               L1242:
4509                     ; 557 powerNeccOld=powerNecc;
4511  05a2 452526        	mov	_powerNeccOld,_powerNecc
4512                     ; 559 powerEnabled=0;
4514  05a5 3f0a          	clr	_powerEnabled
4515                     ; 560 if((out_stat[0]==osON)&&(outMode==omON))powerEnabled++;
4517  05a7 b620          	ld	a,_out_stat
4518  05a9 a101          	cp	a,#1
4519  05ab 2609          	jrne	L5342
4521  05ad c6401d        	ld	a,_outMode
4522  05b0 a101          	cp	a,#1
4523  05b2 2602          	jrne	L5342
4526  05b4 3c0a          	inc	_powerEnabled
4527  05b6               L5342:
4528                     ; 561 if((out_stat[1]==osON)&&(outMode==omON))powerEnabled++;
4530  05b6 b621          	ld	a,_out_stat+1
4531  05b8 a101          	cp	a,#1
4532  05ba 2609          	jrne	L7342
4534  05bc c6401d        	ld	a,_outMode
4535  05bf a101          	cp	a,#1
4536  05c1 2602          	jrne	L7342
4539  05c3 3c0a          	inc	_powerEnabled
4540  05c5               L7342:
4541                     ; 562 if((out_stat[2]==osON)&&(outMode==omON))powerEnabled++;
4543  05c5 b622          	ld	a,_out_stat+2
4544  05c7 a101          	cp	a,#1
4545  05c9 2609          	jrne	L1442
4547  05cb c6401d        	ld	a,_outMode
4548  05ce a101          	cp	a,#1
4549  05d0 2602          	jrne	L1442
4552  05d2 3c0a          	inc	_powerEnabled
4553  05d4               L1442:
4554                     ; 564 enableInterrupts();
4557  05d4 9a            rim
4559                     ; 565 }
4563  05d5 84            	pop	a
4564  05d6 81            	ret
4594                     ; 568 void power_necc_hndl(void)
4594                     ; 569 {
4595                     	switch	.text
4596  05d7               _power_necc_hndl:
4600                     ; 571 if((aktualTemper>=targetTemper)||(temperOfWater>=90)||(mainCnt<3)||(powerStat==psOFF))
4602  05d7 9c            	rvf
4603  05d8 b61d          	ld	a,_aktualTemper
4604  05da b11c          	cp	a,_targetTemper
4605  05dc 2e13          	jrsge	L5542
4607  05de 9c            	rvf
4608  05df b61f          	ld	a,_temperOfWater
4609  05e1 a15a          	cp	a,#90
4610  05e3 2e0c          	jrsge	L5542
4612  05e5 9c            	rvf
4613  05e6 be82          	ldw	x,_mainCnt
4614  05e8 a30003        	cpw	x,#3
4615  05eb 2f04          	jrslt	L5542
4617  05ed 3d29          	tnz	_powerStat
4618  05ef 2603          	jrne	L3542
4619  05f1               L5542:
4620                     ; 573 	powerNecc=0;	
4622  05f1 3f25          	clr	_powerNecc
4624  05f3               L3642:
4625                     ; 584 }
4628  05f3 81            	ret
4629  05f4               L3542:
4630                     ; 575 else if(aktualTemper<targetTemper)
4632  05f4 9c            	rvf
4633  05f5 b61d          	ld	a,_aktualTemper
4634  05f7 b11c          	cp	a,_targetTemper
4635  05f9 2ef8          	jrsge	L3642
4636                     ; 577 	powerNeccDelta=targetTemper-aktualTemper;
4638  05fb b61c          	ld	a,_targetTemper
4639  05fd b01d          	sub	a,_aktualTemper
4640  05ff b70b          	ld	_powerNeccDelta,a
4641                     ; 578 	powerNecc=0;
4643  0601 3f25          	clr	_powerNecc
4644                     ; 579 	if(powerNeccDelta>=2) powerNecc=1;
4646  0603 9c            	rvf
4647  0604 b60b          	ld	a,_powerNeccDelta
4648  0606 a102          	cp	a,#2
4649  0608 2f04          	jrslt	L7642
4652  060a 35010025      	mov	_powerNecc,#1
4653  060e               L7642:
4654                     ; 580 	if(powerNeccDelta>=3) powerNecc=2;
4656  060e 9c            	rvf
4657  060f b60b          	ld	a,_powerNeccDelta
4658  0611 a103          	cp	a,#3
4659  0613 2f04          	jrslt	L1742
4662  0615 35020025      	mov	_powerNecc,#2
4663  0619               L1742:
4664                     ; 581 	if(powerNeccDelta>=4) powerNecc=3;
4666  0619 9c            	rvf
4667  061a b60b          	ld	a,_powerNeccDelta
4668  061c a104          	cp	a,#4
4669  061e 2fd3          	jrslt	L3642
4672  0620 35030025      	mov	_powerNecc,#3
4673  0624 20cd          	jra	L3642
4717                     ; 587 void matemath(void)
4717                     ; 588 {
4718                     	switch	.text
4719  0626               _matemath:
4721  0626 89            	pushw	x
4722       00000002      OFST:	set	2
4725                     ; 590 if((wire1_in[1]&0xf0)==0)
4727  0627 c60001        	ld	a,_wire1_in+1
4728  062a a5f0          	bcp	a,#240
4729  062c 2624          	jrne	L3152
4730                     ; 592 	temperOfWaterTemp=((wire1_in[0]&0xf0)>>4)+((wire1_in[1]&0x0f)<<4);
4732  062e c60001        	ld	a,_wire1_in+1
4733  0631 a40f          	and	a,#15
4734  0633 97            	ld	xl,a
4735  0634 a610          	ld	a,#16
4736  0636 42            	mul	x,a
4737  0637 9f            	ld	a,xl
4738  0638 6b01          	ld	(OFST-1,sp),a
4739  063a c60000        	ld	a,_wire1_in
4740  063d a4f0          	and	a,#240
4741  063f 4e            	swap	a
4742  0640 a40f          	and	a,#15
4743  0642 1b01          	add	a,(OFST-1,sp)
4744  0644 6b02          	ld	(OFST+0,sp),a
4745                     ; 593 	temperOfWater=(signed short)temperOfWaterTemp;
4747  0646 7b02          	ld	a,(OFST+0,sp)
4748  0648 b71f          	ld	_temperOfWater,a
4749                     ; 594 	if(bDEB)temperOfWater=1;
4751  064a 3d00          	tnz	_bDEB
4752  064c 2704          	jreq	L3152
4755  064e 3501001f      	mov	_temperOfWater,#1
4756  0652               L3152:
4757                     ; 596 if(MODE_EE==1)
4759  0652 c64046        	ld	a,_MODE_EE
4760  0655 a101          	cp	a,#1
4761  0657 260a          	jrne	L7152
4762                     ; 598 	aktualTemper=temperOfWater;
4764  0659 451f1d        	mov	_aktualTemper,_temperOfWater
4765                     ; 599 	targetTemper=NECC_TEMPER_WATER_EE;
4767  065c 554045001c    	mov	_targetTemper,_NECC_TEMPER_WATER_EE
4769  0661 201e          	jra	L1252
4770  0663               L7152:
4771                     ; 601 else if(MODE_EE==2)
4773  0663 c64046        	ld	a,_MODE_EE
4774  0666 a102          	cp	a,#2
4775  0668 260a          	jrne	L3252
4776                     ; 603 	aktualTemper=temperOfAir;
4778  066a 451e1d        	mov	_aktualTemper,_temperOfAir
4779                     ; 604 	targetTemper=NECC_TEMPER_AIR_EE;
4781  066d 554044001c    	mov	_targetTemper,_NECC_TEMPER_AIR_EE
4783  0672 200d          	jra	L1252
4784  0674               L3252:
4785                     ; 606 else if(MODE_EE==3)
4787  0674 c64046        	ld	a,_MODE_EE
4788  0677 a103          	cp	a,#3
4789  0679 2606          	jrne	L1252
4790                     ; 608 	aktualTemper=temperOfAir;
4792  067b 451e1d        	mov	_aktualTemper,_temperOfAir
4793                     ; 609 	targetTemper=temperRegToSheduler;
4795  067e 45041c        	mov	_targetTemper,_temperRegToSheduler
4796  0681               L1252:
4797                     ; 611 }
4800  0681 85            	popw	x
4801  0682 81            	ret
4890                     	switch	.const
4891  0046               L06:
4892  0046 00002710      	dc.l	10000
4893                     ; 614 void ind_hndl(void)
4893                     ; 615 {
4894                     	switch	.text
4895  0683               _ind_hndl:
4897  0683 89            	pushw	x
4898       00000002      OFST:	set	2
4901                     ; 628 else */if(ind==iMn)
4903  0684 3d61          	tnz	_a_ind
4904  0686 2703          	jreq	L643
4905  0688 cc079d        	jp	L1452
4906  068b               L643:
4907                     ; 631 	int2indII_slkuf(isp_main_cnt%10000,0, 4, 0, 0, 0);
4909  068b 4b00          	push	#0
4910  068d 4b00          	push	#0
4911  068f 4b00          	push	#0
4912  0691 4b04          	push	#4
4913  0693 4b00          	push	#0
4914  0695 ae4020        	ldw	x,#_isp_main_cnt
4915  0698 cd0000        	call	c_ltor
4917  069b ae0046        	ldw	x,#L06
4918  069e cd0000        	call	c_lmod
4920  06a1 be02          	ldw	x,c_lreg+2
4921  06a3 cd0000        	call	_int2indII_slkuf
4923  06a6 5b05          	addw	sp,#5
4924                     ; 632 	int2indI_slkuf(isp_main_cnt/10000,1, 3, 0, 0, 0);
4926  06a8 4b00          	push	#0
4927  06aa 4b00          	push	#0
4928  06ac 4b00          	push	#0
4929  06ae 4b03          	push	#3
4930  06b0 4b01          	push	#1
4931  06b2 ae4020        	ldw	x,#_isp_main_cnt
4932  06b5 cd0000        	call	c_ltor
4934  06b8 ae0046        	ldw	x,#L06
4935  06bb cd0000        	call	c_ldiv
4937  06be be02          	ldw	x,c_lreg+2
4938  06c0 cd0000        	call	_int2indI_slkuf
4940  06c3 5b05          	addw	sp,#5
4941                     ; 643 	led_mask_off(0x00);
4943  06c5 4f            	clr	a
4944  06c6 cd0000        	call	_led_mask_off
4946                     ; 644 	if(outMode==omON)
4948  06c9 c6401d        	ld	a,_outMode
4949  06cc a101          	cp	a,#1
4950  06ce 262d          	jrne	L3452
4951                     ; 646 		if(MODE_EE==1)led_on(1);
4953  06d0 c64046        	ld	a,_MODE_EE
4954  06d3 a101          	cp	a,#1
4955  06d5 2607          	jrne	L5452
4958  06d7 a601          	ld	a,#1
4959  06d9 cd0000        	call	_led_on
4962  06dc 201f          	jra	L3452
4963  06de               L5452:
4964                     ; 647 		else if(MODE_EE==2) led_on(2);
4966  06de c64046        	ld	a,_MODE_EE
4967  06e1 a102          	cp	a,#2
4968  06e3 2607          	jrne	L1552
4971  06e5 a602          	ld	a,#2
4972  06e7 cd0000        	call	_led_on
4975  06ea 2011          	jra	L3452
4976  06ec               L1552:
4977                     ; 648 		else if(MODE_EE==3)
4979  06ec c64046        	ld	a,_MODE_EE
4980  06ef a103          	cp	a,#3
4981  06f1 260a          	jrne	L3452
4982                     ; 650 			led_on(2);
4984  06f3 a602          	ld	a,#2
4985  06f5 cd0000        	call	_led_on
4987                     ; 651 			led_on(3);
4989  06f8 a603          	ld	a,#3
4990  06fa cd0000        	call	_led_on
4992  06fd               L3452:
4993                     ; 654 	if(!optr_kontr_cnt)
4995  06fd 725d0032      	tnz	_optr_kontr_cnt
4996  0701 2638          	jrne	L7552
4997                     ; 656 		if((outMode==omON)&&(out_stat[0]==osON))led_on(4);
4999  0703 c6401d        	ld	a,_outMode
5000  0706 a101          	cp	a,#1
5001  0708 260b          	jrne	L1652
5003  070a b620          	ld	a,_out_stat
5004  070c a101          	cp	a,#1
5005  070e 2605          	jrne	L1652
5008  0710 a604          	ld	a,#4
5009  0712 cd0000        	call	_led_on
5011  0715               L1652:
5012                     ; 657 		if((outMode==omON)&&(out_stat[1]==osON))led_on(5);
5014  0715 c6401d        	ld	a,_outMode
5015  0718 a101          	cp	a,#1
5016  071a 260b          	jrne	L3652
5018  071c b621          	ld	a,_out_stat+1
5019  071e a101          	cp	a,#1
5020  0720 2605          	jrne	L3652
5023  0722 a605          	ld	a,#5
5024  0724 cd0000        	call	_led_on
5026  0727               L3652:
5027                     ; 658 		if((outMode==omON)&&(out_stat[2]==osON))led_on(6);
5029  0727 c6401d        	ld	a,_outMode
5030  072a a101          	cp	a,#1
5031  072c 2643          	jrne	L7652
5033  072e b622          	ld	a,_out_stat+2
5034  0730 a101          	cp	a,#1
5035  0732 263d          	jrne	L7652
5038  0734 a606          	ld	a,#6
5039  0736 cd0000        	call	_led_on
5041  0739 2036          	jra	L7652
5042  073b               L7552:
5043                     ; 662 		if(((optr_kontr_cnt)&&(optr_stat&0x01)))led_on(4);
5045  073b 725d0032      	tnz	_optr_kontr_cnt
5046  073f 270c          	jreq	L1752
5048  0741 c60033        	ld	a,_optr_stat
5049  0744 a501          	bcp	a,#1
5050  0746 2705          	jreq	L1752
5053  0748 a604          	ld	a,#4
5054  074a cd0000        	call	_led_on
5056  074d               L1752:
5057                     ; 663 		if(((optr_kontr_cnt)&&(optr_stat&0x02)))led_on(5);
5059  074d 725d0032      	tnz	_optr_kontr_cnt
5060  0751 270c          	jreq	L3752
5062  0753 c60033        	ld	a,_optr_stat
5063  0756 a502          	bcp	a,#2
5064  0758 2705          	jreq	L3752
5067  075a a605          	ld	a,#5
5068  075c cd0000        	call	_led_on
5070  075f               L3752:
5071                     ; 664 		if(((optr_kontr_cnt)&&(optr_stat&0x04)))led_on(6);
5073  075f 725d0032      	tnz	_optr_kontr_cnt
5074  0763 270c          	jreq	L7652
5076  0765 c60033        	ld	a,_optr_stat
5077  0768 a504          	bcp	a,#4
5078  076a 2705          	jreq	L7652
5081  076c a606          	ld	a,#6
5082  076e cd0000        	call	_led_on
5084  0771               L7652:
5085                     ; 667 	if(bERR)led_on(7);
5087  0771 3d08          	tnz	_bERR
5088  0773 2707          	jreq	L7752
5091  0775 a607          	ld	a,#7
5092  0777 cd0000        	call	_led_on
5095  077a 2009          	jra	L1062
5096  077c               L7752:
5097                     ; 668 	else if(bWARN)led_flash(7);
5099  077c 3d07          	tnz	_bWARN
5100  077e 2705          	jreq	L1062
5103  0780 a607          	ld	a,#7
5104  0782 cd0000        	call	_led_flash
5106  0785               L1062:
5107                     ; 673 	if(modemState==MS_LINKED_INITIALIZED)	led_on(8);
5109  0785 b600          	ld	a,_modemState
5110  0787 a105          	cp	a,#5
5111  0789 2609          	jrne	L5062
5114  078b a608          	ld	a,#8
5115  078d cd0000        	call	_led_on
5118  0790 acf716f7      	jpf	L1162
5119  0794               L5062:
5120                     ; 674 	else 									led_off(8);
5122  0794 a608          	ld	a,#8
5123  0796 cd0000        	call	_led_off
5125  0799 acf716f7      	jpf	L1162
5126  079d               L1452:
5127                     ; 677 else if(ind==iDate_W)
5129  079d b661          	ld	a,_a_ind
5130  079f a104          	cp	a,#4
5131  07a1 2661          	jrne	L3162
5132                     ; 679 	if(sub_ind==0)
5134  07a3 3d62          	tnz	_a_ind+1
5135  07a5 262a          	jrne	L5162
5136                     ; 682 		int2indI_slkuf(time_date,1, 2, 0, 1, 0);
5138  07a7 4b00          	push	#0
5139  07a9 4b01          	push	#1
5140  07ab 4b00          	push	#0
5141  07ad 4b02          	push	#2
5142  07af 4b01          	push	#1
5143  07b1 b603          	ld	a,_time_date
5144  07b3 5f            	clrw	x
5145  07b4 97            	ld	xl,a
5146  07b5 cd0000        	call	_int2indI_slkuf
5148  07b8 5b05          	addw	sp,#5
5149                     ; 683 		int2indII_slkuf(time_month,0, 2, 0, 1, 0);
5151  07ba 4b00          	push	#0
5152  07bc 4b01          	push	#1
5153  07be 4b00          	push	#0
5154  07c0 4b02          	push	#2
5155  07c2 4b00          	push	#0
5156  07c4 b60d          	ld	a,_time_month
5157  07c6 5f            	clrw	x
5158  07c7 97            	ld	xl,a
5159  07c8 cd0000        	call	_int2indII_slkuf
5161  07cb 5b05          	addw	sp,#5
5163  07cd acf716f7      	jpf	L1162
5164  07d1               L5162:
5165                     ; 686 	else if(sub_ind==1)
5167  07d1 b662          	ld	a,_a_ind+1
5168  07d3 a101          	cp	a,#1
5169  07d5 2703          	jreq	L053
5170  07d7 cc16f7        	jp	L1162
5171  07da               L053:
5172                     ; 689 		int2indI_slkuf(time_year,1, 2, 0, 1, 0);
5174  07da 4b00          	push	#0
5175  07dc 4b01          	push	#1
5176  07de 4b00          	push	#0
5177  07e0 4b02          	push	#2
5178  07e2 4b01          	push	#1
5179  07e4 b60c          	ld	a,_time_year
5180  07e6 5f            	clrw	x
5181  07e7 97            	ld	xl,a
5182  07e8 cd0000        	call	_int2indI_slkuf
5184  07eb 5b05          	addw	sp,#5
5185                     ; 690 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 0);		
5187  07ed 4b00          	push	#0
5188  07ef 4b01          	push	#1
5189  07f1 4b00          	push	#0
5190  07f3 4b02          	push	#2
5191  07f5 4b00          	push	#0
5192  07f7 b60e          	ld	a,_time_day_of_week
5193  07f9 5f            	clrw	x
5194  07fa 97            	ld	xl,a
5195  07fb cd0000        	call	_int2indII_slkuf
5197  07fe 5b05          	addw	sp,#5
5198  0800 acf716f7      	jpf	L1162
5199  0804               L3162:
5200                     ; 694 else if(ind==iSet)
5202  0804 b661          	ld	a,_a_ind
5203  0806 a101          	cp	a,#1
5204  0808 2703          	jreq	L253
5205  080a cc095b        	jp	L5262
5206  080d               L253:
5207                     ; 696 	int2indI_slkuf(sub_ind+1,1, 2, 0, 1, 1);
5209  080d 4b01          	push	#1
5210  080f 4b01          	push	#1
5211  0811 4b00          	push	#0
5212  0813 4b02          	push	#2
5213  0815 4b01          	push	#1
5214  0817 5f            	clrw	x
5215  0818 b662          	ld	a,_a_ind+1
5216  081a 2a01          	jrpl	L26
5217  081c 53            	cplw	x
5218  081d               L26:
5219  081d 97            	ld	xl,a
5220  081e 5c            	incw	x
5221  081f cd0000        	call	_int2indI_slkuf
5223  0822 5b05          	addw	sp,#5
5224                     ; 697 	ind_outB[3]=0b10010001;	
5226  0824 35910078      	mov	_ind_outB+3,#145
5227                     ; 699 	if(sub_ind==0)
5229  0828 3d62          	tnz	_a_ind+1
5230  082a 261b          	jrne	L7262
5231                     ; 701 		int2indII_slkuf(MODE_EE,0, 2, 0, 1, 0);
5233  082c 4b00          	push	#0
5234  082e 4b01          	push	#1
5235  0830 4b00          	push	#0
5236  0832 4b02          	push	#2
5237  0834 4b00          	push	#0
5238  0836 5f            	clrw	x
5239  0837 c64046        	ld	a,_MODE_EE
5240  083a 2a01          	jrpl	L46
5241  083c 53            	cplw	x
5242  083d               L46:
5243  083d 97            	ld	xl,a
5244  083e cd0000        	call	_int2indII_slkuf
5246  0841 5b05          	addw	sp,#5
5248  0843 acf716f7      	jpf	L1162
5249  0847               L7262:
5250                     ; 703 	else if(sub_ind==1)
5252  0847 b662          	ld	a,_a_ind+1
5253  0849 a101          	cp	a,#1
5254  084b 261b          	jrne	L3362
5255                     ; 705 		int2indII_slkuf(NECC_TEMPER_WATER_EE,0, 2, 0, 1, 0);
5257  084d 4b00          	push	#0
5258  084f 4b01          	push	#1
5259  0851 4b00          	push	#0
5260  0853 4b02          	push	#2
5261  0855 4b00          	push	#0
5262  0857 5f            	clrw	x
5263  0858 c64045        	ld	a,_NECC_TEMPER_WATER_EE
5264  085b 2a01          	jrpl	L66
5265  085d 53            	cplw	x
5266  085e               L66:
5267  085e 97            	ld	xl,a
5268  085f cd0000        	call	_int2indII_slkuf
5270  0862 5b05          	addw	sp,#5
5272  0864 acf716f7      	jpf	L1162
5273  0868               L3362:
5274                     ; 707 	else if(sub_ind==2)
5276  0868 b662          	ld	a,_a_ind+1
5277  086a a102          	cp	a,#2
5278  086c 261b          	jrne	L7362
5279                     ; 709 		int2indII_slkuf(NECC_TEMPER_AIR_EE,0, 2, 0, 1, 0);
5281  086e 4b00          	push	#0
5282  0870 4b01          	push	#1
5283  0872 4b00          	push	#0
5284  0874 4b02          	push	#2
5285  0876 4b00          	push	#0
5286  0878 5f            	clrw	x
5287  0879 c64044        	ld	a,_NECC_TEMPER_AIR_EE
5288  087c 2a01          	jrpl	L07
5289  087e 53            	cplw	x
5290  087f               L07:
5291  087f 97            	ld	xl,a
5292  0880 cd0000        	call	_int2indII_slkuf
5294  0883 5b05          	addw	sp,#5
5296  0885 acf716f7      	jpf	L1162
5297  0889               L7362:
5298                     ; 711 	else if(sub_ind==3)
5300  0889 b662          	ld	a,_a_ind+1
5301  088b a103          	cp	a,#3
5302  088d 261b          	jrne	L3462
5303                     ; 713 		int2indII_slkuf(MAX_POWER_EE,0, 2, 0, 1, 0);
5305  088f 4b00          	push	#0
5306  0891 4b01          	push	#1
5307  0893 4b00          	push	#0
5308  0895 4b02          	push	#2
5309  0897 4b00          	push	#0
5310  0899 5f            	clrw	x
5311  089a c64047        	ld	a,_MAX_POWER_EE
5312  089d 2a01          	jrpl	L27
5313  089f 53            	cplw	x
5314  08a0               L27:
5315  08a0 97            	ld	xl,a
5316  08a1 cd0000        	call	_int2indII_slkuf
5318  08a4 5b05          	addw	sp,#5
5320  08a6 acf716f7      	jpf	L1162
5321  08aa               L3462:
5322                     ; 715 	else if(sub_ind==4)
5324  08aa b662          	ld	a,_a_ind+1
5325  08ac a104          	cp	a,#4
5326  08ae 2617          	jrne	L7462
5327                     ; 717 		int2indII_slkuf(time_year,0, 2, 0, 1, 0);
5329  08b0 4b00          	push	#0
5330  08b2 4b01          	push	#1
5331  08b4 4b00          	push	#0
5332  08b6 4b02          	push	#2
5333  08b8 4b00          	push	#0
5334  08ba b60c          	ld	a,_time_year
5335  08bc 5f            	clrw	x
5336  08bd 97            	ld	xl,a
5337  08be cd0000        	call	_int2indII_slkuf
5339  08c1 5b05          	addw	sp,#5
5341  08c3 acf716f7      	jpf	L1162
5342  08c7               L7462:
5343                     ; 719 	else if(sub_ind==5)
5345  08c7 b662          	ld	a,_a_ind+1
5346  08c9 a105          	cp	a,#5
5347  08cb 2617          	jrne	L3562
5348                     ; 721 		int2indII_slkuf(time_month,0, 2, 0, 1, 0);
5350  08cd 4b00          	push	#0
5351  08cf 4b01          	push	#1
5352  08d1 4b00          	push	#0
5353  08d3 4b02          	push	#2
5354  08d5 4b00          	push	#0
5355  08d7 b60d          	ld	a,_time_month
5356  08d9 5f            	clrw	x
5357  08da 97            	ld	xl,a
5358  08db cd0000        	call	_int2indII_slkuf
5360  08de 5b05          	addw	sp,#5
5362  08e0 acf716f7      	jpf	L1162
5363  08e4               L3562:
5364                     ; 723 	else if(sub_ind==6)
5366  08e4 b662          	ld	a,_a_ind+1
5367  08e6 a106          	cp	a,#6
5368  08e8 2617          	jrne	L7562
5369                     ; 725 		int2indII_slkuf(time_date,0, 2, 0, 1, 0);
5371  08ea 4b00          	push	#0
5372  08ec 4b01          	push	#1
5373  08ee 4b00          	push	#0
5374  08f0 4b02          	push	#2
5375  08f2 4b00          	push	#0
5376  08f4 b603          	ld	a,_time_date
5377  08f6 5f            	clrw	x
5378  08f7 97            	ld	xl,a
5379  08f8 cd0000        	call	_int2indII_slkuf
5381  08fb 5b05          	addw	sp,#5
5383  08fd acf716f7      	jpf	L1162
5384  0901               L7562:
5385                     ; 728 	else if(sub_ind==7)
5387  0901 b662          	ld	a,_a_ind+1
5388  0903 a107          	cp	a,#7
5389  0905 2617          	jrne	L3662
5390                     ; 730 		int2indII_slkuf(time_hour,0, 2, 0, 1, 0);
5392  0907 4b00          	push	#0
5393  0909 4b01          	push	#1
5394  090b 4b00          	push	#0
5395  090d 4b02          	push	#2
5396  090f 4b00          	push	#0
5397  0911 b60f          	ld	a,_time_hour
5398  0913 5f            	clrw	x
5399  0914 97            	ld	xl,a
5400  0915 cd0000        	call	_int2indII_slkuf
5402  0918 5b05          	addw	sp,#5
5404  091a acf716f7      	jpf	L1162
5405  091e               L3662:
5406                     ; 732 	else if(sub_ind==8)
5408  091e b662          	ld	a,_a_ind+1
5409  0920 a108          	cp	a,#8
5410  0922 2617          	jrne	L7662
5411                     ; 734 		int2indII_slkuf(time_min,0, 2, 0, 1, 0);
5413  0924 4b00          	push	#0
5414  0926 4b01          	push	#1
5415  0928 4b00          	push	#0
5416  092a 4b02          	push	#2
5417  092c 4b00          	push	#0
5418  092e b610          	ld	a,_time_min
5419  0930 5f            	clrw	x
5420  0931 97            	ld	xl,a
5421  0932 cd0000        	call	_int2indII_slkuf
5423  0935 5b05          	addw	sp,#5
5425  0937 acf716f7      	jpf	L1162
5426  093b               L7662:
5427                     ; 736 	else if(sub_ind==9)
5429  093b b662          	ld	a,_a_ind+1
5430  093d a109          	cp	a,#9
5431  093f 2703          	jreq	L453
5432  0941 cc16f7        	jp	L1162
5433  0944               L453:
5434                     ; 738 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 0);
5436  0944 4b00          	push	#0
5437  0946 4b01          	push	#1
5438  0948 4b00          	push	#0
5439  094a 4b02          	push	#2
5440  094c 4b00          	push	#0
5441  094e b60e          	ld	a,_time_day_of_week
5442  0950 5f            	clrw	x
5443  0951 97            	ld	xl,a
5444  0952 cd0000        	call	_int2indII_slkuf
5446  0955 5b05          	addw	sp,#5
5447  0957 acf716f7      	jpf	L1162
5448  095b               L5262:
5449                     ; 742 else if(ind==iSet_)
5451  095b b661          	ld	a,_a_ind
5452  095d a102          	cp	a,#2
5453  095f 2703          	jreq	L653
5454  0961 cc0ab2        	jp	L7762
5455  0964               L653:
5456                     ; 744 	int2indI_slkuf(sub_ind+1,1, 2, 0, 1, 0);
5458  0964 4b00          	push	#0
5459  0966 4b01          	push	#1
5460  0968 4b00          	push	#0
5461  096a 4b02          	push	#2
5462  096c 4b01          	push	#1
5463  096e 5f            	clrw	x
5464  096f b662          	ld	a,_a_ind+1
5465  0971 2a01          	jrpl	L47
5466  0973 53            	cplw	x
5467  0974               L47:
5468  0974 97            	ld	xl,a
5469  0975 5c            	incw	x
5470  0976 cd0000        	call	_int2indI_slkuf
5472  0979 5b05          	addw	sp,#5
5473                     ; 745 	ind_outB[3]=0b10010001;	
5475  097b 35910078      	mov	_ind_outB+3,#145
5476                     ; 747 	if(sub_ind==0)
5478  097f 3d62          	tnz	_a_ind+1
5479  0981 261b          	jrne	L1072
5480                     ; 749 		int2indII_slkuf(MODE_EE,0, 2, 0, 1, 1);
5482  0983 4b01          	push	#1
5483  0985 4b01          	push	#1
5484  0987 4b00          	push	#0
5485  0989 4b02          	push	#2
5486  098b 4b00          	push	#0
5487  098d 5f            	clrw	x
5488  098e c64046        	ld	a,_MODE_EE
5489  0991 2a01          	jrpl	L67
5490  0993 53            	cplw	x
5491  0994               L67:
5492  0994 97            	ld	xl,a
5493  0995 cd0000        	call	_int2indII_slkuf
5495  0998 5b05          	addw	sp,#5
5497  099a acf716f7      	jpf	L1162
5498  099e               L1072:
5499                     ; 751 	else if(sub_ind==1)
5501  099e b662          	ld	a,_a_ind+1
5502  09a0 a101          	cp	a,#1
5503  09a2 261b          	jrne	L5072
5504                     ; 753 		int2indII_slkuf(NECC_TEMPER_WATER_EE,0, 2, 0, 1, 1);
5506  09a4 4b01          	push	#1
5507  09a6 4b01          	push	#1
5508  09a8 4b00          	push	#0
5509  09aa 4b02          	push	#2
5510  09ac 4b00          	push	#0
5511  09ae 5f            	clrw	x
5512  09af c64045        	ld	a,_NECC_TEMPER_WATER_EE
5513  09b2 2a01          	jrpl	L001
5514  09b4 53            	cplw	x
5515  09b5               L001:
5516  09b5 97            	ld	xl,a
5517  09b6 cd0000        	call	_int2indII_slkuf
5519  09b9 5b05          	addw	sp,#5
5521  09bb acf716f7      	jpf	L1162
5522  09bf               L5072:
5523                     ; 755 	else if(sub_ind==2)
5525  09bf b662          	ld	a,_a_ind+1
5526  09c1 a102          	cp	a,#2
5527  09c3 261b          	jrne	L1172
5528                     ; 757 		int2indII_slkuf(NECC_TEMPER_AIR_EE,0, 2, 0, 1, 1);
5530  09c5 4b01          	push	#1
5531  09c7 4b01          	push	#1
5532  09c9 4b00          	push	#0
5533  09cb 4b02          	push	#2
5534  09cd 4b00          	push	#0
5535  09cf 5f            	clrw	x
5536  09d0 c64044        	ld	a,_NECC_TEMPER_AIR_EE
5537  09d3 2a01          	jrpl	L201
5538  09d5 53            	cplw	x
5539  09d6               L201:
5540  09d6 97            	ld	xl,a
5541  09d7 cd0000        	call	_int2indII_slkuf
5543  09da 5b05          	addw	sp,#5
5545  09dc acf716f7      	jpf	L1162
5546  09e0               L1172:
5547                     ; 759 	else if(sub_ind==3)
5549  09e0 b662          	ld	a,_a_ind+1
5550  09e2 a103          	cp	a,#3
5551  09e4 261b          	jrne	L5172
5552                     ; 761 		int2indII_slkuf(MAX_POWER_EE,0, 2, 0, 1, 1);
5554  09e6 4b01          	push	#1
5555  09e8 4b01          	push	#1
5556  09ea 4b00          	push	#0
5557  09ec 4b02          	push	#2
5558  09ee 4b00          	push	#0
5559  09f0 5f            	clrw	x
5560  09f1 c64047        	ld	a,_MAX_POWER_EE
5561  09f4 2a01          	jrpl	L401
5562  09f6 53            	cplw	x
5563  09f7               L401:
5564  09f7 97            	ld	xl,a
5565  09f8 cd0000        	call	_int2indII_slkuf
5567  09fb 5b05          	addw	sp,#5
5569  09fd acf716f7      	jpf	L1162
5570  0a01               L5172:
5571                     ; 763 	else if(sub_ind==4)
5573  0a01 b662          	ld	a,_a_ind+1
5574  0a03 a104          	cp	a,#4
5575  0a05 2617          	jrne	L1272
5576                     ; 765 		int2indII_slkuf(time_year,0, 2, 0, 1, 1);
5578  0a07 4b01          	push	#1
5579  0a09 4b01          	push	#1
5580  0a0b 4b00          	push	#0
5581  0a0d 4b02          	push	#2
5582  0a0f 4b00          	push	#0
5583  0a11 b60c          	ld	a,_time_year
5584  0a13 5f            	clrw	x
5585  0a14 97            	ld	xl,a
5586  0a15 cd0000        	call	_int2indII_slkuf
5588  0a18 5b05          	addw	sp,#5
5590  0a1a acf716f7      	jpf	L1162
5591  0a1e               L1272:
5592                     ; 767 	else if(sub_ind==5)
5594  0a1e b662          	ld	a,_a_ind+1
5595  0a20 a105          	cp	a,#5
5596  0a22 2617          	jrne	L5272
5597                     ; 769 		int2indII_slkuf(time_month,0, 2, 0, 1, 1);
5599  0a24 4b01          	push	#1
5600  0a26 4b01          	push	#1
5601  0a28 4b00          	push	#0
5602  0a2a 4b02          	push	#2
5603  0a2c 4b00          	push	#0
5604  0a2e b60d          	ld	a,_time_month
5605  0a30 5f            	clrw	x
5606  0a31 97            	ld	xl,a
5607  0a32 cd0000        	call	_int2indII_slkuf
5609  0a35 5b05          	addw	sp,#5
5611  0a37 acf716f7      	jpf	L1162
5612  0a3b               L5272:
5613                     ; 771 	else if(sub_ind==6)
5615  0a3b b662          	ld	a,_a_ind+1
5616  0a3d a106          	cp	a,#6
5617  0a3f 2617          	jrne	L1372
5618                     ; 773 		int2indII_slkuf(time_date,0, 2, 0, 1, 1);
5620  0a41 4b01          	push	#1
5621  0a43 4b01          	push	#1
5622  0a45 4b00          	push	#0
5623  0a47 4b02          	push	#2
5624  0a49 4b00          	push	#0
5625  0a4b b603          	ld	a,_time_date
5626  0a4d 5f            	clrw	x
5627  0a4e 97            	ld	xl,a
5628  0a4f cd0000        	call	_int2indII_slkuf
5630  0a52 5b05          	addw	sp,#5
5632  0a54 acf716f7      	jpf	L1162
5633  0a58               L1372:
5634                     ; 776 	else if(sub_ind==7)
5636  0a58 b662          	ld	a,_a_ind+1
5637  0a5a a107          	cp	a,#7
5638  0a5c 2617          	jrne	L5372
5639                     ; 778 		int2indII_slkuf(time_hour,0, 2, 0, 1, 1);
5641  0a5e 4b01          	push	#1
5642  0a60 4b01          	push	#1
5643  0a62 4b00          	push	#0
5644  0a64 4b02          	push	#2
5645  0a66 4b00          	push	#0
5646  0a68 b60f          	ld	a,_time_hour
5647  0a6a 5f            	clrw	x
5648  0a6b 97            	ld	xl,a
5649  0a6c cd0000        	call	_int2indII_slkuf
5651  0a6f 5b05          	addw	sp,#5
5653  0a71 acf716f7      	jpf	L1162
5654  0a75               L5372:
5655                     ; 780 	else if(sub_ind==8)
5657  0a75 b662          	ld	a,_a_ind+1
5658  0a77 a108          	cp	a,#8
5659  0a79 2617          	jrne	L1472
5660                     ; 782 		int2indII_slkuf(time_min,0, 2, 0, 1, 1);
5662  0a7b 4b01          	push	#1
5663  0a7d 4b01          	push	#1
5664  0a7f 4b00          	push	#0
5665  0a81 4b02          	push	#2
5666  0a83 4b00          	push	#0
5667  0a85 b610          	ld	a,_time_min
5668  0a87 5f            	clrw	x
5669  0a88 97            	ld	xl,a
5670  0a89 cd0000        	call	_int2indII_slkuf
5672  0a8c 5b05          	addw	sp,#5
5674  0a8e acf716f7      	jpf	L1162
5675  0a92               L1472:
5676                     ; 784 	else if(sub_ind==9)
5678  0a92 b662          	ld	a,_a_ind+1
5679  0a94 a109          	cp	a,#9
5680  0a96 2703          	jreq	L063
5681  0a98 cc16f7        	jp	L1162
5682  0a9b               L063:
5683                     ; 786 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 1);
5685  0a9b 4b01          	push	#1
5686  0a9d 4b01          	push	#1
5687  0a9f 4b00          	push	#0
5688  0aa1 4b02          	push	#2
5689  0aa3 4b00          	push	#0
5690  0aa5 b60e          	ld	a,_time_day_of_week
5691  0aa7 5f            	clrw	x
5692  0aa8 97            	ld	xl,a
5693  0aa9 cd0000        	call	_int2indII_slkuf
5695  0aac 5b05          	addw	sp,#5
5696  0aae acf716f7      	jpf	L1162
5697  0ab2               L7762:
5698                     ; 790 else if(ind==iSetTable)
5700  0ab2 b661          	ld	a,_a_ind
5701  0ab4 a105          	cp	a,#5
5702  0ab6 2703cc0b45    	jrne	L1572
5703                     ; 792 	ind_outB[3]=0b11001110;
5705  0abb 35ce0078      	mov	_ind_outB+3,#206
5706                     ; 793 	int2indI_slkuf(((sub_ind/5)+1)*10 + ((sub_ind)%5)+1,1, 2, 1, 0, 1);
5708  0abf 4b01          	push	#1
5709  0ac1 4b00          	push	#0
5710  0ac3 4b01          	push	#1
5711  0ac5 4b02          	push	#2
5712  0ac7 4b01          	push	#1
5713  0ac9 5f            	clrw	x
5714  0aca b662          	ld	a,_a_ind+1
5715  0acc 2a01          	jrpl	L601
5716  0ace 53            	cplw	x
5717  0acf               L601:
5718  0acf 97            	ld	xl,a
5719  0ad0 a605          	ld	a,#5
5720  0ad2 cd0000        	call	c_smodx
5722  0ad5 1f06          	ldw	(OFST+4,sp),x
5723  0ad7 5f            	clrw	x
5724  0ad8 b662          	ld	a,_a_ind+1
5725  0ada 2a01          	jrpl	L011
5726  0adc 53            	cplw	x
5727  0add               L011:
5728  0add 97            	ld	xl,a
5729  0ade a605          	ld	a,#5
5730  0ae0 cd0000        	call	c_sdivx
5732  0ae3 90ae000a      	ldw	y,#10
5733  0ae7 cd0000        	call	c_imul
5735  0aea 72fb06        	addw	x,(OFST+4,sp)
5736  0aed 1c000b        	addw	x,#11
5737  0af0 cd0000        	call	_int2indI_slkuf
5739  0af3 5b05          	addw	sp,#5
5740                     ; 795 	if(sub_ind1==0) 
5742  0af5 3d63          	tnz	_a_ind+2
5743  0af7 2608          	jrne	L3572
5744                     ; 799 		ind_outG[2]&=0b11111110;
5746  0af9 72110018      	bres	_ind_outG+2,#0
5748  0afd acf716f7      	jpf	L1162
5749  0b01               L3572:
5750                     ; 803 		int2indII_slkuf(TABLE_TEMPER_EE[sub_ind/5][sub_ind%5],1, 2, 0, 1, 0);
5752  0b01 4b00          	push	#0
5753  0b03 4b01          	push	#1
5754  0b05 4b00          	push	#0
5755  0b07 4b02          	push	#2
5756  0b09 4b01          	push	#1
5757  0b0b 5f            	clrw	x
5758  0b0c b662          	ld	a,_a_ind+1
5759  0b0e 2a01          	jrpl	L211
5760  0b10 53            	cplw	x
5761  0b11               L211:
5762  0b11 97            	ld	xl,a
5763  0b12 a605          	ld	a,#5
5764  0b14 cd0000        	call	c_smodx
5766  0b17 1f06          	ldw	(OFST+4,sp),x
5767  0b19 5f            	clrw	x
5768  0b1a b662          	ld	a,_a_ind+1
5769  0b1c 2a01          	jrpl	L411
5770  0b1e 53            	cplw	x
5771  0b1f               L411:
5772  0b1f 97            	ld	xl,a
5773  0b20 a605          	ld	a,#5
5774  0b22 cd0000        	call	c_sdivx
5776  0b25 90ae0005      	ldw	y,#5
5777  0b29 cd0000        	call	c_imul
5779  0b2c 72fb06        	addw	x,(OFST+4,sp)
5780  0b2f d64048        	ld	a,(_TABLE_TEMPER_EE,x)
5781  0b32 5f            	clrw	x
5782  0b33 4d            	tnz	a
5783  0b34 2a01          	jrpl	L611
5784  0b36 53            	cplw	x
5785  0b37               L611:
5786  0b37 97            	ld	xl,a
5787  0b38 cd0000        	call	_int2indII_slkuf
5789  0b3b 5b05          	addw	sp,#5
5790                     ; 804 		ind_outC[0]=0b00111000;
5792  0b3d 3538000a      	mov	_ind_outC,#56
5793  0b41 acf716f7      	jpf	L1162
5794  0b45               L1572:
5795                     ; 809 else if(ind==iSetTable_)
5797  0b45 b661          	ld	a,_a_ind
5798  0b47 a106          	cp	a,#6
5799  0b49 2703          	jreq	L263
5800  0b4b cc0be4        	jp	L1672
5801  0b4e               L263:
5802                     ; 811 	ind_outB[3]=0b11001110;
5804  0b4e 35ce0078      	mov	_ind_outB+3,#206
5805                     ; 812 	int2indI_slkuf(((sub_ind/5)+1)*10 + ((sub_ind)%5)+1,1, 2, 1, 0, 0);
5807  0b52 4b00          	push	#0
5808  0b54 4b00          	push	#0
5809  0b56 4b01          	push	#1
5810  0b58 4b02          	push	#2
5811  0b5a 4b01          	push	#1
5812  0b5c 5f            	clrw	x
5813  0b5d b662          	ld	a,_a_ind+1
5814  0b5f 2a01          	jrpl	L021
5815  0b61 53            	cplw	x
5816  0b62               L021:
5817  0b62 97            	ld	xl,a
5818  0b63 a605          	ld	a,#5
5819  0b65 cd0000        	call	c_smodx
5821  0b68 1f06          	ldw	(OFST+4,sp),x
5822  0b6a 5f            	clrw	x
5823  0b6b b662          	ld	a,_a_ind+1
5824  0b6d 2a01          	jrpl	L221
5825  0b6f 53            	cplw	x
5826  0b70               L221:
5827  0b70 97            	ld	xl,a
5828  0b71 a605          	ld	a,#5
5829  0b73 cd0000        	call	c_sdivx
5831  0b76 90ae000a      	ldw	y,#10
5832  0b7a cd0000        	call	c_imul
5834  0b7d 72fb06        	addw	x,(OFST+4,sp)
5835  0b80 1c000b        	addw	x,#11
5836  0b83 cd0000        	call	_int2indI_slkuf
5838  0b86 5b05          	addw	sp,#5
5839                     ; 814 	if(sub_ind1==0) 
5841  0b88 3d63          	tnz	_a_ind+2
5842  0b8a 2614          	jrne	L3672
5843                     ; 818 		if(!bFL2)	ind_outG[2]&=0b11111110;
5845  0b8c 3d27          	tnz	_bFL2
5846  0b8e 2608          	jrne	L5672
5849  0b90 72110018      	bres	_ind_outG+2,#0
5851  0b94 acf716f7      	jpf	L1162
5852  0b98               L5672:
5853                     ; 819 		else 		ind_outG[2]|=0b00000001;
5855  0b98 72100018      	bset	_ind_outG+2,#0
5856  0b9c acf716f7      	jpf	L1162
5857  0ba0               L3672:
5858                     ; 823 		int2indII_slkuf(TABLE_TEMPER_EE[sub_ind/5][sub_ind%5],1, 2, 0, 1, 1);
5860  0ba0 4b01          	push	#1
5861  0ba2 4b01          	push	#1
5862  0ba4 4b00          	push	#0
5863  0ba6 4b02          	push	#2
5864  0ba8 4b01          	push	#1
5865  0baa 5f            	clrw	x
5866  0bab b662          	ld	a,_a_ind+1
5867  0bad 2a01          	jrpl	L421
5868  0baf 53            	cplw	x
5869  0bb0               L421:
5870  0bb0 97            	ld	xl,a
5871  0bb1 a605          	ld	a,#5
5872  0bb3 cd0000        	call	c_smodx
5874  0bb6 1f06          	ldw	(OFST+4,sp),x
5875  0bb8 5f            	clrw	x
5876  0bb9 b662          	ld	a,_a_ind+1
5877  0bbb 2a01          	jrpl	L621
5878  0bbd 53            	cplw	x
5879  0bbe               L621:
5880  0bbe 97            	ld	xl,a
5881  0bbf a605          	ld	a,#5
5882  0bc1 cd0000        	call	c_sdivx
5884  0bc4 90ae0005      	ldw	y,#5
5885  0bc8 cd0000        	call	c_imul
5887  0bcb 72fb06        	addw	x,(OFST+4,sp)
5888  0bce d64048        	ld	a,(_TABLE_TEMPER_EE,x)
5889  0bd1 5f            	clrw	x
5890  0bd2 4d            	tnz	a
5891  0bd3 2a01          	jrpl	L031
5892  0bd5 53            	cplw	x
5893  0bd6               L031:
5894  0bd6 97            	ld	xl,a
5895  0bd7 cd0000        	call	_int2indII_slkuf
5897  0bda 5b05          	addw	sp,#5
5898                     ; 824 		ind_outC[0]=0b00111000;
5900  0bdc 3538000a      	mov	_ind_outC,#56
5901  0be0 acf716f7      	jpf	L1162
5902  0be4               L1672:
5903                     ; 829 else if(ind==iDeb)
5905  0be4 b661          	ld	a,_a_ind
5906  0be6 a107          	cp	a,#7
5907  0be8 2703          	jreq	L463
5908  0bea cc110f        	jp	L5772
5909  0bed               L463:
5910                     ; 831 	led_mask_off(0x00);
5912  0bed 4f            	clr	a
5913  0bee cd0000        	call	_led_mask_off
5915                     ; 832 	led_on(sub_ind+1);
5917  0bf1 b662          	ld	a,_a_ind+1
5918  0bf3 4c            	inc	a
5919  0bf4 cd0000        	call	_led_on
5921                     ; 834 	if(sub_ind==0)
5923  0bf7 3d62          	tnz	_a_ind+1
5924  0bf9 2630          	jrne	L7772
5925                     ; 836 		int2indI_slkuf(targetTemper,1, 2, 0, 0, 0);
5927  0bfb 4b00          	push	#0
5928  0bfd 4b00          	push	#0
5929  0bff 4b00          	push	#0
5930  0c01 4b02          	push	#2
5931  0c03 4b01          	push	#1
5932  0c05 5f            	clrw	x
5933  0c06 b61c          	ld	a,_targetTemper
5934  0c08 2a01          	jrpl	L231
5935  0c0a 53            	cplw	x
5936  0c0b               L231:
5937  0c0b 97            	ld	xl,a
5938  0c0c cd0000        	call	_int2indI_slkuf
5940  0c0f 5b05          	addw	sp,#5
5941                     ; 837 		int2indII_slkuf(aktualTemper,0, 2, 0, 0, 0);
5943  0c11 4b00          	push	#0
5944  0c13 4b00          	push	#0
5945  0c15 4b00          	push	#0
5946  0c17 4b02          	push	#2
5947  0c19 4b00          	push	#0
5948  0c1b 5f            	clrw	x
5949  0c1c b61d          	ld	a,_aktualTemper
5950  0c1e 2a01          	jrpl	L431
5951  0c20 53            	cplw	x
5952  0c21               L431:
5953  0c21 97            	ld	xl,a
5954  0c22 cd0000        	call	_int2indII_slkuf
5956  0c25 5b05          	addw	sp,#5
5958  0c27 acf716f7      	jpf	L1162
5959  0c2b               L7772:
5960                     ; 840 	else if(sub_ind==1)
5962  0c2b b662          	ld	a,_a_ind+1
5963  0c2d a101          	cp	a,#1
5964  0c2f 2630          	jrne	L3003
5965                     ; 842 		int2indI_slkuf(temperOfWater,1, 2, 0, 0, 0);
5967  0c31 4b00          	push	#0
5968  0c33 4b00          	push	#0
5969  0c35 4b00          	push	#0
5970  0c37 4b02          	push	#2
5971  0c39 4b01          	push	#1
5972  0c3b 5f            	clrw	x
5973  0c3c b61f          	ld	a,_temperOfWater
5974  0c3e 2a01          	jrpl	L631
5975  0c40 53            	cplw	x
5976  0c41               L631:
5977  0c41 97            	ld	xl,a
5978  0c42 cd0000        	call	_int2indI_slkuf
5980  0c45 5b05          	addw	sp,#5
5981                     ; 843 		int2indII_slkuf(temperOfAir,0, 2, 0, 0, 0);
5983  0c47 4b00          	push	#0
5984  0c49 4b00          	push	#0
5985  0c4b 4b00          	push	#0
5986  0c4d 4b02          	push	#2
5987  0c4f 4b00          	push	#0
5988  0c51 5f            	clrw	x
5989  0c52 b61e          	ld	a,_temperOfAir
5990  0c54 2a01          	jrpl	L041
5991  0c56 53            	cplw	x
5992  0c57               L041:
5993  0c57 97            	ld	xl,a
5994  0c58 cd0000        	call	_int2indII_slkuf
5996  0c5b 5b05          	addw	sp,#5
5998  0c5d acf716f7      	jpf	L1162
5999  0c61               L3003:
6000                     ; 846 	else if(sub_ind==2)
6002  0c61 b662          	ld	a,_a_ind+1
6003  0c63 a102          	cp	a,#2
6004  0c65 2647          	jrne	L7003
6005                     ; 848 		int2indI_slkuf(MAX_POWER_EE,1, 2, 0, 0, 0);
6007  0c67 4b00          	push	#0
6008  0c69 4b00          	push	#0
6009  0c6b 4b00          	push	#0
6010  0c6d 4b02          	push	#2
6011  0c6f 4b01          	push	#1
6012  0c71 5f            	clrw	x
6013  0c72 c64047        	ld	a,_MAX_POWER_EE
6014  0c75 2a01          	jrpl	L241
6015  0c77 53            	cplw	x
6016  0c78               L241:
6017  0c78 97            	ld	xl,a
6018  0c79 cd0000        	call	_int2indI_slkuf
6020  0c7c 5b05          	addw	sp,#5
6021                     ; 849 		int2indII_slkuf(powerNeccDelta,2, 2, 0, 0, 0);
6023  0c7e 4b00          	push	#0
6024  0c80 4b00          	push	#0
6025  0c82 4b00          	push	#0
6026  0c84 4b02          	push	#2
6027  0c86 4b02          	push	#2
6028  0c88 5f            	clrw	x
6029  0c89 b60b          	ld	a,_powerNeccDelta
6030  0c8b 2a01          	jrpl	L441
6031  0c8d 53            	cplw	x
6032  0c8e               L441:
6033  0c8e 97            	ld	xl,a
6034  0c8f cd0000        	call	_int2indII_slkuf
6036  0c92 5b05          	addw	sp,#5
6037                     ; 850 		int2indII_slkuf(powerNecc,0, 2, 0, 0, 0);
6039  0c94 4b00          	push	#0
6040  0c96 4b00          	push	#0
6041  0c98 4b00          	push	#0
6042  0c9a 4b02          	push	#2
6043  0c9c 4b00          	push	#0
6044  0c9e 5f            	clrw	x
6045  0c9f b625          	ld	a,_powerNecc
6046  0ca1 2a01          	jrpl	L641
6047  0ca3 53            	cplw	x
6048  0ca4               L641:
6049  0ca4 97            	ld	xl,a
6050  0ca5 cd0000        	call	_int2indII_slkuf
6052  0ca8 5b05          	addw	sp,#5
6054  0caa acf716f7      	jpf	L1162
6055  0cae               L7003:
6056                     ; 852 	else if(sub_ind==3)
6058  0cae b662          	ld	a,_a_ind+1
6059  0cb0 a103          	cp	a,#3
6060  0cb2 267c          	jrne	L3103
6061                     ; 854 		int2indI_slkuf(aktualTemper,2, 2, 0, 0, 0);	
6063  0cb4 4b00          	push	#0
6064  0cb6 4b00          	push	#0
6065  0cb8 4b00          	push	#0
6066  0cba 4b02          	push	#2
6067  0cbc 4b02          	push	#2
6068  0cbe 5f            	clrw	x
6069  0cbf b61d          	ld	a,_aktualTemper
6070  0cc1 2a01          	jrpl	L051
6071  0cc3 53            	cplw	x
6072  0cc4               L051:
6073  0cc4 97            	ld	xl,a
6074  0cc5 cd0000        	call	_int2indI_slkuf
6076  0cc8 5b05          	addw	sp,#5
6077                     ; 855 		int2indI_slkuf(powerNecc,1, 1, 0, 0, 0);
6079  0cca 4b00          	push	#0
6080  0ccc 4b00          	push	#0
6081  0cce 4b00          	push	#0
6082  0cd0 4b01          	push	#1
6083  0cd2 4b01          	push	#1
6084  0cd4 5f            	clrw	x
6085  0cd5 b625          	ld	a,_powerNecc
6086  0cd7 2a01          	jrpl	L251
6087  0cd9 53            	cplw	x
6088  0cda               L251:
6089  0cda 97            	ld	xl,a
6090  0cdb cd0000        	call	_int2indI_slkuf
6092  0cde 5b05          	addw	sp,#5
6093                     ; 856 		int2indII_slkuf(out_stat[0],3, 1, 0, 0, 0);
6095  0ce0 4b00          	push	#0
6096  0ce2 4b00          	push	#0
6097  0ce4 4b00          	push	#0
6098  0ce6 4b01          	push	#1
6099  0ce8 4b03          	push	#3
6100  0cea b620          	ld	a,_out_stat
6101  0cec 5f            	clrw	x
6102  0ced 97            	ld	xl,a
6103  0cee cd0000        	call	_int2indII_slkuf
6105  0cf1 5b05          	addw	sp,#5
6106                     ; 857 		int2indII_slkuf(out_stat[1],2, 1, 0, 0, 0);
6108  0cf3 4b00          	push	#0
6109  0cf5 4b00          	push	#0
6110  0cf7 4b00          	push	#0
6111  0cf9 4b01          	push	#1
6112  0cfb 4b02          	push	#2
6113  0cfd b621          	ld	a,_out_stat+1
6114  0cff 5f            	clrw	x
6115  0d00 97            	ld	xl,a
6116  0d01 cd0000        	call	_int2indII_slkuf
6118  0d04 5b05          	addw	sp,#5
6119                     ; 858 		int2indII_slkuf(out_stat[2],1, 1, 0, 0, 0);
6121  0d06 4b00          	push	#0
6122  0d08 4b00          	push	#0
6123  0d0a 4b00          	push	#0
6124  0d0c 4b01          	push	#1
6125  0d0e 4b01          	push	#1
6126  0d10 b622          	ld	a,_out_stat+2
6127  0d12 5f            	clrw	x
6128  0d13 97            	ld	xl,a
6129  0d14 cd0000        	call	_int2indII_slkuf
6131  0d17 5b05          	addw	sp,#5
6132                     ; 859 		int2indII_slkuf(fiksRandom,0, 1, 0, 0, 0);
6134  0d19 4b00          	push	#0
6135  0d1b 4b00          	push	#0
6136  0d1d 4b00          	push	#0
6137  0d1f 4b01          	push	#1
6138  0d21 4b00          	push	#0
6139  0d23 b684          	ld	a,_fiksRandom
6140  0d25 5f            	clrw	x
6141  0d26 97            	ld	xl,a
6142  0d27 cd0000        	call	_int2indII_slkuf
6144  0d2a 5b05          	addw	sp,#5
6146  0d2c acf716f7      	jpf	L1162
6147  0d30               L3103:
6148                     ; 861 	else if(sub_ind==4)
6150  0d30 b662          	ld	a,_a_ind+1
6151  0d32 a104          	cp	a,#4
6152  0d34 2640          	jrne	L7103
6153                     ; 863 		int2indI_slkuf(temperRegToSheduler,1, 2, 0, 0, 0);	
6155  0d36 4b00          	push	#0
6156  0d38 4b00          	push	#0
6157  0d3a 4b00          	push	#0
6158  0d3c 4b02          	push	#2
6159  0d3e 4b01          	push	#1
6160  0d40 5f            	clrw	x
6161  0d41 b604          	ld	a,_temperRegToSheduler
6162  0d43 2a01          	jrpl	L451
6163  0d45 53            	cplw	x
6164  0d46               L451:
6165  0d46 97            	ld	xl,a
6166  0d47 cd0000        	call	_int2indI_slkuf
6168  0d4a 5b05          	addw	sp,#5
6169                     ; 865 		int2indII_slkuf(time_day_of_week,3, 1, 0, 0, 0);
6171  0d4c 4b00          	push	#0
6172  0d4e 4b00          	push	#0
6173  0d50 4b00          	push	#0
6174  0d52 4b01          	push	#1
6175  0d54 4b03          	push	#3
6176  0d56 b60e          	ld	a,_time_day_of_week
6177  0d58 5f            	clrw	x
6178  0d59 97            	ld	xl,a
6179  0d5a cd0000        	call	_int2indII_slkuf
6181  0d5d 5b05          	addw	sp,#5
6182                     ; 868 		int2indII_slkuf(day_sheduler_time,0, 3, 0, 0, 0);
6184  0d5f 4b00          	push	#0
6185  0d61 4b00          	push	#0
6186  0d63 4b00          	push	#0
6187  0d65 4b03          	push	#3
6188  0d67 4b00          	push	#0
6189  0d69 b602          	ld	a,_day_sheduler_time
6190  0d6b 5f            	clrw	x
6191  0d6c 97            	ld	xl,a
6192  0d6d cd0000        	call	_int2indII_slkuf
6194  0d70 5b05          	addw	sp,#5
6196  0d72 acf716f7      	jpf	L1162
6197  0d76               L7103:
6198                     ; 871 	else if(sub_ind==5)
6200  0d76 b662          	ld	a,_a_ind+1
6201  0d78 a105          	cp	a,#5
6202  0d7a 2638          	jrne	L3203
6203                     ; 873 		int2indI_slkuf(modemDrvPDUSMSSendStepCnt,1, 3, 0, 0, 0);	
6205  0d7c 4b00          	push	#0
6206  0d7e 4b00          	push	#0
6207  0d80 4b00          	push	#0
6208  0d82 4b03          	push	#3
6209  0d84 4b01          	push	#1
6210  0d86 be00          	ldw	x,_modemDrvPDUSMSSendStepCnt
6211  0d88 cd0000        	call	_int2indI_slkuf
6213  0d8b 5b05          	addw	sp,#5
6214                     ; 875 		int2indII_slkuf(modemDrvWatchDogCnt,0, 3, 0, 0, 0);
6216  0d8d 4b00          	push	#0
6217  0d8f 4b00          	push	#0
6218  0d91 4b00          	push	#0
6219  0d93 4b03          	push	#3
6220  0d95 4b00          	push	#0
6221  0d97 be00          	ldw	x,_modemDrvWatchDogCnt
6222  0d99 cd0000        	call	_int2indII_slkuf
6224  0d9c 5b05          	addw	sp,#5
6225                     ; 878 		int2indII_slkuf(4,3, 1, 0, 0, 1);
6227  0d9e 4b01          	push	#1
6228  0da0 4b00          	push	#0
6229  0da2 4b00          	push	#0
6230  0da4 4b01          	push	#1
6231  0da6 4b03          	push	#3
6232  0da8 ae0004        	ldw	x,#4
6233  0dab cd0000        	call	_int2indII_slkuf
6235  0dae 5b05          	addw	sp,#5
6237  0db0 acf716f7      	jpf	L1162
6238  0db4               L3203:
6239                     ; 880 	else if(sub_ind==6)
6241  0db4 b662          	ld	a,_a_ind+1
6242  0db6 a106          	cp	a,#6
6243  0db8 263b          	jrne	L7203
6244                     ; 882 		int2indI_slkuf(main_power_off_hndl_cnt,1, 3, 0, 0, 0);	
6246  0dba 4b00          	push	#0
6247  0dbc 4b00          	push	#0
6248  0dbe 4b00          	push	#0
6249  0dc0 4b03          	push	#3
6250  0dc2 4b01          	push	#1
6251  0dc4 ce0028        	ldw	x,_main_power_off_hndl_cnt
6252  0dc7 cd0000        	call	_int2indI_slkuf
6254  0dca 5b05          	addw	sp,#5
6255                     ; 884 		int2indII_slkuf(cbcSystemRequ,0, 1, 0, 0, 0);
6257  0dcc 4b00          	push	#0
6258  0dce 4b00          	push	#0
6259  0dd0 4b00          	push	#0
6260  0dd2 4b01          	push	#1
6261  0dd4 4b00          	push	#0
6262  0dd6 c60027        	ld	a,_cbcSystemRequ
6263  0dd9 5f            	clrw	x
6264  0dda 97            	ld	xl,a
6265  0ddb cd0000        	call	_int2indII_slkuf
6267  0dde 5b05          	addw	sp,#5
6268                     ; 885 		int2indII_slkuf(modemDrvPowerDownStepCnt,2, 2, 0, 0, 0);
6270  0de0 4b00          	push	#0
6271  0de2 4b00          	push	#0
6272  0de4 4b00          	push	#0
6273  0de6 4b02          	push	#2
6274  0de8 4b02          	push	#2
6275  0dea be00          	ldw	x,_modemDrvPowerDownStepCnt
6276  0dec cd0000        	call	_int2indII_slkuf
6278  0def 5b05          	addw	sp,#5
6280  0df1 acf716f7      	jpf	L1162
6281  0df5               L7203:
6282                     ; 890 	else if(sub_ind==7)
6284  0df5 b662          	ld	a,_a_ind+1
6285  0df7 a107          	cp	a,#7
6286  0df9 2628          	jrne	L3303
6287                     ; 892 		int2indI_slkuf(tx_counter1,1, 3, 0, 0, 0);	
6289  0dfb 4b00          	push	#0
6290  0dfd 4b00          	push	#0
6291  0dff 4b00          	push	#0
6292  0e01 4b03          	push	#3
6293  0e03 4b01          	push	#1
6294  0e05 ce0000        	ldw	x,_tx_counter1
6295  0e08 cd0000        	call	_int2indI_slkuf
6297  0e0b 5b05          	addw	sp,#5
6298                     ; 894 		int2indII_slkuf(tx_wr_index1,0, 3, 0, 0, 0);
6300  0e0d 4b00          	push	#0
6301  0e0f 4b00          	push	#0
6302  0e11 4b00          	push	#0
6303  0e13 4b03          	push	#3
6304  0e15 4b00          	push	#0
6305  0e17 ce0000        	ldw	x,_tx_wr_index1
6306  0e1a cd0000        	call	_int2indII_slkuf
6308  0e1d 5b05          	addw	sp,#5
6310  0e1f acf716f7      	jpf	L1162
6311  0e23               L3303:
6312                     ; 899 	else if(sub_ind==8)
6314  0e23 b662          	ld	a,_a_ind+1
6315  0e25 a108          	cp	a,#8
6316  0e27 2703          	jreq	L663
6317  0e29 cc0fe5        	jp	L7303
6318  0e2c               L663:
6319                     ; 905 		if(++ind_check_cnt1>=5)
6321  0e2c 9c            	rvf
6322  0e2d ce0001        	ldw	x,_ind_check_cnt1
6323  0e30 1c0001        	addw	x,#1
6324  0e33 cf0001        	ldw	_ind_check_cnt1,x
6325  0e36 a30005        	cpw	x,#5
6326  0e39 2f17          	jrslt	L1403
6327                     ; 907 			ind_check_cnt1=0;
6329  0e3b 5f            	clrw	x
6330  0e3c cf0001        	ldw	_ind_check_cnt1,x
6331                     ; 908 			if(++ind_check_cnt>=64)ind_check_cnt=0;
6333  0e3f 9c            	rvf
6334  0e40 ce0003        	ldw	x,_ind_check_cnt
6335  0e43 1c0001        	addw	x,#1
6336  0e46 cf0003        	ldw	_ind_check_cnt,x
6337  0e49 a30040        	cpw	x,#64
6338  0e4c 2f04          	jrslt	L1403
6341  0e4e 5f            	clrw	x
6342  0e4f cf0003        	ldw	_ind_check_cnt,x
6343  0e52               L1403:
6344                     ; 910 		ind_outB[0]=0xff;
6346  0e52 35ff0075      	mov	_ind_outB,#255
6347                     ; 911 		ind_outB[1]=0xff;
6349  0e56 35ff0076      	mov	_ind_outB+1,#255
6350                     ; 912 		ind_outB[2]=0xff;
6352  0e5a 35ff0077      	mov	_ind_outB+2,#255
6353                     ; 913 		ind_outB[3]=0xff;
6355  0e5e 35ff0078      	mov	_ind_outB+3,#255
6356                     ; 914 		ind_outC[0]=0xff;
6358  0e62 35ff000a      	mov	_ind_outC,#255
6359                     ; 915 		ind_outC[1]=0xff;
6361  0e66 35ff000b      	mov	_ind_outC+1,#255
6362                     ; 916 		ind_outC[2]=0xff;
6364  0e6a 35ff000c      	mov	_ind_outC+2,#255
6365                     ; 917 		ind_outC[3]=0xff;
6367  0e6e 35ff000d      	mov	_ind_outC+3,#255
6368                     ; 918 		ind_outG[0]=0xff;
6370  0e72 35ff0016      	mov	_ind_outG,#255
6371                     ; 919 		ind_outG[1]=0xff;
6373  0e76 35ff0017      	mov	_ind_outG+1,#255
6374                     ; 920 		ind_outG[2]=0xff;
6376  0e7a 35ff0018      	mov	_ind_outG+2,#255
6377                     ; 921 		ind_outG[3]=0xff;
6379  0e7e 35ff0019      	mov	_ind_outG+3,#255
6380                     ; 923 		if(ind_check_cnt<=7)
6382  0e82 9c            	rvf
6383  0e83 ce0003        	ldw	x,_ind_check_cnt
6384  0e86 a30008        	cpw	x,#8
6385  0e89 2e1a          	jrsge	L5403
6386                     ; 925 			ind_outB[3]&=(~(1<<ind_check_cnt));	
6388  0e8b 5f            	clrw	x
6389  0e8c c60004        	ld	a,_ind_check_cnt+1
6390  0e8f 2a01          	jrpl	L651
6391  0e91 53            	cplw	x
6392  0e92               L651:
6393  0e92 97            	ld	xl,a
6394  0e93 a601          	ld	a,#1
6395  0e95 5d            	tnzw	x
6396  0e96 2704          	jreq	L061
6397  0e98               L261:
6398  0e98 48            	sll	a
6399  0e99 5a            	decw	x
6400  0e9a 26fc          	jrne	L261
6401  0e9c               L061:
6402  0e9c 43            	cpl	a
6403  0e9d b478          	and	a,_ind_outB+3
6404  0e9f b778          	ld	_ind_outB+3,a
6406  0ea1 acf716f7      	jpf	L1162
6407  0ea5               L5403:
6408                     ; 927 		else if(ind_check_cnt<=15)
6410  0ea5 9c            	rvf
6411  0ea6 ce0003        	ldw	x,_ind_check_cnt
6412  0ea9 a30010        	cpw	x,#16
6413  0eac 2e1d          	jrsge	L1503
6414                     ; 929 			ind_outB[2]&=(~(1<<(ind_check_cnt-8)));	
6416  0eae c60004        	ld	a,_ind_check_cnt+1
6417  0eb1 a008          	sub	a,#8
6418  0eb3 5f            	clrw	x
6419  0eb4 4d            	tnz	a
6420  0eb5 2a01          	jrpl	L461
6421  0eb7 53            	cplw	x
6422  0eb8               L461:
6423  0eb8 97            	ld	xl,a
6424  0eb9 a601          	ld	a,#1
6425  0ebb 5d            	tnzw	x
6426  0ebc 2704          	jreq	L661
6427  0ebe               L071:
6428  0ebe 48            	sll	a
6429  0ebf 5a            	decw	x
6430  0ec0 26fc          	jrne	L071
6431  0ec2               L661:
6432  0ec2 43            	cpl	a
6433  0ec3 b477          	and	a,_ind_outB+2
6434  0ec5 b777          	ld	_ind_outB+2,a
6436  0ec7 acf716f7      	jpf	L1162
6437  0ecb               L1503:
6438                     ; 931 		else if(ind_check_cnt<=23)
6440  0ecb 9c            	rvf
6441  0ecc ce0003        	ldw	x,_ind_check_cnt
6442  0ecf a30018        	cpw	x,#24
6443  0ed2 2e1d          	jrsge	L5503
6444                     ; 933 			ind_outB[1]&=(~(1<<(ind_check_cnt-16)));	
6446  0ed4 c60004        	ld	a,_ind_check_cnt+1
6447  0ed7 a010          	sub	a,#16
6448  0ed9 5f            	clrw	x
6449  0eda 4d            	tnz	a
6450  0edb 2a01          	jrpl	L271
6451  0edd 53            	cplw	x
6452  0ede               L271:
6453  0ede 97            	ld	xl,a
6454  0edf a601          	ld	a,#1
6455  0ee1 5d            	tnzw	x
6456  0ee2 2704          	jreq	L471
6457  0ee4               L671:
6458  0ee4 48            	sll	a
6459  0ee5 5a            	decw	x
6460  0ee6 26fc          	jrne	L671
6461  0ee8               L471:
6462  0ee8 43            	cpl	a
6463  0ee9 b476          	and	a,_ind_outB+1
6464  0eeb b776          	ld	_ind_outB+1,a
6466  0eed acf716f7      	jpf	L1162
6467  0ef1               L5503:
6468                     ; 935 		else if(ind_check_cnt<=30)
6470  0ef1 9c            	rvf
6471  0ef2 ce0003        	ldw	x,_ind_check_cnt
6472  0ef5 a3001f        	cpw	x,#31
6473  0ef8 2e1d          	jrsge	L1603
6474                     ; 937 			ind_outC[3]&=(~(1<<(ind_check_cnt-23)));	
6476  0efa c60004        	ld	a,_ind_check_cnt+1
6477  0efd a017          	sub	a,#23
6478  0eff 5f            	clrw	x
6479  0f00 4d            	tnz	a
6480  0f01 2a01          	jrpl	L002
6481  0f03 53            	cplw	x
6482  0f04               L002:
6483  0f04 97            	ld	xl,a
6484  0f05 a601          	ld	a,#1
6485  0f07 5d            	tnzw	x
6486  0f08 2704          	jreq	L202
6487  0f0a               L402:
6488  0f0a 48            	sll	a
6489  0f0b 5a            	decw	x
6490  0f0c 26fc          	jrne	L402
6491  0f0e               L202:
6492  0f0e 43            	cpl	a
6493  0f0f b40d          	and	a,_ind_outC+3
6494  0f11 b70d          	ld	_ind_outC+3,a
6496  0f13 acf716f7      	jpf	L1162
6497  0f17               L1603:
6498                     ; 939 		else if(ind_check_cnt==31)
6500  0f17 ce0003        	ldw	x,_ind_check_cnt
6501  0f1a a3001f        	cpw	x,#31
6502  0f1d 2608          	jrne	L5603
6503                     ; 941 			ind_outG[3]&=0xfe;	
6505  0f1f 72110019      	bres	_ind_outG+3,#0
6507  0f23 acf716f7      	jpf	L1162
6508  0f27               L5603:
6509                     ; 943 		else if(ind_check_cnt<=38)
6511  0f27 9c            	rvf
6512  0f28 ce0003        	ldw	x,_ind_check_cnt
6513  0f2b a30027        	cpw	x,#39
6514  0f2e 2e1d          	jrsge	L1703
6515                     ; 945 			ind_outC[2]&=(~(1<<(ind_check_cnt-31)));	
6517  0f30 c60004        	ld	a,_ind_check_cnt+1
6518  0f33 a01f          	sub	a,#31
6519  0f35 5f            	clrw	x
6520  0f36 4d            	tnz	a
6521  0f37 2a01          	jrpl	L602
6522  0f39 53            	cplw	x
6523  0f3a               L602:
6524  0f3a 97            	ld	xl,a
6525  0f3b a601          	ld	a,#1
6526  0f3d 5d            	tnzw	x
6527  0f3e 2704          	jreq	L012
6528  0f40               L212:
6529  0f40 48            	sll	a
6530  0f41 5a            	decw	x
6531  0f42 26fc          	jrne	L212
6532  0f44               L012:
6533  0f44 43            	cpl	a
6534  0f45 b40c          	and	a,_ind_outC+2
6535  0f47 b70c          	ld	_ind_outC+2,a
6537  0f49 acf716f7      	jpf	L1162
6538  0f4d               L1703:
6539                     ; 947 		else if(ind_check_cnt==39)
6541  0f4d ce0003        	ldw	x,_ind_check_cnt
6542  0f50 a30027        	cpw	x,#39
6543  0f53 2608          	jrne	L5703
6544                     ; 949 			ind_outG[2]&=0xfe;	
6546  0f55 72110018      	bres	_ind_outG+2,#0
6548  0f59 acf716f7      	jpf	L1162
6549  0f5d               L5703:
6550                     ; 951 		else if(ind_check_cnt<=46)
6552  0f5d 9c            	rvf
6553  0f5e ce0003        	ldw	x,_ind_check_cnt
6554  0f61 a3002f        	cpw	x,#47
6555  0f64 2e1d          	jrsge	L1013
6556                     ; 953 			ind_outC[1]&=(~(1<<(ind_check_cnt-39)));	
6558  0f66 c60004        	ld	a,_ind_check_cnt+1
6559  0f69 a027          	sub	a,#39
6560  0f6b 5f            	clrw	x
6561  0f6c 4d            	tnz	a
6562  0f6d 2a01          	jrpl	L412
6563  0f6f 53            	cplw	x
6564  0f70               L412:
6565  0f70 97            	ld	xl,a
6566  0f71 a601          	ld	a,#1
6567  0f73 5d            	tnzw	x
6568  0f74 2704          	jreq	L612
6569  0f76               L022:
6570  0f76 48            	sll	a
6571  0f77 5a            	decw	x
6572  0f78 26fc          	jrne	L022
6573  0f7a               L612:
6574  0f7a 43            	cpl	a
6575  0f7b b40b          	and	a,_ind_outC+1
6576  0f7d b70b          	ld	_ind_outC+1,a
6578  0f7f acf716f7      	jpf	L1162
6579  0f83               L1013:
6580                     ; 955 		else if(ind_check_cnt==47)
6582  0f83 ce0003        	ldw	x,_ind_check_cnt
6583  0f86 a3002f        	cpw	x,#47
6584  0f89 2608          	jrne	L5013
6585                     ; 957 			ind_outG[1]&=0xfe;	
6587  0f8b 72110017      	bres	_ind_outG+1,#0
6589  0f8f acf716f7      	jpf	L1162
6590  0f93               L5013:
6591                     ; 959 		else if(ind_check_cnt<=54)
6593  0f93 9c            	rvf
6594  0f94 ce0003        	ldw	x,_ind_check_cnt
6595  0f97 a30037        	cpw	x,#55
6596  0f9a 2e1d          	jrsge	L1113
6597                     ; 961 			ind_outC[0]&=(~(1<<(ind_check_cnt-47)));	
6599  0f9c c60004        	ld	a,_ind_check_cnt+1
6600  0f9f a02f          	sub	a,#47
6601  0fa1 5f            	clrw	x
6602  0fa2 4d            	tnz	a
6603  0fa3 2a01          	jrpl	L222
6604  0fa5 53            	cplw	x
6605  0fa6               L222:
6606  0fa6 97            	ld	xl,a
6607  0fa7 a601          	ld	a,#1
6608  0fa9 5d            	tnzw	x
6609  0faa 2704          	jreq	L422
6610  0fac               L622:
6611  0fac 48            	sll	a
6612  0fad 5a            	decw	x
6613  0fae 26fc          	jrne	L622
6614  0fb0               L422:
6615  0fb0 43            	cpl	a
6616  0fb1 b40a          	and	a,_ind_outC
6617  0fb3 b70a          	ld	_ind_outC,a
6619  0fb5 acf716f7      	jpf	L1162
6620  0fb9               L1113:
6621                     ; 963 		else if(ind_check_cnt==55)
6623  0fb9 ce0003        	ldw	x,_ind_check_cnt
6624  0fbc a30037        	cpw	x,#55
6625  0fbf 2608          	jrne	L5113
6626                     ; 965 			ind_outG[0]&=0xfe;	
6628  0fc1 72110016      	bres	_ind_outG,#0
6630  0fc5 acf716f7      	jpf	L1162
6631  0fc9               L5113:
6632                     ; 967 		else if(ind_check_cnt<=64)
6634  0fc9 9c            	rvf
6635  0fca ce0003        	ldw	x,_ind_check_cnt
6636  0fcd a30041        	cpw	x,#65
6637  0fd0 2f03          	jrslt	L073
6638  0fd2 cc16f7        	jp	L1162
6639  0fd5               L073:
6640                     ; 969 			led_mask_off(0x00);
6642  0fd5 4f            	clr	a
6643  0fd6 cd0000        	call	_led_mask_off
6645                     ; 970 			led_on(ind_check_cnt-55);	
6647  0fd9 c60004        	ld	a,_ind_check_cnt+1
6648  0fdc a037          	sub	a,#55
6649  0fde cd0000        	call	_led_on
6651  0fe1 acf716f7      	jpf	L1162
6652  0fe5               L7303:
6653                     ; 973 	else if(sub_ind==9)
6655  0fe5 b662          	ld	a,_a_ind+1
6656  0fe7 a109          	cp	a,#9
6657  0fe9 2642          	jrne	L5213
6658                     ; 975 		int2indI_slkuf(waterTemperAlarmCnt,1, 3, 0, 0, 0);
6660  0feb 4b00          	push	#0
6661  0fed 4b00          	push	#0
6662  0fef 4b00          	push	#0
6663  0ff1 4b03          	push	#3
6664  0ff3 4b01          	push	#1
6665  0ff5 5f            	clrw	x
6666  0ff6 c60031        	ld	a,_waterTemperAlarmCnt
6667  0ff9 2a01          	jrpl	L032
6668  0ffb 53            	cplw	x
6669  0ffc               L032:
6670  0ffc 97            	ld	xl,a
6671  0ffd cd0000        	call	_int2indI_slkuf
6673  1000 5b05          	addw	sp,#5
6674                     ; 976 		int2indII_slkuf(mainCnt,0, 2, 0, 0, 0);
6676  1002 4b00          	push	#0
6677  1004 4b00          	push	#0
6678  1006 4b00          	push	#0
6679  1008 4b02          	push	#2
6680  100a 4b00          	push	#0
6681  100c be82          	ldw	x,_mainCnt
6682  100e cd0000        	call	_int2indII_slkuf
6684  1011 5b05          	addw	sp,#5
6685                     ; 977 		int2indII_slkuf(temperOfWater,2, 2, 0, 0, 0);
6687  1013 4b00          	push	#0
6688  1015 4b00          	push	#0
6689  1017 4b00          	push	#0
6690  1019 4b02          	push	#2
6691  101b 4b02          	push	#2
6692  101d 5f            	clrw	x
6693  101e b61f          	ld	a,_temperOfWater
6694  1020 2a01          	jrpl	L232
6695  1022 53            	cplw	x
6696  1023               L232:
6697  1023 97            	ld	xl,a
6698  1024 cd0000        	call	_int2indII_slkuf
6700  1027 5b05          	addw	sp,#5
6702  1029 acf716f7      	jpf	L1162
6703  102d               L5213:
6704                     ; 979 	else if(sub_ind==10)
6706  102d b662          	ld	a,_a_ind+1
6707  102f a10a          	cp	a,#10
6708  1031 2651          	jrne	L1313
6709                     ; 981 		int2indI_slkuf(waterTemperAlarm,1, 1, 0, 0, 0);
6711  1033 4b00          	push	#0
6712  1035 4b00          	push	#0
6713  1037 4b00          	push	#0
6714  1039 4b01          	push	#1
6715  103b 4b01          	push	#1
6716  103d b627          	ld	a,_waterTemperAlarm
6717  103f 5f            	clrw	x
6718  1040 97            	ld	xl,a
6719  1041 cd0000        	call	_int2indI_slkuf
6721  1044 5b05          	addw	sp,#5
6722                     ; 982 		int2indI_slkuf(waterTemperAlarmOld,3, 1, 0, 0, 0);
6724  1046 4b00          	push	#0
6725  1048 4b00          	push	#0
6726  104a 4b00          	push	#0
6727  104c 4b01          	push	#1
6728  104e 4b03          	push	#3
6729  1050 b628          	ld	a,_waterTemperAlarmOld
6730  1052 5f            	clrw	x
6731  1053 97            	ld	xl,a
6732  1054 cd0000        	call	_int2indI_slkuf
6734  1057 5b05          	addw	sp,#5
6735                     ; 983 		int2indII_slkuf(mainCnt,0, 2, 0, 0, 0);
6737  1059 4b00          	push	#0
6738  105b 4b00          	push	#0
6739  105d 4b00          	push	#0
6740  105f 4b02          	push	#2
6741  1061 4b00          	push	#0
6742  1063 be82          	ldw	x,_mainCnt
6743  1065 cd0000        	call	_int2indII_slkuf
6745  1068 5b05          	addw	sp,#5
6746                     ; 984 		int2indII_slkuf(temperOfWater,2, 2, 0, 0, 0);
6748  106a 4b00          	push	#0
6749  106c 4b00          	push	#0
6750  106e 4b00          	push	#0
6751  1070 4b02          	push	#2
6752  1072 4b02          	push	#2
6753  1074 5f            	clrw	x
6754  1075 b61f          	ld	a,_temperOfWater
6755  1077 2a01          	jrpl	L432
6756  1079 53            	cplw	x
6757  107a               L432:
6758  107a 97            	ld	xl,a
6759  107b cd0000        	call	_int2indII_slkuf
6761  107e 5b05          	addw	sp,#5
6763  1080 acf716f7      	jpf	L1162
6764  1084               L1313:
6765                     ; 986 	else if(sub_ind==11)
6767  1084 b662          	ld	a,_a_ind+1
6768  1086 a10b          	cp	a,#11
6769  1088 262c          	jrne	L5313
6770                     ; 988 		int2indI_slkuf(optr_stat,1, 3, 0, 0, 0);
6772  108a 4b00          	push	#0
6773  108c 4b00          	push	#0
6774  108e 4b00          	push	#0
6775  1090 4b03          	push	#3
6776  1092 4b01          	push	#1
6777  1094 c60033        	ld	a,_optr_stat
6778  1097 5f            	clrw	x
6779  1098 97            	ld	xl,a
6780  1099 cd0000        	call	_int2indI_slkuf
6782  109c 5b05          	addw	sp,#5
6783                     ; 989 		int2indII_slkuf(optr_kontr_cnt,0, 3, 0, 0, 0);
6785  109e 4b00          	push	#0
6786  10a0 4b00          	push	#0
6787  10a2 4b00          	push	#0
6788  10a4 4b03          	push	#3
6789  10a6 4b00          	push	#0
6790  10a8 c60032        	ld	a,_optr_kontr_cnt
6791  10ab 5f            	clrw	x
6792  10ac 97            	ld	xl,a
6793  10ad cd0000        	call	_int2indII_slkuf
6795  10b0 5b05          	addw	sp,#5
6797  10b2 acf716f7      	jpf	L1162
6798  10b6               L5313:
6799                     ; 991 	else if(sub_ind==12)
6801  10b6 b662          	ld	a,_a_ind+1
6802  10b8 a10c          	cp	a,#12
6803  10ba 2703          	jreq	L273
6804  10bc cc16f7        	jp	L1162
6805  10bf               L273:
6806                     ; 993 		int2indI_slkuf(cntAirSensorLineErrorLo,1, 1, 0, 0, 0);
6808  10bf 4b00          	push	#0
6809  10c1 4b00          	push	#0
6810  10c3 4b00          	push	#0
6811  10c5 4b01          	push	#1
6812  10c7 4b01          	push	#1
6813  10c9 b606          	ld	a,_cntAirSensorLineErrorLo
6814  10cb 5f            	clrw	x
6815  10cc 97            	ld	xl,a
6816  10cd cd0000        	call	_int2indI_slkuf
6818  10d0 5b05          	addw	sp,#5
6819                     ; 994 		int2indI_slkuf(cntAirSensorLineErrorHi,3, 1, 0, 0, 0);
6821  10d2 4b00          	push	#0
6822  10d4 4b00          	push	#0
6823  10d6 4b00          	push	#0
6824  10d8 4b01          	push	#1
6825  10da 4b03          	push	#3
6826  10dc b605          	ld	a,_cntAirSensorLineErrorHi
6827  10de 5f            	clrw	x
6828  10df 97            	ld	xl,a
6829  10e0 cd0000        	call	_int2indI_slkuf
6831  10e3 5b05          	addw	sp,#5
6832                     ; 995 		int2indII_slkuf(airSensorErrorStat,0, 2, 0, 0, 0);
6834  10e5 4b00          	push	#0
6835  10e7 4b00          	push	#0
6836  10e9 4b00          	push	#0
6837  10eb 4b02          	push	#2
6838  10ed 4b00          	push	#0
6839  10ef b623          	ld	a,_airSensorErrorStat
6840  10f1 5f            	clrw	x
6841  10f2 97            	ld	xl,a
6842  10f3 cd0000        	call	_int2indII_slkuf
6844  10f6 5b05          	addw	sp,#5
6845                     ; 996 		int2indII_slkuf(airSensorErrorStatOld,2, 2, 0, 0, 0);
6847  10f8 4b00          	push	#0
6848  10fa 4b00          	push	#0
6849  10fc 4b00          	push	#0
6850  10fe 4b02          	push	#2
6851  1100 4b02          	push	#2
6852  1102 b624          	ld	a,_airSensorErrorStatOld
6853  1104 5f            	clrw	x
6854  1105 97            	ld	xl,a
6855  1106 cd0000        	call	_int2indII_slkuf
6857  1109 5b05          	addw	sp,#5
6858  110b acf716f7      	jpf	L1162
6859  110f               L5772:
6860                     ; 1001 else if(ind==iModem_deb)
6862  110f b661          	ld	a,_a_ind
6863  1111 a10a          	cp	a,#10
6864  1113 2703          	jreq	L473
6865  1115 cc12d9        	jp	L5413
6866  1118               L473:
6867                     ; 1003 	led_mask_off(0x00);
6869  1118 4f            	clr	a
6870  1119 cd0000        	call	_led_mask_off
6872                     ; 1004 	led_on(1);
6874  111c a601          	ld	a,#1
6875  111e cd0000        	call	_led_on
6877                     ; 1005 	led_on(2);
6879  1121 a602          	ld	a,#2
6880  1123 cd0000        	call	_led_on
6882                     ; 1007 	if(sub_ind==0)
6884  1126 3d62          	tnz	_a_ind+1
6885  1128 2703cc11c1    	jrne	L7413
6886                     ; 1009 		int2indI_slkuf(modemState,3, 1, 0, 0, 0);
6888  112d 4b00          	push	#0
6889  112f 4b00          	push	#0
6890  1131 4b00          	push	#0
6891  1133 4b01          	push	#1
6892  1135 4b03          	push	#3
6893  1137 b600          	ld	a,_modemState
6894  1139 5f            	clrw	x
6895  113a 97            	ld	xl,a
6896  113b cd0000        	call	_int2indI_slkuf
6898  113e 5b05          	addw	sp,#5
6899                     ; 1010 		int2indI_slkuf(modem_plazma,1, 1, 0, 0, 0);
6901  1140 4b00          	push	#0
6902  1142 4b00          	push	#0
6903  1144 4b00          	push	#0
6904  1146 4b01          	push	#1
6905  1148 4b01          	push	#1
6906  114a c60000        	ld	a,_modem_plazma
6907  114d 5f            	clrw	x
6908  114e 97            	ld	xl,a
6909  114f cd0000        	call	_int2indI_slkuf
6911  1152 5b05          	addw	sp,#5
6912                     ; 1011 		int2indI_slkuf(modem_plazma1,2, 1, 0, 0, 0);
6914  1154 4b00          	push	#0
6915  1156 4b00          	push	#0
6916  1158 4b00          	push	#0
6917  115a 4b01          	push	#1
6918  115c 4b02          	push	#2
6919  115e c60000        	ld	a,_modem_plazma1
6920  1161 5f            	clrw	x
6921  1162 97            	ld	xl,a
6922  1163 cd0000        	call	_int2indI_slkuf
6924  1166 5b05          	addw	sp,#5
6925                     ; 1013 		int2indII_slkuf(modemDrvPDUSMSSendStepCnt,2, 2, 0, 0, 0);
6927  1168 4b00          	push	#0
6928  116a 4b00          	push	#0
6929  116c 4b00          	push	#0
6930  116e 4b02          	push	#2
6931  1170 4b02          	push	#2
6932  1172 be00          	ldw	x,_modemDrvPDUSMSSendStepCnt
6933  1174 cd0000        	call	_int2indII_slkuf
6935  1177 5b05          	addw	sp,#5
6936                     ; 1014 		int2indII_slkuf(modemDrvInitStepCnt,0, 2, 0, 0, 0);
6938  1179 4b00          	push	#0
6939  117b 4b00          	push	#0
6940  117d 4b00          	push	#0
6941  117f 4b02          	push	#2
6942  1181 4b00          	push	#0
6943  1183 be00          	ldw	x,_modemDrvInitStepCnt
6944  1185 cd0000        	call	_int2indII_slkuf
6946  1188 5b05          	addw	sp,#5
6947                     ; 1015 		if(AUTH_NUMBER_FLAGS&0x01)led_on(8);
6949  118a c6407f        	ld	a,_AUTH_NUMBER_FLAGS
6950  118d a501          	bcp	a,#1
6951  118f 2705          	jreq	L1513
6954  1191 a608          	ld	a,#8
6955  1193 cd0000        	call	_led_on
6957  1196               L1513:
6958                     ; 1016 		if(AUTH_NUMBER_FLAGS&0x02)led_on(7);
6960  1196 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
6961  1199 a502          	bcp	a,#2
6962  119b 2705          	jreq	L3513
6965  119d a607          	ld	a,#7
6966  119f cd0000        	call	_led_on
6968  11a2               L3513:
6969                     ; 1017 		if(AUTH_NUMBER_FLAGS&0x04)led_on(6);
6971  11a2 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
6972  11a5 a504          	bcp	a,#4
6973  11a7 2705          	jreq	L5513
6976  11a9 a606          	ld	a,#6
6977  11ab cd0000        	call	_led_on
6979  11ae               L5513:
6980                     ; 1018 		if(AUTH_NUMBER_FLAGS&0x08)led_on(5);
6982  11ae c6407f        	ld	a,_AUTH_NUMBER_FLAGS
6983  11b1 a508          	bcp	a,#8
6984  11b3 2603          	jrne	L673
6985  11b5 cc16f7        	jp	L1162
6986  11b8               L673:
6989  11b8 a605          	ld	a,#5
6990  11ba cd0000        	call	_led_on
6992  11bd acf716f7      	jpf	L1162
6993  11c1               L7413:
6994                     ; 1021 	else if(sub_ind==1)
6996  11c1 b662          	ld	a,_a_ind+1
6997  11c3 a101          	cp	a,#1
6998  11c5 2647          	jrne	L3613
6999                     ; 1023 		int2indI_slkuf(MAX_POWER_EE,1, 2, 0, 0, 0);
7001  11c7 4b00          	push	#0
7002  11c9 4b00          	push	#0
7003  11cb 4b00          	push	#0
7004  11cd 4b02          	push	#2
7005  11cf 4b01          	push	#1
7006  11d1 5f            	clrw	x
7007  11d2 c64047        	ld	a,_MAX_POWER_EE
7008  11d5 2a01          	jrpl	L632
7009  11d7 53            	cplw	x
7010  11d8               L632:
7011  11d8 97            	ld	xl,a
7012  11d9 cd0000        	call	_int2indI_slkuf
7014  11dc 5b05          	addw	sp,#5
7015                     ; 1024 		int2indII_slkuf(powerNeccDelta,2, 2, 0, 0, 0);
7017  11de 4b00          	push	#0
7018  11e0 4b00          	push	#0
7019  11e2 4b00          	push	#0
7020  11e4 4b02          	push	#2
7021  11e6 4b02          	push	#2
7022  11e8 5f            	clrw	x
7023  11e9 b60b          	ld	a,_powerNeccDelta
7024  11eb 2a01          	jrpl	L042
7025  11ed 53            	cplw	x
7026  11ee               L042:
7027  11ee 97            	ld	xl,a
7028  11ef cd0000        	call	_int2indII_slkuf
7030  11f2 5b05          	addw	sp,#5
7031                     ; 1025 		int2indII_slkuf(powerNecc,0, 2, 0, 0, 0);
7033  11f4 4b00          	push	#0
7034  11f6 4b00          	push	#0
7035  11f8 4b00          	push	#0
7036  11fa 4b02          	push	#2
7037  11fc 4b00          	push	#0
7038  11fe 5f            	clrw	x
7039  11ff b625          	ld	a,_powerNecc
7040  1201 2a01          	jrpl	L242
7041  1203 53            	cplw	x
7042  1204               L242:
7043  1204 97            	ld	xl,a
7044  1205 cd0000        	call	_int2indII_slkuf
7046  1208 5b05          	addw	sp,#5
7048  120a acf716f7      	jpf	L1162
7049  120e               L3613:
7050                     ; 1027 	else if(sub_ind==2)
7052  120e b662          	ld	a,_a_ind+1
7053  1210 a102          	cp	a,#2
7054  1212 267c          	jrne	L7613
7055                     ; 1029 		int2indI_slkuf(aktualTemper,2, 2, 0, 0, 0);	
7057  1214 4b00          	push	#0
7058  1216 4b00          	push	#0
7059  1218 4b00          	push	#0
7060  121a 4b02          	push	#2
7061  121c 4b02          	push	#2
7062  121e 5f            	clrw	x
7063  121f b61d          	ld	a,_aktualTemper
7064  1221 2a01          	jrpl	L442
7065  1223 53            	cplw	x
7066  1224               L442:
7067  1224 97            	ld	xl,a
7068  1225 cd0000        	call	_int2indI_slkuf
7070  1228 5b05          	addw	sp,#5
7071                     ; 1030 		int2indI_slkuf(powerNecc,1, 1, 0, 0, 0);
7073  122a 4b00          	push	#0
7074  122c 4b00          	push	#0
7075  122e 4b00          	push	#0
7076  1230 4b01          	push	#1
7077  1232 4b01          	push	#1
7078  1234 5f            	clrw	x
7079  1235 b625          	ld	a,_powerNecc
7080  1237 2a01          	jrpl	L642
7081  1239 53            	cplw	x
7082  123a               L642:
7083  123a 97            	ld	xl,a
7084  123b cd0000        	call	_int2indI_slkuf
7086  123e 5b05          	addw	sp,#5
7087                     ; 1031 		int2indII_slkuf(out_stat[0],3, 1, 0, 0, 0);
7089  1240 4b00          	push	#0
7090  1242 4b00          	push	#0
7091  1244 4b00          	push	#0
7092  1246 4b01          	push	#1
7093  1248 4b03          	push	#3
7094  124a b620          	ld	a,_out_stat
7095  124c 5f            	clrw	x
7096  124d 97            	ld	xl,a
7097  124e cd0000        	call	_int2indII_slkuf
7099  1251 5b05          	addw	sp,#5
7100                     ; 1032 		int2indII_slkuf(out_stat[1],2, 1, 0, 0, 0);
7102  1253 4b00          	push	#0
7103  1255 4b00          	push	#0
7104  1257 4b00          	push	#0
7105  1259 4b01          	push	#1
7106  125b 4b02          	push	#2
7107  125d b621          	ld	a,_out_stat+1
7108  125f 5f            	clrw	x
7109  1260 97            	ld	xl,a
7110  1261 cd0000        	call	_int2indII_slkuf
7112  1264 5b05          	addw	sp,#5
7113                     ; 1033 		int2indII_slkuf(out_stat[2],1, 1, 0, 0, 0);
7115  1266 4b00          	push	#0
7116  1268 4b00          	push	#0
7117  126a 4b00          	push	#0
7118  126c 4b01          	push	#1
7119  126e 4b01          	push	#1
7120  1270 b622          	ld	a,_out_stat+2
7121  1272 5f            	clrw	x
7122  1273 97            	ld	xl,a
7123  1274 cd0000        	call	_int2indII_slkuf
7125  1277 5b05          	addw	sp,#5
7126                     ; 1034 		int2indII_slkuf(fiksRandom,0, 1, 0, 0, 0);
7128  1279 4b00          	push	#0
7129  127b 4b00          	push	#0
7130  127d 4b00          	push	#0
7131  127f 4b01          	push	#1
7132  1281 4b00          	push	#0
7133  1283 b684          	ld	a,_fiksRandom
7134  1285 5f            	clrw	x
7135  1286 97            	ld	xl,a
7136  1287 cd0000        	call	_int2indII_slkuf
7138  128a 5b05          	addw	sp,#5
7140  128c acf716f7      	jpf	L1162
7141  1290               L7613:
7142                     ; 1036 	else if(sub_ind==3)
7144  1290 b662          	ld	a,_a_ind+1
7145  1292 a103          	cp	a,#3
7146  1294 2703          	jreq	L004
7147  1296 cc16f7        	jp	L1162
7148  1299               L004:
7149                     ; 1038 		int2indI_slkuf(temperRegToSheduler,1, 2, 0, 0, 0);	
7151  1299 4b00          	push	#0
7152  129b 4b00          	push	#0
7153  129d 4b00          	push	#0
7154  129f 4b02          	push	#2
7155  12a1 4b01          	push	#1
7156  12a3 5f            	clrw	x
7157  12a4 b604          	ld	a,_temperRegToSheduler
7158  12a6 2a01          	jrpl	L052
7159  12a8 53            	cplw	x
7160  12a9               L052:
7161  12a9 97            	ld	xl,a
7162  12aa cd0000        	call	_int2indI_slkuf
7164  12ad 5b05          	addw	sp,#5
7165                     ; 1040 		int2indII_slkuf(time_day_of_week,3, 1, 0, 0, 0);
7167  12af 4b00          	push	#0
7168  12b1 4b00          	push	#0
7169  12b3 4b00          	push	#0
7170  12b5 4b01          	push	#1
7171  12b7 4b03          	push	#3
7172  12b9 b60e          	ld	a,_time_day_of_week
7173  12bb 5f            	clrw	x
7174  12bc 97            	ld	xl,a
7175  12bd cd0000        	call	_int2indII_slkuf
7177  12c0 5b05          	addw	sp,#5
7178                     ; 1043 		int2indII_slkuf(day_sheduler_time,0, 3, 0, 0, 0);
7180  12c2 4b00          	push	#0
7181  12c4 4b00          	push	#0
7182  12c6 4b00          	push	#0
7183  12c8 4b03          	push	#3
7184  12ca 4b00          	push	#0
7185  12cc b602          	ld	a,_day_sheduler_time
7186  12ce 5f            	clrw	x
7187  12cf 97            	ld	xl,a
7188  12d0 cd0000        	call	_int2indII_slkuf
7190  12d3 5b05          	addw	sp,#5
7191  12d5 acf716f7      	jpf	L1162
7192  12d9               L5413:
7193                     ; 1047 else if(ind==iTemperSet)
7195  12d9 b661          	ld	a,_a_ind
7196  12db a108          	cp	a,#8
7197  12dd 2703          	jreq	L204
7198  12df cc140d        	jp	L7713
7199  12e2               L204:
7200                     ; 1056 	led_mask_off(0x00);
7202  12e2 4f            	clr	a
7203  12e3 cd0000        	call	_led_mask_off
7205                     ; 1057 	if(outMode==omON)
7207  12e6 c6401d        	ld	a,_outMode
7208  12e9 a101          	cp	a,#1
7209  12eb 262d          	jrne	L1023
7210                     ; 1059 		if(MODE_EE==1)led_on(1);
7212  12ed c64046        	ld	a,_MODE_EE
7213  12f0 a101          	cp	a,#1
7214  12f2 2607          	jrne	L3023
7217  12f4 a601          	ld	a,#1
7218  12f6 cd0000        	call	_led_on
7221  12f9 201f          	jra	L1023
7222  12fb               L3023:
7223                     ; 1060 		else if(MODE_EE==2) led_on(2);
7225  12fb c64046        	ld	a,_MODE_EE
7226  12fe a102          	cp	a,#2
7227  1300 2607          	jrne	L7023
7230  1302 a602          	ld	a,#2
7231  1304 cd0000        	call	_led_on
7234  1307 2011          	jra	L1023
7235  1309               L7023:
7236                     ; 1061 		else if(MODE_EE==3)
7238  1309 c64046        	ld	a,_MODE_EE
7239  130c a103          	cp	a,#3
7240  130e 260a          	jrne	L1023
7241                     ; 1063 			led_on(2);
7243  1310 a602          	ld	a,#2
7244  1312 cd0000        	call	_led_on
7246                     ; 1064 			led_on(3);
7248  1315 a603          	ld	a,#3
7249  1317 cd0000        	call	_led_on
7251  131a               L1023:
7252                     ; 1067 	if((outMode==omON)&&(out_stat[0]==osON))led_on(4);
7254  131a c6401d        	ld	a,_outMode
7255  131d a101          	cp	a,#1
7256  131f 260b          	jrne	L5123
7258  1321 b620          	ld	a,_out_stat
7259  1323 a101          	cp	a,#1
7260  1325 2605          	jrne	L5123
7263  1327 a604          	ld	a,#4
7264  1329 cd0000        	call	_led_on
7266  132c               L5123:
7267                     ; 1068 	if((outMode==omON)&&(out_stat[1]==osON))led_on(5);
7269  132c c6401d        	ld	a,_outMode
7270  132f a101          	cp	a,#1
7271  1331 260b          	jrne	L7123
7273  1333 b621          	ld	a,_out_stat+1
7274  1335 a101          	cp	a,#1
7275  1337 2605          	jrne	L7123
7278  1339 a605          	ld	a,#5
7279  133b cd0000        	call	_led_on
7281  133e               L7123:
7282                     ; 1069 	if((outMode==omON)&&(out_stat[2]==osON))led_on(6);
7284  133e c6401d        	ld	a,_outMode
7285  1341 a101          	cp	a,#1
7286  1343 260b          	jrne	L1223
7288  1345 b622          	ld	a,_out_stat+2
7289  1347 a101          	cp	a,#1
7290  1349 2605          	jrne	L1223
7293  134b a606          	ld	a,#6
7294  134d cd0000        	call	_led_on
7296  1350               L1223:
7297                     ; 1071 	if(bERR)led_on(7);
7299  1350 3d08          	tnz	_bERR
7300  1352 2707          	jreq	L3223
7303  1354 a607          	ld	a,#7
7304  1356 cd0000        	call	_led_on
7307  1359 2009          	jra	L5223
7308  135b               L3223:
7309                     ; 1072 	else if(bWARN)led_flash(7);
7311  135b 3d07          	tnz	_bWARN
7312  135d 2705          	jreq	L5223
7315  135f a607          	ld	a,#7
7316  1361 cd0000        	call	_led_flash
7318  1364               L5223:
7319                     ; 1074 	if(aktualTemper>=0)
7321  1364 9c            	rvf
7322  1365 b61d          	ld	a,_aktualTemper
7323  1367 a100          	cp	a,#0
7324  1369 2f1c          	jrslt	L1323
7325                     ; 1076 		int2indI_slkuf(aktualTemper,2, 2, 0, 1, 0);
7327  136b 4b00          	push	#0
7328  136d 4b01          	push	#1
7329  136f 4b00          	push	#0
7330  1371 4b02          	push	#2
7331  1373 4b02          	push	#2
7332  1375 5f            	clrw	x
7333  1376 b61d          	ld	a,_aktualTemper
7334  1378 2a01          	jrpl	L252
7335  137a 53            	cplw	x
7336  137b               L252:
7337  137b 97            	ld	xl,a
7338  137c cd0000        	call	_int2indI_slkuf
7340  137f 5b05          	addw	sp,#5
7341                     ; 1077 		ind_outB[1]=0b10011100;
7343  1381 359c0076      	mov	_ind_outB+1,#156
7345  1385 204a          	jra	L3323
7346  1387               L1323:
7347                     ; 1081 		if(-aktualTemper<10)
7349  1387 9c            	rvf
7350  1388 5f            	clrw	x
7351  1389 b61d          	ld	a,_aktualTemper
7352  138b 2a01          	jrpl	L452
7353  138d 53            	cplw	x
7354  138e               L452:
7355  138e 97            	ld	xl,a
7356  138f 50            	negw	x
7357  1390 a3000a        	cpw	x,#10
7358  1393 2e21          	jrsge	L5323
7359                     ; 1083 			ind_outB[3]=0b10111111;
7361  1395 35bf0078      	mov	_ind_outB+3,#191
7362                     ; 1084 			int2indI_slkuf(-aktualTemper,2, 1, 0, 1, 0);
7364  1399 4b00          	push	#0
7365  139b 4b01          	push	#1
7366  139d 4b00          	push	#0
7367  139f 4b01          	push	#1
7368  13a1 4b02          	push	#2
7369  13a3 5f            	clrw	x
7370  13a4 b61d          	ld	a,_aktualTemper
7371  13a6 2a01          	jrpl	L652
7372  13a8 53            	cplw	x
7373  13a9               L652:
7374  13a9 97            	ld	xl,a
7375  13aa 50            	negw	x
7376  13ab cd0000        	call	_int2indI_slkuf
7378  13ae 5b05          	addw	sp,#5
7379                     ; 1085 			ind_outB[1]=0b10011100;
7381  13b0 359c0076      	mov	_ind_outB+1,#156
7383  13b4 201b          	jra	L3323
7384  13b6               L5323:
7385                     ; 1089 			ind_outB[3]=0b10111111;
7387  13b6 35bf0078      	mov	_ind_outB+3,#191
7388                     ; 1090 			int2indI_slkuf(-aktualTemper,1, 2, 0, 1, 0);
7390  13ba 4b00          	push	#0
7391  13bc 4b01          	push	#1
7392  13be 4b00          	push	#0
7393  13c0 4b02          	push	#2
7394  13c2 4b01          	push	#1
7395  13c4 5f            	clrw	x
7396  13c5 b61d          	ld	a,_aktualTemper
7397  13c7 2a01          	jrpl	L062
7398  13c9 53            	cplw	x
7399  13ca               L062:
7400  13ca 97            	ld	xl,a
7401  13cb 50            	negw	x
7402  13cc cd0000        	call	_int2indI_slkuf
7404  13cf 5b05          	addw	sp,#5
7405  13d1               L3323:
7406                     ; 1094 	int2indII_slkuf(targetTemper,1, 2, 0, 1, MODE_EE==3?0:1);
7408  13d1 c64046        	ld	a,_MODE_EE
7409  13d4 a103          	cp	a,#3
7410  13d6 2603          	jrne	L262
7411  13d8 4f            	clr	a
7412  13d9 2002          	jra	L462
7413  13db               L262:
7414  13db a601          	ld	a,#1
7415  13dd               L462:
7416  13dd 88            	push	a
7417  13de 4b01          	push	#1
7418  13e0 4b00          	push	#0
7419  13e2 4b02          	push	#2
7420  13e4 4b01          	push	#1
7421  13e6 5f            	clrw	x
7422  13e7 b61c          	ld	a,_targetTemper
7423  13e9 2a01          	jrpl	L662
7424  13eb 53            	cplw	x
7425  13ec               L662:
7426  13ec 97            	ld	xl,a
7427  13ed cd0000        	call	_int2indII_slkuf
7429  13f0 5b05          	addw	sp,#5
7430                     ; 1095 	if((bFL2)&&(MODE_EE!=3))	ind_outC[0]=0b11111111;
7432  13f2 3d27          	tnz	_bFL2
7433  13f4 270f          	jreq	L1423
7435  13f6 c64046        	ld	a,_MODE_EE
7436  13f9 a103          	cp	a,#3
7437  13fb 2708          	jreq	L1423
7440  13fd 35ff000a      	mov	_ind_outC,#255
7442  1401 acf716f7      	jpf	L1162
7443  1405               L1423:
7444                     ; 1096 	else 						ind_outC[0]=0b00111000;
7446  1405 3538000a      	mov	_ind_outC,#56
7447  1409 acf716f7      	jpf	L1162
7448  140d               L7713:
7449                     ; 1100 else if(ind==iDefSet)
7451  140d b661          	ld	a,_a_ind
7452  140f a109          	cp	a,#9
7453  1411 262c          	jrne	L7423
7454                     ; 1102 	led_mask_off(0x00);
7456  1413 4f            	clr	a
7457  1414 cd0000        	call	_led_mask_off
7459                     ; 1104 	int2indI_slkuf(123,1, 3, 0, 0, 0);
7461  1417 4b00          	push	#0
7462  1419 4b00          	push	#0
7463  141b 4b00          	push	#0
7464  141d 4b03          	push	#3
7465  141f 4b01          	push	#1
7466  1421 ae007b        	ldw	x,#123
7467  1424 cd0000        	call	_int2indI_slkuf
7469  1427 5b05          	addw	sp,#5
7470                     ; 1105 	int2indII_slkuf(4567,0, 4, 0, 0, 0);
7472  1429 4b00          	push	#0
7473  142b 4b00          	push	#0
7474  142d 4b00          	push	#0
7475  142f 4b04          	push	#4
7476  1431 4b00          	push	#0
7477  1433 ae11d7        	ldw	x,#4567
7478  1436 cd0000        	call	_int2indII_slkuf
7480  1439 5b05          	addw	sp,#5
7482  143b acf716f7      	jpf	L1162
7483  143f               L7423:
7484                     ; 1107 else if(ind==iMn_number)
7486  143f b661          	ld	a,_a_ind
7487  1441 a10b          	cp	a,#11
7488  1443 2703cc14dc    	jrne	L3523
7489                     ; 1109 	led_mask_off(0x00);
7491  1448 4f            	clr	a
7492  1449 cd0000        	call	_led_mask_off
7494                     ; 1111 	int2indI_slkuf(rand_dig[0], 3, 1, 0, 0, 0);
7496  144c 4b00          	push	#0
7497  144e 4b00          	push	#0
7498  1450 4b00          	push	#0
7499  1452 4b01          	push	#1
7500  1454 4b03          	push	#3
7501  1456 c6002a        	ld	a,_rand_dig
7502  1459 5f            	clrw	x
7503  145a 97            	ld	xl,a
7504  145b cd0000        	call	_int2indI_slkuf
7506  145e 5b05          	addw	sp,#5
7507                     ; 1112 	int2indI_slkuf(rand_dig[1], 2, 1, 0, 0, 0);
7509  1460 4b00          	push	#0
7510  1462 4b00          	push	#0
7511  1464 4b00          	push	#0
7512  1466 4b01          	push	#1
7513  1468 4b02          	push	#2
7514  146a c6002b        	ld	a,_rand_dig+1
7515  146d 5f            	clrw	x
7516  146e 97            	ld	xl,a
7517  146f cd0000        	call	_int2indI_slkuf
7519  1472 5b05          	addw	sp,#5
7520                     ; 1113 	int2indI_slkuf(rand_dig[2], 1, 1, 0, 0, 0);
7522  1474 4b00          	push	#0
7523  1476 4b00          	push	#0
7524  1478 4b00          	push	#0
7525  147a 4b01          	push	#1
7526  147c 4b01          	push	#1
7527  147e c6002c        	ld	a,_rand_dig+2
7528  1481 5f            	clrw	x
7529  1482 97            	ld	xl,a
7530  1483 cd0000        	call	_int2indI_slkuf
7532  1486 5b05          	addw	sp,#5
7533                     ; 1114 	int2indII_slkuf(rand_dig[3], 3, 1, 0, 0, 0);
7535  1488 4b00          	push	#0
7536  148a 4b00          	push	#0
7537  148c 4b00          	push	#0
7538  148e 4b01          	push	#1
7539  1490 4b03          	push	#3
7540  1492 c6002d        	ld	a,_rand_dig+3
7541  1495 5f            	clrw	x
7542  1496 97            	ld	xl,a
7543  1497 cd0000        	call	_int2indII_slkuf
7545  149a 5b05          	addw	sp,#5
7546                     ; 1115 	int2indII_slkuf(rand_dig[4], 2, 1, 0, 0, 0);
7548  149c 4b00          	push	#0
7549  149e 4b00          	push	#0
7550  14a0 4b00          	push	#0
7551  14a2 4b01          	push	#1
7552  14a4 4b02          	push	#2
7553  14a6 c6002e        	ld	a,_rand_dig+4
7554  14a9 5f            	clrw	x
7555  14aa 97            	ld	xl,a
7556  14ab cd0000        	call	_int2indII_slkuf
7558  14ae 5b05          	addw	sp,#5
7559                     ; 1116 	int2indII_slkuf(rand_dig[5], 1, 1, 0, 0, 0);
7561  14b0 4b00          	push	#0
7562  14b2 4b00          	push	#0
7563  14b4 4b00          	push	#0
7564  14b6 4b01          	push	#1
7565  14b8 4b01          	push	#1
7566  14ba c6002f        	ld	a,_rand_dig+5
7567  14bd 5f            	clrw	x
7568  14be 97            	ld	xl,a
7569  14bf cd0000        	call	_int2indII_slkuf
7571  14c2 5b05          	addw	sp,#5
7572                     ; 1117 	int2indII_slkuf(rand_dig[6], 0, 1, 0, 0, 0);
7574  14c4 4b00          	push	#0
7575  14c6 4b00          	push	#0
7576  14c8 4b00          	push	#0
7577  14ca 4b01          	push	#1
7578  14cc 4b00          	push	#0
7579  14ce c60030        	ld	a,_rand_dig+6
7580  14d1 5f            	clrw	x
7581  14d2 97            	ld	xl,a
7582  14d3 cd0000        	call	_int2indII_slkuf
7584  14d6 5b05          	addw	sp,#5
7586  14d8 acf716f7      	jpf	L1162
7587  14dc               L3523:
7588                     ; 1120 else if(ind==iAfterReset)
7590  14dc b661          	ld	a,_a_ind
7591  14de a10c          	cp	a,#12
7592  14e0 2619          	jrne	L7523
7593                     ; 1122 	led_mask_off(0x00);
7595  14e2 4f            	clr	a
7596  14e3 cd0000        	call	_led_mask_off
7598                     ; 1124 	int2indI_slkuf(mainCnt, 1, 3, 0, 0, 0);
7600  14e6 4b00          	push	#0
7601  14e8 4b00          	push	#0
7602  14ea 4b00          	push	#0
7603  14ec 4b03          	push	#3
7604  14ee 4b01          	push	#1
7605  14f0 be82          	ldw	x,_mainCnt
7606  14f2 cd0000        	call	_int2indI_slkuf
7608  14f5 5b05          	addw	sp,#5
7610  14f7 acf716f7      	jpf	L1162
7611  14fb               L7523:
7612                     ; 1127 else if(ind==iWater)
7614  14fb b661          	ld	a,_a_ind
7615  14fd a10d          	cp	a,#13
7616  14ff 261e          	jrne	L3623
7617                     ; 1129 	led_mask_off(0x00);
7619  1501 4f            	clr	a
7620  1502 cd0000        	call	_led_mask_off
7622                     ; 1131 	int2indI_slkuf(temperOfWater,1, 3, 0, 0, 0);
7624  1505 4b00          	push	#0
7625  1507 4b00          	push	#0
7626  1509 4b00          	push	#0
7627  150b 4b03          	push	#3
7628  150d 4b01          	push	#1
7629  150f 5f            	clrw	x
7630  1510 b61f          	ld	a,_temperOfWater
7631  1512 2a01          	jrpl	L072
7632  1514 53            	cplw	x
7633  1515               L072:
7634  1515 97            	ld	xl,a
7635  1516 cd0000        	call	_int2indI_slkuf
7637  1519 5b05          	addw	sp,#5
7639  151b acf716f7      	jpf	L1162
7640  151f               L3623:
7641                     ; 1135 else if(ind==iAir)
7643  151f b661          	ld	a,_a_ind
7644  1521 a10e          	cp	a,#14
7645  1523 261e          	jrne	L7623
7646                     ; 1137 	led_mask_off(0x00);
7648  1525 4f            	clr	a
7649  1526 cd0000        	call	_led_mask_off
7651                     ; 1139 	int2indI_slkuf(temperOfAir,1, 3, 0, 0, 0);
7653  1529 4b00          	push	#0
7654  152b 4b00          	push	#0
7655  152d 4b00          	push	#0
7656  152f 4b03          	push	#3
7657  1531 4b01          	push	#1
7658  1533 5f            	clrw	x
7659  1534 b61e          	ld	a,_temperOfAir
7660  1536 2a01          	jrpl	L272
7661  1538 53            	cplw	x
7662  1539               L272:
7663  1539 97            	ld	xl,a
7664  153a cd0000        	call	_int2indI_slkuf
7666  153d 5b05          	addw	sp,#5
7668  153f acf716f7      	jpf	L1162
7669  1543               L7623:
7670                     ; 1143 else if(ind==iInterf)
7672  1543 b661          	ld	a,_a_ind
7673  1545 a10f          	cp	a,#15
7674  1547 2703          	jreq	L404
7675  1549 cc16f7        	jp	L1162
7676  154c               L404:
7677                     ; 1149 	if(++ind_check_cnt1>=5)
7679  154c 9c            	rvf
7680  154d ce0001        	ldw	x,_ind_check_cnt1
7681  1550 1c0001        	addw	x,#1
7682  1553 cf0001        	ldw	_ind_check_cnt1,x
7683  1556 a30005        	cpw	x,#5
7684  1559 2f17          	jrslt	L5723
7685                     ; 1151 		ind_check_cnt1=0;
7687  155b 5f            	clrw	x
7688  155c cf0001        	ldw	_ind_check_cnt1,x
7689                     ; 1152 		if(++ind_check_cnt>=64)ind_check_cnt=0;
7691  155f 9c            	rvf
7692  1560 ce0003        	ldw	x,_ind_check_cnt
7693  1563 1c0001        	addw	x,#1
7694  1566 cf0003        	ldw	_ind_check_cnt,x
7695  1569 a30040        	cpw	x,#64
7696  156c 2f04          	jrslt	L5723
7699  156e 5f            	clrw	x
7700  156f cf0003        	ldw	_ind_check_cnt,x
7701  1572               L5723:
7702                     ; 1154 	ind_outB[0]=0xff;
7704  1572 35ff0075      	mov	_ind_outB,#255
7705                     ; 1155 	ind_outB[1]=0xff;
7707  1576 35ff0076      	mov	_ind_outB+1,#255
7708                     ; 1156 	ind_outB[2]=0xff;
7710  157a 35ff0077      	mov	_ind_outB+2,#255
7711                     ; 1157 	ind_outB[3]=0xff;
7713  157e 35ff0078      	mov	_ind_outB+3,#255
7714                     ; 1158 	ind_outC[0]=0xff;
7716  1582 35ff000a      	mov	_ind_outC,#255
7717                     ; 1159 	ind_outC[1]=0xff;
7719  1586 35ff000b      	mov	_ind_outC+1,#255
7720                     ; 1160 	ind_outC[2]=0xff;
7722  158a 35ff000c      	mov	_ind_outC+2,#255
7723                     ; 1161 	ind_outC[3]=0xff;
7725  158e 35ff000d      	mov	_ind_outC+3,#255
7726                     ; 1162 	ind_outG[0]=0xff;
7728  1592 35ff0016      	mov	_ind_outG,#255
7729                     ; 1163 	ind_outG[1]=0xff;
7731  1596 35ff0017      	mov	_ind_outG+1,#255
7732                     ; 1164 	ind_outG[2]=0xff;
7734  159a 35ff0018      	mov	_ind_outG+2,#255
7735                     ; 1165 	ind_outG[3]=0xff;
7737  159e 35ff0019      	mov	_ind_outG+3,#255
7738                     ; 1166 	led_mask_off(0x00);
7740  15a2 4f            	clr	a
7741  15a3 cd0000        	call	_led_mask_off
7743                     ; 1168 	if(ind_check_cnt<=7)
7745  15a6 9c            	rvf
7746  15a7 ce0003        	ldw	x,_ind_check_cnt
7747  15aa a30008        	cpw	x,#8
7748  15ad 2e1a          	jrsge	L1033
7749                     ; 1170 		ind_outB[3]&=(~(1<<ind_check_cnt));	
7751  15af 5f            	clrw	x
7752  15b0 c60004        	ld	a,_ind_check_cnt+1
7753  15b3 2a01          	jrpl	L472
7754  15b5 53            	cplw	x
7755  15b6               L472:
7756  15b6 97            	ld	xl,a
7757  15b7 a601          	ld	a,#1
7758  15b9 5d            	tnzw	x
7759  15ba 2704          	jreq	L672
7760  15bc               L003:
7761  15bc 48            	sll	a
7762  15bd 5a            	decw	x
7763  15be 26fc          	jrne	L003
7764  15c0               L672:
7765  15c0 43            	cpl	a
7766  15c1 b478          	and	a,_ind_outB+3
7767  15c3 b778          	ld	_ind_outB+3,a
7769  15c5 acf716f7      	jpf	L1162
7770  15c9               L1033:
7771                     ; 1172 	else if(ind_check_cnt<=15)
7773  15c9 9c            	rvf
7774  15ca ce0003        	ldw	x,_ind_check_cnt
7775  15cd a30010        	cpw	x,#16
7776  15d0 2e1d          	jrsge	L5033
7777                     ; 1174 		ind_outB[2]&=(~(1<<(ind_check_cnt-8)));	
7779  15d2 c60004        	ld	a,_ind_check_cnt+1
7780  15d5 a008          	sub	a,#8
7781  15d7 5f            	clrw	x
7782  15d8 4d            	tnz	a
7783  15d9 2a01          	jrpl	L203
7784  15db 53            	cplw	x
7785  15dc               L203:
7786  15dc 97            	ld	xl,a
7787  15dd a601          	ld	a,#1
7788  15df 5d            	tnzw	x
7789  15e0 2704          	jreq	L403
7790  15e2               L603:
7791  15e2 48            	sll	a
7792  15e3 5a            	decw	x
7793  15e4 26fc          	jrne	L603
7794  15e6               L403:
7795  15e6 43            	cpl	a
7796  15e7 b477          	and	a,_ind_outB+2
7797  15e9 b777          	ld	_ind_outB+2,a
7799  15eb acf716f7      	jpf	L1162
7800  15ef               L5033:
7801                     ; 1176 	else if(ind_check_cnt<=23)
7803  15ef 9c            	rvf
7804  15f0 ce0003        	ldw	x,_ind_check_cnt
7805  15f3 a30018        	cpw	x,#24
7806  15f6 2e1d          	jrsge	L1133
7807                     ; 1178 		ind_outB[1]&=(~(1<<(ind_check_cnt-16)));	
7809  15f8 c60004        	ld	a,_ind_check_cnt+1
7810  15fb a010          	sub	a,#16
7811  15fd 5f            	clrw	x
7812  15fe 4d            	tnz	a
7813  15ff 2a01          	jrpl	L013
7814  1601 53            	cplw	x
7815  1602               L013:
7816  1602 97            	ld	xl,a
7817  1603 a601          	ld	a,#1
7818  1605 5d            	tnzw	x
7819  1606 2704          	jreq	L213
7820  1608               L413:
7821  1608 48            	sll	a
7822  1609 5a            	decw	x
7823  160a 26fc          	jrne	L413
7824  160c               L213:
7825  160c 43            	cpl	a
7826  160d b476          	and	a,_ind_outB+1
7827  160f b776          	ld	_ind_outB+1,a
7829  1611 acf716f7      	jpf	L1162
7830  1615               L1133:
7831                     ; 1180 	else if(ind_check_cnt<=30)
7833  1615 9c            	rvf
7834  1616 ce0003        	ldw	x,_ind_check_cnt
7835  1619 a3001f        	cpw	x,#31
7836  161c 2e1d          	jrsge	L5133
7837                     ; 1182 		ind_outC[3]&=(~(1<<(ind_check_cnt-23)));	
7839  161e c60004        	ld	a,_ind_check_cnt+1
7840  1621 a017          	sub	a,#23
7841  1623 5f            	clrw	x
7842  1624 4d            	tnz	a
7843  1625 2a01          	jrpl	L613
7844  1627 53            	cplw	x
7845  1628               L613:
7846  1628 97            	ld	xl,a
7847  1629 a601          	ld	a,#1
7848  162b 5d            	tnzw	x
7849  162c 2704          	jreq	L023
7850  162e               L223:
7851  162e 48            	sll	a
7852  162f 5a            	decw	x
7853  1630 26fc          	jrne	L223
7854  1632               L023:
7855  1632 43            	cpl	a
7856  1633 b40d          	and	a,_ind_outC+3
7857  1635 b70d          	ld	_ind_outC+3,a
7859  1637 acf716f7      	jpf	L1162
7860  163b               L5133:
7861                     ; 1184 	else if(ind_check_cnt==31)
7863  163b ce0003        	ldw	x,_ind_check_cnt
7864  163e a3001f        	cpw	x,#31
7865  1641 2608          	jrne	L1233
7866                     ; 1186 		ind_outG[3]&=0xfe;	
7868  1643 72110019      	bres	_ind_outG+3,#0
7870  1647 acf716f7      	jpf	L1162
7871  164b               L1233:
7872                     ; 1188 	else if(ind_check_cnt<=38)
7874  164b 9c            	rvf
7875  164c ce0003        	ldw	x,_ind_check_cnt
7876  164f a30027        	cpw	x,#39
7877  1652 2e1c          	jrsge	L5233
7878                     ; 1190 		ind_outC[2]&=(~(1<<(ind_check_cnt-31)));	
7880  1654 c60004        	ld	a,_ind_check_cnt+1
7881  1657 a01f          	sub	a,#31
7882  1659 5f            	clrw	x
7883  165a 4d            	tnz	a
7884  165b 2a01          	jrpl	L423
7885  165d 53            	cplw	x
7886  165e               L423:
7887  165e 97            	ld	xl,a
7888  165f a601          	ld	a,#1
7889  1661 5d            	tnzw	x
7890  1662 2704          	jreq	L623
7891  1664               L033:
7892  1664 48            	sll	a
7893  1665 5a            	decw	x
7894  1666 26fc          	jrne	L033
7895  1668               L623:
7896  1668 43            	cpl	a
7897  1669 b40c          	and	a,_ind_outC+2
7898  166b b70c          	ld	_ind_outC+2,a
7900  166d cc16f7        	jra	L1162
7901  1670               L5233:
7902                     ; 1192 	else if(ind_check_cnt==39)
7904  1670 ce0003        	ldw	x,_ind_check_cnt
7905  1673 a30027        	cpw	x,#39
7906  1676 2606          	jrne	L1333
7907                     ; 1194 		ind_outG[2]&=0xfe;	
7909  1678 72110018      	bres	_ind_outG+2,#0
7911  167c 2079          	jra	L1162
7912  167e               L1333:
7913                     ; 1196 	else if(ind_check_cnt<=46)
7915  167e 9c            	rvf
7916  167f ce0003        	ldw	x,_ind_check_cnt
7917  1682 a3002f        	cpw	x,#47
7918  1685 2e1b          	jrsge	L5333
7919                     ; 1198 		ind_outC[1]&=(~(1<<(ind_check_cnt-39)));	
7921  1687 c60004        	ld	a,_ind_check_cnt+1
7922  168a a027          	sub	a,#39
7923  168c 5f            	clrw	x
7924  168d 4d            	tnz	a
7925  168e 2a01          	jrpl	L233
7926  1690 53            	cplw	x
7927  1691               L233:
7928  1691 97            	ld	xl,a
7929  1692 a601          	ld	a,#1
7930  1694 5d            	tnzw	x
7931  1695 2704          	jreq	L433
7932  1697               L633:
7933  1697 48            	sll	a
7934  1698 5a            	decw	x
7935  1699 26fc          	jrne	L633
7936  169b               L433:
7937  169b 43            	cpl	a
7938  169c b40b          	and	a,_ind_outC+1
7939  169e b70b          	ld	_ind_outC+1,a
7941  16a0 2055          	jra	L1162
7942  16a2               L5333:
7943                     ; 1200 	else if(ind_check_cnt==47)
7945  16a2 ce0003        	ldw	x,_ind_check_cnt
7946  16a5 a3002f        	cpw	x,#47
7947  16a8 2606          	jrne	L1433
7948                     ; 1202 		ind_outG[1]&=0xfe;	
7950  16aa 72110017      	bres	_ind_outG+1,#0
7952  16ae 2047          	jra	L1162
7953  16b0               L1433:
7954                     ; 1204 	else if(ind_check_cnt<=54)
7956  16b0 9c            	rvf
7957  16b1 ce0003        	ldw	x,_ind_check_cnt
7958  16b4 a30037        	cpw	x,#55
7959  16b7 2e1b          	jrsge	L5433
7960                     ; 1206 		ind_outC[0]&=(~(1<<(ind_check_cnt-47)));	
7962  16b9 c60004        	ld	a,_ind_check_cnt+1
7963  16bc a02f          	sub	a,#47
7964  16be 5f            	clrw	x
7965  16bf 4d            	tnz	a
7966  16c0 2a01          	jrpl	L043
7967  16c2 53            	cplw	x
7968  16c3               L043:
7969  16c3 97            	ld	xl,a
7970  16c4 a601          	ld	a,#1
7971  16c6 5d            	tnzw	x
7972  16c7 2704          	jreq	L243
7973  16c9               L443:
7974  16c9 48            	sll	a
7975  16ca 5a            	decw	x
7976  16cb 26fc          	jrne	L443
7977  16cd               L243:
7978  16cd 43            	cpl	a
7979  16ce b40a          	and	a,_ind_outC
7980  16d0 b70a          	ld	_ind_outC,a
7982  16d2 2023          	jra	L1162
7983  16d4               L5433:
7984                     ; 1208 	else if(ind_check_cnt==55)
7986  16d4 ce0003        	ldw	x,_ind_check_cnt
7987  16d7 a30037        	cpw	x,#55
7988  16da 2606          	jrne	L1533
7989                     ; 1210 		ind_outG[0]&=0xfe;	
7991  16dc 72110016      	bres	_ind_outG,#0
7993  16e0 2015          	jra	L1162
7994  16e2               L1533:
7995                     ; 1212 	else if(ind_check_cnt<=64)
7997  16e2 9c            	rvf
7998  16e3 ce0003        	ldw	x,_ind_check_cnt
7999  16e6 a30041        	cpw	x,#65
8000  16e9 2e0c          	jrsge	L1162
8001                     ; 1214 		led_mask_off(0x00);
8003  16eb 4f            	clr	a
8004  16ec cd0000        	call	_led_mask_off
8006                     ; 1215 		led_on(ind_check_cnt-55);	
8008  16ef c60004        	ld	a,_ind_check_cnt+1
8009  16f2 a037          	sub	a,#55
8010  16f4 cd0000        	call	_led_on
8012  16f7               L1162:
8013                     ; 1219 if(powerStat==psOFF)
8015  16f7 3d29          	tnz	_powerStat
8016  16f9 263a          	jrne	L7533
8017                     ; 1221 	led_set(1,0);
8019  16fb 5f            	clrw	x
8020  16fc a601          	ld	a,#1
8021  16fe 95            	ld	xh,a
8022  16ff cd0000        	call	_led_set
8024                     ; 1222 	led_set(2,0);
8026  1702 5f            	clrw	x
8027  1703 a602          	ld	a,#2
8028  1705 95            	ld	xh,a
8029  1706 cd0000        	call	_led_set
8031                     ; 1223 	led_set(3,0);
8033  1709 5f            	clrw	x
8034  170a a603          	ld	a,#3
8035  170c 95            	ld	xh,a
8036  170d cd0000        	call	_led_set
8038                     ; 1224 	led_set(4,0);
8040  1710 5f            	clrw	x
8041  1711 a604          	ld	a,#4
8042  1713 95            	ld	xh,a
8043  1714 cd0000        	call	_led_set
8045                     ; 1225 	led_set(5,0);
8047  1717 5f            	clrw	x
8048  1718 a605          	ld	a,#5
8049  171a 95            	ld	xh,a
8050  171b cd0000        	call	_led_set
8052                     ; 1226 	led_set(6,0);
8054  171e 5f            	clrw	x
8055  171f a606          	ld	a,#6
8056  1721 95            	ld	xh,a
8057  1722 cd0000        	call	_led_set
8059                     ; 1227 	led_set(7,0);
8061  1725 5f            	clrw	x
8062  1726 a607          	ld	a,#7
8063  1728 95            	ld	xh,a
8064  1729 cd0000        	call	_led_set
8066                     ; 1228 	led_set(8,2);
8068  172c ae0002        	ldw	x,#2
8069  172f a608          	ld	a,#8
8070  1731 95            	ld	xh,a
8071  1732 cd0000        	call	_led_set
8073  1735               L7533:
8074                     ; 1231 if(bFL5)
8076  1735 3d28          	tnz	_bFL5
8077  1737 2717          	jreq	L1633
8078                     ; 1233 	ind_outB[0]=led_ind_out1;
8080  1739 452475        	mov	_ind_outB,_led_ind_out1
8081                     ; 1234 	ind_outB[4]=led_ind_out1;
8083  173c 452479        	mov	_ind_outB+4,_led_ind_out1
8084                     ; 1235 	ind_outB[5]=led_ind_out1;
8086  173f 45247a        	mov	_ind_outB+5,_led_ind_out1
8087                     ; 1236 	ind_outB[6]=led_ind_out1;
8089  1742 45247b        	mov	_ind_outB+6,_led_ind_out1
8090                     ; 1237 	ind_outB[7]=led_ind_out1;
8092  1745 45247c        	mov	_ind_outB+7,_led_ind_out1
8093                     ; 1238 	ind_outB[8]=led_ind_out1;
8095  1748 45247d        	mov	_ind_outB+8,_led_ind_out1
8096                     ; 1239 	ind_outB[9]=led_ind_out1;
8098  174b 45247e        	mov	_ind_outB+9,_led_ind_out1
8100  174e 2015          	jra	L3633
8101  1750               L1633:
8102                     ; 1243 	ind_outB[0]=led_ind_out2;
8104  1750 452375        	mov	_ind_outB,_led_ind_out2
8105                     ; 1244 	ind_outB[4]=led_ind_out2;
8107  1753 452379        	mov	_ind_outB+4,_led_ind_out2
8108                     ; 1245 	ind_outB[5]=led_ind_out2;
8110  1756 45237a        	mov	_ind_outB+5,_led_ind_out2
8111                     ; 1246 	ind_outB[6]=led_ind_out2;
8113  1759 45237b        	mov	_ind_outB+6,_led_ind_out2
8114                     ; 1247 	ind_outB[7]=led_ind_out2;
8116  175c 45237c        	mov	_ind_outB+7,_led_ind_out2
8117                     ; 1248 	ind_outB[8]=led_ind_out2;
8119  175f 45237d        	mov	_ind_outB+8,_led_ind_out2
8120                     ; 1249 	ind_outB[9]=led_ind_out2;
8122  1762 45237e        	mov	_ind_outB+9,_led_ind_out2
8123  1765               L3633:
8124                     ; 1251 }
8127  1765 85            	popw	x
8128  1766 81            	ret
8288                     ; 1256 void but_an(void)
8288                     ; 1257 {
8289                     	switch	.text
8290  1767               _but_an:
8292  1767 5203          	subw	sp,#3
8293       00000003      OFST:	set	3
8296                     ; 1258 if(!n_but) return;
8298  1769 3d00          	tnz	_n_but
8299  176b 2603          	jrne	L225
8300  176d cc2416        	jp	L025
8301  1770               L225:
8304                     ; 1259 n_but=0;
8306  1770 3f00          	clr	_n_but
8307                     ; 1261 if(ind==iMn)
8309  1772 3d61          	tnz	_a_ind
8310  1774 2703          	jreq	L425
8311  1776 cc1814        	jp	L5543
8312  1779               L425:
8313                     ; 1263 	if(but==butM_)
8315  1779 b600          	ld	a,_but
8316  177b a17d          	cp	a,#125
8317  177d 2610          	jrne	L7543
8318                     ; 1265 		tree_up(iSet,0,0,0);
8320  177f 4b00          	push	#0
8321  1781 4b00          	push	#0
8322  1783 5f            	clrw	x
8323  1784 a601          	ld	a,#1
8324  1786 95            	ld	xh,a
8325  1787 cd0000        	call	_tree_up
8327  178a 85            	popw	x
8329  178b ac162416      	jpf	L5153
8330  178f               L7543:
8331                     ; 1267 	else if(but==butM)
8333  178f b600          	ld	a,_but
8334  1791 a1fd          	cp	a,#253
8335  1793 2617          	jrne	L3643
8336                     ; 1269 		tree_up(iTemperSet,0,0,0);
8338  1795 4b00          	push	#0
8339  1797 4b00          	push	#0
8340  1799 5f            	clrw	x
8341  179a a608          	ld	a,#8
8342  179c 95            	ld	xh,a
8343  179d cd0000        	call	_tree_up
8345  17a0 85            	popw	x
8346                     ; 1270 		ret_ind(5,0);
8348  17a1 5f            	clrw	x
8349  17a2 a605          	ld	a,#5
8350  17a4 95            	ld	xh,a
8351  17a5 cd0000        	call	_ret_ind
8354  17a8 ac162416      	jpf	L5153
8355  17ac               L3643:
8356                     ; 1272 	else if(but==butU)
8358  17ac b600          	ld	a,_but
8359  17ae a1fb          	cp	a,#251
8360  17b0 2617          	jrne	L7643
8361                     ; 1274 		tree_up(iDate_W,0,0,0);
8363  17b2 4b00          	push	#0
8364  17b4 4b00          	push	#0
8365  17b6 5f            	clrw	x
8366  17b7 a604          	ld	a,#4
8367  17b9 95            	ld	xh,a
8368  17ba cd0000        	call	_tree_up
8370  17bd 85            	popw	x
8371                     ; 1275 		ret_ind(4,0);
8373  17be 5f            	clrw	x
8374  17bf a604          	ld	a,#4
8375  17c1 95            	ld	xh,a
8376  17c2 cd0000        	call	_ret_ind
8379  17c5 ac162416      	jpf	L5153
8380  17c9               L7643:
8381                     ; 1277 	else if(but==butD_)
8383  17c9 b600          	ld	a,_but
8384  17cb a177          	cp	a,#119
8385  17cd 2603          	jrne	L625
8386  17cf cc2416        	jp	L5153
8387  17d2               L625:
8389                     ; 1285 	else if(but==butD)
8391  17d2 b600          	ld	a,_but
8392  17d4 a1f7          	cp	a,#247
8393  17d6 2603          	jrne	L035
8394  17d8 cc2416        	jp	L5153
8395  17db               L035:
8397                     ; 1294 	else if(but==butU_)
8399  17db b600          	ld	a,_but
8400  17dd a17b          	cp	a,#123
8401  17df 2603          	jrne	L235
8402  17e1 cc2416        	jp	L5153
8403  17e4               L235:
8405                     ; 1298 	else if(but==butON)
8407  17e4 b600          	ld	a,_but
8408  17e6 a1fe          	cp	a,#254
8409  17e8 2703          	jreq	L435
8410  17ea cc2416        	jp	L5153
8411  17ed               L435:
8412                     ; 1300 		if(outMode==omON)	outMode=omOFF;
8414  17ed c6401d        	ld	a,_outMode
8415  17f0 a101          	cp	a,#1
8416  17f2 2609          	jrne	L1153
8419  17f4 4f            	clr	a
8420  17f5 ae401d        	ldw	x,#_outMode
8421  17f8 cd0000        	call	c_eewrc
8424  17fb 2008          	jra	L3153
8425  17fd               L1153:
8426                     ; 1301 		else 				outMode=omON;
8428  17fd a601          	ld	a,#1
8429  17ff ae401d        	ldw	x,#_outMode
8430  1802 cd0000        	call	c_eewrc
8432  1805               L3153:
8433                     ; 1302 		HUMAN_SET_EE=1;
8435  1805 ae0001        	ldw	x,#1
8436  1808 89            	pushw	x
8437  1809 ae401e        	ldw	x,#_HUMAN_SET_EE
8438  180c cd0000        	call	c_eewrw
8440  180f 85            	popw	x
8441  1810 ac162416      	jpf	L5153
8442  1814               L5543:
8443                     ; 1306 else if(ind==iTemperSet)
8445  1814 b661          	ld	a,_a_ind
8446  1816 a108          	cp	a,#8
8447  1818 2703          	jreq	L635
8448  181a cc1920        	jp	L7153
8449  181d               L635:
8450                     ; 1308 	if(but==butM)
8452  181d b600          	ld	a,_but
8453  181f a1fd          	cp	a,#253
8454  1821 2610          	jrne	L1253
8455                     ; 1310 		tree_down(0,0);
8457  1823 5f            	clrw	x
8458  1824 4f            	clr	a
8459  1825 95            	ld	xh,a
8460  1826 cd0000        	call	_tree_down
8462                     ; 1311 		ret_ind(0,0);
8464  1829 5f            	clrw	x
8465  182a 4f            	clr	a
8466  182b 95            	ld	xh,a
8467  182c cd0000        	call	_ret_ind
8470  182f ac162416      	jpf	L5153
8471  1833               L1253:
8472                     ; 1313 	else if(MODE_EE==1)
8474  1833 c64046        	ld	a,_MODE_EE
8475  1836 a101          	cp	a,#1
8476  1838 266e          	jrne	L5253
8477                     ; 1315 		ret_ind(4,0);
8479  183a 5f            	clrw	x
8480  183b a604          	ld	a,#4
8481  183d 95            	ld	xh,a
8482  183e cd0000        	call	_ret_ind
8484                     ; 1316 		if((but==butU)||(but==butU_))
8486  1841 b600          	ld	a,_but
8487  1843 a1fb          	cp	a,#251
8488  1845 2706          	jreq	L1353
8490  1847 b600          	ld	a,_but
8491  1849 a17b          	cp	a,#123
8492  184b 2624          	jrne	L7253
8493  184d               L1353:
8494                     ; 1318 			NECC_TEMPER_WATER_EE++;
8496  184d c64045        	ld	a,_NECC_TEMPER_WATER_EE
8497  1850 4c            	inc	a
8498  1851 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8499  1854 cd0000        	call	c_eewrc
8501                     ; 1319 			gran_char(&NECC_TEMPER_WATER_EE,5,85);
8503  1857 4b55          	push	#85
8504  1859 4b05          	push	#5
8505  185b ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8506  185e cd0000        	call	_gran_char
8508  1861 85            	popw	x
8509                     ; 1320 			speed=1;
8511  1862 35010000      	mov	_speed,#1
8512                     ; 1321 			HUMAN_SET_EE=1;
8514  1866 ae0001        	ldw	x,#1
8515  1869 89            	pushw	x
8516  186a ae401e        	ldw	x,#_HUMAN_SET_EE
8517  186d cd0000        	call	c_eewrw
8519  1870 85            	popw	x
8520  1871               L7253:
8521                     ; 1323 		if((but==butD)||(but==butD_))
8523  1871 b600          	ld	a,_but
8524  1873 a1f7          	cp	a,#247
8525  1875 2709          	jreq	L5353
8527  1877 b600          	ld	a,_but
8528  1879 a177          	cp	a,#119
8529  187b 2703          	jreq	L045
8530  187d cc2416        	jp	L5153
8531  1880               L045:
8532  1880               L5353:
8533                     ; 1325 			NECC_TEMPER_WATER_EE--;
8535  1880 c64045        	ld	a,_NECC_TEMPER_WATER_EE
8536  1883 4a            	dec	a
8537  1884 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8538  1887 cd0000        	call	c_eewrc
8540                     ; 1326 			gran_char(&NECC_TEMPER_WATER_EE,5,85);
8542  188a 4b55          	push	#85
8543  188c 4b05          	push	#5
8544  188e ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8545  1891 cd0000        	call	_gran_char
8547  1894 85            	popw	x
8548                     ; 1327 			speed=1;
8550  1895 35010000      	mov	_speed,#1
8551                     ; 1328 			HUMAN_SET_EE=1;
8553  1899 ae0001        	ldw	x,#1
8554  189c 89            	pushw	x
8555  189d ae401e        	ldw	x,#_HUMAN_SET_EE
8556  18a0 cd0000        	call	c_eewrw
8558  18a3 85            	popw	x
8559  18a4 ac162416      	jpf	L5153
8560  18a8               L5253:
8561                     ; 1331 	else if(MODE_EE==2)
8563  18a8 c64046        	ld	a,_MODE_EE
8564  18ab a102          	cp	a,#2
8565  18ad 2703          	jreq	L245
8566  18af cc2416        	jp	L5153
8567  18b2               L245:
8568                     ; 1333 		ret_ind(4,0);
8570  18b2 5f            	clrw	x
8571  18b3 a604          	ld	a,#4
8572  18b5 95            	ld	xh,a
8573  18b6 cd0000        	call	_ret_ind
8575                     ; 1334 		if((but==butU)||(but==butU_))
8577  18b9 b600          	ld	a,_but
8578  18bb a1fb          	cp	a,#251
8579  18bd 2706          	jreq	L5453
8581  18bf b600          	ld	a,_but
8582  18c1 a17b          	cp	a,#123
8583  18c3 2624          	jrne	L3453
8584  18c5               L5453:
8585                     ; 1336 			NECC_TEMPER_AIR_EE++;
8587  18c5 c64044        	ld	a,_NECC_TEMPER_AIR_EE
8588  18c8 4c            	inc	a
8589  18c9 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8590  18cc cd0000        	call	c_eewrc
8592                     ; 1337 			gran_char(&NECC_TEMPER_AIR_EE,5,35);
8594  18cf 4b23          	push	#35
8595  18d1 4b05          	push	#5
8596  18d3 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8597  18d6 cd0000        	call	_gran_char
8599  18d9 85            	popw	x
8600                     ; 1338 			speed=1;
8602  18da 35010000      	mov	_speed,#1
8603                     ; 1339 			HUMAN_SET_EE=1;
8605  18de ae0001        	ldw	x,#1
8606  18e1 89            	pushw	x
8607  18e2 ae401e        	ldw	x,#_HUMAN_SET_EE
8608  18e5 cd0000        	call	c_eewrw
8610  18e8 85            	popw	x
8611  18e9               L3453:
8612                     ; 1341 		if((but==butD)||(but==butD_))
8614  18e9 b600          	ld	a,_but
8615  18eb a1f7          	cp	a,#247
8616  18ed 2709          	jreq	L1553
8618  18ef b600          	ld	a,_but
8619  18f1 a177          	cp	a,#119
8620  18f3 2703          	jreq	L445
8621  18f5 cc2416        	jp	L5153
8622  18f8               L445:
8623  18f8               L1553:
8624                     ; 1343 			NECC_TEMPER_AIR_EE--;
8626  18f8 c64044        	ld	a,_NECC_TEMPER_AIR_EE
8627  18fb 4a            	dec	a
8628  18fc ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8629  18ff cd0000        	call	c_eewrc
8631                     ; 1344 			gran_char(&NECC_TEMPER_AIR_EE,5,35);
8633  1902 4b23          	push	#35
8634  1904 4b05          	push	#5
8635  1906 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8636  1909 cd0000        	call	_gran_char
8638  190c 85            	popw	x
8639                     ; 1345 			speed=1;
8641  190d 35010000      	mov	_speed,#1
8642                     ; 1346 			HUMAN_SET_EE=1;
8644  1911 ae0001        	ldw	x,#1
8645  1914 89            	pushw	x
8646  1915 ae401e        	ldw	x,#_HUMAN_SET_EE
8647  1918 cd0000        	call	c_eewrw
8649  191b 85            	popw	x
8650  191c ac162416      	jpf	L5153
8651  1920               L7153:
8652                     ; 1350 else if(ind==iDate_W)
8654  1920 b661          	ld	a,_a_ind
8655  1922 a104          	cp	a,#4
8656  1924 2635          	jrne	L5553
8657                     ; 1352 	if(but==butU)
8659  1926 b600          	ld	a,_but
8660  1928 a1fb          	cp	a,#251
8661  192a 2703          	jreq	L645
8662  192c cc2416        	jp	L5153
8663  192f               L645:
8664                     ; 1354 		if(sub_ind==0)
8666  192f 3d62          	tnz	_a_ind+1
8667  1931 2615          	jrne	L1653
8668                     ; 1356 			sub_ind=1;
8670  1933 35010062      	mov	_a_ind+1,#1
8671                     ; 1357 			ret_ind(4,0);
8673  1937 5f            	clrw	x
8674  1938 a604          	ld	a,#4
8675  193a 95            	ld	xh,a
8676  193b cd0000        	call	_ret_ind
8678                     ; 1358 			clear_ind();
8680  193e cd0000        	call	_clear_ind
8682                     ; 1359 			ind_hndl();			
8684  1941 cd0683        	call	_ind_hndl
8687  1944 ac162416      	jpf	L5153
8688  1948               L1653:
8689                     ; 1361 		else if(sub_ind==1)
8691  1948 b662          	ld	a,_a_ind+1
8692  194a a101          	cp	a,#1
8693  194c 2703          	jreq	L055
8694  194e cc2416        	jp	L5153
8695  1951               L055:
8696                     ; 1363 			tree_down(0,0);	
8698  1951 5f            	clrw	x
8699  1952 4f            	clr	a
8700  1953 95            	ld	xh,a
8701  1954 cd0000        	call	_tree_down
8703  1957 ac162416      	jpf	L5153
8704  195b               L5553:
8705                     ; 1367 else if(ind==iSet)
8707  195b b661          	ld	a,_a_ind
8708  195d a101          	cp	a,#1
8709  195f 2703          	jreq	L255
8710  1961 cc1a08        	jp	L1753
8711  1964               L255:
8712                     ; 1369 	if((but==butU)||(but==butU_))
8714  1964 b600          	ld	a,_but
8715  1966 a1fb          	cp	a,#251
8716  1968 2706          	jreq	L5753
8718  196a b600          	ld	a,_but
8719  196c a17b          	cp	a,#123
8720  196e 2617          	jrne	L3753
8721  1970               L5753:
8722                     ; 1371 		sub_ind++;
8724  1970 3c62          	inc	_a_ind+1
8725                     ; 1372 		gran_char(&sub_ind,0,11);
8727  1972 4b0b          	push	#11
8728  1974 4b00          	push	#0
8729  1976 ae0062        	ldw	x,#_a_ind+1
8730  1979 cd0000        	call	_gran_char
8732  197c 85            	popw	x
8733                     ; 1373 		clear_ind();
8735  197d cd0000        	call	_clear_ind
8737                     ; 1374 		ind_hndl();
8739  1980 cd0683        	call	_ind_hndl
8742  1983 ac162416      	jpf	L5153
8743  1987               L3753:
8744                     ; 1376 	else if((but==butD)||(but==butD_))
8746  1987 b600          	ld	a,_but
8747  1989 a1f7          	cp	a,#247
8748  198b 2706          	jreq	L3063
8750  198d b600          	ld	a,_but
8751  198f a177          	cp	a,#119
8752  1991 2617          	jrne	L1063
8753  1993               L3063:
8754                     ; 1378 		sub_ind--;
8756  1993 3a62          	dec	_a_ind+1
8757                     ; 1379 		gran_char(&sub_ind,0,11);
8759  1995 4b0b          	push	#11
8760  1997 4b00          	push	#0
8761  1999 ae0062        	ldw	x,#_a_ind+1
8762  199c cd0000        	call	_gran_char
8764  199f 85            	popw	x
8765                     ; 1380 		clear_ind();
8767  19a0 cd0000        	call	_clear_ind
8769                     ; 1381 		ind_hndl();
8771  19a3 cd0683        	call	_ind_hndl
8774  19a6 ac162416      	jpf	L5153
8775  19aa               L1063:
8776                     ; 1383 	else if(but==butM_)
8778  19aa b600          	ld	a,_but
8779  19ac a17d          	cp	a,#125
8780  19ae 2638          	jrne	L7063
8781                     ; 1385 		if(sub_ind==11) //¬ыход 
8783  19b0 b662          	ld	a,_a_ind+1
8784  19b2 a10b          	cp	a,#11
8785  19b4 260a          	jrne	L1163
8786                     ; 1387 			tree_down(0,0);
8788  19b6 5f            	clrw	x
8789  19b7 4f            	clr	a
8790  19b8 95            	ld	xh,a
8791  19b9 cd0000        	call	_tree_down
8794  19bc ac162416      	jpf	L5153
8795  19c0               L1163:
8796                     ; 1389 		else if(sub_ind==10) //¬ход в установку графика
8798  19c0 b662          	ld	a,_a_ind+1
8799  19c2 a10a          	cp	a,#10
8800  19c4 2610          	jrne	L5163
8801                     ; 1391 			tree_up(iSetTable,0,0,0);
8803  19c6 4b00          	push	#0
8804  19c8 4b00          	push	#0
8805  19ca 5f            	clrw	x
8806  19cb a605          	ld	a,#5
8807  19cd 95            	ld	xh,a
8808  19ce cd0000        	call	_tree_up
8810  19d1 85            	popw	x
8812  19d2 ac162416      	jpf	L5153
8813  19d6               L5163:
8814                     ; 1395 			tree_up(iSet_,sub_ind,0,0);
8816  19d6 4b00          	push	#0
8817  19d8 4b00          	push	#0
8818  19da b662          	ld	a,_a_ind+1
8819  19dc 97            	ld	xl,a
8820  19dd a602          	ld	a,#2
8821  19df 95            	ld	xh,a
8822  19e0 cd0000        	call	_tree_up
8824  19e3 85            	popw	x
8825  19e4 ac162416      	jpf	L5153
8826  19e8               L7063:
8827                     ; 1398 	else if(but==butOND_)
8829  19e8 b600          	ld	a,_but
8830  19ea a176          	cp	a,#118
8831  19ec 2703          	jreq	L455
8832  19ee cc2416        	jp	L5153
8833  19f1               L455:
8834                     ; 1400 		tree_up(iDefSet,0,0,0);
8836  19f1 4b00          	push	#0
8837  19f3 4b00          	push	#0
8838  19f5 5f            	clrw	x
8839  19f6 a609          	ld	a,#9
8840  19f8 95            	ld	xh,a
8841  19f9 cd0000        	call	_tree_up
8843  19fc 85            	popw	x
8844                     ; 1401 		ret_ind(5,0);
8846  19fd 5f            	clrw	x
8847  19fe a605          	ld	a,#5
8848  1a00 95            	ld	xh,a
8849  1a01 cd0000        	call	_ret_ind
8851  1a04 ac162416      	jpf	L5153
8852  1a08               L1753:
8853                     ; 1404 else if(ind==iSet_)
8855  1a08 b661          	ld	a,_a_ind
8856  1a0a a102          	cp	a,#2
8857  1a0c 2703          	jreq	L655
8858  1a0e cc1fb3        	jp	L7263
8859  1a11               L655:
8860                     ; 1406 	if(but==butM_)
8862  1a11 b600          	ld	a,_but
8863  1a13 a17d          	cp	a,#125
8864  1a15 260a          	jrne	L1363
8865                     ; 1408 		tree_down(0,0);
8867  1a17 5f            	clrw	x
8868  1a18 4f            	clr	a
8869  1a19 95            	ld	xh,a
8870  1a1a cd0000        	call	_tree_down
8873  1a1d ac162416      	jpf	L5153
8874  1a21               L1363:
8875                     ; 1412 		if(sub_ind==0)
8877  1a21 3d62          	tnz	_a_ind+1
8878  1a23 265f          	jrne	L5363
8879                     ; 1414 			if((but==butU)||(but==butU_))
8881  1a25 b600          	ld	a,_but
8882  1a27 a1fb          	cp	a,#251
8883  1a29 2706          	jreq	L1463
8885  1a2b b600          	ld	a,_but
8886  1a2d a17b          	cp	a,#123
8887  1a2f 2620          	jrne	L7363
8888  1a31               L1463:
8889                     ; 1416 				MODE_EE++;
8891  1a31 c64046        	ld	a,_MODE_EE
8892  1a34 4c            	inc	a
8893  1a35 ae4046        	ldw	x,#_MODE_EE
8894  1a38 cd0000        	call	c_eewrc
8896                     ; 1417 				gran_char(&MODE_EE,1,3);
8898  1a3b 4b03          	push	#3
8899  1a3d 4b01          	push	#1
8900  1a3f ae4046        	ldw	x,#_MODE_EE
8901  1a42 cd0000        	call	_gran_char
8903  1a45 85            	popw	x
8904                     ; 1418 				HUMAN_SET_EE=1;
8906  1a46 ae0001        	ldw	x,#1
8907  1a49 89            	pushw	x
8908  1a4a ae401e        	ldw	x,#_HUMAN_SET_EE
8909  1a4d cd0000        	call	c_eewrw
8911  1a50 85            	popw	x
8912  1a51               L7363:
8913                     ; 1420 			if((but==butD)||(but==butD_))
8915  1a51 b600          	ld	a,_but
8916  1a53 a1f7          	cp	a,#247
8917  1a55 2709          	jreq	L5463
8919  1a57 b600          	ld	a,_but
8920  1a59 a177          	cp	a,#119
8921  1a5b 2703          	jreq	L065
8922  1a5d cc2416        	jp	L5153
8923  1a60               L065:
8924  1a60               L5463:
8925                     ; 1422 				MODE_EE--;
8927  1a60 c64046        	ld	a,_MODE_EE
8928  1a63 4a            	dec	a
8929  1a64 ae4046        	ldw	x,#_MODE_EE
8930  1a67 cd0000        	call	c_eewrc
8932                     ; 1423 				gran_char(&MODE_EE,1,3);
8934  1a6a 4b03          	push	#3
8935  1a6c 4b01          	push	#1
8936  1a6e ae4046        	ldw	x,#_MODE_EE
8937  1a71 cd0000        	call	_gran_char
8939  1a74 85            	popw	x
8940                     ; 1424 				HUMAN_SET_EE=1;
8942  1a75 ae0001        	ldw	x,#1
8943  1a78 89            	pushw	x
8944  1a79 ae401e        	ldw	x,#_HUMAN_SET_EE
8945  1a7c cd0000        	call	c_eewrw
8947  1a7f 85            	popw	x
8948  1a80 ac162416      	jpf	L5153
8949  1a84               L5363:
8950                     ; 1427 		else if(sub_ind==1)
8952  1a84 b662          	ld	a,_a_ind+1
8953  1a86 a101          	cp	a,#1
8954  1a88 2667          	jrne	L1563
8955                     ; 1429 			if((but==butU)||(but==butU_))
8957  1a8a b600          	ld	a,_but
8958  1a8c a1fb          	cp	a,#251
8959  1a8e 2706          	jreq	L5563
8961  1a90 b600          	ld	a,_but
8962  1a92 a17b          	cp	a,#123
8963  1a94 2624          	jrne	L3563
8964  1a96               L5563:
8965                     ; 1431 				NECC_TEMPER_WATER_EE++;
8967  1a96 c64045        	ld	a,_NECC_TEMPER_WATER_EE
8968  1a99 4c            	inc	a
8969  1a9a ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8970  1a9d cd0000        	call	c_eewrc
8972                     ; 1432 				gran_char(&NECC_TEMPER_WATER_EE,5,85);
8974  1aa0 4b55          	push	#85
8975  1aa2 4b05          	push	#5
8976  1aa4 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8977  1aa7 cd0000        	call	_gran_char
8979  1aaa 85            	popw	x
8980                     ; 1433 				speed=1;
8982  1aab 35010000      	mov	_speed,#1
8983                     ; 1434 				HUMAN_SET_EE=1;
8985  1aaf ae0001        	ldw	x,#1
8986  1ab2 89            	pushw	x
8987  1ab3 ae401e        	ldw	x,#_HUMAN_SET_EE
8988  1ab6 cd0000        	call	c_eewrw
8990  1ab9 85            	popw	x
8991  1aba               L3563:
8992                     ; 1436 			if((but==butD)||(but==butD_))
8994  1aba b600          	ld	a,_but
8995  1abc a1f7          	cp	a,#247
8996  1abe 2709          	jreq	L1663
8998  1ac0 b600          	ld	a,_but
8999  1ac2 a177          	cp	a,#119
9000  1ac4 2703          	jreq	L265
9001  1ac6 cc2416        	jp	L5153
9002  1ac9               L265:
9003  1ac9               L1663:
9004                     ; 1438 				NECC_TEMPER_WATER_EE--;
9006  1ac9 c64045        	ld	a,_NECC_TEMPER_WATER_EE
9007  1acc 4a            	dec	a
9008  1acd ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9009  1ad0 cd0000        	call	c_eewrc
9011                     ; 1439 				gran_char(&NECC_TEMPER_WATER_EE,5,85);
9013  1ad3 4b55          	push	#85
9014  1ad5 4b05          	push	#5
9015  1ad7 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9016  1ada cd0000        	call	_gran_char
9018  1add 85            	popw	x
9019                     ; 1440 				speed=1;
9021  1ade 35010000      	mov	_speed,#1
9022                     ; 1441 				HUMAN_SET_EE=1;
9024  1ae2 ae0001        	ldw	x,#1
9025  1ae5 89            	pushw	x
9026  1ae6 ae401e        	ldw	x,#_HUMAN_SET_EE
9027  1ae9 cd0000        	call	c_eewrw
9029  1aec 85            	popw	x
9030  1aed ac162416      	jpf	L5153
9031  1af1               L1563:
9032                     ; 1444 		else if(sub_ind==2)
9034  1af1 b662          	ld	a,_a_ind+1
9035  1af3 a102          	cp	a,#2
9036  1af5 2667          	jrne	L5663
9037                     ; 1446 			if((but==butU)||(but==butU_))
9039  1af7 b600          	ld	a,_but
9040  1af9 a1fb          	cp	a,#251
9041  1afb 2706          	jreq	L1763
9043  1afd b600          	ld	a,_but
9044  1aff a17b          	cp	a,#123
9045  1b01 2624          	jrne	L7663
9046  1b03               L1763:
9047                     ; 1448 				NECC_TEMPER_AIR_EE++;
9049  1b03 c64044        	ld	a,_NECC_TEMPER_AIR_EE
9050  1b06 4c            	inc	a
9051  1b07 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9052  1b0a cd0000        	call	c_eewrc
9054                     ; 1449 				gran_char(&NECC_TEMPER_AIR_EE,5,35);
9056  1b0d 4b23          	push	#35
9057  1b0f 4b05          	push	#5
9058  1b11 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9059  1b14 cd0000        	call	_gran_char
9061  1b17 85            	popw	x
9062                     ; 1450 				speed=1;
9064  1b18 35010000      	mov	_speed,#1
9065                     ; 1451 				HUMAN_SET_EE=1;
9067  1b1c ae0001        	ldw	x,#1
9068  1b1f 89            	pushw	x
9069  1b20 ae401e        	ldw	x,#_HUMAN_SET_EE
9070  1b23 cd0000        	call	c_eewrw
9072  1b26 85            	popw	x
9073  1b27               L7663:
9074                     ; 1453 			if((but==butD)||(but==butD_))
9076  1b27 b600          	ld	a,_but
9077  1b29 a1f7          	cp	a,#247
9078  1b2b 2709          	jreq	L5763
9080  1b2d b600          	ld	a,_but
9081  1b2f a177          	cp	a,#119
9082  1b31 2703          	jreq	L465
9083  1b33 cc2416        	jp	L5153
9084  1b36               L465:
9085  1b36               L5763:
9086                     ; 1455 				NECC_TEMPER_AIR_EE--;
9088  1b36 c64044        	ld	a,_NECC_TEMPER_AIR_EE
9089  1b39 4a            	dec	a
9090  1b3a ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9091  1b3d cd0000        	call	c_eewrc
9093                     ; 1456 				gran_char(&NECC_TEMPER_AIR_EE,5,35);
9095  1b40 4b23          	push	#35
9096  1b42 4b05          	push	#5
9097  1b44 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9098  1b47 cd0000        	call	_gran_char
9100  1b4a 85            	popw	x
9101                     ; 1457 				speed=1;
9103  1b4b 35010000      	mov	_speed,#1
9104                     ; 1458 				HUMAN_SET_EE=1;
9106  1b4f ae0001        	ldw	x,#1
9107  1b52 89            	pushw	x
9108  1b53 ae401e        	ldw	x,#_HUMAN_SET_EE
9109  1b56 cd0000        	call	c_eewrw
9111  1b59 85            	popw	x
9112  1b5a ac162416      	jpf	L5153
9113  1b5e               L5663:
9114                     ; 1462 		else if(sub_ind==3)
9116  1b5e b662          	ld	a,_a_ind+1
9117  1b60 a103          	cp	a,#3
9118  1b62 2667          	jrne	L1073
9119                     ; 1464 			if((but==butU)||(but==butU_))
9121  1b64 b600          	ld	a,_but
9122  1b66 a1fb          	cp	a,#251
9123  1b68 2706          	jreq	L5073
9125  1b6a b600          	ld	a,_but
9126  1b6c a17b          	cp	a,#123
9127  1b6e 2624          	jrne	L3073
9128  1b70               L5073:
9129                     ; 1466 				MAX_POWER_EE++;
9131  1b70 c64047        	ld	a,_MAX_POWER_EE
9132  1b73 4c            	inc	a
9133  1b74 ae4047        	ldw	x,#_MAX_POWER_EE
9134  1b77 cd0000        	call	c_eewrc
9136                     ; 1467 				gran_char(&MAX_POWER_EE,1,3);
9138  1b7a 4b03          	push	#3
9139  1b7c 4b01          	push	#1
9140  1b7e ae4047        	ldw	x,#_MAX_POWER_EE
9141  1b81 cd0000        	call	_gran_char
9143  1b84 85            	popw	x
9144                     ; 1468 				speed=1;
9146  1b85 35010000      	mov	_speed,#1
9147                     ; 1469 				HUMAN_SET_EE=1;
9149  1b89 ae0001        	ldw	x,#1
9150  1b8c 89            	pushw	x
9151  1b8d ae401e        	ldw	x,#_HUMAN_SET_EE
9152  1b90 cd0000        	call	c_eewrw
9154  1b93 85            	popw	x
9155  1b94               L3073:
9156                     ; 1471 			if((but==butD)||(but==butD_))
9158  1b94 b600          	ld	a,_but
9159  1b96 a1f7          	cp	a,#247
9160  1b98 2709          	jreq	L1173
9162  1b9a b600          	ld	a,_but
9163  1b9c a177          	cp	a,#119
9164  1b9e 2703          	jreq	L665
9165  1ba0 cc2416        	jp	L5153
9166  1ba3               L665:
9167  1ba3               L1173:
9168                     ; 1473 				MAX_POWER_EE--;
9170  1ba3 c64047        	ld	a,_MAX_POWER_EE
9171  1ba6 4a            	dec	a
9172  1ba7 ae4047        	ldw	x,#_MAX_POWER_EE
9173  1baa cd0000        	call	c_eewrc
9175                     ; 1474 				gran_char(&MAX_POWER_EE,1,3);
9177  1bad 4b03          	push	#3
9178  1baf 4b01          	push	#1
9179  1bb1 ae4047        	ldw	x,#_MAX_POWER_EE
9180  1bb4 cd0000        	call	_gran_char
9182  1bb7 85            	popw	x
9183                     ; 1475 				speed=1;
9185  1bb8 35010000      	mov	_speed,#1
9186                     ; 1476 				HUMAN_SET_EE=1;
9188  1bbc ae0001        	ldw	x,#1
9189  1bbf 89            	pushw	x
9190  1bc0 ae401e        	ldw	x,#_HUMAN_SET_EE
9191  1bc3 cd0000        	call	c_eewrw
9193  1bc6 85            	popw	x
9194  1bc7 ac162416      	jpf	L5153
9195  1bcb               L1073:
9196                     ; 1479 		else if(sub_ind==4)
9198  1bcb b662          	ld	a,_a_ind+1
9199  1bcd a104          	cp	a,#4
9200  1bcf 2703          	jreq	L075
9201  1bd1 cc1c71        	jp	L5173
9202  1bd4               L075:
9203                     ; 1482 			temp=time_year;
9205  1bd4 b60c          	ld	a,_time_year
9206  1bd6 6b03          	ld	(OFST+0,sp),a
9207                     ; 1484 			if((but==butU)||(but==butU_))
9209  1bd8 b600          	ld	a,_but
9210  1bda a1fb          	cp	a,#251
9211  1bdc 2706          	jreq	L1273
9213  1bde b600          	ld	a,_but
9214  1be0 a17b          	cp	a,#123
9215  1be2 263d          	jrne	L7173
9216  1be4               L1273:
9217                     ; 1486 				temp++;
9219  1be4 0c03          	inc	(OFST+0,sp)
9220                     ; 1487 				gran_char(&temp,0,99);
9222  1be6 4b63          	push	#99
9223  1be8 4b00          	push	#0
9224  1bea 96            	ldw	x,sp
9225  1beb 1c0005        	addw	x,#OFST+2
9226  1bee cd0000        	call	_gran_char
9228  1bf1 85            	popw	x
9229                     ; 1488 				_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
9231  1bf2 7b03          	ld	a,(OFST+0,sp)
9232  1bf4 ae000a        	ldw	x,#10
9233  1bf7 51            	exgw	x,y
9234  1bf8 5f            	clrw	x
9235  1bf9 4d            	tnz	a
9236  1bfa 2a01          	jrpl	L014
9237  1bfc 5a            	decw	x
9238  1bfd               L014:
9239  1bfd 02            	rlwa	x,a
9240  1bfe cd0000        	call	c_idiv
9242  1c01 909f          	ld	a,yl
9243  1c03 6b01          	ld	(OFST-2,sp),a
9244  1c05 7b03          	ld	a,(OFST+0,sp)
9245  1c07 ae000a        	ldw	x,#10
9246  1c0a 51            	exgw	x,y
9247  1c0b 5f            	clrw	x
9248  1c0c 4d            	tnz	a
9249  1c0d 2a01          	jrpl	L214
9250  1c0f 5a            	decw	x
9251  1c10               L214:
9252  1c10 02            	rlwa	x,a
9253  1c11 cd0000        	call	c_idiv
9255  1c14 9f            	ld	a,xl
9256  1c15 4e            	swap	a
9257  1c16 a4f0          	and	a,#240
9258  1c18 1b01          	add	a,(OFST-2,sp)
9259  1c1a 97            	ld	xl,a
9260  1c1b a606          	ld	a,#6
9261  1c1d 95            	ld	xh,a
9262  1c1e cd0000        	call	__ds1307_write_byte
9264  1c21               L7173:
9265                     ; 1491 			if((but==butD)||(but==butD_))
9267  1c21 b600          	ld	a,_but
9268  1c23 a1f7          	cp	a,#247
9269  1c25 2709          	jreq	L5273
9271  1c27 b600          	ld	a,_but
9272  1c29 a177          	cp	a,#119
9273  1c2b 2703          	jreq	L275
9274  1c2d cc2416        	jp	L5153
9275  1c30               L275:
9276  1c30               L5273:
9277                     ; 1493 				temp--;
9279  1c30 0a03          	dec	(OFST+0,sp)
9280                     ; 1494 				gran_char(&temp,0,99);
9282  1c32 4b63          	push	#99
9283  1c34 4b00          	push	#0
9284  1c36 96            	ldw	x,sp
9285  1c37 1c0005        	addw	x,#OFST+2
9286  1c3a cd0000        	call	_gran_char
9288  1c3d 85            	popw	x
9289                     ; 1495 				_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
9291  1c3e 7b03          	ld	a,(OFST+0,sp)
9292  1c40 ae000a        	ldw	x,#10
9293  1c43 51            	exgw	x,y
9294  1c44 5f            	clrw	x
9295  1c45 4d            	tnz	a
9296  1c46 2a01          	jrpl	L414
9297  1c48 5a            	decw	x
9298  1c49               L414:
9299  1c49 02            	rlwa	x,a
9300  1c4a cd0000        	call	c_idiv
9302  1c4d 909f          	ld	a,yl
9303  1c4f 6b01          	ld	(OFST-2,sp),a
9304  1c51 7b03          	ld	a,(OFST+0,sp)
9305  1c53 ae000a        	ldw	x,#10
9306  1c56 51            	exgw	x,y
9307  1c57 5f            	clrw	x
9308  1c58 4d            	tnz	a
9309  1c59 2a01          	jrpl	L614
9310  1c5b 5a            	decw	x
9311  1c5c               L614:
9312  1c5c 02            	rlwa	x,a
9313  1c5d cd0000        	call	c_idiv
9315  1c60 9f            	ld	a,xl
9316  1c61 4e            	swap	a
9317  1c62 a4f0          	and	a,#240
9318  1c64 1b01          	add	a,(OFST-2,sp)
9319  1c66 97            	ld	xl,a
9320  1c67 a606          	ld	a,#6
9321  1c69 95            	ld	xh,a
9322  1c6a cd0000        	call	__ds1307_write_byte
9324  1c6d ac162416      	jpf	L5153
9325  1c71               L5173:
9326                     ; 1498 		else if(sub_ind==5)
9328  1c71 b662          	ld	a,_a_ind+1
9329  1c73 a105          	cp	a,#5
9330  1c75 2703          	jreq	L475
9331  1c77 cc1d17        	jp	L1373
9332  1c7a               L475:
9333                     ; 1501 			temp=time_month;
9335  1c7a b60d          	ld	a,_time_month
9336  1c7c 6b03          	ld	(OFST+0,sp),a
9337                     ; 1503 			if((but==butU)||(but==butU_))
9339  1c7e b600          	ld	a,_but
9340  1c80 a1fb          	cp	a,#251
9341  1c82 2706          	jreq	L5373
9343  1c84 b600          	ld	a,_but
9344  1c86 a17b          	cp	a,#123
9345  1c88 263d          	jrne	L3373
9346  1c8a               L5373:
9347                     ; 1505 				temp++;
9349  1c8a 0c03          	inc	(OFST+0,sp)
9350                     ; 1506 				gran_ring_char(&temp,1,12);
9352  1c8c 4b0c          	push	#12
9353  1c8e 4b01          	push	#1
9354  1c90 96            	ldw	x,sp
9355  1c91 1c0005        	addw	x,#OFST+2
9356  1c94 cd0000        	call	_gran_ring_char
9358  1c97 85            	popw	x
9359                     ; 1507 				_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));
9361  1c98 7b03          	ld	a,(OFST+0,sp)
9362  1c9a ae000a        	ldw	x,#10
9363  1c9d 51            	exgw	x,y
9364  1c9e 5f            	clrw	x
9365  1c9f 4d            	tnz	a
9366  1ca0 2a01          	jrpl	L024
9367  1ca2 5a            	decw	x
9368  1ca3               L024:
9369  1ca3 02            	rlwa	x,a
9370  1ca4 cd0000        	call	c_idiv
9372  1ca7 909f          	ld	a,yl
9373  1ca9 6b01          	ld	(OFST-2,sp),a
9374  1cab 7b03          	ld	a,(OFST+0,sp)
9375  1cad ae000a        	ldw	x,#10
9376  1cb0 51            	exgw	x,y
9377  1cb1 5f            	clrw	x
9378  1cb2 4d            	tnz	a
9379  1cb3 2a01          	jrpl	L224
9380  1cb5 5a            	decw	x
9381  1cb6               L224:
9382  1cb6 02            	rlwa	x,a
9383  1cb7 cd0000        	call	c_idiv
9385  1cba 9f            	ld	a,xl
9386  1cbb 4e            	swap	a
9387  1cbc a4f0          	and	a,#240
9388  1cbe 1b01          	add	a,(OFST-2,sp)
9389  1cc0 97            	ld	xl,a
9390  1cc1 a605          	ld	a,#5
9391  1cc3 95            	ld	xh,a
9392  1cc4 cd0000        	call	__ds1307_write_byte
9394  1cc7               L3373:
9395                     ; 1510 			if((but==butD)||(but==butD_))
9397  1cc7 b600          	ld	a,_but
9398  1cc9 a1f7          	cp	a,#247
9399  1ccb 2709          	jreq	L1473
9401  1ccd b600          	ld	a,_but
9402  1ccf a177          	cp	a,#119
9403  1cd1 2703          	jreq	L675
9404  1cd3 cc2416        	jp	L5153
9405  1cd6               L675:
9406  1cd6               L1473:
9407                     ; 1512 				temp--;
9409  1cd6 0a03          	dec	(OFST+0,sp)
9410                     ; 1513 				gran_ring_char(&temp,1,12);
9412  1cd8 4b0c          	push	#12
9413  1cda 4b01          	push	#1
9414  1cdc 96            	ldw	x,sp
9415  1cdd 1c0005        	addw	x,#OFST+2
9416  1ce0 cd0000        	call	_gran_ring_char
9418  1ce3 85            	popw	x
9419                     ; 1514 				_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));
9421  1ce4 7b03          	ld	a,(OFST+0,sp)
9422  1ce6 ae000a        	ldw	x,#10
9423  1ce9 51            	exgw	x,y
9424  1cea 5f            	clrw	x
9425  1ceb 4d            	tnz	a
9426  1cec 2a01          	jrpl	L424
9427  1cee 5a            	decw	x
9428  1cef               L424:
9429  1cef 02            	rlwa	x,a
9430  1cf0 cd0000        	call	c_idiv
9432  1cf3 909f          	ld	a,yl
9433  1cf5 6b01          	ld	(OFST-2,sp),a
9434  1cf7 7b03          	ld	a,(OFST+0,sp)
9435  1cf9 ae000a        	ldw	x,#10
9436  1cfc 51            	exgw	x,y
9437  1cfd 5f            	clrw	x
9438  1cfe 4d            	tnz	a
9439  1cff 2a01          	jrpl	L624
9440  1d01 5a            	decw	x
9441  1d02               L624:
9442  1d02 02            	rlwa	x,a
9443  1d03 cd0000        	call	c_idiv
9445  1d06 9f            	ld	a,xl
9446  1d07 4e            	swap	a
9447  1d08 a4f0          	and	a,#240
9448  1d0a 1b01          	add	a,(OFST-2,sp)
9449  1d0c 97            	ld	xl,a
9450  1d0d a605          	ld	a,#5
9451  1d0f 95            	ld	xh,a
9452  1d10 cd0000        	call	__ds1307_write_byte
9454  1d13 ac162416      	jpf	L5153
9455  1d17               L1373:
9456                     ; 1517 		else if(sub_ind==6)
9458  1d17 b662          	ld	a,_a_ind+1
9459  1d19 a106          	cp	a,#6
9460  1d1b 2703          	jreq	L006
9461  1d1d cc1df9        	jp	L5473
9462  1d20               L006:
9463                     ; 1520 			temp=time_date;
9465  1d20 b603          	ld	a,_time_date
9466  1d22 6b03          	ld	(OFST+0,sp),a
9467                     ; 1521 			max_day=31;
9469  1d24 a61f          	ld	a,#31
9470  1d26 6b02          	ld	(OFST-1,sp),a
9471                     ; 1522 			if((time_month==4)||(time_month==6)||(time_month==9)||(time_month==11))max_day=30;
9473  1d28 b60d          	ld	a,_time_month
9474  1d2a a104          	cp	a,#4
9475  1d2c 2712          	jreq	L1573
9477  1d2e b60d          	ld	a,_time_month
9478  1d30 a106          	cp	a,#6
9479  1d32 270c          	jreq	L1573
9481  1d34 b60d          	ld	a,_time_month
9482  1d36 a109          	cp	a,#9
9483  1d38 2706          	jreq	L1573
9485  1d3a b60d          	ld	a,_time_month
9486  1d3c a10b          	cp	a,#11
9487  1d3e 2612          	jrne	L7473
9488  1d40               L1573:
9491  1d40 a61e          	ld	a,#30
9492  1d42 6b02          	ld	(OFST-1,sp),a
9494  1d44               L7573:
9495                     ; 1528 			if((but==butU)||(but==butU_))
9497  1d44 b600          	ld	a,_but
9498  1d46 a1fb          	cp	a,#251
9499  1d48 2720          	jreq	L1773
9501  1d4a b600          	ld	a,_but
9502  1d4c a17b          	cp	a,#123
9503  1d4e 2658          	jrne	L7673
9504  1d50 2018          	jra	L1773
9505  1d52               L7473:
9506                     ; 1523 			else if(time_month==2)
9508  1d52 b60d          	ld	a,_time_month
9509  1d54 a102          	cp	a,#2
9510  1d56 26ec          	jrne	L7573
9511                     ; 1525 				if((time_year%4)==0)max_day=29;
9513  1d58 b60c          	ld	a,_time_year
9514  1d5a a503          	bcp	a,#3
9515  1d5c 2606          	jrne	L3673
9518  1d5e a61d          	ld	a,#29
9519  1d60 6b02          	ld	(OFST-1,sp),a
9521  1d62 20e0          	jra	L7573
9522  1d64               L3673:
9523                     ; 1526 				else max_day=28;
9525  1d64 a61c          	ld	a,#28
9526  1d66 6b02          	ld	(OFST-1,sp),a
9527  1d68 20da          	jra	L7573
9528  1d6a               L1773:
9529                     ; 1530 				temp++;
9531  1d6a 0c03          	inc	(OFST+0,sp)
9532                     ; 1531 				gran_ring_char(&temp,1,max_day);
9534  1d6c 7b02          	ld	a,(OFST-1,sp)
9535  1d6e 88            	push	a
9536  1d6f 4b01          	push	#1
9537  1d71 96            	ldw	x,sp
9538  1d72 1c0005        	addw	x,#OFST+2
9539  1d75 cd0000        	call	_gran_ring_char
9541  1d78 85            	popw	x
9542                     ; 1532 				_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
9544  1d79 7b03          	ld	a,(OFST+0,sp)
9545  1d7b ae000a        	ldw	x,#10
9546  1d7e 51            	exgw	x,y
9547  1d7f 5f            	clrw	x
9548  1d80 4d            	tnz	a
9549  1d81 2a01          	jrpl	L034
9550  1d83 5a            	decw	x
9551  1d84               L034:
9552  1d84 02            	rlwa	x,a
9553  1d85 cd0000        	call	c_idiv
9555  1d88 909f          	ld	a,yl
9556  1d8a 6b01          	ld	(OFST-2,sp),a
9557  1d8c 7b03          	ld	a,(OFST+0,sp)
9558  1d8e ae000a        	ldw	x,#10
9559  1d91 51            	exgw	x,y
9560  1d92 5f            	clrw	x
9561  1d93 4d            	tnz	a
9562  1d94 2a01          	jrpl	L234
9563  1d96 5a            	decw	x
9564  1d97               L234:
9565  1d97 02            	rlwa	x,a
9566  1d98 cd0000        	call	c_idiv
9568  1d9b 9f            	ld	a,xl
9569  1d9c 4e            	swap	a
9570  1d9d a4f0          	and	a,#240
9571  1d9f 1b01          	add	a,(OFST-2,sp)
9572  1da1 97            	ld	xl,a
9573  1da2 a604          	ld	a,#4
9574  1da4 95            	ld	xh,a
9575  1da5 cd0000        	call	__ds1307_write_byte
9577  1da8               L7673:
9578                     ; 1535 			if((but==butD)||(but==butD_))
9580  1da8 b600          	ld	a,_but
9581  1daa a1f7          	cp	a,#247
9582  1dac 2709          	jreq	L5773
9584  1dae b600          	ld	a,_but
9585  1db0 a177          	cp	a,#119
9586  1db2 2703          	jreq	L206
9587  1db4 cc2416        	jp	L5153
9588  1db7               L206:
9589  1db7               L5773:
9590                     ; 1537 				temp--;
9592  1db7 0a03          	dec	(OFST+0,sp)
9593                     ; 1538 				gran_ring_char(&temp,1,max_day);
9595  1db9 7b02          	ld	a,(OFST-1,sp)
9596  1dbb 88            	push	a
9597  1dbc 4b01          	push	#1
9598  1dbe 96            	ldw	x,sp
9599  1dbf 1c0005        	addw	x,#OFST+2
9600  1dc2 cd0000        	call	_gran_ring_char
9602  1dc5 85            	popw	x
9603                     ; 1539 				_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
9605  1dc6 7b03          	ld	a,(OFST+0,sp)
9606  1dc8 ae000a        	ldw	x,#10
9607  1dcb 51            	exgw	x,y
9608  1dcc 5f            	clrw	x
9609  1dcd 4d            	tnz	a
9610  1dce 2a01          	jrpl	L434
9611  1dd0 5a            	decw	x
9612  1dd1               L434:
9613  1dd1 02            	rlwa	x,a
9614  1dd2 cd0000        	call	c_idiv
9616  1dd5 909f          	ld	a,yl
9617  1dd7 6b01          	ld	(OFST-2,sp),a
9618  1dd9 7b03          	ld	a,(OFST+0,sp)
9619  1ddb ae000a        	ldw	x,#10
9620  1dde 51            	exgw	x,y
9621  1ddf 5f            	clrw	x
9622  1de0 4d            	tnz	a
9623  1de1 2a01          	jrpl	L634
9624  1de3 5a            	decw	x
9625  1de4               L634:
9626  1de4 02            	rlwa	x,a
9627  1de5 cd0000        	call	c_idiv
9629  1de8 9f            	ld	a,xl
9630  1de9 4e            	swap	a
9631  1dea a4f0          	and	a,#240
9632  1dec 1b01          	add	a,(OFST-2,sp)
9633  1dee 97            	ld	xl,a
9634  1def a604          	ld	a,#4
9635  1df1 95            	ld	xh,a
9636  1df2 cd0000        	call	__ds1307_write_byte
9638  1df5 ac162416      	jpf	L5153
9639  1df9               L5473:
9640                     ; 1542 		else if(sub_ind==7)
9642  1df9 b662          	ld	a,_a_ind+1
9643  1dfb a107          	cp	a,#7
9644  1dfd 2703          	jreq	L406
9645  1dff cc1ea3        	jp	L1004
9646  1e02               L406:
9647                     ; 1545 			temp=time_hour;
9649  1e02 b60f          	ld	a,_time_hour
9650  1e04 6b03          	ld	(OFST+0,sp),a
9651                     ; 1547 			if((but==butU)||(but==butU_))
9653  1e06 b600          	ld	a,_but
9654  1e08 a1fb          	cp	a,#251
9655  1e0a 2706          	jreq	L5004
9657  1e0c b600          	ld	a,_but
9658  1e0e a17b          	cp	a,#123
9659  1e10 263f          	jrne	L3004
9660  1e12               L5004:
9661                     ; 1549 				temp++;
9663  1e12 0c03          	inc	(OFST+0,sp)
9664                     ; 1550 				gran_ring_char(&temp,0,23);
9666  1e14 4b17          	push	#23
9667  1e16 4b00          	push	#0
9668  1e18 96            	ldw	x,sp
9669  1e19 1c0005        	addw	x,#OFST+2
9670  1e1c cd0000        	call	_gran_ring_char
9672  1e1f 85            	popw	x
9673                     ; 1551 				_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);
9675  1e20 7b03          	ld	a,(OFST+0,sp)
9676  1e22 ae000a        	ldw	x,#10
9677  1e25 51            	exgw	x,y
9678  1e26 5f            	clrw	x
9679  1e27 4d            	tnz	a
9680  1e28 2a01          	jrpl	L044
9681  1e2a 5a            	decw	x
9682  1e2b               L044:
9683  1e2b 02            	rlwa	x,a
9684  1e2c cd0000        	call	c_idiv
9686  1e2f 909f          	ld	a,yl
9687  1e31 6b01          	ld	(OFST-2,sp),a
9688  1e33 7b03          	ld	a,(OFST+0,sp)
9689  1e35 ae000a        	ldw	x,#10
9690  1e38 51            	exgw	x,y
9691  1e39 5f            	clrw	x
9692  1e3a 4d            	tnz	a
9693  1e3b 2a01          	jrpl	L244
9694  1e3d 5a            	decw	x
9695  1e3e               L244:
9696  1e3e 02            	rlwa	x,a
9697  1e3f cd0000        	call	c_idiv
9699  1e42 9f            	ld	a,xl
9700  1e43 4e            	swap	a
9701  1e44 a4f0          	and	a,#240
9702  1e46 1b01          	add	a,(OFST-2,sp)
9703  1e48 a4bf          	and	a,#191
9704  1e4a 97            	ld	xl,a
9705  1e4b a602          	ld	a,#2
9706  1e4d 95            	ld	xh,a
9707  1e4e cd0000        	call	__ds1307_write_byte
9709  1e51               L3004:
9710                     ; 1554 			if((but==butD)||(but==butD_))
9712  1e51 b600          	ld	a,_but
9713  1e53 a1f7          	cp	a,#247
9714  1e55 2709          	jreq	L1104
9716  1e57 b600          	ld	a,_but
9717  1e59 a177          	cp	a,#119
9718  1e5b 2703          	jreq	L606
9719  1e5d cc2416        	jp	L5153
9720  1e60               L606:
9721  1e60               L1104:
9722                     ; 1556 				temp--;
9724  1e60 0a03          	dec	(OFST+0,sp)
9725                     ; 1557 				gran_ring_char(&temp,0,23);
9727  1e62 4b17          	push	#23
9728  1e64 4b00          	push	#0
9729  1e66 96            	ldw	x,sp
9730  1e67 1c0005        	addw	x,#OFST+2
9731  1e6a cd0000        	call	_gran_ring_char
9733  1e6d 85            	popw	x
9734                     ; 1558 				_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);
9736  1e6e 7b03          	ld	a,(OFST+0,sp)
9737  1e70 ae000a        	ldw	x,#10
9738  1e73 51            	exgw	x,y
9739  1e74 5f            	clrw	x
9740  1e75 4d            	tnz	a
9741  1e76 2a01          	jrpl	L444
9742  1e78 5a            	decw	x
9743  1e79               L444:
9744  1e79 02            	rlwa	x,a
9745  1e7a cd0000        	call	c_idiv
9747  1e7d 909f          	ld	a,yl
9748  1e7f 6b01          	ld	(OFST-2,sp),a
9749  1e81 7b03          	ld	a,(OFST+0,sp)
9750  1e83 ae000a        	ldw	x,#10
9751  1e86 51            	exgw	x,y
9752  1e87 5f            	clrw	x
9753  1e88 4d            	tnz	a
9754  1e89 2a01          	jrpl	L644
9755  1e8b 5a            	decw	x
9756  1e8c               L644:
9757  1e8c 02            	rlwa	x,a
9758  1e8d cd0000        	call	c_idiv
9760  1e90 9f            	ld	a,xl
9761  1e91 4e            	swap	a
9762  1e92 a4f0          	and	a,#240
9763  1e94 1b01          	add	a,(OFST-2,sp)
9764  1e96 a4bf          	and	a,#191
9765  1e98 97            	ld	xl,a
9766  1e99 a602          	ld	a,#2
9767  1e9b 95            	ld	xh,a
9768  1e9c cd0000        	call	__ds1307_write_byte
9770  1e9f ac162416      	jpf	L5153
9771  1ea3               L1004:
9772                     ; 1561 		else if(sub_ind==8)
9774  1ea3 b662          	ld	a,_a_ind+1
9775  1ea5 a108          	cp	a,#8
9776  1ea7 2703          	jreq	L016
9777  1ea9 cc1f55        	jp	L5104
9778  1eac               L016:
9779                     ; 1564 			temp=time_min;
9781  1eac b610          	ld	a,_time_min
9782  1eae 6b03          	ld	(OFST+0,sp),a
9783                     ; 1566 			if((but==butU)||(but==butU_))
9785  1eb0 b600          	ld	a,_but
9786  1eb2 a1fb          	cp	a,#251
9787  1eb4 2706          	jreq	L1204
9789  1eb6 b600          	ld	a,_but
9790  1eb8 a17b          	cp	a,#123
9791  1eba 2643          	jrne	L7104
9792  1ebc               L1204:
9793                     ; 1568 				temp++;
9795  1ebc 0c03          	inc	(OFST+0,sp)
9796                     ; 1569 				gran_ring_char(&temp,0,59);
9798  1ebe 4b3b          	push	#59
9799  1ec0 4b00          	push	#0
9800  1ec2 96            	ldw	x,sp
9801  1ec3 1c0005        	addw	x,#OFST+2
9802  1ec6 cd0000        	call	_gran_ring_char
9804  1ec9 85            	popw	x
9805                     ; 1570 				_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));
9807  1eca 7b03          	ld	a,(OFST+0,sp)
9808  1ecc ae000a        	ldw	x,#10
9809  1ecf 51            	exgw	x,y
9810  1ed0 5f            	clrw	x
9811  1ed1 4d            	tnz	a
9812  1ed2 2a01          	jrpl	L054
9813  1ed4 5a            	decw	x
9814  1ed5               L054:
9815  1ed5 02            	rlwa	x,a
9816  1ed6 cd0000        	call	c_idiv
9818  1ed9 909f          	ld	a,yl
9819  1edb 6b01          	ld	(OFST-2,sp),a
9820  1edd 7b03          	ld	a,(OFST+0,sp)
9821  1edf ae000a        	ldw	x,#10
9822  1ee2 51            	exgw	x,y
9823  1ee3 5f            	clrw	x
9824  1ee4 4d            	tnz	a
9825  1ee5 2a01          	jrpl	L254
9826  1ee7 5a            	decw	x
9827  1ee8               L254:
9828  1ee8 02            	rlwa	x,a
9829  1ee9 cd0000        	call	c_idiv
9831  1eec 9f            	ld	a,xl
9832  1eed 4e            	swap	a
9833  1eee a4f0          	and	a,#240
9834  1ef0 1b01          	add	a,(OFST-2,sp)
9835  1ef2 97            	ld	xl,a
9836  1ef3 a601          	ld	a,#1
9837  1ef5 95            	ld	xh,a
9838  1ef6 cd0000        	call	__ds1307_write_byte
9840                     ; 1571 				_ds1307_write_byte(0,0);
9842  1ef9 5f            	clrw	x
9843  1efa 4f            	clr	a
9844  1efb 95            	ld	xh,a
9845  1efc cd0000        	call	__ds1307_write_byte
9847  1eff               L7104:
9848                     ; 1573 			if((but==butD)||(but==butD_))
9850  1eff b600          	ld	a,_but
9851  1f01 a1f7          	cp	a,#247
9852  1f03 2709          	jreq	L5204
9854  1f05 b600          	ld	a,_but
9855  1f07 a177          	cp	a,#119
9856  1f09 2703          	jreq	L216
9857  1f0b cc2416        	jp	L5153
9858  1f0e               L216:
9859  1f0e               L5204:
9860                     ; 1575 				temp--;
9862  1f0e 0a03          	dec	(OFST+0,sp)
9863                     ; 1576 				gran_ring_char(&temp,0,59);
9865  1f10 4b3b          	push	#59
9866  1f12 4b00          	push	#0
9867  1f14 96            	ldw	x,sp
9868  1f15 1c0005        	addw	x,#OFST+2
9869  1f18 cd0000        	call	_gran_ring_char
9871  1f1b 85            	popw	x
9872                     ; 1577 				_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));
9874  1f1c 7b03          	ld	a,(OFST+0,sp)
9875  1f1e ae000a        	ldw	x,#10
9876  1f21 51            	exgw	x,y
9877  1f22 5f            	clrw	x
9878  1f23 4d            	tnz	a
9879  1f24 2a01          	jrpl	L454
9880  1f26 5a            	decw	x
9881  1f27               L454:
9882  1f27 02            	rlwa	x,a
9883  1f28 cd0000        	call	c_idiv
9885  1f2b 909f          	ld	a,yl
9886  1f2d 6b01          	ld	(OFST-2,sp),a
9887  1f2f 7b03          	ld	a,(OFST+0,sp)
9888  1f31 ae000a        	ldw	x,#10
9889  1f34 51            	exgw	x,y
9890  1f35 5f            	clrw	x
9891  1f36 4d            	tnz	a
9892  1f37 2a01          	jrpl	L654
9893  1f39 5a            	decw	x
9894  1f3a               L654:
9895  1f3a 02            	rlwa	x,a
9896  1f3b cd0000        	call	c_idiv
9898  1f3e 9f            	ld	a,xl
9899  1f3f 4e            	swap	a
9900  1f40 a4f0          	and	a,#240
9901  1f42 1b01          	add	a,(OFST-2,sp)
9902  1f44 97            	ld	xl,a
9903  1f45 a601          	ld	a,#1
9904  1f47 95            	ld	xh,a
9905  1f48 cd0000        	call	__ds1307_write_byte
9907                     ; 1578 				_ds1307_write_byte(0,0);
9909  1f4b 5f            	clrw	x
9910  1f4c 4f            	clr	a
9911  1f4d 95            	ld	xh,a
9912  1f4e cd0000        	call	__ds1307_write_byte
9914  1f51 ac162416      	jpf	L5153
9915  1f55               L5104:
9916                     ; 1581 		else if(sub_ind==9)
9918  1f55 b662          	ld	a,_a_ind+1
9919  1f57 a109          	cp	a,#9
9920  1f59 2703          	jreq	L416
9921  1f5b cc2416        	jp	L5153
9922  1f5e               L416:
9923                     ; 1584 			temp=time_day_of_week;
9925  1f5e b60e          	ld	a,_time_day_of_week
9926  1f60 6b03          	ld	(OFST+0,sp),a
9927                     ; 1586 			if((but==butU)||(but==butU_))
9929  1f62 b600          	ld	a,_but
9930  1f64 a1fb          	cp	a,#251
9931  1f66 2706          	jreq	L5304
9933  1f68 b600          	ld	a,_but
9934  1f6a a17b          	cp	a,#123
9935  1f6c 2619          	jrne	L3304
9936  1f6e               L5304:
9937                     ; 1588 				temp++;
9939  1f6e 0c03          	inc	(OFST+0,sp)
9940                     ; 1589 				gran_ring_char(&temp,1,7);
9942  1f70 4b07          	push	#7
9943  1f72 4b01          	push	#1
9944  1f74 96            	ldw	x,sp
9945  1f75 1c0005        	addw	x,#OFST+2
9946  1f78 cd0000        	call	_gran_ring_char
9948  1f7b 85            	popw	x
9949                     ; 1590 				_ds1307_write_byte(3,temp&0x07);
9951  1f7c 7b03          	ld	a,(OFST+0,sp)
9952  1f7e a407          	and	a,#7
9953  1f80 97            	ld	xl,a
9954  1f81 a603          	ld	a,#3
9955  1f83 95            	ld	xh,a
9956  1f84 cd0000        	call	__ds1307_write_byte
9958  1f87               L3304:
9959                     ; 1592 			if((but==butD)||(but==butD_))
9961  1f87 b600          	ld	a,_but
9962  1f89 a1f7          	cp	a,#247
9963  1f8b 2709          	jreq	L1404
9965  1f8d b600          	ld	a,_but
9966  1f8f a177          	cp	a,#119
9967  1f91 2703          	jreq	L616
9968  1f93 cc2416        	jp	L5153
9969  1f96               L616:
9970  1f96               L1404:
9971                     ; 1594 				temp--;
9973  1f96 0a03          	dec	(OFST+0,sp)
9974                     ; 1595 				gran_ring_char(&temp,1,7);
9976  1f98 4b07          	push	#7
9977  1f9a 4b01          	push	#1
9978  1f9c 96            	ldw	x,sp
9979  1f9d 1c0005        	addw	x,#OFST+2
9980  1fa0 cd0000        	call	_gran_ring_char
9982  1fa3 85            	popw	x
9983                     ; 1596 				_ds1307_write_byte(3,temp&0x07);
9985  1fa4 7b03          	ld	a,(OFST+0,sp)
9986  1fa6 a407          	and	a,#7
9987  1fa8 97            	ld	xl,a
9988  1fa9 a603          	ld	a,#3
9989  1fab 95            	ld	xh,a
9990  1fac cd0000        	call	__ds1307_write_byte
9992  1faf ac162416      	jpf	L5153
9993  1fb3               L7263:
9994                     ; 1601 else if(ind==iSetTable)
9996  1fb3 b661          	ld	a,_a_ind
9997  1fb5 a105          	cp	a,#5
9998  1fb7 2703          	jreq	L026
9999  1fb9 cc204d        	jp	L5404
10000  1fbc               L026:
10001                     ; 1603 	if((but==butU)/*||(but==butU_)*/)
10003  1fbc b600          	ld	a,_but
10004  1fbe a1fb          	cp	a,#251
10005  1fc0 2617          	jrne	L7404
10006                     ; 1605 		sub_ind++;
10008  1fc2 3c62          	inc	_a_ind+1
10009                     ; 1606 		gran_char(&sub_ind,0,34);
10011  1fc4 4b22          	push	#34
10012  1fc6 4b00          	push	#0
10013  1fc8 ae0062        	ldw	x,#_a_ind+1
10014  1fcb cd0000        	call	_gran_char
10016  1fce 85            	popw	x
10017                     ; 1607 		clear_ind();
10019  1fcf cd0000        	call	_clear_ind
10021                     ; 1608 		ind_hndl();
10023  1fd2 cd0683        	call	_ind_hndl
10026  1fd5 ac162416      	jpf	L5153
10027  1fd9               L7404:
10028                     ; 1610 	else if((but==butD)/*||(but==butD_)*/)
10030  1fd9 b600          	ld	a,_but
10031  1fdb a1f7          	cp	a,#247
10032  1fdd 2617          	jrne	L3504
10033                     ; 1612 		sub_ind--;
10035  1fdf 3a62          	dec	_a_ind+1
10036                     ; 1613 		gran_char(&sub_ind,0,34);
10038  1fe1 4b22          	push	#34
10039  1fe3 4b00          	push	#0
10040  1fe5 ae0062        	ldw	x,#_a_ind+1
10041  1fe8 cd0000        	call	_gran_char
10043  1feb 85            	popw	x
10044                     ; 1614 		clear_ind();
10046  1fec cd0000        	call	_clear_ind
10048                     ; 1615 		ind_hndl();
10050  1fef cd0683        	call	_ind_hndl
10053  1ff2 ac162416      	jpf	L5153
10054  1ff6               L3504:
10055                     ; 1617 	else if(but==butM)
10057  1ff6 b600          	ld	a,_but
10058  1ff8 a1fd          	cp	a,#253
10059  1ffa 2616          	jrne	L7504
10060                     ; 1619 		if(sub_ind1==0)sub_ind1=1;
10062  1ffc 3d63          	tnz	_a_ind+2
10063  1ffe 2606          	jrne	L1604
10066  2000 35010063      	mov	_a_ind+2,#1
10068  2004 2002          	jra	L3604
10069  2006               L1604:
10070                     ; 1620 		else sub_ind1=0;
10072  2006 3f63          	clr	_a_ind+2
10073  2008               L3604:
10074                     ; 1621 		clear_ind();
10076  2008 cd0000        	call	_clear_ind
10078                     ; 1622 		ind_hndl();
10080  200b cd0683        	call	_ind_hndl
10083  200e ac162416      	jpf	L5153
10084  2012               L7504:
10085                     ; 1624 	else if((but==butD_)/*||(but==butD_)*/)
10087  2012 b600          	ld	a,_but
10088  2014 a177          	cp	a,#119
10089  2016 2610          	jrne	L7604
10090                     ; 1626 		tree_down(0,0);
10092  2018 5f            	clrw	x
10093  2019 4f            	clr	a
10094  201a 95            	ld	xh,a
10095  201b cd0000        	call	_tree_down
10097                     ; 1627 		clear_ind();
10099  201e cd0000        	call	_clear_ind
10101                     ; 1628 		ind_hndl();
10103  2021 cd0683        	call	_ind_hndl
10106  2024 ac162416      	jpf	L5153
10107  2028               L7604:
10108                     ; 1630 	else if(but==butUD_)
10110  2028 b600          	ld	a,_but
10111  202a a173          	cp	a,#115
10112  202c 2603          	jrne	L226
10113  202e cc2416        	jp	L5153
10114  2031               L226:
10116                     ; 1711 	else if(but==butM_)
10118  2031 b600          	ld	a,_but
10119  2033 a17d          	cp	a,#125
10120  2035 2703          	jreq	L426
10121  2037 cc2416        	jp	L5153
10122  203a               L426:
10123                     ; 1713 		tree_up(iSetTable_,sub_ind,0,sub_ind1);
10125  203a 3b0063        	push	_a_ind+2
10126  203d 4b00          	push	#0
10127  203f b662          	ld	a,_a_ind+1
10128  2041 97            	ld	xl,a
10129  2042 a606          	ld	a,#6
10130  2044 95            	ld	xh,a
10131  2045 cd0000        	call	_tree_up
10133  2048 85            	popw	x
10134  2049 ac162416      	jpf	L5153
10135  204d               L5404:
10136                     ; 1717 else if(ind==iSetTable_)
10138  204d b661          	ld	a,_a_ind
10139  204f a106          	cp	a,#6
10140  2051 2703          	jreq	L626
10141  2053 cc225c        	jp	L3014
10142  2056               L626:
10143                     ; 1719 	if(but==butM_)
10145  2056 b600          	ld	a,_but
10146  2058 a17d          	cp	a,#125
10147  205a 260a          	jrne	L5014
10148                     ; 1721 		tree_down(0,0);
10150  205c 5f            	clrw	x
10151  205d 4f            	clr	a
10152  205e 95            	ld	xh,a
10153  205f cd0000        	call	_tree_down
10156  2062 ac162416      	jpf	L5153
10157  2066               L5014:
10158                     ; 1723 	else if(but==butM)
10160  2066 b600          	ld	a,_but
10161  2068 a1fd          	cp	a,#253
10162  206a 2618          	jrne	L1114
10163                     ; 1725 		if(sub_ind1==1)sub_ind1=0;
10165  206c b663          	ld	a,_a_ind+2
10166  206e a101          	cp	a,#1
10167  2070 2604          	jrne	L3114
10170  2072 3f63          	clr	_a_ind+2
10172  2074 2004          	jra	L5114
10173  2076               L3114:
10174                     ; 1726 		else sub_ind1=1;
10176  2076 35010063      	mov	_a_ind+2,#1
10177  207a               L5114:
10178                     ; 1727 		clear_ind();
10180  207a cd0000        	call	_clear_ind
10182                     ; 1728 		ind_hndl();
10184  207d cd0683        	call	_ind_hndl
10187  2080 ac162416      	jpf	L5153
10188  2084               L1114:
10189                     ; 1730 	else if(sub_ind1==0)
10191  2084 3d63          	tnz	_a_ind+2
10192  2086 2703          	jreq	L036
10193  2088 cc213f        	jp	L1214
10194  208b               L036:
10195                     ; 1735 		num_of_day=sub_ind/5;
10197  208b 5f            	clrw	x
10198  208c b662          	ld	a,_a_ind+1
10199  208e 2a01          	jrpl	L064
10200  2090 53            	cplw	x
10201  2091               L064:
10202  2091 97            	ld	xl,a
10203  2092 a605          	ld	a,#5
10204  2094 cd0000        	call	c_sdivx
10206                     ; 1736 		num_of_set=sub_ind%5;
10208  2097 b662          	ld	a,_a_ind+1
10209  2099 ae0005        	ldw	x,#5
10210  209c 51            	exgw	x,y
10211  209d 5f            	clrw	x
10212  209e 4d            	tnz	a
10213  209f 2a01          	jrpl	L264
10214  20a1 5a            	decw	x
10215  20a2               L264:
10216  20a2 02            	rlwa	x,a
10217  20a3 cd0000        	call	c_idiv
10219  20a6 909f          	ld	a,yl
10220  20a8 6b03          	ld	(OFST+0,sp),a
10221                     ; 1738 		if((but==butU)||(but==butU_))
10223  20aa b600          	ld	a,_but
10224  20ac a1fb          	cp	a,#251
10225  20ae 2706          	jreq	L5214
10227  20b0 b600          	ld	a,_but
10228  20b2 a17b          	cp	a,#123
10229  20b4 2639          	jrne	L3214
10230  20b6               L5214:
10231                     ; 1741 			tempUC++;
10233  20b6 3c01          	inc	_tempUC
10234                     ; 1742 			if(tempUC>TABLE_TIME_EE_MAX[num_of_set])tempUC=TABLE_TIME_EE_MAX[num_of_set];
10236  20b8 7b03          	ld	a,(OFST+0,sp)
10237  20ba 5f            	clrw	x
10238  20bb 97            	ld	xl,a
10239  20bc d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10240  20bf b101          	cp	a,_tempUC
10241  20c1 2409          	jruge	L7214
10244  20c3 7b03          	ld	a,(OFST+0,sp)
10245  20c5 5f            	clrw	x
10246  20c6 97            	ld	xl,a
10247  20c7 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10248  20ca b701          	ld	_tempUC,a
10249  20cc               L7214:
10250                     ; 1743 			if(tempUC<TABLE_TIME_EE_MIN[num_of_set])tempUC=TABLE_TIME_EE_MIN[num_of_set];
10252  20cc 7b03          	ld	a,(OFST+0,sp)
10253  20ce 5f            	clrw	x
10254  20cf 97            	ld	xl,a
10255  20d0 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10256  20d3 b101          	cp	a,_tempUC
10257  20d5 2309          	jrule	L1314
10260  20d7 7b03          	ld	a,(OFST+0,sp)
10261  20d9 5f            	clrw	x
10262  20da 97            	ld	xl,a
10263  20db d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10264  20de b701          	ld	_tempUC,a
10265  20e0               L1314:
10266                     ; 1745 			speed=1;
10268  20e0 35010000      	mov	_speed,#1
10269                     ; 1746 			HUMAN_SET_EE=1;
10271  20e4 ae0001        	ldw	x,#1
10272  20e7 89            	pushw	x
10273  20e8 ae401e        	ldw	x,#_HUMAN_SET_EE
10274  20eb cd0000        	call	c_eewrw
10276  20ee 85            	popw	x
10277  20ef               L3214:
10278                     ; 1748 		if((but==butD)||(but==butD_))
10280  20ef b600          	ld	a,_but
10281  20f1 a1f7          	cp	a,#247
10282  20f3 2709          	jreq	L5314
10284  20f5 b600          	ld	a,_but
10285  20f7 a177          	cp	a,#119
10286  20f9 2703          	jreq	L236
10287  20fb cc2416        	jp	L5153
10288  20fe               L236:
10289  20fe               L5314:
10290                     ; 1751 			if(tempUC)tempUC--;
10292  20fe 3d01          	tnz	_tempUC
10293  2100 2702          	jreq	L7314
10296  2102 3a01          	dec	_tempUC
10297  2104               L7314:
10298                     ; 1752 			if(tempUC>TABLE_TIME_EE_MAX[num_of_set])tempUC=TABLE_TIME_EE_MAX[num_of_set];
10300  2104 7b03          	ld	a,(OFST+0,sp)
10301  2106 5f            	clrw	x
10302  2107 97            	ld	xl,a
10303  2108 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10304  210b b101          	cp	a,_tempUC
10305  210d 2409          	jruge	L1414
10308  210f 7b03          	ld	a,(OFST+0,sp)
10309  2111 5f            	clrw	x
10310  2112 97            	ld	xl,a
10311  2113 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10312  2116 b701          	ld	_tempUC,a
10313  2118               L1414:
10314                     ; 1753 			if(tempUC<TABLE_TIME_EE_MIN[num_of_set])tempUC=TABLE_TIME_EE_MIN[num_of_set];
10316  2118 7b03          	ld	a,(OFST+0,sp)
10317  211a 5f            	clrw	x
10318  211b 97            	ld	xl,a
10319  211c d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10320  211f b101          	cp	a,_tempUC
10321  2121 2309          	jrule	L3414
10324  2123 7b03          	ld	a,(OFST+0,sp)
10325  2125 5f            	clrw	x
10326  2126 97            	ld	xl,a
10327  2127 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10328  212a b701          	ld	_tempUC,a
10329  212c               L3414:
10330                     ; 1755 			speed=1;
10332  212c 35010000      	mov	_speed,#1
10333                     ; 1756 			HUMAN_SET_EE=1;
10335  2130 ae0001        	ldw	x,#1
10336  2133 89            	pushw	x
10337  2134 ae401e        	ldw	x,#_HUMAN_SET_EE
10338  2137 cd0000        	call	c_eewrw
10340  213a 85            	popw	x
10341  213b ac162416      	jpf	L5153
10342  213f               L1214:
10343                     ; 1759 	else if(sub_ind1==1)
10345  213f b663          	ld	a,_a_ind+2
10346  2141 a101          	cp	a,#1
10347  2143 2703          	jreq	L436
10348  2145 cc2416        	jp	L5153
10349  2148               L436:
10350                     ; 1764 		num_of_day=sub_ind/5;
10352  2148 b662          	ld	a,_a_ind+1
10353  214a ae0005        	ldw	x,#5
10354  214d 51            	exgw	x,y
10355  214e 5f            	clrw	x
10356  214f 4d            	tnz	a
10357  2150 2a01          	jrpl	L464
10358  2152 5a            	decw	x
10359  2153               L464:
10360  2153 02            	rlwa	x,a
10361  2154 cd0000        	call	c_idiv
10363  2157 9f            	ld	a,xl
10364  2158 6b02          	ld	(OFST-1,sp),a
10365                     ; 1765 		num_of_set=sub_ind%5;
10367  215a b662          	ld	a,_a_ind+1
10368  215c ae0005        	ldw	x,#5
10369  215f 51            	exgw	x,y
10370  2160 5f            	clrw	x
10371  2161 4d            	tnz	a
10372  2162 2a01          	jrpl	L664
10373  2164 5a            	decw	x
10374  2165               L664:
10375  2165 02            	rlwa	x,a
10376  2166 cd0000        	call	c_idiv
10378  2169 909f          	ld	a,yl
10379  216b 6b03          	ld	(OFST+0,sp),a
10380                     ; 1767 		if((but==butU)||(but==butU_))
10382  216d b600          	ld	a,_but
10383  216f a1fb          	cp	a,#251
10384  2171 2706          	jreq	L3514
10386  2173 b600          	ld	a,_but
10387  2175 a17b          	cp	a,#123
10388  2177 2668          	jrne	L1514
10389  2179               L3514:
10390                     ; 1769 			tempUC=TABLE_TEMPER_EE[num_of_day][num_of_set];
10392  2179 7b02          	ld	a,(OFST-1,sp)
10393  217b 97            	ld	xl,a
10394  217c a605          	ld	a,#5
10395  217e 42            	mul	x,a
10396  217f 01            	rrwa	x,a
10397  2180 1b03          	add	a,(OFST+0,sp)
10398  2182 2401          	jrnc	L074
10399  2184 5c            	incw	x
10400  2185               L074:
10401  2185 02            	rlwa	x,a
10402  2186 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10403  2189 b701          	ld	_tempUC,a
10404                     ; 1770 			if(tempUC)tempUC++;
10406  218b 3d01          	tnz	_tempUC
10407  218d 2702          	jreq	L5514
10410  218f 3c01          	inc	_tempUC
10411  2191               L5514:
10412                     ; 1771 			if(tempUC>35)tempUC=35;
10414  2191 b601          	ld	a,_tempUC
10415  2193 a124          	cp	a,#36
10416  2195 2504          	jrult	L7514
10419  2197 35230001      	mov	_tempUC,#35
10420  219b               L7514:
10421                     ; 1772 			if(tempUC<5)tempUC=5;
10423  219b b601          	ld	a,_tempUC
10424  219d a105          	cp	a,#5
10425  219f 2404          	jruge	L1614
10428  21a1 35050001      	mov	_tempUC,#5
10429  21a5               L1614:
10430                     ; 1773 			if(TABLE_TEMPER_EE[num_of_day][num_of_set]!=tempUC)TABLE_TEMPER_EE[num_of_day][num_of_set]=tempUC;
10432  21a5 7b02          	ld	a,(OFST-1,sp)
10433  21a7 97            	ld	xl,a
10434  21a8 a605          	ld	a,#5
10435  21aa 42            	mul	x,a
10436  21ab 01            	rrwa	x,a
10437  21ac 1b03          	add	a,(OFST+0,sp)
10438  21ae 2401          	jrnc	L274
10439  21b0 5c            	incw	x
10440  21b1               L274:
10441  21b1 02            	rlwa	x,a
10442  21b2 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10443  21b5 5f            	clrw	x
10444  21b6 4d            	tnz	a
10445  21b7 2a01          	jrpl	L474
10446  21b9 53            	cplw	x
10447  21ba               L474:
10448  21ba 97            	ld	xl,a
10449  21bb b601          	ld	a,_tempUC
10450  21bd 905f          	clrw	y
10451  21bf 9097          	ld	yl,a
10452  21c1 90bf00        	ldw	c_y,y
10453  21c4 b300          	cpw	x,c_y
10454  21c6 2715          	jreq	L3614
10457  21c8 7b02          	ld	a,(OFST-1,sp)
10458  21ca 97            	ld	xl,a
10459  21cb a605          	ld	a,#5
10460  21cd 42            	mul	x,a
10461  21ce 01            	rrwa	x,a
10462  21cf 1b03          	add	a,(OFST+0,sp)
10463  21d1 2401          	jrnc	L674
10464  21d3 5c            	incw	x
10465  21d4               L674:
10466  21d4 02            	rlwa	x,a
10467  21d5 b601          	ld	a,_tempUC
10468  21d7 1c4048        	addw	x,#_TABLE_TEMPER_EE
10469  21da cd0000        	call	c_eewrc
10471  21dd               L3614:
10472                     ; 1774 			speed=1;
10474  21dd 35010000      	mov	_speed,#1
10475  21e1               L1514:
10476                     ; 1776 		if((but==butD)||(but==butD_))
10478  21e1 b600          	ld	a,_but
10479  21e3 a1f7          	cp	a,#247
10480  21e5 2709          	jreq	L7614
10482  21e7 b600          	ld	a,_but
10483  21e9 a177          	cp	a,#119
10484  21eb 2703          	jreq	L636
10485  21ed cc2416        	jp	L5153
10486  21f0               L636:
10487  21f0               L7614:
10488                     ; 1778 			tempUC=TABLE_TEMPER_EE[num_of_day][num_of_set];
10490  21f0 7b02          	ld	a,(OFST-1,sp)
10491  21f2 97            	ld	xl,a
10492  21f3 a605          	ld	a,#5
10493  21f5 42            	mul	x,a
10494  21f6 01            	rrwa	x,a
10495  21f7 1b03          	add	a,(OFST+0,sp)
10496  21f9 2401          	jrnc	L005
10497  21fb 5c            	incw	x
10498  21fc               L005:
10499  21fc 02            	rlwa	x,a
10500  21fd d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10501  2200 b701          	ld	_tempUC,a
10502                     ; 1779 			if(tempUC)tempUC--;
10504  2202 3d01          	tnz	_tempUC
10505  2204 2702          	jreq	L1714
10508  2206 3a01          	dec	_tempUC
10509  2208               L1714:
10510                     ; 1780 			if(tempUC>35)tempUC=35;
10512  2208 b601          	ld	a,_tempUC
10513  220a a124          	cp	a,#36
10514  220c 2504          	jrult	L3714
10517  220e 35230001      	mov	_tempUC,#35
10518  2212               L3714:
10519                     ; 1781 			if(tempUC<5)tempUC=5;
10521  2212 b601          	ld	a,_tempUC
10522  2214 a105          	cp	a,#5
10523  2216 2404          	jruge	L5714
10526  2218 35050001      	mov	_tempUC,#5
10527  221c               L5714:
10528                     ; 1782 			if(TABLE_TEMPER_EE[num_of_day][num_of_set]!=tempUC)TABLE_TEMPER_EE[num_of_day][num_of_set]=tempUC;
10530  221c 7b02          	ld	a,(OFST-1,sp)
10531  221e 97            	ld	xl,a
10532  221f a605          	ld	a,#5
10533  2221 42            	mul	x,a
10534  2222 01            	rrwa	x,a
10535  2223 1b03          	add	a,(OFST+0,sp)
10536  2225 2401          	jrnc	L205
10537  2227 5c            	incw	x
10538  2228               L205:
10539  2228 02            	rlwa	x,a
10540  2229 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10541  222c 5f            	clrw	x
10542  222d 4d            	tnz	a
10543  222e 2a01          	jrpl	L405
10544  2230 53            	cplw	x
10545  2231               L405:
10546  2231 97            	ld	xl,a
10547  2232 b601          	ld	a,_tempUC
10548  2234 905f          	clrw	y
10549  2236 9097          	ld	yl,a
10550  2238 90bf00        	ldw	c_y,y
10551  223b b300          	cpw	x,c_y
10552  223d 2715          	jreq	L7714
10555  223f 7b02          	ld	a,(OFST-1,sp)
10556  2241 97            	ld	xl,a
10557  2242 a605          	ld	a,#5
10558  2244 42            	mul	x,a
10559  2245 01            	rrwa	x,a
10560  2246 1b03          	add	a,(OFST+0,sp)
10561  2248 2401          	jrnc	L605
10562  224a 5c            	incw	x
10563  224b               L605:
10564  224b 02            	rlwa	x,a
10565  224c b601          	ld	a,_tempUC
10566  224e 1c4048        	addw	x,#_TABLE_TEMPER_EE
10567  2251 cd0000        	call	c_eewrc
10569  2254               L7714:
10570                     ; 1783 			speed=1;
10572  2254 35010000      	mov	_speed,#1
10573  2258 ac162416      	jpf	L5153
10574  225c               L3014:
10575                     ; 1787 else if(ind==iDeb)
10577  225c b661          	ld	a,_a_ind
10578  225e a107          	cp	a,#7
10579  2260 2703          	jreq	L046
10580  2262 cc22f6        	jp	L3024
10581  2265               L046:
10582                     ; 1789 	if(but==butU)
10584  2265 b600          	ld	a,_but
10585  2267 a1fb          	cp	a,#251
10586  2269 2617          	jrne	L5024
10587                     ; 1791 		sub_ind++;
10589  226b 3c62          	inc	_a_ind+1
10590                     ; 1792 		gran_char(&sub_ind,0,12);
10592  226d 4b0c          	push	#12
10593  226f 4b00          	push	#0
10594  2271 ae0062        	ldw	x,#_a_ind+1
10595  2274 cd0000        	call	_gran_char
10597  2277 85            	popw	x
10598                     ; 1793 		clear_ind();
10600  2278 cd0000        	call	_clear_ind
10602                     ; 1794 		ind_hndl();
10604  227b cd0683        	call	_ind_hndl
10607  227e ac162416      	jpf	L5153
10608  2282               L5024:
10609                     ; 1796 	else if(but==butD)
10611  2282 b600          	ld	a,_but
10612  2284 a1f7          	cp	a,#247
10613  2286 2617          	jrne	L1124
10614                     ; 1798 		sub_ind--;
10616  2288 3a62          	dec	_a_ind+1
10617                     ; 1799 		gran_char(&sub_ind,0,12);
10619  228a 4b0c          	push	#12
10620  228c 4b00          	push	#0
10621  228e ae0062        	ldw	x,#_a_ind+1
10622  2291 cd0000        	call	_gran_char
10624  2294 85            	popw	x
10625                     ; 1800 		clear_ind();
10627  2295 cd0000        	call	_clear_ind
10629                     ; 1801 		ind_hndl();
10631  2298 cd0683        	call	_ind_hndl
10634  229b ac162416      	jpf	L5153
10635  229f               L1124:
10636                     ; 1803 	else if(but==butD_)
10638  229f b600          	ld	a,_but
10639  22a1 a177          	cp	a,#119
10640  22a3 260b          	jrne	L5124
10641                     ; 1805 		tree_down(-1,0);
10643  22a5 5f            	clrw	x
10644  22a6 a6ff          	ld	a,#255
10645  22a8 95            	ld	xh,a
10646  22a9 cd0000        	call	_tree_down
10649  22ac ac162416      	jpf	L5153
10650  22b0               L5124:
10651                     ; 1807 	else if(but==butM)
10653  22b0 b600          	ld	a,_but
10654  22b2 a1fd          	cp	a,#253
10655  22b4 2610          	jrne	L1224
10656                     ; 1809 		tree_up(iModem_deb,0,0,0);
10658  22b6 4b00          	push	#0
10659  22b8 4b00          	push	#0
10660  22ba 5f            	clrw	x
10661  22bb a60a          	ld	a,#10
10662  22bd 95            	ld	xh,a
10663  22be cd0000        	call	_tree_up
10665  22c1 85            	popw	x
10667  22c2 ac162416      	jpf	L5153
10668  22c6               L1224:
10669                     ; 1814 	else if(sub_ind==8)
10671  22c6 b662          	ld	a,_a_ind+1
10672  22c8 a108          	cp	a,#8
10673  22ca 2703          	jreq	L246
10674  22cc cc2416        	jp	L5153
10675  22cf               L246:
10676                     ; 1816 		if((but==butU)||(but==butD)||(but==butM)||(but==butON))	
10678  22cf b600          	ld	a,_but
10679  22d1 a1fb          	cp	a,#251
10680  22d3 2715          	jreq	L1324
10682  22d5 b600          	ld	a,_but
10683  22d7 a1f7          	cp	a,#247
10684  22d9 270f          	jreq	L1324
10686  22db b600          	ld	a,_but
10687  22dd a1fd          	cp	a,#253
10688  22df 2709          	jreq	L1324
10690  22e1 b600          	ld	a,_but
10691  22e3 a1fe          	cp	a,#254
10692  22e5 2703          	jreq	L446
10693  22e7 cc2416        	jp	L5153
10694  22ea               L446:
10695  22ea               L1324:
10696                     ; 1818 			beepTestCnt=10;
10698  22ea 350a0005      	mov	_beepTestCnt,#10
10699                     ; 1819 			ind_check_cnt=0;
10701  22ee 5f            	clrw	x
10702  22ef cf0003        	ldw	_ind_check_cnt,x
10703  22f2 ac162416      	jpf	L5153
10704  22f6               L3024:
10705                     ; 1824 else if(ind==iModem_deb)
10707  22f6 b661          	ld	a,_a_ind
10708  22f8 a10a          	cp	a,#10
10709  22fa 2703          	jreq	L646
10710  22fc cc23ab        	jp	L1424
10711  22ff               L646:
10712                     ; 1826 	if(but==butU)
10714  22ff b600          	ld	a,_but
10715  2301 a1fb          	cp	a,#251
10716  2303 2603          	jrne	L056
10717  2305 cc2416        	jp	L5153
10718  2308               L056:
10720                     ; 1837 	else if(but==butD)
10722  2308 b600          	ld	a,_but
10723  230a a1f7          	cp	a,#247
10724  230c 2603          	jrne	L256
10725  230e cc2416        	jp	L5153
10726  2311               L256:
10728                     ; 1845 	else if(but==butUD_)
10730  2311 b600          	ld	a,_but
10731  2313 a173          	cp	a,#115
10732  2315 260a          	jrne	L3524
10733                     ; 1847 		tree_down(0,0);
10735  2317 5f            	clrw	x
10736  2318 4f            	clr	a
10737  2319 95            	ld	xh,a
10738  231a cd0000        	call	_tree_down
10741  231d ac162416      	jpf	L5153
10742  2321               L3524:
10743                     ; 1865 	else if(but==butD_)
10745  2321 b600          	ld	a,_but
10746  2323 a177          	cp	a,#119
10747  2325 2616          	jrne	L7524
10748                     ; 1867 		AUTH_NUMBER_FLAGS=0;
10750  2327 4f            	clr	a
10751  2328 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
10752  232b cd0000        	call	c_eewrc
10754                     ; 1872 		HUMAN_SET_EE=1;
10756  232e ae0001        	ldw	x,#1
10757  2331 89            	pushw	x
10758  2332 ae401e        	ldw	x,#_HUMAN_SET_EE
10759  2335 cd0000        	call	c_eewrw
10761  2338 85            	popw	x
10763  2339 ac162416      	jpf	L5153
10764  233d               L7524:
10765                     ; 1874 	else if(but==butU_)
10767  233d b600          	ld	a,_but
10768  233f a17b          	cp	a,#123
10769  2341 261a          	jrne	L3624
10770                     ; 1876 		AUTH_NUMBER_FLAGS&=0x01;
10772  2343 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
10773  2346 a401          	and	a,#1
10774  2348 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
10775  234b cd0000        	call	c_eewrc
10777                     ; 1881 		HUMAN_SET_EE=1;
10779  234e ae0001        	ldw	x,#1
10780  2351 89            	pushw	x
10781  2352 ae401e        	ldw	x,#_HUMAN_SET_EE
10782  2355 cd0000        	call	c_eewrw
10784  2358 85            	popw	x
10786  2359 ac162416      	jpf	L5153
10787  235d               L3624:
10788                     ; 1883 	else if(but==butUD_)
10790  235d b600          	ld	a,_but
10791  235f a173          	cp	a,#115
10792  2361 2703          	jreq	L456
10793  2363 cc2416        	jp	L5153
10794  2366               L456:
10795                     ; 1885 		AUTH_NUMBER_FLAGS=0x0f;
10797  2366 a60f          	ld	a,#15
10798  2368 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
10799  236b cd0000        	call	c_eewrc
10801                     ; 1886 		memcpy(MAIN_NUMBER,"9139294352",10);
10803  236e ae000a        	ldw	x,#10
10804  2371               L015:
10805  2371 d6006b        	ld	a,(L1724-1,x)
10806  2374 d74001        	ld	(_MAIN_NUMBER-1,x),a
10807  2377 5a            	decw	x
10808  2378 26f7          	jrne	L015
10809                     ; 1887 		memcpy(AUTH_NUMBER_1,"9134863890",10);
10811  237a ae000a        	ldw	x,#10
10812  237d               L215:
10813  237d d60060        	ld	a,(L3724-1,x)
10814  2380 d7400b        	ld	(_AUTH_NUMBER_1-1,x),a
10815  2383 5a            	decw	x
10816  2384 26f7          	jrne	L215
10817                     ; 1888 		memcpy(AUTH_NUMBER_2,"9237328354",10);
10819  2386 ae000a        	ldw	x,#10
10820  2389               L415:
10821  2389 d60055        	ld	a,(L5724-1,x)
10822  238c d7406a        	ld	(_AUTH_NUMBER_2-1,x),a
10823  238f 5a            	decw	x
10824  2390 26f7          	jrne	L415
10825                     ; 1889 		memcpy(AUTH_NUMBER_3,"11234567890",10);
10827  2392 ae000a        	ldw	x,#10
10828  2395               L615:
10829  2395 d60049        	ld	a,(L7724-1,x)
10830  2398 d74074        	ld	(_AUTH_NUMBER_3-1,x),a
10831  239b 5a            	decw	x
10832  239c 26f7          	jrne	L615
10833                     ; 1890 		HUMAN_SET_EE=1;
10835  239e ae0001        	ldw	x,#1
10836  23a1 89            	pushw	x
10837  23a2 ae401e        	ldw	x,#_HUMAN_SET_EE
10838  23a5 cd0000        	call	c_eewrw
10840  23a8 85            	popw	x
10841  23a9 206b          	jra	L5153
10842  23ab               L1424:
10843                     ; 1894 else if(ind==iDefSet)
10845  23ab b661          	ld	a,_a_ind
10846  23ad a109          	cp	a,#9
10847  23af 263f          	jrne	L3034
10848                     ; 1896 	if(but==butMU_)
10850  23b1 b600          	ld	a,_but
10851  23b3 a179          	cp	a,#121
10852  23b5 265f          	jrne	L5153
10853                     ; 1975 		MODE_EE=1;
10855  23b7 a601          	ld	a,#1
10856  23b9 ae4046        	ldw	x,#_MODE_EE
10857  23bc cd0000        	call	c_eewrc
10859                     ; 1976 		NECC_TEMPER_WATER_EE=50;
10861  23bf a632          	ld	a,#50
10862  23c1 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
10863  23c4 cd0000        	call	c_eewrc
10865                     ; 1977 		NECC_TEMPER_AIR_EE=20;
10867  23c7 a614          	ld	a,#20
10868  23c9 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
10869  23cc cd0000        	call	c_eewrc
10871                     ; 1978 		MAX_POWER_EE=3;
10873  23cf a603          	ld	a,#3
10874  23d1 ae4047        	ldw	x,#_MAX_POWER_EE
10875  23d4 cd0000        	call	c_eewrc
10877                     ; 1980 		tree_down(0,0);
10879  23d7 5f            	clrw	x
10880  23d8 4f            	clr	a
10881  23d9 95            	ld	xh,a
10882  23da cd0000        	call	_tree_down
10884                     ; 1981 		ret_ind(0,0);
10886  23dd 5f            	clrw	x
10887  23de 4f            	clr	a
10888  23df 95            	ld	xh,a
10889  23e0 cd0000        	call	_ret_ind
10891                     ; 1982 		HUMAN_SET_EE=1;
10893  23e3 ae0001        	ldw	x,#1
10894  23e6 89            	pushw	x
10895  23e7 ae401e        	ldw	x,#_HUMAN_SET_EE
10896  23ea cd0000        	call	c_eewrw
10898  23ed 85            	popw	x
10899  23ee 2026          	jra	L5153
10900  23f0               L3034:
10901                     ; 1986 else if(ind==iInterf)
10903  23f0 b661          	ld	a,_a_ind
10904  23f2 a10f          	cp	a,#15
10905  23f4 2620          	jrne	L5153
10906                     ; 1988 	if((but==butU)||(but==butD)||(but==butM)||(but==butON))	
10908  23f6 b600          	ld	a,_but
10909  23f8 a1fb          	cp	a,#251
10910  23fa 2712          	jreq	L5134
10912  23fc b600          	ld	a,_but
10913  23fe a1f7          	cp	a,#247
10914  2400 270c          	jreq	L5134
10916  2402 b600          	ld	a,_but
10917  2404 a1fd          	cp	a,#253
10918  2406 2706          	jreq	L5134
10920  2408 b600          	ld	a,_but
10921  240a a1fe          	cp	a,#254
10922  240c 2608          	jrne	L5153
10923  240e               L5134:
10924                     ; 1990 		beepTestCnt=10;
10926  240e 350a0005      	mov	_beepTestCnt,#10
10927                     ; 1991 		ind_check_cnt=0;
10929  2412 5f            	clrw	x
10930  2413 cf0003        	ldw	_ind_check_cnt,x
10931  2416               L5153:
10932                     ; 1994 }
10933  2416               L025:
10936  2416 5b03          	addw	sp,#3
10937  2418 81            	ret
10960                     ; 1996 void t4_init(void)
10960                     ; 1997 {
10961                     	switch	.text
10962  2419               _t4_init:
10966                     ; 1998 TIM4->PSCR = 6;
10968  2419 35065345      	mov	21317,#6
10969                     ; 1999 TIM4->ARR= 158;
10971  241d 359e5346      	mov	21318,#158
10972                     ; 2000 TIM4->IER|= TIM4_IER_UIE;					// enable break interrupt
10974  2421 72105341      	bset	21313,#0
10975                     ; 2002 TIM4->CR1=(TIM4_CR1_URS | TIM4_CR1_CEN | TIM4_CR1_ARPE);	
10977  2425 35855340      	mov	21312,#133
10978                     ; 2004 }
10981  2429 81            	ret
11024                     ; 2010 @far @interrupt void TIM4_UPD_Interrupt (void) 
11024                     ; 2011 {
11026                     	switch	.text
11027  242a               f_TIM4_UPD_Interrupt:
11031                     ; 2013 GPIOD->ODR|=0b00111100;
11033  242a c6500f        	ld	a,20495
11034  242d aa3c          	or	a,#60
11035  242f c7500f        	ld	20495,a
11036                     ; 2014 ind_cnt++;
11038  2432 3c81          	inc	_ind_cnt
11039                     ; 2015 if(ind_cnt>=10)
11041  2434 b681          	ld	a,_ind_cnt
11042  2436 a10a          	cp	a,#10
11043  2438 2507          	jrult	L3434
11044                     ; 2017 	ind_cnt=0;
11046  243a 3f81          	clr	_ind_cnt
11047                     ; 2018 	but_new=GPIOB->IDR;
11049  243c 5550060000    	mov	_but_new,20486
11050  2441               L3434:
11051                     ; 2020 GPIOB->ODR=ind_outB[ind_cnt];
11053  2441 b681          	ld	a,_ind_cnt
11054  2443 5f            	clrw	x
11055  2444 97            	ld	xl,a
11056  2445 e675          	ld	a,(_ind_outB,x)
11057  2447 c75005        	ld	20485,a
11058                     ; 2021 GPIOC->ODR=ind_outC[ind_cnt];
11060  244a b681          	ld	a,_ind_cnt
11061  244c 5f            	clrw	x
11062  244d 97            	ld	xl,a
11063  244e e60a          	ld	a,(_ind_outC,x)
11064  2450 c7500a        	ld	20490,a
11065                     ; 2022 if(powerStat==psOFF)GPIOC->ODR=0xff;
11067  2453 3d29          	tnz	_powerStat
11068  2455 2604          	jrne	L5434
11071  2457 35ff500a      	mov	20490,#255
11072  245b               L5434:
11073                     ; 2023 GPIOG->ODR|=0x01;
11075  245b 7210501e      	bset	20510,#0
11076                     ; 2024 GPIOG->ODR&=ind_outG[ind_cnt];
11078  245f b681          	ld	a,_ind_cnt
11079  2461 5f            	clrw	x
11080  2462 97            	ld	xl,a
11081  2463 c6501e        	ld	a,20510
11082  2466 e416          	and	a,(_ind_outG,x)
11083  2468 c7501e        	ld	20510,a
11084                     ; 2025 if(ind_cnt==9)GPIOB->DDR=0x00;
11086  246b b681          	ld	a,_ind_cnt
11087  246d a109          	cp	a,#9
11088  246f 2606          	jrne	L7434
11091  2471 725f5007      	clr	20487
11093  2475 2004          	jra	L1534
11094  2477               L7434:
11095                     ; 2026 else GPIOB->DDR=0xff;
11097  2477 35ff5007      	mov	20487,#255
11098  247b               L1534:
11099                     ; 2027 if(powerStat==psOFF)
11101  247b 3d29          	tnz	_powerStat
11102  247d 2618          	jrne	L3534
11103                     ; 2029 	GPIOD->ODR|=0b00111100;
11105  247f c6500f        	ld	a,20495
11106  2482 aa3c          	or	a,#60
11107  2484 c7500f        	ld	20495,a
11108                     ; 2030 	if((ind_cnt==0)||(ind_cnt>3))GPIOD->ODR&=ind_strob[0];
11110  2487 3d81          	tnz	_ind_cnt
11111  2489 2706          	jreq	L7534
11113  248b b681          	ld	a,_ind_cnt
11114  248d a104          	cp	a,#4
11115  248f 2513          	jrult	L1634
11116  2491               L7534:
11119  2491 721b500f      	bres	20495,#5
11120  2495 200d          	jra	L1634
11121  2497               L3534:
11122                     ; 2032 else GPIOD->ODR&=ind_strob[ind_cnt];
11124  2497 b681          	ld	a,_ind_cnt
11125  2499 5f            	clrw	x
11126  249a 97            	ld	xl,a
11127  249b c6500f        	ld	a,20495
11128  249e d40012        	and	a,(_ind_strob,x)
11129  24a1 c7500f        	ld	20495,a
11130  24a4               L1634:
11131                     ; 2034 if(++t0_cnt0>=10)
11133  24a4 3c05          	inc	_t0_cnt0
11134  24a6 b605          	ld	a,_t0_cnt0
11135  24a8 a10a          	cp	a,#10
11136  24aa 255f          	jrult	L3634
11137                     ; 2036   t0_cnt0=0;
11139  24ac 3f05          	clr	_t0_cnt0
11140                     ; 2037   b100Hz=1;
11142  24ae 35010000      	mov	_b100Hz,#1
11143                     ; 2039 	if(++t0_cnt1>=10)
11145  24b2 3c06          	inc	_t0_cnt1
11146  24b4 b606          	ld	a,_t0_cnt1
11147  24b6 a10a          	cp	a,#10
11148  24b8 2506          	jrult	L5634
11149                     ; 2041 		t0_cnt1=0;
11151  24ba 3f06          	clr	_t0_cnt1
11152                     ; 2042 		b10Hz=1;
11154  24bc 35010001      	mov	_b10Hz,#1
11155  24c0               L5634:
11156                     ; 2045 	if(++t0_cnt2>=20)
11158  24c0 3c07          	inc	_t0_cnt2
11159  24c2 b607          	ld	a,_t0_cnt2
11160  24c4 a114          	cp	a,#20
11161  24c6 2511          	jrult	L7634
11162                     ; 2047 		t0_cnt2=0;
11164  24c8 3f07          	clr	_t0_cnt2
11165                     ; 2048 		b5Hz=1;
11167  24ca 35010002      	mov	_b5Hz,#1
11168                     ; 2049 		bFL5=!bFL5;
11170  24ce 3d28          	tnz	_bFL5
11171  24d0 2604          	jrne	L266
11172  24d2 a601          	ld	a,#1
11173  24d4 2001          	jra	L466
11174  24d6               L266:
11175  24d6 4f            	clr	a
11176  24d7               L466:
11177  24d7 b728          	ld	_bFL5,a
11178  24d9               L7634:
11179                     ; 2052 	if(++t0_cnt3>=50)
11181  24d9 3c08          	inc	_t0_cnt3
11182  24db b608          	ld	a,_t0_cnt3
11183  24dd a132          	cp	a,#50
11184  24df 2511          	jrult	L1734
11185                     ; 2054 		t0_cnt3=0;
11187  24e1 3f08          	clr	_t0_cnt3
11188                     ; 2055 		b2Hz=1;
11190  24e3 35010003      	mov	_b2Hz,#1
11191                     ; 2056 		bFL2=!bFL2;
11193  24e7 3d27          	tnz	_bFL2
11194  24e9 2604          	jrne	L666
11195  24eb a601          	ld	a,#1
11196  24ed 2001          	jra	L076
11197  24ef               L666:
11198  24ef 4f            	clr	a
11199  24f0               L076:
11200  24f0 b727          	ld	_bFL2,a
11201  24f2               L1734:
11202                     ; 2058 	if(++t0_cnt4>=100)
11204  24f2 3c09          	inc	_t0_cnt4
11205  24f4 b609          	ld	a,_t0_cnt4
11206  24f6 a164          	cp	a,#100
11207  24f8 2511          	jrult	L3634
11208                     ; 2060 		t0_cnt4=0;
11210  24fa 3f09          	clr	_t0_cnt4
11211                     ; 2061 		b1Hz=1;
11213  24fc 35010004      	mov	_b1Hz,#1
11214                     ; 2062 		bFL1=!bFL1;
11216  2500 3d26          	tnz	_bFL1
11217  2502 2604          	jrne	L276
11218  2504 a601          	ld	a,#1
11219  2506 2001          	jra	L476
11220  2508               L276:
11221  2508 4f            	clr	a
11222  2509               L476:
11223  2509 b726          	ld	_bFL1,a
11224  250b               L3634:
11225                     ; 2065 TIM4->SR1&=~TIM4_SR1_UIF;			// disable break interrupt
11227  250b 72115342      	bres	21314,#0
11228                     ; 2066 return;
11231  250f 80            	iret
11297                     ; 2073 main()
11297                     ; 2074 {
11299                     	switch	.text
11300  2510               _main:
11304                     ; 2075 CLK->ECKR|=1;
11306  2510 721050c1      	bset	20673,#0
11308  2514               L7044:
11309                     ; 2076 while((CLK->ECKR & 2) == 0);
11311  2514 c650c1        	ld	a,20673
11312  2517 a502          	bcp	a,#2
11313  2519 27f9          	jreq	L7044
11314                     ; 2077 CLK->SWCR|=2;
11316  251b 721250c5      	bset	20677,#1
11317                     ; 2078 CLK->SWR=0xB4;	
11319  251f 35b450c4      	mov	20676,#180
11320                     ; 2080 CLK->CKDIVR=0;
11322  2523 725f50c6      	clr	20678
11323                     ; 2082 FLASH_DUKR=0xae;
11325  2527 35ae5064      	mov	_FLASH_DUKR,#174
11326                     ; 2083 FLASH_DUKR=0x56;
11328  252b 35565064      	mov	_FLASH_DUKR,#86
11329                     ; 2086 GPIOD->DDR|=0b00111100;		//PD2-PD5 выходы открытый коллектор
11331  252f c65011        	ld	a,20497
11332  2532 aa3c          	or	a,#60
11333  2534 c75011        	ld	20497,a
11334                     ; 2087 GPIOD->CR1&=0b11000011;		//....
11336  2537 c65012        	ld	a,20498
11337  253a a4c3          	and	a,#195
11338  253c c75012        	ld	20498,a
11339                     ; 2088 GPIOD->CR2&=0b11000011;		//....
11341  253f c65013        	ld	a,20499
11342  2542 a4c3          	and	a,#195
11343  2544 c75013        	ld	20499,a
11344                     ; 2089 GPIOB->DDR|=0b11111111;		//PORTB все выходы ““Ћ
11346  2547 c65007        	ld	a,20487
11347  254a aaff          	or	a,#255
11348  254c c75007        	ld	20487,a
11349                     ; 2090 GPIOB->CR1|=0b11111111;		//....
11351  254f c65008        	ld	a,20488
11352  2552 aaff          	or	a,#255
11353  2554 c75008        	ld	20488,a
11354                     ; 2091 GPIOB->CR2&=0b00000000;		//....
11356  2557 725f5009      	clr	20489
11357                     ; 2092 GPIOC->DDR|=0b11111111;		//PORTC все выходы открытый коллектор
11359  255b c6500c        	ld	a,20492
11360  255e aaff          	or	a,#255
11361  2560 c7500c        	ld	20492,a
11362                     ; 2093 GPIOC->CR1&=0b00000000;		//....
11364  2563 725f500d      	clr	20493
11365                     ; 2094 GPIOC->CR2&=0b00000000;		//....
11367  2567 725f500e      	clr	20494
11368                     ; 2095 GPIOG->DDR|=0b00000001;		//PG0 выход открытый коллектор
11370  256b 72105020      	bset	20512,#0
11371                     ; 2096 GPIOG->CR1&=0b11111110;		//....
11373  256f 72115021      	bres	20513,#0
11374                     ; 2097 GPIOG->CR2&=0b11111110;		//....
11376  2573 72115022      	bres	20514,#0
11377                     ; 2098 t4_init();
11379  2577 cd2419        	call	_t4_init
11381                     ; 2099 uart3_init();
11383  257a cd0000        	call	_uart3_init
11385                     ; 2100 uart1_init();
11387  257d cd0000        	call	_uart1_init
11389                     ; 2101 modem_gpio_init();
11391  2580 cd0000        	call	_modem_gpio_init
11393                     ; 2103 enableInterrupts();
11396  2583 9a            rim
11398                     ; 2105 clear_ind();
11401  2584 cd0000        	call	_clear_ind
11403                     ; 2106 ind=iMn;//iModem_deb;
11405  2587 3f61          	clr	_a_ind
11406                     ; 2112 bERR=0;
11408  2589 3f08          	clr	_bERR
11409                     ; 2113 bWARN=0;
11411  258b 3f07          	clr	_bWARN
11412                     ; 2115 modemDrvInitStepCnt=1;
11414  258d ae0001        	ldw	x,#1
11415  2590 bf00          	ldw	_modemDrvInitStepCnt,x
11416                     ; 2120 watchdog_enable();
11418  2592 cd0000        	call	_watchdog_enable
11420                     ; 2122 if(power_in_test()==0)
11422  2595 cd0169        	call	_power_in_test
11424  2598 a30000        	cpw	x,#0
11425  259b 2609          	jrne	L3144
11426                     ; 2124 	GPIOD->ODR|=0b00111100;
11428  259d c6500f        	ld	a,20495
11429  25a0 aa3c          	or	a,#60
11430  25a2 c7500f        	ld	20495,a
11431                     ; 2125 	halt();
11434  25a5 8e            halt
11437  25a6               L3144:
11438                     ; 2128 isp_main_cnt=0;
11440  25a6 ae0000        	ldw	x,#0
11441  25a9 bf02          	ldw	c_lreg+2,x
11442  25ab ae0000        	ldw	x,#0
11443  25ae bf00          	ldw	c_lreg,x
11444  25b0 ae4020        	ldw	x,#_isp_main_cnt
11445  25b3 cd0000        	call	c_eewrl
11447  25b6               L5144:
11448                     ; 2132 	uart1_in_an();
11450  25b6 cd0000        	call	_uart1_in_an
11452                     ; 2133 	if(b100Hz)
11454  25b9 3d00          	tnz	_b100Hz
11455  25bb 270b          	jreq	L1244
11456                     ; 2135 		b100Hz=0;
11458  25bd 3f00          	clr	_b100Hz
11459                     ; 2137 		but_drv();
11461  25bf cd0000        	call	_but_drv
11463                     ; 2138 		but_an();
11465  25c2 cd1767        	call	_but_an
11467                     ; 2140 		modem_stat_drv();
11469  25c5 cd0000        	call	_modem_stat_drv
11471  25c8               L1244:
11472                     ; 2143 	if(b10Hz)
11474  25c8 3d01          	tnz	_b10Hz
11475  25ca 271e          	jreq	L3244
11476                     ; 2145 		b10Hz=0;
11478  25cc 3f01          	clr	_b10Hz
11479                     ; 2147 		if(bWATCHDOG_REFRESH)watchdog_reset();
11481  25ce 3d2a          	tnz	_bWATCHDOG_REFRESH
11482  25d0 2703          	jreq	L5244
11485  25d2 cd0000        	call	_watchdog_reset
11487  25d5               L5244:
11488                     ; 2148 		ind_hndl();
11490  25d5 cd0683        	call	_ind_hndl
11492                     ; 2149 		uart3_in_an();
11494  25d8 cd0000        	call	_uart3_in_an
11496                     ; 2150 		out_drv();
11498  25db cd0000        	call	_out_drv
11500                     ; 2151 		matemath();
11502  25de cd0626        	call	_matemath
11504                     ; 2152 		modem_drv();
11506  25e1 cd0000        	call	_modem_drv
11508                     ; 2153 		sms_fifo_drv();
11510  25e4 cd0000        	call	_sms_fifo_drv
11512                     ; 2154 		power_in_drv();
11514  25e7 cd0000        	call	_power_in_drv
11516  25ea               L3244:
11517                     ; 2156 	if(b5Hz)
11519  25ea 3d02          	tnz	_b5Hz
11520  25ec 270c          	jreq	L7244
11521                     ; 2158 		b5Hz=0;
11523  25ee 3f02          	clr	_b5Hz
11524                     ; 2160 		if(version_show_cnt)version_show_cnt--;
11526  25f0 725d000c      	tnz	_version_show_cnt
11527  25f4 2704          	jreq	L7244
11530  25f6 725a000c      	dec	_version_show_cnt
11531  25fa               L7244:
11532                     ; 2162 	if(b2Hz)
11534  25fa 3d03          	tnz	_b2Hz
11535  25fc 2705          	jreq	L3344
11536                     ; 2164 		b2Hz=0;
11538  25fe 3f03          	clr	_b2Hz
11539                     ; 2166 		time_drv();
11541  2600 cd0430        	call	_time_drv
11543  2603               L3344:
11544                     ; 2168 	if(b1Hz)
11546  2603 3d04          	tnz	_b1Hz
11547  2605 27af          	jreq	L5144
11548                     ; 2170 		b1Hz=0;
11550  2607 3f04          	clr	_b1Hz
11551                     ; 2172 		isp_hndl();
11553  2609 cd04c4        	call	_isp_hndl
11555                     ; 2175 		if(mainCnt<1000)
11557  260c 9c            	rvf
11558  260d be82          	ldw	x,_mainCnt
11559  260f a303e8        	cpw	x,#1000
11560  2612 2e07          	jrsge	L7344
11561                     ; 2177 			mainCnt++;
11563  2614 be82          	ldw	x,_mainCnt
11564  2616 1c0001        	addw	x,#1
11565  2619 bf82          	ldw	_mainCnt,x
11566  261b               L7344:
11567                     ; 2181 		ds18b20_temper_drv();
11569  261b cd0000        	call	_ds18b20_temper_drv
11571                     ; 2182 		ret_ind_hndl();
11573  261e cd0000        	call	_ret_ind_hndl
11575                     ; 2183 		random_gen();
11577  2621 cd0000        	call	_random_gen
11579                     ; 2186 		sheduler_hndl();
11581  2624 cd04c3        	call	_sheduler_hndl
11583                     ; 2187 		error_warn_hndl();
11585  2627 cd01ac        	call	_error_warn_hndl
11587                     ; 2188 		airSensorLineErrorDrv();
11589  262a cd020e        	call	_airSensorLineErrorDrv
11591                     ; 2189 		waterTemperAlarmHndl();
11593  262d cd02ae        	call	_waterTemperAlarmHndl
11595  2630 2084          	jra	L5144
12872                     	xdef	_main
12873                     	xdef	f_TIM4_UPD_Interrupt
12874                     	xdef	_matemath
12875                     	xdef	_power_necc_hndl
12876                     	xdef	_power_hndl
12877                     	xdef	_isp_hndl
12878                     	xdef	_sheduler_hndl
12879                     	xdef	_time_drv
12880                     	xdef	_beep_drv
12881                     	xdef	_waterTemperAlarmHndl
12882                     	xdef	_airSensorLineErrorDrv
12883                     	xdef	_error_warn_hndl
12884                     	xdef	_power_in_test
12885                     	xdef	_power_in_drv
12886                     	switch	.bss
12887  0000               _isp_cnt:
12888  0000 00            	ds.b	1
12889                     	xdef	_isp_cnt
12890                     	xdef	_version_show_cnt
12891                     	switch	.ubsct
12892  0000               _bDEB:
12893  0000 00            	ds.b	1
12894                     	xdef	_bDEB
12895                     	xdef	_bWATCHDOG_REFRESH
12896  0001               _tempUC:
12897  0001 00            	ds.b	1
12898                     	xdef	_tempUC
12899                     	xdef	_TABLE_TIME_EE_MAX
12900                     	xdef	_TABLE_TIME_EE_MIN
12901  0002               _day_sheduler_time:
12902  0002 00            	ds.b	1
12903                     	xdef	_day_sheduler_time
12904  0003               _time_date:
12905  0003 00            	ds.b	1
12906                     	xdef	_time_date
12907  0004               _temperRegToSheduler:
12908  0004 00            	ds.b	1
12909                     	xdef	_temperRegToSheduler
12910                     	xdef	_b1Hz
12911                     	xdef	_b2Hz
12912                     	xdef	_b5Hz
12913                     	xdef	_b10Hz
12914                     	xdef	_b100Hz
12915                     	xref	_watchdog_reset
12916                     	xref	_watchdog_enable
12917                     	xref	_strcpy
12918                     	xref	_sms_fifo_drv
12919                     	xref	_modem_send_sms
12920                     	xref	_modem_drv
12921                     	xref	_modem_stat_drv
12922                     	xref	_modem_gpio_init
12923                     	xref	_tempRussianText
12924                     	xref.b	_modemDrvWatchDogCnt
12925                     	xref.b	_modemDrvPowerDownStepCnt
12926                     	xref.b	_modemDrvPDUSMSSendStepCnt
12927                     	xref.b	_modemDrvInitStepCnt
12928                     	xref.b	_modemState
12929                     	xref	__ds1307_read_time
12930                     	xref	__ds1307_write_byte
12931                     	xref	_uart1_in_an
12932                     	xref	_uart1_init
12933                     	xref	_modem_plazma1
12934                     	xref	_modem_plazma
12935                     	xref	_tx_counter1
12936                     	xref	_tx_wr_index1
12937                     	xref	_uart3_in_an
12938                     	xref	_uart3_init
12939                     	xref	_ds18b20_temper_drv
12940                     	xref	_waterSensorErrorStat
12941                     	xref	_wire1_in
12942                     	xref	_random_gen
12943                     	xref	_led_flash
12944                     	xref	_led_on
12945                     	xref	_led_off
12946                     	xref	_led_mask_off
12947                     	xref	_led_set
12948                     	xref	_ret_ind_hndl
12949                     	xref	_ret_ind
12950                     	xref	_int2indII_slkuf
12951                     	xref	_int2indI_slkuf
12952                     	xref	_gran_ring_char
12953                     	xref	_gran_char
12954                     	xref	_tree_up
12955                     	xref	_tree_down
12956                     	xref	_clear_ind
12957                     	xref	_but_drv
12958                     	xref	_out_drv
12959                     	xref.b	_speed
12960                     	xref.b	_n_but
12961                     	xref.b	_but
12962                     	xref.b	_but_new
12963                     	xdef	_t4_init
12964                     	xdef	_ind_hndl
12965                     	xdef	_but_an
12966                     	switch	.bss
12967  0001               _ind_check_cnt1:
12968  0001 0000          	ds.b	2
12969                     	xdef	_ind_check_cnt1
12970  0003               _ind_check_cnt:
12971  0003 0000          	ds.b	2
12972                     	xdef	_ind_check_cnt
12973  0005               _beepTestCnt:
12974  0005 00            	ds.b	1
12975                     	xdef	_beepTestCnt
12976  0006               _bCBC_SELF:
12977  0006 00            	ds.b	1
12978                     	xdef	_bCBC_SELF
12979  0007               _cbcVoltage:
12980  0007 0000          	ds.b	2
12981                     	xdef	_cbcVoltage
12982  0009               _cbc_temp1:
12983  0009 000000000000  	ds.b	15
12984                     	xdef	_cbc_temp1
12985  0018               _cbc_temp:
12986  0018 000000000000  	ds.b	15
12987                     	xdef	_cbc_temp
12988  0027               _cbcSystemRequ:
12989  0027 00            	ds.b	1
12990                     	xdef	_cbcSystemRequ
12991  0028               _main_power_off_hndl_cnt:
12992  0028 0000          	ds.b	2
12993                     	xdef	_main_power_off_hndl_cnt
12994                     	xdef	_powerStat
12995                     	xdef	_power_in_drv_alarm_cnt
12996                     	xdef	_power_in_drv_off_cnt
12997                     	xdef	_rand_dig_str
12998  002a               _rand_dig:
12999  002a 000000000000  	ds.b	7
13000                     	xdef	_rand_dig
13001  0031               _waterTemperAlarmCnt:
13002  0031 00            	ds.b	1
13003                     	xdef	_waterTemperAlarmCnt
13004                     	xdef	_waterTemperAlarmOld
13005                     	xdef	_waterTemperAlarm
13006                     	switch	.ubsct
13007  0005               _cntAirSensorLineErrorHi:
13008  0005 00            	ds.b	1
13009                     	xdef	_cntAirSensorLineErrorHi
13010  0006               _cntAirSensorLineErrorLo:
13011  0006 00            	ds.b	1
13012                     	xdef	_cntAirSensorLineErrorLo
13013  0007               _bWARN:
13014  0007 00            	ds.b	1
13015                     	xdef	_bWARN
13016  0008               _bERR:
13017  0008 00            	ds.b	1
13018                     	xdef	_bERR
13019  0009               _beep_drv_cnt:
13020  0009 00            	ds.b	1
13021                     	xdef	_beep_drv_cnt
13022  000a               _powerEnabled:
13023  000a 00            	ds.b	1
13024                     	xdef	_powerEnabled
13025  000b               _powerNeccDelta:
13026  000b 00            	ds.b	1
13027                     	xdef	_powerNeccDelta
13028                     	xdef	_powerNeccOld
13029                     	xdef	_powerNecc
13030  000c               _time_year:
13031  000c 00            	ds.b	1
13032                     	xdef	_time_year
13033  000d               _time_month:
13034  000d 00            	ds.b	1
13035                     	xdef	_time_month
13036  000e               _time_day_of_week:
13037  000e 00            	ds.b	1
13038                     	xdef	_time_day_of_week
13039  000f               _time_hour:
13040  000f 00            	ds.b	1
13041                     	xdef	_time_hour
13042  0010               _time_min:
13043  0010 00            	ds.b	1
13044                     	xdef	_time_min
13045  0011               _time_sec:
13046  0011 00            	ds.b	1
13047                     	xdef	_time_sec
13048  0012               _buff_for_time:
13049  0012 000000000000  	ds.b	10
13050                     	xdef	_buff_for_time
13051                     	xdef	_airSensorErrorStatOld
13052                     	xdef	_airSensorErrorStat
13053  001c               _targetTemper:
13054  001c 00            	ds.b	1
13055                     	xdef	_targetTemper
13056  001d               _aktualTemper:
13057  001d 00            	ds.b	1
13058                     	xdef	_aktualTemper
13059  001e               _temperOfAir:
13060  001e 00            	ds.b	1
13061                     	xdef	_temperOfAir
13062  001f               _temperOfWater:
13063  001f 00            	ds.b	1
13064                     	xdef	_temperOfWater
13065                     	switch	.bss
13066  0032               _optr_kontr_cnt:
13067  0032 00            	ds.b	1
13068                     	xdef	_optr_kontr_cnt
13069  0033               _optr_stat:
13070  0033 00            	ds.b	1
13071                     	xdef	_optr_stat
13072                     	switch	.ubsct
13073  0020               _out_stat:
13074  0020 000000        	ds.b	3
13075                     	xdef	_out_stat
13076  0023               _led_ind_out2:
13077  0023 00            	ds.b	1
13078                     	xdef	_led_ind_out2
13079  0024               _led_ind_out1:
13080  0024 00            	ds.b	1
13081                     	xdef	_led_ind_out1
13082  0025               _bFL_:
13083  0025 00            	ds.b	1
13084                     	xdef	_bFL_
13085  0026               _bFL1:
13086  0026 00            	ds.b	1
13087                     	xdef	_bFL1
13088  0027               _bFL2:
13089  0027 00            	ds.b	1
13090                     	xdef	_bFL2
13091  0028               _bFL5:
13092  0028 00            	ds.b	1
13093                     	xdef	_bFL5
13094  0029               _zero_on:
13095  0029 00            	ds.b	1
13096                     	xdef	_zero_on
13097                     	xdef	_ind_pointer
13098  002a               _c_ind:
13099  002a 0000000000    	ds.b	5
13100                     	xdef	_c_ind
13101  002f               _b_ind:
13102  002f 000000000000  	ds.b	50
13103                     	xdef	_b_ind
13104  0061               _a_ind:
13105  0061 0000000000    	ds.b	5
13106                     	xdef	_a_ind
13107                     	xdef	_DIGISYM
13108  0066               _ind_out_:
13109  0066 0000000000    	ds.b	5
13110                     	xdef	_ind_out_
13111  006b               _dig:
13112  006b 000000000000  	ds.b	10
13113                     	xdef	_dig
13114                     	xdef	_ind_strob
13115                     	xdef	_ind_outG
13116                     	xdef	_ind_outC
13117  0075               _ind_outB:
13118  0075 000000000000  	ds.b	12
13119                     	xdef	_ind_outB
13120  0081               _ind_cnt:
13121  0081 00            	ds.b	1
13122                     	xdef	_ind_cnt
13123  0082               _mainCnt:
13124  0082 0000          	ds.b	2
13125                     	xdef	_mainCnt
13126                     	xdef	_t0_cnt4
13127                     	xdef	_t0_cnt3
13128                     	xdef	_t0_cnt2
13129                     	xdef	_t0_cnt1
13130                     	xdef	_t0_cnt0
13131  0084               _fiksRandom:
13132  0084 00            	ds.b	1
13133                     	xdef	_fiksRandom
13134  0085               _currRandom:
13135  0085 00            	ds.b	1
13136                     	xdef	_currRandom
13137                     	xdef	_warmOrder
13138                     	switch	.const
13139  004a               L7724:
13140  004a 313132333435  	dc.b	"11234567890",0
13141  0056               L5724:
13142  0056 393233373332  	dc.b	"9237328354",0
13143  0061               L3724:
13144  0061 393133343836  	dc.b	"9134863890",0
13145  006c               L1724:
13146  006c 393133393239  	dc.b	"9139294352",0
13147  0077               L1522:
13148  0077 d2e5ecefe5f0  	dc.b	210,229,236,239,229,240
13149  007d e0f2f3f0e020  	dc.b	224,242,243,240,224,32
13150  0083 e2eee4fb20e2  	dc.b	226,238,228,251,32,226
13151  0089 20f1          	dc.b	" ",241
13152  008b e8f1f2e5ece5  	dc.b	232,241,242,229,236,229
13153  0091 20e2          	dc.b	" ",226
13154  0093 fbf8e5203930  	dc.b	251,248,229,32,57,48
13155  0099 20e3          	dc.b	" ",227
13156  009b f02ed62e00    	dc.b	240,46,214,46,0
13157  00a0               L3422:
13158  00a0 d2e5ecefe5f0  	dc.b	210,229,236,239,229,240
13159  00a6 e0f2f3f0e020  	dc.b	224,242,243,240,224,32
13160  00ac e2eee4fb20e2  	dc.b	226,238,228,251,32,226
13161  00b2 20f1          	dc.b	" ",241
13162  00b4 e8f1f2e5ece5  	dc.b	232,241,242,229,236,229
13163  00ba 20ed          	dc.b	" ",237
13164  00bc e8e6e5203320  	dc.b	232,230,229,32,51,32
13165  00c2 e3f02ed62e00  	dc.b	227,240,46,214,46,0
13166  00c8               L5612:
13167  00c8 cde5e8f1eff0  	dc.b	205,229,232,241,239,240
13168  00ce e0e2edeef1f2  	dc.b	224,226,237,238,241,242
13169  00d4 fc20e4e0f2f7  	dc.b	252,32,228,224,242,247
13170  00da e8eae020f2e5  	dc.b	232,234,224,32,242,229
13171  00e0 ecefe5f0e0f2  	dc.b	236,239,229,240,224,242
13172  00e6 f3f0fb20e2ee  	dc.b	243,240,251,32,226,238
13173  00ec e7e4f3f5e000  	dc.b	231,228,243,245,224,0
13174  00f2               L7302:
13175  00f2 ddebe5eaf2f0  	dc.b	221,235,229,234,242,240
13176  00f8 e8f7e5f1f2e2  	dc.b	232,247,229,241,242,226
13177  00fe ee20e2eaebfe  	dc.b	238,32,226,234,235,254
13178  0104 f7e5edee00    	dc.b	247,229,237,238,0
13179  0109               L3102:
13180  0109 ddebe5eaf2f0  	dc.b	221,235,229,234,242,240
13181  010f e8f7e5f1f2e2  	dc.b	232,247,229,241,242,226
13182  0115 ee20eef2eaeb  	dc.b	238,32,238,242,234,235
13183  011b fef7e5edee00  	dc.b	254,247,229,237,238,0
13184                     	xref.b	c_lreg
13185                     	xref.b	c_x
13186                     	xref.b	c_y
13206                     	xref	c_idiv
13207                     	xref	c_eewrw
13208                     	xref	c_smodx
13209                     	xref	c_smody
13210                     	xref	c_imul
13211                     	xref	c_sdivx
13212                     	xref	c_ldiv
13213                     	xref	c_lmod
13214                     	xref	c_eewrl
13215                     	xref	c_ladc
13216                     	xref	c_ltor
13217                     	xref	c_eewrc
13218                     	end
