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
3014                     ; 185 void power_in_drv(void)
3014                     ; 186 {
3016                     	switch	.text
3017  0000               _power_in_drv:
3021                     ; 188 GPIOA->DDR&=~(1<<6);		
3023  0000 721d5002      	bres	20482,#6
3024                     ; 189 GPIOA->CR1&=~(1<<6);		
3026  0004 721d5003      	bres	20483,#6
3027                     ; 190 GPIOA->CR2&=~(1<<6);
3029  0008 721d5004      	bres	20484,#6
3030                     ; 191 GPIOA->ODR&=~(1<<6);
3032  000c 721d5000      	bres	20480,#6
3033                     ; 193 if(!((GPIOA->IDR)&(1<<6)))
3035  0010 c65001        	ld	a,20481
3036  0013 a540          	bcp	a,#64
3037  0015 2703          	jreq	L6
3038  0017 cc00cd        	jp	L1002
3039  001a               L6:
3040                     ; 195 	if(power_in_drv_off_cnt<10)
3042  001a 9c            	rvf
3043  001b ce0008        	ldw	x,_power_in_drv_off_cnt
3044  001e a3000a        	cpw	x,#10
3045  0021 2e0b          	jrsge	L3002
3046                     ; 197 		power_in_drv_off_cnt++;	
3048  0023 ce0008        	ldw	x,_power_in_drv_off_cnt
3049  0026 1c0001        	addw	x,#1
3050  0029 cf0008        	ldw	_power_in_drv_off_cnt,x
3052  002c 2002          	jra	L5002
3053  002e               L3002:
3054                     ; 201 		powerStat=psOFF;
3056  002e 3f29          	clr	_powerStat
3057  0030               L5002:
3058                     ; 204 	if(power_in_drv_alarm_cnt<60)
3060  0030 9c            	rvf
3061  0031 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3062  0034 a3003c        	cpw	x,#60
3063  0037 2f03          	jrslt	L01
3064  0039 cc0168        	jp	L5202
3065  003c               L01:
3066                     ; 206 		power_in_drv_alarm_cnt++;	
3068  003c ce000a        	ldw	x,_power_in_drv_alarm_cnt
3069  003f 1c0001        	addw	x,#1
3070  0042 cf000a        	ldw	_power_in_drv_alarm_cnt,x
3071                     ; 207 		if((power_in_drv_alarm_cnt>=60)&&(powerAlarm!=paALARM))
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
3085                     ; 209 			powerAlarm=paALARM;
3087  005b a601          	ld	a,#1
3088  005d ae401c        	ldw	x,#_powerAlarm
3089  0060 cd0000        	call	c_eewrc
3091                     ; 211 			strcpy(tempRussianText,"Ёлектричество отключено"); 
3093  0063 ae0114        	ldw	x,#L3102
3094  0066 89            	pushw	x
3095  0067 ae0000        	ldw	x,#_tempRussianText
3096  006a cd0000        	call	_strcpy
3098  006d 85            	popw	x
3099                     ; 213 			if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3101  006e c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3102  0071 a501          	bcp	a,#1
3103  0073 270f          	jreq	L5102
3104                     ; 215 				modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3106  0075 ae0000        	ldw	x,#_tempRussianText
3107  0078 89            	pushw	x
3108  0079 ae4002        	ldw	x,#_MAIN_NUMBER
3109  007c 89            	pushw	x
3110  007d a670          	ld	a,#112
3111  007f cd0000        	call	_modem_send_sms
3113  0082 5b04          	addw	sp,#4
3114  0084               L5102:
3115                     ; 217 			if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3117  0084 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3118  0087 a502          	bcp	a,#2
3119  0089 270f          	jreq	L7102
3120                     ; 219 				modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3122  008b ae0000        	ldw	x,#_tempRussianText
3123  008e 89            	pushw	x
3124  008f ae400c        	ldw	x,#_AUTH_NUMBER_1
3125  0092 89            	pushw	x
3126  0093 a670          	ld	a,#112
3127  0095 cd0000        	call	_modem_send_sms
3129  0098 5b04          	addw	sp,#4
3130  009a               L7102:
3131                     ; 221 			if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3133  009a c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3134  009d a504          	bcp	a,#4
3135  009f 270f          	jreq	L1202
3136                     ; 223 				modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3138  00a1 ae0000        	ldw	x,#_tempRussianText
3139  00a4 89            	pushw	x
3140  00a5 ae406b        	ldw	x,#_AUTH_NUMBER_2
3141  00a8 89            	pushw	x
3142  00a9 a670          	ld	a,#112
3143  00ab cd0000        	call	_modem_send_sms
3145  00ae 5b04          	addw	sp,#4
3146  00b0               L1202:
3147                     ; 225 			if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3149  00b0 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3150  00b3 a508          	bcp	a,#8
3151  00b5 2603          	jrne	L61
3152  00b7 cc0168        	jp	L5202
3153  00ba               L61:
3154                     ; 227 				modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3156  00ba ae0000        	ldw	x,#_tempRussianText
3157  00bd 89            	pushw	x
3158  00be ae4075        	ldw	x,#_AUTH_NUMBER_3
3159  00c1 89            	pushw	x
3160  00c2 a670          	ld	a,#112
3161  00c4 cd0000        	call	_modem_send_sms
3163  00c7 5b04          	addw	sp,#4
3164  00c9 ac680168      	jpf	L5202
3165  00cd               L1002:
3166                     ; 235 	if(power_in_drv_off_cnt)
3168  00cd ce0008        	ldw	x,_power_in_drv_off_cnt
3169  00d0 270f          	jreq	L7202
3170                     ; 237 		power_in_drv_off_cnt--;
3172  00d2 ce0008        	ldw	x,_power_in_drv_off_cnt
3173  00d5 1d0001        	subw	x,#1
3174  00d8 cf0008        	ldw	_power_in_drv_off_cnt,x
3175                     ; 238 		version_show_cnt=10;			
3177  00db 350a000c      	mov	_version_show_cnt,#10
3179  00df 2004          	jra	L1302
3180  00e1               L7202:
3181                     ; 242 		powerStat=psON;
3183  00e1 35010029      	mov	_powerStat,#1
3184  00e5               L1302:
3185                     ; 245 	if(power_in_drv_alarm_cnt)
3187  00e5 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3188  00e8 277e          	jreq	L5202
3189                     ; 247 		power_in_drv_alarm_cnt--;	
3191  00ea ce000a        	ldw	x,_power_in_drv_alarm_cnt
3192  00ed 1d0001        	subw	x,#1
3193  00f0 cf000a        	ldw	_power_in_drv_alarm_cnt,x
3194                     ; 248 		if((power_in_drv_alarm_cnt==0)&&(powerAlarm!=paNORM))
3196  00f3 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3197  00f6 2670          	jrne	L5202
3199  00f8 725d401c      	tnz	_powerAlarm
3200  00fc 276a          	jreq	L5202
3201                     ; 250 			powerAlarm=paNORM;
3203  00fe 4f            	clr	a
3204  00ff ae401c        	ldw	x,#_powerAlarm
3205  0102 cd0000        	call	c_eewrc
3207                     ; 252 			strcpy(tempRussianText,"Ёлектричество включено"); 
3209  0105 ae00fd        	ldw	x,#L7302
3210  0108 89            	pushw	x
3211  0109 ae0000        	ldw	x,#_tempRussianText
3212  010c cd0000        	call	_strcpy
3214  010f 85            	popw	x
3215                     ; 254 			if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3217  0110 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3218  0113 a501          	bcp	a,#1
3219  0115 270f          	jreq	L1402
3220                     ; 256 				modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3222  0117 ae0000        	ldw	x,#_tempRussianText
3223  011a 89            	pushw	x
3224  011b ae4002        	ldw	x,#_MAIN_NUMBER
3225  011e 89            	pushw	x
3226  011f a670          	ld	a,#112
3227  0121 cd0000        	call	_modem_send_sms
3229  0124 5b04          	addw	sp,#4
3230  0126               L1402:
3231                     ; 258 			if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3233  0126 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3234  0129 a502          	bcp	a,#2
3235  012b 270f          	jreq	L3402
3236                     ; 260 				modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3238  012d ae0000        	ldw	x,#_tempRussianText
3239  0130 89            	pushw	x
3240  0131 ae400c        	ldw	x,#_AUTH_NUMBER_1
3241  0134 89            	pushw	x
3242  0135 a670          	ld	a,#112
3243  0137 cd0000        	call	_modem_send_sms
3245  013a 5b04          	addw	sp,#4
3246  013c               L3402:
3247                     ; 262 			if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3249  013c c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3250  013f a504          	bcp	a,#4
3251  0141 270f          	jreq	L5402
3252                     ; 264 				modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3254  0143 ae0000        	ldw	x,#_tempRussianText
3255  0146 89            	pushw	x
3256  0147 ae406b        	ldw	x,#_AUTH_NUMBER_2
3257  014a 89            	pushw	x
3258  014b a670          	ld	a,#112
3259  014d cd0000        	call	_modem_send_sms
3261  0150 5b04          	addw	sp,#4
3262  0152               L5402:
3263                     ; 266 			if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3265  0152 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3266  0155 a508          	bcp	a,#8
3267  0157 270f          	jreq	L5202
3268                     ; 268 				modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3270  0159 ae0000        	ldw	x,#_tempRussianText
3271  015c 89            	pushw	x
3272  015d ae4075        	ldw	x,#_AUTH_NUMBER_3
3273  0160 89            	pushw	x
3274  0161 a670          	ld	a,#112
3275  0163 cd0000        	call	_modem_send_sms
3277  0166 5b04          	addw	sp,#4
3278  0168               L5202:
3279                     ; 274 }
3282  0168 81            	ret
3306                     ; 278 short power_in_test(void)
3306                     ; 279 {
3307                     	switch	.text
3308  0169               _power_in_test:
3312                     ; 281 GPIOA->DDR&=~(1<<6);		
3314  0169 721d5002      	bres	20482,#6
3315                     ; 282 GPIOA->CR1&=~(1<<6);		
3317  016d 721d5003      	bres	20483,#6
3318                     ; 283 GPIOA->CR2&=~(1<<6);
3320  0171 721d5004      	bres	20484,#6
3321                     ; 284 GPIOA->ODR&=~(1<<6);
3323  0175 721d5000      	bres	20480,#6
3324                     ; 286 power_in_drv_off_cnt=500;
3326  0179 ae01f4        	ldw	x,#500
3327  017c cf0008        	ldw	_power_in_drv_off_cnt,x
3328  017f               L1602:
3329                     ; 290 	if(!((GPIOA->IDR)&(1<<6)))
3331  017f c65001        	ld	a,20481
3332  0182 a540          	bcp	a,#64
3333  0184 2614          	jrne	L5602
3334                     ; 292 		power_in_drv_off_cnt++;	
3336  0186 ce0008        	ldw	x,_power_in_drv_off_cnt
3337  0189 1c0001        	addw	x,#1
3338  018c cf0008        	ldw	_power_in_drv_off_cnt,x
3339                     ; 293 		if(power_in_drv_off_cnt>1000) return 0;
3341  018f 9c            	rvf
3342  0190 ce0008        	ldw	x,_power_in_drv_off_cnt
3343  0193 a303e9        	cpw	x,#1001
3344  0196 2fe7          	jrslt	L1602
3347  0198 5f            	clrw	x
3350  0199 81            	ret
3351  019a               L5602:
3352                     ; 297 		power_in_drv_off_cnt--;	
3354  019a ce0008        	ldw	x,_power_in_drv_off_cnt
3355  019d 1d0001        	subw	x,#1
3356  01a0 cf0008        	ldw	_power_in_drv_off_cnt,x
3357                     ; 298 		if(power_in_drv_off_cnt==0) return 1;		
3359  01a3 ce0008        	ldw	x,_power_in_drv_off_cnt
3360  01a6 26d7          	jrne	L1602
3363  01a8 ae0001        	ldw	x,#1
3366  01ab 81            	ret
3396                     ; 303 void error_warn_hndl(void)
3396                     ; 304 {
3397                     	switch	.text
3398  01ac               _error_warn_hndl:
3402                     ; 305 if(mainCnt<3)return;	
3404  01ac 9c            	rvf
3405  01ad be82          	ldw	x,_mainCnt
3406  01af a30003        	cpw	x,#3
3407  01b2 2e01          	jrsge	L5012
3411  01b4 81            	ret
3412  01b5               L5012:
3413                     ; 306 if(MODE_EE==1)
3415  01b5 c64046        	ld	a,_MODE_EE
3416  01b8 a101          	cp	a,#1
3417  01ba 2611          	jrne	L7012
3418                     ; 308 	if(waterSensorErrorStat!=dsesNORM)bWARN=1;
3420  01bc c60000        	ld	a,_waterSensorErrorStat
3421  01bf a155          	cp	a,#85
3422  01c1 2706          	jreq	L1112
3425  01c3 35010007      	mov	_bWARN,#1
3427  01c7 2023          	jra	L5112
3428  01c9               L1112:
3429                     ; 309 	else bWARN=0;
3431  01c9 3f07          	clr	_bWARN
3432  01cb 201f          	jra	L5112
3433  01cd               L7012:
3434                     ; 311 else if((MODE_EE==2)||(MODE_EE==3))
3436  01cd c64046        	ld	a,_MODE_EE
3437  01d0 a102          	cp	a,#2
3438  01d2 2707          	jreq	L1212
3440  01d4 c64046        	ld	a,_MODE_EE
3441  01d7 a103          	cp	a,#3
3442  01d9 2611          	jrne	L5112
3443  01db               L1212:
3444                     ; 313 	if((airSensorErrorStat!=taesNORM)||(waterSensorErrorStat!=dsesNORM))bWARN=1;
3446  01db b623          	ld	a,_airSensorErrorStat
3447  01dd a155          	cp	a,#85
3448  01df 2607          	jrne	L5212
3450  01e1 c60000        	ld	a,_waterSensorErrorStat
3451  01e4 a155          	cp	a,#85
3452  01e6 2719          	jreq	L3212
3453  01e8               L5212:
3456  01e8 35010007      	mov	_bWARN,#1
3458  01ec               L5112:
3459                     ; 317 if((waterSensorErrorStat==dsesNORM)&&((waterTemperAlarm==wtaCOOL/*temperOfWater<=3*/)||(waterTemperAlarm==wtaHEAT/*temperOfWater>=90*/)))bERR=1;	
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
3474                     ; 314 	else bWARN=0;
3476  0201 3f07          	clr	_bWARN
3477  0203 20e7          	jra	L5112
3478  0205               L3312:
3479                     ; 317 if((waterSensorErrorStat==dsesNORM)&&((waterTemperAlarm==wtaCOOL/*temperOfWater<=3*/)||(waterTemperAlarm==wtaHEAT/*temperOfWater>=90*/)))bERR=1;	
3481  0205 35010008      	mov	_bERR,#1
3483  0209 2002          	jra	L5312
3484  020b               L1312:
3485                     ; 318 else bERR=0;
3487  020b 3f08          	clr	_bERR
3488  020d               L5312:
3489                     ; 319 }
3492  020d 81            	ret
3528                     ; 322 void airSensorLineErrorDrv(void)
3528                     ; 323 {
3529                     	switch	.text
3530  020e               _airSensorLineErrorDrv:
3534                     ; 324 if(GPIOD->IDR&(1<<6)) 
3536  020e c65010        	ld	a,20496
3537  0211 a540          	bcp	a,#64
3538  0213 2714          	jreq	L7412
3539                     ; 326 	if(cntAirSensorLineErrorLo<10)
3541  0215 b606          	ld	a,_cntAirSensorLineErrorLo
3542  0217 a10a          	cp	a,#10
3543  0219 2420          	jruge	L5512
3544                     ; 328 		cntAirSensorLineErrorLo++;
3546  021b 3c06          	inc	_cntAirSensorLineErrorLo
3547                     ; 329 		if(cntAirSensorLineErrorLo>=10)
3549  021d b606          	ld	a,_cntAirSensorLineErrorLo
3550  021f a10a          	cp	a,#10
3551  0221 2518          	jrult	L5512
3552                     ; 331 			airSensorErrorStat=taesLLO;	
3554  0223 35020023      	mov	_airSensorErrorStat,#2
3555  0227 2012          	jra	L5512
3556  0229               L7412:
3557                     ; 337 	if(cntAirSensorLineErrorHi<10)
3559  0229 b605          	ld	a,_cntAirSensorLineErrorHi
3560  022b a10a          	cp	a,#10
3561  022d 240c          	jruge	L5512
3562                     ; 339 		cntAirSensorLineErrorHi++;
3564  022f 3c05          	inc	_cntAirSensorLineErrorHi
3565                     ; 340 		if(cntAirSensorLineErrorHi>=10)
3567  0231 b605          	ld	a,_cntAirSensorLineErrorHi
3568  0233 a10a          	cp	a,#10
3569  0235 2504          	jrult	L5512
3570                     ; 342 			airSensorErrorStat=taesLHI;	
3572  0237 35030023      	mov	_airSensorErrorStat,#3
3573  023b               L5512:
3574                     ; 347 if((airSensorErrorStat!=taesNORM)&&(airSensorErrorStatOld==taesNORM))
3576  023b b623          	ld	a,_airSensorErrorStat
3577  023d a155          	cp	a,#85
3578  023f 2769          	jreq	L3612
3580  0241 b624          	ld	a,_airSensorErrorStatOld
3581  0243 a155          	cp	a,#85
3582  0245 2663          	jrne	L3612
3583                     ; 349 	strcpy(tempRussianText,"Ќеисправность датчика температуры воздуха"); 
3585  0247 ae00d3        	ldw	x,#L5612
3586  024a 89            	pushw	x
3587  024b ae0000        	ldw	x,#_tempRussianText
3588  024e cd0000        	call	_strcpy
3590  0251 85            	popw	x
3591                     ; 352 	if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3593  0252 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3594  0255 a501          	bcp	a,#1
3595  0257 270f          	jreq	L7612
3596                     ; 354 		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3598  0259 ae0000        	ldw	x,#_tempRussianText
3599  025c 89            	pushw	x
3600  025d ae4002        	ldw	x,#_MAIN_NUMBER
3601  0260 89            	pushw	x
3602  0261 a670          	ld	a,#112
3603  0263 cd0000        	call	_modem_send_sms
3605  0266 5b04          	addw	sp,#4
3606  0268               L7612:
3607                     ; 356 	if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3609  0268 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3610  026b a502          	bcp	a,#2
3611  026d 270f          	jreq	L1712
3612                     ; 358 		modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3614  026f ae0000        	ldw	x,#_tempRussianText
3615  0272 89            	pushw	x
3616  0273 ae400c        	ldw	x,#_AUTH_NUMBER_1
3617  0276 89            	pushw	x
3618  0277 a670          	ld	a,#112
3619  0279 cd0000        	call	_modem_send_sms
3621  027c 5b04          	addw	sp,#4
3622  027e               L1712:
3623                     ; 360 	if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3625  027e c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3626  0281 a504          	bcp	a,#4
3627  0283 270f          	jreq	L3712
3628                     ; 362 		modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3630  0285 ae0000        	ldw	x,#_tempRussianText
3631  0288 89            	pushw	x
3632  0289 ae406b        	ldw	x,#_AUTH_NUMBER_2
3633  028c 89            	pushw	x
3634  028d a670          	ld	a,#112
3635  028f cd0000        	call	_modem_send_sms
3637  0292 5b04          	addw	sp,#4
3638  0294               L3712:
3639                     ; 364 	if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3641  0294 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3642  0297 a508          	bcp	a,#8
3643  0299 270f          	jreq	L3612
3644                     ; 366 		modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3646  029b ae0000        	ldw	x,#_tempRussianText
3647  029e 89            	pushw	x
3648  029f ae4075        	ldw	x,#_AUTH_NUMBER_3
3649  02a2 89            	pushw	x
3650  02a3 a670          	ld	a,#112
3651  02a5 cd0000        	call	_modem_send_sms
3653  02a8 5b04          	addw	sp,#4
3654  02aa               L3612:
3655                     ; 370 airSensorErrorStatOld=airSensorErrorStat;
3657  02aa 452324        	mov	_airSensorErrorStatOld,_airSensorErrorStat
3658                     ; 371 }
3661  02ad 81            	ret
3699                     ; 374 void waterTemperAlarmHndl(void)
3699                     ; 375 {
3700                     	switch	.text
3701  02ae               _waterTemperAlarmHndl:
3705                     ; 376 if((waterSensorErrorStat==dsesNORM)&&((temperOfWater<3)||(temperOfWater>90))&&(mainCnt>60))
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
3726                     ; 378 	if(waterTemperAlarmCnt<15)waterTemperAlarmCnt++;//=wtaCOOL;	
3728  02cb 9c            	rvf
3729  02cc c60034        	ld	a,_waterTemperAlarmCnt
3730  02cf a10f          	cp	a,#15
3731  02d1 2e25          	jrsge	L5122
3734  02d3 725c0034      	inc	_waterTemperAlarmCnt
3735  02d7 201f          	jra	L5122
3736  02d9               L7022:
3737                     ; 384 else if((waterSensorErrorStat==dsesNORM)&&(temperOfWater>=10)&&(temperOfWater<=80))
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
3752                     ; 386 	if(waterTemperAlarmCnt)waterTemperAlarmCnt--;//waterTemperAlarm=wtaNORM;	
3754  02ee 725d0034      	tnz	_waterTemperAlarmCnt
3755  02f2 2704          	jreq	L5122
3758  02f4 725a0034      	dec	_waterTemperAlarmCnt
3759  02f8               L5122:
3760                     ; 389 if(waterTemperAlarmCnt>14)
3762  02f8 9c            	rvf
3763  02f9 c60034        	ld	a,_waterTemperAlarmCnt
3764  02fc a10f          	cp	a,#15
3765  02fe 2f1a          	jrslt	L3222
3766                     ; 391 	if(temperOfWater<3)waterTemperAlarm=wtaCOOL;
3768  0300 9c            	rvf
3769  0301 b61f          	ld	a,_temperOfWater
3770  0303 a103          	cp	a,#3
3771  0305 2e06          	jrsge	L5222
3774  0307 35010027      	mov	_waterTemperAlarm,#1
3776  030b 2017          	jra	L3322
3777  030d               L5222:
3778                     ; 392 	else if(temperOfWater>90)waterTemperAlarm=wtaHEAT;
3780  030d 9c            	rvf
3781  030e b61f          	ld	a,_temperOfWater
3782  0310 a15b          	cp	a,#91
3783  0312 2f10          	jrslt	L3322
3786  0314 35020027      	mov	_waterTemperAlarm,#2
3787  0318 200a          	jra	L3322
3788  031a               L3222:
3789                     ; 394 else if(waterTemperAlarmCnt<1)
3791  031a 9c            	rvf
3792  031b c60034        	ld	a,_waterTemperAlarmCnt
3793  031e a101          	cp	a,#1
3794  0320 2e02          	jrsge	L3322
3795                     ; 396 	waterTemperAlarm=wtaNORM;	
3797  0322 3f27          	clr	_waterTemperAlarm
3798  0324               L3322:
3799                     ; 399 if((waterTemperAlarm!=wtaNORM)&&(waterTemperAlarmOld==wtaNORM))
3801  0324 3d27          	tnz	_waterTemperAlarm
3802  0326 2603cc03ab    	jreq	L7322
3804  032b 3d28          	tnz	_waterTemperAlarmOld
3805  032d 267c          	jrne	L7322
3806                     ; 401 	if(waterTemperAlarm==wtaCOOL) strcpy(tempRussianText,"“емпература воды в системе ниже 3 гр.÷."); 
3808  032f b627          	ld	a,_waterTemperAlarm
3809  0331 a101          	cp	a,#1
3810  0333 260d          	jrne	L1422
3813  0335 ae00ab        	ldw	x,#L3422
3814  0338 89            	pushw	x
3815  0339 ae0000        	ldw	x,#_tempRussianText
3816  033c cd0000        	call	_strcpy
3818  033f 85            	popw	x
3820  0340 2011          	jra	L5422
3821  0342               L1422:
3822                     ; 402 	else if(waterTemperAlarm==wtaHEAT) strcpy(tempRussianText,"“емпература воды в системе выше 90 гр.÷."); 
3824  0342 b627          	ld	a,_waterTemperAlarm
3825  0344 a102          	cp	a,#2
3826  0346 260b          	jrne	L5422
3829  0348 ae0082        	ldw	x,#L1522
3830  034b 89            	pushw	x
3831  034c ae0000        	ldw	x,#_tempRussianText
3832  034f cd0000        	call	_strcpy
3834  0352 85            	popw	x
3835  0353               L5422:
3836                     ; 405 	if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3838  0353 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3839  0356 a501          	bcp	a,#1
3840  0358 270f          	jreq	L3522
3841                     ; 407 		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3843  035a ae0000        	ldw	x,#_tempRussianText
3844  035d 89            	pushw	x
3845  035e ae4002        	ldw	x,#_MAIN_NUMBER
3846  0361 89            	pushw	x
3847  0362 a670          	ld	a,#112
3848  0364 cd0000        	call	_modem_send_sms
3850  0367 5b04          	addw	sp,#4
3851  0369               L3522:
3852                     ; 410 	if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3854  0369 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3855  036c a502          	bcp	a,#2
3856  036e 270f          	jreq	L5522
3857                     ; 412 		modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3859  0370 ae0000        	ldw	x,#_tempRussianText
3860  0373 89            	pushw	x
3861  0374 ae400c        	ldw	x,#_AUTH_NUMBER_1
3862  0377 89            	pushw	x
3863  0378 a670          	ld	a,#112
3864  037a cd0000        	call	_modem_send_sms
3866  037d 5b04          	addw	sp,#4
3867  037f               L5522:
3868                     ; 414 	if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3870  037f c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3871  0382 a504          	bcp	a,#4
3872  0384 270f          	jreq	L7522
3873                     ; 416 		modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3875  0386 ae0000        	ldw	x,#_tempRussianText
3876  0389 89            	pushw	x
3877  038a ae406b        	ldw	x,#_AUTH_NUMBER_2
3878  038d 89            	pushw	x
3879  038e a670          	ld	a,#112
3880  0390 cd0000        	call	_modem_send_sms
3882  0393 5b04          	addw	sp,#4
3883  0395               L7522:
3884                     ; 418 	if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3886  0395 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3887  0398 a508          	bcp	a,#8
3888  039a 270f          	jreq	L7322
3889                     ; 420 		modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3891  039c ae0000        	ldw	x,#_tempRussianText
3892  039f 89            	pushw	x
3893  03a0 ae4075        	ldw	x,#_AUTH_NUMBER_3
3894  03a3 89            	pushw	x
3895  03a4 a670          	ld	a,#112
3896  03a6 cd0000        	call	_modem_send_sms
3898  03a9 5b04          	addw	sp,#4
3899  03ab               L7322:
3900                     ; 424 waterTemperAlarmOld=waterTemperAlarm;
3902  03ab 452728        	mov	_waterTemperAlarmOld,_waterTemperAlarm
3903                     ; 425 }
3906  03ae 81            	ret
3933                     ; 428 void beep_drv(void)
3933                     ; 429 {
3934                     	switch	.text
3935  03af               _beep_drv:
3939                     ; 430 GPIOG->DDR|=0b00000010;
3941  03af 72125020      	bset	20512,#1
3942                     ; 431 GPIOG->CR1|=0b00000010;
3944  03b3 72125021      	bset	20513,#1
3945                     ; 432 GPIOG->CR2&=0b11111101;
3947  03b7 72135022      	bres	20514,#1
3948                     ; 436 if(bERR)
3950  03bb 3d08          	tnz	_bERR
3951  03bd 271e          	jreq	L3722
3952                     ; 438 	if(++beep_drv_cnt>=15)beep_drv_cnt=0;
3954  03bf 9c            	rvf
3955  03c0 3c09          	inc	_beep_drv_cnt
3956  03c2 b609          	ld	a,_beep_drv_cnt
3957  03c4 a10f          	cp	a,#15
3958  03c6 2f02          	jrslt	L5722
3961  03c8 3f09          	clr	_beep_drv_cnt
3962  03ca               L5722:
3963                     ; 439 	if(beep_drv_cnt<5)
3965  03ca 9c            	rvf
3966  03cb b609          	ld	a,_beep_drv_cnt
3967  03cd a105          	cp	a,#5
3968  03cf 2e06          	jrsge	L7722
3969                     ; 441 		GPIOG->ODR|=0b00000010;
3971  03d1 7212501e      	bset	20510,#1
3973  03d5 2058          	jra	L3032
3974  03d7               L7722:
3975                     ; 443 	else GPIOG->ODR&=0b11111101;
3977  03d7 7213501e      	bres	20510,#1
3978  03db 2052          	jra	L3032
3979  03dd               L3722:
3980                     ; 445 else if(bWARN)
3982  03dd 3d07          	tnz	_bWARN
3983  03df 273a          	jreq	L5032
3984                     ; 447 	if(++beep_drv_cnt>=100)beep_drv_cnt=0;
3986  03e1 9c            	rvf
3987  03e2 3c09          	inc	_beep_drv_cnt
3988  03e4 b609          	ld	a,_beep_drv_cnt
3989  03e6 a164          	cp	a,#100
3990  03e8 2f02          	jrslt	L7032
3993  03ea 3f09          	clr	_beep_drv_cnt
3994  03ec               L7032:
3995                     ; 448 	if((beep_drv_cnt<5)||((beep_drv_cnt>=15)&&(beep_drv_cnt<20))||((beep_drv_cnt>=30)&&(beep_drv_cnt<35)))
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
4023                     ; 450 		GPIOG->ODR|=0b00000010;
4025  040f 7212501e      	bset	20510,#1
4027  0413 201a          	jra	L3032
4028  0415               L1132:
4029                     ; 452 	else GPIOG->ODR&=0b11111101;
4031  0415 7213501e      	bres	20510,#1
4032  0419 2014          	jra	L3032
4033  041b               L5032:
4034                     ; 454 else if(beepTestCnt)
4036  041b 725d0008      	tnz	_beepTestCnt
4037  041f 270a          	jreq	L5232
4038                     ; 456 	beepTestCnt--;
4040  0421 725a0008      	dec	_beepTestCnt
4041                     ; 457 	GPIOG->ODR|=0b00000010;
4043  0425 7212501e      	bset	20510,#1
4045  0429 2004          	jra	L3032
4046  042b               L5232:
4047                     ; 459 else GPIOG->ODR&=0b11111101;
4049  042b 7213501e      	bres	20510,#1
4050  042f               L3032:
4051                     ; 460 }
4054  042f 81            	ret
4086                     ; 463 void time_drv(void)
4086                     ; 464 {
4087                     	switch	.text
4088  0430               _time_drv:
4090  0430 88            	push	a
4091       00000001      OFST:	set	1
4094                     ; 465 _ds1307_read_time(buff_for_time);
4096  0431 ae0012        	ldw	x,#_buff_for_time
4097  0434 cd0000        	call	__ds1307_read_time
4099                     ; 467 time_sec=(((buff_for_time[0]&0x70)>>4)*10)+(buff_for_time[0]&0x0f);
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
4114                     ; 468 time_min=(((buff_for_time[1]&0x70)>>4)*10)+(buff_for_time[1]&0x0f);
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
4129                     ; 469 time_hour=(((buff_for_time[2]&0x30)>>4)*10)+(buff_for_time[2]&0x0f);
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
4144                     ; 470 time_date=(((buff_for_time[4]&0x30)>>4)*10)+(buff_for_time[4]&0x0f);
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
4159                     ; 471 time_month=(((buff_for_time[5]&0x10)>>4)*10)+(buff_for_time[5]&0x0f);
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
4174                     ; 472 time_year=(((buff_for_time[6]&0xf0)>>4)*10)+(buff_for_time[6]&0x0f);
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
4189                     ; 473 time_day_of_week=(buff_for_time[3]&0x07);
4191  04bb b615          	ld	a,_buff_for_time+3
4192  04bd a407          	and	a,#7
4193  04bf b70e          	ld	_time_day_of_week,a
4194                     ; 474 }
4197  04c1 84            	pop	a
4198  04c2 81            	ret
4228                     ; 478 void sheduler_hndl(void)
4228                     ; 479 {
4229                     	switch	.text
4230  04c3               _sheduler_hndl:
4232  04c3 89            	pushw	x
4233       00000002      OFST:	set	2
4236                     ; 482 day_sheduler_time=(unsigned char)(((((unsigned)time_hour)*60)+((unsigned)time_min))/10);
4238  04c4 b610          	ld	a,_time_min
4239  04c6 5f            	clrw	x
4240  04c7 97            	ld	xl,a
4241  04c8 1f01          	ldw	(OFST-1,sp),x
4242  04ca b60f          	ld	a,_time_hour
4243  04cc 5f            	clrw	x
4244  04cd 97            	ld	xl,a
4245  04ce 90ae003c      	ldw	y,#60
4246  04d2 cd0000        	call	c_imul
4248  04d5 72fb01        	addw	x,(OFST-1,sp)
4249  04d8 90ae000a      	ldw	y,#10
4250  04dc 65            	divw	x,y
4251  04dd 9f            	ld	a,xl
4252  04de b702          	ld	_day_sheduler_time,a
4253                     ; 484 if((day_sheduler_time>=0)&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][0]))
4255  04e0 b60e          	ld	a,_time_day_of_week
4256  04e2 97            	ld	xl,a
4257  04e3 a605          	ld	a,#5
4258  04e5 42            	mul	x,a
4259  04e6 1d0005        	subw	x,#5
4260  04e9 d64020        	ld	a,(_TABLE_TIME_EE,x)
4261  04ec b102          	cp	a,_day_sheduler_time
4262  04ee 2321          	jrule	L1532
4263                     ; 486 	if(time_day_of_week==1)	temperRegToSheduler=TABLE_TEMPER_EE[6][4];
4265  04f0 b60e          	ld	a,_time_day_of_week
4266  04f2 a101          	cp	a,#1
4267  04f4 2609          	jrne	L3532
4270  04f6 55406a0004    	mov	_temperRegToSheduler,_TABLE_TEMPER_EE+34
4272  04fb acf805f8      	jpf	L7532
4273  04ff               L3532:
4274                     ; 487 	else 					temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-2][4];
4276  04ff b60e          	ld	a,_time_day_of_week
4277  0501 97            	ld	xl,a
4278  0502 a605          	ld	a,#5
4279  0504 42            	mul	x,a
4280  0505 1d000a        	subw	x,#10
4281  0508 d6404c        	ld	a,(_TABLE_TEMPER_EE+4,x)
4282  050b b704          	ld	_temperRegToSheduler,a
4283  050d acf805f8      	jpf	L7532
4284  0511               L1532:
4285                     ; 489 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][0])&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][1]))
4287  0511 b60e          	ld	a,_time_day_of_week
4288  0513 97            	ld	xl,a
4289  0514 a605          	ld	a,#5
4290  0516 42            	mul	x,a
4291  0517 1d0005        	subw	x,#5
4292  051a d64020        	ld	a,(_TABLE_TIME_EE,x)
4293  051d b102          	cp	a,_day_sheduler_time
4294  051f 2222          	jrugt	L1632
4296  0521 b60e          	ld	a,_time_day_of_week
4297  0523 97            	ld	xl,a
4298  0524 a605          	ld	a,#5
4299  0526 42            	mul	x,a
4300  0527 1d0005        	subw	x,#5
4301  052a d64021        	ld	a,(_TABLE_TIME_EE+1,x)
4302  052d b102          	cp	a,_day_sheduler_time
4303  052f 2312          	jrule	L1632
4304                     ; 491 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][0];
4306  0531 b60e          	ld	a,_time_day_of_week
4307  0533 97            	ld	xl,a
4308  0534 a605          	ld	a,#5
4309  0536 42            	mul	x,a
4310  0537 1d0005        	subw	x,#5
4311  053a d64048        	ld	a,(_TABLE_TEMPER_EE,x)
4312  053d b704          	ld	_temperRegToSheduler,a
4314  053f acf805f8      	jpf	L7532
4315  0543               L1632:
4316                     ; 493 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][1])&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][2]))
4318  0543 b60e          	ld	a,_time_day_of_week
4319  0545 97            	ld	xl,a
4320  0546 a605          	ld	a,#5
4321  0548 42            	mul	x,a
4322  0549 1d0005        	subw	x,#5
4323  054c d64021        	ld	a,(_TABLE_TIME_EE+1,x)
4324  054f b102          	cp	a,_day_sheduler_time
4325  0551 2221          	jrugt	L5632
4327  0553 b60e          	ld	a,_time_day_of_week
4328  0555 97            	ld	xl,a
4329  0556 a605          	ld	a,#5
4330  0558 42            	mul	x,a
4331  0559 1d0005        	subw	x,#5
4332  055c d64022        	ld	a,(_TABLE_TIME_EE+2,x)
4333  055f b102          	cp	a,_day_sheduler_time
4334  0561 2311          	jrule	L5632
4335                     ; 495 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][1];
4337  0563 b60e          	ld	a,_time_day_of_week
4338  0565 97            	ld	xl,a
4339  0566 a605          	ld	a,#5
4340  0568 42            	mul	x,a
4341  0569 1d0005        	subw	x,#5
4342  056c d64049        	ld	a,(_TABLE_TEMPER_EE+1,x)
4343  056f b704          	ld	_temperRegToSheduler,a
4345  0571 cc05f8        	jra	L7532
4346  0574               L5632:
4347                     ; 497 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][2])&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][3]))
4349  0574 b60e          	ld	a,_time_day_of_week
4350  0576 97            	ld	xl,a
4351  0577 a605          	ld	a,#5
4352  0579 42            	mul	x,a
4353  057a 1d0005        	subw	x,#5
4354  057d d64022        	ld	a,(_TABLE_TIME_EE+2,x)
4355  0580 b102          	cp	a,_day_sheduler_time
4356  0582 2220          	jrugt	L1732
4358  0584 b60e          	ld	a,_time_day_of_week
4359  0586 97            	ld	xl,a
4360  0587 a605          	ld	a,#5
4361  0589 42            	mul	x,a
4362  058a 1d0005        	subw	x,#5
4363  058d d64023        	ld	a,(_TABLE_TIME_EE+3,x)
4364  0590 b102          	cp	a,_day_sheduler_time
4365  0592 2310          	jrule	L1732
4366                     ; 499 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][2];
4368  0594 b60e          	ld	a,_time_day_of_week
4369  0596 97            	ld	xl,a
4370  0597 a605          	ld	a,#5
4371  0599 42            	mul	x,a
4372  059a 1d0005        	subw	x,#5
4373  059d d6404a        	ld	a,(_TABLE_TEMPER_EE+2,x)
4374  05a0 b704          	ld	_temperRegToSheduler,a
4376  05a2 2054          	jra	L7532
4377  05a4               L1732:
4378                     ; 501 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][3])&&(day_sheduler_time<TABLE_TIME_EE[time_day_of_week-1][4]))
4380  05a4 b60e          	ld	a,_time_day_of_week
4381  05a6 97            	ld	xl,a
4382  05a7 a605          	ld	a,#5
4383  05a9 42            	mul	x,a
4384  05aa 1d0005        	subw	x,#5
4385  05ad d64023        	ld	a,(_TABLE_TIME_EE+3,x)
4386  05b0 b102          	cp	a,_day_sheduler_time
4387  05b2 2220          	jrugt	L5732
4389  05b4 b60e          	ld	a,_time_day_of_week
4390  05b6 97            	ld	xl,a
4391  05b7 a605          	ld	a,#5
4392  05b9 42            	mul	x,a
4393  05ba 1d0005        	subw	x,#5
4394  05bd d64024        	ld	a,(_TABLE_TIME_EE+4,x)
4395  05c0 b102          	cp	a,_day_sheduler_time
4396  05c2 2310          	jrule	L5732
4397                     ; 503 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][3];
4399  05c4 b60e          	ld	a,_time_day_of_week
4400  05c6 97            	ld	xl,a
4401  05c7 a605          	ld	a,#5
4402  05c9 42            	mul	x,a
4403  05ca 1d0005        	subw	x,#5
4404  05cd d6404b        	ld	a,(_TABLE_TEMPER_EE+3,x)
4405  05d0 b704          	ld	_temperRegToSheduler,a
4407  05d2 2024          	jra	L7532
4408  05d4               L5732:
4409                     ; 505 else if((day_sheduler_time>=TABLE_TIME_EE[time_day_of_week-1][4])&&(day_sheduler_time<144))
4411  05d4 b60e          	ld	a,_time_day_of_week
4412  05d6 97            	ld	xl,a
4413  05d7 a605          	ld	a,#5
4414  05d9 42            	mul	x,a
4415  05da 1d0005        	subw	x,#5
4416  05dd d64024        	ld	a,(_TABLE_TIME_EE+4,x)
4417  05e0 b102          	cp	a,_day_sheduler_time
4418  05e2 2214          	jrugt	L7532
4420  05e4 b602          	ld	a,_day_sheduler_time
4421  05e6 a190          	cp	a,#144
4422  05e8 240e          	jruge	L7532
4423                     ; 507 	temperRegToSheduler=TABLE_TEMPER_EE[time_day_of_week-1][4];
4425  05ea b60e          	ld	a,_time_day_of_week
4426  05ec 97            	ld	xl,a
4427  05ed a605          	ld	a,#5
4428  05ef 42            	mul	x,a
4429  05f0 1d0005        	subw	x,#5
4430  05f3 d6404c        	ld	a,(_TABLE_TEMPER_EE+4,x)
4431  05f6 b704          	ld	_temperRegToSheduler,a
4432  05f8               L7532:
4433                     ; 509 }
4436  05f8 85            	popw	x
4437  05f9 81            	ret
4468                     ; 512 void power_off_hndl(void)
4468                     ; 513 {
4469                     	switch	.text
4470  05fa               _power_off_hndl:
4474                     ; 514 if(powerStat==psON)
4476  05fa b629          	ld	a,_powerStat
4477  05fc a101          	cp	a,#1
4478  05fe 2605          	jrne	L3142
4479                     ; 516 	main_power_off_hndl_cnt=0;
4481  0600 5f            	clrw	x
4482  0601 cf002b        	ldw	_main_power_off_hndl_cnt,x
4483                     ; 517 	return;
4486  0604 81            	ret
4487  0605               L3142:
4488                     ; 519 if(main_power_off_hndl_cnt<POWER_OFF_HNDL_PERIOD_IN_SEC)
4490  0605 9c            	rvf
4491  0606 ce002b        	ldw	x,_main_power_off_hndl_cnt
4492  0609 a3003c        	cpw	x,#60
4493  060c 2e09          	jrsge	L5142
4494                     ; 521 	main_power_off_hndl_cnt++;
4496  060e ce002b        	ldw	x,_main_power_off_hndl_cnt
4497  0611 1c0001        	addw	x,#1
4498  0614 cf002b        	ldw	_main_power_off_hndl_cnt,x
4499  0617               L5142:
4500                     ; 523 if(main_power_off_hndl_cnt==POWER_OFF_HNDL_PERIOD_IN_SEC)
4502  0617 ce002b        	ldw	x,_main_power_off_hndl_cnt
4503  061a a3003c        	cpw	x,#60
4504  061d 2622          	jrne	L7142
4505                     ; 525 	printf("AT + CBC \r");
4507  061f ae0077        	ldw	x,#L1242
4508  0622 cd0000        	call	_printf
4510                     ; 526 	cbcSystemRequ++;
4512  0625 725c002a      	inc	_cbcSystemRequ
4513                     ; 527 	if(cbcSystemRequ>=4)
4515  0629 c6002a        	ld	a,_cbcSystemRequ
4516  062c a104          	cp	a,#4
4517  062e 2509          	jrult	L3242
4518                     ; 529 		GPIOD->ODR|=0b00111100;
4520  0630 c6500f        	ld	a,20495
4521  0633 aa3c          	or	a,#60
4522  0635 c7500f        	ld	20495,a
4523                     ; 530 		halt();
4526  0638 8e            halt
4529  0639               L3242:
4530                     ; 532 	main_power_off_hndl_cnt=0;
4532  0639 5f            	clrw	x
4533  063a cf002b        	ldw	_main_power_off_hndl_cnt,x
4534                     ; 533 	bCBC_SELF=1;
4536  063d 35010009      	mov	_bCBC_SELF,#1
4537  0641               L7142:
4538                     ; 535 if(bCBC_SELF==2)
4540  0641 c60009        	ld	a,_bCBC_SELF
4541  0644 a102          	cp	a,#2
4542  0646 2616          	jrne	L5242
4543                     ; 537 	bCBC_SELF=0;
4545  0648 725f0009      	clr	_bCBC_SELF
4546                     ; 539 	cbcSystemRequ=0;
4548  064c 725f002a      	clr	_cbcSystemRequ
4549                     ; 540 	if(cbcVoltage<3500)
4551  0650 9c            	rvf
4552  0651 ce000a        	ldw	x,_cbcVoltage
4553  0654 a30dac        	cpw	x,#3500
4554  0657 2e05          	jrsge	L5242
4555                     ; 542 		modemDrvPowerDownStepCnt=1;	
4557  0659 ae0001        	ldw	x,#1
4558  065c bf00          	ldw	_modemDrvPowerDownStepCnt,x
4559  065e               L5242:
4560                     ; 545 }
4563  065e 81            	ret
4608                     ; 548 void power_hndl(void)
4608                     ; 549 {
4609                     	switch	.text
4610  065f               _power_hndl:
4612  065f 88            	push	a
4613       00000001      OFST:	set	1
4616                     ; 550 disableInterrupts();	
4619  0660 9b            sim
4621                     ; 551 if((powerNecc)&&(powerNeccOld==0))
4624  0661 3d25          	tnz	_powerNecc
4625  0663 2707          	jreq	L7442
4627  0665 3d26          	tnz	_powerNeccOld
4628  0667 2603          	jrne	L7442
4629                     ; 553 	fiksRandom=currRandom;
4631  0669 458584        	mov	_fiksRandom,_currRandom
4632  066c               L7442:
4633                     ; 556 if(!powerNecc)
4635  066c 3d25          	tnz	_powerNecc
4636  066e 2608          	jrne	L1542
4637                     ; 558 	out_stat[0]=osOFF;
4639  0670 3f20          	clr	_out_stat
4640                     ; 559 	out_stat[1]=osOFF;
4642  0672 3f21          	clr	_out_stat+1
4643                     ; 560 	out_stat[2]=osOFF;
4645  0674 3f22          	clr	_out_stat+2
4647  0676 2063          	jra	L3542
4648  0678               L1542:
4649                     ; 565 	for(i=0;i<3;i++)
4651  0678 0f01          	clr	(OFST+0,sp)
4652  067a               L5542:
4653                     ; 567 		if((i<powerNecc)&&(i<MAX_POWER_EE))		out_stat[warmOrder[fiksRandom][i]]=osON;
4655  067a 9c            	rvf
4656  067b 7b01          	ld	a,(OFST+0,sp)
4657  067d 5f            	clrw	x
4658  067e 97            	ld	xl,a
4659  067f 905f          	clrw	y
4660  0681 b625          	ld	a,_powerNecc
4661  0683 2a02          	jrpl	L24
4662  0685 9053          	cplw	y
4663  0687               L24:
4664  0687 9097          	ld	yl,a
4665  0689 90bf00        	ldw	c_y,y
4666  068c b300          	cpw	x,c_y
4667  068e 2e2f          	jrsge	L3642
4669  0690 9c            	rvf
4670  0691 7b01          	ld	a,(OFST+0,sp)
4671  0693 5f            	clrw	x
4672  0694 97            	ld	xl,a
4673  0695 905f          	clrw	y
4674  0697 c64047        	ld	a,_MAX_POWER_EE
4675  069a 2a02          	jrpl	L44
4676  069c 9053          	cplw	y
4677  069e               L44:
4678  069e 9097          	ld	yl,a
4679  06a0 90bf00        	ldw	c_y,y
4680  06a3 b300          	cpw	x,c_y
4681  06a5 2e18          	jrsge	L3642
4684  06a7 b684          	ld	a,_fiksRandom
4685  06a9 97            	ld	xl,a
4686  06aa a603          	ld	a,#3
4687  06ac 42            	mul	x,a
4688  06ad 01            	rrwa	x,a
4689  06ae 1b01          	add	a,(OFST+0,sp)
4690  06b0 2401          	jrnc	L64
4691  06b2 5c            	incw	x
4692  06b3               L64:
4693  06b3 02            	rlwa	x,a
4694  06b4 d60000        	ld	a,(_warmOrder,x)
4695  06b7 5f            	clrw	x
4696  06b8 97            	ld	xl,a
4697  06b9 a601          	ld	a,#1
4698  06bb e720          	ld	(_out_stat,x),a
4700  06bd 2014          	jra	L5642
4701  06bf               L3642:
4702                     ; 568 		else									out_stat[warmOrder[fiksRandom][i]]=osOFF;
4704  06bf b684          	ld	a,_fiksRandom
4705  06c1 97            	ld	xl,a
4706  06c2 a603          	ld	a,#3
4707  06c4 42            	mul	x,a
4708  06c5 01            	rrwa	x,a
4709  06c6 1b01          	add	a,(OFST+0,sp)
4710  06c8 2401          	jrnc	L05
4711  06ca 5c            	incw	x
4712  06cb               L05:
4713  06cb 02            	rlwa	x,a
4714  06cc d60000        	ld	a,(_warmOrder,x)
4715  06cf 5f            	clrw	x
4716  06d0 97            	ld	xl,a
4717  06d1 6f20          	clr	(_out_stat,x)
4718  06d3               L5642:
4719                     ; 565 	for(i=0;i<3;i++)
4721  06d3 0c01          	inc	(OFST+0,sp)
4724  06d5 7b01          	ld	a,(OFST+0,sp)
4725  06d7 a103          	cp	a,#3
4726  06d9 259f          	jrult	L5542
4727  06db               L3542:
4728                     ; 572 powerNeccOld=powerNecc;
4730  06db 452526        	mov	_powerNeccOld,_powerNecc
4731                     ; 574 powerEnabled=0;
4733  06de 3f0a          	clr	_powerEnabled
4734                     ; 575 if((out_stat[0]==osON)&&(outMode==omON))powerEnabled++;
4736  06e0 b620          	ld	a,_out_stat
4737  06e2 a101          	cp	a,#1
4738  06e4 2609          	jrne	L7642
4740  06e6 c6401d        	ld	a,_outMode
4741  06e9 a101          	cp	a,#1
4742  06eb 2602          	jrne	L7642
4745  06ed 3c0a          	inc	_powerEnabled
4746  06ef               L7642:
4747                     ; 576 if((out_stat[1]==osON)&&(outMode==omON))powerEnabled++;
4749  06ef b621          	ld	a,_out_stat+1
4750  06f1 a101          	cp	a,#1
4751  06f3 2609          	jrne	L1742
4753  06f5 c6401d        	ld	a,_outMode
4754  06f8 a101          	cp	a,#1
4755  06fa 2602          	jrne	L1742
4758  06fc 3c0a          	inc	_powerEnabled
4759  06fe               L1742:
4760                     ; 577 if((out_stat[2]==osON)&&(outMode==omON))powerEnabled++;
4762  06fe b622          	ld	a,_out_stat+2
4763  0700 a101          	cp	a,#1
4764  0702 2609          	jrne	L3742
4766  0704 c6401d        	ld	a,_outMode
4767  0707 a101          	cp	a,#1
4768  0709 2602          	jrne	L3742
4771  070b 3c0a          	inc	_powerEnabled
4772  070d               L3742:
4773                     ; 579 enableInterrupts();
4776  070d 9a            rim
4778                     ; 580 }
4782  070e 84            	pop	a
4783  070f 81            	ret
4813                     ; 583 void power_necc_hndl(void)
4813                     ; 584 {
4814                     	switch	.text
4815  0710               _power_necc_hndl:
4819                     ; 586 if((aktualTemper>=targetTemper)||(temperOfWater>=90)||(mainCnt<3)||(powerStat==psOFF))
4821  0710 9c            	rvf
4822  0711 b61d          	ld	a,_aktualTemper
4823  0713 b11c          	cp	a,_targetTemper
4824  0715 2e13          	jrsge	L7052
4826  0717 9c            	rvf
4827  0718 b61f          	ld	a,_temperOfWater
4828  071a a15a          	cp	a,#90
4829  071c 2e0c          	jrsge	L7052
4831  071e 9c            	rvf
4832  071f be82          	ldw	x,_mainCnt
4833  0721 a30003        	cpw	x,#3
4834  0724 2f04          	jrslt	L7052
4836  0726 3d29          	tnz	_powerStat
4837  0728 2603          	jrne	L5052
4838  072a               L7052:
4839                     ; 588 	powerNecc=0;	
4841  072a 3f25          	clr	_powerNecc
4843  072c               L5152:
4844                     ; 599 }
4847  072c 81            	ret
4848  072d               L5052:
4849                     ; 590 else if(aktualTemper<targetTemper)
4851  072d 9c            	rvf
4852  072e b61d          	ld	a,_aktualTemper
4853  0730 b11c          	cp	a,_targetTemper
4854  0732 2ef8          	jrsge	L5152
4855                     ; 592 	powerNeccDelta=targetTemper-aktualTemper;
4857  0734 b61c          	ld	a,_targetTemper
4858  0736 b01d          	sub	a,_aktualTemper
4859  0738 b70b          	ld	_powerNeccDelta,a
4860                     ; 593 	powerNecc=0;
4862  073a 3f25          	clr	_powerNecc
4863                     ; 594 	if(powerNeccDelta>=2) powerNecc=1;
4865  073c 9c            	rvf
4866  073d b60b          	ld	a,_powerNeccDelta
4867  073f a102          	cp	a,#2
4868  0741 2f04          	jrslt	L1252
4871  0743 35010025      	mov	_powerNecc,#1
4872  0747               L1252:
4873                     ; 595 	if(powerNeccDelta>=3) powerNecc=2;
4875  0747 9c            	rvf
4876  0748 b60b          	ld	a,_powerNeccDelta
4877  074a a103          	cp	a,#3
4878  074c 2f04          	jrslt	L3252
4881  074e 35020025      	mov	_powerNecc,#2
4882  0752               L3252:
4883                     ; 596 	if(powerNeccDelta>=4) powerNecc=3;
4885  0752 9c            	rvf
4886  0753 b60b          	ld	a,_powerNeccDelta
4887  0755 a104          	cp	a,#4
4888  0757 2fd3          	jrslt	L5152
4891  0759 35030025      	mov	_powerNecc,#3
4892  075d 20cd          	jra	L5152
4936                     ; 602 void matemath(void)
4936                     ; 603 {
4937                     	switch	.text
4938  075f               _matemath:
4940  075f 89            	pushw	x
4941       00000002      OFST:	set	2
4944                     ; 605 if((wire1_in[1]&0xf0)==0)
4946  0760 c60001        	ld	a,_wire1_in+1
4947  0763 a5f0          	bcp	a,#240
4948  0765 2624          	jrne	L5452
4949                     ; 607 	temperOfWaterTemp=((wire1_in[0]&0xf0)>>4)+((wire1_in[1]&0x0f)<<4);
4951  0767 c60001        	ld	a,_wire1_in+1
4952  076a a40f          	and	a,#15
4953  076c 97            	ld	xl,a
4954  076d a610          	ld	a,#16
4955  076f 42            	mul	x,a
4956  0770 9f            	ld	a,xl
4957  0771 6b01          	ld	(OFST-1,sp),a
4958  0773 c60000        	ld	a,_wire1_in
4959  0776 a4f0          	and	a,#240
4960  0778 4e            	swap	a
4961  0779 a40f          	and	a,#15
4962  077b 1b01          	add	a,(OFST-1,sp)
4963  077d 6b02          	ld	(OFST+0,sp),a
4964                     ; 608 	temperOfWater=(signed short)temperOfWaterTemp;
4966  077f 7b02          	ld	a,(OFST+0,sp)
4967  0781 b71f          	ld	_temperOfWater,a
4968                     ; 609 	if(bDEB)temperOfWater=1;
4970  0783 3d00          	tnz	_bDEB
4971  0785 2704          	jreq	L5452
4974  0787 3501001f      	mov	_temperOfWater,#1
4975  078b               L5452:
4976                     ; 611 if(MODE_EE==1)
4978  078b c64046        	ld	a,_MODE_EE
4979  078e a101          	cp	a,#1
4980  0790 260a          	jrne	L1552
4981                     ; 613 	aktualTemper=temperOfWater;
4983  0792 451f1d        	mov	_aktualTemper,_temperOfWater
4984                     ; 614 	targetTemper=NECC_TEMPER_WATER_EE;
4986  0795 554045001c    	mov	_targetTemper,_NECC_TEMPER_WATER_EE
4988  079a 201e          	jra	L3552
4989  079c               L1552:
4990                     ; 616 else if(MODE_EE==2)
4992  079c c64046        	ld	a,_MODE_EE
4993  079f a102          	cp	a,#2
4994  07a1 260a          	jrne	L5552
4995                     ; 618 	aktualTemper=temperOfAir;
4997  07a3 451e1d        	mov	_aktualTemper,_temperOfAir
4998                     ; 619 	targetTemper=NECC_TEMPER_AIR_EE;
5000  07a6 554044001c    	mov	_targetTemper,_NECC_TEMPER_AIR_EE
5002  07ab 200d          	jra	L3552
5003  07ad               L5552:
5004                     ; 621 else if(MODE_EE==3)
5006  07ad c64046        	ld	a,_MODE_EE
5007  07b0 a103          	cp	a,#3
5008  07b2 2606          	jrne	L3552
5009                     ; 623 	aktualTemper=temperOfAir;
5011  07b4 451e1d        	mov	_aktualTemper,_temperOfAir
5012                     ; 624 	targetTemper=temperRegToSheduler;
5014  07b7 45041c        	mov	_targetTemper,_temperRegToSheduler
5015  07ba               L3552:
5016                     ; 626 }
5019  07ba 85            	popw	x
5020  07bb 81            	ret
5110                     	switch	.const
5111  0046               L06:
5112  0046 00002710      	dc.l	10000
5113                     ; 629 void ind_hndl(void)
5113                     ; 630 {
5114                     	switch	.text
5115  07bc               _ind_hndl:
5117  07bc 89            	pushw	x
5118       00000002      OFST:	set	2
5121                     ; 643 else */if(ind==iMn)
5123  07bd 3d61          	tnz	_a_ind
5124  07bf 2703          	jreq	L663
5125  07c1 cc08d6        	jp	L3752
5126  07c4               L663:
5127                     ; 646 	int2indII_slkuf(isp_main_cnt%10000,0, 4, 0, 0, 0);
5129  07c4 4b00          	push	#0
5130  07c6 4b00          	push	#0
5131  07c8 4b00          	push	#0
5132  07ca 4b04          	push	#4
5133  07cc 4b00          	push	#0
5134  07ce ae0000        	ldw	x,#_isp_main_cnt
5135  07d1 cd0000        	call	c_ltor
5137  07d4 ae0046        	ldw	x,#L06
5138  07d7 cd0000        	call	c_lmod
5140  07da be02          	ldw	x,c_lreg+2
5141  07dc cd0000        	call	_int2indII_slkuf
5143  07df 5b05          	addw	sp,#5
5144                     ; 647 	int2indI_slkuf(isp_main_cnt/10000,1, 3, 0, 0, 0);
5146  07e1 4b00          	push	#0
5147  07e3 4b00          	push	#0
5148  07e5 4b00          	push	#0
5149  07e7 4b03          	push	#3
5150  07e9 4b01          	push	#1
5151  07eb ae0000        	ldw	x,#_isp_main_cnt
5152  07ee cd0000        	call	c_ltor
5154  07f1 ae0046        	ldw	x,#L06
5155  07f4 cd0000        	call	c_ldiv
5157  07f7 be02          	ldw	x,c_lreg+2
5158  07f9 cd0000        	call	_int2indI_slkuf
5160  07fc 5b05          	addw	sp,#5
5161                     ; 658 	led_mask_off(0x00);
5163  07fe 4f            	clr	a
5164  07ff cd0000        	call	_led_mask_off
5166                     ; 659 	if(outMode==omON)
5168  0802 c6401d        	ld	a,_outMode
5169  0805 a101          	cp	a,#1
5170  0807 262d          	jrne	L5752
5171                     ; 661 		if(MODE_EE==1)led_on(1);
5173  0809 c64046        	ld	a,_MODE_EE
5174  080c a101          	cp	a,#1
5175  080e 2607          	jrne	L7752
5178  0810 a601          	ld	a,#1
5179  0812 cd0000        	call	_led_on
5182  0815 201f          	jra	L5752
5183  0817               L7752:
5184                     ; 662 		else if(MODE_EE==2) led_on(2);
5186  0817 c64046        	ld	a,_MODE_EE
5187  081a a102          	cp	a,#2
5188  081c 2607          	jrne	L3062
5191  081e a602          	ld	a,#2
5192  0820 cd0000        	call	_led_on
5195  0823 2011          	jra	L5752
5196  0825               L3062:
5197                     ; 663 		else if(MODE_EE==3)
5199  0825 c64046        	ld	a,_MODE_EE
5200  0828 a103          	cp	a,#3
5201  082a 260a          	jrne	L5752
5202                     ; 665 			led_on(2);
5204  082c a602          	ld	a,#2
5205  082e cd0000        	call	_led_on
5207                     ; 666 			led_on(3);
5209  0831 a603          	ld	a,#3
5210  0833 cd0000        	call	_led_on
5212  0836               L5752:
5213                     ; 669 	if(!optr_kontr_cnt)
5215  0836 725d0035      	tnz	_optr_kontr_cnt
5216  083a 2638          	jrne	L1162
5217                     ; 671 		if((outMode==omON)&&(out_stat[0]==osON))led_on(4);
5219  083c c6401d        	ld	a,_outMode
5220  083f a101          	cp	a,#1
5221  0841 260b          	jrne	L3162
5223  0843 b620          	ld	a,_out_stat
5224  0845 a101          	cp	a,#1
5225  0847 2605          	jrne	L3162
5228  0849 a604          	ld	a,#4
5229  084b cd0000        	call	_led_on
5231  084e               L3162:
5232                     ; 672 		if((outMode==omON)&&(out_stat[1]==osON))led_on(5);
5234  084e c6401d        	ld	a,_outMode
5235  0851 a101          	cp	a,#1
5236  0853 260b          	jrne	L5162
5238  0855 b621          	ld	a,_out_stat+1
5239  0857 a101          	cp	a,#1
5240  0859 2605          	jrne	L5162
5243  085b a605          	ld	a,#5
5244  085d cd0000        	call	_led_on
5246  0860               L5162:
5247                     ; 673 		if((outMode==omON)&&(out_stat[2]==osON))led_on(6);
5249  0860 c6401d        	ld	a,_outMode
5250  0863 a101          	cp	a,#1
5251  0865 2643          	jrne	L1262
5253  0867 b622          	ld	a,_out_stat+2
5254  0869 a101          	cp	a,#1
5255  086b 263d          	jrne	L1262
5258  086d a606          	ld	a,#6
5259  086f cd0000        	call	_led_on
5261  0872 2036          	jra	L1262
5262  0874               L1162:
5263                     ; 677 		if(((optr_kontr_cnt)&&(optr_stat&0x01)))led_on(4);
5265  0874 725d0035      	tnz	_optr_kontr_cnt
5266  0878 270c          	jreq	L3262
5268  087a c60036        	ld	a,_optr_stat
5269  087d a501          	bcp	a,#1
5270  087f 2705          	jreq	L3262
5273  0881 a604          	ld	a,#4
5274  0883 cd0000        	call	_led_on
5276  0886               L3262:
5277                     ; 678 		if(((optr_kontr_cnt)&&(optr_stat&0x02)))led_on(5);
5279  0886 725d0035      	tnz	_optr_kontr_cnt
5280  088a 270c          	jreq	L5262
5282  088c c60036        	ld	a,_optr_stat
5283  088f a502          	bcp	a,#2
5284  0891 2705          	jreq	L5262
5287  0893 a605          	ld	a,#5
5288  0895 cd0000        	call	_led_on
5290  0898               L5262:
5291                     ; 679 		if(((optr_kontr_cnt)&&(optr_stat&0x04)))led_on(6);
5293  0898 725d0035      	tnz	_optr_kontr_cnt
5294  089c 270c          	jreq	L1262
5296  089e c60036        	ld	a,_optr_stat
5297  08a1 a504          	bcp	a,#4
5298  08a3 2705          	jreq	L1262
5301  08a5 a606          	ld	a,#6
5302  08a7 cd0000        	call	_led_on
5304  08aa               L1262:
5305                     ; 682 	if(bERR)led_on(7);
5307  08aa 3d08          	tnz	_bERR
5308  08ac 2707          	jreq	L1362
5311  08ae a607          	ld	a,#7
5312  08b0 cd0000        	call	_led_on
5315  08b3 2009          	jra	L3362
5316  08b5               L1362:
5317                     ; 683 	else if(bWARN)led_flash(7);
5319  08b5 3d07          	tnz	_bWARN
5320  08b7 2705          	jreq	L3362
5323  08b9 a607          	ld	a,#7
5324  08bb cd0000        	call	_led_flash
5326  08be               L3362:
5327                     ; 688 	if(modemState==MS_LINKED_INITIALIZED)	led_on(8);
5329  08be b600          	ld	a,_modemState
5330  08c0 a105          	cp	a,#5
5331  08c2 2609          	jrne	L7362
5334  08c4 a608          	ld	a,#8
5335  08c6 cd0000        	call	_led_on
5338  08c9 ac321932      	jpf	L3462
5339  08cd               L7362:
5340                     ; 689 	else 									led_off(8);
5342  08cd a608          	ld	a,#8
5343  08cf cd0000        	call	_led_off
5345  08d2 ac321932      	jpf	L3462
5346  08d6               L3752:
5347                     ; 692 else if(ind==iDate_W)
5349  08d6 b661          	ld	a,_a_ind
5350  08d8 a104          	cp	a,#4
5351  08da 2661          	jrne	L5462
5352                     ; 694 	if(sub_ind==0)
5354  08dc 3d62          	tnz	_a_ind+1
5355  08de 262a          	jrne	L7462
5356                     ; 697 		int2indI_slkuf(time_date,1, 2, 0, 1, 0);
5358  08e0 4b00          	push	#0
5359  08e2 4b01          	push	#1
5360  08e4 4b00          	push	#0
5361  08e6 4b02          	push	#2
5362  08e8 4b01          	push	#1
5363  08ea b603          	ld	a,_time_date
5364  08ec 5f            	clrw	x
5365  08ed 97            	ld	xl,a
5366  08ee cd0000        	call	_int2indI_slkuf
5368  08f1 5b05          	addw	sp,#5
5369                     ; 698 		int2indII_slkuf(time_month,0, 2, 0, 1, 0);
5371  08f3 4b00          	push	#0
5372  08f5 4b01          	push	#1
5373  08f7 4b00          	push	#0
5374  08f9 4b02          	push	#2
5375  08fb 4b00          	push	#0
5376  08fd b60d          	ld	a,_time_month
5377  08ff 5f            	clrw	x
5378  0900 97            	ld	xl,a
5379  0901 cd0000        	call	_int2indII_slkuf
5381  0904 5b05          	addw	sp,#5
5383  0906 ac321932      	jpf	L3462
5384  090a               L7462:
5385                     ; 701 	else if(sub_ind==1)
5387  090a b662          	ld	a,_a_ind+1
5388  090c a101          	cp	a,#1
5389  090e 2703          	jreq	L073
5390  0910 cc1932        	jp	L3462
5391  0913               L073:
5392                     ; 704 		int2indI_slkuf(time_year,1, 2, 0, 1, 0);
5394  0913 4b00          	push	#0
5395  0915 4b01          	push	#1
5396  0917 4b00          	push	#0
5397  0919 4b02          	push	#2
5398  091b 4b01          	push	#1
5399  091d b60c          	ld	a,_time_year
5400  091f 5f            	clrw	x
5401  0920 97            	ld	xl,a
5402  0921 cd0000        	call	_int2indI_slkuf
5404  0924 5b05          	addw	sp,#5
5405                     ; 705 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 0);		
5407  0926 4b00          	push	#0
5408  0928 4b01          	push	#1
5409  092a 4b00          	push	#0
5410  092c 4b02          	push	#2
5411  092e 4b00          	push	#0
5412  0930 b60e          	ld	a,_time_day_of_week
5413  0932 5f            	clrw	x
5414  0933 97            	ld	xl,a
5415  0934 cd0000        	call	_int2indII_slkuf
5417  0937 5b05          	addw	sp,#5
5418  0939 ac321932      	jpf	L3462
5419  093d               L5462:
5420                     ; 709 else if(ind==iSet)
5422  093d b661          	ld	a,_a_ind
5423  093f a101          	cp	a,#1
5424  0941 2703          	jreq	L273
5425  0943 cc0a94        	jp	L7562
5426  0946               L273:
5427                     ; 711 	int2indI_slkuf(sub_ind+1,1, 2, 0, 1, 1);
5429  0946 4b01          	push	#1
5430  0948 4b01          	push	#1
5431  094a 4b00          	push	#0
5432  094c 4b02          	push	#2
5433  094e 4b01          	push	#1
5434  0950 5f            	clrw	x
5435  0951 b662          	ld	a,_a_ind+1
5436  0953 2a01          	jrpl	L26
5437  0955 53            	cplw	x
5438  0956               L26:
5439  0956 97            	ld	xl,a
5440  0957 5c            	incw	x
5441  0958 cd0000        	call	_int2indI_slkuf
5443  095b 5b05          	addw	sp,#5
5444                     ; 712 	ind_outB[3]=0b10010001;	
5446  095d 35910078      	mov	_ind_outB+3,#145
5447                     ; 714 	if(sub_ind==0)
5449  0961 3d62          	tnz	_a_ind+1
5450  0963 261b          	jrne	L1662
5451                     ; 716 		int2indII_slkuf(MODE_EE,0, 2, 0, 1, 0);
5453  0965 4b00          	push	#0
5454  0967 4b01          	push	#1
5455  0969 4b00          	push	#0
5456  096b 4b02          	push	#2
5457  096d 4b00          	push	#0
5458  096f 5f            	clrw	x
5459  0970 c64046        	ld	a,_MODE_EE
5460  0973 2a01          	jrpl	L46
5461  0975 53            	cplw	x
5462  0976               L46:
5463  0976 97            	ld	xl,a
5464  0977 cd0000        	call	_int2indII_slkuf
5466  097a 5b05          	addw	sp,#5
5468  097c ac321932      	jpf	L3462
5469  0980               L1662:
5470                     ; 718 	else if(sub_ind==1)
5472  0980 b662          	ld	a,_a_ind+1
5473  0982 a101          	cp	a,#1
5474  0984 261b          	jrne	L5662
5475                     ; 720 		int2indII_slkuf(NECC_TEMPER_WATER_EE,0, 2, 0, 1, 0);
5477  0986 4b00          	push	#0
5478  0988 4b01          	push	#1
5479  098a 4b00          	push	#0
5480  098c 4b02          	push	#2
5481  098e 4b00          	push	#0
5482  0990 5f            	clrw	x
5483  0991 c64045        	ld	a,_NECC_TEMPER_WATER_EE
5484  0994 2a01          	jrpl	L66
5485  0996 53            	cplw	x
5486  0997               L66:
5487  0997 97            	ld	xl,a
5488  0998 cd0000        	call	_int2indII_slkuf
5490  099b 5b05          	addw	sp,#5
5492  099d ac321932      	jpf	L3462
5493  09a1               L5662:
5494                     ; 722 	else if(sub_ind==2)
5496  09a1 b662          	ld	a,_a_ind+1
5497  09a3 a102          	cp	a,#2
5498  09a5 261b          	jrne	L1762
5499                     ; 724 		int2indII_slkuf(NECC_TEMPER_AIR_EE,0, 2, 0, 1, 0);
5501  09a7 4b00          	push	#0
5502  09a9 4b01          	push	#1
5503  09ab 4b00          	push	#0
5504  09ad 4b02          	push	#2
5505  09af 4b00          	push	#0
5506  09b1 5f            	clrw	x
5507  09b2 c64044        	ld	a,_NECC_TEMPER_AIR_EE
5508  09b5 2a01          	jrpl	L07
5509  09b7 53            	cplw	x
5510  09b8               L07:
5511  09b8 97            	ld	xl,a
5512  09b9 cd0000        	call	_int2indII_slkuf
5514  09bc 5b05          	addw	sp,#5
5516  09be ac321932      	jpf	L3462
5517  09c2               L1762:
5518                     ; 726 	else if(sub_ind==3)
5520  09c2 b662          	ld	a,_a_ind+1
5521  09c4 a103          	cp	a,#3
5522  09c6 261b          	jrne	L5762
5523                     ; 728 		int2indII_slkuf(MAX_POWER_EE,0, 2, 0, 1, 0);
5525  09c8 4b00          	push	#0
5526  09ca 4b01          	push	#1
5527  09cc 4b00          	push	#0
5528  09ce 4b02          	push	#2
5529  09d0 4b00          	push	#0
5530  09d2 5f            	clrw	x
5531  09d3 c64047        	ld	a,_MAX_POWER_EE
5532  09d6 2a01          	jrpl	L27
5533  09d8 53            	cplw	x
5534  09d9               L27:
5535  09d9 97            	ld	xl,a
5536  09da cd0000        	call	_int2indII_slkuf
5538  09dd 5b05          	addw	sp,#5
5540  09df ac321932      	jpf	L3462
5541  09e3               L5762:
5542                     ; 730 	else if(sub_ind==4)
5544  09e3 b662          	ld	a,_a_ind+1
5545  09e5 a104          	cp	a,#4
5546  09e7 2617          	jrne	L1072
5547                     ; 732 		int2indII_slkuf(time_year,0, 2, 0, 1, 0);
5549  09e9 4b00          	push	#0
5550  09eb 4b01          	push	#1
5551  09ed 4b00          	push	#0
5552  09ef 4b02          	push	#2
5553  09f1 4b00          	push	#0
5554  09f3 b60c          	ld	a,_time_year
5555  09f5 5f            	clrw	x
5556  09f6 97            	ld	xl,a
5557  09f7 cd0000        	call	_int2indII_slkuf
5559  09fa 5b05          	addw	sp,#5
5561  09fc ac321932      	jpf	L3462
5562  0a00               L1072:
5563                     ; 734 	else if(sub_ind==5)
5565  0a00 b662          	ld	a,_a_ind+1
5566  0a02 a105          	cp	a,#5
5567  0a04 2617          	jrne	L5072
5568                     ; 736 		int2indII_slkuf(time_month,0, 2, 0, 1, 0);
5570  0a06 4b00          	push	#0
5571  0a08 4b01          	push	#1
5572  0a0a 4b00          	push	#0
5573  0a0c 4b02          	push	#2
5574  0a0e 4b00          	push	#0
5575  0a10 b60d          	ld	a,_time_month
5576  0a12 5f            	clrw	x
5577  0a13 97            	ld	xl,a
5578  0a14 cd0000        	call	_int2indII_slkuf
5580  0a17 5b05          	addw	sp,#5
5582  0a19 ac321932      	jpf	L3462
5583  0a1d               L5072:
5584                     ; 738 	else if(sub_ind==6)
5586  0a1d b662          	ld	a,_a_ind+1
5587  0a1f a106          	cp	a,#6
5588  0a21 2617          	jrne	L1172
5589                     ; 740 		int2indII_slkuf(time_date,0, 2, 0, 1, 0);
5591  0a23 4b00          	push	#0
5592  0a25 4b01          	push	#1
5593  0a27 4b00          	push	#0
5594  0a29 4b02          	push	#2
5595  0a2b 4b00          	push	#0
5596  0a2d b603          	ld	a,_time_date
5597  0a2f 5f            	clrw	x
5598  0a30 97            	ld	xl,a
5599  0a31 cd0000        	call	_int2indII_slkuf
5601  0a34 5b05          	addw	sp,#5
5603  0a36 ac321932      	jpf	L3462
5604  0a3a               L1172:
5605                     ; 743 	else if(sub_ind==7)
5607  0a3a b662          	ld	a,_a_ind+1
5608  0a3c a107          	cp	a,#7
5609  0a3e 2617          	jrne	L5172
5610                     ; 745 		int2indII_slkuf(time_hour,0, 2, 0, 1, 0);
5612  0a40 4b00          	push	#0
5613  0a42 4b01          	push	#1
5614  0a44 4b00          	push	#0
5615  0a46 4b02          	push	#2
5616  0a48 4b00          	push	#0
5617  0a4a b60f          	ld	a,_time_hour
5618  0a4c 5f            	clrw	x
5619  0a4d 97            	ld	xl,a
5620  0a4e cd0000        	call	_int2indII_slkuf
5622  0a51 5b05          	addw	sp,#5
5624  0a53 ac321932      	jpf	L3462
5625  0a57               L5172:
5626                     ; 747 	else if(sub_ind==8)
5628  0a57 b662          	ld	a,_a_ind+1
5629  0a59 a108          	cp	a,#8
5630  0a5b 2617          	jrne	L1272
5631                     ; 749 		int2indII_slkuf(time_min,0, 2, 0, 1, 0);
5633  0a5d 4b00          	push	#0
5634  0a5f 4b01          	push	#1
5635  0a61 4b00          	push	#0
5636  0a63 4b02          	push	#2
5637  0a65 4b00          	push	#0
5638  0a67 b610          	ld	a,_time_min
5639  0a69 5f            	clrw	x
5640  0a6a 97            	ld	xl,a
5641  0a6b cd0000        	call	_int2indII_slkuf
5643  0a6e 5b05          	addw	sp,#5
5645  0a70 ac321932      	jpf	L3462
5646  0a74               L1272:
5647                     ; 751 	else if(sub_ind==9)
5649  0a74 b662          	ld	a,_a_ind+1
5650  0a76 a109          	cp	a,#9
5651  0a78 2703          	jreq	L473
5652  0a7a cc1932        	jp	L3462
5653  0a7d               L473:
5654                     ; 753 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 0);
5656  0a7d 4b00          	push	#0
5657  0a7f 4b01          	push	#1
5658  0a81 4b00          	push	#0
5659  0a83 4b02          	push	#2
5660  0a85 4b00          	push	#0
5661  0a87 b60e          	ld	a,_time_day_of_week
5662  0a89 5f            	clrw	x
5663  0a8a 97            	ld	xl,a
5664  0a8b cd0000        	call	_int2indII_slkuf
5666  0a8e 5b05          	addw	sp,#5
5667  0a90 ac321932      	jpf	L3462
5668  0a94               L7562:
5669                     ; 757 else if(ind==iSet_)
5671  0a94 b661          	ld	a,_a_ind
5672  0a96 a102          	cp	a,#2
5673  0a98 2703          	jreq	L673
5674  0a9a cc0beb        	jp	L1372
5675  0a9d               L673:
5676                     ; 759 	int2indI_slkuf(sub_ind+1,1, 2, 0, 1, 0);
5678  0a9d 4b00          	push	#0
5679  0a9f 4b01          	push	#1
5680  0aa1 4b00          	push	#0
5681  0aa3 4b02          	push	#2
5682  0aa5 4b01          	push	#1
5683  0aa7 5f            	clrw	x
5684  0aa8 b662          	ld	a,_a_ind+1
5685  0aaa 2a01          	jrpl	L47
5686  0aac 53            	cplw	x
5687  0aad               L47:
5688  0aad 97            	ld	xl,a
5689  0aae 5c            	incw	x
5690  0aaf cd0000        	call	_int2indI_slkuf
5692  0ab2 5b05          	addw	sp,#5
5693                     ; 760 	ind_outB[3]=0b10010001;	
5695  0ab4 35910078      	mov	_ind_outB+3,#145
5696                     ; 762 	if(sub_ind==0)
5698  0ab8 3d62          	tnz	_a_ind+1
5699  0aba 261b          	jrne	L3372
5700                     ; 764 		int2indII_slkuf(MODE_EE,0, 2, 0, 1, 1);
5702  0abc 4b01          	push	#1
5703  0abe 4b01          	push	#1
5704  0ac0 4b00          	push	#0
5705  0ac2 4b02          	push	#2
5706  0ac4 4b00          	push	#0
5707  0ac6 5f            	clrw	x
5708  0ac7 c64046        	ld	a,_MODE_EE
5709  0aca 2a01          	jrpl	L67
5710  0acc 53            	cplw	x
5711  0acd               L67:
5712  0acd 97            	ld	xl,a
5713  0ace cd0000        	call	_int2indII_slkuf
5715  0ad1 5b05          	addw	sp,#5
5717  0ad3 ac321932      	jpf	L3462
5718  0ad7               L3372:
5719                     ; 766 	else if(sub_ind==1)
5721  0ad7 b662          	ld	a,_a_ind+1
5722  0ad9 a101          	cp	a,#1
5723  0adb 261b          	jrne	L7372
5724                     ; 768 		int2indII_slkuf(NECC_TEMPER_WATER_EE,0, 2, 0, 1, 1);
5726  0add 4b01          	push	#1
5727  0adf 4b01          	push	#1
5728  0ae1 4b00          	push	#0
5729  0ae3 4b02          	push	#2
5730  0ae5 4b00          	push	#0
5731  0ae7 5f            	clrw	x
5732  0ae8 c64045        	ld	a,_NECC_TEMPER_WATER_EE
5733  0aeb 2a01          	jrpl	L001
5734  0aed 53            	cplw	x
5735  0aee               L001:
5736  0aee 97            	ld	xl,a
5737  0aef cd0000        	call	_int2indII_slkuf
5739  0af2 5b05          	addw	sp,#5
5741  0af4 ac321932      	jpf	L3462
5742  0af8               L7372:
5743                     ; 770 	else if(sub_ind==2)
5745  0af8 b662          	ld	a,_a_ind+1
5746  0afa a102          	cp	a,#2
5747  0afc 261b          	jrne	L3472
5748                     ; 772 		int2indII_slkuf(NECC_TEMPER_AIR_EE,0, 2, 0, 1, 1);
5750  0afe 4b01          	push	#1
5751  0b00 4b01          	push	#1
5752  0b02 4b00          	push	#0
5753  0b04 4b02          	push	#2
5754  0b06 4b00          	push	#0
5755  0b08 5f            	clrw	x
5756  0b09 c64044        	ld	a,_NECC_TEMPER_AIR_EE
5757  0b0c 2a01          	jrpl	L201
5758  0b0e 53            	cplw	x
5759  0b0f               L201:
5760  0b0f 97            	ld	xl,a
5761  0b10 cd0000        	call	_int2indII_slkuf
5763  0b13 5b05          	addw	sp,#5
5765  0b15 ac321932      	jpf	L3462
5766  0b19               L3472:
5767                     ; 774 	else if(sub_ind==3)
5769  0b19 b662          	ld	a,_a_ind+1
5770  0b1b a103          	cp	a,#3
5771  0b1d 261b          	jrne	L7472
5772                     ; 776 		int2indII_slkuf(MAX_POWER_EE,0, 2, 0, 1, 1);
5774  0b1f 4b01          	push	#1
5775  0b21 4b01          	push	#1
5776  0b23 4b00          	push	#0
5777  0b25 4b02          	push	#2
5778  0b27 4b00          	push	#0
5779  0b29 5f            	clrw	x
5780  0b2a c64047        	ld	a,_MAX_POWER_EE
5781  0b2d 2a01          	jrpl	L401
5782  0b2f 53            	cplw	x
5783  0b30               L401:
5784  0b30 97            	ld	xl,a
5785  0b31 cd0000        	call	_int2indII_slkuf
5787  0b34 5b05          	addw	sp,#5
5789  0b36 ac321932      	jpf	L3462
5790  0b3a               L7472:
5791                     ; 778 	else if(sub_ind==4)
5793  0b3a b662          	ld	a,_a_ind+1
5794  0b3c a104          	cp	a,#4
5795  0b3e 2617          	jrne	L3572
5796                     ; 780 		int2indII_slkuf(time_year,0, 2, 0, 1, 1);
5798  0b40 4b01          	push	#1
5799  0b42 4b01          	push	#1
5800  0b44 4b00          	push	#0
5801  0b46 4b02          	push	#2
5802  0b48 4b00          	push	#0
5803  0b4a b60c          	ld	a,_time_year
5804  0b4c 5f            	clrw	x
5805  0b4d 97            	ld	xl,a
5806  0b4e cd0000        	call	_int2indII_slkuf
5808  0b51 5b05          	addw	sp,#5
5810  0b53 ac321932      	jpf	L3462
5811  0b57               L3572:
5812                     ; 782 	else if(sub_ind==5)
5814  0b57 b662          	ld	a,_a_ind+1
5815  0b59 a105          	cp	a,#5
5816  0b5b 2617          	jrne	L7572
5817                     ; 784 		int2indII_slkuf(time_month,0, 2, 0, 1, 1);
5819  0b5d 4b01          	push	#1
5820  0b5f 4b01          	push	#1
5821  0b61 4b00          	push	#0
5822  0b63 4b02          	push	#2
5823  0b65 4b00          	push	#0
5824  0b67 b60d          	ld	a,_time_month
5825  0b69 5f            	clrw	x
5826  0b6a 97            	ld	xl,a
5827  0b6b cd0000        	call	_int2indII_slkuf
5829  0b6e 5b05          	addw	sp,#5
5831  0b70 ac321932      	jpf	L3462
5832  0b74               L7572:
5833                     ; 786 	else if(sub_ind==6)
5835  0b74 b662          	ld	a,_a_ind+1
5836  0b76 a106          	cp	a,#6
5837  0b78 2617          	jrne	L3672
5838                     ; 788 		int2indII_slkuf(time_date,0, 2, 0, 1, 1);
5840  0b7a 4b01          	push	#1
5841  0b7c 4b01          	push	#1
5842  0b7e 4b00          	push	#0
5843  0b80 4b02          	push	#2
5844  0b82 4b00          	push	#0
5845  0b84 b603          	ld	a,_time_date
5846  0b86 5f            	clrw	x
5847  0b87 97            	ld	xl,a
5848  0b88 cd0000        	call	_int2indII_slkuf
5850  0b8b 5b05          	addw	sp,#5
5852  0b8d ac321932      	jpf	L3462
5853  0b91               L3672:
5854                     ; 791 	else if(sub_ind==7)
5856  0b91 b662          	ld	a,_a_ind+1
5857  0b93 a107          	cp	a,#7
5858  0b95 2617          	jrne	L7672
5859                     ; 793 		int2indII_slkuf(time_hour,0, 2, 0, 1, 1);
5861  0b97 4b01          	push	#1
5862  0b99 4b01          	push	#1
5863  0b9b 4b00          	push	#0
5864  0b9d 4b02          	push	#2
5865  0b9f 4b00          	push	#0
5866  0ba1 b60f          	ld	a,_time_hour
5867  0ba3 5f            	clrw	x
5868  0ba4 97            	ld	xl,a
5869  0ba5 cd0000        	call	_int2indII_slkuf
5871  0ba8 5b05          	addw	sp,#5
5873  0baa ac321932      	jpf	L3462
5874  0bae               L7672:
5875                     ; 795 	else if(sub_ind==8)
5877  0bae b662          	ld	a,_a_ind+1
5878  0bb0 a108          	cp	a,#8
5879  0bb2 2617          	jrne	L3772
5880                     ; 797 		int2indII_slkuf(time_min,0, 2, 0, 1, 1);
5882  0bb4 4b01          	push	#1
5883  0bb6 4b01          	push	#1
5884  0bb8 4b00          	push	#0
5885  0bba 4b02          	push	#2
5886  0bbc 4b00          	push	#0
5887  0bbe b610          	ld	a,_time_min
5888  0bc0 5f            	clrw	x
5889  0bc1 97            	ld	xl,a
5890  0bc2 cd0000        	call	_int2indII_slkuf
5892  0bc5 5b05          	addw	sp,#5
5894  0bc7 ac321932      	jpf	L3462
5895  0bcb               L3772:
5896                     ; 799 	else if(sub_ind==9)
5898  0bcb b662          	ld	a,_a_ind+1
5899  0bcd a109          	cp	a,#9
5900  0bcf 2703          	jreq	L004
5901  0bd1 cc1932        	jp	L3462
5902  0bd4               L004:
5903                     ; 801 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 1);
5905  0bd4 4b01          	push	#1
5906  0bd6 4b01          	push	#1
5907  0bd8 4b00          	push	#0
5908  0bda 4b02          	push	#2
5909  0bdc 4b00          	push	#0
5910  0bde b60e          	ld	a,_time_day_of_week
5911  0be0 5f            	clrw	x
5912  0be1 97            	ld	xl,a
5913  0be2 cd0000        	call	_int2indII_slkuf
5915  0be5 5b05          	addw	sp,#5
5916  0be7 ac321932      	jpf	L3462
5917  0beb               L1372:
5918                     ; 805 else if(ind==iSetTable)
5920  0beb b661          	ld	a,_a_ind
5921  0bed a105          	cp	a,#5
5922  0bef 2703          	jreq	L204
5923  0bf1 cc0cff        	jp	L3003
5924  0bf4               L204:
5925                     ; 807 	ind_outB[3]=0b11001110;
5927  0bf4 35ce0078      	mov	_ind_outB+3,#206
5928                     ; 808 	int2indI_slkuf(((sub_ind/5)+1)*10 + ((sub_ind)%5)+1,1, 2, 1, 0, 1);
5930  0bf8 4b01          	push	#1
5931  0bfa 4b00          	push	#0
5932  0bfc 4b01          	push	#1
5933  0bfe 4b02          	push	#2
5934  0c00 4b01          	push	#1
5935  0c02 5f            	clrw	x
5936  0c03 b662          	ld	a,_a_ind+1
5937  0c05 2a01          	jrpl	L601
5938  0c07 53            	cplw	x
5939  0c08               L601:
5940  0c08 97            	ld	xl,a
5941  0c09 a605          	ld	a,#5
5942  0c0b cd0000        	call	c_smodx
5944  0c0e 1f06          	ldw	(OFST+4,sp),x
5945  0c10 5f            	clrw	x
5946  0c11 b662          	ld	a,_a_ind+1
5947  0c13 2a01          	jrpl	L011
5948  0c15 53            	cplw	x
5949  0c16               L011:
5950  0c16 97            	ld	xl,a
5951  0c17 a605          	ld	a,#5
5952  0c19 cd0000        	call	c_sdivx
5954  0c1c 90ae000a      	ldw	y,#10
5955  0c20 cd0000        	call	c_imul
5957  0c23 72fb06        	addw	x,(OFST+4,sp)
5958  0c26 1c000b        	addw	x,#11
5959  0c29 cd0000        	call	_int2indI_slkuf
5961  0c2c 5b05          	addw	sp,#5
5962                     ; 810 	if(sub_ind1==0) 
5964  0c2e 3d63          	tnz	_a_ind+2
5965  0c30 2703cc0cbb    	jrne	L5003
5966                     ; 812 		int2indII_slkuf((TABLE_TIME_EE[sub_ind/5][sub_ind%5]*10)/60,2, 2, 0, 1, 0);
5968  0c35 4b00          	push	#0
5969  0c37 4b01          	push	#1
5970  0c39 4b00          	push	#0
5971  0c3b 4b02          	push	#2
5972  0c3d 4b02          	push	#2
5973  0c3f 5f            	clrw	x
5974  0c40 b662          	ld	a,_a_ind+1
5975  0c42 2a01          	jrpl	L211
5976  0c44 53            	cplw	x
5977  0c45               L211:
5978  0c45 97            	ld	xl,a
5979  0c46 a605          	ld	a,#5
5980  0c48 cd0000        	call	c_smodx
5982  0c4b 1f06          	ldw	(OFST+4,sp),x
5983  0c4d 5f            	clrw	x
5984  0c4e b662          	ld	a,_a_ind+1
5985  0c50 2a01          	jrpl	L411
5986  0c52 53            	cplw	x
5987  0c53               L411:
5988  0c53 97            	ld	xl,a
5989  0c54 a605          	ld	a,#5
5990  0c56 cd0000        	call	c_sdivx
5992  0c59 90ae0005      	ldw	y,#5
5993  0c5d cd0000        	call	c_imul
5995  0c60 72fb06        	addw	x,(OFST+4,sp)
5996  0c63 d64020        	ld	a,(_TABLE_TIME_EE,x)
5997  0c66 97            	ld	xl,a
5998  0c67 a60a          	ld	a,#10
5999  0c69 42            	mul	x,a
6000  0c6a a63c          	ld	a,#60
6001  0c6c cd0000        	call	c_sdivx
6003  0c6f cd0000        	call	_int2indII_slkuf
6005  0c72 5b05          	addw	sp,#5
6006                     ; 813 		int2indII_slkuf((TABLE_TIME_EE[sub_ind/5][sub_ind%5]*10)%60,0, 2, 0, 0, 0);
6008  0c74 4b00          	push	#0
6009  0c76 4b00          	push	#0
6010  0c78 4b00          	push	#0
6011  0c7a 4b02          	push	#2
6012  0c7c 4b00          	push	#0
6013  0c7e 5f            	clrw	x
6014  0c7f b662          	ld	a,_a_ind+1
6015  0c81 2a01          	jrpl	L611
6016  0c83 53            	cplw	x
6017  0c84               L611:
6018  0c84 97            	ld	xl,a
6019  0c85 a605          	ld	a,#5
6020  0c87 cd0000        	call	c_smodx
6022  0c8a 1f06          	ldw	(OFST+4,sp),x
6023  0c8c 5f            	clrw	x
6024  0c8d b662          	ld	a,_a_ind+1
6025  0c8f 2a01          	jrpl	L021
6026  0c91 53            	cplw	x
6027  0c92               L021:
6028  0c92 97            	ld	xl,a
6029  0c93 a605          	ld	a,#5
6030  0c95 cd0000        	call	c_sdivx
6032  0c98 90ae0005      	ldw	y,#5
6033  0c9c cd0000        	call	c_imul
6035  0c9f 72fb06        	addw	x,(OFST+4,sp)
6036  0ca2 d64020        	ld	a,(_TABLE_TIME_EE,x)
6037  0ca5 97            	ld	xl,a
6038  0ca6 a60a          	ld	a,#10
6039  0ca8 42            	mul	x,a
6040  0ca9 a63c          	ld	a,#60
6041  0cab cd0000        	call	c_smodx
6043  0cae cd0000        	call	_int2indII_slkuf
6045  0cb1 5b05          	addw	sp,#5
6046                     ; 814 		ind_outG[2]&=0b11111110;
6048  0cb3 72110018      	bres	_ind_outG+2,#0
6050  0cb7 ac321932      	jpf	L3462
6051  0cbb               L5003:
6052                     ; 818 		int2indII_slkuf(TABLE_TEMPER_EE[sub_ind/5][sub_ind%5],1, 2, 0, 1, 0);
6054  0cbb 4b00          	push	#0
6055  0cbd 4b01          	push	#1
6056  0cbf 4b00          	push	#0
6057  0cc1 4b02          	push	#2
6058  0cc3 4b01          	push	#1
6059  0cc5 5f            	clrw	x
6060  0cc6 b662          	ld	a,_a_ind+1
6061  0cc8 2a01          	jrpl	L221
6062  0cca 53            	cplw	x
6063  0ccb               L221:
6064  0ccb 97            	ld	xl,a
6065  0ccc a605          	ld	a,#5
6066  0cce cd0000        	call	c_smodx
6068  0cd1 1f06          	ldw	(OFST+4,sp),x
6069  0cd3 5f            	clrw	x
6070  0cd4 b662          	ld	a,_a_ind+1
6071  0cd6 2a01          	jrpl	L421
6072  0cd8 53            	cplw	x
6073  0cd9               L421:
6074  0cd9 97            	ld	xl,a
6075  0cda a605          	ld	a,#5
6076  0cdc cd0000        	call	c_sdivx
6078  0cdf 90ae0005      	ldw	y,#5
6079  0ce3 cd0000        	call	c_imul
6081  0ce6 72fb06        	addw	x,(OFST+4,sp)
6082  0ce9 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
6083  0cec 5f            	clrw	x
6084  0ced 4d            	tnz	a
6085  0cee 2a01          	jrpl	L621
6086  0cf0 53            	cplw	x
6087  0cf1               L621:
6088  0cf1 97            	ld	xl,a
6089  0cf2 cd0000        	call	_int2indII_slkuf
6091  0cf5 5b05          	addw	sp,#5
6092                     ; 819 		ind_outC[0]=0b00111000;
6094  0cf7 3538000a      	mov	_ind_outC,#56
6095  0cfb ac321932      	jpf	L3462
6096  0cff               L3003:
6097                     ; 824 else if(ind==iSetTable_)
6099  0cff b661          	ld	a,_a_ind
6100  0d01 a106          	cp	a,#6
6101  0d03 2703          	jreq	L404
6102  0d05 cc0e1f        	jp	L3103
6103  0d08               L404:
6104                     ; 826 	ind_outB[3]=0b11001110;
6106  0d08 35ce0078      	mov	_ind_outB+3,#206
6107                     ; 827 	int2indI_slkuf(((sub_ind/5)+1)*10 + ((sub_ind)%5)+1,1, 2, 1, 0, 0);
6109  0d0c 4b00          	push	#0
6110  0d0e 4b00          	push	#0
6111  0d10 4b01          	push	#1
6112  0d12 4b02          	push	#2
6113  0d14 4b01          	push	#1
6114  0d16 5f            	clrw	x
6115  0d17 b662          	ld	a,_a_ind+1
6116  0d19 2a01          	jrpl	L031
6117  0d1b 53            	cplw	x
6118  0d1c               L031:
6119  0d1c 97            	ld	xl,a
6120  0d1d a605          	ld	a,#5
6121  0d1f cd0000        	call	c_smodx
6123  0d22 1f06          	ldw	(OFST+4,sp),x
6124  0d24 5f            	clrw	x
6125  0d25 b662          	ld	a,_a_ind+1
6126  0d27 2a01          	jrpl	L231
6127  0d29 53            	cplw	x
6128  0d2a               L231:
6129  0d2a 97            	ld	xl,a
6130  0d2b a605          	ld	a,#5
6131  0d2d cd0000        	call	c_sdivx
6133  0d30 90ae000a      	ldw	y,#10
6134  0d34 cd0000        	call	c_imul
6136  0d37 72fb06        	addw	x,(OFST+4,sp)
6137  0d3a 1c000b        	addw	x,#11
6138  0d3d cd0000        	call	_int2indI_slkuf
6140  0d40 5b05          	addw	sp,#5
6141                     ; 829 	if(sub_ind1==0) 
6143  0d42 3d63          	tnz	_a_ind+2
6144  0d44 2703          	jreq	L604
6145  0d46 cc0ddb        	jp	L5103
6146  0d49               L604:
6147                     ; 831 		int2indII_slkuf((TABLE_TIME_EE[sub_ind/5][sub_ind%5]*10)/60,2, 2, 0, 1, 1);
6149  0d49 4b01          	push	#1
6150  0d4b 4b01          	push	#1
6151  0d4d 4b00          	push	#0
6152  0d4f 4b02          	push	#2
6153  0d51 4b02          	push	#2
6154  0d53 5f            	clrw	x
6155  0d54 b662          	ld	a,_a_ind+1
6156  0d56 2a01          	jrpl	L431
6157  0d58 53            	cplw	x
6158  0d59               L431:
6159  0d59 97            	ld	xl,a
6160  0d5a a605          	ld	a,#5
6161  0d5c cd0000        	call	c_smodx
6163  0d5f 1f06          	ldw	(OFST+4,sp),x
6164  0d61 5f            	clrw	x
6165  0d62 b662          	ld	a,_a_ind+1
6166  0d64 2a01          	jrpl	L631
6167  0d66 53            	cplw	x
6168  0d67               L631:
6169  0d67 97            	ld	xl,a
6170  0d68 a605          	ld	a,#5
6171  0d6a cd0000        	call	c_sdivx
6173  0d6d 90ae0005      	ldw	y,#5
6174  0d71 cd0000        	call	c_imul
6176  0d74 72fb06        	addw	x,(OFST+4,sp)
6177  0d77 d64020        	ld	a,(_TABLE_TIME_EE,x)
6178  0d7a 97            	ld	xl,a
6179  0d7b a60a          	ld	a,#10
6180  0d7d 42            	mul	x,a
6181  0d7e a63c          	ld	a,#60
6182  0d80 cd0000        	call	c_sdivx
6184  0d83 cd0000        	call	_int2indII_slkuf
6186  0d86 5b05          	addw	sp,#5
6187                     ; 832 		int2indII_slkuf((TABLE_TIME_EE[sub_ind/5][sub_ind%5]*10)%60,0, 2, 0, 0, 1);
6189  0d88 4b01          	push	#1
6190  0d8a 4b00          	push	#0
6191  0d8c 4b00          	push	#0
6192  0d8e 4b02          	push	#2
6193  0d90 4b00          	push	#0
6194  0d92 5f            	clrw	x
6195  0d93 b662          	ld	a,_a_ind+1
6196  0d95 2a01          	jrpl	L041
6197  0d97 53            	cplw	x
6198  0d98               L041:
6199  0d98 97            	ld	xl,a
6200  0d99 a605          	ld	a,#5
6201  0d9b cd0000        	call	c_smodx
6203  0d9e 1f06          	ldw	(OFST+4,sp),x
6204  0da0 5f            	clrw	x
6205  0da1 b662          	ld	a,_a_ind+1
6206  0da3 2a01          	jrpl	L241
6207  0da5 53            	cplw	x
6208  0da6               L241:
6209  0da6 97            	ld	xl,a
6210  0da7 a605          	ld	a,#5
6211  0da9 cd0000        	call	c_sdivx
6213  0dac 90ae0005      	ldw	y,#5
6214  0db0 cd0000        	call	c_imul
6216  0db3 72fb06        	addw	x,(OFST+4,sp)
6217  0db6 d64020        	ld	a,(_TABLE_TIME_EE,x)
6218  0db9 97            	ld	xl,a
6219  0dba a60a          	ld	a,#10
6220  0dbc 42            	mul	x,a
6221  0dbd a63c          	ld	a,#60
6222  0dbf cd0000        	call	c_smodx
6224  0dc2 cd0000        	call	_int2indII_slkuf
6226  0dc5 5b05          	addw	sp,#5
6227                     ; 833 		if(!bFL2)	ind_outG[2]&=0b11111110;
6229  0dc7 3d27          	tnz	_bFL2
6230  0dc9 2608          	jrne	L7103
6233  0dcb 72110018      	bres	_ind_outG+2,#0
6235  0dcf ac321932      	jpf	L3462
6236  0dd3               L7103:
6237                     ; 834 		else 		ind_outG[2]|=0b00000001;
6239  0dd3 72100018      	bset	_ind_outG+2,#0
6240  0dd7 ac321932      	jpf	L3462
6241  0ddb               L5103:
6242                     ; 838 		int2indII_slkuf(TABLE_TEMPER_EE[sub_ind/5][sub_ind%5],1, 2, 0, 1, 1);
6244  0ddb 4b01          	push	#1
6245  0ddd 4b01          	push	#1
6246  0ddf 4b00          	push	#0
6247  0de1 4b02          	push	#2
6248  0de3 4b01          	push	#1
6249  0de5 5f            	clrw	x
6250  0de6 b662          	ld	a,_a_ind+1
6251  0de8 2a01          	jrpl	L441
6252  0dea 53            	cplw	x
6253  0deb               L441:
6254  0deb 97            	ld	xl,a
6255  0dec a605          	ld	a,#5
6256  0dee cd0000        	call	c_smodx
6258  0df1 1f06          	ldw	(OFST+4,sp),x
6259  0df3 5f            	clrw	x
6260  0df4 b662          	ld	a,_a_ind+1
6261  0df6 2a01          	jrpl	L641
6262  0df8 53            	cplw	x
6263  0df9               L641:
6264  0df9 97            	ld	xl,a
6265  0dfa a605          	ld	a,#5
6266  0dfc cd0000        	call	c_sdivx
6268  0dff 90ae0005      	ldw	y,#5
6269  0e03 cd0000        	call	c_imul
6271  0e06 72fb06        	addw	x,(OFST+4,sp)
6272  0e09 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
6273  0e0c 5f            	clrw	x
6274  0e0d 4d            	tnz	a
6275  0e0e 2a01          	jrpl	L051
6276  0e10 53            	cplw	x
6277  0e11               L051:
6278  0e11 97            	ld	xl,a
6279  0e12 cd0000        	call	_int2indII_slkuf
6281  0e15 5b05          	addw	sp,#5
6282                     ; 839 		ind_outC[0]=0b00111000;
6284  0e17 3538000a      	mov	_ind_outC,#56
6285  0e1b ac321932      	jpf	L3462
6286  0e1f               L3103:
6287                     ; 844 else if(ind==iDeb)
6289  0e1f b661          	ld	a,_a_ind
6290  0e21 a107          	cp	a,#7
6291  0e23 2703          	jreq	L014
6292  0e25 cc134a        	jp	L7203
6293  0e28               L014:
6294                     ; 846 	led_mask_off(0x00);
6296  0e28 4f            	clr	a
6297  0e29 cd0000        	call	_led_mask_off
6299                     ; 847 	led_on(sub_ind+1);
6301  0e2c b662          	ld	a,_a_ind+1
6302  0e2e 4c            	inc	a
6303  0e2f cd0000        	call	_led_on
6305                     ; 849 	if(sub_ind==0)
6307  0e32 3d62          	tnz	_a_ind+1
6308  0e34 2630          	jrne	L1303
6309                     ; 851 		int2indI_slkuf(targetTemper,1, 2, 0, 0, 0);
6311  0e36 4b00          	push	#0
6312  0e38 4b00          	push	#0
6313  0e3a 4b00          	push	#0
6314  0e3c 4b02          	push	#2
6315  0e3e 4b01          	push	#1
6316  0e40 5f            	clrw	x
6317  0e41 b61c          	ld	a,_targetTemper
6318  0e43 2a01          	jrpl	L251
6319  0e45 53            	cplw	x
6320  0e46               L251:
6321  0e46 97            	ld	xl,a
6322  0e47 cd0000        	call	_int2indI_slkuf
6324  0e4a 5b05          	addw	sp,#5
6325                     ; 852 		int2indII_slkuf(aktualTemper,0, 2, 0, 0, 0);
6327  0e4c 4b00          	push	#0
6328  0e4e 4b00          	push	#0
6329  0e50 4b00          	push	#0
6330  0e52 4b02          	push	#2
6331  0e54 4b00          	push	#0
6332  0e56 5f            	clrw	x
6333  0e57 b61d          	ld	a,_aktualTemper
6334  0e59 2a01          	jrpl	L451
6335  0e5b 53            	cplw	x
6336  0e5c               L451:
6337  0e5c 97            	ld	xl,a
6338  0e5d cd0000        	call	_int2indII_slkuf
6340  0e60 5b05          	addw	sp,#5
6342  0e62 ac321932      	jpf	L3462
6343  0e66               L1303:
6344                     ; 855 	else if(sub_ind==1)
6346  0e66 b662          	ld	a,_a_ind+1
6347  0e68 a101          	cp	a,#1
6348  0e6a 2630          	jrne	L5303
6349                     ; 857 		int2indI_slkuf(temperOfWater,1, 2, 0, 0, 0);
6351  0e6c 4b00          	push	#0
6352  0e6e 4b00          	push	#0
6353  0e70 4b00          	push	#0
6354  0e72 4b02          	push	#2
6355  0e74 4b01          	push	#1
6356  0e76 5f            	clrw	x
6357  0e77 b61f          	ld	a,_temperOfWater
6358  0e79 2a01          	jrpl	L651
6359  0e7b 53            	cplw	x
6360  0e7c               L651:
6361  0e7c 97            	ld	xl,a
6362  0e7d cd0000        	call	_int2indI_slkuf
6364  0e80 5b05          	addw	sp,#5
6365                     ; 858 		int2indII_slkuf(temperOfAir,0, 2, 0, 0, 0);
6367  0e82 4b00          	push	#0
6368  0e84 4b00          	push	#0
6369  0e86 4b00          	push	#0
6370  0e88 4b02          	push	#2
6371  0e8a 4b00          	push	#0
6372  0e8c 5f            	clrw	x
6373  0e8d b61e          	ld	a,_temperOfAir
6374  0e8f 2a01          	jrpl	L061
6375  0e91 53            	cplw	x
6376  0e92               L061:
6377  0e92 97            	ld	xl,a
6378  0e93 cd0000        	call	_int2indII_slkuf
6380  0e96 5b05          	addw	sp,#5
6382  0e98 ac321932      	jpf	L3462
6383  0e9c               L5303:
6384                     ; 861 	else if(sub_ind==2)
6386  0e9c b662          	ld	a,_a_ind+1
6387  0e9e a102          	cp	a,#2
6388  0ea0 2647          	jrne	L1403
6389                     ; 863 		int2indI_slkuf(MAX_POWER_EE,1, 2, 0, 0, 0);
6391  0ea2 4b00          	push	#0
6392  0ea4 4b00          	push	#0
6393  0ea6 4b00          	push	#0
6394  0ea8 4b02          	push	#2
6395  0eaa 4b01          	push	#1
6396  0eac 5f            	clrw	x
6397  0ead c64047        	ld	a,_MAX_POWER_EE
6398  0eb0 2a01          	jrpl	L261
6399  0eb2 53            	cplw	x
6400  0eb3               L261:
6401  0eb3 97            	ld	xl,a
6402  0eb4 cd0000        	call	_int2indI_slkuf
6404  0eb7 5b05          	addw	sp,#5
6405                     ; 864 		int2indII_slkuf(powerNeccDelta,2, 2, 0, 0, 0);
6407  0eb9 4b00          	push	#0
6408  0ebb 4b00          	push	#0
6409  0ebd 4b00          	push	#0
6410  0ebf 4b02          	push	#2
6411  0ec1 4b02          	push	#2
6412  0ec3 5f            	clrw	x
6413  0ec4 b60b          	ld	a,_powerNeccDelta
6414  0ec6 2a01          	jrpl	L461
6415  0ec8 53            	cplw	x
6416  0ec9               L461:
6417  0ec9 97            	ld	xl,a
6418  0eca cd0000        	call	_int2indII_slkuf
6420  0ecd 5b05          	addw	sp,#5
6421                     ; 865 		int2indII_slkuf(powerNecc,0, 2, 0, 0, 0);
6423  0ecf 4b00          	push	#0
6424  0ed1 4b00          	push	#0
6425  0ed3 4b00          	push	#0
6426  0ed5 4b02          	push	#2
6427  0ed7 4b00          	push	#0
6428  0ed9 5f            	clrw	x
6429  0eda b625          	ld	a,_powerNecc
6430  0edc 2a01          	jrpl	L661
6431  0ede 53            	cplw	x
6432  0edf               L661:
6433  0edf 97            	ld	xl,a
6434  0ee0 cd0000        	call	_int2indII_slkuf
6436  0ee3 5b05          	addw	sp,#5
6438  0ee5 ac321932      	jpf	L3462
6439  0ee9               L1403:
6440                     ; 867 	else if(sub_ind==3)
6442  0ee9 b662          	ld	a,_a_ind+1
6443  0eeb a103          	cp	a,#3
6444  0eed 267c          	jrne	L5403
6445                     ; 869 		int2indI_slkuf(aktualTemper,2, 2, 0, 0, 0);	
6447  0eef 4b00          	push	#0
6448  0ef1 4b00          	push	#0
6449  0ef3 4b00          	push	#0
6450  0ef5 4b02          	push	#2
6451  0ef7 4b02          	push	#2
6452  0ef9 5f            	clrw	x
6453  0efa b61d          	ld	a,_aktualTemper
6454  0efc 2a01          	jrpl	L071
6455  0efe 53            	cplw	x
6456  0eff               L071:
6457  0eff 97            	ld	xl,a
6458  0f00 cd0000        	call	_int2indI_slkuf
6460  0f03 5b05          	addw	sp,#5
6461                     ; 870 		int2indI_slkuf(powerNecc,1, 1, 0, 0, 0);
6463  0f05 4b00          	push	#0
6464  0f07 4b00          	push	#0
6465  0f09 4b00          	push	#0
6466  0f0b 4b01          	push	#1
6467  0f0d 4b01          	push	#1
6468  0f0f 5f            	clrw	x
6469  0f10 b625          	ld	a,_powerNecc
6470  0f12 2a01          	jrpl	L271
6471  0f14 53            	cplw	x
6472  0f15               L271:
6473  0f15 97            	ld	xl,a
6474  0f16 cd0000        	call	_int2indI_slkuf
6476  0f19 5b05          	addw	sp,#5
6477                     ; 871 		int2indII_slkuf(out_stat[0],3, 1, 0, 0, 0);
6479  0f1b 4b00          	push	#0
6480  0f1d 4b00          	push	#0
6481  0f1f 4b00          	push	#0
6482  0f21 4b01          	push	#1
6483  0f23 4b03          	push	#3
6484  0f25 b620          	ld	a,_out_stat
6485  0f27 5f            	clrw	x
6486  0f28 97            	ld	xl,a
6487  0f29 cd0000        	call	_int2indII_slkuf
6489  0f2c 5b05          	addw	sp,#5
6490                     ; 872 		int2indII_slkuf(out_stat[1],2, 1, 0, 0, 0);
6492  0f2e 4b00          	push	#0
6493  0f30 4b00          	push	#0
6494  0f32 4b00          	push	#0
6495  0f34 4b01          	push	#1
6496  0f36 4b02          	push	#2
6497  0f38 b621          	ld	a,_out_stat+1
6498  0f3a 5f            	clrw	x
6499  0f3b 97            	ld	xl,a
6500  0f3c cd0000        	call	_int2indII_slkuf
6502  0f3f 5b05          	addw	sp,#5
6503                     ; 873 		int2indII_slkuf(out_stat[2],1, 1, 0, 0, 0);
6505  0f41 4b00          	push	#0
6506  0f43 4b00          	push	#0
6507  0f45 4b00          	push	#0
6508  0f47 4b01          	push	#1
6509  0f49 4b01          	push	#1
6510  0f4b b622          	ld	a,_out_stat+2
6511  0f4d 5f            	clrw	x
6512  0f4e 97            	ld	xl,a
6513  0f4f cd0000        	call	_int2indII_slkuf
6515  0f52 5b05          	addw	sp,#5
6516                     ; 874 		int2indII_slkuf(fiksRandom,0, 1, 0, 0, 0);
6518  0f54 4b00          	push	#0
6519  0f56 4b00          	push	#0
6520  0f58 4b00          	push	#0
6521  0f5a 4b01          	push	#1
6522  0f5c 4b00          	push	#0
6523  0f5e b684          	ld	a,_fiksRandom
6524  0f60 5f            	clrw	x
6525  0f61 97            	ld	xl,a
6526  0f62 cd0000        	call	_int2indII_slkuf
6528  0f65 5b05          	addw	sp,#5
6530  0f67 ac321932      	jpf	L3462
6531  0f6b               L5403:
6532                     ; 876 	else if(sub_ind==4)
6534  0f6b b662          	ld	a,_a_ind+1
6535  0f6d a104          	cp	a,#4
6536  0f6f 2640          	jrne	L1503
6537                     ; 878 		int2indI_slkuf(temperRegToSheduler,1, 2, 0, 0, 0);	
6539  0f71 4b00          	push	#0
6540  0f73 4b00          	push	#0
6541  0f75 4b00          	push	#0
6542  0f77 4b02          	push	#2
6543  0f79 4b01          	push	#1
6544  0f7b 5f            	clrw	x
6545  0f7c b604          	ld	a,_temperRegToSheduler
6546  0f7e 2a01          	jrpl	L471
6547  0f80 53            	cplw	x
6548  0f81               L471:
6549  0f81 97            	ld	xl,a
6550  0f82 cd0000        	call	_int2indI_slkuf
6552  0f85 5b05          	addw	sp,#5
6553                     ; 880 		int2indII_slkuf(time_day_of_week,3, 1, 0, 0, 0);
6555  0f87 4b00          	push	#0
6556  0f89 4b00          	push	#0
6557  0f8b 4b00          	push	#0
6558  0f8d 4b01          	push	#1
6559  0f8f 4b03          	push	#3
6560  0f91 b60e          	ld	a,_time_day_of_week
6561  0f93 5f            	clrw	x
6562  0f94 97            	ld	xl,a
6563  0f95 cd0000        	call	_int2indII_slkuf
6565  0f98 5b05          	addw	sp,#5
6566                     ; 883 		int2indII_slkuf(day_sheduler_time,0, 3, 0, 0, 0);
6568  0f9a 4b00          	push	#0
6569  0f9c 4b00          	push	#0
6570  0f9e 4b00          	push	#0
6571  0fa0 4b03          	push	#3
6572  0fa2 4b00          	push	#0
6573  0fa4 b602          	ld	a,_day_sheduler_time
6574  0fa6 5f            	clrw	x
6575  0fa7 97            	ld	xl,a
6576  0fa8 cd0000        	call	_int2indII_slkuf
6578  0fab 5b05          	addw	sp,#5
6580  0fad ac321932      	jpf	L3462
6581  0fb1               L1503:
6582                     ; 886 	else if(sub_ind==5)
6584  0fb1 b662          	ld	a,_a_ind+1
6585  0fb3 a105          	cp	a,#5
6586  0fb5 2638          	jrne	L5503
6587                     ; 888 		int2indI_slkuf(modemDrvPDUSMSSendStepCnt,1, 3, 0, 0, 0);	
6589  0fb7 4b00          	push	#0
6590  0fb9 4b00          	push	#0
6591  0fbb 4b00          	push	#0
6592  0fbd 4b03          	push	#3
6593  0fbf 4b01          	push	#1
6594  0fc1 be00          	ldw	x,_modemDrvPDUSMSSendStepCnt
6595  0fc3 cd0000        	call	_int2indI_slkuf
6597  0fc6 5b05          	addw	sp,#5
6598                     ; 890 		int2indII_slkuf(modemDrvWatchDogCnt,0, 3, 0, 0, 0);
6600  0fc8 4b00          	push	#0
6601  0fca 4b00          	push	#0
6602  0fcc 4b00          	push	#0
6603  0fce 4b03          	push	#3
6604  0fd0 4b00          	push	#0
6605  0fd2 be00          	ldw	x,_modemDrvWatchDogCnt
6606  0fd4 cd0000        	call	_int2indII_slkuf
6608  0fd7 5b05          	addw	sp,#5
6609                     ; 893 		int2indII_slkuf(4,3, 1, 0, 0, 1);
6611  0fd9 4b01          	push	#1
6612  0fdb 4b00          	push	#0
6613  0fdd 4b00          	push	#0
6614  0fdf 4b01          	push	#1
6615  0fe1 4b03          	push	#3
6616  0fe3 ae0004        	ldw	x,#4
6617  0fe6 cd0000        	call	_int2indII_slkuf
6619  0fe9 5b05          	addw	sp,#5
6621  0feb ac321932      	jpf	L3462
6622  0fef               L5503:
6623                     ; 895 	else if(sub_ind==6)
6625  0fef b662          	ld	a,_a_ind+1
6626  0ff1 a106          	cp	a,#6
6627  0ff3 263b          	jrne	L1603
6628                     ; 897 		int2indI_slkuf(main_power_off_hndl_cnt,1, 3, 0, 0, 0);	
6630  0ff5 4b00          	push	#0
6631  0ff7 4b00          	push	#0
6632  0ff9 4b00          	push	#0
6633  0ffb 4b03          	push	#3
6634  0ffd 4b01          	push	#1
6635  0fff ce002b        	ldw	x,_main_power_off_hndl_cnt
6636  1002 cd0000        	call	_int2indI_slkuf
6638  1005 5b05          	addw	sp,#5
6639                     ; 899 		int2indII_slkuf(cbcSystemRequ,0, 1, 0, 0, 0);
6641  1007 4b00          	push	#0
6642  1009 4b00          	push	#0
6643  100b 4b00          	push	#0
6644  100d 4b01          	push	#1
6645  100f 4b00          	push	#0
6646  1011 c6002a        	ld	a,_cbcSystemRequ
6647  1014 5f            	clrw	x
6648  1015 97            	ld	xl,a
6649  1016 cd0000        	call	_int2indII_slkuf
6651  1019 5b05          	addw	sp,#5
6652                     ; 900 		int2indII_slkuf(modemDrvPowerDownStepCnt,2, 2, 0, 0, 0);
6654  101b 4b00          	push	#0
6655  101d 4b00          	push	#0
6656  101f 4b00          	push	#0
6657  1021 4b02          	push	#2
6658  1023 4b02          	push	#2
6659  1025 be00          	ldw	x,_modemDrvPowerDownStepCnt
6660  1027 cd0000        	call	_int2indII_slkuf
6662  102a 5b05          	addw	sp,#5
6664  102c ac321932      	jpf	L3462
6665  1030               L1603:
6666                     ; 905 	else if(sub_ind==7)
6668  1030 b662          	ld	a,_a_ind+1
6669  1032 a107          	cp	a,#7
6670  1034 2628          	jrne	L5603
6671                     ; 907 		int2indI_slkuf(tx_counter1,1, 3, 0, 0, 0);	
6673  1036 4b00          	push	#0
6674  1038 4b00          	push	#0
6675  103a 4b00          	push	#0
6676  103c 4b03          	push	#3
6677  103e 4b01          	push	#1
6678  1040 ce0000        	ldw	x,_tx_counter1
6679  1043 cd0000        	call	_int2indI_slkuf
6681  1046 5b05          	addw	sp,#5
6682                     ; 909 		int2indII_slkuf(tx_wr_index1,0, 3, 0, 0, 0);
6684  1048 4b00          	push	#0
6685  104a 4b00          	push	#0
6686  104c 4b00          	push	#0
6687  104e 4b03          	push	#3
6688  1050 4b00          	push	#0
6689  1052 ce0000        	ldw	x,_tx_wr_index1
6690  1055 cd0000        	call	_int2indII_slkuf
6692  1058 5b05          	addw	sp,#5
6694  105a ac321932      	jpf	L3462
6695  105e               L5603:
6696                     ; 914 	else if(sub_ind==8)
6698  105e b662          	ld	a,_a_ind+1
6699  1060 a108          	cp	a,#8
6700  1062 2703          	jreq	L214
6701  1064 cc1220        	jp	L1703
6702  1067               L214:
6703                     ; 920 		if(++ind_check_cnt1>=5)
6705  1067 9c            	rvf
6706  1068 ce0004        	ldw	x,_ind_check_cnt1
6707  106b 1c0001        	addw	x,#1
6708  106e cf0004        	ldw	_ind_check_cnt1,x
6709  1071 a30005        	cpw	x,#5
6710  1074 2f17          	jrslt	L3703
6711                     ; 922 			ind_check_cnt1=0;
6713  1076 5f            	clrw	x
6714  1077 cf0004        	ldw	_ind_check_cnt1,x
6715                     ; 923 			if(++ind_check_cnt>=64)ind_check_cnt=0;
6717  107a 9c            	rvf
6718  107b ce0006        	ldw	x,_ind_check_cnt
6719  107e 1c0001        	addw	x,#1
6720  1081 cf0006        	ldw	_ind_check_cnt,x
6721  1084 a30040        	cpw	x,#64
6722  1087 2f04          	jrslt	L3703
6725  1089 5f            	clrw	x
6726  108a cf0006        	ldw	_ind_check_cnt,x
6727  108d               L3703:
6728                     ; 925 		ind_outB[0]=0xff;
6730  108d 35ff0075      	mov	_ind_outB,#255
6731                     ; 926 		ind_outB[1]=0xff;
6733  1091 35ff0076      	mov	_ind_outB+1,#255
6734                     ; 927 		ind_outB[2]=0xff;
6736  1095 35ff0077      	mov	_ind_outB+2,#255
6737                     ; 928 		ind_outB[3]=0xff;
6739  1099 35ff0078      	mov	_ind_outB+3,#255
6740                     ; 929 		ind_outC[0]=0xff;
6742  109d 35ff000a      	mov	_ind_outC,#255
6743                     ; 930 		ind_outC[1]=0xff;
6745  10a1 35ff000b      	mov	_ind_outC+1,#255
6746                     ; 931 		ind_outC[2]=0xff;
6748  10a5 35ff000c      	mov	_ind_outC+2,#255
6749                     ; 932 		ind_outC[3]=0xff;
6751  10a9 35ff000d      	mov	_ind_outC+3,#255
6752                     ; 933 		ind_outG[0]=0xff;
6754  10ad 35ff0016      	mov	_ind_outG,#255
6755                     ; 934 		ind_outG[1]=0xff;
6757  10b1 35ff0017      	mov	_ind_outG+1,#255
6758                     ; 935 		ind_outG[2]=0xff;
6760  10b5 35ff0018      	mov	_ind_outG+2,#255
6761                     ; 936 		ind_outG[3]=0xff;
6763  10b9 35ff0019      	mov	_ind_outG+3,#255
6764                     ; 938 		if(ind_check_cnt<=7)
6766  10bd 9c            	rvf
6767  10be ce0006        	ldw	x,_ind_check_cnt
6768  10c1 a30008        	cpw	x,#8
6769  10c4 2e1a          	jrsge	L7703
6770                     ; 940 			ind_outB[3]&=(~(1<<ind_check_cnt));	
6772  10c6 5f            	clrw	x
6773  10c7 c60007        	ld	a,_ind_check_cnt+1
6774  10ca 2a01          	jrpl	L671
6775  10cc 53            	cplw	x
6776  10cd               L671:
6777  10cd 97            	ld	xl,a
6778  10ce a601          	ld	a,#1
6779  10d0 5d            	tnzw	x
6780  10d1 2704          	jreq	L002
6781  10d3               L202:
6782  10d3 48            	sll	a
6783  10d4 5a            	decw	x
6784  10d5 26fc          	jrne	L202
6785  10d7               L002:
6786  10d7 43            	cpl	a
6787  10d8 b478          	and	a,_ind_outB+3
6788  10da b778          	ld	_ind_outB+3,a
6790  10dc ac321932      	jpf	L3462
6791  10e0               L7703:
6792                     ; 942 		else if(ind_check_cnt<=15)
6794  10e0 9c            	rvf
6795  10e1 ce0006        	ldw	x,_ind_check_cnt
6796  10e4 a30010        	cpw	x,#16
6797  10e7 2e1d          	jrsge	L3013
6798                     ; 944 			ind_outB[2]&=(~(1<<(ind_check_cnt-8)));	
6800  10e9 c60007        	ld	a,_ind_check_cnt+1
6801  10ec a008          	sub	a,#8
6802  10ee 5f            	clrw	x
6803  10ef 4d            	tnz	a
6804  10f0 2a01          	jrpl	L402
6805  10f2 53            	cplw	x
6806  10f3               L402:
6807  10f3 97            	ld	xl,a
6808  10f4 a601          	ld	a,#1
6809  10f6 5d            	tnzw	x
6810  10f7 2704          	jreq	L602
6811  10f9               L012:
6812  10f9 48            	sll	a
6813  10fa 5a            	decw	x
6814  10fb 26fc          	jrne	L012
6815  10fd               L602:
6816  10fd 43            	cpl	a
6817  10fe b477          	and	a,_ind_outB+2
6818  1100 b777          	ld	_ind_outB+2,a
6820  1102 ac321932      	jpf	L3462
6821  1106               L3013:
6822                     ; 946 		else if(ind_check_cnt<=23)
6824  1106 9c            	rvf
6825  1107 ce0006        	ldw	x,_ind_check_cnt
6826  110a a30018        	cpw	x,#24
6827  110d 2e1d          	jrsge	L7013
6828                     ; 948 			ind_outB[1]&=(~(1<<(ind_check_cnt-16)));	
6830  110f c60007        	ld	a,_ind_check_cnt+1
6831  1112 a010          	sub	a,#16
6832  1114 5f            	clrw	x
6833  1115 4d            	tnz	a
6834  1116 2a01          	jrpl	L212
6835  1118 53            	cplw	x
6836  1119               L212:
6837  1119 97            	ld	xl,a
6838  111a a601          	ld	a,#1
6839  111c 5d            	tnzw	x
6840  111d 2704          	jreq	L412
6841  111f               L612:
6842  111f 48            	sll	a
6843  1120 5a            	decw	x
6844  1121 26fc          	jrne	L612
6845  1123               L412:
6846  1123 43            	cpl	a
6847  1124 b476          	and	a,_ind_outB+1
6848  1126 b776          	ld	_ind_outB+1,a
6850  1128 ac321932      	jpf	L3462
6851  112c               L7013:
6852                     ; 950 		else if(ind_check_cnt<=30)
6854  112c 9c            	rvf
6855  112d ce0006        	ldw	x,_ind_check_cnt
6856  1130 a3001f        	cpw	x,#31
6857  1133 2e1d          	jrsge	L3113
6858                     ; 952 			ind_outC[3]&=(~(1<<(ind_check_cnt-23)));	
6860  1135 c60007        	ld	a,_ind_check_cnt+1
6861  1138 a017          	sub	a,#23
6862  113a 5f            	clrw	x
6863  113b 4d            	tnz	a
6864  113c 2a01          	jrpl	L022
6865  113e 53            	cplw	x
6866  113f               L022:
6867  113f 97            	ld	xl,a
6868  1140 a601          	ld	a,#1
6869  1142 5d            	tnzw	x
6870  1143 2704          	jreq	L222
6871  1145               L422:
6872  1145 48            	sll	a
6873  1146 5a            	decw	x
6874  1147 26fc          	jrne	L422
6875  1149               L222:
6876  1149 43            	cpl	a
6877  114a b40d          	and	a,_ind_outC+3
6878  114c b70d          	ld	_ind_outC+3,a
6880  114e ac321932      	jpf	L3462
6881  1152               L3113:
6882                     ; 954 		else if(ind_check_cnt==31)
6884  1152 ce0006        	ldw	x,_ind_check_cnt
6885  1155 a3001f        	cpw	x,#31
6886  1158 2608          	jrne	L7113
6887                     ; 956 			ind_outG[3]&=0xfe;	
6889  115a 72110019      	bres	_ind_outG+3,#0
6891  115e ac321932      	jpf	L3462
6892  1162               L7113:
6893                     ; 958 		else if(ind_check_cnt<=38)
6895  1162 9c            	rvf
6896  1163 ce0006        	ldw	x,_ind_check_cnt
6897  1166 a30027        	cpw	x,#39
6898  1169 2e1d          	jrsge	L3213
6899                     ; 960 			ind_outC[2]&=(~(1<<(ind_check_cnt-31)));	
6901  116b c60007        	ld	a,_ind_check_cnt+1
6902  116e a01f          	sub	a,#31
6903  1170 5f            	clrw	x
6904  1171 4d            	tnz	a
6905  1172 2a01          	jrpl	L622
6906  1174 53            	cplw	x
6907  1175               L622:
6908  1175 97            	ld	xl,a
6909  1176 a601          	ld	a,#1
6910  1178 5d            	tnzw	x
6911  1179 2704          	jreq	L032
6912  117b               L232:
6913  117b 48            	sll	a
6914  117c 5a            	decw	x
6915  117d 26fc          	jrne	L232
6916  117f               L032:
6917  117f 43            	cpl	a
6918  1180 b40c          	and	a,_ind_outC+2
6919  1182 b70c          	ld	_ind_outC+2,a
6921  1184 ac321932      	jpf	L3462
6922  1188               L3213:
6923                     ; 962 		else if(ind_check_cnt==39)
6925  1188 ce0006        	ldw	x,_ind_check_cnt
6926  118b a30027        	cpw	x,#39
6927  118e 2608          	jrne	L7213
6928                     ; 964 			ind_outG[2]&=0xfe;	
6930  1190 72110018      	bres	_ind_outG+2,#0
6932  1194 ac321932      	jpf	L3462
6933  1198               L7213:
6934                     ; 966 		else if(ind_check_cnt<=46)
6936  1198 9c            	rvf
6937  1199 ce0006        	ldw	x,_ind_check_cnt
6938  119c a3002f        	cpw	x,#47
6939  119f 2e1d          	jrsge	L3313
6940                     ; 968 			ind_outC[1]&=(~(1<<(ind_check_cnt-39)));	
6942  11a1 c60007        	ld	a,_ind_check_cnt+1
6943  11a4 a027          	sub	a,#39
6944  11a6 5f            	clrw	x
6945  11a7 4d            	tnz	a
6946  11a8 2a01          	jrpl	L432
6947  11aa 53            	cplw	x
6948  11ab               L432:
6949  11ab 97            	ld	xl,a
6950  11ac a601          	ld	a,#1
6951  11ae 5d            	tnzw	x
6952  11af 2704          	jreq	L632
6953  11b1               L042:
6954  11b1 48            	sll	a
6955  11b2 5a            	decw	x
6956  11b3 26fc          	jrne	L042
6957  11b5               L632:
6958  11b5 43            	cpl	a
6959  11b6 b40b          	and	a,_ind_outC+1
6960  11b8 b70b          	ld	_ind_outC+1,a
6962  11ba ac321932      	jpf	L3462
6963  11be               L3313:
6964                     ; 970 		else if(ind_check_cnt==47)
6966  11be ce0006        	ldw	x,_ind_check_cnt
6967  11c1 a3002f        	cpw	x,#47
6968  11c4 2608          	jrne	L7313
6969                     ; 972 			ind_outG[1]&=0xfe;	
6971  11c6 72110017      	bres	_ind_outG+1,#0
6973  11ca ac321932      	jpf	L3462
6974  11ce               L7313:
6975                     ; 974 		else if(ind_check_cnt<=54)
6977  11ce 9c            	rvf
6978  11cf ce0006        	ldw	x,_ind_check_cnt
6979  11d2 a30037        	cpw	x,#55
6980  11d5 2e1d          	jrsge	L3413
6981                     ; 976 			ind_outC[0]&=(~(1<<(ind_check_cnt-47)));	
6983  11d7 c60007        	ld	a,_ind_check_cnt+1
6984  11da a02f          	sub	a,#47
6985  11dc 5f            	clrw	x
6986  11dd 4d            	tnz	a
6987  11de 2a01          	jrpl	L242
6988  11e0 53            	cplw	x
6989  11e1               L242:
6990  11e1 97            	ld	xl,a
6991  11e2 a601          	ld	a,#1
6992  11e4 5d            	tnzw	x
6993  11e5 2704          	jreq	L442
6994  11e7               L642:
6995  11e7 48            	sll	a
6996  11e8 5a            	decw	x
6997  11e9 26fc          	jrne	L642
6998  11eb               L442:
6999  11eb 43            	cpl	a
7000  11ec b40a          	and	a,_ind_outC
7001  11ee b70a          	ld	_ind_outC,a
7003  11f0 ac321932      	jpf	L3462
7004  11f4               L3413:
7005                     ; 978 		else if(ind_check_cnt==55)
7007  11f4 ce0006        	ldw	x,_ind_check_cnt
7008  11f7 a30037        	cpw	x,#55
7009  11fa 2608          	jrne	L7413
7010                     ; 980 			ind_outG[0]&=0xfe;	
7012  11fc 72110016      	bres	_ind_outG,#0
7014  1200 ac321932      	jpf	L3462
7015  1204               L7413:
7016                     ; 982 		else if(ind_check_cnt<=64)
7018  1204 9c            	rvf
7019  1205 ce0006        	ldw	x,_ind_check_cnt
7020  1208 a30041        	cpw	x,#65
7021  120b 2f03          	jrslt	L414
7022  120d cc1932        	jp	L3462
7023  1210               L414:
7024                     ; 984 			led_mask_off(0x00);
7026  1210 4f            	clr	a
7027  1211 cd0000        	call	_led_mask_off
7029                     ; 985 			led_on(ind_check_cnt-55);	
7031  1214 c60007        	ld	a,_ind_check_cnt+1
7032  1217 a037          	sub	a,#55
7033  1219 cd0000        	call	_led_on
7035  121c ac321932      	jpf	L3462
7036  1220               L1703:
7037                     ; 988 	else if(sub_ind==9)
7039  1220 b662          	ld	a,_a_ind+1
7040  1222 a109          	cp	a,#9
7041  1224 2642          	jrne	L7513
7042                     ; 990 		int2indI_slkuf(waterTemperAlarmCnt,1, 3, 0, 0, 0);
7044  1226 4b00          	push	#0
7045  1228 4b00          	push	#0
7046  122a 4b00          	push	#0
7047  122c 4b03          	push	#3
7048  122e 4b01          	push	#1
7049  1230 5f            	clrw	x
7050  1231 c60034        	ld	a,_waterTemperAlarmCnt
7051  1234 2a01          	jrpl	L052
7052  1236 53            	cplw	x
7053  1237               L052:
7054  1237 97            	ld	xl,a
7055  1238 cd0000        	call	_int2indI_slkuf
7057  123b 5b05          	addw	sp,#5
7058                     ; 991 		int2indII_slkuf(mainCnt,0, 2, 0, 0, 0);
7060  123d 4b00          	push	#0
7061  123f 4b00          	push	#0
7062  1241 4b00          	push	#0
7063  1243 4b02          	push	#2
7064  1245 4b00          	push	#0
7065  1247 be82          	ldw	x,_mainCnt
7066  1249 cd0000        	call	_int2indII_slkuf
7068  124c 5b05          	addw	sp,#5
7069                     ; 992 		int2indII_slkuf(temperOfWater,2, 2, 0, 0, 0);
7071  124e 4b00          	push	#0
7072  1250 4b00          	push	#0
7073  1252 4b00          	push	#0
7074  1254 4b02          	push	#2
7075  1256 4b02          	push	#2
7076  1258 5f            	clrw	x
7077  1259 b61f          	ld	a,_temperOfWater
7078  125b 2a01          	jrpl	L252
7079  125d 53            	cplw	x
7080  125e               L252:
7081  125e 97            	ld	xl,a
7082  125f cd0000        	call	_int2indII_slkuf
7084  1262 5b05          	addw	sp,#5
7086  1264 ac321932      	jpf	L3462
7087  1268               L7513:
7088                     ; 994 	else if(sub_ind==10)
7090  1268 b662          	ld	a,_a_ind+1
7091  126a a10a          	cp	a,#10
7092  126c 2651          	jrne	L3613
7093                     ; 996 		int2indI_slkuf(waterTemperAlarm,1, 1, 0, 0, 0);
7095  126e 4b00          	push	#0
7096  1270 4b00          	push	#0
7097  1272 4b00          	push	#0
7098  1274 4b01          	push	#1
7099  1276 4b01          	push	#1
7100  1278 b627          	ld	a,_waterTemperAlarm
7101  127a 5f            	clrw	x
7102  127b 97            	ld	xl,a
7103  127c cd0000        	call	_int2indI_slkuf
7105  127f 5b05          	addw	sp,#5
7106                     ; 997 		int2indI_slkuf(waterTemperAlarmOld,3, 1, 0, 0, 0);
7108  1281 4b00          	push	#0
7109  1283 4b00          	push	#0
7110  1285 4b00          	push	#0
7111  1287 4b01          	push	#1
7112  1289 4b03          	push	#3
7113  128b b628          	ld	a,_waterTemperAlarmOld
7114  128d 5f            	clrw	x
7115  128e 97            	ld	xl,a
7116  128f cd0000        	call	_int2indI_slkuf
7118  1292 5b05          	addw	sp,#5
7119                     ; 998 		int2indII_slkuf(mainCnt,0, 2, 0, 0, 0);
7121  1294 4b00          	push	#0
7122  1296 4b00          	push	#0
7123  1298 4b00          	push	#0
7124  129a 4b02          	push	#2
7125  129c 4b00          	push	#0
7126  129e be82          	ldw	x,_mainCnt
7127  12a0 cd0000        	call	_int2indII_slkuf
7129  12a3 5b05          	addw	sp,#5
7130                     ; 999 		int2indII_slkuf(temperOfWater,2, 2, 0, 0, 0);
7132  12a5 4b00          	push	#0
7133  12a7 4b00          	push	#0
7134  12a9 4b00          	push	#0
7135  12ab 4b02          	push	#2
7136  12ad 4b02          	push	#2
7137  12af 5f            	clrw	x
7138  12b0 b61f          	ld	a,_temperOfWater
7139  12b2 2a01          	jrpl	L452
7140  12b4 53            	cplw	x
7141  12b5               L452:
7142  12b5 97            	ld	xl,a
7143  12b6 cd0000        	call	_int2indII_slkuf
7145  12b9 5b05          	addw	sp,#5
7147  12bb ac321932      	jpf	L3462
7148  12bf               L3613:
7149                     ; 1001 	else if(sub_ind==11)
7151  12bf b662          	ld	a,_a_ind+1
7152  12c1 a10b          	cp	a,#11
7153  12c3 262c          	jrne	L7613
7154                     ; 1003 		int2indI_slkuf(optr_stat,1, 3, 0, 0, 0);
7156  12c5 4b00          	push	#0
7157  12c7 4b00          	push	#0
7158  12c9 4b00          	push	#0
7159  12cb 4b03          	push	#3
7160  12cd 4b01          	push	#1
7161  12cf c60036        	ld	a,_optr_stat
7162  12d2 5f            	clrw	x
7163  12d3 97            	ld	xl,a
7164  12d4 cd0000        	call	_int2indI_slkuf
7166  12d7 5b05          	addw	sp,#5
7167                     ; 1004 		int2indII_slkuf(optr_kontr_cnt,0, 3, 0, 0, 0);
7169  12d9 4b00          	push	#0
7170  12db 4b00          	push	#0
7171  12dd 4b00          	push	#0
7172  12df 4b03          	push	#3
7173  12e1 4b00          	push	#0
7174  12e3 c60035        	ld	a,_optr_kontr_cnt
7175  12e6 5f            	clrw	x
7176  12e7 97            	ld	xl,a
7177  12e8 cd0000        	call	_int2indII_slkuf
7179  12eb 5b05          	addw	sp,#5
7181  12ed ac321932      	jpf	L3462
7182  12f1               L7613:
7183                     ; 1006 	else if(sub_ind==12)
7185  12f1 b662          	ld	a,_a_ind+1
7186  12f3 a10c          	cp	a,#12
7187  12f5 2703          	jreq	L614
7188  12f7 cc1932        	jp	L3462
7189  12fa               L614:
7190                     ; 1008 		int2indI_slkuf(cntAirSensorLineErrorLo,1, 1, 0, 0, 0);
7192  12fa 4b00          	push	#0
7193  12fc 4b00          	push	#0
7194  12fe 4b00          	push	#0
7195  1300 4b01          	push	#1
7196  1302 4b01          	push	#1
7197  1304 b606          	ld	a,_cntAirSensorLineErrorLo
7198  1306 5f            	clrw	x
7199  1307 97            	ld	xl,a
7200  1308 cd0000        	call	_int2indI_slkuf
7202  130b 5b05          	addw	sp,#5
7203                     ; 1009 		int2indI_slkuf(cntAirSensorLineErrorHi,3, 1, 0, 0, 0);
7205  130d 4b00          	push	#0
7206  130f 4b00          	push	#0
7207  1311 4b00          	push	#0
7208  1313 4b01          	push	#1
7209  1315 4b03          	push	#3
7210  1317 b605          	ld	a,_cntAirSensorLineErrorHi
7211  1319 5f            	clrw	x
7212  131a 97            	ld	xl,a
7213  131b cd0000        	call	_int2indI_slkuf
7215  131e 5b05          	addw	sp,#5
7216                     ; 1010 		int2indII_slkuf(airSensorErrorStat,0, 2, 0, 0, 0);
7218  1320 4b00          	push	#0
7219  1322 4b00          	push	#0
7220  1324 4b00          	push	#0
7221  1326 4b02          	push	#2
7222  1328 4b00          	push	#0
7223  132a b623          	ld	a,_airSensorErrorStat
7224  132c 5f            	clrw	x
7225  132d 97            	ld	xl,a
7226  132e cd0000        	call	_int2indII_slkuf
7228  1331 5b05          	addw	sp,#5
7229                     ; 1011 		int2indII_slkuf(airSensorErrorStatOld,2, 2, 0, 0, 0);
7231  1333 4b00          	push	#0
7232  1335 4b00          	push	#0
7233  1337 4b00          	push	#0
7234  1339 4b02          	push	#2
7235  133b 4b02          	push	#2
7236  133d b624          	ld	a,_airSensorErrorStatOld
7237  133f 5f            	clrw	x
7238  1340 97            	ld	xl,a
7239  1341 cd0000        	call	_int2indII_slkuf
7241  1344 5b05          	addw	sp,#5
7242  1346 ac321932      	jpf	L3462
7243  134a               L7203:
7244                     ; 1016 else if(ind==iModem_deb)
7246  134a b661          	ld	a,_a_ind
7247  134c a10a          	cp	a,#10
7248  134e 2703          	jreq	L024
7249  1350 cc1514        	jp	L7713
7250  1353               L024:
7251                     ; 1018 	led_mask_off(0x00);
7253  1353 4f            	clr	a
7254  1354 cd0000        	call	_led_mask_off
7256                     ; 1019 	led_on(1);
7258  1357 a601          	ld	a,#1
7259  1359 cd0000        	call	_led_on
7261                     ; 1020 	led_on(2);
7263  135c a602          	ld	a,#2
7264  135e cd0000        	call	_led_on
7266                     ; 1022 	if(sub_ind==0)
7268  1361 3d62          	tnz	_a_ind+1
7269  1363 2703cc13fc    	jrne	L1023
7270                     ; 1024 		int2indI_slkuf(modemState,3, 1, 0, 0, 0);
7272  1368 4b00          	push	#0
7273  136a 4b00          	push	#0
7274  136c 4b00          	push	#0
7275  136e 4b01          	push	#1
7276  1370 4b03          	push	#3
7277  1372 b600          	ld	a,_modemState
7278  1374 5f            	clrw	x
7279  1375 97            	ld	xl,a
7280  1376 cd0000        	call	_int2indI_slkuf
7282  1379 5b05          	addw	sp,#5
7283                     ; 1025 		int2indI_slkuf(modem_plazma,1, 1, 0, 0, 0);
7285  137b 4b00          	push	#0
7286  137d 4b00          	push	#0
7287  137f 4b00          	push	#0
7288  1381 4b01          	push	#1
7289  1383 4b01          	push	#1
7290  1385 c60000        	ld	a,_modem_plazma
7291  1388 5f            	clrw	x
7292  1389 97            	ld	xl,a
7293  138a cd0000        	call	_int2indI_slkuf
7295  138d 5b05          	addw	sp,#5
7296                     ; 1026 		int2indI_slkuf(modem_plazma1,2, 1, 0, 0, 0);
7298  138f 4b00          	push	#0
7299  1391 4b00          	push	#0
7300  1393 4b00          	push	#0
7301  1395 4b01          	push	#1
7302  1397 4b02          	push	#2
7303  1399 c60000        	ld	a,_modem_plazma1
7304  139c 5f            	clrw	x
7305  139d 97            	ld	xl,a
7306  139e cd0000        	call	_int2indI_slkuf
7308  13a1 5b05          	addw	sp,#5
7309                     ; 1028 		int2indII_slkuf(modemDrvPDUSMSSendStepCnt,2, 2, 0, 0, 0);
7311  13a3 4b00          	push	#0
7312  13a5 4b00          	push	#0
7313  13a7 4b00          	push	#0
7314  13a9 4b02          	push	#2
7315  13ab 4b02          	push	#2
7316  13ad be00          	ldw	x,_modemDrvPDUSMSSendStepCnt
7317  13af cd0000        	call	_int2indII_slkuf
7319  13b2 5b05          	addw	sp,#5
7320                     ; 1029 		int2indII_slkuf(modemDrvInitStepCnt,0, 2, 0, 0, 0);
7322  13b4 4b00          	push	#0
7323  13b6 4b00          	push	#0
7324  13b8 4b00          	push	#0
7325  13ba 4b02          	push	#2
7326  13bc 4b00          	push	#0
7327  13be be00          	ldw	x,_modemDrvInitStepCnt
7328  13c0 cd0000        	call	_int2indII_slkuf
7330  13c3 5b05          	addw	sp,#5
7331                     ; 1030 		if(AUTH_NUMBER_FLAGS&0x01)led_on(8);
7333  13c5 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
7334  13c8 a501          	bcp	a,#1
7335  13ca 2705          	jreq	L3023
7338  13cc a608          	ld	a,#8
7339  13ce cd0000        	call	_led_on
7341  13d1               L3023:
7342                     ; 1031 		if(AUTH_NUMBER_FLAGS&0x02)led_on(7);
7344  13d1 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
7345  13d4 a502          	bcp	a,#2
7346  13d6 2705          	jreq	L5023
7349  13d8 a607          	ld	a,#7
7350  13da cd0000        	call	_led_on
7352  13dd               L5023:
7353                     ; 1032 		if(AUTH_NUMBER_FLAGS&0x04)led_on(6);
7355  13dd c6407f        	ld	a,_AUTH_NUMBER_FLAGS
7356  13e0 a504          	bcp	a,#4
7357  13e2 2705          	jreq	L7023
7360  13e4 a606          	ld	a,#6
7361  13e6 cd0000        	call	_led_on
7363  13e9               L7023:
7364                     ; 1033 		if(AUTH_NUMBER_FLAGS&0x08)led_on(5);
7366  13e9 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
7367  13ec a508          	bcp	a,#8
7368  13ee 2603          	jrne	L224
7369  13f0 cc1932        	jp	L3462
7370  13f3               L224:
7373  13f3 a605          	ld	a,#5
7374  13f5 cd0000        	call	_led_on
7376  13f8 ac321932      	jpf	L3462
7377  13fc               L1023:
7378                     ; 1036 	else if(sub_ind==1)
7380  13fc b662          	ld	a,_a_ind+1
7381  13fe a101          	cp	a,#1
7382  1400 2647          	jrne	L5123
7383                     ; 1038 		int2indI_slkuf(MAX_POWER_EE,1, 2, 0, 0, 0);
7385  1402 4b00          	push	#0
7386  1404 4b00          	push	#0
7387  1406 4b00          	push	#0
7388  1408 4b02          	push	#2
7389  140a 4b01          	push	#1
7390  140c 5f            	clrw	x
7391  140d c64047        	ld	a,_MAX_POWER_EE
7392  1410 2a01          	jrpl	L652
7393  1412 53            	cplw	x
7394  1413               L652:
7395  1413 97            	ld	xl,a
7396  1414 cd0000        	call	_int2indI_slkuf
7398  1417 5b05          	addw	sp,#5
7399                     ; 1039 		int2indII_slkuf(powerNeccDelta,2, 2, 0, 0, 0);
7401  1419 4b00          	push	#0
7402  141b 4b00          	push	#0
7403  141d 4b00          	push	#0
7404  141f 4b02          	push	#2
7405  1421 4b02          	push	#2
7406  1423 5f            	clrw	x
7407  1424 b60b          	ld	a,_powerNeccDelta
7408  1426 2a01          	jrpl	L062
7409  1428 53            	cplw	x
7410  1429               L062:
7411  1429 97            	ld	xl,a
7412  142a cd0000        	call	_int2indII_slkuf
7414  142d 5b05          	addw	sp,#5
7415                     ; 1040 		int2indII_slkuf(powerNecc,0, 2, 0, 0, 0);
7417  142f 4b00          	push	#0
7418  1431 4b00          	push	#0
7419  1433 4b00          	push	#0
7420  1435 4b02          	push	#2
7421  1437 4b00          	push	#0
7422  1439 5f            	clrw	x
7423  143a b625          	ld	a,_powerNecc
7424  143c 2a01          	jrpl	L262
7425  143e 53            	cplw	x
7426  143f               L262:
7427  143f 97            	ld	xl,a
7428  1440 cd0000        	call	_int2indII_slkuf
7430  1443 5b05          	addw	sp,#5
7432  1445 ac321932      	jpf	L3462
7433  1449               L5123:
7434                     ; 1042 	else if(sub_ind==2)
7436  1449 b662          	ld	a,_a_ind+1
7437  144b a102          	cp	a,#2
7438  144d 267c          	jrne	L1223
7439                     ; 1044 		int2indI_slkuf(aktualTemper,2, 2, 0, 0, 0);	
7441  144f 4b00          	push	#0
7442  1451 4b00          	push	#0
7443  1453 4b00          	push	#0
7444  1455 4b02          	push	#2
7445  1457 4b02          	push	#2
7446  1459 5f            	clrw	x
7447  145a b61d          	ld	a,_aktualTemper
7448  145c 2a01          	jrpl	L462
7449  145e 53            	cplw	x
7450  145f               L462:
7451  145f 97            	ld	xl,a
7452  1460 cd0000        	call	_int2indI_slkuf
7454  1463 5b05          	addw	sp,#5
7455                     ; 1045 		int2indI_slkuf(powerNecc,1, 1, 0, 0, 0);
7457  1465 4b00          	push	#0
7458  1467 4b00          	push	#0
7459  1469 4b00          	push	#0
7460  146b 4b01          	push	#1
7461  146d 4b01          	push	#1
7462  146f 5f            	clrw	x
7463  1470 b625          	ld	a,_powerNecc
7464  1472 2a01          	jrpl	L662
7465  1474 53            	cplw	x
7466  1475               L662:
7467  1475 97            	ld	xl,a
7468  1476 cd0000        	call	_int2indI_slkuf
7470  1479 5b05          	addw	sp,#5
7471                     ; 1046 		int2indII_slkuf(out_stat[0],3, 1, 0, 0, 0);
7473  147b 4b00          	push	#0
7474  147d 4b00          	push	#0
7475  147f 4b00          	push	#0
7476  1481 4b01          	push	#1
7477  1483 4b03          	push	#3
7478  1485 b620          	ld	a,_out_stat
7479  1487 5f            	clrw	x
7480  1488 97            	ld	xl,a
7481  1489 cd0000        	call	_int2indII_slkuf
7483  148c 5b05          	addw	sp,#5
7484                     ; 1047 		int2indII_slkuf(out_stat[1],2, 1, 0, 0, 0);
7486  148e 4b00          	push	#0
7487  1490 4b00          	push	#0
7488  1492 4b00          	push	#0
7489  1494 4b01          	push	#1
7490  1496 4b02          	push	#2
7491  1498 b621          	ld	a,_out_stat+1
7492  149a 5f            	clrw	x
7493  149b 97            	ld	xl,a
7494  149c cd0000        	call	_int2indII_slkuf
7496  149f 5b05          	addw	sp,#5
7497                     ; 1048 		int2indII_slkuf(out_stat[2],1, 1, 0, 0, 0);
7499  14a1 4b00          	push	#0
7500  14a3 4b00          	push	#0
7501  14a5 4b00          	push	#0
7502  14a7 4b01          	push	#1
7503  14a9 4b01          	push	#1
7504  14ab b622          	ld	a,_out_stat+2
7505  14ad 5f            	clrw	x
7506  14ae 97            	ld	xl,a
7507  14af cd0000        	call	_int2indII_slkuf
7509  14b2 5b05          	addw	sp,#5
7510                     ; 1049 		int2indII_slkuf(fiksRandom,0, 1, 0, 0, 0);
7512  14b4 4b00          	push	#0
7513  14b6 4b00          	push	#0
7514  14b8 4b00          	push	#0
7515  14ba 4b01          	push	#1
7516  14bc 4b00          	push	#0
7517  14be b684          	ld	a,_fiksRandom
7518  14c0 5f            	clrw	x
7519  14c1 97            	ld	xl,a
7520  14c2 cd0000        	call	_int2indII_slkuf
7522  14c5 5b05          	addw	sp,#5
7524  14c7 ac321932      	jpf	L3462
7525  14cb               L1223:
7526                     ; 1051 	else if(sub_ind==3)
7528  14cb b662          	ld	a,_a_ind+1
7529  14cd a103          	cp	a,#3
7530  14cf 2703          	jreq	L424
7531  14d1 cc1932        	jp	L3462
7532  14d4               L424:
7533                     ; 1053 		int2indI_slkuf(temperRegToSheduler,1, 2, 0, 0, 0);	
7535  14d4 4b00          	push	#0
7536  14d6 4b00          	push	#0
7537  14d8 4b00          	push	#0
7538  14da 4b02          	push	#2
7539  14dc 4b01          	push	#1
7540  14de 5f            	clrw	x
7541  14df b604          	ld	a,_temperRegToSheduler
7542  14e1 2a01          	jrpl	L072
7543  14e3 53            	cplw	x
7544  14e4               L072:
7545  14e4 97            	ld	xl,a
7546  14e5 cd0000        	call	_int2indI_slkuf
7548  14e8 5b05          	addw	sp,#5
7549                     ; 1055 		int2indII_slkuf(time_day_of_week,3, 1, 0, 0, 0);
7551  14ea 4b00          	push	#0
7552  14ec 4b00          	push	#0
7553  14ee 4b00          	push	#0
7554  14f0 4b01          	push	#1
7555  14f2 4b03          	push	#3
7556  14f4 b60e          	ld	a,_time_day_of_week
7557  14f6 5f            	clrw	x
7558  14f7 97            	ld	xl,a
7559  14f8 cd0000        	call	_int2indII_slkuf
7561  14fb 5b05          	addw	sp,#5
7562                     ; 1058 		int2indII_slkuf(day_sheduler_time,0, 3, 0, 0, 0);
7564  14fd 4b00          	push	#0
7565  14ff 4b00          	push	#0
7566  1501 4b00          	push	#0
7567  1503 4b03          	push	#3
7568  1505 4b00          	push	#0
7569  1507 b602          	ld	a,_day_sheduler_time
7570  1509 5f            	clrw	x
7571  150a 97            	ld	xl,a
7572  150b cd0000        	call	_int2indII_slkuf
7574  150e 5b05          	addw	sp,#5
7575  1510 ac321932      	jpf	L3462
7576  1514               L7713:
7577                     ; 1062 else if(ind==iTemperSet)
7579  1514 b661          	ld	a,_a_ind
7580  1516 a108          	cp	a,#8
7581  1518 2703          	jreq	L624
7582  151a cc1648        	jp	L1323
7583  151d               L624:
7584                     ; 1071 	led_mask_off(0x00);
7586  151d 4f            	clr	a
7587  151e cd0000        	call	_led_mask_off
7589                     ; 1072 	if(outMode==omON)
7591  1521 c6401d        	ld	a,_outMode
7592  1524 a101          	cp	a,#1
7593  1526 262d          	jrne	L3323
7594                     ; 1074 		if(MODE_EE==1)led_on(1);
7596  1528 c64046        	ld	a,_MODE_EE
7597  152b a101          	cp	a,#1
7598  152d 2607          	jrne	L5323
7601  152f a601          	ld	a,#1
7602  1531 cd0000        	call	_led_on
7605  1534 201f          	jra	L3323
7606  1536               L5323:
7607                     ; 1075 		else if(MODE_EE==2) led_on(2);
7609  1536 c64046        	ld	a,_MODE_EE
7610  1539 a102          	cp	a,#2
7611  153b 2607          	jrne	L1423
7614  153d a602          	ld	a,#2
7615  153f cd0000        	call	_led_on
7618  1542 2011          	jra	L3323
7619  1544               L1423:
7620                     ; 1076 		else if(MODE_EE==3)
7622  1544 c64046        	ld	a,_MODE_EE
7623  1547 a103          	cp	a,#3
7624  1549 260a          	jrne	L3323
7625                     ; 1078 			led_on(2);
7627  154b a602          	ld	a,#2
7628  154d cd0000        	call	_led_on
7630                     ; 1079 			led_on(3);
7632  1550 a603          	ld	a,#3
7633  1552 cd0000        	call	_led_on
7635  1555               L3323:
7636                     ; 1082 	if((outMode==omON)&&(out_stat[0]==osON))led_on(4);
7638  1555 c6401d        	ld	a,_outMode
7639  1558 a101          	cp	a,#1
7640  155a 260b          	jrne	L7423
7642  155c b620          	ld	a,_out_stat
7643  155e a101          	cp	a,#1
7644  1560 2605          	jrne	L7423
7647  1562 a604          	ld	a,#4
7648  1564 cd0000        	call	_led_on
7650  1567               L7423:
7651                     ; 1083 	if((outMode==omON)&&(out_stat[1]==osON))led_on(5);
7653  1567 c6401d        	ld	a,_outMode
7654  156a a101          	cp	a,#1
7655  156c 260b          	jrne	L1523
7657  156e b621          	ld	a,_out_stat+1
7658  1570 a101          	cp	a,#1
7659  1572 2605          	jrne	L1523
7662  1574 a605          	ld	a,#5
7663  1576 cd0000        	call	_led_on
7665  1579               L1523:
7666                     ; 1084 	if((outMode==omON)&&(out_stat[2]==osON))led_on(6);
7668  1579 c6401d        	ld	a,_outMode
7669  157c a101          	cp	a,#1
7670  157e 260b          	jrne	L3523
7672  1580 b622          	ld	a,_out_stat+2
7673  1582 a101          	cp	a,#1
7674  1584 2605          	jrne	L3523
7677  1586 a606          	ld	a,#6
7678  1588 cd0000        	call	_led_on
7680  158b               L3523:
7681                     ; 1086 	if(bERR)led_on(7);
7683  158b 3d08          	tnz	_bERR
7684  158d 2707          	jreq	L5523
7687  158f a607          	ld	a,#7
7688  1591 cd0000        	call	_led_on
7691  1594 2009          	jra	L7523
7692  1596               L5523:
7693                     ; 1087 	else if(bWARN)led_flash(7);
7695  1596 3d07          	tnz	_bWARN
7696  1598 2705          	jreq	L7523
7699  159a a607          	ld	a,#7
7700  159c cd0000        	call	_led_flash
7702  159f               L7523:
7703                     ; 1089 	if(aktualTemper>=0)
7705  159f 9c            	rvf
7706  15a0 b61d          	ld	a,_aktualTemper
7707  15a2 a100          	cp	a,#0
7708  15a4 2f1c          	jrslt	L3623
7709                     ; 1091 		int2indI_slkuf(aktualTemper,2, 2, 0, 1, 0);
7711  15a6 4b00          	push	#0
7712  15a8 4b01          	push	#1
7713  15aa 4b00          	push	#0
7714  15ac 4b02          	push	#2
7715  15ae 4b02          	push	#2
7716  15b0 5f            	clrw	x
7717  15b1 b61d          	ld	a,_aktualTemper
7718  15b3 2a01          	jrpl	L272
7719  15b5 53            	cplw	x
7720  15b6               L272:
7721  15b6 97            	ld	xl,a
7722  15b7 cd0000        	call	_int2indI_slkuf
7724  15ba 5b05          	addw	sp,#5
7725                     ; 1092 		ind_outB[1]=0b10011100;
7727  15bc 359c0076      	mov	_ind_outB+1,#156
7729  15c0 204a          	jra	L5623
7730  15c2               L3623:
7731                     ; 1096 		if(-aktualTemper<10)
7733  15c2 9c            	rvf
7734  15c3 5f            	clrw	x
7735  15c4 b61d          	ld	a,_aktualTemper
7736  15c6 2a01          	jrpl	L472
7737  15c8 53            	cplw	x
7738  15c9               L472:
7739  15c9 97            	ld	xl,a
7740  15ca 50            	negw	x
7741  15cb a3000a        	cpw	x,#10
7742  15ce 2e21          	jrsge	L7623
7743                     ; 1098 			ind_outB[3]=0b10111111;
7745  15d0 35bf0078      	mov	_ind_outB+3,#191
7746                     ; 1099 			int2indI_slkuf(-aktualTemper,2, 1, 0, 1, 0);
7748  15d4 4b00          	push	#0
7749  15d6 4b01          	push	#1
7750  15d8 4b00          	push	#0
7751  15da 4b01          	push	#1
7752  15dc 4b02          	push	#2
7753  15de 5f            	clrw	x
7754  15df b61d          	ld	a,_aktualTemper
7755  15e1 2a01          	jrpl	L672
7756  15e3 53            	cplw	x
7757  15e4               L672:
7758  15e4 97            	ld	xl,a
7759  15e5 50            	negw	x
7760  15e6 cd0000        	call	_int2indI_slkuf
7762  15e9 5b05          	addw	sp,#5
7763                     ; 1100 			ind_outB[1]=0b10011100;
7765  15eb 359c0076      	mov	_ind_outB+1,#156
7767  15ef 201b          	jra	L5623
7768  15f1               L7623:
7769                     ; 1104 			ind_outB[3]=0b10111111;
7771  15f1 35bf0078      	mov	_ind_outB+3,#191
7772                     ; 1105 			int2indI_slkuf(-aktualTemper,1, 2, 0, 1, 0);
7774  15f5 4b00          	push	#0
7775  15f7 4b01          	push	#1
7776  15f9 4b00          	push	#0
7777  15fb 4b02          	push	#2
7778  15fd 4b01          	push	#1
7779  15ff 5f            	clrw	x
7780  1600 b61d          	ld	a,_aktualTemper
7781  1602 2a01          	jrpl	L003
7782  1604 53            	cplw	x
7783  1605               L003:
7784  1605 97            	ld	xl,a
7785  1606 50            	negw	x
7786  1607 cd0000        	call	_int2indI_slkuf
7788  160a 5b05          	addw	sp,#5
7789  160c               L5623:
7790                     ; 1109 	int2indII_slkuf(targetTemper,1, 2, 0, 1, MODE_EE==3?0:1);
7792  160c c64046        	ld	a,_MODE_EE
7793  160f a103          	cp	a,#3
7794  1611 2603          	jrne	L203
7795  1613 4f            	clr	a
7796  1614 2002          	jra	L403
7797  1616               L203:
7798  1616 a601          	ld	a,#1
7799  1618               L403:
7800  1618 88            	push	a
7801  1619 4b01          	push	#1
7802  161b 4b00          	push	#0
7803  161d 4b02          	push	#2
7804  161f 4b01          	push	#1
7805  1621 5f            	clrw	x
7806  1622 b61c          	ld	a,_targetTemper
7807  1624 2a01          	jrpl	L603
7808  1626 53            	cplw	x
7809  1627               L603:
7810  1627 97            	ld	xl,a
7811  1628 cd0000        	call	_int2indII_slkuf
7813  162b 5b05          	addw	sp,#5
7814                     ; 1110 	if((bFL2)&&(MODE_EE!=3))	ind_outC[0]=0b11111111;
7816  162d 3d27          	tnz	_bFL2
7817  162f 270f          	jreq	L3723
7819  1631 c64046        	ld	a,_MODE_EE
7820  1634 a103          	cp	a,#3
7821  1636 2708          	jreq	L3723
7824  1638 35ff000a      	mov	_ind_outC,#255
7826  163c ac321932      	jpf	L3462
7827  1640               L3723:
7828                     ; 1111 	else 						ind_outC[0]=0b00111000;
7830  1640 3538000a      	mov	_ind_outC,#56
7831  1644 ac321932      	jpf	L3462
7832  1648               L1323:
7833                     ; 1115 else if(ind==iDefSet)
7835  1648 b661          	ld	a,_a_ind
7836  164a a109          	cp	a,#9
7837  164c 262c          	jrne	L1033
7838                     ; 1117 	led_mask_off(0x00);
7840  164e 4f            	clr	a
7841  164f cd0000        	call	_led_mask_off
7843                     ; 1119 	int2indI_slkuf(123,1, 3, 0, 0, 0);
7845  1652 4b00          	push	#0
7846  1654 4b00          	push	#0
7847  1656 4b00          	push	#0
7848  1658 4b03          	push	#3
7849  165a 4b01          	push	#1
7850  165c ae007b        	ldw	x,#123
7851  165f cd0000        	call	_int2indI_slkuf
7853  1662 5b05          	addw	sp,#5
7854                     ; 1120 	int2indII_slkuf(4567,0, 4, 0, 0, 0);
7856  1664 4b00          	push	#0
7857  1666 4b00          	push	#0
7858  1668 4b00          	push	#0
7859  166a 4b04          	push	#4
7860  166c 4b00          	push	#0
7861  166e ae11d7        	ldw	x,#4567
7862  1671 cd0000        	call	_int2indII_slkuf
7864  1674 5b05          	addw	sp,#5
7866  1676 ac321932      	jpf	L3462
7867  167a               L1033:
7868                     ; 1122 else if(ind==iMn_number)
7870  167a b661          	ld	a,_a_ind
7871  167c a10b          	cp	a,#11
7872  167e 2703cc1717    	jrne	L5033
7873                     ; 1124 	led_mask_off(0x00);
7875  1683 4f            	clr	a
7876  1684 cd0000        	call	_led_mask_off
7878                     ; 1126 	int2indI_slkuf(rand_dig[0], 3, 1, 0, 0, 0);
7880  1687 4b00          	push	#0
7881  1689 4b00          	push	#0
7882  168b 4b00          	push	#0
7883  168d 4b01          	push	#1
7884  168f 4b03          	push	#3
7885  1691 c6002d        	ld	a,_rand_dig
7886  1694 5f            	clrw	x
7887  1695 97            	ld	xl,a
7888  1696 cd0000        	call	_int2indI_slkuf
7890  1699 5b05          	addw	sp,#5
7891                     ; 1127 	int2indI_slkuf(rand_dig[1], 2, 1, 0, 0, 0);
7893  169b 4b00          	push	#0
7894  169d 4b00          	push	#0
7895  169f 4b00          	push	#0
7896  16a1 4b01          	push	#1
7897  16a3 4b02          	push	#2
7898  16a5 c6002e        	ld	a,_rand_dig+1
7899  16a8 5f            	clrw	x
7900  16a9 97            	ld	xl,a
7901  16aa cd0000        	call	_int2indI_slkuf
7903  16ad 5b05          	addw	sp,#5
7904                     ; 1128 	int2indI_slkuf(rand_dig[2], 1, 1, 0, 0, 0);
7906  16af 4b00          	push	#0
7907  16b1 4b00          	push	#0
7908  16b3 4b00          	push	#0
7909  16b5 4b01          	push	#1
7910  16b7 4b01          	push	#1
7911  16b9 c6002f        	ld	a,_rand_dig+2
7912  16bc 5f            	clrw	x
7913  16bd 97            	ld	xl,a
7914  16be cd0000        	call	_int2indI_slkuf
7916  16c1 5b05          	addw	sp,#5
7917                     ; 1129 	int2indII_slkuf(rand_dig[3], 3, 1, 0, 0, 0);
7919  16c3 4b00          	push	#0
7920  16c5 4b00          	push	#0
7921  16c7 4b00          	push	#0
7922  16c9 4b01          	push	#1
7923  16cb 4b03          	push	#3
7924  16cd c60030        	ld	a,_rand_dig+3
7925  16d0 5f            	clrw	x
7926  16d1 97            	ld	xl,a
7927  16d2 cd0000        	call	_int2indII_slkuf
7929  16d5 5b05          	addw	sp,#5
7930                     ; 1130 	int2indII_slkuf(rand_dig[4], 2, 1, 0, 0, 0);
7932  16d7 4b00          	push	#0
7933  16d9 4b00          	push	#0
7934  16db 4b00          	push	#0
7935  16dd 4b01          	push	#1
7936  16df 4b02          	push	#2
7937  16e1 c60031        	ld	a,_rand_dig+4
7938  16e4 5f            	clrw	x
7939  16e5 97            	ld	xl,a
7940  16e6 cd0000        	call	_int2indII_slkuf
7942  16e9 5b05          	addw	sp,#5
7943                     ; 1131 	int2indII_slkuf(rand_dig[5], 1, 1, 0, 0, 0);
7945  16eb 4b00          	push	#0
7946  16ed 4b00          	push	#0
7947  16ef 4b00          	push	#0
7948  16f1 4b01          	push	#1
7949  16f3 4b01          	push	#1
7950  16f5 c60032        	ld	a,_rand_dig+5
7951  16f8 5f            	clrw	x
7952  16f9 97            	ld	xl,a
7953  16fa cd0000        	call	_int2indII_slkuf
7955  16fd 5b05          	addw	sp,#5
7956                     ; 1132 	int2indII_slkuf(rand_dig[6], 0, 1, 0, 0, 0);
7958  16ff 4b00          	push	#0
7959  1701 4b00          	push	#0
7960  1703 4b00          	push	#0
7961  1705 4b01          	push	#1
7962  1707 4b00          	push	#0
7963  1709 c60033        	ld	a,_rand_dig+6
7964  170c 5f            	clrw	x
7965  170d 97            	ld	xl,a
7966  170e cd0000        	call	_int2indII_slkuf
7968  1711 5b05          	addw	sp,#5
7970  1713 ac321932      	jpf	L3462
7971  1717               L5033:
7972                     ; 1135 else if(ind==iAfterReset)
7974  1717 b661          	ld	a,_a_ind
7975  1719 a10c          	cp	a,#12
7976  171b 2619          	jrne	L1133
7977                     ; 1137 	led_mask_off(0x00);
7979  171d 4f            	clr	a
7980  171e cd0000        	call	_led_mask_off
7982                     ; 1139 	int2indI_slkuf(mainCnt, 1, 3, 0, 0, 0);
7984  1721 4b00          	push	#0
7985  1723 4b00          	push	#0
7986  1725 4b00          	push	#0
7987  1727 4b03          	push	#3
7988  1729 4b01          	push	#1
7989  172b be82          	ldw	x,_mainCnt
7990  172d cd0000        	call	_int2indI_slkuf
7992  1730 5b05          	addw	sp,#5
7994  1732 ac321932      	jpf	L3462
7995  1736               L1133:
7996                     ; 1142 else if(ind==iWater)
7998  1736 b661          	ld	a,_a_ind
7999  1738 a10d          	cp	a,#13
8000  173a 261e          	jrne	L5133
8001                     ; 1144 	led_mask_off(0x00);
8003  173c 4f            	clr	a
8004  173d cd0000        	call	_led_mask_off
8006                     ; 1146 	int2indI_slkuf(temperOfWater,1, 3, 0, 0, 0);
8008  1740 4b00          	push	#0
8009  1742 4b00          	push	#0
8010  1744 4b00          	push	#0
8011  1746 4b03          	push	#3
8012  1748 4b01          	push	#1
8013  174a 5f            	clrw	x
8014  174b b61f          	ld	a,_temperOfWater
8015  174d 2a01          	jrpl	L013
8016  174f 53            	cplw	x
8017  1750               L013:
8018  1750 97            	ld	xl,a
8019  1751 cd0000        	call	_int2indI_slkuf
8021  1754 5b05          	addw	sp,#5
8023  1756 ac321932      	jpf	L3462
8024  175a               L5133:
8025                     ; 1150 else if(ind==iAir)
8027  175a b661          	ld	a,_a_ind
8028  175c a10e          	cp	a,#14
8029  175e 261e          	jrne	L1233
8030                     ; 1152 	led_mask_off(0x00);
8032  1760 4f            	clr	a
8033  1761 cd0000        	call	_led_mask_off
8035                     ; 1154 	int2indI_slkuf(temperOfAir,1, 3, 0, 0, 0);
8037  1764 4b00          	push	#0
8038  1766 4b00          	push	#0
8039  1768 4b00          	push	#0
8040  176a 4b03          	push	#3
8041  176c 4b01          	push	#1
8042  176e 5f            	clrw	x
8043  176f b61e          	ld	a,_temperOfAir
8044  1771 2a01          	jrpl	L213
8045  1773 53            	cplw	x
8046  1774               L213:
8047  1774 97            	ld	xl,a
8048  1775 cd0000        	call	_int2indI_slkuf
8050  1778 5b05          	addw	sp,#5
8052  177a ac321932      	jpf	L3462
8053  177e               L1233:
8054                     ; 1158 else if(ind==iInterf)
8056  177e b661          	ld	a,_a_ind
8057  1780 a10f          	cp	a,#15
8058  1782 2703          	jreq	L034
8059  1784 cc1932        	jp	L3462
8060  1787               L034:
8061                     ; 1164 	if(++ind_check_cnt1>=5)
8063  1787 9c            	rvf
8064  1788 ce0004        	ldw	x,_ind_check_cnt1
8065  178b 1c0001        	addw	x,#1
8066  178e cf0004        	ldw	_ind_check_cnt1,x
8067  1791 a30005        	cpw	x,#5
8068  1794 2f17          	jrslt	L7233
8069                     ; 1166 		ind_check_cnt1=0;
8071  1796 5f            	clrw	x
8072  1797 cf0004        	ldw	_ind_check_cnt1,x
8073                     ; 1167 		if(++ind_check_cnt>=64)ind_check_cnt=0;
8075  179a 9c            	rvf
8076  179b ce0006        	ldw	x,_ind_check_cnt
8077  179e 1c0001        	addw	x,#1
8078  17a1 cf0006        	ldw	_ind_check_cnt,x
8079  17a4 a30040        	cpw	x,#64
8080  17a7 2f04          	jrslt	L7233
8083  17a9 5f            	clrw	x
8084  17aa cf0006        	ldw	_ind_check_cnt,x
8085  17ad               L7233:
8086                     ; 1169 	ind_outB[0]=0xff;
8088  17ad 35ff0075      	mov	_ind_outB,#255
8089                     ; 1170 	ind_outB[1]=0xff;
8091  17b1 35ff0076      	mov	_ind_outB+1,#255
8092                     ; 1171 	ind_outB[2]=0xff;
8094  17b5 35ff0077      	mov	_ind_outB+2,#255
8095                     ; 1172 	ind_outB[3]=0xff;
8097  17b9 35ff0078      	mov	_ind_outB+3,#255
8098                     ; 1173 	ind_outC[0]=0xff;
8100  17bd 35ff000a      	mov	_ind_outC,#255
8101                     ; 1174 	ind_outC[1]=0xff;
8103  17c1 35ff000b      	mov	_ind_outC+1,#255
8104                     ; 1175 	ind_outC[2]=0xff;
8106  17c5 35ff000c      	mov	_ind_outC+2,#255
8107                     ; 1176 	ind_outC[3]=0xff;
8109  17c9 35ff000d      	mov	_ind_outC+3,#255
8110                     ; 1177 	ind_outG[0]=0xff;
8112  17cd 35ff0016      	mov	_ind_outG,#255
8113                     ; 1178 	ind_outG[1]=0xff;
8115  17d1 35ff0017      	mov	_ind_outG+1,#255
8116                     ; 1179 	ind_outG[2]=0xff;
8118  17d5 35ff0018      	mov	_ind_outG+2,#255
8119                     ; 1180 	ind_outG[3]=0xff;
8121  17d9 35ff0019      	mov	_ind_outG+3,#255
8122                     ; 1181 	led_mask_off(0x00);
8124  17dd 4f            	clr	a
8125  17de cd0000        	call	_led_mask_off
8127                     ; 1183 	if(ind_check_cnt<=7)
8129  17e1 9c            	rvf
8130  17e2 ce0006        	ldw	x,_ind_check_cnt
8131  17e5 a30008        	cpw	x,#8
8132  17e8 2e1a          	jrsge	L3333
8133                     ; 1185 		ind_outB[3]&=(~(1<<ind_check_cnt));	
8135  17ea 5f            	clrw	x
8136  17eb c60007        	ld	a,_ind_check_cnt+1
8137  17ee 2a01          	jrpl	L413
8138  17f0 53            	cplw	x
8139  17f1               L413:
8140  17f1 97            	ld	xl,a
8141  17f2 a601          	ld	a,#1
8142  17f4 5d            	tnzw	x
8143  17f5 2704          	jreq	L613
8144  17f7               L023:
8145  17f7 48            	sll	a
8146  17f8 5a            	decw	x
8147  17f9 26fc          	jrne	L023
8148  17fb               L613:
8149  17fb 43            	cpl	a
8150  17fc b478          	and	a,_ind_outB+3
8151  17fe b778          	ld	_ind_outB+3,a
8153  1800 ac321932      	jpf	L3462
8154  1804               L3333:
8155                     ; 1187 	else if(ind_check_cnt<=15)
8157  1804 9c            	rvf
8158  1805 ce0006        	ldw	x,_ind_check_cnt
8159  1808 a30010        	cpw	x,#16
8160  180b 2e1d          	jrsge	L7333
8161                     ; 1189 		ind_outB[2]&=(~(1<<(ind_check_cnt-8)));	
8163  180d c60007        	ld	a,_ind_check_cnt+1
8164  1810 a008          	sub	a,#8
8165  1812 5f            	clrw	x
8166  1813 4d            	tnz	a
8167  1814 2a01          	jrpl	L223
8168  1816 53            	cplw	x
8169  1817               L223:
8170  1817 97            	ld	xl,a
8171  1818 a601          	ld	a,#1
8172  181a 5d            	tnzw	x
8173  181b 2704          	jreq	L423
8174  181d               L623:
8175  181d 48            	sll	a
8176  181e 5a            	decw	x
8177  181f 26fc          	jrne	L623
8178  1821               L423:
8179  1821 43            	cpl	a
8180  1822 b477          	and	a,_ind_outB+2
8181  1824 b777          	ld	_ind_outB+2,a
8183  1826 ac321932      	jpf	L3462
8184  182a               L7333:
8185                     ; 1191 	else if(ind_check_cnt<=23)
8187  182a 9c            	rvf
8188  182b ce0006        	ldw	x,_ind_check_cnt
8189  182e a30018        	cpw	x,#24
8190  1831 2e1d          	jrsge	L3433
8191                     ; 1193 		ind_outB[1]&=(~(1<<(ind_check_cnt-16)));	
8193  1833 c60007        	ld	a,_ind_check_cnt+1
8194  1836 a010          	sub	a,#16
8195  1838 5f            	clrw	x
8196  1839 4d            	tnz	a
8197  183a 2a01          	jrpl	L033
8198  183c 53            	cplw	x
8199  183d               L033:
8200  183d 97            	ld	xl,a
8201  183e a601          	ld	a,#1
8202  1840 5d            	tnzw	x
8203  1841 2704          	jreq	L233
8204  1843               L433:
8205  1843 48            	sll	a
8206  1844 5a            	decw	x
8207  1845 26fc          	jrne	L433
8208  1847               L233:
8209  1847 43            	cpl	a
8210  1848 b476          	and	a,_ind_outB+1
8211  184a b776          	ld	_ind_outB+1,a
8213  184c ac321932      	jpf	L3462
8214  1850               L3433:
8215                     ; 1195 	else if(ind_check_cnt<=30)
8217  1850 9c            	rvf
8218  1851 ce0006        	ldw	x,_ind_check_cnt
8219  1854 a3001f        	cpw	x,#31
8220  1857 2e1d          	jrsge	L7433
8221                     ; 1197 		ind_outC[3]&=(~(1<<(ind_check_cnt-23)));	
8223  1859 c60007        	ld	a,_ind_check_cnt+1
8224  185c a017          	sub	a,#23
8225  185e 5f            	clrw	x
8226  185f 4d            	tnz	a
8227  1860 2a01          	jrpl	L633
8228  1862 53            	cplw	x
8229  1863               L633:
8230  1863 97            	ld	xl,a
8231  1864 a601          	ld	a,#1
8232  1866 5d            	tnzw	x
8233  1867 2704          	jreq	L043
8234  1869               L243:
8235  1869 48            	sll	a
8236  186a 5a            	decw	x
8237  186b 26fc          	jrne	L243
8238  186d               L043:
8239  186d 43            	cpl	a
8240  186e b40d          	and	a,_ind_outC+3
8241  1870 b70d          	ld	_ind_outC+3,a
8243  1872 ac321932      	jpf	L3462
8244  1876               L7433:
8245                     ; 1199 	else if(ind_check_cnt==31)
8247  1876 ce0006        	ldw	x,_ind_check_cnt
8248  1879 a3001f        	cpw	x,#31
8249  187c 2608          	jrne	L3533
8250                     ; 1201 		ind_outG[3]&=0xfe;	
8252  187e 72110019      	bres	_ind_outG+3,#0
8254  1882 ac321932      	jpf	L3462
8255  1886               L3533:
8256                     ; 1203 	else if(ind_check_cnt<=38)
8258  1886 9c            	rvf
8259  1887 ce0006        	ldw	x,_ind_check_cnt
8260  188a a30027        	cpw	x,#39
8261  188d 2e1c          	jrsge	L7533
8262                     ; 1205 		ind_outC[2]&=(~(1<<(ind_check_cnt-31)));	
8264  188f c60007        	ld	a,_ind_check_cnt+1
8265  1892 a01f          	sub	a,#31
8266  1894 5f            	clrw	x
8267  1895 4d            	tnz	a
8268  1896 2a01          	jrpl	L443
8269  1898 53            	cplw	x
8270  1899               L443:
8271  1899 97            	ld	xl,a
8272  189a a601          	ld	a,#1
8273  189c 5d            	tnzw	x
8274  189d 2704          	jreq	L643
8275  189f               L053:
8276  189f 48            	sll	a
8277  18a0 5a            	decw	x
8278  18a1 26fc          	jrne	L053
8279  18a3               L643:
8280  18a3 43            	cpl	a
8281  18a4 b40c          	and	a,_ind_outC+2
8282  18a6 b70c          	ld	_ind_outC+2,a
8284  18a8 cc1932        	jra	L3462
8285  18ab               L7533:
8286                     ; 1207 	else if(ind_check_cnt==39)
8288  18ab ce0006        	ldw	x,_ind_check_cnt
8289  18ae a30027        	cpw	x,#39
8290  18b1 2606          	jrne	L3633
8291                     ; 1209 		ind_outG[2]&=0xfe;	
8293  18b3 72110018      	bres	_ind_outG+2,#0
8295  18b7 2079          	jra	L3462
8296  18b9               L3633:
8297                     ; 1211 	else if(ind_check_cnt<=46)
8299  18b9 9c            	rvf
8300  18ba ce0006        	ldw	x,_ind_check_cnt
8301  18bd a3002f        	cpw	x,#47
8302  18c0 2e1b          	jrsge	L7633
8303                     ; 1213 		ind_outC[1]&=(~(1<<(ind_check_cnt-39)));	
8305  18c2 c60007        	ld	a,_ind_check_cnt+1
8306  18c5 a027          	sub	a,#39
8307  18c7 5f            	clrw	x
8308  18c8 4d            	tnz	a
8309  18c9 2a01          	jrpl	L253
8310  18cb 53            	cplw	x
8311  18cc               L253:
8312  18cc 97            	ld	xl,a
8313  18cd a601          	ld	a,#1
8314  18cf 5d            	tnzw	x
8315  18d0 2704          	jreq	L453
8316  18d2               L653:
8317  18d2 48            	sll	a
8318  18d3 5a            	decw	x
8319  18d4 26fc          	jrne	L653
8320  18d6               L453:
8321  18d6 43            	cpl	a
8322  18d7 b40b          	and	a,_ind_outC+1
8323  18d9 b70b          	ld	_ind_outC+1,a
8325  18db 2055          	jra	L3462
8326  18dd               L7633:
8327                     ; 1215 	else if(ind_check_cnt==47)
8329  18dd ce0006        	ldw	x,_ind_check_cnt
8330  18e0 a3002f        	cpw	x,#47
8331  18e3 2606          	jrne	L3733
8332                     ; 1217 		ind_outG[1]&=0xfe;	
8334  18e5 72110017      	bres	_ind_outG+1,#0
8336  18e9 2047          	jra	L3462
8337  18eb               L3733:
8338                     ; 1219 	else if(ind_check_cnt<=54)
8340  18eb 9c            	rvf
8341  18ec ce0006        	ldw	x,_ind_check_cnt
8342  18ef a30037        	cpw	x,#55
8343  18f2 2e1b          	jrsge	L7733
8344                     ; 1221 		ind_outC[0]&=(~(1<<(ind_check_cnt-47)));	
8346  18f4 c60007        	ld	a,_ind_check_cnt+1
8347  18f7 a02f          	sub	a,#47
8348  18f9 5f            	clrw	x
8349  18fa 4d            	tnz	a
8350  18fb 2a01          	jrpl	L063
8351  18fd 53            	cplw	x
8352  18fe               L063:
8353  18fe 97            	ld	xl,a
8354  18ff a601          	ld	a,#1
8355  1901 5d            	tnzw	x
8356  1902 2704          	jreq	L263
8357  1904               L463:
8358  1904 48            	sll	a
8359  1905 5a            	decw	x
8360  1906 26fc          	jrne	L463
8361  1908               L263:
8362  1908 43            	cpl	a
8363  1909 b40a          	and	a,_ind_outC
8364  190b b70a          	ld	_ind_outC,a
8366  190d 2023          	jra	L3462
8367  190f               L7733:
8368                     ; 1223 	else if(ind_check_cnt==55)
8370  190f ce0006        	ldw	x,_ind_check_cnt
8371  1912 a30037        	cpw	x,#55
8372  1915 2606          	jrne	L3043
8373                     ; 1225 		ind_outG[0]&=0xfe;	
8375  1917 72110016      	bres	_ind_outG,#0
8377  191b 2015          	jra	L3462
8378  191d               L3043:
8379                     ; 1227 	else if(ind_check_cnt<=64)
8381  191d 9c            	rvf
8382  191e ce0006        	ldw	x,_ind_check_cnt
8383  1921 a30041        	cpw	x,#65
8384  1924 2e0c          	jrsge	L3462
8385                     ; 1229 		led_mask_off(0x00);
8387  1926 4f            	clr	a
8388  1927 cd0000        	call	_led_mask_off
8390                     ; 1230 		led_on(ind_check_cnt-55);	
8392  192a c60007        	ld	a,_ind_check_cnt+1
8393  192d a037          	sub	a,#55
8394  192f cd0000        	call	_led_on
8396  1932               L3462:
8397                     ; 1234 if(powerStat==psOFF)
8399  1932 3d29          	tnz	_powerStat
8400  1934 263a          	jrne	L1143
8401                     ; 1236 	led_set(1,0);
8403  1936 5f            	clrw	x
8404  1937 a601          	ld	a,#1
8405  1939 95            	ld	xh,a
8406  193a cd0000        	call	_led_set
8408                     ; 1237 	led_set(2,0);
8410  193d 5f            	clrw	x
8411  193e a602          	ld	a,#2
8412  1940 95            	ld	xh,a
8413  1941 cd0000        	call	_led_set
8415                     ; 1238 	led_set(3,0);
8417  1944 5f            	clrw	x
8418  1945 a603          	ld	a,#3
8419  1947 95            	ld	xh,a
8420  1948 cd0000        	call	_led_set
8422                     ; 1239 	led_set(4,0);
8424  194b 5f            	clrw	x
8425  194c a604          	ld	a,#4
8426  194e 95            	ld	xh,a
8427  194f cd0000        	call	_led_set
8429                     ; 1240 	led_set(5,0);
8431  1952 5f            	clrw	x
8432  1953 a605          	ld	a,#5
8433  1955 95            	ld	xh,a
8434  1956 cd0000        	call	_led_set
8436                     ; 1241 	led_set(6,0);
8438  1959 5f            	clrw	x
8439  195a a606          	ld	a,#6
8440  195c 95            	ld	xh,a
8441  195d cd0000        	call	_led_set
8443                     ; 1242 	led_set(7,0);
8445  1960 5f            	clrw	x
8446  1961 a607          	ld	a,#7
8447  1963 95            	ld	xh,a
8448  1964 cd0000        	call	_led_set
8450                     ; 1243 	led_set(8,2);
8452  1967 ae0002        	ldw	x,#2
8453  196a a608          	ld	a,#8
8454  196c 95            	ld	xh,a
8455  196d cd0000        	call	_led_set
8457  1970               L1143:
8458                     ; 1246 if(bFL5)
8460  1970 3d28          	tnz	_bFL5
8461  1972 2717          	jreq	L3143
8462                     ; 1248 	ind_outB[0]=led_ind_out1;
8464  1974 452475        	mov	_ind_outB,_led_ind_out1
8465                     ; 1249 	ind_outB[4]=led_ind_out1;
8467  1977 452479        	mov	_ind_outB+4,_led_ind_out1
8468                     ; 1250 	ind_outB[5]=led_ind_out1;
8470  197a 45247a        	mov	_ind_outB+5,_led_ind_out1
8471                     ; 1251 	ind_outB[6]=led_ind_out1;
8473  197d 45247b        	mov	_ind_outB+6,_led_ind_out1
8474                     ; 1252 	ind_outB[7]=led_ind_out1;
8476  1980 45247c        	mov	_ind_outB+7,_led_ind_out1
8477                     ; 1253 	ind_outB[8]=led_ind_out1;
8479  1983 45247d        	mov	_ind_outB+8,_led_ind_out1
8480                     ; 1254 	ind_outB[9]=led_ind_out1;
8482  1986 45247e        	mov	_ind_outB+9,_led_ind_out1
8484  1989 2015          	jra	L5143
8485  198b               L3143:
8486                     ; 1258 	ind_outB[0]=led_ind_out2;
8488  198b 452375        	mov	_ind_outB,_led_ind_out2
8489                     ; 1259 	ind_outB[4]=led_ind_out2;
8491  198e 452379        	mov	_ind_outB+4,_led_ind_out2
8492                     ; 1260 	ind_outB[5]=led_ind_out2;
8494  1991 45237a        	mov	_ind_outB+5,_led_ind_out2
8495                     ; 1261 	ind_outB[6]=led_ind_out2;
8497  1994 45237b        	mov	_ind_outB+6,_led_ind_out2
8498                     ; 1262 	ind_outB[7]=led_ind_out2;
8500  1997 45237c        	mov	_ind_outB+7,_led_ind_out2
8501                     ; 1263 	ind_outB[8]=led_ind_out2;
8503  199a 45237d        	mov	_ind_outB+8,_led_ind_out2
8504                     ; 1264 	ind_outB[9]=led_ind_out2;
8506  199d 45237e        	mov	_ind_outB+9,_led_ind_out2
8507  19a0               L5143:
8508                     ; 1266 }
8511  19a0 85            	popw	x
8512  19a1 81            	ret
8673                     ; 1271 void but_an(void)
8673                     ; 1272 {
8674                     	switch	.text
8675  19a2               _but_an:
8677  19a2 5203          	subw	sp,#3
8678       00000003      OFST:	set	3
8681                     ; 1273 if(!n_but) return;
8683  19a4 3d00          	tnz	_n_but
8684  19a6 2603          	jrne	L265
8685  19a8 cc28fe        	jp	L065
8686  19ab               L265:
8689                     ; 1274 n_but=0;
8691  19ab 3f00          	clr	_n_but
8692                     ; 1276 if(ind==iMn)
8694  19ad 3d61          	tnz	_a_ind
8695  19af 2703          	jreq	L465
8696  19b1 cc1a4f        	jp	L7053
8697  19b4               L465:
8698                     ; 1278 	if(but==butM_)
8700  19b4 b600          	ld	a,_but
8701  19b6 a17d          	cp	a,#125
8702  19b8 2610          	jrne	L1153
8703                     ; 1280 		tree_up(iSet,0,0,0);
8705  19ba 4b00          	push	#0
8706  19bc 4b00          	push	#0
8707  19be 5f            	clrw	x
8708  19bf a601          	ld	a,#1
8709  19c1 95            	ld	xh,a
8710  19c2 cd0000        	call	_tree_up
8712  19c5 85            	popw	x
8714  19c6 acfe28fe      	jpf	L7453
8715  19ca               L1153:
8716                     ; 1282 	else if(but==butM)
8718  19ca b600          	ld	a,_but
8719  19cc a1fd          	cp	a,#253
8720  19ce 2617          	jrne	L5153
8721                     ; 1284 		tree_up(iTemperSet,0,0,0);
8723  19d0 4b00          	push	#0
8724  19d2 4b00          	push	#0
8725  19d4 5f            	clrw	x
8726  19d5 a608          	ld	a,#8
8727  19d7 95            	ld	xh,a
8728  19d8 cd0000        	call	_tree_up
8730  19db 85            	popw	x
8731                     ; 1285 		ret_ind(5,0);
8733  19dc 5f            	clrw	x
8734  19dd a605          	ld	a,#5
8735  19df 95            	ld	xh,a
8736  19e0 cd0000        	call	_ret_ind
8739  19e3 acfe28fe      	jpf	L7453
8740  19e7               L5153:
8741                     ; 1287 	else if(but==butU)
8743  19e7 b600          	ld	a,_but
8744  19e9 a1fb          	cp	a,#251
8745  19eb 2617          	jrne	L1253
8746                     ; 1289 		tree_up(iDate_W,0,0,0);
8748  19ed 4b00          	push	#0
8749  19ef 4b00          	push	#0
8750  19f1 5f            	clrw	x
8751  19f2 a604          	ld	a,#4
8752  19f4 95            	ld	xh,a
8753  19f5 cd0000        	call	_tree_up
8755  19f8 85            	popw	x
8756                     ; 1290 		ret_ind(4,0);
8758  19f9 5f            	clrw	x
8759  19fa a604          	ld	a,#4
8760  19fc 95            	ld	xh,a
8761  19fd cd0000        	call	_ret_ind
8764  1a00 acfe28fe      	jpf	L7453
8765  1a04               L1253:
8766                     ; 1292 	else if(but==butD_)
8768  1a04 b600          	ld	a,_but
8769  1a06 a177          	cp	a,#119
8770  1a08 2603          	jrne	L665
8771  1a0a cc28fe        	jp	L7453
8772  1a0d               L665:
8774                     ; 1300 	else if(but==butD)
8776  1a0d b600          	ld	a,_but
8777  1a0f a1f7          	cp	a,#247
8778  1a11 2603          	jrne	L075
8779  1a13 cc28fe        	jp	L7453
8780  1a16               L075:
8782                     ; 1309 	else if(but==butU_)
8784  1a16 b600          	ld	a,_but
8785  1a18 a17b          	cp	a,#123
8786  1a1a 2603          	jrne	L275
8787  1a1c cc28fe        	jp	L7453
8788  1a1f               L275:
8790                     ; 1313 	else if(but==butON)
8792  1a1f b600          	ld	a,_but
8793  1a21 a1fe          	cp	a,#254
8794  1a23 2703          	jreq	L475
8795  1a25 cc28fe        	jp	L7453
8796  1a28               L475:
8797                     ; 1315 		if(outMode==omON)	outMode=omOFF;
8799  1a28 c6401d        	ld	a,_outMode
8800  1a2b a101          	cp	a,#1
8801  1a2d 2609          	jrne	L3453
8804  1a2f 4f            	clr	a
8805  1a30 ae401d        	ldw	x,#_outMode
8806  1a33 cd0000        	call	c_eewrc
8809  1a36 2008          	jra	L5453
8810  1a38               L3453:
8811                     ; 1316 		else 				outMode=omON;
8813  1a38 a601          	ld	a,#1
8814  1a3a ae401d        	ldw	x,#_outMode
8815  1a3d cd0000        	call	c_eewrc
8817  1a40               L5453:
8818                     ; 1317 		HUMAN_SET_EE=1;
8820  1a40 ae0001        	ldw	x,#1
8821  1a43 89            	pushw	x
8822  1a44 ae401e        	ldw	x,#_HUMAN_SET_EE
8823  1a47 cd0000        	call	c_eewrw
8825  1a4a 85            	popw	x
8826  1a4b acfe28fe      	jpf	L7453
8827  1a4f               L7053:
8828                     ; 1321 else if(ind==iTemperSet)
8830  1a4f b661          	ld	a,_a_ind
8831  1a51 a108          	cp	a,#8
8832  1a53 2703          	jreq	L675
8833  1a55 cc1b5b        	jp	L1553
8834  1a58               L675:
8835                     ; 1323 	if(but==butM)
8837  1a58 b600          	ld	a,_but
8838  1a5a a1fd          	cp	a,#253
8839  1a5c 2610          	jrne	L3553
8840                     ; 1325 		tree_down(0,0);
8842  1a5e 5f            	clrw	x
8843  1a5f 4f            	clr	a
8844  1a60 95            	ld	xh,a
8845  1a61 cd0000        	call	_tree_down
8847                     ; 1326 		ret_ind(0,0);
8849  1a64 5f            	clrw	x
8850  1a65 4f            	clr	a
8851  1a66 95            	ld	xh,a
8852  1a67 cd0000        	call	_ret_ind
8855  1a6a acfe28fe      	jpf	L7453
8856  1a6e               L3553:
8857                     ; 1328 	else if(MODE_EE==1)
8859  1a6e c64046        	ld	a,_MODE_EE
8860  1a71 a101          	cp	a,#1
8861  1a73 266e          	jrne	L7553
8862                     ; 1330 		ret_ind(4,0);
8864  1a75 5f            	clrw	x
8865  1a76 a604          	ld	a,#4
8866  1a78 95            	ld	xh,a
8867  1a79 cd0000        	call	_ret_ind
8869                     ; 1331 		if((but==butU)||(but==butU_))
8871  1a7c b600          	ld	a,_but
8872  1a7e a1fb          	cp	a,#251
8873  1a80 2706          	jreq	L3653
8875  1a82 b600          	ld	a,_but
8876  1a84 a17b          	cp	a,#123
8877  1a86 2624          	jrne	L1653
8878  1a88               L3653:
8879                     ; 1333 			NECC_TEMPER_WATER_EE++;
8881  1a88 c64045        	ld	a,_NECC_TEMPER_WATER_EE
8882  1a8b 4c            	inc	a
8883  1a8c ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8884  1a8f cd0000        	call	c_eewrc
8886                     ; 1334 			gran_char(&NECC_TEMPER_WATER_EE,5,85);
8888  1a92 4b55          	push	#85
8889  1a94 4b05          	push	#5
8890  1a96 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8891  1a99 cd0000        	call	_gran_char
8893  1a9c 85            	popw	x
8894                     ; 1335 			speed=1;
8896  1a9d 35010000      	mov	_speed,#1
8897                     ; 1336 			HUMAN_SET_EE=1;
8899  1aa1 ae0001        	ldw	x,#1
8900  1aa4 89            	pushw	x
8901  1aa5 ae401e        	ldw	x,#_HUMAN_SET_EE
8902  1aa8 cd0000        	call	c_eewrw
8904  1aab 85            	popw	x
8905  1aac               L1653:
8906                     ; 1338 		if((but==butD)||(but==butD_))
8908  1aac b600          	ld	a,_but
8909  1aae a1f7          	cp	a,#247
8910  1ab0 2709          	jreq	L7653
8912  1ab2 b600          	ld	a,_but
8913  1ab4 a177          	cp	a,#119
8914  1ab6 2703          	jreq	L006
8915  1ab8 cc28fe        	jp	L7453
8916  1abb               L006:
8917  1abb               L7653:
8918                     ; 1340 			NECC_TEMPER_WATER_EE--;
8920  1abb c64045        	ld	a,_NECC_TEMPER_WATER_EE
8921  1abe 4a            	dec	a
8922  1abf ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8923  1ac2 cd0000        	call	c_eewrc
8925                     ; 1341 			gran_char(&NECC_TEMPER_WATER_EE,5,85);
8927  1ac5 4b55          	push	#85
8928  1ac7 4b05          	push	#5
8929  1ac9 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8930  1acc cd0000        	call	_gran_char
8932  1acf 85            	popw	x
8933                     ; 1342 			speed=1;
8935  1ad0 35010000      	mov	_speed,#1
8936                     ; 1343 			HUMAN_SET_EE=1;
8938  1ad4 ae0001        	ldw	x,#1
8939  1ad7 89            	pushw	x
8940  1ad8 ae401e        	ldw	x,#_HUMAN_SET_EE
8941  1adb cd0000        	call	c_eewrw
8943  1ade 85            	popw	x
8944  1adf acfe28fe      	jpf	L7453
8945  1ae3               L7553:
8946                     ; 1346 	else if(MODE_EE==2)
8948  1ae3 c64046        	ld	a,_MODE_EE
8949  1ae6 a102          	cp	a,#2
8950  1ae8 2703          	jreq	L206
8951  1aea cc28fe        	jp	L7453
8952  1aed               L206:
8953                     ; 1348 		ret_ind(4,0);
8955  1aed 5f            	clrw	x
8956  1aee a604          	ld	a,#4
8957  1af0 95            	ld	xh,a
8958  1af1 cd0000        	call	_ret_ind
8960                     ; 1349 		if((but==butU)||(but==butU_))
8962  1af4 b600          	ld	a,_but
8963  1af6 a1fb          	cp	a,#251
8964  1af8 2706          	jreq	L7753
8966  1afa b600          	ld	a,_but
8967  1afc a17b          	cp	a,#123
8968  1afe 2624          	jrne	L5753
8969  1b00               L7753:
8970                     ; 1351 			NECC_TEMPER_AIR_EE++;
8972  1b00 c64044        	ld	a,_NECC_TEMPER_AIR_EE
8973  1b03 4c            	inc	a
8974  1b04 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8975  1b07 cd0000        	call	c_eewrc
8977                     ; 1352 			gran_char(&NECC_TEMPER_AIR_EE,5,35);
8979  1b0a 4b23          	push	#35
8980  1b0c 4b05          	push	#5
8981  1b0e ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8982  1b11 cd0000        	call	_gran_char
8984  1b14 85            	popw	x
8985                     ; 1353 			speed=1;
8987  1b15 35010000      	mov	_speed,#1
8988                     ; 1354 			HUMAN_SET_EE=1;
8990  1b19 ae0001        	ldw	x,#1
8991  1b1c 89            	pushw	x
8992  1b1d ae401e        	ldw	x,#_HUMAN_SET_EE
8993  1b20 cd0000        	call	c_eewrw
8995  1b23 85            	popw	x
8996  1b24               L5753:
8997                     ; 1356 		if((but==butD)||(but==butD_))
8999  1b24 b600          	ld	a,_but
9000  1b26 a1f7          	cp	a,#247
9001  1b28 2709          	jreq	L3063
9003  1b2a b600          	ld	a,_but
9004  1b2c a177          	cp	a,#119
9005  1b2e 2703          	jreq	L406
9006  1b30 cc28fe        	jp	L7453
9007  1b33               L406:
9008  1b33               L3063:
9009                     ; 1358 			NECC_TEMPER_AIR_EE--;
9011  1b33 c64044        	ld	a,_NECC_TEMPER_AIR_EE
9012  1b36 4a            	dec	a
9013  1b37 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9014  1b3a cd0000        	call	c_eewrc
9016                     ; 1359 			gran_char(&NECC_TEMPER_AIR_EE,5,35);
9018  1b3d 4b23          	push	#35
9019  1b3f 4b05          	push	#5
9020  1b41 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9021  1b44 cd0000        	call	_gran_char
9023  1b47 85            	popw	x
9024                     ; 1360 			speed=1;
9026  1b48 35010000      	mov	_speed,#1
9027                     ; 1361 			HUMAN_SET_EE=1;
9029  1b4c ae0001        	ldw	x,#1
9030  1b4f 89            	pushw	x
9031  1b50 ae401e        	ldw	x,#_HUMAN_SET_EE
9032  1b53 cd0000        	call	c_eewrw
9034  1b56 85            	popw	x
9035  1b57 acfe28fe      	jpf	L7453
9036  1b5b               L1553:
9037                     ; 1365 else if(ind==iDate_W)
9039  1b5b b661          	ld	a,_a_ind
9040  1b5d a104          	cp	a,#4
9041  1b5f 2635          	jrne	L7063
9042                     ; 1367 	if(but==butU)
9044  1b61 b600          	ld	a,_but
9045  1b63 a1fb          	cp	a,#251
9046  1b65 2703          	jreq	L606
9047  1b67 cc28fe        	jp	L7453
9048  1b6a               L606:
9049                     ; 1369 		if(sub_ind==0)
9051  1b6a 3d62          	tnz	_a_ind+1
9052  1b6c 2615          	jrne	L3163
9053                     ; 1371 			sub_ind=1;
9055  1b6e 35010062      	mov	_a_ind+1,#1
9056                     ; 1372 			ret_ind(4,0);
9058  1b72 5f            	clrw	x
9059  1b73 a604          	ld	a,#4
9060  1b75 95            	ld	xh,a
9061  1b76 cd0000        	call	_ret_ind
9063                     ; 1373 			clear_ind();
9065  1b79 cd0000        	call	_clear_ind
9067                     ; 1374 			ind_hndl();			
9069  1b7c cd07bc        	call	_ind_hndl
9072  1b7f acfe28fe      	jpf	L7453
9073  1b83               L3163:
9074                     ; 1376 		else if(sub_ind==1)
9076  1b83 b662          	ld	a,_a_ind+1
9077  1b85 a101          	cp	a,#1
9078  1b87 2703          	jreq	L016
9079  1b89 cc28fe        	jp	L7453
9080  1b8c               L016:
9081                     ; 1378 			tree_down(0,0);	
9083  1b8c 5f            	clrw	x
9084  1b8d 4f            	clr	a
9085  1b8e 95            	ld	xh,a
9086  1b8f cd0000        	call	_tree_down
9088  1b92 acfe28fe      	jpf	L7453
9089  1b96               L7063:
9090                     ; 1382 else if(ind==iSet)
9092  1b96 b661          	ld	a,_a_ind
9093  1b98 a101          	cp	a,#1
9094  1b9a 2703          	jreq	L216
9095  1b9c cc1c43        	jp	L3263
9096  1b9f               L216:
9097                     ; 1384 	if((but==butU)||(but==butU_))
9099  1b9f b600          	ld	a,_but
9100  1ba1 a1fb          	cp	a,#251
9101  1ba3 2706          	jreq	L7263
9103  1ba5 b600          	ld	a,_but
9104  1ba7 a17b          	cp	a,#123
9105  1ba9 2617          	jrne	L5263
9106  1bab               L7263:
9107                     ; 1386 		sub_ind++;
9109  1bab 3c62          	inc	_a_ind+1
9110                     ; 1387 		gran_char(&sub_ind,0,11);
9112  1bad 4b0b          	push	#11
9113  1baf 4b00          	push	#0
9114  1bb1 ae0062        	ldw	x,#_a_ind+1
9115  1bb4 cd0000        	call	_gran_char
9117  1bb7 85            	popw	x
9118                     ; 1388 		clear_ind();
9120  1bb8 cd0000        	call	_clear_ind
9122                     ; 1389 		ind_hndl();
9124  1bbb cd07bc        	call	_ind_hndl
9127  1bbe acfe28fe      	jpf	L7453
9128  1bc2               L5263:
9129                     ; 1391 	else if((but==butD)||(but==butD_))
9131  1bc2 b600          	ld	a,_but
9132  1bc4 a1f7          	cp	a,#247
9133  1bc6 2706          	jreq	L5363
9135  1bc8 b600          	ld	a,_but
9136  1bca a177          	cp	a,#119
9137  1bcc 2617          	jrne	L3363
9138  1bce               L5363:
9139                     ; 1393 		sub_ind--;
9141  1bce 3a62          	dec	_a_ind+1
9142                     ; 1394 		gran_char(&sub_ind,0,11);
9144  1bd0 4b0b          	push	#11
9145  1bd2 4b00          	push	#0
9146  1bd4 ae0062        	ldw	x,#_a_ind+1
9147  1bd7 cd0000        	call	_gran_char
9149  1bda 85            	popw	x
9150                     ; 1395 		clear_ind();
9152  1bdb cd0000        	call	_clear_ind
9154                     ; 1396 		ind_hndl();
9156  1bde cd07bc        	call	_ind_hndl
9159  1be1 acfe28fe      	jpf	L7453
9160  1be5               L3363:
9161                     ; 1398 	else if(but==butM_)
9163  1be5 b600          	ld	a,_but
9164  1be7 a17d          	cp	a,#125
9165  1be9 2638          	jrne	L1463
9166                     ; 1400 		if(sub_ind==11) //¬ыход 
9168  1beb b662          	ld	a,_a_ind+1
9169  1bed a10b          	cp	a,#11
9170  1bef 260a          	jrne	L3463
9171                     ; 1402 			tree_down(0,0);
9173  1bf1 5f            	clrw	x
9174  1bf2 4f            	clr	a
9175  1bf3 95            	ld	xh,a
9176  1bf4 cd0000        	call	_tree_down
9179  1bf7 acfe28fe      	jpf	L7453
9180  1bfb               L3463:
9181                     ; 1404 		else if(sub_ind==10) //¬ход в установку графика
9183  1bfb b662          	ld	a,_a_ind+1
9184  1bfd a10a          	cp	a,#10
9185  1bff 2610          	jrne	L7463
9186                     ; 1406 			tree_up(iSetTable,0,0,0);
9188  1c01 4b00          	push	#0
9189  1c03 4b00          	push	#0
9190  1c05 5f            	clrw	x
9191  1c06 a605          	ld	a,#5
9192  1c08 95            	ld	xh,a
9193  1c09 cd0000        	call	_tree_up
9195  1c0c 85            	popw	x
9197  1c0d acfe28fe      	jpf	L7453
9198  1c11               L7463:
9199                     ; 1410 			tree_up(iSet_,sub_ind,0,0);
9201  1c11 4b00          	push	#0
9202  1c13 4b00          	push	#0
9203  1c15 b662          	ld	a,_a_ind+1
9204  1c17 97            	ld	xl,a
9205  1c18 a602          	ld	a,#2
9206  1c1a 95            	ld	xh,a
9207  1c1b cd0000        	call	_tree_up
9209  1c1e 85            	popw	x
9210  1c1f acfe28fe      	jpf	L7453
9211  1c23               L1463:
9212                     ; 1413 	else if(but==butOND_)
9214  1c23 b600          	ld	a,_but
9215  1c25 a176          	cp	a,#118
9216  1c27 2703          	jreq	L416
9217  1c29 cc28fe        	jp	L7453
9218  1c2c               L416:
9219                     ; 1415 		tree_up(iDefSet,0,0,0);
9221  1c2c 4b00          	push	#0
9222  1c2e 4b00          	push	#0
9223  1c30 5f            	clrw	x
9224  1c31 a609          	ld	a,#9
9225  1c33 95            	ld	xh,a
9226  1c34 cd0000        	call	_tree_up
9228  1c37 85            	popw	x
9229                     ; 1416 		ret_ind(5,0);
9231  1c38 5f            	clrw	x
9232  1c39 a605          	ld	a,#5
9233  1c3b 95            	ld	xh,a
9234  1c3c cd0000        	call	_ret_ind
9236  1c3f acfe28fe      	jpf	L7453
9237  1c43               L3263:
9238                     ; 1419 else if(ind==iSet_)
9240  1c43 b661          	ld	a,_a_ind
9241  1c45 a102          	cp	a,#2
9242  1c47 2703          	jreq	L616
9243  1c49 cc21ee        	jp	L1663
9244  1c4c               L616:
9245                     ; 1421 	if(but==butM_)
9247  1c4c b600          	ld	a,_but
9248  1c4e a17d          	cp	a,#125
9249  1c50 260a          	jrne	L3663
9250                     ; 1423 		tree_down(0,0);
9252  1c52 5f            	clrw	x
9253  1c53 4f            	clr	a
9254  1c54 95            	ld	xh,a
9255  1c55 cd0000        	call	_tree_down
9258  1c58 acfe28fe      	jpf	L7453
9259  1c5c               L3663:
9260                     ; 1427 		if(sub_ind==0)
9262  1c5c 3d62          	tnz	_a_ind+1
9263  1c5e 265f          	jrne	L7663
9264                     ; 1429 			if((but==butU)||(but==butU_))
9266  1c60 b600          	ld	a,_but
9267  1c62 a1fb          	cp	a,#251
9268  1c64 2706          	jreq	L3763
9270  1c66 b600          	ld	a,_but
9271  1c68 a17b          	cp	a,#123
9272  1c6a 2620          	jrne	L1763
9273  1c6c               L3763:
9274                     ; 1431 				MODE_EE++;
9276  1c6c c64046        	ld	a,_MODE_EE
9277  1c6f 4c            	inc	a
9278  1c70 ae4046        	ldw	x,#_MODE_EE
9279  1c73 cd0000        	call	c_eewrc
9281                     ; 1432 				gran_char(&MODE_EE,1,3);
9283  1c76 4b03          	push	#3
9284  1c78 4b01          	push	#1
9285  1c7a ae4046        	ldw	x,#_MODE_EE
9286  1c7d cd0000        	call	_gran_char
9288  1c80 85            	popw	x
9289                     ; 1433 				HUMAN_SET_EE=1;
9291  1c81 ae0001        	ldw	x,#1
9292  1c84 89            	pushw	x
9293  1c85 ae401e        	ldw	x,#_HUMAN_SET_EE
9294  1c88 cd0000        	call	c_eewrw
9296  1c8b 85            	popw	x
9297  1c8c               L1763:
9298                     ; 1435 			if((but==butD)||(but==butD_))
9300  1c8c b600          	ld	a,_but
9301  1c8e a1f7          	cp	a,#247
9302  1c90 2709          	jreq	L7763
9304  1c92 b600          	ld	a,_but
9305  1c94 a177          	cp	a,#119
9306  1c96 2703          	jreq	L026
9307  1c98 cc28fe        	jp	L7453
9308  1c9b               L026:
9309  1c9b               L7763:
9310                     ; 1437 				MODE_EE--;
9312  1c9b c64046        	ld	a,_MODE_EE
9313  1c9e 4a            	dec	a
9314  1c9f ae4046        	ldw	x,#_MODE_EE
9315  1ca2 cd0000        	call	c_eewrc
9317                     ; 1438 				gran_char(&MODE_EE,1,3);
9319  1ca5 4b03          	push	#3
9320  1ca7 4b01          	push	#1
9321  1ca9 ae4046        	ldw	x,#_MODE_EE
9322  1cac cd0000        	call	_gran_char
9324  1caf 85            	popw	x
9325                     ; 1439 				HUMAN_SET_EE=1;
9327  1cb0 ae0001        	ldw	x,#1
9328  1cb3 89            	pushw	x
9329  1cb4 ae401e        	ldw	x,#_HUMAN_SET_EE
9330  1cb7 cd0000        	call	c_eewrw
9332  1cba 85            	popw	x
9333  1cbb acfe28fe      	jpf	L7453
9334  1cbf               L7663:
9335                     ; 1442 		else if(sub_ind==1)
9337  1cbf b662          	ld	a,_a_ind+1
9338  1cc1 a101          	cp	a,#1
9339  1cc3 2667          	jrne	L3073
9340                     ; 1444 			if((but==butU)||(but==butU_))
9342  1cc5 b600          	ld	a,_but
9343  1cc7 a1fb          	cp	a,#251
9344  1cc9 2706          	jreq	L7073
9346  1ccb b600          	ld	a,_but
9347  1ccd a17b          	cp	a,#123
9348  1ccf 2624          	jrne	L5073
9349  1cd1               L7073:
9350                     ; 1446 				NECC_TEMPER_WATER_EE++;
9352  1cd1 c64045        	ld	a,_NECC_TEMPER_WATER_EE
9353  1cd4 4c            	inc	a
9354  1cd5 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9355  1cd8 cd0000        	call	c_eewrc
9357                     ; 1447 				gran_char(&NECC_TEMPER_WATER_EE,5,85);
9359  1cdb 4b55          	push	#85
9360  1cdd 4b05          	push	#5
9361  1cdf ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9362  1ce2 cd0000        	call	_gran_char
9364  1ce5 85            	popw	x
9365                     ; 1448 				speed=1;
9367  1ce6 35010000      	mov	_speed,#1
9368                     ; 1449 				HUMAN_SET_EE=1;
9370  1cea ae0001        	ldw	x,#1
9371  1ced 89            	pushw	x
9372  1cee ae401e        	ldw	x,#_HUMAN_SET_EE
9373  1cf1 cd0000        	call	c_eewrw
9375  1cf4 85            	popw	x
9376  1cf5               L5073:
9377                     ; 1451 			if((but==butD)||(but==butD_))
9379  1cf5 b600          	ld	a,_but
9380  1cf7 a1f7          	cp	a,#247
9381  1cf9 2709          	jreq	L3173
9383  1cfb b600          	ld	a,_but
9384  1cfd a177          	cp	a,#119
9385  1cff 2703          	jreq	L226
9386  1d01 cc28fe        	jp	L7453
9387  1d04               L226:
9388  1d04               L3173:
9389                     ; 1453 				NECC_TEMPER_WATER_EE--;
9391  1d04 c64045        	ld	a,_NECC_TEMPER_WATER_EE
9392  1d07 4a            	dec	a
9393  1d08 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9394  1d0b cd0000        	call	c_eewrc
9396                     ; 1454 				gran_char(&NECC_TEMPER_WATER_EE,5,85);
9398  1d0e 4b55          	push	#85
9399  1d10 4b05          	push	#5
9400  1d12 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9401  1d15 cd0000        	call	_gran_char
9403  1d18 85            	popw	x
9404                     ; 1455 				speed=1;
9406  1d19 35010000      	mov	_speed,#1
9407                     ; 1456 				HUMAN_SET_EE=1;
9409  1d1d ae0001        	ldw	x,#1
9410  1d20 89            	pushw	x
9411  1d21 ae401e        	ldw	x,#_HUMAN_SET_EE
9412  1d24 cd0000        	call	c_eewrw
9414  1d27 85            	popw	x
9415  1d28 acfe28fe      	jpf	L7453
9416  1d2c               L3073:
9417                     ; 1459 		else if(sub_ind==2)
9419  1d2c b662          	ld	a,_a_ind+1
9420  1d2e a102          	cp	a,#2
9421  1d30 2667          	jrne	L7173
9422                     ; 1461 			if((but==butU)||(but==butU_))
9424  1d32 b600          	ld	a,_but
9425  1d34 a1fb          	cp	a,#251
9426  1d36 2706          	jreq	L3273
9428  1d38 b600          	ld	a,_but
9429  1d3a a17b          	cp	a,#123
9430  1d3c 2624          	jrne	L1273
9431  1d3e               L3273:
9432                     ; 1463 				NECC_TEMPER_AIR_EE++;
9434  1d3e c64044        	ld	a,_NECC_TEMPER_AIR_EE
9435  1d41 4c            	inc	a
9436  1d42 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9437  1d45 cd0000        	call	c_eewrc
9439                     ; 1464 				gran_char(&NECC_TEMPER_AIR_EE,5,35);
9441  1d48 4b23          	push	#35
9442  1d4a 4b05          	push	#5
9443  1d4c ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9444  1d4f cd0000        	call	_gran_char
9446  1d52 85            	popw	x
9447                     ; 1465 				speed=1;
9449  1d53 35010000      	mov	_speed,#1
9450                     ; 1466 				HUMAN_SET_EE=1;
9452  1d57 ae0001        	ldw	x,#1
9453  1d5a 89            	pushw	x
9454  1d5b ae401e        	ldw	x,#_HUMAN_SET_EE
9455  1d5e cd0000        	call	c_eewrw
9457  1d61 85            	popw	x
9458  1d62               L1273:
9459                     ; 1468 			if((but==butD)||(but==butD_))
9461  1d62 b600          	ld	a,_but
9462  1d64 a1f7          	cp	a,#247
9463  1d66 2709          	jreq	L7273
9465  1d68 b600          	ld	a,_but
9466  1d6a a177          	cp	a,#119
9467  1d6c 2703          	jreq	L426
9468  1d6e cc28fe        	jp	L7453
9469  1d71               L426:
9470  1d71               L7273:
9471                     ; 1470 				NECC_TEMPER_AIR_EE--;
9473  1d71 c64044        	ld	a,_NECC_TEMPER_AIR_EE
9474  1d74 4a            	dec	a
9475  1d75 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9476  1d78 cd0000        	call	c_eewrc
9478                     ; 1471 				gran_char(&NECC_TEMPER_AIR_EE,5,35);
9480  1d7b 4b23          	push	#35
9481  1d7d 4b05          	push	#5
9482  1d7f ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9483  1d82 cd0000        	call	_gran_char
9485  1d85 85            	popw	x
9486                     ; 1472 				speed=1;
9488  1d86 35010000      	mov	_speed,#1
9489                     ; 1473 				HUMAN_SET_EE=1;
9491  1d8a ae0001        	ldw	x,#1
9492  1d8d 89            	pushw	x
9493  1d8e ae401e        	ldw	x,#_HUMAN_SET_EE
9494  1d91 cd0000        	call	c_eewrw
9496  1d94 85            	popw	x
9497  1d95 acfe28fe      	jpf	L7453
9498  1d99               L7173:
9499                     ; 1477 		else if(sub_ind==3)
9501  1d99 b662          	ld	a,_a_ind+1
9502  1d9b a103          	cp	a,#3
9503  1d9d 2667          	jrne	L3373
9504                     ; 1479 			if((but==butU)||(but==butU_))
9506  1d9f b600          	ld	a,_but
9507  1da1 a1fb          	cp	a,#251
9508  1da3 2706          	jreq	L7373
9510  1da5 b600          	ld	a,_but
9511  1da7 a17b          	cp	a,#123
9512  1da9 2624          	jrne	L5373
9513  1dab               L7373:
9514                     ; 1481 				MAX_POWER_EE++;
9516  1dab c64047        	ld	a,_MAX_POWER_EE
9517  1dae 4c            	inc	a
9518  1daf ae4047        	ldw	x,#_MAX_POWER_EE
9519  1db2 cd0000        	call	c_eewrc
9521                     ; 1482 				gran_char(&MAX_POWER_EE,1,3);
9523  1db5 4b03          	push	#3
9524  1db7 4b01          	push	#1
9525  1db9 ae4047        	ldw	x,#_MAX_POWER_EE
9526  1dbc cd0000        	call	_gran_char
9528  1dbf 85            	popw	x
9529                     ; 1483 				speed=1;
9531  1dc0 35010000      	mov	_speed,#1
9532                     ; 1484 				HUMAN_SET_EE=1;
9534  1dc4 ae0001        	ldw	x,#1
9535  1dc7 89            	pushw	x
9536  1dc8 ae401e        	ldw	x,#_HUMAN_SET_EE
9537  1dcb cd0000        	call	c_eewrw
9539  1dce 85            	popw	x
9540  1dcf               L5373:
9541                     ; 1486 			if((but==butD)||(but==butD_))
9543  1dcf b600          	ld	a,_but
9544  1dd1 a1f7          	cp	a,#247
9545  1dd3 2709          	jreq	L3473
9547  1dd5 b600          	ld	a,_but
9548  1dd7 a177          	cp	a,#119
9549  1dd9 2703          	jreq	L626
9550  1ddb cc28fe        	jp	L7453
9551  1dde               L626:
9552  1dde               L3473:
9553                     ; 1488 				MAX_POWER_EE--;
9555  1dde c64047        	ld	a,_MAX_POWER_EE
9556  1de1 4a            	dec	a
9557  1de2 ae4047        	ldw	x,#_MAX_POWER_EE
9558  1de5 cd0000        	call	c_eewrc
9560                     ; 1489 				gran_char(&MAX_POWER_EE,1,3);
9562  1de8 4b03          	push	#3
9563  1dea 4b01          	push	#1
9564  1dec ae4047        	ldw	x,#_MAX_POWER_EE
9565  1def cd0000        	call	_gran_char
9567  1df2 85            	popw	x
9568                     ; 1490 				speed=1;
9570  1df3 35010000      	mov	_speed,#1
9571                     ; 1491 				HUMAN_SET_EE=1;
9573  1df7 ae0001        	ldw	x,#1
9574  1dfa 89            	pushw	x
9575  1dfb ae401e        	ldw	x,#_HUMAN_SET_EE
9576  1dfe cd0000        	call	c_eewrw
9578  1e01 85            	popw	x
9579  1e02 acfe28fe      	jpf	L7453
9580  1e06               L3373:
9581                     ; 1494 		else if(sub_ind==4)
9583  1e06 b662          	ld	a,_a_ind+1
9584  1e08 a104          	cp	a,#4
9585  1e0a 2703          	jreq	L036
9586  1e0c cc1eac        	jp	L7473
9587  1e0f               L036:
9588                     ; 1497 			temp=time_year;
9590  1e0f b60c          	ld	a,_time_year
9591  1e11 6b03          	ld	(OFST+0,sp),a
9592                     ; 1499 			if((but==butU)||(but==butU_))
9594  1e13 b600          	ld	a,_but
9595  1e15 a1fb          	cp	a,#251
9596  1e17 2706          	jreq	L3573
9598  1e19 b600          	ld	a,_but
9599  1e1b a17b          	cp	a,#123
9600  1e1d 263d          	jrne	L1573
9601  1e1f               L3573:
9602                     ; 1501 				temp++;
9604  1e1f 0c03          	inc	(OFST+0,sp)
9605                     ; 1502 				gran_char(&temp,0,99);
9607  1e21 4b63          	push	#99
9608  1e23 4b00          	push	#0
9609  1e25 96            	ldw	x,sp
9610  1e26 1c0005        	addw	x,#OFST+2
9611  1e29 cd0000        	call	_gran_char
9613  1e2c 85            	popw	x
9614                     ; 1503 				_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
9616  1e2d 7b03          	ld	a,(OFST+0,sp)
9617  1e2f ae000a        	ldw	x,#10
9618  1e32 51            	exgw	x,y
9619  1e33 5f            	clrw	x
9620  1e34 4d            	tnz	a
9621  1e35 2a01          	jrpl	L434
9622  1e37 5a            	decw	x
9623  1e38               L434:
9624  1e38 02            	rlwa	x,a
9625  1e39 cd0000        	call	c_idiv
9627  1e3c 909f          	ld	a,yl
9628  1e3e 6b01          	ld	(OFST-2,sp),a
9629  1e40 7b03          	ld	a,(OFST+0,sp)
9630  1e42 ae000a        	ldw	x,#10
9631  1e45 51            	exgw	x,y
9632  1e46 5f            	clrw	x
9633  1e47 4d            	tnz	a
9634  1e48 2a01          	jrpl	L634
9635  1e4a 5a            	decw	x
9636  1e4b               L634:
9637  1e4b 02            	rlwa	x,a
9638  1e4c cd0000        	call	c_idiv
9640  1e4f 9f            	ld	a,xl
9641  1e50 4e            	swap	a
9642  1e51 a4f0          	and	a,#240
9643  1e53 1b01          	add	a,(OFST-2,sp)
9644  1e55 97            	ld	xl,a
9645  1e56 a606          	ld	a,#6
9646  1e58 95            	ld	xh,a
9647  1e59 cd0000        	call	__ds1307_write_byte
9649  1e5c               L1573:
9650                     ; 1506 			if((but==butD)||(but==butD_))
9652  1e5c b600          	ld	a,_but
9653  1e5e a1f7          	cp	a,#247
9654  1e60 2709          	jreq	L7573
9656  1e62 b600          	ld	a,_but
9657  1e64 a177          	cp	a,#119
9658  1e66 2703          	jreq	L236
9659  1e68 cc28fe        	jp	L7453
9660  1e6b               L236:
9661  1e6b               L7573:
9662                     ; 1508 				temp--;
9664  1e6b 0a03          	dec	(OFST+0,sp)
9665                     ; 1509 				gran_char(&temp,0,99);
9667  1e6d 4b63          	push	#99
9668  1e6f 4b00          	push	#0
9669  1e71 96            	ldw	x,sp
9670  1e72 1c0005        	addw	x,#OFST+2
9671  1e75 cd0000        	call	_gran_char
9673  1e78 85            	popw	x
9674                     ; 1510 				_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
9676  1e79 7b03          	ld	a,(OFST+0,sp)
9677  1e7b ae000a        	ldw	x,#10
9678  1e7e 51            	exgw	x,y
9679  1e7f 5f            	clrw	x
9680  1e80 4d            	tnz	a
9681  1e81 2a01          	jrpl	L044
9682  1e83 5a            	decw	x
9683  1e84               L044:
9684  1e84 02            	rlwa	x,a
9685  1e85 cd0000        	call	c_idiv
9687  1e88 909f          	ld	a,yl
9688  1e8a 6b01          	ld	(OFST-2,sp),a
9689  1e8c 7b03          	ld	a,(OFST+0,sp)
9690  1e8e ae000a        	ldw	x,#10
9691  1e91 51            	exgw	x,y
9692  1e92 5f            	clrw	x
9693  1e93 4d            	tnz	a
9694  1e94 2a01          	jrpl	L244
9695  1e96 5a            	decw	x
9696  1e97               L244:
9697  1e97 02            	rlwa	x,a
9698  1e98 cd0000        	call	c_idiv
9700  1e9b 9f            	ld	a,xl
9701  1e9c 4e            	swap	a
9702  1e9d a4f0          	and	a,#240
9703  1e9f 1b01          	add	a,(OFST-2,sp)
9704  1ea1 97            	ld	xl,a
9705  1ea2 a606          	ld	a,#6
9706  1ea4 95            	ld	xh,a
9707  1ea5 cd0000        	call	__ds1307_write_byte
9709  1ea8 acfe28fe      	jpf	L7453
9710  1eac               L7473:
9711                     ; 1513 		else if(sub_ind==5)
9713  1eac b662          	ld	a,_a_ind+1
9714  1eae a105          	cp	a,#5
9715  1eb0 2703          	jreq	L436
9716  1eb2 cc1f52        	jp	L3673
9717  1eb5               L436:
9718                     ; 1516 			temp=time_month;
9720  1eb5 b60d          	ld	a,_time_month
9721  1eb7 6b03          	ld	(OFST+0,sp),a
9722                     ; 1518 			if((but==butU)||(but==butU_))
9724  1eb9 b600          	ld	a,_but
9725  1ebb a1fb          	cp	a,#251
9726  1ebd 2706          	jreq	L7673
9728  1ebf b600          	ld	a,_but
9729  1ec1 a17b          	cp	a,#123
9730  1ec3 263d          	jrne	L5673
9731  1ec5               L7673:
9732                     ; 1520 				temp++;
9734  1ec5 0c03          	inc	(OFST+0,sp)
9735                     ; 1521 				gran_ring_char(&temp,1,12);
9737  1ec7 4b0c          	push	#12
9738  1ec9 4b01          	push	#1
9739  1ecb 96            	ldw	x,sp
9740  1ecc 1c0005        	addw	x,#OFST+2
9741  1ecf cd0000        	call	_gran_ring_char
9743  1ed2 85            	popw	x
9744                     ; 1522 				_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));
9746  1ed3 7b03          	ld	a,(OFST+0,sp)
9747  1ed5 ae000a        	ldw	x,#10
9748  1ed8 51            	exgw	x,y
9749  1ed9 5f            	clrw	x
9750  1eda 4d            	tnz	a
9751  1edb 2a01          	jrpl	L444
9752  1edd 5a            	decw	x
9753  1ede               L444:
9754  1ede 02            	rlwa	x,a
9755  1edf cd0000        	call	c_idiv
9757  1ee2 909f          	ld	a,yl
9758  1ee4 6b01          	ld	(OFST-2,sp),a
9759  1ee6 7b03          	ld	a,(OFST+0,sp)
9760  1ee8 ae000a        	ldw	x,#10
9761  1eeb 51            	exgw	x,y
9762  1eec 5f            	clrw	x
9763  1eed 4d            	tnz	a
9764  1eee 2a01          	jrpl	L644
9765  1ef0 5a            	decw	x
9766  1ef1               L644:
9767  1ef1 02            	rlwa	x,a
9768  1ef2 cd0000        	call	c_idiv
9770  1ef5 9f            	ld	a,xl
9771  1ef6 4e            	swap	a
9772  1ef7 a4f0          	and	a,#240
9773  1ef9 1b01          	add	a,(OFST-2,sp)
9774  1efb 97            	ld	xl,a
9775  1efc a605          	ld	a,#5
9776  1efe 95            	ld	xh,a
9777  1eff cd0000        	call	__ds1307_write_byte
9779  1f02               L5673:
9780                     ; 1525 			if((but==butD)||(but==butD_))
9782  1f02 b600          	ld	a,_but
9783  1f04 a1f7          	cp	a,#247
9784  1f06 2709          	jreq	L3773
9786  1f08 b600          	ld	a,_but
9787  1f0a a177          	cp	a,#119
9788  1f0c 2703          	jreq	L636
9789  1f0e cc28fe        	jp	L7453
9790  1f11               L636:
9791  1f11               L3773:
9792                     ; 1527 				temp--;
9794  1f11 0a03          	dec	(OFST+0,sp)
9795                     ; 1528 				gran_ring_char(&temp,1,12);
9797  1f13 4b0c          	push	#12
9798  1f15 4b01          	push	#1
9799  1f17 96            	ldw	x,sp
9800  1f18 1c0005        	addw	x,#OFST+2
9801  1f1b cd0000        	call	_gran_ring_char
9803  1f1e 85            	popw	x
9804                     ; 1529 				_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));
9806  1f1f 7b03          	ld	a,(OFST+0,sp)
9807  1f21 ae000a        	ldw	x,#10
9808  1f24 51            	exgw	x,y
9809  1f25 5f            	clrw	x
9810  1f26 4d            	tnz	a
9811  1f27 2a01          	jrpl	L054
9812  1f29 5a            	decw	x
9813  1f2a               L054:
9814  1f2a 02            	rlwa	x,a
9815  1f2b cd0000        	call	c_idiv
9817  1f2e 909f          	ld	a,yl
9818  1f30 6b01          	ld	(OFST-2,sp),a
9819  1f32 7b03          	ld	a,(OFST+0,sp)
9820  1f34 ae000a        	ldw	x,#10
9821  1f37 51            	exgw	x,y
9822  1f38 5f            	clrw	x
9823  1f39 4d            	tnz	a
9824  1f3a 2a01          	jrpl	L254
9825  1f3c 5a            	decw	x
9826  1f3d               L254:
9827  1f3d 02            	rlwa	x,a
9828  1f3e cd0000        	call	c_idiv
9830  1f41 9f            	ld	a,xl
9831  1f42 4e            	swap	a
9832  1f43 a4f0          	and	a,#240
9833  1f45 1b01          	add	a,(OFST-2,sp)
9834  1f47 97            	ld	xl,a
9835  1f48 a605          	ld	a,#5
9836  1f4a 95            	ld	xh,a
9837  1f4b cd0000        	call	__ds1307_write_byte
9839  1f4e acfe28fe      	jpf	L7453
9840  1f52               L3673:
9841                     ; 1532 		else if(sub_ind==6)
9843  1f52 b662          	ld	a,_a_ind+1
9844  1f54 a106          	cp	a,#6
9845  1f56 2703          	jreq	L046
9846  1f58 cc2034        	jp	L7773
9847  1f5b               L046:
9848                     ; 1535 			temp=time_date;
9850  1f5b b603          	ld	a,_time_date
9851  1f5d 6b03          	ld	(OFST+0,sp),a
9852                     ; 1536 			max_day=31;
9854  1f5f a61f          	ld	a,#31
9855  1f61 6b02          	ld	(OFST-1,sp),a
9856                     ; 1537 			if((time_month==4)||(time_month==6)||(time_month==9)||(time_month==11))max_day=30;
9858  1f63 b60d          	ld	a,_time_month
9859  1f65 a104          	cp	a,#4
9860  1f67 2712          	jreq	L3004
9862  1f69 b60d          	ld	a,_time_month
9863  1f6b a106          	cp	a,#6
9864  1f6d 270c          	jreq	L3004
9866  1f6f b60d          	ld	a,_time_month
9867  1f71 a109          	cp	a,#9
9868  1f73 2706          	jreq	L3004
9870  1f75 b60d          	ld	a,_time_month
9871  1f77 a10b          	cp	a,#11
9872  1f79 2612          	jrne	L1004
9873  1f7b               L3004:
9876  1f7b a61e          	ld	a,#30
9877  1f7d 6b02          	ld	(OFST-1,sp),a
9879  1f7f               L1104:
9880                     ; 1543 			if((but==butU)||(but==butU_))
9882  1f7f b600          	ld	a,_but
9883  1f81 a1fb          	cp	a,#251
9884  1f83 2720          	jreq	L3204
9886  1f85 b600          	ld	a,_but
9887  1f87 a17b          	cp	a,#123
9888  1f89 2658          	jrne	L1204
9889  1f8b 2018          	jra	L3204
9890  1f8d               L1004:
9891                     ; 1538 			else if(time_month==2)
9893  1f8d b60d          	ld	a,_time_month
9894  1f8f a102          	cp	a,#2
9895  1f91 26ec          	jrne	L1104
9896                     ; 1540 				if((time_year%4)==0)max_day=29;
9898  1f93 b60c          	ld	a,_time_year
9899  1f95 a503          	bcp	a,#3
9900  1f97 2606          	jrne	L5104
9903  1f99 a61d          	ld	a,#29
9904  1f9b 6b02          	ld	(OFST-1,sp),a
9906  1f9d 20e0          	jra	L1104
9907  1f9f               L5104:
9908                     ; 1541 				else max_day=28;
9910  1f9f a61c          	ld	a,#28
9911  1fa1 6b02          	ld	(OFST-1,sp),a
9912  1fa3 20da          	jra	L1104
9913  1fa5               L3204:
9914                     ; 1545 				temp++;
9916  1fa5 0c03          	inc	(OFST+0,sp)
9917                     ; 1546 				gran_ring_char(&temp,1,max_day);
9919  1fa7 7b02          	ld	a,(OFST-1,sp)
9920  1fa9 88            	push	a
9921  1faa 4b01          	push	#1
9922  1fac 96            	ldw	x,sp
9923  1fad 1c0005        	addw	x,#OFST+2
9924  1fb0 cd0000        	call	_gran_ring_char
9926  1fb3 85            	popw	x
9927                     ; 1547 				_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
9929  1fb4 7b03          	ld	a,(OFST+0,sp)
9930  1fb6 ae000a        	ldw	x,#10
9931  1fb9 51            	exgw	x,y
9932  1fba 5f            	clrw	x
9933  1fbb 4d            	tnz	a
9934  1fbc 2a01          	jrpl	L454
9935  1fbe 5a            	decw	x
9936  1fbf               L454:
9937  1fbf 02            	rlwa	x,a
9938  1fc0 cd0000        	call	c_idiv
9940  1fc3 909f          	ld	a,yl
9941  1fc5 6b01          	ld	(OFST-2,sp),a
9942  1fc7 7b03          	ld	a,(OFST+0,sp)
9943  1fc9 ae000a        	ldw	x,#10
9944  1fcc 51            	exgw	x,y
9945  1fcd 5f            	clrw	x
9946  1fce 4d            	tnz	a
9947  1fcf 2a01          	jrpl	L654
9948  1fd1 5a            	decw	x
9949  1fd2               L654:
9950  1fd2 02            	rlwa	x,a
9951  1fd3 cd0000        	call	c_idiv
9953  1fd6 9f            	ld	a,xl
9954  1fd7 4e            	swap	a
9955  1fd8 a4f0          	and	a,#240
9956  1fda 1b01          	add	a,(OFST-2,sp)
9957  1fdc 97            	ld	xl,a
9958  1fdd a604          	ld	a,#4
9959  1fdf 95            	ld	xh,a
9960  1fe0 cd0000        	call	__ds1307_write_byte
9962  1fe3               L1204:
9963                     ; 1550 			if((but==butD)||(but==butD_))
9965  1fe3 b600          	ld	a,_but
9966  1fe5 a1f7          	cp	a,#247
9967  1fe7 2709          	jreq	L7204
9969  1fe9 b600          	ld	a,_but
9970  1feb a177          	cp	a,#119
9971  1fed 2703          	jreq	L246
9972  1fef cc28fe        	jp	L7453
9973  1ff2               L246:
9974  1ff2               L7204:
9975                     ; 1552 				temp--;
9977  1ff2 0a03          	dec	(OFST+0,sp)
9978                     ; 1553 				gran_ring_char(&temp,1,max_day);
9980  1ff4 7b02          	ld	a,(OFST-1,sp)
9981  1ff6 88            	push	a
9982  1ff7 4b01          	push	#1
9983  1ff9 96            	ldw	x,sp
9984  1ffa 1c0005        	addw	x,#OFST+2
9985  1ffd cd0000        	call	_gran_ring_char
9987  2000 85            	popw	x
9988                     ; 1554 				_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
9990  2001 7b03          	ld	a,(OFST+0,sp)
9991  2003 ae000a        	ldw	x,#10
9992  2006 51            	exgw	x,y
9993  2007 5f            	clrw	x
9994  2008 4d            	tnz	a
9995  2009 2a01          	jrpl	L064
9996  200b 5a            	decw	x
9997  200c               L064:
9998  200c 02            	rlwa	x,a
9999  200d cd0000        	call	c_idiv
10001  2010 909f          	ld	a,yl
10002  2012 6b01          	ld	(OFST-2,sp),a
10003  2014 7b03          	ld	a,(OFST+0,sp)
10004  2016 ae000a        	ldw	x,#10
10005  2019 51            	exgw	x,y
10006  201a 5f            	clrw	x
10007  201b 4d            	tnz	a
10008  201c 2a01          	jrpl	L264
10009  201e 5a            	decw	x
10010  201f               L264:
10011  201f 02            	rlwa	x,a
10012  2020 cd0000        	call	c_idiv
10014  2023 9f            	ld	a,xl
10015  2024 4e            	swap	a
10016  2025 a4f0          	and	a,#240
10017  2027 1b01          	add	a,(OFST-2,sp)
10018  2029 97            	ld	xl,a
10019  202a a604          	ld	a,#4
10020  202c 95            	ld	xh,a
10021  202d cd0000        	call	__ds1307_write_byte
10023  2030 acfe28fe      	jpf	L7453
10024  2034               L7773:
10025                     ; 1557 		else if(sub_ind==7)
10027  2034 b662          	ld	a,_a_ind+1
10028  2036 a107          	cp	a,#7
10029  2038 2703          	jreq	L446
10030  203a cc20de        	jp	L3304
10031  203d               L446:
10032                     ; 1560 			temp=time_hour;
10034  203d b60f          	ld	a,_time_hour
10035  203f 6b03          	ld	(OFST+0,sp),a
10036                     ; 1562 			if((but==butU)||(but==butU_))
10038  2041 b600          	ld	a,_but
10039  2043 a1fb          	cp	a,#251
10040  2045 2706          	jreq	L7304
10042  2047 b600          	ld	a,_but
10043  2049 a17b          	cp	a,#123
10044  204b 263f          	jrne	L5304
10045  204d               L7304:
10046                     ; 1564 				temp++;
10048  204d 0c03          	inc	(OFST+0,sp)
10049                     ; 1565 				gran_ring_char(&temp,0,23);
10051  204f 4b17          	push	#23
10052  2051 4b00          	push	#0
10053  2053 96            	ldw	x,sp
10054  2054 1c0005        	addw	x,#OFST+2
10055  2057 cd0000        	call	_gran_ring_char
10057  205a 85            	popw	x
10058                     ; 1566 				_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);
10060  205b 7b03          	ld	a,(OFST+0,sp)
10061  205d ae000a        	ldw	x,#10
10062  2060 51            	exgw	x,y
10063  2061 5f            	clrw	x
10064  2062 4d            	tnz	a
10065  2063 2a01          	jrpl	L464
10066  2065 5a            	decw	x
10067  2066               L464:
10068  2066 02            	rlwa	x,a
10069  2067 cd0000        	call	c_idiv
10071  206a 909f          	ld	a,yl
10072  206c 6b01          	ld	(OFST-2,sp),a
10073  206e 7b03          	ld	a,(OFST+0,sp)
10074  2070 ae000a        	ldw	x,#10
10075  2073 51            	exgw	x,y
10076  2074 5f            	clrw	x
10077  2075 4d            	tnz	a
10078  2076 2a01          	jrpl	L664
10079  2078 5a            	decw	x
10080  2079               L664:
10081  2079 02            	rlwa	x,a
10082  207a cd0000        	call	c_idiv
10084  207d 9f            	ld	a,xl
10085  207e 4e            	swap	a
10086  207f a4f0          	and	a,#240
10087  2081 1b01          	add	a,(OFST-2,sp)
10088  2083 a4bf          	and	a,#191
10089  2085 97            	ld	xl,a
10090  2086 a602          	ld	a,#2
10091  2088 95            	ld	xh,a
10092  2089 cd0000        	call	__ds1307_write_byte
10094  208c               L5304:
10095                     ; 1569 			if((but==butD)||(but==butD_))
10097  208c b600          	ld	a,_but
10098  208e a1f7          	cp	a,#247
10099  2090 2709          	jreq	L3404
10101  2092 b600          	ld	a,_but
10102  2094 a177          	cp	a,#119
10103  2096 2703          	jreq	L646
10104  2098 cc28fe        	jp	L7453
10105  209b               L646:
10106  209b               L3404:
10107                     ; 1571 				temp--;
10109  209b 0a03          	dec	(OFST+0,sp)
10110                     ; 1572 				gran_ring_char(&temp,0,23);
10112  209d 4b17          	push	#23
10113  209f 4b00          	push	#0
10114  20a1 96            	ldw	x,sp
10115  20a2 1c0005        	addw	x,#OFST+2
10116  20a5 cd0000        	call	_gran_ring_char
10118  20a8 85            	popw	x
10119                     ; 1573 				_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);
10121  20a9 7b03          	ld	a,(OFST+0,sp)
10122  20ab ae000a        	ldw	x,#10
10123  20ae 51            	exgw	x,y
10124  20af 5f            	clrw	x
10125  20b0 4d            	tnz	a
10126  20b1 2a01          	jrpl	L074
10127  20b3 5a            	decw	x
10128  20b4               L074:
10129  20b4 02            	rlwa	x,a
10130  20b5 cd0000        	call	c_idiv
10132  20b8 909f          	ld	a,yl
10133  20ba 6b01          	ld	(OFST-2,sp),a
10134  20bc 7b03          	ld	a,(OFST+0,sp)
10135  20be ae000a        	ldw	x,#10
10136  20c1 51            	exgw	x,y
10137  20c2 5f            	clrw	x
10138  20c3 4d            	tnz	a
10139  20c4 2a01          	jrpl	L274
10140  20c6 5a            	decw	x
10141  20c7               L274:
10142  20c7 02            	rlwa	x,a
10143  20c8 cd0000        	call	c_idiv
10145  20cb 9f            	ld	a,xl
10146  20cc 4e            	swap	a
10147  20cd a4f0          	and	a,#240
10148  20cf 1b01          	add	a,(OFST-2,sp)
10149  20d1 a4bf          	and	a,#191
10150  20d3 97            	ld	xl,a
10151  20d4 a602          	ld	a,#2
10152  20d6 95            	ld	xh,a
10153  20d7 cd0000        	call	__ds1307_write_byte
10155  20da acfe28fe      	jpf	L7453
10156  20de               L3304:
10157                     ; 1576 		else if(sub_ind==8)
10159  20de b662          	ld	a,_a_ind+1
10160  20e0 a108          	cp	a,#8
10161  20e2 2703          	jreq	L056
10162  20e4 cc2190        	jp	L7404
10163  20e7               L056:
10164                     ; 1579 			temp=time_min;
10166  20e7 b610          	ld	a,_time_min
10167  20e9 6b03          	ld	(OFST+0,sp),a
10168                     ; 1581 			if((but==butU)||(but==butU_))
10170  20eb b600          	ld	a,_but
10171  20ed a1fb          	cp	a,#251
10172  20ef 2706          	jreq	L3504
10174  20f1 b600          	ld	a,_but
10175  20f3 a17b          	cp	a,#123
10176  20f5 2643          	jrne	L1504
10177  20f7               L3504:
10178                     ; 1583 				temp++;
10180  20f7 0c03          	inc	(OFST+0,sp)
10181                     ; 1584 				gran_ring_char(&temp,0,59);
10183  20f9 4b3b          	push	#59
10184  20fb 4b00          	push	#0
10185  20fd 96            	ldw	x,sp
10186  20fe 1c0005        	addw	x,#OFST+2
10187  2101 cd0000        	call	_gran_ring_char
10189  2104 85            	popw	x
10190                     ; 1585 				_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));
10192  2105 7b03          	ld	a,(OFST+0,sp)
10193  2107 ae000a        	ldw	x,#10
10194  210a 51            	exgw	x,y
10195  210b 5f            	clrw	x
10196  210c 4d            	tnz	a
10197  210d 2a01          	jrpl	L474
10198  210f 5a            	decw	x
10199  2110               L474:
10200  2110 02            	rlwa	x,a
10201  2111 cd0000        	call	c_idiv
10203  2114 909f          	ld	a,yl
10204  2116 6b01          	ld	(OFST-2,sp),a
10205  2118 7b03          	ld	a,(OFST+0,sp)
10206  211a ae000a        	ldw	x,#10
10207  211d 51            	exgw	x,y
10208  211e 5f            	clrw	x
10209  211f 4d            	tnz	a
10210  2120 2a01          	jrpl	L674
10211  2122 5a            	decw	x
10212  2123               L674:
10213  2123 02            	rlwa	x,a
10214  2124 cd0000        	call	c_idiv
10216  2127 9f            	ld	a,xl
10217  2128 4e            	swap	a
10218  2129 a4f0          	and	a,#240
10219  212b 1b01          	add	a,(OFST-2,sp)
10220  212d 97            	ld	xl,a
10221  212e a601          	ld	a,#1
10222  2130 95            	ld	xh,a
10223  2131 cd0000        	call	__ds1307_write_byte
10225                     ; 1586 				_ds1307_write_byte(0,0);
10227  2134 5f            	clrw	x
10228  2135 4f            	clr	a
10229  2136 95            	ld	xh,a
10230  2137 cd0000        	call	__ds1307_write_byte
10232  213a               L1504:
10233                     ; 1588 			if((but==butD)||(but==butD_))
10235  213a b600          	ld	a,_but
10236  213c a1f7          	cp	a,#247
10237  213e 2709          	jreq	L7504
10239  2140 b600          	ld	a,_but
10240  2142 a177          	cp	a,#119
10241  2144 2703          	jreq	L256
10242  2146 cc28fe        	jp	L7453
10243  2149               L256:
10244  2149               L7504:
10245                     ; 1590 				temp--;
10247  2149 0a03          	dec	(OFST+0,sp)
10248                     ; 1591 				gran_ring_char(&temp,0,59);
10250  214b 4b3b          	push	#59
10251  214d 4b00          	push	#0
10252  214f 96            	ldw	x,sp
10253  2150 1c0005        	addw	x,#OFST+2
10254  2153 cd0000        	call	_gran_ring_char
10256  2156 85            	popw	x
10257                     ; 1592 				_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));
10259  2157 7b03          	ld	a,(OFST+0,sp)
10260  2159 ae000a        	ldw	x,#10
10261  215c 51            	exgw	x,y
10262  215d 5f            	clrw	x
10263  215e 4d            	tnz	a
10264  215f 2a01          	jrpl	L005
10265  2161 5a            	decw	x
10266  2162               L005:
10267  2162 02            	rlwa	x,a
10268  2163 cd0000        	call	c_idiv
10270  2166 909f          	ld	a,yl
10271  2168 6b01          	ld	(OFST-2,sp),a
10272  216a 7b03          	ld	a,(OFST+0,sp)
10273  216c ae000a        	ldw	x,#10
10274  216f 51            	exgw	x,y
10275  2170 5f            	clrw	x
10276  2171 4d            	tnz	a
10277  2172 2a01          	jrpl	L205
10278  2174 5a            	decw	x
10279  2175               L205:
10280  2175 02            	rlwa	x,a
10281  2176 cd0000        	call	c_idiv
10283  2179 9f            	ld	a,xl
10284  217a 4e            	swap	a
10285  217b a4f0          	and	a,#240
10286  217d 1b01          	add	a,(OFST-2,sp)
10287  217f 97            	ld	xl,a
10288  2180 a601          	ld	a,#1
10289  2182 95            	ld	xh,a
10290  2183 cd0000        	call	__ds1307_write_byte
10292                     ; 1593 				_ds1307_write_byte(0,0);
10294  2186 5f            	clrw	x
10295  2187 4f            	clr	a
10296  2188 95            	ld	xh,a
10297  2189 cd0000        	call	__ds1307_write_byte
10299  218c acfe28fe      	jpf	L7453
10300  2190               L7404:
10301                     ; 1596 		else if(sub_ind==9)
10303  2190 b662          	ld	a,_a_ind+1
10304  2192 a109          	cp	a,#9
10305  2194 2703          	jreq	L456
10306  2196 cc28fe        	jp	L7453
10307  2199               L456:
10308                     ; 1599 			temp=time_day_of_week;
10310  2199 b60e          	ld	a,_time_day_of_week
10311  219b 6b03          	ld	(OFST+0,sp),a
10312                     ; 1601 			if((but==butU)||(but==butU_))
10314  219d b600          	ld	a,_but
10315  219f a1fb          	cp	a,#251
10316  21a1 2706          	jreq	L7604
10318  21a3 b600          	ld	a,_but
10319  21a5 a17b          	cp	a,#123
10320  21a7 2619          	jrne	L5604
10321  21a9               L7604:
10322                     ; 1603 				temp++;
10324  21a9 0c03          	inc	(OFST+0,sp)
10325                     ; 1604 				gran_ring_char(&temp,1,7);
10327  21ab 4b07          	push	#7
10328  21ad 4b01          	push	#1
10329  21af 96            	ldw	x,sp
10330  21b0 1c0005        	addw	x,#OFST+2
10331  21b3 cd0000        	call	_gran_ring_char
10333  21b6 85            	popw	x
10334                     ; 1605 				_ds1307_write_byte(3,temp&0x07);
10336  21b7 7b03          	ld	a,(OFST+0,sp)
10337  21b9 a407          	and	a,#7
10338  21bb 97            	ld	xl,a
10339  21bc a603          	ld	a,#3
10340  21be 95            	ld	xh,a
10341  21bf cd0000        	call	__ds1307_write_byte
10343  21c2               L5604:
10344                     ; 1607 			if((but==butD)||(but==butD_))
10346  21c2 b600          	ld	a,_but
10347  21c4 a1f7          	cp	a,#247
10348  21c6 2709          	jreq	L3704
10350  21c8 b600          	ld	a,_but
10351  21ca a177          	cp	a,#119
10352  21cc 2703          	jreq	L656
10353  21ce cc28fe        	jp	L7453
10354  21d1               L656:
10355  21d1               L3704:
10356                     ; 1609 				temp--;
10358  21d1 0a03          	dec	(OFST+0,sp)
10359                     ; 1610 				gran_ring_char(&temp,1,7);
10361  21d3 4b07          	push	#7
10362  21d5 4b01          	push	#1
10363  21d7 96            	ldw	x,sp
10364  21d8 1c0005        	addw	x,#OFST+2
10365  21db cd0000        	call	_gran_ring_char
10367  21de 85            	popw	x
10368                     ; 1611 				_ds1307_write_byte(3,temp&0x07);
10370  21df 7b03          	ld	a,(OFST+0,sp)
10371  21e1 a407          	and	a,#7
10372  21e3 97            	ld	xl,a
10373  21e4 a603          	ld	a,#3
10374  21e6 95            	ld	xh,a
10375  21e7 cd0000        	call	__ds1307_write_byte
10377  21ea acfe28fe      	jpf	L7453
10378  21ee               L1663:
10379                     ; 1616 else if(ind==iSetTable)
10381  21ee b661          	ld	a,_a_ind
10382  21f0 a105          	cp	a,#5
10383  21f2 2703          	jreq	L066
10384  21f4 cc2288        	jp	L7704
10385  21f7               L066:
10386                     ; 1618 	if((but==butU)/*||(but==butU_)*/)
10388  21f7 b600          	ld	a,_but
10389  21f9 a1fb          	cp	a,#251
10390  21fb 2617          	jrne	L1014
10391                     ; 1620 		sub_ind++;
10393  21fd 3c62          	inc	_a_ind+1
10394                     ; 1621 		gran_char(&sub_ind,0,34);
10396  21ff 4b22          	push	#34
10397  2201 4b00          	push	#0
10398  2203 ae0062        	ldw	x,#_a_ind+1
10399  2206 cd0000        	call	_gran_char
10401  2209 85            	popw	x
10402                     ; 1622 		clear_ind();
10404  220a cd0000        	call	_clear_ind
10406                     ; 1623 		ind_hndl();
10408  220d cd07bc        	call	_ind_hndl
10411  2210 acfe28fe      	jpf	L7453
10412  2214               L1014:
10413                     ; 1625 	else if((but==butD)/*||(but==butD_)*/)
10415  2214 b600          	ld	a,_but
10416  2216 a1f7          	cp	a,#247
10417  2218 2617          	jrne	L5014
10418                     ; 1627 		sub_ind--;
10420  221a 3a62          	dec	_a_ind+1
10421                     ; 1628 		gran_char(&sub_ind,0,34);
10423  221c 4b22          	push	#34
10424  221e 4b00          	push	#0
10425  2220 ae0062        	ldw	x,#_a_ind+1
10426  2223 cd0000        	call	_gran_char
10428  2226 85            	popw	x
10429                     ; 1629 		clear_ind();
10431  2227 cd0000        	call	_clear_ind
10433                     ; 1630 		ind_hndl();
10435  222a cd07bc        	call	_ind_hndl
10438  222d acfe28fe      	jpf	L7453
10439  2231               L5014:
10440                     ; 1632 	else if(but==butM)
10442  2231 b600          	ld	a,_but
10443  2233 a1fd          	cp	a,#253
10444  2235 2616          	jrne	L1114
10445                     ; 1634 		if(sub_ind1==0)sub_ind1=1;
10447  2237 3d63          	tnz	_a_ind+2
10448  2239 2606          	jrne	L3114
10451  223b 35010063      	mov	_a_ind+2,#1
10453  223f 2002          	jra	L5114
10454  2241               L3114:
10455                     ; 1635 		else sub_ind1=0;
10457  2241 3f63          	clr	_a_ind+2
10458  2243               L5114:
10459                     ; 1636 		clear_ind();
10461  2243 cd0000        	call	_clear_ind
10463                     ; 1637 		ind_hndl();
10465  2246 cd07bc        	call	_ind_hndl
10468  2249 acfe28fe      	jpf	L7453
10469  224d               L1114:
10470                     ; 1639 	else if((but==butD_)/*||(but==butD_)*/)
10472  224d b600          	ld	a,_but
10473  224f a177          	cp	a,#119
10474  2251 2610          	jrne	L1214
10475                     ; 1641 		tree_down(0,0);
10477  2253 5f            	clrw	x
10478  2254 4f            	clr	a
10479  2255 95            	ld	xh,a
10480  2256 cd0000        	call	_tree_down
10482                     ; 1642 		clear_ind();
10484  2259 cd0000        	call	_clear_ind
10486                     ; 1643 		ind_hndl();
10488  225c cd07bc        	call	_ind_hndl
10491  225f acfe28fe      	jpf	L7453
10492  2263               L1214:
10493                     ; 1645 	else if(but==butUD_)
10495  2263 b600          	ld	a,_but
10496  2265 a173          	cp	a,#115
10497  2267 2603          	jrne	L266
10498  2269 cc28fe        	jp	L7453
10499  226c               L266:
10501                     ; 1726 	else if(but==butM_)
10503  226c b600          	ld	a,_but
10504  226e a17d          	cp	a,#125
10505  2270 2703          	jreq	L466
10506  2272 cc28fe        	jp	L7453
10507  2275               L466:
10508                     ; 1728 		tree_up(iSetTable_,sub_ind,0,sub_ind1);
10510  2275 3b0063        	push	_a_ind+2
10511  2278 4b00          	push	#0
10512  227a b662          	ld	a,_a_ind+1
10513  227c 97            	ld	xl,a
10514  227d a606          	ld	a,#6
10515  227f 95            	ld	xh,a
10516  2280 cd0000        	call	_tree_up
10518  2283 85            	popw	x
10519  2284 acfe28fe      	jpf	L7453
10520  2288               L7704:
10521                     ; 1732 else if(ind==iSetTable_)
10523  2288 b661          	ld	a,_a_ind
10524  228a a106          	cp	a,#6
10525  228c 2703          	jreq	L666
10526  228e cc2513        	jp	L5314
10527  2291               L666:
10528                     ; 1734 	if(but==butM_)
10530  2291 b600          	ld	a,_but
10531  2293 a17d          	cp	a,#125
10532  2295 260a          	jrne	L7314
10533                     ; 1736 		tree_down(0,0);
10535  2297 5f            	clrw	x
10536  2298 4f            	clr	a
10537  2299 95            	ld	xh,a
10538  229a cd0000        	call	_tree_down
10541  229d acfe28fe      	jpf	L7453
10542  22a1               L7314:
10543                     ; 1738 	else if(but==butM)
10545  22a1 b600          	ld	a,_but
10546  22a3 a1fd          	cp	a,#253
10547  22a5 2618          	jrne	L3414
10548                     ; 1740 		if(sub_ind1==1)sub_ind1=0;
10550  22a7 b663          	ld	a,_a_ind+2
10551  22a9 a101          	cp	a,#1
10552  22ab 2604          	jrne	L5414
10555  22ad 3f63          	clr	_a_ind+2
10557  22af 2004          	jra	L7414
10558  22b1               L5414:
10559                     ; 1741 		else sub_ind1=1;
10561  22b1 35010063      	mov	_a_ind+2,#1
10562  22b5               L7414:
10563                     ; 1742 		clear_ind();
10565  22b5 cd0000        	call	_clear_ind
10567                     ; 1743 		ind_hndl();
10569  22b8 cd07bc        	call	_ind_hndl
10572  22bb acfe28fe      	jpf	L7453
10573  22bf               L3414:
10574                     ; 1745 	else if(sub_ind1==0)
10576  22bf 3d63          	tnz	_a_ind+2
10577  22c1 2703          	jreq	L076
10578  22c3 cc23f6        	jp	L3514
10579  22c6               L076:
10580                     ; 1750 		num_of_day=sub_ind/5;
10582  22c6 b662          	ld	a,_a_ind+1
10583  22c8 ae0005        	ldw	x,#5
10584  22cb 51            	exgw	x,y
10585  22cc 5f            	clrw	x
10586  22cd 4d            	tnz	a
10587  22ce 2a01          	jrpl	L405
10588  22d0 5a            	decw	x
10589  22d1               L405:
10590  22d1 02            	rlwa	x,a
10591  22d2 cd0000        	call	c_idiv
10593  22d5 9f            	ld	a,xl
10594  22d6 6b02          	ld	(OFST-1,sp),a
10595                     ; 1751 		num_of_set=sub_ind%5;
10597  22d8 b662          	ld	a,_a_ind+1
10598  22da ae0005        	ldw	x,#5
10599  22dd 51            	exgw	x,y
10600  22de 5f            	clrw	x
10601  22df 4d            	tnz	a
10602  22e0 2a01          	jrpl	L605
10603  22e2 5a            	decw	x
10604  22e3               L605:
10605  22e3 02            	rlwa	x,a
10606  22e4 cd0000        	call	c_idiv
10608  22e7 909f          	ld	a,yl
10609  22e9 6b03          	ld	(OFST+0,sp),a
10610                     ; 1753 		if((but==butU)||(but==butU_))
10612  22eb b600          	ld	a,_but
10613  22ed a1fb          	cp	a,#251
10614  22ef 2706          	jreq	L7514
10616  22f1 b600          	ld	a,_but
10617  22f3 a17b          	cp	a,#123
10618  22f5 2674          	jrne	L5514
10619  22f7               L7514:
10620                     ; 1755 			tempUC=TABLE_TIME_EE[num_of_day][num_of_set];
10622  22f7 7b02          	ld	a,(OFST-1,sp)
10623  22f9 97            	ld	xl,a
10624  22fa a605          	ld	a,#5
10625  22fc 42            	mul	x,a
10626  22fd 01            	rrwa	x,a
10627  22fe 1b03          	add	a,(OFST+0,sp)
10628  2300 2401          	jrnc	L015
10629  2302 5c            	incw	x
10630  2303               L015:
10631  2303 02            	rlwa	x,a
10632  2304 d64020        	ld	a,(_TABLE_TIME_EE,x)
10633  2307 b701          	ld	_tempUC,a
10634                     ; 1756 			tempUC++;
10636  2309 3c01          	inc	_tempUC
10637                     ; 1757 			if(tempUC>TABLE_TIME_EE_MAX[num_of_set])tempUC=TABLE_TIME_EE_MAX[num_of_set];
10639  230b 7b03          	ld	a,(OFST+0,sp)
10640  230d 5f            	clrw	x
10641  230e 97            	ld	xl,a
10642  230f d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10643  2312 b101          	cp	a,_tempUC
10644  2314 2409          	jruge	L1614
10647  2316 7b03          	ld	a,(OFST+0,sp)
10648  2318 5f            	clrw	x
10649  2319 97            	ld	xl,a
10650  231a d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10651  231d b701          	ld	_tempUC,a
10652  231f               L1614:
10653                     ; 1758 			if(tempUC<TABLE_TIME_EE_MIN[num_of_set])tempUC=TABLE_TIME_EE_MIN[num_of_set];
10655  231f 7b03          	ld	a,(OFST+0,sp)
10656  2321 5f            	clrw	x
10657  2322 97            	ld	xl,a
10658  2323 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10659  2326 b101          	cp	a,_tempUC
10660  2328 2309          	jrule	L3614
10663  232a 7b03          	ld	a,(OFST+0,sp)
10664  232c 5f            	clrw	x
10665  232d 97            	ld	xl,a
10666  232e d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10667  2331 b701          	ld	_tempUC,a
10668  2333               L3614:
10669                     ; 1759 			if(TABLE_TIME_EE[num_of_day][num_of_set]!=tempUC)TABLE_TIME_EE[num_of_day][num_of_set]=tempUC;
10671  2333 7b02          	ld	a,(OFST-1,sp)
10672  2335 97            	ld	xl,a
10673  2336 a605          	ld	a,#5
10674  2338 42            	mul	x,a
10675  2339 01            	rrwa	x,a
10676  233a 1b03          	add	a,(OFST+0,sp)
10677  233c 2401          	jrnc	L215
10678  233e 5c            	incw	x
10679  233f               L215:
10680  233f 02            	rlwa	x,a
10681  2340 d64020        	ld	a,(_TABLE_TIME_EE,x)
10682  2343 b101          	cp	a,_tempUC
10683  2345 2715          	jreq	L5614
10686  2347 7b02          	ld	a,(OFST-1,sp)
10687  2349 97            	ld	xl,a
10688  234a a605          	ld	a,#5
10689  234c 42            	mul	x,a
10690  234d 01            	rrwa	x,a
10691  234e 1b03          	add	a,(OFST+0,sp)
10692  2350 2401          	jrnc	L415
10693  2352 5c            	incw	x
10694  2353               L415:
10695  2353 02            	rlwa	x,a
10696  2354 b601          	ld	a,_tempUC
10697  2356 1c4020        	addw	x,#_TABLE_TIME_EE
10698  2359 cd0000        	call	c_eewrc
10700  235c               L5614:
10701                     ; 1760 			speed=1;
10703  235c 35010000      	mov	_speed,#1
10704                     ; 1761 			HUMAN_SET_EE=1;
10706  2360 ae0001        	ldw	x,#1
10707  2363 89            	pushw	x
10708  2364 ae401e        	ldw	x,#_HUMAN_SET_EE
10709  2367 cd0000        	call	c_eewrw
10711  236a 85            	popw	x
10712  236b               L5514:
10713                     ; 1763 		if((but==butD)||(but==butD_))
10715  236b b600          	ld	a,_but
10716  236d a1f7          	cp	a,#247
10717  236f 2709          	jreq	L1714
10719  2371 b600          	ld	a,_but
10720  2373 a177          	cp	a,#119
10721  2375 2703          	jreq	L276
10722  2377 cc28fe        	jp	L7453
10723  237a               L276:
10724  237a               L1714:
10725                     ; 1765 			tempUC=TABLE_TIME_EE[num_of_day][num_of_set];
10727  237a 7b02          	ld	a,(OFST-1,sp)
10728  237c 97            	ld	xl,a
10729  237d a605          	ld	a,#5
10730  237f 42            	mul	x,a
10731  2380 01            	rrwa	x,a
10732  2381 1b03          	add	a,(OFST+0,sp)
10733  2383 2401          	jrnc	L615
10734  2385 5c            	incw	x
10735  2386               L615:
10736  2386 02            	rlwa	x,a
10737  2387 d64020        	ld	a,(_TABLE_TIME_EE,x)
10738  238a b701          	ld	_tempUC,a
10739                     ; 1766 			if(tempUC)tempUC--;
10741  238c 3d01          	tnz	_tempUC
10742  238e 2702          	jreq	L3714
10745  2390 3a01          	dec	_tempUC
10746  2392               L3714:
10747                     ; 1767 			if(tempUC>TABLE_TIME_EE_MAX[num_of_set])tempUC=TABLE_TIME_EE_MAX[num_of_set];
10749  2392 7b03          	ld	a,(OFST+0,sp)
10750  2394 5f            	clrw	x
10751  2395 97            	ld	xl,a
10752  2396 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10753  2399 b101          	cp	a,_tempUC
10754  239b 2409          	jruge	L5714
10757  239d 7b03          	ld	a,(OFST+0,sp)
10758  239f 5f            	clrw	x
10759  23a0 97            	ld	xl,a
10760  23a1 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10761  23a4 b701          	ld	_tempUC,a
10762  23a6               L5714:
10763                     ; 1768 			if(tempUC<TABLE_TIME_EE_MIN[num_of_set])tempUC=TABLE_TIME_EE_MIN[num_of_set];
10765  23a6 7b03          	ld	a,(OFST+0,sp)
10766  23a8 5f            	clrw	x
10767  23a9 97            	ld	xl,a
10768  23aa d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10769  23ad b101          	cp	a,_tempUC
10770  23af 2309          	jrule	L7714
10773  23b1 7b03          	ld	a,(OFST+0,sp)
10774  23b3 5f            	clrw	x
10775  23b4 97            	ld	xl,a
10776  23b5 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10777  23b8 b701          	ld	_tempUC,a
10778  23ba               L7714:
10779                     ; 1769 			if(TABLE_TIME_EE[num_of_day][num_of_set]!=tempUC)TABLE_TIME_EE[num_of_day][num_of_set]=tempUC;
10781  23ba 7b02          	ld	a,(OFST-1,sp)
10782  23bc 97            	ld	xl,a
10783  23bd a605          	ld	a,#5
10784  23bf 42            	mul	x,a
10785  23c0 01            	rrwa	x,a
10786  23c1 1b03          	add	a,(OFST+0,sp)
10787  23c3 2401          	jrnc	L025
10788  23c5 5c            	incw	x
10789  23c6               L025:
10790  23c6 02            	rlwa	x,a
10791  23c7 d64020        	ld	a,(_TABLE_TIME_EE,x)
10792  23ca b101          	cp	a,_tempUC
10793  23cc 2715          	jreq	L1024
10796  23ce 7b02          	ld	a,(OFST-1,sp)
10797  23d0 97            	ld	xl,a
10798  23d1 a605          	ld	a,#5
10799  23d3 42            	mul	x,a
10800  23d4 01            	rrwa	x,a
10801  23d5 1b03          	add	a,(OFST+0,sp)
10802  23d7 2401          	jrnc	L225
10803  23d9 5c            	incw	x
10804  23da               L225:
10805  23da 02            	rlwa	x,a
10806  23db b601          	ld	a,_tempUC
10807  23dd 1c4020        	addw	x,#_TABLE_TIME_EE
10808  23e0 cd0000        	call	c_eewrc
10810  23e3               L1024:
10811                     ; 1770 			speed=1;
10813  23e3 35010000      	mov	_speed,#1
10814                     ; 1771 			HUMAN_SET_EE=1;
10816  23e7 ae0001        	ldw	x,#1
10817  23ea 89            	pushw	x
10818  23eb ae401e        	ldw	x,#_HUMAN_SET_EE
10819  23ee cd0000        	call	c_eewrw
10821  23f1 85            	popw	x
10822  23f2 acfe28fe      	jpf	L7453
10823  23f6               L3514:
10824                     ; 1774 	else if(sub_ind1==1)
10826  23f6 b663          	ld	a,_a_ind+2
10827  23f8 a101          	cp	a,#1
10828  23fa 2703          	jreq	L476
10829  23fc cc28fe        	jp	L7453
10830  23ff               L476:
10831                     ; 1779 		num_of_day=sub_ind/5;
10833  23ff b662          	ld	a,_a_ind+1
10834  2401 ae0005        	ldw	x,#5
10835  2404 51            	exgw	x,y
10836  2405 5f            	clrw	x
10837  2406 4d            	tnz	a
10838  2407 2a01          	jrpl	L425
10839  2409 5a            	decw	x
10840  240a               L425:
10841  240a 02            	rlwa	x,a
10842  240b cd0000        	call	c_idiv
10844  240e 9f            	ld	a,xl
10845  240f 6b02          	ld	(OFST-1,sp),a
10846                     ; 1780 		num_of_set=sub_ind%5;
10848  2411 b662          	ld	a,_a_ind+1
10849  2413 ae0005        	ldw	x,#5
10850  2416 51            	exgw	x,y
10851  2417 5f            	clrw	x
10852  2418 4d            	tnz	a
10853  2419 2a01          	jrpl	L625
10854  241b 5a            	decw	x
10855  241c               L625:
10856  241c 02            	rlwa	x,a
10857  241d cd0000        	call	c_idiv
10859  2420 909f          	ld	a,yl
10860  2422 6b03          	ld	(OFST+0,sp),a
10861                     ; 1782 		if((but==butU)||(but==butU_))
10863  2424 b600          	ld	a,_but
10864  2426 a1fb          	cp	a,#251
10865  2428 2706          	jreq	L1124
10867  242a b600          	ld	a,_but
10868  242c a17b          	cp	a,#123
10869  242e 2668          	jrne	L7024
10870  2430               L1124:
10871                     ; 1784 			tempUC=TABLE_TEMPER_EE[num_of_day][num_of_set];
10873  2430 7b02          	ld	a,(OFST-1,sp)
10874  2432 97            	ld	xl,a
10875  2433 a605          	ld	a,#5
10876  2435 42            	mul	x,a
10877  2436 01            	rrwa	x,a
10878  2437 1b03          	add	a,(OFST+0,sp)
10879  2439 2401          	jrnc	L035
10880  243b 5c            	incw	x
10881  243c               L035:
10882  243c 02            	rlwa	x,a
10883  243d d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10884  2440 b701          	ld	_tempUC,a
10885                     ; 1785 			if(tempUC)tempUC++;
10887  2442 3d01          	tnz	_tempUC
10888  2444 2702          	jreq	L3124
10891  2446 3c01          	inc	_tempUC
10892  2448               L3124:
10893                     ; 1786 			if(tempUC>35)tempUC=35;
10895  2448 b601          	ld	a,_tempUC
10896  244a a124          	cp	a,#36
10897  244c 2504          	jrult	L5124
10900  244e 35230001      	mov	_tempUC,#35
10901  2452               L5124:
10902                     ; 1787 			if(tempUC<5)tempUC=5;
10904  2452 b601          	ld	a,_tempUC
10905  2454 a105          	cp	a,#5
10906  2456 2404          	jruge	L7124
10909  2458 35050001      	mov	_tempUC,#5
10910  245c               L7124:
10911                     ; 1788 			if(TABLE_TEMPER_EE[num_of_day][num_of_set]!=tempUC)TABLE_TEMPER_EE[num_of_day][num_of_set]=tempUC;
10913  245c 7b02          	ld	a,(OFST-1,sp)
10914  245e 97            	ld	xl,a
10915  245f a605          	ld	a,#5
10916  2461 42            	mul	x,a
10917  2462 01            	rrwa	x,a
10918  2463 1b03          	add	a,(OFST+0,sp)
10919  2465 2401          	jrnc	L235
10920  2467 5c            	incw	x
10921  2468               L235:
10922  2468 02            	rlwa	x,a
10923  2469 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10924  246c 5f            	clrw	x
10925  246d 4d            	tnz	a
10926  246e 2a01          	jrpl	L435
10927  2470 53            	cplw	x
10928  2471               L435:
10929  2471 97            	ld	xl,a
10930  2472 b601          	ld	a,_tempUC
10931  2474 905f          	clrw	y
10932  2476 9097          	ld	yl,a
10933  2478 90bf00        	ldw	c_y,y
10934  247b b300          	cpw	x,c_y
10935  247d 2715          	jreq	L1224
10938  247f 7b02          	ld	a,(OFST-1,sp)
10939  2481 97            	ld	xl,a
10940  2482 a605          	ld	a,#5
10941  2484 42            	mul	x,a
10942  2485 01            	rrwa	x,a
10943  2486 1b03          	add	a,(OFST+0,sp)
10944  2488 2401          	jrnc	L635
10945  248a 5c            	incw	x
10946  248b               L635:
10947  248b 02            	rlwa	x,a
10948  248c b601          	ld	a,_tempUC
10949  248e 1c4048        	addw	x,#_TABLE_TEMPER_EE
10950  2491 cd0000        	call	c_eewrc
10952  2494               L1224:
10953                     ; 1789 			speed=1;
10955  2494 35010000      	mov	_speed,#1
10956  2498               L7024:
10957                     ; 1791 		if((but==butD)||(but==butD_))
10959  2498 b600          	ld	a,_but
10960  249a a1f7          	cp	a,#247
10961  249c 2709          	jreq	L5224
10963  249e b600          	ld	a,_but
10964  24a0 a177          	cp	a,#119
10965  24a2 2703          	jreq	L676
10966  24a4 cc28fe        	jp	L7453
10967  24a7               L676:
10968  24a7               L5224:
10969                     ; 1793 			tempUC=TABLE_TEMPER_EE[num_of_day][num_of_set];
10971  24a7 7b02          	ld	a,(OFST-1,sp)
10972  24a9 97            	ld	xl,a
10973  24aa a605          	ld	a,#5
10974  24ac 42            	mul	x,a
10975  24ad 01            	rrwa	x,a
10976  24ae 1b03          	add	a,(OFST+0,sp)
10977  24b0 2401          	jrnc	L045
10978  24b2 5c            	incw	x
10979  24b3               L045:
10980  24b3 02            	rlwa	x,a
10981  24b4 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10982  24b7 b701          	ld	_tempUC,a
10983                     ; 1794 			if(tempUC)tempUC--;
10985  24b9 3d01          	tnz	_tempUC
10986  24bb 2702          	jreq	L7224
10989  24bd 3a01          	dec	_tempUC
10990  24bf               L7224:
10991                     ; 1795 			if(tempUC>35)tempUC=35;
10993  24bf b601          	ld	a,_tempUC
10994  24c1 a124          	cp	a,#36
10995  24c3 2504          	jrult	L1324
10998  24c5 35230001      	mov	_tempUC,#35
10999  24c9               L1324:
11000                     ; 1796 			if(tempUC<5)tempUC=5;
11002  24c9 b601          	ld	a,_tempUC
11003  24cb a105          	cp	a,#5
11004  24cd 2404          	jruge	L3324
11007  24cf 35050001      	mov	_tempUC,#5
11008  24d3               L3324:
11009                     ; 1797 			if(TABLE_TEMPER_EE[num_of_day][num_of_set]!=tempUC)TABLE_TEMPER_EE[num_of_day][num_of_set]=tempUC;
11011  24d3 7b02          	ld	a,(OFST-1,sp)
11012  24d5 97            	ld	xl,a
11013  24d6 a605          	ld	a,#5
11014  24d8 42            	mul	x,a
11015  24d9 01            	rrwa	x,a
11016  24da 1b03          	add	a,(OFST+0,sp)
11017  24dc 2401          	jrnc	L245
11018  24de 5c            	incw	x
11019  24df               L245:
11020  24df 02            	rlwa	x,a
11021  24e0 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
11022  24e3 5f            	clrw	x
11023  24e4 4d            	tnz	a
11024  24e5 2a01          	jrpl	L445
11025  24e7 53            	cplw	x
11026  24e8               L445:
11027  24e8 97            	ld	xl,a
11028  24e9 b601          	ld	a,_tempUC
11029  24eb 905f          	clrw	y
11030  24ed 9097          	ld	yl,a
11031  24ef 90bf00        	ldw	c_y,y
11032  24f2 b300          	cpw	x,c_y
11033  24f4 2715          	jreq	L5324
11036  24f6 7b02          	ld	a,(OFST-1,sp)
11037  24f8 97            	ld	xl,a
11038  24f9 a605          	ld	a,#5
11039  24fb 42            	mul	x,a
11040  24fc 01            	rrwa	x,a
11041  24fd 1b03          	add	a,(OFST+0,sp)
11042  24ff 2401          	jrnc	L645
11043  2501 5c            	incw	x
11044  2502               L645:
11045  2502 02            	rlwa	x,a
11046  2503 b601          	ld	a,_tempUC
11047  2505 1c4048        	addw	x,#_TABLE_TEMPER_EE
11048  2508 cd0000        	call	c_eewrc
11050  250b               L5324:
11051                     ; 1798 			speed=1;
11053  250b 35010000      	mov	_speed,#1
11054  250f acfe28fe      	jpf	L7453
11055  2513               L5314:
11056                     ; 1802 else if(ind==iDeb)
11058  2513 b661          	ld	a,_a_ind
11059  2515 a107          	cp	a,#7
11060  2517 2703          	jreq	L007
11061  2519 cc25ad        	jp	L1424
11062  251c               L007:
11063                     ; 1804 	if(but==butU)
11065  251c b600          	ld	a,_but
11066  251e a1fb          	cp	a,#251
11067  2520 2617          	jrne	L3424
11068                     ; 1806 		sub_ind++;
11070  2522 3c62          	inc	_a_ind+1
11071                     ; 1807 		gran_char(&sub_ind,0,12);
11073  2524 4b0c          	push	#12
11074  2526 4b00          	push	#0
11075  2528 ae0062        	ldw	x,#_a_ind+1
11076  252b cd0000        	call	_gran_char
11078  252e 85            	popw	x
11079                     ; 1808 		clear_ind();
11081  252f cd0000        	call	_clear_ind
11083                     ; 1809 		ind_hndl();
11085  2532 cd07bc        	call	_ind_hndl
11088  2535 acfe28fe      	jpf	L7453
11089  2539               L3424:
11090                     ; 1811 	else if(but==butD)
11092  2539 b600          	ld	a,_but
11093  253b a1f7          	cp	a,#247
11094  253d 2617          	jrne	L7424
11095                     ; 1813 		sub_ind--;
11097  253f 3a62          	dec	_a_ind+1
11098                     ; 1814 		gran_char(&sub_ind,0,12);
11100  2541 4b0c          	push	#12
11101  2543 4b00          	push	#0
11102  2545 ae0062        	ldw	x,#_a_ind+1
11103  2548 cd0000        	call	_gran_char
11105  254b 85            	popw	x
11106                     ; 1815 		clear_ind();
11108  254c cd0000        	call	_clear_ind
11110                     ; 1816 		ind_hndl();
11112  254f cd07bc        	call	_ind_hndl
11115  2552 acfe28fe      	jpf	L7453
11116  2556               L7424:
11117                     ; 1818 	else if(but==butD_)
11119  2556 b600          	ld	a,_but
11120  2558 a177          	cp	a,#119
11121  255a 260b          	jrne	L3524
11122                     ; 1820 		tree_down(-1,0);
11124  255c 5f            	clrw	x
11125  255d a6ff          	ld	a,#255
11126  255f 95            	ld	xh,a
11127  2560 cd0000        	call	_tree_down
11130  2563 acfe28fe      	jpf	L7453
11131  2567               L3524:
11132                     ; 1822 	else if(but==butM)
11134  2567 b600          	ld	a,_but
11135  2569 a1fd          	cp	a,#253
11136  256b 2610          	jrne	L7524
11137                     ; 1824 		tree_up(iModem_deb,0,0,0);
11139  256d 4b00          	push	#0
11140  256f 4b00          	push	#0
11141  2571 5f            	clrw	x
11142  2572 a60a          	ld	a,#10
11143  2574 95            	ld	xh,a
11144  2575 cd0000        	call	_tree_up
11146  2578 85            	popw	x
11148  2579 acfe28fe      	jpf	L7453
11149  257d               L7524:
11150                     ; 1829 	else if(sub_ind==8)
11152  257d b662          	ld	a,_a_ind+1
11153  257f a108          	cp	a,#8
11154  2581 2703          	jreq	L207
11155  2583 cc28fe        	jp	L7453
11156  2586               L207:
11157                     ; 1831 		if((but==butU)||(but==butD)||(but==butM)||(but==butON))	
11159  2586 b600          	ld	a,_but
11160  2588 a1fb          	cp	a,#251
11161  258a 2715          	jreq	L7624
11163  258c b600          	ld	a,_but
11164  258e a1f7          	cp	a,#247
11165  2590 270f          	jreq	L7624
11167  2592 b600          	ld	a,_but
11168  2594 a1fd          	cp	a,#253
11169  2596 2709          	jreq	L7624
11171  2598 b600          	ld	a,_but
11172  259a a1fe          	cp	a,#254
11173  259c 2703          	jreq	L407
11174  259e cc28fe        	jp	L7453
11175  25a1               L407:
11176  25a1               L7624:
11177                     ; 1833 			beepTestCnt=10;
11179  25a1 350a0008      	mov	_beepTestCnt,#10
11180                     ; 1834 			ind_check_cnt=0;
11182  25a5 5f            	clrw	x
11183  25a6 cf0006        	ldw	_ind_check_cnt,x
11184  25a9 acfe28fe      	jpf	L7453
11185  25ad               L1424:
11186                     ; 1839 else if(ind==iModem_deb)
11188  25ad b661          	ld	a,_a_ind
11189  25af a10a          	cp	a,#10
11190  25b1 2703          	jreq	L607
11191  25b3 cc2664        	jp	L7724
11192  25b6               L607:
11193                     ; 1841 	if(but==butU)
11195  25b6 b600          	ld	a,_but
11196  25b8 a1fb          	cp	a,#251
11197  25ba 2603          	jrne	L017
11198  25bc cc28fe        	jp	L7453
11199  25bf               L017:
11201                     ; 1852 	else if(but==butD)
11203  25bf b600          	ld	a,_but
11204  25c1 a1f7          	cp	a,#247
11205  25c3 2603          	jrne	L217
11206  25c5 cc28fe        	jp	L7453
11207  25c8               L217:
11209                     ; 1860 	else if(but==butUD_)
11211  25c8 b600          	ld	a,_but
11212  25ca a173          	cp	a,#115
11213  25cc 260a          	jrne	L1134
11214                     ; 1862 		tree_down(0,0);
11216  25ce 5f            	clrw	x
11217  25cf 4f            	clr	a
11218  25d0 95            	ld	xh,a
11219  25d1 cd0000        	call	_tree_down
11222  25d4 acfe28fe      	jpf	L7453
11223  25d8               L1134:
11224                     ; 1880 	else if(but==butD_)
11226  25d8 b600          	ld	a,_but
11227  25da a177          	cp	a,#119
11228  25dc 2616          	jrne	L5134
11229                     ; 1882 		AUTH_NUMBER_FLAGS=0;
11231  25de 4f            	clr	a
11232  25df ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
11233  25e2 cd0000        	call	c_eewrc
11235                     ; 1887 		HUMAN_SET_EE=1;
11237  25e5 ae0001        	ldw	x,#1
11238  25e8 89            	pushw	x
11239  25e9 ae401e        	ldw	x,#_HUMAN_SET_EE
11240  25ec cd0000        	call	c_eewrw
11242  25ef 85            	popw	x
11244  25f0 acfe28fe      	jpf	L7453
11245  25f4               L5134:
11246                     ; 1889 	else if(but==butU_)
11248  25f4 b600          	ld	a,_but
11249  25f6 a17b          	cp	a,#123
11250  25f8 261a          	jrne	L1234
11251                     ; 1891 		AUTH_NUMBER_FLAGS&=0x01;
11253  25fa c6407f        	ld	a,_AUTH_NUMBER_FLAGS
11254  25fd a401          	and	a,#1
11255  25ff ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
11256  2602 cd0000        	call	c_eewrc
11258                     ; 1896 		HUMAN_SET_EE=1;
11260  2605 ae0001        	ldw	x,#1
11261  2608 89            	pushw	x
11262  2609 ae401e        	ldw	x,#_HUMAN_SET_EE
11263  260c cd0000        	call	c_eewrw
11265  260f 85            	popw	x
11267  2610 acfe28fe      	jpf	L7453
11268  2614               L1234:
11269                     ; 1898 	else if(but==butUD_)
11271  2614 b600          	ld	a,_but
11272  2616 a173          	cp	a,#115
11273  2618 2703          	jreq	L417
11274  261a cc28fe        	jp	L7453
11275  261d               L417:
11276                     ; 1900 		AUTH_NUMBER_FLAGS=0x0f;
11278  261d a60f          	ld	a,#15
11279  261f ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
11280  2622 cd0000        	call	c_eewrc
11282                     ; 1901 		memcpy(MAIN_NUMBER,"9139294352",10);
11284  2625 ae000a        	ldw	x,#10
11285  2628               L055:
11286  2628 d6006b        	ld	a,(L7234-1,x)
11287  262b d74001        	ld	(_MAIN_NUMBER-1,x),a
11288  262e 5a            	decw	x
11289  262f 26f7          	jrne	L055
11290                     ; 1902 		memcpy(AUTH_NUMBER_1,"9134863890",10);
11292  2631 ae000a        	ldw	x,#10
11293  2634               L255:
11294  2634 d60060        	ld	a,(L1334-1,x)
11295  2637 d7400b        	ld	(_AUTH_NUMBER_1-1,x),a
11296  263a 5a            	decw	x
11297  263b 26f7          	jrne	L255
11298                     ; 1903 		memcpy(AUTH_NUMBER_2,"9237328354",10);
11300  263d ae000a        	ldw	x,#10
11301  2640               L455:
11302  2640 d60055        	ld	a,(L3334-1,x)
11303  2643 d7406a        	ld	(_AUTH_NUMBER_2-1,x),a
11304  2646 5a            	decw	x
11305  2647 26f7          	jrne	L455
11306                     ; 1904 		memcpy(AUTH_NUMBER_3,"11234567890",10);
11308  2649 ae000a        	ldw	x,#10
11309  264c               L655:
11310  264c d60049        	ld	a,(L5334-1,x)
11311  264f d74074        	ld	(_AUTH_NUMBER_3-1,x),a
11312  2652 5a            	decw	x
11313  2653 26f7          	jrne	L655
11314                     ; 1905 		HUMAN_SET_EE=1;
11316  2655 ae0001        	ldw	x,#1
11317  2658 89            	pushw	x
11318  2659 ae401e        	ldw	x,#_HUMAN_SET_EE
11319  265c cd0000        	call	c_eewrw
11321  265f 85            	popw	x
11322  2660 acfe28fe      	jpf	L7453
11323  2664               L7724:
11324                     ; 1909 else if(ind==iDefSet)
11326  2664 b661          	ld	a,_a_ind
11327  2666 a109          	cp	a,#9
11328  2668 2703          	jreq	L617
11329  266a cc28d8        	jp	L1434
11330  266d               L617:
11331                     ; 1911 	if(but==butMU_)
11333  266d b600          	ld	a,_but
11334  266f a179          	cp	a,#121
11335  2671 2703          	jreq	L027
11336  2673 cc28fe        	jp	L7453
11337  2676               L027:
11338                     ; 1913 		TABLE_TIME_EE[0][0]=0;
11340  2676 4f            	clr	a
11341  2677 ae4020        	ldw	x,#_TABLE_TIME_EE
11342  267a cd0000        	call	c_eewrc
11344                     ; 1914 		TABLE_TEMPER_EE[0][0]=20;	
11346  267d a614          	ld	a,#20
11347  267f ae4048        	ldw	x,#_TABLE_TEMPER_EE
11348  2682 cd0000        	call	c_eewrc
11350                     ; 1915 		TABLE_TIME_EE[0][1]=36;
11352  2685 a624          	ld	a,#36
11353  2687 ae4021        	ldw	x,#_TABLE_TIME_EE+1
11354  268a cd0000        	call	c_eewrc
11356                     ; 1916 		TABLE_TEMPER_EE[0][1]=20;	
11358  268d a614          	ld	a,#20
11359  268f ae4049        	ldw	x,#_TABLE_TEMPER_EE+1
11360  2692 cd0000        	call	c_eewrc
11362                     ; 1917 		TABLE_TIME_EE[0][2]=72;
11364  2695 a648          	ld	a,#72
11365  2697 ae4022        	ldw	x,#_TABLE_TIME_EE+2
11366  269a cd0000        	call	c_eewrc
11368                     ; 1918 		TABLE_TEMPER_EE[0][2]=20;	
11370  269d a614          	ld	a,#20
11371  269f ae404a        	ldw	x,#_TABLE_TEMPER_EE+2
11372  26a2 cd0000        	call	c_eewrc
11374                     ; 1919 		TABLE_TIME_EE[0][3]=108;
11376  26a5 a66c          	ld	a,#108
11377  26a7 ae4023        	ldw	x,#_TABLE_TIME_EE+3
11378  26aa cd0000        	call	c_eewrc
11380                     ; 1920 		TABLE_TEMPER_EE[0][3]=20;	
11382  26ad a614          	ld	a,#20
11383  26af ae404b        	ldw	x,#_TABLE_TEMPER_EE+3
11384  26b2 cd0000        	call	c_eewrc
11386                     ; 1921 		TABLE_TIME_EE[0][4]=126;
11388  26b5 a67e          	ld	a,#126
11389  26b7 ae4024        	ldw	x,#_TABLE_TIME_EE+4
11390  26ba cd0000        	call	c_eewrc
11392                     ; 1922 		TABLE_TEMPER_EE[0][4]=20;
11394  26bd a614          	ld	a,#20
11395  26bf ae404c        	ldw	x,#_TABLE_TEMPER_EE+4
11396  26c2 cd0000        	call	c_eewrc
11398                     ; 1924 		TABLE_TIME_EE[1][0]=0;
11400  26c5 4f            	clr	a
11401  26c6 ae4025        	ldw	x,#_TABLE_TIME_EE+5
11402  26c9 cd0000        	call	c_eewrc
11404                     ; 1925 		TABLE_TEMPER_EE[1][0]=20;	
11406  26cc a614          	ld	a,#20
11407  26ce ae404d        	ldw	x,#_TABLE_TEMPER_EE+5
11408  26d1 cd0000        	call	c_eewrc
11410                     ; 1926 		TABLE_TIME_EE[1][1]=36;
11412  26d4 a624          	ld	a,#36
11413  26d6 ae4026        	ldw	x,#_TABLE_TIME_EE+6
11414  26d9 cd0000        	call	c_eewrc
11416                     ; 1927 		TABLE_TEMPER_EE[1][1]=20;	
11418  26dc a614          	ld	a,#20
11419  26de ae404e        	ldw	x,#_TABLE_TEMPER_EE+6
11420  26e1 cd0000        	call	c_eewrc
11422                     ; 1928 		TABLE_TIME_EE[1][2]=72;
11424  26e4 a648          	ld	a,#72
11425  26e6 ae4027        	ldw	x,#_TABLE_TIME_EE+7
11426  26e9 cd0000        	call	c_eewrc
11428                     ; 1929 		TABLE_TEMPER_EE[1][2]=20;	
11430  26ec a614          	ld	a,#20
11431  26ee ae404f        	ldw	x,#_TABLE_TEMPER_EE+7
11432  26f1 cd0000        	call	c_eewrc
11434                     ; 1930 		TABLE_TIME_EE[1][3]=108;
11436  26f4 a66c          	ld	a,#108
11437  26f6 ae4028        	ldw	x,#_TABLE_TIME_EE+8
11438  26f9 cd0000        	call	c_eewrc
11440                     ; 1931 		TABLE_TEMPER_EE[1][3]=20;	
11442  26fc a614          	ld	a,#20
11443  26fe ae4050        	ldw	x,#_TABLE_TEMPER_EE+8
11444  2701 cd0000        	call	c_eewrc
11446                     ; 1932 		TABLE_TIME_EE[1][4]=126;
11448  2704 a67e          	ld	a,#126
11449  2706 ae4029        	ldw	x,#_TABLE_TIME_EE+9
11450  2709 cd0000        	call	c_eewrc
11452                     ; 1933 		TABLE_TEMPER_EE[1][4]=20;	
11454  270c a614          	ld	a,#20
11455  270e ae4051        	ldw	x,#_TABLE_TEMPER_EE+9
11456  2711 cd0000        	call	c_eewrc
11458                     ; 1935 		TABLE_TIME_EE[2][0]=0;
11460  2714 4f            	clr	a
11461  2715 ae402a        	ldw	x,#_TABLE_TIME_EE+10
11462  2718 cd0000        	call	c_eewrc
11464                     ; 1936 		TABLE_TEMPER_EE[2][0]=20;	
11466  271b a614          	ld	a,#20
11467  271d ae4052        	ldw	x,#_TABLE_TEMPER_EE+10
11468  2720 cd0000        	call	c_eewrc
11470                     ; 1937 		TABLE_TIME_EE[2][1]=36;
11472  2723 a624          	ld	a,#36
11473  2725 ae402b        	ldw	x,#_TABLE_TIME_EE+11
11474  2728 cd0000        	call	c_eewrc
11476                     ; 1938 		TABLE_TEMPER_EE[2][1]=20;	
11478  272b a614          	ld	a,#20
11479  272d ae4053        	ldw	x,#_TABLE_TEMPER_EE+11
11480  2730 cd0000        	call	c_eewrc
11482                     ; 1939 		TABLE_TIME_EE[2][2]=72;
11484  2733 a648          	ld	a,#72
11485  2735 ae402c        	ldw	x,#_TABLE_TIME_EE+12
11486  2738 cd0000        	call	c_eewrc
11488                     ; 1940 		TABLE_TEMPER_EE[2][2]=20;	
11490  273b a614          	ld	a,#20
11491  273d ae4054        	ldw	x,#_TABLE_TEMPER_EE+12
11492  2740 cd0000        	call	c_eewrc
11494                     ; 1941 		TABLE_TIME_EE[2][3]=108;
11496  2743 a66c          	ld	a,#108
11497  2745 ae402d        	ldw	x,#_TABLE_TIME_EE+13
11498  2748 cd0000        	call	c_eewrc
11500                     ; 1942 		TABLE_TEMPER_EE[2][3]=20;	
11502  274b a614          	ld	a,#20
11503  274d ae4055        	ldw	x,#_TABLE_TEMPER_EE+13
11504  2750 cd0000        	call	c_eewrc
11506                     ; 1943 		TABLE_TIME_EE[2][4]=126;
11508  2753 a67e          	ld	a,#126
11509  2755 ae402e        	ldw	x,#_TABLE_TIME_EE+14
11510  2758 cd0000        	call	c_eewrc
11512                     ; 1944 		TABLE_TEMPER_EE[2][4]=20;
11514  275b a614          	ld	a,#20
11515  275d ae4056        	ldw	x,#_TABLE_TEMPER_EE+14
11516  2760 cd0000        	call	c_eewrc
11518                     ; 1946 		TABLE_TIME_EE[3][0]=0;
11520  2763 4f            	clr	a
11521  2764 ae402f        	ldw	x,#_TABLE_TIME_EE+15
11522  2767 cd0000        	call	c_eewrc
11524                     ; 1947 		TABLE_TEMPER_EE[3][0]=20;	
11526  276a a614          	ld	a,#20
11527  276c ae4057        	ldw	x,#_TABLE_TEMPER_EE+15
11528  276f cd0000        	call	c_eewrc
11530                     ; 1948 		TABLE_TIME_EE[3][1]=36;
11532  2772 a624          	ld	a,#36
11533  2774 ae4030        	ldw	x,#_TABLE_TIME_EE+16
11534  2777 cd0000        	call	c_eewrc
11536                     ; 1949 		TABLE_TEMPER_EE[3][1]=20;	
11538  277a a614          	ld	a,#20
11539  277c ae4058        	ldw	x,#_TABLE_TEMPER_EE+16
11540  277f cd0000        	call	c_eewrc
11542                     ; 1950 		TABLE_TIME_EE[3][2]=72;
11544  2782 a648          	ld	a,#72
11545  2784 ae4031        	ldw	x,#_TABLE_TIME_EE+17
11546  2787 cd0000        	call	c_eewrc
11548                     ; 1951 		TABLE_TEMPER_EE[3][2]=20;	
11550  278a a614          	ld	a,#20
11551  278c ae4059        	ldw	x,#_TABLE_TEMPER_EE+17
11552  278f cd0000        	call	c_eewrc
11554                     ; 1952 		TABLE_TIME_EE[3][3]=108;
11556  2792 a66c          	ld	a,#108
11557  2794 ae4032        	ldw	x,#_TABLE_TIME_EE+18
11558  2797 cd0000        	call	c_eewrc
11560                     ; 1953 		TABLE_TEMPER_EE[3][3]=20;	
11562  279a a614          	ld	a,#20
11563  279c ae405a        	ldw	x,#_TABLE_TEMPER_EE+18
11564  279f cd0000        	call	c_eewrc
11566                     ; 1954 		TABLE_TIME_EE[3][4]=126;
11568  27a2 a67e          	ld	a,#126
11569  27a4 ae4033        	ldw	x,#_TABLE_TIME_EE+19
11570  27a7 cd0000        	call	c_eewrc
11572                     ; 1955 		TABLE_TEMPER_EE[3][4]=20;
11574  27aa a614          	ld	a,#20
11575  27ac ae405b        	ldw	x,#_TABLE_TEMPER_EE+19
11576  27af cd0000        	call	c_eewrc
11578                     ; 1957 		TABLE_TIME_EE[4][0]=0;
11580  27b2 4f            	clr	a
11581  27b3 ae4034        	ldw	x,#_TABLE_TIME_EE+20
11582  27b6 cd0000        	call	c_eewrc
11584                     ; 1958 		TABLE_TEMPER_EE[4][0]=20;	
11586  27b9 a614          	ld	a,#20
11587  27bb ae405c        	ldw	x,#_TABLE_TEMPER_EE+20
11588  27be cd0000        	call	c_eewrc
11590                     ; 1959 		TABLE_TIME_EE[4][1]=36;
11592  27c1 a624          	ld	a,#36
11593  27c3 ae4035        	ldw	x,#_TABLE_TIME_EE+21
11594  27c6 cd0000        	call	c_eewrc
11596                     ; 1960 		TABLE_TEMPER_EE[4][1]=20;	
11598  27c9 a614          	ld	a,#20
11599  27cb ae405d        	ldw	x,#_TABLE_TEMPER_EE+21
11600  27ce cd0000        	call	c_eewrc
11602                     ; 1961 		TABLE_TIME_EE[4][2]=72;
11604  27d1 a648          	ld	a,#72
11605  27d3 ae4036        	ldw	x,#_TABLE_TIME_EE+22
11606  27d6 cd0000        	call	c_eewrc
11608                     ; 1962 		TABLE_TEMPER_EE[4][2]=20;	
11610  27d9 a614          	ld	a,#20
11611  27db ae405e        	ldw	x,#_TABLE_TEMPER_EE+22
11612  27de cd0000        	call	c_eewrc
11614                     ; 1963 		TABLE_TIME_EE[4][3]=108;
11616  27e1 a66c          	ld	a,#108
11617  27e3 ae4037        	ldw	x,#_TABLE_TIME_EE+23
11618  27e6 cd0000        	call	c_eewrc
11620                     ; 1964 		TABLE_TEMPER_EE[4][3]=20;	
11622  27e9 a614          	ld	a,#20
11623  27eb ae405f        	ldw	x,#_TABLE_TEMPER_EE+23
11624  27ee cd0000        	call	c_eewrc
11626                     ; 1965 		TABLE_TIME_EE[4][4]=126;
11628  27f1 a67e          	ld	a,#126
11629  27f3 ae4038        	ldw	x,#_TABLE_TIME_EE+24
11630  27f6 cd0000        	call	c_eewrc
11632                     ; 1966 		TABLE_TEMPER_EE[4][4]=20;
11634  27f9 a614          	ld	a,#20
11635  27fb ae4060        	ldw	x,#_TABLE_TEMPER_EE+24
11636  27fe cd0000        	call	c_eewrc
11638                     ; 1968 		TABLE_TIME_EE[5][0]=0;
11640  2801 4f            	clr	a
11641  2802 ae4039        	ldw	x,#_TABLE_TIME_EE+25
11642  2805 cd0000        	call	c_eewrc
11644                     ; 1969 		TABLE_TEMPER_EE[5][0]=20;	
11646  2808 a614          	ld	a,#20
11647  280a ae4061        	ldw	x,#_TABLE_TEMPER_EE+25
11648  280d cd0000        	call	c_eewrc
11650                     ; 1970 		TABLE_TIME_EE[5][1]=36;
11652  2810 a624          	ld	a,#36
11653  2812 ae403a        	ldw	x,#_TABLE_TIME_EE+26
11654  2815 cd0000        	call	c_eewrc
11656                     ; 1971 		TABLE_TEMPER_EE[5][1]=20;	
11658  2818 a614          	ld	a,#20
11659  281a ae4062        	ldw	x,#_TABLE_TEMPER_EE+26
11660  281d cd0000        	call	c_eewrc
11662                     ; 1972 		TABLE_TIME_EE[5][2]=72;
11664  2820 a648          	ld	a,#72
11665  2822 ae403b        	ldw	x,#_TABLE_TIME_EE+27
11666  2825 cd0000        	call	c_eewrc
11668                     ; 1973 		TABLE_TEMPER_EE[5][2]=20;	
11670  2828 a614          	ld	a,#20
11671  282a ae4063        	ldw	x,#_TABLE_TEMPER_EE+27
11672  282d cd0000        	call	c_eewrc
11674                     ; 1974 		TABLE_TIME_EE[5][3]=108;
11676  2830 a66c          	ld	a,#108
11677  2832 ae403c        	ldw	x,#_TABLE_TIME_EE+28
11678  2835 cd0000        	call	c_eewrc
11680                     ; 1975 		TABLE_TEMPER_EE[5][3]=20;	
11682  2838 a614          	ld	a,#20
11683  283a ae4064        	ldw	x,#_TABLE_TEMPER_EE+28
11684  283d cd0000        	call	c_eewrc
11686                     ; 1976 		TABLE_TIME_EE[5][4]=126;
11688  2840 a67e          	ld	a,#126
11689  2842 ae403d        	ldw	x,#_TABLE_TIME_EE+29
11690  2845 cd0000        	call	c_eewrc
11692                     ; 1977 		TABLE_TEMPER_EE[5][4]=20;
11694  2848 a614          	ld	a,#20
11695  284a ae4065        	ldw	x,#_TABLE_TEMPER_EE+29
11696  284d cd0000        	call	c_eewrc
11698                     ; 1979 		TABLE_TIME_EE[6][0]=0;
11700  2850 4f            	clr	a
11701  2851 ae403e        	ldw	x,#_TABLE_TIME_EE+30
11702  2854 cd0000        	call	c_eewrc
11704                     ; 1980 		TABLE_TEMPER_EE[6][0]=20;	
11706  2857 a614          	ld	a,#20
11707  2859 ae4066        	ldw	x,#_TABLE_TEMPER_EE+30
11708  285c cd0000        	call	c_eewrc
11710                     ; 1981 		TABLE_TIME_EE[6][1]=36;
11712  285f a624          	ld	a,#36
11713  2861 ae403f        	ldw	x,#_TABLE_TIME_EE+31
11714  2864 cd0000        	call	c_eewrc
11716                     ; 1982 		TABLE_TEMPER_EE[6][1]=20;	
11718  2867 a614          	ld	a,#20
11719  2869 ae4067        	ldw	x,#_TABLE_TEMPER_EE+31
11720  286c cd0000        	call	c_eewrc
11722                     ; 1983 		TABLE_TIME_EE[6][2]=72;
11724  286f a648          	ld	a,#72
11725  2871 ae4040        	ldw	x,#_TABLE_TIME_EE+32
11726  2874 cd0000        	call	c_eewrc
11728                     ; 1984 		TABLE_TEMPER_EE[6][2]=20;	
11730  2877 a614          	ld	a,#20
11731  2879 ae4068        	ldw	x,#_TABLE_TEMPER_EE+32
11732  287c cd0000        	call	c_eewrc
11734                     ; 1985 		TABLE_TIME_EE[6][3]=108;
11736  287f a66c          	ld	a,#108
11737  2881 ae4041        	ldw	x,#_TABLE_TIME_EE+33
11738  2884 cd0000        	call	c_eewrc
11740                     ; 1986 		TABLE_TEMPER_EE[6][3]=20;	
11742  2887 a614          	ld	a,#20
11743  2889 ae4069        	ldw	x,#_TABLE_TEMPER_EE+33
11744  288c cd0000        	call	c_eewrc
11746                     ; 1987 		TABLE_TIME_EE[6][4]=126;
11748  288f a67e          	ld	a,#126
11749  2891 ae4042        	ldw	x,#_TABLE_TIME_EE+34
11750  2894 cd0000        	call	c_eewrc
11752                     ; 1988 		TABLE_TEMPER_EE[6][4]=20;
11754  2897 a614          	ld	a,#20
11755  2899 ae406a        	ldw	x,#_TABLE_TEMPER_EE+34
11756  289c cd0000        	call	c_eewrc
11758                     ; 1990 		MODE_EE=1;
11760  289f a601          	ld	a,#1
11761  28a1 ae4046        	ldw	x,#_MODE_EE
11762  28a4 cd0000        	call	c_eewrc
11764                     ; 1991 		NECC_TEMPER_WATER_EE=50;
11766  28a7 a632          	ld	a,#50
11767  28a9 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
11768  28ac cd0000        	call	c_eewrc
11770                     ; 1992 		NECC_TEMPER_AIR_EE=20;
11772  28af a614          	ld	a,#20
11773  28b1 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
11774  28b4 cd0000        	call	c_eewrc
11776                     ; 1993 		MAX_POWER_EE=3;
11778  28b7 a603          	ld	a,#3
11779  28b9 ae4047        	ldw	x,#_MAX_POWER_EE
11780  28bc cd0000        	call	c_eewrc
11782                     ; 1995 		tree_down(0,0);
11784  28bf 5f            	clrw	x
11785  28c0 4f            	clr	a
11786  28c1 95            	ld	xh,a
11787  28c2 cd0000        	call	_tree_down
11789                     ; 1996 		ret_ind(0,0);
11791  28c5 5f            	clrw	x
11792  28c6 4f            	clr	a
11793  28c7 95            	ld	xh,a
11794  28c8 cd0000        	call	_ret_ind
11796                     ; 1997 		HUMAN_SET_EE=1;
11798  28cb ae0001        	ldw	x,#1
11799  28ce 89            	pushw	x
11800  28cf ae401e        	ldw	x,#_HUMAN_SET_EE
11801  28d2 cd0000        	call	c_eewrw
11803  28d5 85            	popw	x
11804  28d6 2026          	jra	L7453
11805  28d8               L1434:
11806                     ; 2001 else if(ind==iInterf)
11808  28d8 b661          	ld	a,_a_ind
11809  28da a10f          	cp	a,#15
11810  28dc 2620          	jrne	L7453
11811                     ; 2003 	if((but==butU)||(but==butD)||(but==butM)||(but==butON))	
11813  28de b600          	ld	a,_but
11814  28e0 a1fb          	cp	a,#251
11815  28e2 2712          	jreq	L3534
11817  28e4 b600          	ld	a,_but
11818  28e6 a1f7          	cp	a,#247
11819  28e8 270c          	jreq	L3534
11821  28ea b600          	ld	a,_but
11822  28ec a1fd          	cp	a,#253
11823  28ee 2706          	jreq	L3534
11825  28f0 b600          	ld	a,_but
11826  28f2 a1fe          	cp	a,#254
11827  28f4 2608          	jrne	L7453
11828  28f6               L3534:
11829                     ; 2005 		beepTestCnt=10;
11831  28f6 350a0008      	mov	_beepTestCnt,#10
11832                     ; 2006 		ind_check_cnt=0;
11834  28fa 5f            	clrw	x
11835  28fb cf0006        	ldw	_ind_check_cnt,x
11836  28fe               L7453:
11837                     ; 2009 }
11838  28fe               L065:
11841  28fe 5b03          	addw	sp,#3
11842  2900 81            	ret
11865                     ; 2011 void t4_init(void)
11865                     ; 2012 {
11866                     	switch	.text
11867  2901               _t4_init:
11871                     ; 2013 TIM4->PSCR = 6;
11873  2901 35065345      	mov	21317,#6
11874                     ; 2014 TIM4->ARR= 158;
11876  2905 359e5346      	mov	21318,#158
11877                     ; 2015 TIM4->IER|= TIM4_IER_UIE;					// enable break interrupt
11879  2909 72105341      	bset	21313,#0
11880                     ; 2017 TIM4->CR1=(TIM4_CR1_URS | TIM4_CR1_CEN | TIM4_CR1_ARPE);	
11882  290d 35855340      	mov	21312,#133
11883                     ; 2019 }
11886  2911 81            	ret
11929                     ; 2025 @far @interrupt void TIM4_UPD_Interrupt (void) 
11929                     ; 2026 {
11931                     	switch	.text
11932  2912               f_TIM4_UPD_Interrupt:
11936                     ; 2028 GPIOD->ODR|=0b00111100;
11938  2912 c6500f        	ld	a,20495
11939  2915 aa3c          	or	a,#60
11940  2917 c7500f        	ld	20495,a
11941                     ; 2029 ind_cnt++;
11943  291a 3c81          	inc	_ind_cnt
11944                     ; 2030 if(ind_cnt>=10)
11946  291c b681          	ld	a,_ind_cnt
11947  291e a10a          	cp	a,#10
11948  2920 2507          	jrult	L1044
11949                     ; 2032 	ind_cnt=0;
11951  2922 3f81          	clr	_ind_cnt
11952                     ; 2033 	but_new=GPIOB->IDR;
11954  2924 5550060000    	mov	_but_new,20486
11955  2929               L1044:
11956                     ; 2035 GPIOB->ODR=ind_outB[ind_cnt];
11958  2929 b681          	ld	a,_ind_cnt
11959  292b 5f            	clrw	x
11960  292c 97            	ld	xl,a
11961  292d e675          	ld	a,(_ind_outB,x)
11962  292f c75005        	ld	20485,a
11963                     ; 2036 GPIOC->ODR=ind_outC[ind_cnt];
11965  2932 b681          	ld	a,_ind_cnt
11966  2934 5f            	clrw	x
11967  2935 97            	ld	xl,a
11968  2936 e60a          	ld	a,(_ind_outC,x)
11969  2938 c7500a        	ld	20490,a
11970                     ; 2037 if(powerStat==psOFF)GPIOC->ODR=0xff;
11972  293b 3d29          	tnz	_powerStat
11973  293d 2604          	jrne	L3044
11976  293f 35ff500a      	mov	20490,#255
11977  2943               L3044:
11978                     ; 2038 GPIOG->ODR|=0x01;
11980  2943 7210501e      	bset	20510,#0
11981                     ; 2039 GPIOG->ODR&=ind_outG[ind_cnt];
11983  2947 b681          	ld	a,_ind_cnt
11984  2949 5f            	clrw	x
11985  294a 97            	ld	xl,a
11986  294b c6501e        	ld	a,20510
11987  294e e416          	and	a,(_ind_outG,x)
11988  2950 c7501e        	ld	20510,a
11989                     ; 2040 if(ind_cnt==9)GPIOB->DDR=0x00;
11991  2953 b681          	ld	a,_ind_cnt
11992  2955 a109          	cp	a,#9
11993  2957 2606          	jrne	L5044
11996  2959 725f5007      	clr	20487
11998  295d 2004          	jra	L7044
11999  295f               L5044:
12000                     ; 2041 else GPIOB->DDR=0xff;
12002  295f 35ff5007      	mov	20487,#255
12003  2963               L7044:
12004                     ; 2042 if(powerStat==psOFF)
12006  2963 3d29          	tnz	_powerStat
12007  2965 2618          	jrne	L1144
12008                     ; 2044 	GPIOD->ODR|=0b00111100;
12010  2967 c6500f        	ld	a,20495
12011  296a aa3c          	or	a,#60
12012  296c c7500f        	ld	20495,a
12013                     ; 2045 	if((ind_cnt==0)||(ind_cnt>3))GPIOD->ODR&=ind_strob[0];
12015  296f 3d81          	tnz	_ind_cnt
12016  2971 2706          	jreq	L5144
12018  2973 b681          	ld	a,_ind_cnt
12019  2975 a104          	cp	a,#4
12020  2977 2513          	jrult	L7144
12021  2979               L5144:
12024  2979 721b500f      	bres	20495,#5
12025  297d 200d          	jra	L7144
12026  297f               L1144:
12027                     ; 2047 else GPIOD->ODR&=ind_strob[ind_cnt];
12029  297f b681          	ld	a,_ind_cnt
12030  2981 5f            	clrw	x
12031  2982 97            	ld	xl,a
12032  2983 c6500f        	ld	a,20495
12033  2986 d40012        	and	a,(_ind_strob,x)
12034  2989 c7500f        	ld	20495,a
12035  298c               L7144:
12036                     ; 2049 if(++t0_cnt0>=10)
12038  298c 3c05          	inc	_t0_cnt0
12039  298e b605          	ld	a,_t0_cnt0
12040  2990 a10a          	cp	a,#10
12041  2992 255f          	jrult	L1244
12042                     ; 2051   t0_cnt0=0;
12044  2994 3f05          	clr	_t0_cnt0
12045                     ; 2052   b100Hz=1;
12047  2996 35010000      	mov	_b100Hz,#1
12048                     ; 2054 	if(++t0_cnt1>=10)
12050  299a 3c06          	inc	_t0_cnt1
12051  299c b606          	ld	a,_t0_cnt1
12052  299e a10a          	cp	a,#10
12053  29a0 2506          	jrult	L3244
12054                     ; 2056 		t0_cnt1=0;
12056  29a2 3f06          	clr	_t0_cnt1
12057                     ; 2057 		b10Hz=1;
12059  29a4 35010001      	mov	_b10Hz,#1
12060  29a8               L3244:
12061                     ; 2060 	if(++t0_cnt2>=20)
12063  29a8 3c07          	inc	_t0_cnt2
12064  29aa b607          	ld	a,_t0_cnt2
12065  29ac a114          	cp	a,#20
12066  29ae 2511          	jrult	L5244
12067                     ; 2062 		t0_cnt2=0;
12069  29b0 3f07          	clr	_t0_cnt2
12070                     ; 2063 		b5Hz=1;
12072  29b2 35010002      	mov	_b5Hz,#1
12073                     ; 2064 		bFL5=!bFL5;
12075  29b6 3d28          	tnz	_bFL5
12076  29b8 2604          	jrne	L627
12077  29ba a601          	ld	a,#1
12078  29bc 2001          	jra	L037
12079  29be               L627:
12080  29be 4f            	clr	a
12081  29bf               L037:
12082  29bf b728          	ld	_bFL5,a
12083  29c1               L5244:
12084                     ; 2067 	if(++t0_cnt3>=50)
12086  29c1 3c08          	inc	_t0_cnt3
12087  29c3 b608          	ld	a,_t0_cnt3
12088  29c5 a132          	cp	a,#50
12089  29c7 2511          	jrult	L7244
12090                     ; 2069 		t0_cnt3=0;
12092  29c9 3f08          	clr	_t0_cnt3
12093                     ; 2070 		b2Hz=1;
12095  29cb 35010003      	mov	_b2Hz,#1
12096                     ; 2071 		bFL2=!bFL2;
12098  29cf 3d27          	tnz	_bFL2
12099  29d1 2604          	jrne	L237
12100  29d3 a601          	ld	a,#1
12101  29d5 2001          	jra	L437
12102  29d7               L237:
12103  29d7 4f            	clr	a
12104  29d8               L437:
12105  29d8 b727          	ld	_bFL2,a
12106  29da               L7244:
12107                     ; 2073 	if(++t0_cnt4>=100)
12109  29da 3c09          	inc	_t0_cnt4
12110  29dc b609          	ld	a,_t0_cnt4
12111  29de a164          	cp	a,#100
12112  29e0 2511          	jrult	L1244
12113                     ; 2075 		t0_cnt4=0;
12115  29e2 3f09          	clr	_t0_cnt4
12116                     ; 2076 		b1Hz=1;
12118  29e4 35010004      	mov	_b1Hz,#1
12119                     ; 2077 		bFL1=!bFL1;
12121  29e8 3d26          	tnz	_bFL1
12122  29ea 2604          	jrne	L637
12123  29ec a601          	ld	a,#1
12124  29ee 2001          	jra	L047
12125  29f0               L637:
12126  29f0 4f            	clr	a
12127  29f1               L047:
12128  29f1 b726          	ld	_bFL1,a
12129  29f3               L1244:
12130                     ; 2080 TIM4->SR1&=~TIM4_SR1_UIF;			// disable break interrupt
12132  29f3 72115342      	bres	21314,#0
12133                     ; 2081 return;
12136  29f7 80            	iret
12204                     ; 2088 main()
12204                     ; 2089 {
12206                     	switch	.text
12207  29f8               _main:
12211                     ; 2090 CLK->ECKR|=1;
12213  29f8 721050c1      	bset	20673,#0
12215  29fc               L5444:
12216                     ; 2091 while((CLK->ECKR & 2) == 0);
12218  29fc c650c1        	ld	a,20673
12219  29ff a502          	bcp	a,#2
12220  2a01 27f9          	jreq	L5444
12221                     ; 2092 CLK->SWCR|=2;
12223  2a03 721250c5      	bset	20677,#1
12224                     ; 2093 CLK->SWR=0xB4;	
12226  2a07 35b450c4      	mov	20676,#180
12227                     ; 2095 CLK->CKDIVR=0;
12229  2a0b 725f50c6      	clr	20678
12230                     ; 2097 FLASH_DUKR=0xae;
12232  2a0f 35ae5064      	mov	_FLASH_DUKR,#174
12233                     ; 2098 FLASH_DUKR=0x56;
12235  2a13 35565064      	mov	_FLASH_DUKR,#86
12236                     ; 2101 GPIOD->DDR|=0b00111100;		//PD2-PD5 выходы открытый коллектор
12238  2a17 c65011        	ld	a,20497
12239  2a1a aa3c          	or	a,#60
12240  2a1c c75011        	ld	20497,a
12241                     ; 2102 GPIOD->CR1&=0b11000011;		//....
12243  2a1f c65012        	ld	a,20498
12244  2a22 a4c3          	and	a,#195
12245  2a24 c75012        	ld	20498,a
12246                     ; 2103 GPIOD->CR2&=0b11000011;		//....
12248  2a27 c65013        	ld	a,20499
12249  2a2a a4c3          	and	a,#195
12250  2a2c c75013        	ld	20499,a
12251                     ; 2104 GPIOB->DDR|=0b11111111;		//PORTB все выходы ““Ћ
12253  2a2f c65007        	ld	a,20487
12254  2a32 aaff          	or	a,#255
12255  2a34 c75007        	ld	20487,a
12256                     ; 2105 GPIOB->CR1|=0b11111111;		//....
12258  2a37 c65008        	ld	a,20488
12259  2a3a aaff          	or	a,#255
12260  2a3c c75008        	ld	20488,a
12261                     ; 2106 GPIOB->CR2&=0b00000000;		//....
12263  2a3f 725f5009      	clr	20489
12264                     ; 2107 GPIOC->DDR|=0b11111111;		//PORTC все выходы открытый коллектор
12266  2a43 c6500c        	ld	a,20492
12267  2a46 aaff          	or	a,#255
12268  2a48 c7500c        	ld	20492,a
12269                     ; 2108 GPIOC->CR1&=0b00000000;		//....
12271  2a4b 725f500d      	clr	20493
12272                     ; 2109 GPIOC->CR2&=0b00000000;		//....
12274  2a4f 725f500e      	clr	20494
12275                     ; 2110 GPIOG->DDR|=0b00000001;		//PG0 выход открытый коллектор
12277  2a53 72105020      	bset	20512,#0
12278                     ; 2111 GPIOG->CR1&=0b11111110;		//....
12280  2a57 72115021      	bres	20513,#0
12281                     ; 2112 GPIOG->CR2&=0b11111110;		//....
12283  2a5b 72115022      	bres	20514,#0
12284                     ; 2113 t4_init();
12286  2a5f cd2901        	call	_t4_init
12288                     ; 2114 uart3_init();
12290  2a62 cd0000        	call	_uart3_init
12292                     ; 2115 uart1_init();
12294  2a65 cd0000        	call	_uart1_init
12296                     ; 2116 modem_gpio_init();
12298  2a68 cd0000        	call	_modem_gpio_init
12300                     ; 2118 enableInterrupts();
12303  2a6b 9a            rim
12305                     ; 2120 clear_ind();
12308  2a6c cd0000        	call	_clear_ind
12310                     ; 2121 ind=iMn;//iModem_deb;
12312  2a6f 3f61          	clr	_a_ind
12313                     ; 2127 bERR=0;
12315  2a71 3f08          	clr	_bERR
12316                     ; 2128 bWARN=0;
12318  2a73 3f07          	clr	_bWARN
12319                     ; 2130 modemDrvInitStepCnt=1;
12321  2a75 ae0001        	ldw	x,#1
12322  2a78 bf00          	ldw	_modemDrvInitStepCnt,x
12323                     ; 2135 watchdog_enable();
12325  2a7a cd0000        	call	_watchdog_enable
12327                     ; 2137 if(power_in_test()==0)
12329  2a7d cd0169        	call	_power_in_test
12331  2a80 a30000        	cpw	x,#0
12332  2a83 2609          	jrne	L1544
12333                     ; 2139 	GPIOD->ODR|=0b00111100;
12335  2a85 c6500f        	ld	a,20495
12336  2a88 aa3c          	or	a,#60
12337  2a8a c7500f        	ld	20495,a
12338                     ; 2140 	halt();
12341  2a8d 8e            halt
12344  2a8e               L1544:
12345                     ; 2143 isp_main_cnt=0;
12347  2a8e ae0000        	ldw	x,#0
12348  2a91 cf0002        	ldw	_isp_main_cnt+2,x
12349  2a94 ae0000        	ldw	x,#0
12350  2a97 cf0000        	ldw	_isp_main_cnt,x
12351  2a9a               L3544:
12352                     ; 2147 	uart1_in_an();
12354  2a9a cd0000        	call	_uart1_in_an
12356                     ; 2148 	if(b100Hz)
12358  2a9d 3d00          	tnz	_b100Hz
12359  2a9f 270b          	jreq	L7544
12360                     ; 2150 		b100Hz=0;
12362  2aa1 3f00          	clr	_b100Hz
12363                     ; 2152 		but_drv();
12365  2aa3 cd0000        	call	_but_drv
12367                     ; 2153 		but_an();
12369  2aa6 cd19a2        	call	_but_an
12371                     ; 2155 		modem_stat_drv();
12373  2aa9 cd0000        	call	_modem_stat_drv
12375  2aac               L7544:
12376                     ; 2158 	if(b10Hz)
12378  2aac 3d01          	tnz	_b10Hz
12379  2aae 271e          	jreq	L1644
12380                     ; 2160 		b10Hz=0;
12382  2ab0 3f01          	clr	_b10Hz
12383                     ; 2162 		if(bWATCHDOG_REFRESH)watchdog_reset();
12385  2ab2 3d2a          	tnz	_bWATCHDOG_REFRESH
12386  2ab4 2703          	jreq	L3644
12389  2ab6 cd0000        	call	_watchdog_reset
12391  2ab9               L3644:
12392                     ; 2163 		ind_hndl();
12394  2ab9 cd07bc        	call	_ind_hndl
12396                     ; 2164 		uart3_in_an();
12398  2abc cd0000        	call	_uart3_in_an
12400                     ; 2165 		out_drv();
12402  2abf cd0000        	call	_out_drv
12404                     ; 2166 		matemath();
12406  2ac2 cd075f        	call	_matemath
12408                     ; 2167 		modem_drv();
12410  2ac5 cd0000        	call	_modem_drv
12412                     ; 2168 		sms_fifo_drv();
12414  2ac8 cd0000        	call	_sms_fifo_drv
12416                     ; 2169 		power_in_drv();
12418  2acb cd0000        	call	_power_in_drv
12420  2ace               L1644:
12421                     ; 2171 	if(b5Hz)
12423  2ace 3d02          	tnz	_b5Hz
12424  2ad0 270c          	jreq	L5644
12425                     ; 2173 		b5Hz=0;
12427  2ad2 3f02          	clr	_b5Hz
12428                     ; 2175 		if(version_show_cnt)version_show_cnt--;
12430  2ad4 725d000c      	tnz	_version_show_cnt
12431  2ad8 2704          	jreq	L5644
12434  2ada 725a000c      	dec	_version_show_cnt
12435  2ade               L5644:
12436                     ; 2177 	if(b2Hz)
12438  2ade 3d03          	tnz	_b2Hz
12439  2ae0 2705          	jreq	L1744
12440                     ; 2179 		b2Hz=0;
12442  2ae2 3f03          	clr	_b2Hz
12443                     ; 2181 		time_drv();
12445  2ae4 cd0430        	call	_time_drv
12447  2ae7               L1744:
12448                     ; 2183 	if(b1Hz)
12450  2ae7 3d04          	tnz	_b1Hz
12451  2ae9 27af          	jreq	L3544
12452                     ; 2185 		b1Hz=0;
12454  2aeb 3f04          	clr	_b1Hz
12455                     ; 2187 		isp_main_cnt++;
12457  2aed ae0000        	ldw	x,#_isp_main_cnt
12458  2af0 a601          	ld	a,#1
12459  2af2 cd0000        	call	c_lgadc
12461                     ; 2189 		if(mainCnt<1000)
12463  2af5 9c            	rvf
12464  2af6 be82          	ldw	x,_mainCnt
12465  2af8 a303e8        	cpw	x,#1000
12466  2afb 2e07          	jrsge	L5744
12467                     ; 2191 			mainCnt++;
12469  2afd be82          	ldw	x,_mainCnt
12470  2aff 1c0001        	addw	x,#1
12471  2b02 bf82          	ldw	_mainCnt,x
12472  2b04               L5744:
12473                     ; 2195 		ds18b20_temper_drv();
12475  2b04 cd0000        	call	_ds18b20_temper_drv
12477                     ; 2196 		ret_ind_hndl();
12479  2b07 cd0000        	call	_ret_ind_hndl
12481                     ; 2197 		random_gen();
12483  2b0a cd0000        	call	_random_gen
12485                     ; 2198 		power_necc_hndl();
12487  2b0d cd0710        	call	_power_necc_hndl
12489                     ; 2199 		power_hndl();
12491  2b10 cd065f        	call	_power_hndl
12493                     ; 2200 		sheduler_hndl();
12495  2b13 cd04c3        	call	_sheduler_hndl
12497                     ; 2201 		error_warn_hndl();
12499  2b16 cd01ac        	call	_error_warn_hndl
12501                     ; 2202 		airSensorLineErrorDrv();
12503  2b19 cd020e        	call	_airSensorLineErrorDrv
12505                     ; 2203 		waterTemperAlarmHndl();
12507  2b1c cd02ae        	call	_waterTemperAlarmHndl
12509                     ; 2204 		power_off_hndl();
12511  2b1f cd05fa        	call	_power_off_hndl
12513  2b22 ac9a2a9a      	jpf	L3544
13792                     	xdef	_main
13793                     	xdef	f_TIM4_UPD_Interrupt
13794                     	xdef	_matemath
13795                     	xdef	_power_necc_hndl
13796                     	xdef	_power_hndl
13797                     	xdef	_power_off_hndl
13798                     	xdef	_sheduler_hndl
13799                     	xdef	_time_drv
13800                     	xdef	_beep_drv
13801                     	xdef	_waterTemperAlarmHndl
13802                     	xdef	_airSensorLineErrorDrv
13803                     	xdef	_error_warn_hndl
13804                     	xdef	_power_in_test
13805                     	xdef	_power_in_drv
13806                     	switch	.bss
13807  0000               _isp_main_cnt:
13808  0000 00000000      	ds.b	4
13809                     	xdef	_isp_main_cnt
13810                     	xdef	_version_show_cnt
13811                     	switch	.ubsct
13812  0000               _bDEB:
13813  0000 00            	ds.b	1
13814                     	xdef	_bDEB
13815                     	xdef	_bWATCHDOG_REFRESH
13816  0001               _tempUC:
13817  0001 00            	ds.b	1
13818                     	xdef	_tempUC
13819                     	xdef	_TABLE_TIME_EE_MAX
13820                     	xdef	_TABLE_TIME_EE_MIN
13821  0002               _day_sheduler_time:
13822  0002 00            	ds.b	1
13823                     	xdef	_day_sheduler_time
13824  0003               _time_date:
13825  0003 00            	ds.b	1
13826                     	xdef	_time_date
13827  0004               _temperRegToSheduler:
13828  0004 00            	ds.b	1
13829                     	xdef	_temperRegToSheduler
13830                     	xdef	_b1Hz
13831                     	xdef	_b2Hz
13832                     	xdef	_b5Hz
13833                     	xdef	_b10Hz
13834                     	xdef	_b100Hz
13835                     	xref	_watchdog_reset
13836                     	xref	_watchdog_enable
13837                     	xref	_strcpy
13838                     	xref	_printf
13839                     	xref	_sms_fifo_drv
13840                     	xref	_modem_send_sms
13841                     	xref	_modem_drv
13842                     	xref	_modem_stat_drv
13843                     	xref	_modem_gpio_init
13844                     	xref	_tempRussianText
13845                     	xref.b	_modemDrvWatchDogCnt
13846                     	xref.b	_modemDrvPowerDownStepCnt
13847                     	xref.b	_modemDrvPDUSMSSendStepCnt
13848                     	xref.b	_modemDrvInitStepCnt
13849                     	xref.b	_modemState
13850                     	xref	__ds1307_read_time
13851                     	xref	__ds1307_write_byte
13852                     	xref	_uart1_in_an
13853                     	xref	_uart1_init
13854                     	xref	_modem_plazma1
13855                     	xref	_modem_plazma
13856                     	xref	_tx_counter1
13857                     	xref	_tx_wr_index1
13858                     	xref	_uart3_in_an
13859                     	xref	_uart3_init
13860                     	xref	_ds18b20_temper_drv
13861                     	xref	_waterSensorErrorStat
13862                     	xref	_wire1_in
13863                     	xref	_random_gen
13864                     	xref	_led_flash
13865                     	xref	_led_on
13866                     	xref	_led_off
13867                     	xref	_led_mask_off
13868                     	xref	_led_set
13869                     	xref	_ret_ind_hndl
13870                     	xref	_ret_ind
13871                     	xref	_int2indII_slkuf
13872                     	xref	_int2indI_slkuf
13873                     	xref	_gran_ring_char
13874                     	xref	_gran_char
13875                     	xref	_tree_up
13876                     	xref	_tree_down
13877                     	xref	_clear_ind
13878                     	xref	_but_drv
13879                     	xref	_out_drv
13880                     	xref.b	_speed
13881                     	xref.b	_n_but
13882                     	xref.b	_but
13883                     	xref.b	_but_new
13884                     	xdef	_t4_init
13885                     	xdef	_ind_hndl
13886                     	xdef	_but_an
13887                     	switch	.bss
13888  0004               _ind_check_cnt1:
13889  0004 0000          	ds.b	2
13890                     	xdef	_ind_check_cnt1
13891  0006               _ind_check_cnt:
13892  0006 0000          	ds.b	2
13893                     	xdef	_ind_check_cnt
13894  0008               _beepTestCnt:
13895  0008 00            	ds.b	1
13896                     	xdef	_beepTestCnt
13897  0009               _bCBC_SELF:
13898  0009 00            	ds.b	1
13899                     	xdef	_bCBC_SELF
13900  000a               _cbcVoltage:
13901  000a 0000          	ds.b	2
13902                     	xdef	_cbcVoltage
13903  000c               _cbc_temp1:
13904  000c 000000000000  	ds.b	15
13905                     	xdef	_cbc_temp1
13906  001b               _cbc_temp:
13907  001b 000000000000  	ds.b	15
13908                     	xdef	_cbc_temp
13909  002a               _cbcSystemRequ:
13910  002a 00            	ds.b	1
13911                     	xdef	_cbcSystemRequ
13912  002b               _main_power_off_hndl_cnt:
13913  002b 0000          	ds.b	2
13914                     	xdef	_main_power_off_hndl_cnt
13915                     	xdef	_powerStat
13916                     	xdef	_power_in_drv_alarm_cnt
13917                     	xdef	_power_in_drv_off_cnt
13918                     	xdef	_rand_dig_str
13919  002d               _rand_dig:
13920  002d 000000000000  	ds.b	7
13921                     	xdef	_rand_dig
13922  0034               _waterTemperAlarmCnt:
13923  0034 00            	ds.b	1
13924                     	xdef	_waterTemperAlarmCnt
13925                     	xdef	_waterTemperAlarmOld
13926                     	xdef	_waterTemperAlarm
13927                     	switch	.ubsct
13928  0005               _cntAirSensorLineErrorHi:
13929  0005 00            	ds.b	1
13930                     	xdef	_cntAirSensorLineErrorHi
13931  0006               _cntAirSensorLineErrorLo:
13932  0006 00            	ds.b	1
13933                     	xdef	_cntAirSensorLineErrorLo
13934  0007               _bWARN:
13935  0007 00            	ds.b	1
13936                     	xdef	_bWARN
13937  0008               _bERR:
13938  0008 00            	ds.b	1
13939                     	xdef	_bERR
13940  0009               _beep_drv_cnt:
13941  0009 00            	ds.b	1
13942                     	xdef	_beep_drv_cnt
13943  000a               _powerEnabled:
13944  000a 00            	ds.b	1
13945                     	xdef	_powerEnabled
13946  000b               _powerNeccDelta:
13947  000b 00            	ds.b	1
13948                     	xdef	_powerNeccDelta
13949                     	xdef	_powerNeccOld
13950                     	xdef	_powerNecc
13951  000c               _time_year:
13952  000c 00            	ds.b	1
13953                     	xdef	_time_year
13954  000d               _time_month:
13955  000d 00            	ds.b	1
13956                     	xdef	_time_month
13957  000e               _time_day_of_week:
13958  000e 00            	ds.b	1
13959                     	xdef	_time_day_of_week
13960  000f               _time_hour:
13961  000f 00            	ds.b	1
13962                     	xdef	_time_hour
13963  0010               _time_min:
13964  0010 00            	ds.b	1
13965                     	xdef	_time_min
13966  0011               _time_sec:
13967  0011 00            	ds.b	1
13968                     	xdef	_time_sec
13969  0012               _buff_for_time:
13970  0012 000000000000  	ds.b	10
13971                     	xdef	_buff_for_time
13972                     	xdef	_airSensorErrorStatOld
13973                     	xdef	_airSensorErrorStat
13974  001c               _targetTemper:
13975  001c 00            	ds.b	1
13976                     	xdef	_targetTemper
13977  001d               _aktualTemper:
13978  001d 00            	ds.b	1
13979                     	xdef	_aktualTemper
13980  001e               _temperOfAir:
13981  001e 00            	ds.b	1
13982                     	xdef	_temperOfAir
13983  001f               _temperOfWater:
13984  001f 00            	ds.b	1
13985                     	xdef	_temperOfWater
13986                     	switch	.bss
13987  0035               _optr_kontr_cnt:
13988  0035 00            	ds.b	1
13989                     	xdef	_optr_kontr_cnt
13990  0036               _optr_stat:
13991  0036 00            	ds.b	1
13992                     	xdef	_optr_stat
13993                     	switch	.ubsct
13994  0020               _out_stat:
13995  0020 000000        	ds.b	3
13996                     	xdef	_out_stat
13997  0023               _led_ind_out2:
13998  0023 00            	ds.b	1
13999                     	xdef	_led_ind_out2
14000  0024               _led_ind_out1:
14001  0024 00            	ds.b	1
14002                     	xdef	_led_ind_out1
14003  0025               _bFL_:
14004  0025 00            	ds.b	1
14005                     	xdef	_bFL_
14006  0026               _bFL1:
14007  0026 00            	ds.b	1
14008                     	xdef	_bFL1
14009  0027               _bFL2:
14010  0027 00            	ds.b	1
14011                     	xdef	_bFL2
14012  0028               _bFL5:
14013  0028 00            	ds.b	1
14014                     	xdef	_bFL5
14015  0029               _zero_on:
14016  0029 00            	ds.b	1
14017                     	xdef	_zero_on
14018                     	xdef	_ind_pointer
14019  002a               _c_ind:
14020  002a 0000000000    	ds.b	5
14021                     	xdef	_c_ind
14022  002f               _b_ind:
14023  002f 000000000000  	ds.b	50
14024                     	xdef	_b_ind
14025  0061               _a_ind:
14026  0061 0000000000    	ds.b	5
14027                     	xdef	_a_ind
14028                     	xdef	_DIGISYM
14029  0066               _ind_out_:
14030  0066 0000000000    	ds.b	5
14031                     	xdef	_ind_out_
14032  006b               _dig:
14033  006b 000000000000  	ds.b	10
14034                     	xdef	_dig
14035                     	xdef	_ind_strob
14036                     	xdef	_ind_outG
14037                     	xdef	_ind_outC
14038  0075               _ind_outB:
14039  0075 000000000000  	ds.b	12
14040                     	xdef	_ind_outB
14041  0081               _ind_cnt:
14042  0081 00            	ds.b	1
14043                     	xdef	_ind_cnt
14044  0082               _mainCnt:
14045  0082 0000          	ds.b	2
14046                     	xdef	_mainCnt
14047                     	xdef	_t0_cnt4
14048                     	xdef	_t0_cnt3
14049                     	xdef	_t0_cnt2
14050                     	xdef	_t0_cnt1
14051                     	xdef	_t0_cnt0
14052  0084               _fiksRandom:
14053  0084 00            	ds.b	1
14054                     	xdef	_fiksRandom
14055  0085               _currRandom:
14056  0085 00            	ds.b	1
14057                     	xdef	_currRandom
14058                     	xdef	_warmOrder
14059                     	switch	.const
14060  004a               L5334:
14061  004a 313132333435  	dc.b	"11234567890",0
14062  0056               L3334:
14063  0056 393233373332  	dc.b	"9237328354",0
14064  0061               L1334:
14065  0061 393133343836  	dc.b	"9134863890",0
14066  006c               L7234:
14067  006c 393133393239  	dc.b	"9139294352",0
14068  0077               L1242:
14069  0077 4154202b2043  	dc.b	"AT + CBC ",13,0
14070  0082               L1522:
14071  0082 d2e5ecefe5f0  	dc.b	210,229,236,239,229,240
14072  0088 e0f2f3f0e020  	dc.b	224,242,243,240,224,32
14073  008e e2eee4fb20e2  	dc.b	226,238,228,251,32,226
14074  0094 20f1          	dc.b	" ",241
14075  0096 e8f1f2e5ece5  	dc.b	232,241,242,229,236,229
14076  009c 20e2          	dc.b	" ",226
14077  009e fbf8e5203930  	dc.b	251,248,229,32,57,48
14078  00a4 20e3          	dc.b	" ",227
14079  00a6 f02ed62e00    	dc.b	240,46,214,46,0
14080  00ab               L3422:
14081  00ab d2e5ecefe5f0  	dc.b	210,229,236,239,229,240
14082  00b1 e0f2f3f0e020  	dc.b	224,242,243,240,224,32
14083  00b7 e2eee4fb20e2  	dc.b	226,238,228,251,32,226
14084  00bd 20f1          	dc.b	" ",241
14085  00bf e8f1f2e5ece5  	dc.b	232,241,242,229,236,229
14086  00c5 20ed          	dc.b	" ",237
14087  00c7 e8e6e5203320  	dc.b	232,230,229,32,51,32
14088  00cd e3f02ed62e00  	dc.b	227,240,46,214,46,0
14089  00d3               L5612:
14090  00d3 cde5e8f1eff0  	dc.b	205,229,232,241,239,240
14091  00d9 e0e2edeef1f2  	dc.b	224,226,237,238,241,242
14092  00df fc20e4e0f2f7  	dc.b	252,32,228,224,242,247
14093  00e5 e8eae020f2e5  	dc.b	232,234,224,32,242,229
14094  00eb ecefe5f0e0f2  	dc.b	236,239,229,240,224,242
14095  00f1 f3f0fb20e2ee  	dc.b	243,240,251,32,226,238
14096  00f7 e7e4f3f5e000  	dc.b	231,228,243,245,224,0
14097  00fd               L7302:
14098  00fd ddebe5eaf2f0  	dc.b	221,235,229,234,242,240
14099  0103 e8f7e5f1f2e2  	dc.b	232,247,229,241,242,226
14100  0109 ee20e2eaebfe  	dc.b	238,32,226,234,235,254
14101  010f f7e5edee00    	dc.b	247,229,237,238,0
14102  0114               L3102:
14103  0114 ddebe5eaf2f0  	dc.b	221,235,229,234,242,240
14104  011a e8f7e5f1f2e2  	dc.b	232,247,229,241,242,226
14105  0120 ee20eef2eaeb  	dc.b	238,32,238,242,234,235
14106  0126 fef7e5edee00  	dc.b	254,247,229,237,238,0
14107                     	xref.b	c_lreg
14108                     	xref.b	c_x
14109                     	xref.b	c_y
14129                     	xref	c_lgadc
14130                     	xref	c_idiv
14131                     	xref	c_eewrw
14132                     	xref	c_smodx
14133                     	xref	c_smody
14134                     	xref	c_sdivx
14135                     	xref	c_ldiv
14136                     	xref	c_lmod
14137                     	xref	c_ltor
14138                     	xref	c_imul
14139                     	xref	c_eewrc
14140                     	end
