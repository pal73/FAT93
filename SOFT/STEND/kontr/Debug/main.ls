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
3002                     ; 187 void input_stat_drv(void)
3002                     ; 188 {
3004                     	switch	.text
3005  0000               _input_stat_drv:
3009                     ; 190 if(!(GPIOE->IDR&(1<<6))) //если замкнуто 1-е реле
3011  0000 c65015        	ld	a,20501
3012  0003 a540          	bcp	a,#64
3013  0005 2623          	jrne	L1002
3014                     ; 192   if(isp_in_cnt[0]<100)isp_in_cnt[0]++;
3016  0007 9c            	rvf
3017  0008 ce0000        	ldw	x,_isp_in_cnt
3018  000b a30064        	cpw	x,#100
3019  000e 2e09          	jrsge	L3002
3022  0010 ce0000        	ldw	x,_isp_in_cnt
3023  0013 1c0001        	addw	x,#1
3024  0016 cf0000        	ldw	_isp_in_cnt,x
3025  0019               L3002:
3026                     ; 193 	if(isp_in_cnt[0]>=100)isp_in_cnt[0]=100;
3028  0019 9c            	rvf
3029  001a ce0000        	ldw	x,_isp_in_cnt
3030  001d a30064        	cpw	x,#100
3031  0020 2f20          	jrslt	L7002
3034  0022 ae0064        	ldw	x,#100
3035  0025 cf0000        	ldw	_isp_in_cnt,x
3036  0028 2018          	jra	L7002
3037  002a               L1002:
3038                     ; 197   if(isp_in_cnt[0])isp_in_cnt[0]--;
3040  002a ce0000        	ldw	x,_isp_in_cnt
3041  002d 2709          	jreq	L1102
3044  002f ce0000        	ldw	x,_isp_in_cnt
3045  0032 1d0001        	subw	x,#1
3046  0035 cf0000        	ldw	_isp_in_cnt,x
3047  0038               L1102:
3048                     ; 198 	if(isp_in_cnt[0]<0)isp_in_cnt[0]=0;
3050  0038 9c            	rvf
3051  0039 ce0000        	ldw	x,_isp_in_cnt
3052  003c 2e04          	jrsge	L7002
3055  003e 5f            	clrw	x
3056  003f cf0000        	ldw	_isp_in_cnt,x
3057  0042               L7002:
3058                     ; 201 if(!(GPIOE->IDR&(1<<7))) //если замкнуто 2-е реле
3060  0042 c65015        	ld	a,20501
3061  0045 a580          	bcp	a,#128
3062  0047 2623          	jrne	L5102
3063                     ; 203   if(isp_in_cnt[1]<100)isp_in_cnt[1]++;
3065  0049 9c            	rvf
3066  004a ce0002        	ldw	x,_isp_in_cnt+2
3067  004d a30064        	cpw	x,#100
3068  0050 2e09          	jrsge	L7102
3071  0052 ce0002        	ldw	x,_isp_in_cnt+2
3072  0055 1c0001        	addw	x,#1
3073  0058 cf0002        	ldw	_isp_in_cnt+2,x
3074  005b               L7102:
3075                     ; 204 	if(isp_in_cnt[1]>=100)isp_in_cnt[1]=100;
3077  005b 9c            	rvf
3078  005c ce0002        	ldw	x,_isp_in_cnt+2
3079  005f a30064        	cpw	x,#100
3080  0062 2f20          	jrslt	L3202
3083  0064 ae0064        	ldw	x,#100
3084  0067 cf0002        	ldw	_isp_in_cnt+2,x
3085  006a 2018          	jra	L3202
3086  006c               L5102:
3087                     ; 208   if(isp_in_cnt[1])isp_in_cnt[1]--;
3089  006c ce0002        	ldw	x,_isp_in_cnt+2
3090  006f 2709          	jreq	L5202
3093  0071 ce0002        	ldw	x,_isp_in_cnt+2
3094  0074 1d0001        	subw	x,#1
3095  0077 cf0002        	ldw	_isp_in_cnt+2,x
3096  007a               L5202:
3097                     ; 209 	if(isp_in_cnt[1]<0)isp_in_cnt[1]=0;
3099  007a 9c            	rvf
3100  007b ce0002        	ldw	x,_isp_in_cnt+2
3101  007e 2e04          	jrsge	L3202
3104  0080 5f            	clrw	x
3105  0081 cf0002        	ldw	_isp_in_cnt+2,x
3106  0084               L3202:
3107                     ; 212 if(!(GPIOD->IDR&(1<<0))) //если замкнуто 3-е реле
3109  0084 c65010        	ld	a,20496
3110  0087 a501          	bcp	a,#1
3111  0089 2623          	jrne	L1302
3112                     ; 214   if(isp_in_cnt[2]<100)isp_in_cnt[2]++;
3114  008b 9c            	rvf
3115  008c ce0004        	ldw	x,_isp_in_cnt+4
3116  008f a30064        	cpw	x,#100
3117  0092 2e09          	jrsge	L3302
3120  0094 ce0004        	ldw	x,_isp_in_cnt+4
3121  0097 1c0001        	addw	x,#1
3122  009a cf0004        	ldw	_isp_in_cnt+4,x
3123  009d               L3302:
3124                     ; 215 	if(isp_in_cnt[2]>=100)isp_in_cnt[2]=100;
3126  009d 9c            	rvf
3127  009e ce0004        	ldw	x,_isp_in_cnt+4
3128  00a1 a30064        	cpw	x,#100
3129  00a4 2f20          	jrslt	L7302
3132  00a6 ae0064        	ldw	x,#100
3133  00a9 cf0004        	ldw	_isp_in_cnt+4,x
3134  00ac 2018          	jra	L7302
3135  00ae               L1302:
3136                     ; 219   if(isp_in_cnt[2])isp_in_cnt[2]--;
3138  00ae ce0004        	ldw	x,_isp_in_cnt+4
3139  00b1 2709          	jreq	L1402
3142  00b3 ce0004        	ldw	x,_isp_in_cnt+4
3143  00b6 1d0001        	subw	x,#1
3144  00b9 cf0004        	ldw	_isp_in_cnt+4,x
3145  00bc               L1402:
3146                     ; 220 	if(isp_in_cnt[2]<0)isp_in_cnt[2]=0;
3148  00bc 9c            	rvf
3149  00bd ce0004        	ldw	x,_isp_in_cnt+4
3150  00c0 2e04          	jrsge	L7302
3153  00c2 5f            	clrw	x
3154  00c3 cf0004        	ldw	_isp_in_cnt+4,x
3155  00c6               L7302:
3156                     ; 222 }
3159  00c6 81            	ret
3182                     ; 225 void isp_gpio_init(void)
3182                     ; 226 {
3183                     	switch	.text
3184  00c7               _isp_gpio_init:
3188                     ; 228 GPIOE->DDR&=~(1<<6);		
3190  00c7 721d5016      	bres	20502,#6
3191                     ; 229 GPIOE->CR1|=(1<<6);		
3193  00cb 721c5017      	bset	20503,#6
3194                     ; 230 GPIOE->CR2&=~(1<<6);
3196  00cf 721d5018      	bres	20504,#6
3197                     ; 231 GPIOE->ODR&=~(1<<6);	
3199  00d3 721d5014      	bres	20500,#6
3200                     ; 234 GPIOE->DDR&=~(1<<7);		
3202  00d7 721f5016      	bres	20502,#7
3203                     ; 235 GPIOE->CR1|=(1<<7);		
3205  00db 721e5017      	bset	20503,#7
3206                     ; 236 GPIOE->CR2&=~(1<<7);
3208  00df 721f5018      	bres	20504,#7
3209                     ; 237 GPIOE->ODR&=~(1<<7);
3211  00e3 721f5014      	bres	20500,#7
3212                     ; 240 GPIOD->DDR&=~(1<<0);		
3214  00e7 72115011      	bres	20497,#0
3215                     ; 241 GPIOD->CR1|=(1<<0);		
3217  00eb 72105012      	bset	20498,#0
3218                     ; 242 GPIOD->CR2&=~(1<<0);
3220  00ef 72115013      	bres	20499,#0
3221                     ; 243 GPIOD->ODR&=~(1<<0);
3223  00f3 7211500f      	bres	20495,#0
3224                     ; 245 }
3227  00f7 81            	ret
3263                     ; 249 void power_in_drv(void)
3263                     ; 250 {
3264                     	switch	.text
3265  00f8               _power_in_drv:
3269                     ; 252 GPIOA->DDR&=~(1<<6);		
3271  00f8 721d5002      	bres	20482,#6
3272                     ; 253 GPIOA->CR1&=~(1<<6);		
3274  00fc 721d5003      	bres	20483,#6
3275                     ; 254 GPIOA->CR2&=~(1<<6);
3277  0100 721d5004      	bres	20484,#6
3278                     ; 255 GPIOA->ODR&=~(1<<6);
3280  0104 721d5000      	bres	20480,#6
3281                     ; 257 if(!((GPIOA->IDR)&(1<<6)))
3283  0108 c65001        	ld	a,20481
3284  010b a540          	bcp	a,#64
3285  010d 2703          	jreq	L21
3286  010f cc01c5        	jp	L5602
3287  0112               L21:
3288                     ; 259 	if(power_in_drv_off_cnt<10)
3290  0112 9c            	rvf
3291  0113 ce0008        	ldw	x,_power_in_drv_off_cnt
3292  0116 a3000a        	cpw	x,#10
3293  0119 2e0b          	jrsge	L7602
3294                     ; 261 		power_in_drv_off_cnt++;	
3296  011b ce0008        	ldw	x,_power_in_drv_off_cnt
3297  011e 1c0001        	addw	x,#1
3298  0121 cf0008        	ldw	_power_in_drv_off_cnt,x
3300  0124 2002          	jra	L1702
3301  0126               L7602:
3302                     ; 265 		powerStat=psOFF;
3304  0126 3f29          	clr	_powerStat
3305  0128               L1702:
3306                     ; 268 	if(power_in_drv_alarm_cnt<60)
3308  0128 9c            	rvf
3309  0129 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3310  012c a3003c        	cpw	x,#60
3311  012f 2f03          	jrslt	L41
3312  0131 cc0260        	jp	L1112
3313  0134               L41:
3314                     ; 270 		power_in_drv_alarm_cnt++;	
3316  0134 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3317  0137 1c0001        	addw	x,#1
3318  013a cf000a        	ldw	_power_in_drv_alarm_cnt,x
3319                     ; 271 		if((power_in_drv_alarm_cnt>=60)&&(powerAlarm!=paALARM))
3321  013d 9c            	rvf
3322  013e ce000a        	ldw	x,_power_in_drv_alarm_cnt
3323  0141 a3003c        	cpw	x,#60
3324  0144 2e03          	jrsge	L61
3325  0146 cc0260        	jp	L1112
3326  0149               L61:
3328  0149 c6401c        	ld	a,_powerAlarm
3329  014c a101          	cp	a,#1
3330  014e 2603          	jrne	L02
3331  0150 cc0260        	jp	L1112
3332  0153               L02:
3333                     ; 273 			powerAlarm=paALARM;
3335  0153 a601          	ld	a,#1
3336  0155 ae401c        	ldw	x,#_powerAlarm
3337  0158 cd0000        	call	c_eewrc
3339                     ; 275 			strcpy(tempRussianText,"Ёлектричество отключено"); 
3341  015b ae0109        	ldw	x,#L7702
3342  015e 89            	pushw	x
3343  015f ae0000        	ldw	x,#_tempRussianText
3344  0162 cd0000        	call	_strcpy
3346  0165 85            	popw	x
3347                     ; 277 			if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3349  0166 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3350  0169 a501          	bcp	a,#1
3351  016b 270f          	jreq	L1012
3352                     ; 279 				modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3354  016d ae0000        	ldw	x,#_tempRussianText
3355  0170 89            	pushw	x
3356  0171 ae4002        	ldw	x,#_MAIN_NUMBER
3357  0174 89            	pushw	x
3358  0175 a670          	ld	a,#112
3359  0177 cd0000        	call	_modem_send_sms
3361  017a 5b04          	addw	sp,#4
3362  017c               L1012:
3363                     ; 281 			if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3365  017c c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3366  017f a502          	bcp	a,#2
3367  0181 270f          	jreq	L3012
3368                     ; 283 				modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3370  0183 ae0000        	ldw	x,#_tempRussianText
3371  0186 89            	pushw	x
3372  0187 ae400c        	ldw	x,#_AUTH_NUMBER_1
3373  018a 89            	pushw	x
3374  018b a670          	ld	a,#112
3375  018d cd0000        	call	_modem_send_sms
3377  0190 5b04          	addw	sp,#4
3378  0192               L3012:
3379                     ; 285 			if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3381  0192 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3382  0195 a504          	bcp	a,#4
3383  0197 270f          	jreq	L5012
3384                     ; 287 				modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3386  0199 ae0000        	ldw	x,#_tempRussianText
3387  019c 89            	pushw	x
3388  019d ae406b        	ldw	x,#_AUTH_NUMBER_2
3389  01a0 89            	pushw	x
3390  01a1 a670          	ld	a,#112
3391  01a3 cd0000        	call	_modem_send_sms
3393  01a6 5b04          	addw	sp,#4
3394  01a8               L5012:
3395                     ; 289 			if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3397  01a8 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3398  01ab a508          	bcp	a,#8
3399  01ad 2603          	jrne	L22
3400  01af cc0260        	jp	L1112
3401  01b2               L22:
3402                     ; 291 				modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3404  01b2 ae0000        	ldw	x,#_tempRussianText
3405  01b5 89            	pushw	x
3406  01b6 ae4075        	ldw	x,#_AUTH_NUMBER_3
3407  01b9 89            	pushw	x
3408  01ba a670          	ld	a,#112
3409  01bc cd0000        	call	_modem_send_sms
3411  01bf 5b04          	addw	sp,#4
3412  01c1 ac600260      	jpf	L1112
3413  01c5               L5602:
3414                     ; 299 	if(power_in_drv_off_cnt)
3416  01c5 ce0008        	ldw	x,_power_in_drv_off_cnt
3417  01c8 270f          	jreq	L3112
3418                     ; 301 		power_in_drv_off_cnt--;
3420  01ca ce0008        	ldw	x,_power_in_drv_off_cnt
3421  01cd 1d0001        	subw	x,#1
3422  01d0 cf0008        	ldw	_power_in_drv_off_cnt,x
3423                     ; 302 		version_show_cnt=10;			
3425  01d3 350a000c      	mov	_version_show_cnt,#10
3427  01d7 2004          	jra	L5112
3428  01d9               L3112:
3429                     ; 306 		powerStat=psON;
3431  01d9 35010029      	mov	_powerStat,#1
3432  01dd               L5112:
3433                     ; 309 	if(power_in_drv_alarm_cnt)
3435  01dd ce000a        	ldw	x,_power_in_drv_alarm_cnt
3436  01e0 277e          	jreq	L1112
3437                     ; 311 		power_in_drv_alarm_cnt--;	
3439  01e2 ce000a        	ldw	x,_power_in_drv_alarm_cnt
3440  01e5 1d0001        	subw	x,#1
3441  01e8 cf000a        	ldw	_power_in_drv_alarm_cnt,x
3442                     ; 312 		if((power_in_drv_alarm_cnt==0)&&(powerAlarm!=paNORM))
3444  01eb ce000a        	ldw	x,_power_in_drv_alarm_cnt
3445  01ee 2670          	jrne	L1112
3447  01f0 725d401c      	tnz	_powerAlarm
3448  01f4 276a          	jreq	L1112
3449                     ; 314 			powerAlarm=paNORM;
3451  01f6 4f            	clr	a
3452  01f7 ae401c        	ldw	x,#_powerAlarm
3453  01fa cd0000        	call	c_eewrc
3455                     ; 316 			strcpy(tempRussianText,"Ёлектричество включено"); 
3457  01fd ae00f2        	ldw	x,#L3212
3458  0200 89            	pushw	x
3459  0201 ae0000        	ldw	x,#_tempRussianText
3460  0204 cd0000        	call	_strcpy
3462  0207 85            	popw	x
3463                     ; 318 			if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3465  0208 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3466  020b a501          	bcp	a,#1
3467  020d 270f          	jreq	L5212
3468                     ; 320 				modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3470  020f ae0000        	ldw	x,#_tempRussianText
3471  0212 89            	pushw	x
3472  0213 ae4002        	ldw	x,#_MAIN_NUMBER
3473  0216 89            	pushw	x
3474  0217 a670          	ld	a,#112
3475  0219 cd0000        	call	_modem_send_sms
3477  021c 5b04          	addw	sp,#4
3478  021e               L5212:
3479                     ; 322 			if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3481  021e c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3482  0221 a502          	bcp	a,#2
3483  0223 270f          	jreq	L7212
3484                     ; 324 				modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3486  0225 ae0000        	ldw	x,#_tempRussianText
3487  0228 89            	pushw	x
3488  0229 ae400c        	ldw	x,#_AUTH_NUMBER_1
3489  022c 89            	pushw	x
3490  022d a670          	ld	a,#112
3491  022f cd0000        	call	_modem_send_sms
3493  0232 5b04          	addw	sp,#4
3494  0234               L7212:
3495                     ; 326 			if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3497  0234 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3498  0237 a504          	bcp	a,#4
3499  0239 270f          	jreq	L1312
3500                     ; 328 				modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3502  023b ae0000        	ldw	x,#_tempRussianText
3503  023e 89            	pushw	x
3504  023f ae406b        	ldw	x,#_AUTH_NUMBER_2
3505  0242 89            	pushw	x
3506  0243 a670          	ld	a,#112
3507  0245 cd0000        	call	_modem_send_sms
3509  0248 5b04          	addw	sp,#4
3510  024a               L1312:
3511                     ; 330 			if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3513  024a c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3514  024d a508          	bcp	a,#8
3515  024f 270f          	jreq	L1112
3516                     ; 332 				modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3518  0251 ae0000        	ldw	x,#_tempRussianText
3519  0254 89            	pushw	x
3520  0255 ae4075        	ldw	x,#_AUTH_NUMBER_3
3521  0258 89            	pushw	x
3522  0259 a670          	ld	a,#112
3523  025b cd0000        	call	_modem_send_sms
3525  025e 5b04          	addw	sp,#4
3526  0260               L1112:
3527                     ; 338 }
3530  0260 81            	ret
3554                     ; 342 short power_in_test(void)
3554                     ; 343 {
3555                     	switch	.text
3556  0261               _power_in_test:
3560                     ; 345 GPIOA->DDR&=~(1<<6);		
3562  0261 721d5002      	bres	20482,#6
3563                     ; 346 GPIOA->CR1&=~(1<<6);		
3565  0265 721d5003      	bres	20483,#6
3566                     ; 347 GPIOA->CR2&=~(1<<6);
3568  0269 721d5004      	bres	20484,#6
3569                     ; 348 GPIOA->ODR&=~(1<<6);
3571  026d 721d5000      	bres	20480,#6
3572                     ; 350 power_in_drv_off_cnt=500;
3574  0271 ae01f4        	ldw	x,#500
3575  0274 cf0008        	ldw	_power_in_drv_off_cnt,x
3576  0277               L5412:
3577                     ; 354 	if(!((GPIOA->IDR)&(1<<6)))
3579  0277 c65001        	ld	a,20481
3580  027a a540          	bcp	a,#64
3581  027c 2614          	jrne	L1512
3582                     ; 356 		power_in_drv_off_cnt++;	
3584  027e ce0008        	ldw	x,_power_in_drv_off_cnt
3585  0281 1c0001        	addw	x,#1
3586  0284 cf0008        	ldw	_power_in_drv_off_cnt,x
3587                     ; 357 		if(power_in_drv_off_cnt>1000) return 0;
3589  0287 9c            	rvf
3590  0288 ce0008        	ldw	x,_power_in_drv_off_cnt
3591  028b a303e9        	cpw	x,#1001
3592  028e 2fe7          	jrslt	L5412
3595  0290 5f            	clrw	x
3598  0291 81            	ret
3599  0292               L1512:
3600                     ; 361 		power_in_drv_off_cnt--;	
3602  0292 ce0008        	ldw	x,_power_in_drv_off_cnt
3603  0295 1d0001        	subw	x,#1
3604  0298 cf0008        	ldw	_power_in_drv_off_cnt,x
3605                     ; 362 		if(power_in_drv_off_cnt==0) return 1;		
3607  029b ce0008        	ldw	x,_power_in_drv_off_cnt
3608  029e 26d7          	jrne	L5412
3611  02a0 ae0001        	ldw	x,#1
3614  02a3 81            	ret
3644                     ; 367 void error_warn_hndl(void)
3644                     ; 368 {
3645                     	switch	.text
3646  02a4               _error_warn_hndl:
3650                     ; 369 if(mainCnt<3)return;	
3652  02a4 9c            	rvf
3653  02a5 be82          	ldw	x,_mainCnt
3654  02a7 a30003        	cpw	x,#3
3655  02aa 2e01          	jrsge	L1712
3659  02ac 81            	ret
3660  02ad               L1712:
3661                     ; 370 if(MODE_EE==1)
3663  02ad c64046        	ld	a,_MODE_EE
3664  02b0 a101          	cp	a,#1
3665  02b2 2611          	jrne	L3712
3666                     ; 372 	if(waterSensorErrorStat!=dsesNORM)bWARN=1;
3668  02b4 c60000        	ld	a,_waterSensorErrorStat
3669  02b7 a155          	cp	a,#85
3670  02b9 2706          	jreq	L5712
3673  02bb 35010007      	mov	_bWARN,#1
3675  02bf 2023          	jra	L1022
3676  02c1               L5712:
3677                     ; 373 	else bWARN=0;
3679  02c1 3f07          	clr	_bWARN
3680  02c3 201f          	jra	L1022
3681  02c5               L3712:
3682                     ; 375 else if((MODE_EE==2)||(MODE_EE==3))
3684  02c5 c64046        	ld	a,_MODE_EE
3685  02c8 a102          	cp	a,#2
3686  02ca 2707          	jreq	L5022
3688  02cc c64046        	ld	a,_MODE_EE
3689  02cf a103          	cp	a,#3
3690  02d1 2611          	jrne	L1022
3691  02d3               L5022:
3692                     ; 377 	if((airSensorErrorStat!=taesNORM)||(waterSensorErrorStat!=dsesNORM))bWARN=1;
3694  02d3 b623          	ld	a,_airSensorErrorStat
3695  02d5 a155          	cp	a,#85
3696  02d7 2607          	jrne	L1122
3698  02d9 c60000        	ld	a,_waterSensorErrorStat
3699  02dc a155          	cp	a,#85
3700  02de 2719          	jreq	L7022
3701  02e0               L1122:
3704  02e0 35010007      	mov	_bWARN,#1
3706  02e4               L1022:
3707                     ; 381 if((waterSensorErrorStat==dsesNORM)&&((waterTemperAlarm==wtaCOOL/*temperOfWater<=3*/)||(waterTemperAlarm==wtaHEAT/*temperOfWater>=90*/)))bERR=1;	
3709  02e4 c60000        	ld	a,_waterSensorErrorStat
3710  02e7 a155          	cp	a,#85
3711  02e9 2618          	jrne	L5122
3713  02eb b627          	ld	a,_waterTemperAlarm
3714  02ed a101          	cp	a,#1
3715  02ef 270c          	jreq	L7122
3717  02f1 b627          	ld	a,_waterTemperAlarm
3718  02f3 a102          	cp	a,#2
3719  02f5 260c          	jrne	L5122
3720  02f7 2004          	jra	L7122
3721  02f9               L7022:
3722                     ; 378 	else bWARN=0;
3724  02f9 3f07          	clr	_bWARN
3725  02fb 20e7          	jra	L1022
3726  02fd               L7122:
3727                     ; 381 if((waterSensorErrorStat==dsesNORM)&&((waterTemperAlarm==wtaCOOL/*temperOfWater<=3*/)||(waterTemperAlarm==wtaHEAT/*temperOfWater>=90*/)))bERR=1;	
3729  02fd 35010008      	mov	_bERR,#1
3731  0301 2002          	jra	L1222
3732  0303               L5122:
3733                     ; 382 else bERR=0;
3735  0303 3f08          	clr	_bERR
3736  0305               L1222:
3737                     ; 383 }
3740  0305 81            	ret
3776                     ; 386 void airSensorLineErrorDrv(void)
3776                     ; 387 {
3777                     	switch	.text
3778  0306               _airSensorLineErrorDrv:
3782                     ; 388 if(GPIOD->IDR&(1<<6)) 
3784  0306 c65010        	ld	a,20496
3785  0309 a540          	bcp	a,#64
3786  030b 2714          	jreq	L3322
3787                     ; 390 	if(cntAirSensorLineErrorLo<10)
3789  030d b606          	ld	a,_cntAirSensorLineErrorLo
3790  030f a10a          	cp	a,#10
3791  0311 2420          	jruge	L1422
3792                     ; 392 		cntAirSensorLineErrorLo++;
3794  0313 3c06          	inc	_cntAirSensorLineErrorLo
3795                     ; 393 		if(cntAirSensorLineErrorLo>=10)
3797  0315 b606          	ld	a,_cntAirSensorLineErrorLo
3798  0317 a10a          	cp	a,#10
3799  0319 2518          	jrult	L1422
3800                     ; 395 			airSensorErrorStat=taesLLO;	
3802  031b 35020023      	mov	_airSensorErrorStat,#2
3803  031f 2012          	jra	L1422
3804  0321               L3322:
3805                     ; 401 	if(cntAirSensorLineErrorHi<10)
3807  0321 b605          	ld	a,_cntAirSensorLineErrorHi
3808  0323 a10a          	cp	a,#10
3809  0325 240c          	jruge	L1422
3810                     ; 403 		cntAirSensorLineErrorHi++;
3812  0327 3c05          	inc	_cntAirSensorLineErrorHi
3813                     ; 404 		if(cntAirSensorLineErrorHi>=10)
3815  0329 b605          	ld	a,_cntAirSensorLineErrorHi
3816  032b a10a          	cp	a,#10
3817  032d 2504          	jrult	L1422
3818                     ; 406 			airSensorErrorStat=taesLHI;	
3820  032f 35030023      	mov	_airSensorErrorStat,#3
3821  0333               L1422:
3822                     ; 411 if((airSensorErrorStat!=taesNORM)&&(airSensorErrorStatOld==taesNORM))
3824  0333 b623          	ld	a,_airSensorErrorStat
3825  0335 a155          	cp	a,#85
3826  0337 2769          	jreq	L7422
3828  0339 b624          	ld	a,_airSensorErrorStatOld
3829  033b a155          	cp	a,#85
3830  033d 2663          	jrne	L7422
3831                     ; 413 	strcpy(tempRussianText,"Ќеисправность датчика температуры воздуха"); 
3833  033f ae00c8        	ldw	x,#L1522
3834  0342 89            	pushw	x
3835  0343 ae0000        	ldw	x,#_tempRussianText
3836  0346 cd0000        	call	_strcpy
3838  0349 85            	popw	x
3839                     ; 416 	if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
3841  034a c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3842  034d a501          	bcp	a,#1
3843  034f 270f          	jreq	L3522
3844                     ; 418 		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
3846  0351 ae0000        	ldw	x,#_tempRussianText
3847  0354 89            	pushw	x
3848  0355 ae4002        	ldw	x,#_MAIN_NUMBER
3849  0358 89            	pushw	x
3850  0359 a670          	ld	a,#112
3851  035b cd0000        	call	_modem_send_sms
3853  035e 5b04          	addw	sp,#4
3854  0360               L3522:
3855                     ; 420 	if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
3857  0360 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3858  0363 a502          	bcp	a,#2
3859  0365 270f          	jreq	L5522
3860                     ; 422 		modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
3862  0367 ae0000        	ldw	x,#_tempRussianText
3863  036a 89            	pushw	x
3864  036b ae400c        	ldw	x,#_AUTH_NUMBER_1
3865  036e 89            	pushw	x
3866  036f a670          	ld	a,#112
3867  0371 cd0000        	call	_modem_send_sms
3869  0374 5b04          	addw	sp,#4
3870  0376               L5522:
3871                     ; 424 	if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
3873  0376 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3874  0379 a504          	bcp	a,#4
3875  037b 270f          	jreq	L7522
3876                     ; 426 		modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
3878  037d ae0000        	ldw	x,#_tempRussianText
3879  0380 89            	pushw	x
3880  0381 ae406b        	ldw	x,#_AUTH_NUMBER_2
3881  0384 89            	pushw	x
3882  0385 a670          	ld	a,#112
3883  0387 cd0000        	call	_modem_send_sms
3885  038a 5b04          	addw	sp,#4
3886  038c               L7522:
3887                     ; 428 	if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
3889  038c c6407f        	ld	a,_AUTH_NUMBER_FLAGS
3890  038f a508          	bcp	a,#8
3891  0391 270f          	jreq	L7422
3892                     ; 430 		modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
3894  0393 ae0000        	ldw	x,#_tempRussianText
3895  0396 89            	pushw	x
3896  0397 ae4075        	ldw	x,#_AUTH_NUMBER_3
3897  039a 89            	pushw	x
3898  039b a670          	ld	a,#112
3899  039d cd0000        	call	_modem_send_sms
3901  03a0 5b04          	addw	sp,#4
3902  03a2               L7422:
3903                     ; 434 airSensorErrorStatOld=airSensorErrorStat;
3905  03a2 452324        	mov	_airSensorErrorStatOld,_airSensorErrorStat
3906                     ; 435 }
3909  03a5 81            	ret
3947                     ; 438 void waterTemperAlarmHndl(void)
3947                     ; 439 {
3948                     	switch	.text
3949  03a6               _waterTemperAlarmHndl:
3953                     ; 440 if((waterSensorErrorStat==dsesNORM)&&((temperOfWater<3)||(temperOfWater>90))&&(mainCnt>60))
3955  03a6 c60000        	ld	a,_waterSensorErrorStat
3956  03a9 a155          	cp	a,#85
3957  03ab 2624          	jrne	L3722
3959  03ad 9c            	rvf
3960  03ae b61f          	ld	a,_temperOfWater
3961  03b0 a103          	cp	a,#3
3962  03b2 2f07          	jrslt	L5722
3964  03b4 9c            	rvf
3965  03b5 b61f          	ld	a,_temperOfWater
3966  03b7 a15b          	cp	a,#91
3967  03b9 2f16          	jrslt	L3722
3968  03bb               L5722:
3970  03bb 9c            	rvf
3971  03bc be82          	ldw	x,_mainCnt
3972  03be a3003d        	cpw	x,#61
3973  03c1 2f0e          	jrslt	L3722
3974                     ; 442 	if(waterTemperAlarmCnt<15)waterTemperAlarmCnt++;//=wtaCOOL;	
3976  03c3 9c            	rvf
3977  03c4 c60037        	ld	a,_waterTemperAlarmCnt
3978  03c7 a10f          	cp	a,#15
3979  03c9 2e25          	jrsge	L1032
3982  03cb 725c0037      	inc	_waterTemperAlarmCnt
3983  03cf 201f          	jra	L1032
3984  03d1               L3722:
3985                     ; 448 else if((waterSensorErrorStat==dsesNORM)&&(temperOfWater>=10)&&(temperOfWater<=80))
3987  03d1 c60000        	ld	a,_waterSensorErrorStat
3988  03d4 a155          	cp	a,#85
3989  03d6 2618          	jrne	L1032
3991  03d8 9c            	rvf
3992  03d9 b61f          	ld	a,_temperOfWater
3993  03db a10a          	cp	a,#10
3994  03dd 2f11          	jrslt	L1032
3996  03df 9c            	rvf
3997  03e0 b61f          	ld	a,_temperOfWater
3998  03e2 a151          	cp	a,#81
3999  03e4 2e0a          	jrsge	L1032
4000                     ; 450 	if(waterTemperAlarmCnt)waterTemperAlarmCnt--;//waterTemperAlarm=wtaNORM;	
4002  03e6 725d0037      	tnz	_waterTemperAlarmCnt
4003  03ea 2704          	jreq	L1032
4006  03ec 725a0037      	dec	_waterTemperAlarmCnt
4007  03f0               L1032:
4008                     ; 453 if(waterTemperAlarmCnt>14)
4010  03f0 9c            	rvf
4011  03f1 c60037        	ld	a,_waterTemperAlarmCnt
4012  03f4 a10f          	cp	a,#15
4013  03f6 2f1a          	jrslt	L7032
4014                     ; 455 	if(temperOfWater<3)waterTemperAlarm=wtaCOOL;
4016  03f8 9c            	rvf
4017  03f9 b61f          	ld	a,_temperOfWater
4018  03fb a103          	cp	a,#3
4019  03fd 2e06          	jrsge	L1132
4022  03ff 35010027      	mov	_waterTemperAlarm,#1
4024  0403 2017          	jra	L7132
4025  0405               L1132:
4026                     ; 456 	else if(temperOfWater>90)waterTemperAlarm=wtaHEAT;
4028  0405 9c            	rvf
4029  0406 b61f          	ld	a,_temperOfWater
4030  0408 a15b          	cp	a,#91
4031  040a 2f10          	jrslt	L7132
4034  040c 35020027      	mov	_waterTemperAlarm,#2
4035  0410 200a          	jra	L7132
4036  0412               L7032:
4037                     ; 458 else if(waterTemperAlarmCnt<1)
4039  0412 9c            	rvf
4040  0413 c60037        	ld	a,_waterTemperAlarmCnt
4041  0416 a101          	cp	a,#1
4042  0418 2e02          	jrsge	L7132
4043                     ; 460 	waterTemperAlarm=wtaNORM;	
4045  041a 3f27          	clr	_waterTemperAlarm
4046  041c               L7132:
4047                     ; 463 if((waterTemperAlarm!=wtaNORM)&&(waterTemperAlarmOld==wtaNORM))
4049  041c 3d27          	tnz	_waterTemperAlarm
4050  041e 2603cc04a3    	jreq	L3232
4052  0423 3d28          	tnz	_waterTemperAlarmOld
4053  0425 267c          	jrne	L3232
4054                     ; 465 	if(waterTemperAlarm==wtaCOOL) strcpy(tempRussianText,"“емпература воды в системе ниже 3 гр.÷."); 
4056  0427 b627          	ld	a,_waterTemperAlarm
4057  0429 a101          	cp	a,#1
4058  042b 260d          	jrne	L5232
4061  042d ae00a0        	ldw	x,#L7232
4062  0430 89            	pushw	x
4063  0431 ae0000        	ldw	x,#_tempRussianText
4064  0434 cd0000        	call	_strcpy
4066  0437 85            	popw	x
4068  0438 2011          	jra	L1332
4069  043a               L5232:
4070                     ; 466 	else if(waterTemperAlarm==wtaHEAT) strcpy(tempRussianText,"“емпература воды в системе выше 90 гр.÷."); 
4072  043a b627          	ld	a,_waterTemperAlarm
4073  043c a102          	cp	a,#2
4074  043e 260b          	jrne	L1332
4077  0440 ae0077        	ldw	x,#L5332
4078  0443 89            	pushw	x
4079  0444 ae0000        	ldw	x,#_tempRussianText
4080  0447 cd0000        	call	_strcpy
4082  044a 85            	popw	x
4083  044b               L1332:
4084                     ; 469 	if(AUTH_NUMBER_FLAGS&0x01) //если установлен главный номер
4086  044b c6407f        	ld	a,_AUTH_NUMBER_FLAGS
4087  044e a501          	bcp	a,#1
4088  0450 270f          	jreq	L7332
4089                     ; 471 		modem_send_sms('p',MAIN_NUMBER,tempRussianText);
4091  0452 ae0000        	ldw	x,#_tempRussianText
4092  0455 89            	pushw	x
4093  0456 ae4002        	ldw	x,#_MAIN_NUMBER
4094  0459 89            	pushw	x
4095  045a a670          	ld	a,#112
4096  045c cd0000        	call	_modem_send_sms
4098  045f 5b04          	addw	sp,#4
4099  0461               L7332:
4100                     ; 474 	if(AUTH_NUMBER_FLAGS&0x02) //если установлен главный номер
4102  0461 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
4103  0464 a502          	bcp	a,#2
4104  0466 270f          	jreq	L1432
4105                     ; 476 		modem_send_sms('p',AUTH_NUMBER_1,tempRussianText);
4107  0468 ae0000        	ldw	x,#_tempRussianText
4108  046b 89            	pushw	x
4109  046c ae400c        	ldw	x,#_AUTH_NUMBER_1
4110  046f 89            	pushw	x
4111  0470 a670          	ld	a,#112
4112  0472 cd0000        	call	_modem_send_sms
4114  0475 5b04          	addw	sp,#4
4115  0477               L1432:
4116                     ; 478 	if(AUTH_NUMBER_FLAGS&0x04) //если установлен главный номер
4118  0477 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
4119  047a a504          	bcp	a,#4
4120  047c 270f          	jreq	L3432
4121                     ; 480 		modem_send_sms('p',AUTH_NUMBER_2,tempRussianText);
4123  047e ae0000        	ldw	x,#_tempRussianText
4124  0481 89            	pushw	x
4125  0482 ae406b        	ldw	x,#_AUTH_NUMBER_2
4126  0485 89            	pushw	x
4127  0486 a670          	ld	a,#112
4128  0488 cd0000        	call	_modem_send_sms
4130  048b 5b04          	addw	sp,#4
4131  048d               L3432:
4132                     ; 482 	if(AUTH_NUMBER_FLAGS&0x08) //если установлен главный номер
4134  048d c6407f        	ld	a,_AUTH_NUMBER_FLAGS
4135  0490 a508          	bcp	a,#8
4136  0492 270f          	jreq	L3232
4137                     ; 484 		modem_send_sms('p',AUTH_NUMBER_3,tempRussianText);
4139  0494 ae0000        	ldw	x,#_tempRussianText
4140  0497 89            	pushw	x
4141  0498 ae4075        	ldw	x,#_AUTH_NUMBER_3
4142  049b 89            	pushw	x
4143  049c a670          	ld	a,#112
4144  049e cd0000        	call	_modem_send_sms
4146  04a1 5b04          	addw	sp,#4
4147  04a3               L3232:
4148                     ; 488 waterTemperAlarmOld=waterTemperAlarm;
4150  04a3 452728        	mov	_waterTemperAlarmOld,_waterTemperAlarm
4151                     ; 489 }
4154  04a6 81            	ret
4181                     ; 492 void beep_drv(void)
4181                     ; 493 {
4182                     	switch	.text
4183  04a7               _beep_drv:
4187                     ; 494 GPIOG->DDR|=0b00000010;
4189  04a7 72125020      	bset	20512,#1
4190                     ; 495 GPIOG->CR1|=0b00000010;
4192  04ab 72125021      	bset	20513,#1
4193                     ; 496 GPIOG->CR2&=0b11111101;
4195  04af 72135022      	bres	20514,#1
4196                     ; 500 if(bERR)
4198  04b3 3d08          	tnz	_bERR
4199  04b5 271e          	jreq	L7532
4200                     ; 502 	if(++beep_drv_cnt>=15)beep_drv_cnt=0;
4202  04b7 9c            	rvf
4203  04b8 3c09          	inc	_beep_drv_cnt
4204  04ba b609          	ld	a,_beep_drv_cnt
4205  04bc a10f          	cp	a,#15
4206  04be 2f02          	jrslt	L1632
4209  04c0 3f09          	clr	_beep_drv_cnt
4210  04c2               L1632:
4211                     ; 503 	if(beep_drv_cnt<5)
4213  04c2 9c            	rvf
4214  04c3 b609          	ld	a,_beep_drv_cnt
4215  04c5 a105          	cp	a,#5
4216  04c7 2e06          	jrsge	L3632
4217                     ; 505 		GPIOG->ODR|=0b00000010;
4219  04c9 7212501e      	bset	20510,#1
4221  04cd 2058          	jra	L7632
4222  04cf               L3632:
4223                     ; 507 	else GPIOG->ODR&=0b11111101;
4225  04cf 7213501e      	bres	20510,#1
4226  04d3 2052          	jra	L7632
4227  04d5               L7532:
4228                     ; 509 else if(bWARN)
4230  04d5 3d07          	tnz	_bWARN
4231  04d7 273a          	jreq	L1732
4232                     ; 511 	if(++beep_drv_cnt>=100)beep_drv_cnt=0;
4234  04d9 9c            	rvf
4235  04da 3c09          	inc	_beep_drv_cnt
4236  04dc b609          	ld	a,_beep_drv_cnt
4237  04de a164          	cp	a,#100
4238  04e0 2f02          	jrslt	L3732
4241  04e2 3f09          	clr	_beep_drv_cnt
4242  04e4               L3732:
4243                     ; 512 	if((beep_drv_cnt<5)||((beep_drv_cnt>=15)&&(beep_drv_cnt<20))||((beep_drv_cnt>=30)&&(beep_drv_cnt<35)))
4245  04e4 9c            	rvf
4246  04e5 b609          	ld	a,_beep_drv_cnt
4247  04e7 a105          	cp	a,#5
4248  04e9 2f1c          	jrslt	L7732
4250  04eb 9c            	rvf
4251  04ec b609          	ld	a,_beep_drv_cnt
4252  04ee a10f          	cp	a,#15
4253  04f0 2f07          	jrslt	L3042
4255  04f2 9c            	rvf
4256  04f3 b609          	ld	a,_beep_drv_cnt
4257  04f5 a114          	cp	a,#20
4258  04f7 2f0e          	jrslt	L7732
4259  04f9               L3042:
4261  04f9 9c            	rvf
4262  04fa b609          	ld	a,_beep_drv_cnt
4263  04fc a11e          	cp	a,#30
4264  04fe 2f0d          	jrslt	L5732
4266  0500 9c            	rvf
4267  0501 b609          	ld	a,_beep_drv_cnt
4268  0503 a123          	cp	a,#35
4269  0505 2e06          	jrsge	L5732
4270  0507               L7732:
4271                     ; 514 		GPIOG->ODR|=0b00000010;
4273  0507 7212501e      	bset	20510,#1
4275  050b 201a          	jra	L7632
4276  050d               L5732:
4277                     ; 516 	else GPIOG->ODR&=0b11111101;
4279  050d 7213501e      	bres	20510,#1
4280  0511 2014          	jra	L7632
4281  0513               L1732:
4282                     ; 518 else if(beepTestCnt)
4284  0513 725d000b      	tnz	_beepTestCnt
4285  0517 270a          	jreq	L1142
4286                     ; 520 	beepTestCnt--;
4288  0519 725a000b      	dec	_beepTestCnt
4289                     ; 521 	GPIOG->ODR|=0b00000010;
4291  051d 7212501e      	bset	20510,#1
4293  0521 2004          	jra	L7632
4294  0523               L1142:
4295                     ; 523 else GPIOG->ODR&=0b11111101;
4297  0523 7213501e      	bres	20510,#1
4298  0527               L7632:
4299                     ; 524 }
4302  0527 81            	ret
4334                     ; 527 void time_drv(void)
4334                     ; 528 {
4335                     	switch	.text
4336  0528               _time_drv:
4338  0528 88            	push	a
4339       00000001      OFST:	set	1
4342                     ; 529 _ds1307_read_time(buff_for_time);
4344  0529 ae0012        	ldw	x,#_buff_for_time
4345  052c cd0000        	call	__ds1307_read_time
4347                     ; 531 time_sec=(((buff_for_time[0]&0x70)>>4)*10)+(buff_for_time[0]&0x0f);
4349  052f b612          	ld	a,_buff_for_time
4350  0531 a40f          	and	a,#15
4351  0533 6b01          	ld	(OFST+0,sp),a
4352  0535 b612          	ld	a,_buff_for_time
4353  0537 a470          	and	a,#112
4354  0539 4e            	swap	a
4355  053a a40f          	and	a,#15
4356  053c 97            	ld	xl,a
4357  053d a60a          	ld	a,#10
4358  053f 42            	mul	x,a
4359  0540 9f            	ld	a,xl
4360  0541 1b01          	add	a,(OFST+0,sp)
4361  0543 b711          	ld	_time_sec,a
4362                     ; 532 time_min=(((buff_for_time[1]&0x70)>>4)*10)+(buff_for_time[1]&0x0f);
4364  0545 b613          	ld	a,_buff_for_time+1
4365  0547 a40f          	and	a,#15
4366  0549 6b01          	ld	(OFST+0,sp),a
4367  054b b613          	ld	a,_buff_for_time+1
4368  054d a470          	and	a,#112
4369  054f 4e            	swap	a
4370  0550 a40f          	and	a,#15
4371  0552 97            	ld	xl,a
4372  0553 a60a          	ld	a,#10
4373  0555 42            	mul	x,a
4374  0556 9f            	ld	a,xl
4375  0557 1b01          	add	a,(OFST+0,sp)
4376  0559 b710          	ld	_time_min,a
4377                     ; 533 time_hour=(((buff_for_time[2]&0x30)>>4)*10)+(buff_for_time[2]&0x0f);
4379  055b b614          	ld	a,_buff_for_time+2
4380  055d a40f          	and	a,#15
4381  055f 6b01          	ld	(OFST+0,sp),a
4382  0561 b614          	ld	a,_buff_for_time+2
4383  0563 a430          	and	a,#48
4384  0565 4e            	swap	a
4385  0566 a40f          	and	a,#15
4386  0568 97            	ld	xl,a
4387  0569 a60a          	ld	a,#10
4388  056b 42            	mul	x,a
4389  056c 9f            	ld	a,xl
4390  056d 1b01          	add	a,(OFST+0,sp)
4391  056f b70f          	ld	_time_hour,a
4392                     ; 534 time_date=(((buff_for_time[4]&0x30)>>4)*10)+(buff_for_time[4]&0x0f);
4394  0571 b616          	ld	a,_buff_for_time+4
4395  0573 a40f          	and	a,#15
4396  0575 6b01          	ld	(OFST+0,sp),a
4397  0577 b616          	ld	a,_buff_for_time+4
4398  0579 a430          	and	a,#48
4399  057b 4e            	swap	a
4400  057c a40f          	and	a,#15
4401  057e 97            	ld	xl,a
4402  057f a60a          	ld	a,#10
4403  0581 42            	mul	x,a
4404  0582 9f            	ld	a,xl
4405  0583 1b01          	add	a,(OFST+0,sp)
4406  0585 b703          	ld	_time_date,a
4407                     ; 535 time_month=(((buff_for_time[5]&0x10)>>4)*10)+(buff_for_time[5]&0x0f);
4409  0587 b617          	ld	a,_buff_for_time+5
4410  0589 a40f          	and	a,#15
4411  058b 6b01          	ld	(OFST+0,sp),a
4412  058d b617          	ld	a,_buff_for_time+5
4413  058f a410          	and	a,#16
4414  0591 4e            	swap	a
4415  0592 a40f          	and	a,#15
4416  0594 97            	ld	xl,a
4417  0595 a60a          	ld	a,#10
4418  0597 42            	mul	x,a
4419  0598 9f            	ld	a,xl
4420  0599 1b01          	add	a,(OFST+0,sp)
4421  059b b70d          	ld	_time_month,a
4422                     ; 536 time_year=(((buff_for_time[6]&0xf0)>>4)*10)+(buff_for_time[6]&0x0f);
4424  059d b618          	ld	a,_buff_for_time+6
4425  059f a40f          	and	a,#15
4426  05a1 6b01          	ld	(OFST+0,sp),a
4427  05a3 b618          	ld	a,_buff_for_time+6
4428  05a5 a4f0          	and	a,#240
4429  05a7 4e            	swap	a
4430  05a8 a40f          	and	a,#15
4431  05aa 97            	ld	xl,a
4432  05ab a60a          	ld	a,#10
4433  05ad 42            	mul	x,a
4434  05ae 9f            	ld	a,xl
4435  05af 1b01          	add	a,(OFST+0,sp)
4436  05b1 b70c          	ld	_time_year,a
4437                     ; 537 time_day_of_week=(buff_for_time[3]&0x07);
4439  05b3 b615          	ld	a,_buff_for_time+3
4440  05b5 a407          	and	a,#7
4441  05b7 b70e          	ld	_time_day_of_week,a
4442                     ; 538 }
4445  05b9 84            	pop	a
4446  05ba 81            	ret
4469                     ; 542 void sheduler_hndl(void)
4469                     ; 543 {
4470                     	switch	.text
4471  05bb               _sheduler_hndl:
4475                     ; 573 }
4478  05bb 81            	ret
4504                     ; 576 void isp_hndl(void)
4504                     ; 577 {
4505                     	switch	.text
4506  05bc               _isp_hndl:
4510                     ; 578 isp_cnt++;
4512  05bc 725c0006      	inc	_isp_cnt
4513                     ; 579 if(isp_cnt>=10)
4515  05c0 c60006        	ld	a,_isp_cnt
4516  05c3 a10a          	cp	a,#10
4517  05c5 2515          	jrult	L5442
4518                     ; 581 	isp_cnt=0;
4520  05c7 725f0006      	clr	_isp_cnt
4521                     ; 582 	isp_main_cnt++;
4523  05cb ae4020        	ldw	x,#_isp_main_cnt
4524  05ce cd0000        	call	c_ltor
4526  05d1 a601          	ld	a,#1
4527  05d3 cd0000        	call	c_ladc
4529  05d6 ae4020        	ldw	x,#_isp_main_cnt
4530  05d9 cd0000        	call	c_eewrl
4532  05dc               L5442:
4533                     ; 585 if((isp_cnt>=1)&&(isp_cnt<6))out_stat[0]=osON;	
4535  05dc 725d0006      	tnz	_isp_cnt
4536  05e0 270d          	jreq	L7442
4538  05e2 c60006        	ld	a,_isp_cnt
4539  05e5 a106          	cp	a,#6
4540  05e7 2406          	jruge	L7442
4543  05e9 35010020      	mov	_out_stat,#1
4545  05ed 2002          	jra	L1542
4546  05ef               L7442:
4547                     ; 586 else out_stat[0]=osOFF;
4549  05ef 3f20          	clr	_out_stat
4550  05f1               L1542:
4551                     ; 588 if((isp_cnt>=2)&&(isp_cnt<7))out_stat[1]=osON;	
4553  05f1 c60006        	ld	a,_isp_cnt
4554  05f4 a102          	cp	a,#2
4555  05f6 250d          	jrult	L3542
4557  05f8 c60006        	ld	a,_isp_cnt
4558  05fb a107          	cp	a,#7
4559  05fd 2406          	jruge	L3542
4562  05ff 35010021      	mov	_out_stat+1,#1
4564  0603 2002          	jra	L5542
4565  0605               L3542:
4566                     ; 589 else out_stat[1]=osOFF;
4568  0605 3f21          	clr	_out_stat+1
4569  0607               L5542:
4570                     ; 591 if((isp_cnt>=3)&&(isp_cnt<8))out_stat[2]=osON;	
4572  0607 c60006        	ld	a,_isp_cnt
4573  060a a103          	cp	a,#3
4574  060c 250d          	jrult	L7542
4576  060e c60006        	ld	a,_isp_cnt
4577  0611 a108          	cp	a,#8
4578  0613 2406          	jruge	L7542
4581  0615 35010022      	mov	_out_stat+2,#1
4583  0619 2002          	jra	L1642
4584  061b               L7542:
4585                     ; 592 else out_stat[2]=osOFF;
4587  061b 3f22          	clr	_out_stat+2
4588  061d               L1642:
4589                     ; 593 }
4592  061d 81            	ret
4637                     ; 596 void power_hndl(void)
4637                     ; 597 {
4638                     	switch	.text
4639  061e               _power_hndl:
4641  061e 88            	push	a
4642       00000001      OFST:	set	1
4645                     ; 598 disableInterrupts();	
4648  061f 9b            sim
4650                     ; 599 if((powerNecc)&&(powerNeccOld==0))
4653  0620 3d25          	tnz	_powerNecc
4654  0622 2707          	jreq	L1052
4656  0624 3d26          	tnz	_powerNeccOld
4657  0626 2603          	jrne	L1052
4658                     ; 601 	fiksRandom=currRandom;
4660  0628 458584        	mov	_fiksRandom,_currRandom
4661  062b               L1052:
4662                     ; 604 if(!powerNecc)
4664  062b 3d25          	tnz	_powerNecc
4665  062d 2608          	jrne	L3052
4666                     ; 606 	out_stat[0]=osOFF;
4668  062f 3f20          	clr	_out_stat
4669                     ; 607 	out_stat[1]=osOFF;
4671  0631 3f21          	clr	_out_stat+1
4672                     ; 608 	out_stat[2]=osOFF;
4674  0633 3f22          	clr	_out_stat+2
4676  0635 2063          	jra	L5052
4677  0637               L3052:
4678                     ; 613 	for(i=0;i<3;i++)
4680  0637 0f01          	clr	(OFST+0,sp)
4681  0639               L7052:
4682                     ; 615 		if((i<powerNecc)&&(i<MAX_POWER_EE))		out_stat[warmOrder[fiksRandom][i]]=osON;
4684  0639 9c            	rvf
4685  063a 7b01          	ld	a,(OFST+0,sp)
4686  063c 5f            	clrw	x
4687  063d 97            	ld	xl,a
4688  063e 905f          	clrw	y
4689  0640 b625          	ld	a,_powerNecc
4690  0642 2a02          	jrpl	L64
4691  0644 9053          	cplw	y
4692  0646               L64:
4693  0646 9097          	ld	yl,a
4694  0648 90bf00        	ldw	c_y,y
4695  064b b300          	cpw	x,c_y
4696  064d 2e2f          	jrsge	L5152
4698  064f 9c            	rvf
4699  0650 7b01          	ld	a,(OFST+0,sp)
4700  0652 5f            	clrw	x
4701  0653 97            	ld	xl,a
4702  0654 905f          	clrw	y
4703  0656 c64047        	ld	a,_MAX_POWER_EE
4704  0659 2a02          	jrpl	L05
4705  065b 9053          	cplw	y
4706  065d               L05:
4707  065d 9097          	ld	yl,a
4708  065f 90bf00        	ldw	c_y,y
4709  0662 b300          	cpw	x,c_y
4710  0664 2e18          	jrsge	L5152
4713  0666 b684          	ld	a,_fiksRandom
4714  0668 97            	ld	xl,a
4715  0669 a603          	ld	a,#3
4716  066b 42            	mul	x,a
4717  066c 01            	rrwa	x,a
4718  066d 1b01          	add	a,(OFST+0,sp)
4719  066f 2401          	jrnc	L25
4720  0671 5c            	incw	x
4721  0672               L25:
4722  0672 02            	rlwa	x,a
4723  0673 d60000        	ld	a,(_warmOrder,x)
4724  0676 5f            	clrw	x
4725  0677 97            	ld	xl,a
4726  0678 a601          	ld	a,#1
4727  067a e720          	ld	(_out_stat,x),a
4729  067c 2014          	jra	L7152
4730  067e               L5152:
4731                     ; 616 		else									out_stat[warmOrder[fiksRandom][i]]=osOFF;
4733  067e b684          	ld	a,_fiksRandom
4734  0680 97            	ld	xl,a
4735  0681 a603          	ld	a,#3
4736  0683 42            	mul	x,a
4737  0684 01            	rrwa	x,a
4738  0685 1b01          	add	a,(OFST+0,sp)
4739  0687 2401          	jrnc	L45
4740  0689 5c            	incw	x
4741  068a               L45:
4742  068a 02            	rlwa	x,a
4743  068b d60000        	ld	a,(_warmOrder,x)
4744  068e 5f            	clrw	x
4745  068f 97            	ld	xl,a
4746  0690 6f20          	clr	(_out_stat,x)
4747  0692               L7152:
4748                     ; 613 	for(i=0;i<3;i++)
4750  0692 0c01          	inc	(OFST+0,sp)
4753  0694 7b01          	ld	a,(OFST+0,sp)
4754  0696 a103          	cp	a,#3
4755  0698 259f          	jrult	L7052
4756  069a               L5052:
4757                     ; 620 powerNeccOld=powerNecc;
4759  069a 452526        	mov	_powerNeccOld,_powerNecc
4760                     ; 622 powerEnabled=0;
4762  069d 3f0a          	clr	_powerEnabled
4763                     ; 623 if((out_stat[0]==osON)&&(outMode==omON))powerEnabled++;
4765  069f b620          	ld	a,_out_stat
4766  06a1 a101          	cp	a,#1
4767  06a3 2609          	jrne	L1252
4769  06a5 c6401d        	ld	a,_outMode
4770  06a8 a101          	cp	a,#1
4771  06aa 2602          	jrne	L1252
4774  06ac 3c0a          	inc	_powerEnabled
4775  06ae               L1252:
4776                     ; 624 if((out_stat[1]==osON)&&(outMode==omON))powerEnabled++;
4778  06ae b621          	ld	a,_out_stat+1
4779  06b0 a101          	cp	a,#1
4780  06b2 2609          	jrne	L3252
4782  06b4 c6401d        	ld	a,_outMode
4783  06b7 a101          	cp	a,#1
4784  06b9 2602          	jrne	L3252
4787  06bb 3c0a          	inc	_powerEnabled
4788  06bd               L3252:
4789                     ; 625 if((out_stat[2]==osON)&&(outMode==omON))powerEnabled++;
4791  06bd b622          	ld	a,_out_stat+2
4792  06bf a101          	cp	a,#1
4793  06c1 2609          	jrne	L5252
4795  06c3 c6401d        	ld	a,_outMode
4796  06c6 a101          	cp	a,#1
4797  06c8 2602          	jrne	L5252
4800  06ca 3c0a          	inc	_powerEnabled
4801  06cc               L5252:
4802                     ; 627 enableInterrupts();
4805  06cc 9a            rim
4807                     ; 628 }
4811  06cd 84            	pop	a
4812  06ce 81            	ret
4842                     ; 631 void power_necc_hndl(void)
4842                     ; 632 {
4843                     	switch	.text
4844  06cf               _power_necc_hndl:
4848                     ; 634 if((aktualTemper>=targetTemper)||(temperOfWater>=90)||(mainCnt<3)||(powerStat==psOFF))
4850  06cf 9c            	rvf
4851  06d0 b61d          	ld	a,_aktualTemper
4852  06d2 b11c          	cp	a,_targetTemper
4853  06d4 2e13          	jrsge	L1452
4855  06d6 9c            	rvf
4856  06d7 b61f          	ld	a,_temperOfWater
4857  06d9 a15a          	cp	a,#90
4858  06db 2e0c          	jrsge	L1452
4860  06dd 9c            	rvf
4861  06de be82          	ldw	x,_mainCnt
4862  06e0 a30003        	cpw	x,#3
4863  06e3 2f04          	jrslt	L1452
4865  06e5 3d29          	tnz	_powerStat
4866  06e7 2603          	jrne	L7352
4867  06e9               L1452:
4868                     ; 636 	powerNecc=0;	
4870  06e9 3f25          	clr	_powerNecc
4872  06eb               L7452:
4873                     ; 647 }
4876  06eb 81            	ret
4877  06ec               L7352:
4878                     ; 638 else if(aktualTemper<targetTemper)
4880  06ec 9c            	rvf
4881  06ed b61d          	ld	a,_aktualTemper
4882  06ef b11c          	cp	a,_targetTemper
4883  06f1 2ef8          	jrsge	L7452
4884                     ; 640 	powerNeccDelta=targetTemper-aktualTemper;
4886  06f3 b61c          	ld	a,_targetTemper
4887  06f5 b01d          	sub	a,_aktualTemper
4888  06f7 b70b          	ld	_powerNeccDelta,a
4889                     ; 641 	powerNecc=0;
4891  06f9 3f25          	clr	_powerNecc
4892                     ; 642 	if(powerNeccDelta>=2) powerNecc=1;
4894  06fb 9c            	rvf
4895  06fc b60b          	ld	a,_powerNeccDelta
4896  06fe a102          	cp	a,#2
4897  0700 2f04          	jrslt	L3552
4900  0702 35010025      	mov	_powerNecc,#1
4901  0706               L3552:
4902                     ; 643 	if(powerNeccDelta>=3) powerNecc=2;
4904  0706 9c            	rvf
4905  0707 b60b          	ld	a,_powerNeccDelta
4906  0709 a103          	cp	a,#3
4907  070b 2f04          	jrslt	L5552
4910  070d 35020025      	mov	_powerNecc,#2
4911  0711               L5552:
4912                     ; 644 	if(powerNeccDelta>=4) powerNecc=3;
4914  0711 9c            	rvf
4915  0712 b60b          	ld	a,_powerNeccDelta
4916  0714 a104          	cp	a,#4
4917  0716 2fd3          	jrslt	L7452
4920  0718 35030025      	mov	_powerNecc,#3
4921  071c 20cd          	jra	L7452
4965                     ; 650 void matemath(void)
4965                     ; 651 {
4966                     	switch	.text
4967  071e               _matemath:
4969  071e 89            	pushw	x
4970       00000002      OFST:	set	2
4973                     ; 653 if((wire1_in[1]&0xf0)==0)
4975  071f c60001        	ld	a,_wire1_in+1
4976  0722 a5f0          	bcp	a,#240
4977  0724 2624          	jrne	L7752
4978                     ; 655 	temperOfWaterTemp=((wire1_in[0]&0xf0)>>4)+((wire1_in[1]&0x0f)<<4);
4980  0726 c60001        	ld	a,_wire1_in+1
4981  0729 a40f          	and	a,#15
4982  072b 97            	ld	xl,a
4983  072c a610          	ld	a,#16
4984  072e 42            	mul	x,a
4985  072f 9f            	ld	a,xl
4986  0730 6b01          	ld	(OFST-1,sp),a
4987  0732 c60000        	ld	a,_wire1_in
4988  0735 a4f0          	and	a,#240
4989  0737 4e            	swap	a
4990  0738 a40f          	and	a,#15
4991  073a 1b01          	add	a,(OFST-1,sp)
4992  073c 6b02          	ld	(OFST+0,sp),a
4993                     ; 656 	temperOfWater=(signed short)temperOfWaterTemp;
4995  073e 7b02          	ld	a,(OFST+0,sp)
4996  0740 b71f          	ld	_temperOfWater,a
4997                     ; 657 	if(bDEB)temperOfWater=1;
4999  0742 3d00          	tnz	_bDEB
5000  0744 2704          	jreq	L7752
5003  0746 3501001f      	mov	_temperOfWater,#1
5004  074a               L7752:
5005                     ; 659 if(MODE_EE==1)
5007  074a c64046        	ld	a,_MODE_EE
5008  074d a101          	cp	a,#1
5009  074f 260a          	jrne	L3062
5010                     ; 661 	aktualTemper=temperOfWater;
5012  0751 451f1d        	mov	_aktualTemper,_temperOfWater
5013                     ; 662 	targetTemper=NECC_TEMPER_WATER_EE;
5015  0754 554045001c    	mov	_targetTemper,_NECC_TEMPER_WATER_EE
5017  0759 201e          	jra	L5062
5018  075b               L3062:
5019                     ; 664 else if(MODE_EE==2)
5021  075b c64046        	ld	a,_MODE_EE
5022  075e a102          	cp	a,#2
5023  0760 260a          	jrne	L7062
5024                     ; 666 	aktualTemper=temperOfAir;
5026  0762 451e1d        	mov	_aktualTemper,_temperOfAir
5027                     ; 667 	targetTemper=NECC_TEMPER_AIR_EE;
5029  0765 554044001c    	mov	_targetTemper,_NECC_TEMPER_AIR_EE
5031  076a 200d          	jra	L5062
5032  076c               L7062:
5033                     ; 669 else if(MODE_EE==3)
5035  076c c64046        	ld	a,_MODE_EE
5036  076f a103          	cp	a,#3
5037  0771 2606          	jrne	L5062
5038                     ; 671 	aktualTemper=temperOfAir;
5040  0773 451e1d        	mov	_aktualTemper,_temperOfAir
5041                     ; 672 	targetTemper=temperRegToSheduler;
5043  0776 45041c        	mov	_targetTemper,_temperRegToSheduler
5044  0779               L5062:
5045                     ; 674 }
5048  0779 85            	popw	x
5049  077a 81            	ret
5139                     	switch	.const
5140  0046               L46:
5141  0046 00002710      	dc.l	10000
5142                     ; 677 void ind_hndl(void)
5142                     ; 678 {
5143                     	switch	.text
5144  077b               _ind_hndl:
5146  077b 89            	pushw	x
5147       00000002      OFST:	set	2
5150                     ; 691 else */if(ind==iMn)
5152  077c 3d61          	tnz	_a_ind
5153  077e 2703          	jreq	L253
5154  0780 cc088a        	jp	L5262
5155  0783               L253:
5156                     ; 694 	int2indII_slkuf(isp_main_cnt%10000,0, 4, 0, 0, 0);
5158  0783 4b00          	push	#0
5159  0785 4b00          	push	#0
5160  0787 4b00          	push	#0
5161  0789 4b04          	push	#4
5162  078b 4b00          	push	#0
5163  078d ae4020        	ldw	x,#_isp_main_cnt
5164  0790 cd0000        	call	c_ltor
5166  0793 ae0046        	ldw	x,#L46
5167  0796 cd0000        	call	c_lmod
5169  0799 be02          	ldw	x,c_lreg+2
5170  079b cd0000        	call	_int2indII_slkuf
5172  079e 5b05          	addw	sp,#5
5173                     ; 695 	int2indI_slkuf(isp_in_cnt[0]/*isp_main_cnt/10000*/,1, 3, 0, 0, 0);
5175  07a0 4b00          	push	#0
5176  07a2 4b00          	push	#0
5177  07a4 4b00          	push	#0
5178  07a6 4b03          	push	#3
5179  07a8 4b01          	push	#1
5180  07aa ce0000        	ldw	x,_isp_in_cnt
5181  07ad cd0000        	call	_int2indI_slkuf
5183  07b0 5b05          	addw	sp,#5
5184                     ; 706 	led_mask_off(0x00);
5186  07b2 4f            	clr	a
5187  07b3 cd0000        	call	_led_mask_off
5189                     ; 707 	if(outMode==omON)
5191  07b6 c6401d        	ld	a,_outMode
5192  07b9 a101          	cp	a,#1
5193  07bb 262d          	jrne	L7262
5194                     ; 709 		if(MODE_EE==1)led_on(1);
5196  07bd c64046        	ld	a,_MODE_EE
5197  07c0 a101          	cp	a,#1
5198  07c2 2607          	jrne	L1362
5201  07c4 a601          	ld	a,#1
5202  07c6 cd0000        	call	_led_on
5205  07c9 201f          	jra	L7262
5206  07cb               L1362:
5207                     ; 710 		else if(MODE_EE==2) led_on(2);
5209  07cb c64046        	ld	a,_MODE_EE
5210  07ce a102          	cp	a,#2
5211  07d0 2607          	jrne	L5362
5214  07d2 a602          	ld	a,#2
5215  07d4 cd0000        	call	_led_on
5218  07d7 2011          	jra	L7262
5219  07d9               L5362:
5220                     ; 711 		else if(MODE_EE==3)
5222  07d9 c64046        	ld	a,_MODE_EE
5223  07dc a103          	cp	a,#3
5224  07de 260a          	jrne	L7262
5225                     ; 713 			led_on(2);
5227  07e0 a602          	ld	a,#2
5228  07e2 cd0000        	call	_led_on
5230                     ; 714 			led_on(3);
5232  07e5 a603          	ld	a,#3
5233  07e7 cd0000        	call	_led_on
5235  07ea               L7262:
5236                     ; 717 	if(!optr_kontr_cnt)
5238  07ea 725d0038      	tnz	_optr_kontr_cnt
5239  07ee 2638          	jrne	L3462
5240                     ; 719 		if((outMode==omON)&&(out_stat[0]==osON))led_on(4);
5242  07f0 c6401d        	ld	a,_outMode
5243  07f3 a101          	cp	a,#1
5244  07f5 260b          	jrne	L5462
5246  07f7 b620          	ld	a,_out_stat
5247  07f9 a101          	cp	a,#1
5248  07fb 2605          	jrne	L5462
5251  07fd a604          	ld	a,#4
5252  07ff cd0000        	call	_led_on
5254  0802               L5462:
5255                     ; 720 		if((outMode==omON)&&(out_stat[1]==osON))led_on(5);
5257  0802 c6401d        	ld	a,_outMode
5258  0805 a101          	cp	a,#1
5259  0807 260b          	jrne	L7462
5261  0809 b621          	ld	a,_out_stat+1
5262  080b a101          	cp	a,#1
5263  080d 2605          	jrne	L7462
5266  080f a605          	ld	a,#5
5267  0811 cd0000        	call	_led_on
5269  0814               L7462:
5270                     ; 721 		if((outMode==omON)&&(out_stat[2]==osON))led_on(6);
5272  0814 c6401d        	ld	a,_outMode
5273  0817 a101          	cp	a,#1
5274  0819 2643          	jrne	L3562
5276  081b b622          	ld	a,_out_stat+2
5277  081d a101          	cp	a,#1
5278  081f 263d          	jrne	L3562
5281  0821 a606          	ld	a,#6
5282  0823 cd0000        	call	_led_on
5284  0826 2036          	jra	L3562
5285  0828               L3462:
5286                     ; 725 		if(((optr_kontr_cnt)&&(optr_stat&0x01)))led_on(4);
5288  0828 725d0038      	tnz	_optr_kontr_cnt
5289  082c 270c          	jreq	L5562
5291  082e c60039        	ld	a,_optr_stat
5292  0831 a501          	bcp	a,#1
5293  0833 2705          	jreq	L5562
5296  0835 a604          	ld	a,#4
5297  0837 cd0000        	call	_led_on
5299  083a               L5562:
5300                     ; 726 		if(((optr_kontr_cnt)&&(optr_stat&0x02)))led_on(5);
5302  083a 725d0038      	tnz	_optr_kontr_cnt
5303  083e 270c          	jreq	L7562
5305  0840 c60039        	ld	a,_optr_stat
5306  0843 a502          	bcp	a,#2
5307  0845 2705          	jreq	L7562
5310  0847 a605          	ld	a,#5
5311  0849 cd0000        	call	_led_on
5313  084c               L7562:
5314                     ; 727 		if(((optr_kontr_cnt)&&(optr_stat&0x04)))led_on(6);
5316  084c 725d0038      	tnz	_optr_kontr_cnt
5317  0850 270c          	jreq	L3562
5319  0852 c60039        	ld	a,_optr_stat
5320  0855 a504          	bcp	a,#4
5321  0857 2705          	jreq	L3562
5324  0859 a606          	ld	a,#6
5325  085b cd0000        	call	_led_on
5327  085e               L3562:
5328                     ; 730 	if(bERR)led_on(7);
5330  085e 3d08          	tnz	_bERR
5331  0860 2707          	jreq	L3662
5334  0862 a607          	ld	a,#7
5335  0864 cd0000        	call	_led_on
5338  0867 2009          	jra	L5662
5339  0869               L3662:
5340                     ; 731 	else if(bWARN)led_flash(7);
5342  0869 3d07          	tnz	_bWARN
5343  086b 2705          	jreq	L5662
5346  086d a607          	ld	a,#7
5347  086f cd0000        	call	_led_flash
5349  0872               L5662:
5350                     ; 736 	if(modemState==MS_LINKED_INITIALIZED)	led_on(8);
5352  0872 b600          	ld	a,_modemState
5353  0874 a105          	cp	a,#5
5354  0876 2609          	jrne	L1762
5357  0878 a608          	ld	a,#8
5358  087a cd0000        	call	_led_on
5361  087d ace417e4      	jpf	L5762
5362  0881               L1762:
5363                     ; 737 	else 									led_off(8);
5365  0881 a608          	ld	a,#8
5366  0883 cd0000        	call	_led_off
5368  0886 ace417e4      	jpf	L5762
5369  088a               L5262:
5370                     ; 740 else if(ind==iDate_W)
5372  088a b661          	ld	a,_a_ind
5373  088c a104          	cp	a,#4
5374  088e 2661          	jrne	L7762
5375                     ; 742 	if(sub_ind==0)
5377  0890 3d62          	tnz	_a_ind+1
5378  0892 262a          	jrne	L1072
5379                     ; 745 		int2indI_slkuf(time_date,1, 2, 0, 1, 0);
5381  0894 4b00          	push	#0
5382  0896 4b01          	push	#1
5383  0898 4b00          	push	#0
5384  089a 4b02          	push	#2
5385  089c 4b01          	push	#1
5386  089e b603          	ld	a,_time_date
5387  08a0 5f            	clrw	x
5388  08a1 97            	ld	xl,a
5389  08a2 cd0000        	call	_int2indI_slkuf
5391  08a5 5b05          	addw	sp,#5
5392                     ; 746 		int2indII_slkuf(time_month,0, 2, 0, 1, 0);
5394  08a7 4b00          	push	#0
5395  08a9 4b01          	push	#1
5396  08ab 4b00          	push	#0
5397  08ad 4b02          	push	#2
5398  08af 4b00          	push	#0
5399  08b1 b60d          	ld	a,_time_month
5400  08b3 5f            	clrw	x
5401  08b4 97            	ld	xl,a
5402  08b5 cd0000        	call	_int2indII_slkuf
5404  08b8 5b05          	addw	sp,#5
5406  08ba ace417e4      	jpf	L5762
5407  08be               L1072:
5408                     ; 749 	else if(sub_ind==1)
5410  08be b662          	ld	a,_a_ind+1
5411  08c0 a101          	cp	a,#1
5412  08c2 2703          	jreq	L453
5413  08c4 cc17e4        	jp	L5762
5414  08c7               L453:
5415                     ; 752 		int2indI_slkuf(time_year,1, 2, 0, 1, 0);
5417  08c7 4b00          	push	#0
5418  08c9 4b01          	push	#1
5419  08cb 4b00          	push	#0
5420  08cd 4b02          	push	#2
5421  08cf 4b01          	push	#1
5422  08d1 b60c          	ld	a,_time_year
5423  08d3 5f            	clrw	x
5424  08d4 97            	ld	xl,a
5425  08d5 cd0000        	call	_int2indI_slkuf
5427  08d8 5b05          	addw	sp,#5
5428                     ; 753 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 0);		
5430  08da 4b00          	push	#0
5431  08dc 4b01          	push	#1
5432  08de 4b00          	push	#0
5433  08e0 4b02          	push	#2
5434  08e2 4b00          	push	#0
5435  08e4 b60e          	ld	a,_time_day_of_week
5436  08e6 5f            	clrw	x
5437  08e7 97            	ld	xl,a
5438  08e8 cd0000        	call	_int2indII_slkuf
5440  08eb 5b05          	addw	sp,#5
5441  08ed ace417e4      	jpf	L5762
5442  08f1               L7762:
5443                     ; 757 else if(ind==iSet)
5445  08f1 b661          	ld	a,_a_ind
5446  08f3 a101          	cp	a,#1
5447  08f5 2703          	jreq	L653
5448  08f7 cc0a48        	jp	L1172
5449  08fa               L653:
5450                     ; 759 	int2indI_slkuf(sub_ind+1,1, 2, 0, 1, 1);
5452  08fa 4b01          	push	#1
5453  08fc 4b01          	push	#1
5454  08fe 4b00          	push	#0
5455  0900 4b02          	push	#2
5456  0902 4b01          	push	#1
5457  0904 5f            	clrw	x
5458  0905 b662          	ld	a,_a_ind+1
5459  0907 2a01          	jrpl	L66
5460  0909 53            	cplw	x
5461  090a               L66:
5462  090a 97            	ld	xl,a
5463  090b 5c            	incw	x
5464  090c cd0000        	call	_int2indI_slkuf
5466  090f 5b05          	addw	sp,#5
5467                     ; 760 	ind_outB[3]=0b10010001;	
5469  0911 35910078      	mov	_ind_outB+3,#145
5470                     ; 762 	if(sub_ind==0)
5472  0915 3d62          	tnz	_a_ind+1
5473  0917 261b          	jrne	L3172
5474                     ; 764 		int2indII_slkuf(MODE_EE,0, 2, 0, 1, 0);
5476  0919 4b00          	push	#0
5477  091b 4b01          	push	#1
5478  091d 4b00          	push	#0
5479  091f 4b02          	push	#2
5480  0921 4b00          	push	#0
5481  0923 5f            	clrw	x
5482  0924 c64046        	ld	a,_MODE_EE
5483  0927 2a01          	jrpl	L07
5484  0929 53            	cplw	x
5485  092a               L07:
5486  092a 97            	ld	xl,a
5487  092b cd0000        	call	_int2indII_slkuf
5489  092e 5b05          	addw	sp,#5
5491  0930 ace417e4      	jpf	L5762
5492  0934               L3172:
5493                     ; 766 	else if(sub_ind==1)
5495  0934 b662          	ld	a,_a_ind+1
5496  0936 a101          	cp	a,#1
5497  0938 261b          	jrne	L7172
5498                     ; 768 		int2indII_slkuf(NECC_TEMPER_WATER_EE,0, 2, 0, 1, 0);
5500  093a 4b00          	push	#0
5501  093c 4b01          	push	#1
5502  093e 4b00          	push	#0
5503  0940 4b02          	push	#2
5504  0942 4b00          	push	#0
5505  0944 5f            	clrw	x
5506  0945 c64045        	ld	a,_NECC_TEMPER_WATER_EE
5507  0948 2a01          	jrpl	L27
5508  094a 53            	cplw	x
5509  094b               L27:
5510  094b 97            	ld	xl,a
5511  094c cd0000        	call	_int2indII_slkuf
5513  094f 5b05          	addw	sp,#5
5515  0951 ace417e4      	jpf	L5762
5516  0955               L7172:
5517                     ; 770 	else if(sub_ind==2)
5519  0955 b662          	ld	a,_a_ind+1
5520  0957 a102          	cp	a,#2
5521  0959 261b          	jrne	L3272
5522                     ; 772 		int2indII_slkuf(NECC_TEMPER_AIR_EE,0, 2, 0, 1, 0);
5524  095b 4b00          	push	#0
5525  095d 4b01          	push	#1
5526  095f 4b00          	push	#0
5527  0961 4b02          	push	#2
5528  0963 4b00          	push	#0
5529  0965 5f            	clrw	x
5530  0966 c64044        	ld	a,_NECC_TEMPER_AIR_EE
5531  0969 2a01          	jrpl	L47
5532  096b 53            	cplw	x
5533  096c               L47:
5534  096c 97            	ld	xl,a
5535  096d cd0000        	call	_int2indII_slkuf
5537  0970 5b05          	addw	sp,#5
5539  0972 ace417e4      	jpf	L5762
5540  0976               L3272:
5541                     ; 774 	else if(sub_ind==3)
5543  0976 b662          	ld	a,_a_ind+1
5544  0978 a103          	cp	a,#3
5545  097a 261b          	jrne	L7272
5546                     ; 776 		int2indII_slkuf(MAX_POWER_EE,0, 2, 0, 1, 0);
5548  097c 4b00          	push	#0
5549  097e 4b01          	push	#1
5550  0980 4b00          	push	#0
5551  0982 4b02          	push	#2
5552  0984 4b00          	push	#0
5553  0986 5f            	clrw	x
5554  0987 c64047        	ld	a,_MAX_POWER_EE
5555  098a 2a01          	jrpl	L67
5556  098c 53            	cplw	x
5557  098d               L67:
5558  098d 97            	ld	xl,a
5559  098e cd0000        	call	_int2indII_slkuf
5561  0991 5b05          	addw	sp,#5
5563  0993 ace417e4      	jpf	L5762
5564  0997               L7272:
5565                     ; 778 	else if(sub_ind==4)
5567  0997 b662          	ld	a,_a_ind+1
5568  0999 a104          	cp	a,#4
5569  099b 2617          	jrne	L3372
5570                     ; 780 		int2indII_slkuf(time_year,0, 2, 0, 1, 0);
5572  099d 4b00          	push	#0
5573  099f 4b01          	push	#1
5574  09a1 4b00          	push	#0
5575  09a3 4b02          	push	#2
5576  09a5 4b00          	push	#0
5577  09a7 b60c          	ld	a,_time_year
5578  09a9 5f            	clrw	x
5579  09aa 97            	ld	xl,a
5580  09ab cd0000        	call	_int2indII_slkuf
5582  09ae 5b05          	addw	sp,#5
5584  09b0 ace417e4      	jpf	L5762
5585  09b4               L3372:
5586                     ; 782 	else if(sub_ind==5)
5588  09b4 b662          	ld	a,_a_ind+1
5589  09b6 a105          	cp	a,#5
5590  09b8 2617          	jrne	L7372
5591                     ; 784 		int2indII_slkuf(time_month,0, 2, 0, 1, 0);
5593  09ba 4b00          	push	#0
5594  09bc 4b01          	push	#1
5595  09be 4b00          	push	#0
5596  09c0 4b02          	push	#2
5597  09c2 4b00          	push	#0
5598  09c4 b60d          	ld	a,_time_month
5599  09c6 5f            	clrw	x
5600  09c7 97            	ld	xl,a
5601  09c8 cd0000        	call	_int2indII_slkuf
5603  09cb 5b05          	addw	sp,#5
5605  09cd ace417e4      	jpf	L5762
5606  09d1               L7372:
5607                     ; 786 	else if(sub_ind==6)
5609  09d1 b662          	ld	a,_a_ind+1
5610  09d3 a106          	cp	a,#6
5611  09d5 2617          	jrne	L3472
5612                     ; 788 		int2indII_slkuf(time_date,0, 2, 0, 1, 0);
5614  09d7 4b00          	push	#0
5615  09d9 4b01          	push	#1
5616  09db 4b00          	push	#0
5617  09dd 4b02          	push	#2
5618  09df 4b00          	push	#0
5619  09e1 b603          	ld	a,_time_date
5620  09e3 5f            	clrw	x
5621  09e4 97            	ld	xl,a
5622  09e5 cd0000        	call	_int2indII_slkuf
5624  09e8 5b05          	addw	sp,#5
5626  09ea ace417e4      	jpf	L5762
5627  09ee               L3472:
5628                     ; 791 	else if(sub_ind==7)
5630  09ee b662          	ld	a,_a_ind+1
5631  09f0 a107          	cp	a,#7
5632  09f2 2617          	jrne	L7472
5633                     ; 793 		int2indII_slkuf(time_hour,0, 2, 0, 1, 0);
5635  09f4 4b00          	push	#0
5636  09f6 4b01          	push	#1
5637  09f8 4b00          	push	#0
5638  09fa 4b02          	push	#2
5639  09fc 4b00          	push	#0
5640  09fe b60f          	ld	a,_time_hour
5641  0a00 5f            	clrw	x
5642  0a01 97            	ld	xl,a
5643  0a02 cd0000        	call	_int2indII_slkuf
5645  0a05 5b05          	addw	sp,#5
5647  0a07 ace417e4      	jpf	L5762
5648  0a0b               L7472:
5649                     ; 795 	else if(sub_ind==8)
5651  0a0b b662          	ld	a,_a_ind+1
5652  0a0d a108          	cp	a,#8
5653  0a0f 2617          	jrne	L3572
5654                     ; 797 		int2indII_slkuf(time_min,0, 2, 0, 1, 0);
5656  0a11 4b00          	push	#0
5657  0a13 4b01          	push	#1
5658  0a15 4b00          	push	#0
5659  0a17 4b02          	push	#2
5660  0a19 4b00          	push	#0
5661  0a1b b610          	ld	a,_time_min
5662  0a1d 5f            	clrw	x
5663  0a1e 97            	ld	xl,a
5664  0a1f cd0000        	call	_int2indII_slkuf
5666  0a22 5b05          	addw	sp,#5
5668  0a24 ace417e4      	jpf	L5762
5669  0a28               L3572:
5670                     ; 799 	else if(sub_ind==9)
5672  0a28 b662          	ld	a,_a_ind+1
5673  0a2a a109          	cp	a,#9
5674  0a2c 2703          	jreq	L063
5675  0a2e cc17e4        	jp	L5762
5676  0a31               L063:
5677                     ; 801 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 0);
5679  0a31 4b00          	push	#0
5680  0a33 4b01          	push	#1
5681  0a35 4b00          	push	#0
5682  0a37 4b02          	push	#2
5683  0a39 4b00          	push	#0
5684  0a3b b60e          	ld	a,_time_day_of_week
5685  0a3d 5f            	clrw	x
5686  0a3e 97            	ld	xl,a
5687  0a3f cd0000        	call	_int2indII_slkuf
5689  0a42 5b05          	addw	sp,#5
5690  0a44 ace417e4      	jpf	L5762
5691  0a48               L1172:
5692                     ; 805 else if(ind==iSet_)
5694  0a48 b661          	ld	a,_a_ind
5695  0a4a a102          	cp	a,#2
5696  0a4c 2703          	jreq	L263
5697  0a4e cc0b9f        	jp	L3672
5698  0a51               L263:
5699                     ; 807 	int2indI_slkuf(sub_ind+1,1, 2, 0, 1, 0);
5701  0a51 4b00          	push	#0
5702  0a53 4b01          	push	#1
5703  0a55 4b00          	push	#0
5704  0a57 4b02          	push	#2
5705  0a59 4b01          	push	#1
5706  0a5b 5f            	clrw	x
5707  0a5c b662          	ld	a,_a_ind+1
5708  0a5e 2a01          	jrpl	L001
5709  0a60 53            	cplw	x
5710  0a61               L001:
5711  0a61 97            	ld	xl,a
5712  0a62 5c            	incw	x
5713  0a63 cd0000        	call	_int2indI_slkuf
5715  0a66 5b05          	addw	sp,#5
5716                     ; 808 	ind_outB[3]=0b10010001;	
5718  0a68 35910078      	mov	_ind_outB+3,#145
5719                     ; 810 	if(sub_ind==0)
5721  0a6c 3d62          	tnz	_a_ind+1
5722  0a6e 261b          	jrne	L5672
5723                     ; 812 		int2indII_slkuf(MODE_EE,0, 2, 0, 1, 1);
5725  0a70 4b01          	push	#1
5726  0a72 4b01          	push	#1
5727  0a74 4b00          	push	#0
5728  0a76 4b02          	push	#2
5729  0a78 4b00          	push	#0
5730  0a7a 5f            	clrw	x
5731  0a7b c64046        	ld	a,_MODE_EE
5732  0a7e 2a01          	jrpl	L201
5733  0a80 53            	cplw	x
5734  0a81               L201:
5735  0a81 97            	ld	xl,a
5736  0a82 cd0000        	call	_int2indII_slkuf
5738  0a85 5b05          	addw	sp,#5
5740  0a87 ace417e4      	jpf	L5762
5741  0a8b               L5672:
5742                     ; 814 	else if(sub_ind==1)
5744  0a8b b662          	ld	a,_a_ind+1
5745  0a8d a101          	cp	a,#1
5746  0a8f 261b          	jrne	L1772
5747                     ; 816 		int2indII_slkuf(NECC_TEMPER_WATER_EE,0, 2, 0, 1, 1);
5749  0a91 4b01          	push	#1
5750  0a93 4b01          	push	#1
5751  0a95 4b00          	push	#0
5752  0a97 4b02          	push	#2
5753  0a99 4b00          	push	#0
5754  0a9b 5f            	clrw	x
5755  0a9c c64045        	ld	a,_NECC_TEMPER_WATER_EE
5756  0a9f 2a01          	jrpl	L401
5757  0aa1 53            	cplw	x
5758  0aa2               L401:
5759  0aa2 97            	ld	xl,a
5760  0aa3 cd0000        	call	_int2indII_slkuf
5762  0aa6 5b05          	addw	sp,#5
5764  0aa8 ace417e4      	jpf	L5762
5765  0aac               L1772:
5766                     ; 818 	else if(sub_ind==2)
5768  0aac b662          	ld	a,_a_ind+1
5769  0aae a102          	cp	a,#2
5770  0ab0 261b          	jrne	L5772
5771                     ; 820 		int2indII_slkuf(NECC_TEMPER_AIR_EE,0, 2, 0, 1, 1);
5773  0ab2 4b01          	push	#1
5774  0ab4 4b01          	push	#1
5775  0ab6 4b00          	push	#0
5776  0ab8 4b02          	push	#2
5777  0aba 4b00          	push	#0
5778  0abc 5f            	clrw	x
5779  0abd c64044        	ld	a,_NECC_TEMPER_AIR_EE
5780  0ac0 2a01          	jrpl	L601
5781  0ac2 53            	cplw	x
5782  0ac3               L601:
5783  0ac3 97            	ld	xl,a
5784  0ac4 cd0000        	call	_int2indII_slkuf
5786  0ac7 5b05          	addw	sp,#5
5788  0ac9 ace417e4      	jpf	L5762
5789  0acd               L5772:
5790                     ; 822 	else if(sub_ind==3)
5792  0acd b662          	ld	a,_a_ind+1
5793  0acf a103          	cp	a,#3
5794  0ad1 261b          	jrne	L1003
5795                     ; 824 		int2indII_slkuf(MAX_POWER_EE,0, 2, 0, 1, 1);
5797  0ad3 4b01          	push	#1
5798  0ad5 4b01          	push	#1
5799  0ad7 4b00          	push	#0
5800  0ad9 4b02          	push	#2
5801  0adb 4b00          	push	#0
5802  0add 5f            	clrw	x
5803  0ade c64047        	ld	a,_MAX_POWER_EE
5804  0ae1 2a01          	jrpl	L011
5805  0ae3 53            	cplw	x
5806  0ae4               L011:
5807  0ae4 97            	ld	xl,a
5808  0ae5 cd0000        	call	_int2indII_slkuf
5810  0ae8 5b05          	addw	sp,#5
5812  0aea ace417e4      	jpf	L5762
5813  0aee               L1003:
5814                     ; 826 	else if(sub_ind==4)
5816  0aee b662          	ld	a,_a_ind+1
5817  0af0 a104          	cp	a,#4
5818  0af2 2617          	jrne	L5003
5819                     ; 828 		int2indII_slkuf(time_year,0, 2, 0, 1, 1);
5821  0af4 4b01          	push	#1
5822  0af6 4b01          	push	#1
5823  0af8 4b00          	push	#0
5824  0afa 4b02          	push	#2
5825  0afc 4b00          	push	#0
5826  0afe b60c          	ld	a,_time_year
5827  0b00 5f            	clrw	x
5828  0b01 97            	ld	xl,a
5829  0b02 cd0000        	call	_int2indII_slkuf
5831  0b05 5b05          	addw	sp,#5
5833  0b07 ace417e4      	jpf	L5762
5834  0b0b               L5003:
5835                     ; 830 	else if(sub_ind==5)
5837  0b0b b662          	ld	a,_a_ind+1
5838  0b0d a105          	cp	a,#5
5839  0b0f 2617          	jrne	L1103
5840                     ; 832 		int2indII_slkuf(time_month,0, 2, 0, 1, 1);
5842  0b11 4b01          	push	#1
5843  0b13 4b01          	push	#1
5844  0b15 4b00          	push	#0
5845  0b17 4b02          	push	#2
5846  0b19 4b00          	push	#0
5847  0b1b b60d          	ld	a,_time_month
5848  0b1d 5f            	clrw	x
5849  0b1e 97            	ld	xl,a
5850  0b1f cd0000        	call	_int2indII_slkuf
5852  0b22 5b05          	addw	sp,#5
5854  0b24 ace417e4      	jpf	L5762
5855  0b28               L1103:
5856                     ; 834 	else if(sub_ind==6)
5858  0b28 b662          	ld	a,_a_ind+1
5859  0b2a a106          	cp	a,#6
5860  0b2c 2617          	jrne	L5103
5861                     ; 836 		int2indII_slkuf(time_date,0, 2, 0, 1, 1);
5863  0b2e 4b01          	push	#1
5864  0b30 4b01          	push	#1
5865  0b32 4b00          	push	#0
5866  0b34 4b02          	push	#2
5867  0b36 4b00          	push	#0
5868  0b38 b603          	ld	a,_time_date
5869  0b3a 5f            	clrw	x
5870  0b3b 97            	ld	xl,a
5871  0b3c cd0000        	call	_int2indII_slkuf
5873  0b3f 5b05          	addw	sp,#5
5875  0b41 ace417e4      	jpf	L5762
5876  0b45               L5103:
5877                     ; 839 	else if(sub_ind==7)
5879  0b45 b662          	ld	a,_a_ind+1
5880  0b47 a107          	cp	a,#7
5881  0b49 2617          	jrne	L1203
5882                     ; 841 		int2indII_slkuf(time_hour,0, 2, 0, 1, 1);
5884  0b4b 4b01          	push	#1
5885  0b4d 4b01          	push	#1
5886  0b4f 4b00          	push	#0
5887  0b51 4b02          	push	#2
5888  0b53 4b00          	push	#0
5889  0b55 b60f          	ld	a,_time_hour
5890  0b57 5f            	clrw	x
5891  0b58 97            	ld	xl,a
5892  0b59 cd0000        	call	_int2indII_slkuf
5894  0b5c 5b05          	addw	sp,#5
5896  0b5e ace417e4      	jpf	L5762
5897  0b62               L1203:
5898                     ; 843 	else if(sub_ind==8)
5900  0b62 b662          	ld	a,_a_ind+1
5901  0b64 a108          	cp	a,#8
5902  0b66 2617          	jrne	L5203
5903                     ; 845 		int2indII_slkuf(time_min,0, 2, 0, 1, 1);
5905  0b68 4b01          	push	#1
5906  0b6a 4b01          	push	#1
5907  0b6c 4b00          	push	#0
5908  0b6e 4b02          	push	#2
5909  0b70 4b00          	push	#0
5910  0b72 b610          	ld	a,_time_min
5911  0b74 5f            	clrw	x
5912  0b75 97            	ld	xl,a
5913  0b76 cd0000        	call	_int2indII_slkuf
5915  0b79 5b05          	addw	sp,#5
5917  0b7b ace417e4      	jpf	L5762
5918  0b7f               L5203:
5919                     ; 847 	else if(sub_ind==9)
5921  0b7f b662          	ld	a,_a_ind+1
5922  0b81 a109          	cp	a,#9
5923  0b83 2703          	jreq	L463
5924  0b85 cc17e4        	jp	L5762
5925  0b88               L463:
5926                     ; 849 		int2indII_slkuf(time_day_of_week,0, 2, 0, 1, 1);
5928  0b88 4b01          	push	#1
5929  0b8a 4b01          	push	#1
5930  0b8c 4b00          	push	#0
5931  0b8e 4b02          	push	#2
5932  0b90 4b00          	push	#0
5933  0b92 b60e          	ld	a,_time_day_of_week
5934  0b94 5f            	clrw	x
5935  0b95 97            	ld	xl,a
5936  0b96 cd0000        	call	_int2indII_slkuf
5938  0b99 5b05          	addw	sp,#5
5939  0b9b ace417e4      	jpf	L5762
5940  0b9f               L3672:
5941                     ; 853 else if(ind==iSetTable)
5943  0b9f b661          	ld	a,_a_ind
5944  0ba1 a105          	cp	a,#5
5945  0ba3 2703cc0c32    	jrne	L5303
5946                     ; 855 	ind_outB[3]=0b11001110;
5948  0ba8 35ce0078      	mov	_ind_outB+3,#206
5949                     ; 856 	int2indI_slkuf(((sub_ind/5)+1)*10 + ((sub_ind)%5)+1,1, 2, 1, 0, 1);
5951  0bac 4b01          	push	#1
5952  0bae 4b00          	push	#0
5953  0bb0 4b01          	push	#1
5954  0bb2 4b02          	push	#2
5955  0bb4 4b01          	push	#1
5956  0bb6 5f            	clrw	x
5957  0bb7 b662          	ld	a,_a_ind+1
5958  0bb9 2a01          	jrpl	L211
5959  0bbb 53            	cplw	x
5960  0bbc               L211:
5961  0bbc 97            	ld	xl,a
5962  0bbd a605          	ld	a,#5
5963  0bbf cd0000        	call	c_smodx
5965  0bc2 1f06          	ldw	(OFST+4,sp),x
5966  0bc4 5f            	clrw	x
5967  0bc5 b662          	ld	a,_a_ind+1
5968  0bc7 2a01          	jrpl	L411
5969  0bc9 53            	cplw	x
5970  0bca               L411:
5971  0bca 97            	ld	xl,a
5972  0bcb a605          	ld	a,#5
5973  0bcd cd0000        	call	c_sdivx
5975  0bd0 90ae000a      	ldw	y,#10
5976  0bd4 cd0000        	call	c_imul
5978  0bd7 72fb06        	addw	x,(OFST+4,sp)
5979  0bda 1c000b        	addw	x,#11
5980  0bdd cd0000        	call	_int2indI_slkuf
5982  0be0 5b05          	addw	sp,#5
5983                     ; 858 	if(sub_ind1==0) 
5985  0be2 3d63          	tnz	_a_ind+2
5986  0be4 2608          	jrne	L7303
5987                     ; 862 		ind_outG[2]&=0b11111110;
5989  0be6 72110018      	bres	_ind_outG+2,#0
5991  0bea ace417e4      	jpf	L5762
5992  0bee               L7303:
5993                     ; 866 		int2indII_slkuf(TABLE_TEMPER_EE[sub_ind/5][sub_ind%5],1, 2, 0, 1, 0);
5995  0bee 4b00          	push	#0
5996  0bf0 4b01          	push	#1
5997  0bf2 4b00          	push	#0
5998  0bf4 4b02          	push	#2
5999  0bf6 4b01          	push	#1
6000  0bf8 5f            	clrw	x
6001  0bf9 b662          	ld	a,_a_ind+1
6002  0bfb 2a01          	jrpl	L611
6003  0bfd 53            	cplw	x
6004  0bfe               L611:
6005  0bfe 97            	ld	xl,a
6006  0bff a605          	ld	a,#5
6007  0c01 cd0000        	call	c_smodx
6009  0c04 1f06          	ldw	(OFST+4,sp),x
6010  0c06 5f            	clrw	x
6011  0c07 b662          	ld	a,_a_ind+1
6012  0c09 2a01          	jrpl	L021
6013  0c0b 53            	cplw	x
6014  0c0c               L021:
6015  0c0c 97            	ld	xl,a
6016  0c0d a605          	ld	a,#5
6017  0c0f cd0000        	call	c_sdivx
6019  0c12 90ae0005      	ldw	y,#5
6020  0c16 cd0000        	call	c_imul
6022  0c19 72fb06        	addw	x,(OFST+4,sp)
6023  0c1c d64048        	ld	a,(_TABLE_TEMPER_EE,x)
6024  0c1f 5f            	clrw	x
6025  0c20 4d            	tnz	a
6026  0c21 2a01          	jrpl	L221
6027  0c23 53            	cplw	x
6028  0c24               L221:
6029  0c24 97            	ld	xl,a
6030  0c25 cd0000        	call	_int2indII_slkuf
6032  0c28 5b05          	addw	sp,#5
6033                     ; 867 		ind_outC[0]=0b00111000;
6035  0c2a 3538000a      	mov	_ind_outC,#56
6036  0c2e ace417e4      	jpf	L5762
6037  0c32               L5303:
6038                     ; 872 else if(ind==iSetTable_)
6040  0c32 b661          	ld	a,_a_ind
6041  0c34 a106          	cp	a,#6
6042  0c36 2703          	jreq	L663
6043  0c38 cc0cd1        	jp	L5403
6044  0c3b               L663:
6045                     ; 874 	ind_outB[3]=0b11001110;
6047  0c3b 35ce0078      	mov	_ind_outB+3,#206
6048                     ; 875 	int2indI_slkuf(((sub_ind/5)+1)*10 + ((sub_ind)%5)+1,1, 2, 1, 0, 0);
6050  0c3f 4b00          	push	#0
6051  0c41 4b00          	push	#0
6052  0c43 4b01          	push	#1
6053  0c45 4b02          	push	#2
6054  0c47 4b01          	push	#1
6055  0c49 5f            	clrw	x
6056  0c4a b662          	ld	a,_a_ind+1
6057  0c4c 2a01          	jrpl	L421
6058  0c4e 53            	cplw	x
6059  0c4f               L421:
6060  0c4f 97            	ld	xl,a
6061  0c50 a605          	ld	a,#5
6062  0c52 cd0000        	call	c_smodx
6064  0c55 1f06          	ldw	(OFST+4,sp),x
6065  0c57 5f            	clrw	x
6066  0c58 b662          	ld	a,_a_ind+1
6067  0c5a 2a01          	jrpl	L621
6068  0c5c 53            	cplw	x
6069  0c5d               L621:
6070  0c5d 97            	ld	xl,a
6071  0c5e a605          	ld	a,#5
6072  0c60 cd0000        	call	c_sdivx
6074  0c63 90ae000a      	ldw	y,#10
6075  0c67 cd0000        	call	c_imul
6077  0c6a 72fb06        	addw	x,(OFST+4,sp)
6078  0c6d 1c000b        	addw	x,#11
6079  0c70 cd0000        	call	_int2indI_slkuf
6081  0c73 5b05          	addw	sp,#5
6082                     ; 877 	if(sub_ind1==0) 
6084  0c75 3d63          	tnz	_a_ind+2
6085  0c77 2614          	jrne	L7403
6086                     ; 881 		if(!bFL2)	ind_outG[2]&=0b11111110;
6088  0c79 3d27          	tnz	_bFL2
6089  0c7b 2608          	jrne	L1503
6092  0c7d 72110018      	bres	_ind_outG+2,#0
6094  0c81 ace417e4      	jpf	L5762
6095  0c85               L1503:
6096                     ; 882 		else 		ind_outG[2]|=0b00000001;
6098  0c85 72100018      	bset	_ind_outG+2,#0
6099  0c89 ace417e4      	jpf	L5762
6100  0c8d               L7403:
6101                     ; 886 		int2indII_slkuf(TABLE_TEMPER_EE[sub_ind/5][sub_ind%5],1, 2, 0, 1, 1);
6103  0c8d 4b01          	push	#1
6104  0c8f 4b01          	push	#1
6105  0c91 4b00          	push	#0
6106  0c93 4b02          	push	#2
6107  0c95 4b01          	push	#1
6108  0c97 5f            	clrw	x
6109  0c98 b662          	ld	a,_a_ind+1
6110  0c9a 2a01          	jrpl	L031
6111  0c9c 53            	cplw	x
6112  0c9d               L031:
6113  0c9d 97            	ld	xl,a
6114  0c9e a605          	ld	a,#5
6115  0ca0 cd0000        	call	c_smodx
6117  0ca3 1f06          	ldw	(OFST+4,sp),x
6118  0ca5 5f            	clrw	x
6119  0ca6 b662          	ld	a,_a_ind+1
6120  0ca8 2a01          	jrpl	L231
6121  0caa 53            	cplw	x
6122  0cab               L231:
6123  0cab 97            	ld	xl,a
6124  0cac a605          	ld	a,#5
6125  0cae cd0000        	call	c_sdivx
6127  0cb1 90ae0005      	ldw	y,#5
6128  0cb5 cd0000        	call	c_imul
6130  0cb8 72fb06        	addw	x,(OFST+4,sp)
6131  0cbb d64048        	ld	a,(_TABLE_TEMPER_EE,x)
6132  0cbe 5f            	clrw	x
6133  0cbf 4d            	tnz	a
6134  0cc0 2a01          	jrpl	L431
6135  0cc2 53            	cplw	x
6136  0cc3               L431:
6137  0cc3 97            	ld	xl,a
6138  0cc4 cd0000        	call	_int2indII_slkuf
6140  0cc7 5b05          	addw	sp,#5
6141                     ; 887 		ind_outC[0]=0b00111000;
6143  0cc9 3538000a      	mov	_ind_outC,#56
6144  0ccd ace417e4      	jpf	L5762
6145  0cd1               L5403:
6146                     ; 892 else if(ind==iDeb)
6148  0cd1 b661          	ld	a,_a_ind
6149  0cd3 a107          	cp	a,#7
6150  0cd5 2703          	jreq	L073
6151  0cd7 cc11fc        	jp	L1603
6152  0cda               L073:
6153                     ; 894 	led_mask_off(0x00);
6155  0cda 4f            	clr	a
6156  0cdb cd0000        	call	_led_mask_off
6158                     ; 895 	led_on(sub_ind+1);
6160  0cde b662          	ld	a,_a_ind+1
6161  0ce0 4c            	inc	a
6162  0ce1 cd0000        	call	_led_on
6164                     ; 897 	if(sub_ind==0)
6166  0ce4 3d62          	tnz	_a_ind+1
6167  0ce6 2630          	jrne	L3603
6168                     ; 899 		int2indI_slkuf(targetTemper,1, 2, 0, 0, 0);
6170  0ce8 4b00          	push	#0
6171  0cea 4b00          	push	#0
6172  0cec 4b00          	push	#0
6173  0cee 4b02          	push	#2
6174  0cf0 4b01          	push	#1
6175  0cf2 5f            	clrw	x
6176  0cf3 b61c          	ld	a,_targetTemper
6177  0cf5 2a01          	jrpl	L631
6178  0cf7 53            	cplw	x
6179  0cf8               L631:
6180  0cf8 97            	ld	xl,a
6181  0cf9 cd0000        	call	_int2indI_slkuf
6183  0cfc 5b05          	addw	sp,#5
6184                     ; 900 		int2indII_slkuf(aktualTemper,0, 2, 0, 0, 0);
6186  0cfe 4b00          	push	#0
6187  0d00 4b00          	push	#0
6188  0d02 4b00          	push	#0
6189  0d04 4b02          	push	#2
6190  0d06 4b00          	push	#0
6191  0d08 5f            	clrw	x
6192  0d09 b61d          	ld	a,_aktualTemper
6193  0d0b 2a01          	jrpl	L041
6194  0d0d 53            	cplw	x
6195  0d0e               L041:
6196  0d0e 97            	ld	xl,a
6197  0d0f cd0000        	call	_int2indII_slkuf
6199  0d12 5b05          	addw	sp,#5
6201  0d14 ace417e4      	jpf	L5762
6202  0d18               L3603:
6203                     ; 903 	else if(sub_ind==1)
6205  0d18 b662          	ld	a,_a_ind+1
6206  0d1a a101          	cp	a,#1
6207  0d1c 2630          	jrne	L7603
6208                     ; 905 		int2indI_slkuf(temperOfWater,1, 2, 0, 0, 0);
6210  0d1e 4b00          	push	#0
6211  0d20 4b00          	push	#0
6212  0d22 4b00          	push	#0
6213  0d24 4b02          	push	#2
6214  0d26 4b01          	push	#1
6215  0d28 5f            	clrw	x
6216  0d29 b61f          	ld	a,_temperOfWater
6217  0d2b 2a01          	jrpl	L241
6218  0d2d 53            	cplw	x
6219  0d2e               L241:
6220  0d2e 97            	ld	xl,a
6221  0d2f cd0000        	call	_int2indI_slkuf
6223  0d32 5b05          	addw	sp,#5
6224                     ; 906 		int2indII_slkuf(temperOfAir,0, 2, 0, 0, 0);
6226  0d34 4b00          	push	#0
6227  0d36 4b00          	push	#0
6228  0d38 4b00          	push	#0
6229  0d3a 4b02          	push	#2
6230  0d3c 4b00          	push	#0
6231  0d3e 5f            	clrw	x
6232  0d3f b61e          	ld	a,_temperOfAir
6233  0d41 2a01          	jrpl	L441
6234  0d43 53            	cplw	x
6235  0d44               L441:
6236  0d44 97            	ld	xl,a
6237  0d45 cd0000        	call	_int2indII_slkuf
6239  0d48 5b05          	addw	sp,#5
6241  0d4a ace417e4      	jpf	L5762
6242  0d4e               L7603:
6243                     ; 909 	else if(sub_ind==2)
6245  0d4e b662          	ld	a,_a_ind+1
6246  0d50 a102          	cp	a,#2
6247  0d52 2647          	jrne	L3703
6248                     ; 911 		int2indI_slkuf(MAX_POWER_EE,1, 2, 0, 0, 0);
6250  0d54 4b00          	push	#0
6251  0d56 4b00          	push	#0
6252  0d58 4b00          	push	#0
6253  0d5a 4b02          	push	#2
6254  0d5c 4b01          	push	#1
6255  0d5e 5f            	clrw	x
6256  0d5f c64047        	ld	a,_MAX_POWER_EE
6257  0d62 2a01          	jrpl	L641
6258  0d64 53            	cplw	x
6259  0d65               L641:
6260  0d65 97            	ld	xl,a
6261  0d66 cd0000        	call	_int2indI_slkuf
6263  0d69 5b05          	addw	sp,#5
6264                     ; 912 		int2indII_slkuf(powerNeccDelta,2, 2, 0, 0, 0);
6266  0d6b 4b00          	push	#0
6267  0d6d 4b00          	push	#0
6268  0d6f 4b00          	push	#0
6269  0d71 4b02          	push	#2
6270  0d73 4b02          	push	#2
6271  0d75 5f            	clrw	x
6272  0d76 b60b          	ld	a,_powerNeccDelta
6273  0d78 2a01          	jrpl	L051
6274  0d7a 53            	cplw	x
6275  0d7b               L051:
6276  0d7b 97            	ld	xl,a
6277  0d7c cd0000        	call	_int2indII_slkuf
6279  0d7f 5b05          	addw	sp,#5
6280                     ; 913 		int2indII_slkuf(powerNecc,0, 2, 0, 0, 0);
6282  0d81 4b00          	push	#0
6283  0d83 4b00          	push	#0
6284  0d85 4b00          	push	#0
6285  0d87 4b02          	push	#2
6286  0d89 4b00          	push	#0
6287  0d8b 5f            	clrw	x
6288  0d8c b625          	ld	a,_powerNecc
6289  0d8e 2a01          	jrpl	L251
6290  0d90 53            	cplw	x
6291  0d91               L251:
6292  0d91 97            	ld	xl,a
6293  0d92 cd0000        	call	_int2indII_slkuf
6295  0d95 5b05          	addw	sp,#5
6297  0d97 ace417e4      	jpf	L5762
6298  0d9b               L3703:
6299                     ; 915 	else if(sub_ind==3)
6301  0d9b b662          	ld	a,_a_ind+1
6302  0d9d a103          	cp	a,#3
6303  0d9f 267c          	jrne	L7703
6304                     ; 917 		int2indI_slkuf(aktualTemper,2, 2, 0, 0, 0);	
6306  0da1 4b00          	push	#0
6307  0da3 4b00          	push	#0
6308  0da5 4b00          	push	#0
6309  0da7 4b02          	push	#2
6310  0da9 4b02          	push	#2
6311  0dab 5f            	clrw	x
6312  0dac b61d          	ld	a,_aktualTemper
6313  0dae 2a01          	jrpl	L451
6314  0db0 53            	cplw	x
6315  0db1               L451:
6316  0db1 97            	ld	xl,a
6317  0db2 cd0000        	call	_int2indI_slkuf
6319  0db5 5b05          	addw	sp,#5
6320                     ; 918 		int2indI_slkuf(powerNecc,1, 1, 0, 0, 0);
6322  0db7 4b00          	push	#0
6323  0db9 4b00          	push	#0
6324  0dbb 4b00          	push	#0
6325  0dbd 4b01          	push	#1
6326  0dbf 4b01          	push	#1
6327  0dc1 5f            	clrw	x
6328  0dc2 b625          	ld	a,_powerNecc
6329  0dc4 2a01          	jrpl	L651
6330  0dc6 53            	cplw	x
6331  0dc7               L651:
6332  0dc7 97            	ld	xl,a
6333  0dc8 cd0000        	call	_int2indI_slkuf
6335  0dcb 5b05          	addw	sp,#5
6336                     ; 919 		int2indII_slkuf(out_stat[0],3, 1, 0, 0, 0);
6338  0dcd 4b00          	push	#0
6339  0dcf 4b00          	push	#0
6340  0dd1 4b00          	push	#0
6341  0dd3 4b01          	push	#1
6342  0dd5 4b03          	push	#3
6343  0dd7 b620          	ld	a,_out_stat
6344  0dd9 5f            	clrw	x
6345  0dda 97            	ld	xl,a
6346  0ddb cd0000        	call	_int2indII_slkuf
6348  0dde 5b05          	addw	sp,#5
6349                     ; 920 		int2indII_slkuf(out_stat[1],2, 1, 0, 0, 0);
6351  0de0 4b00          	push	#0
6352  0de2 4b00          	push	#0
6353  0de4 4b00          	push	#0
6354  0de6 4b01          	push	#1
6355  0de8 4b02          	push	#2
6356  0dea b621          	ld	a,_out_stat+1
6357  0dec 5f            	clrw	x
6358  0ded 97            	ld	xl,a
6359  0dee cd0000        	call	_int2indII_slkuf
6361  0df1 5b05          	addw	sp,#5
6362                     ; 921 		int2indII_slkuf(out_stat[2],1, 1, 0, 0, 0);
6364  0df3 4b00          	push	#0
6365  0df5 4b00          	push	#0
6366  0df7 4b00          	push	#0
6367  0df9 4b01          	push	#1
6368  0dfb 4b01          	push	#1
6369  0dfd b622          	ld	a,_out_stat+2
6370  0dff 5f            	clrw	x
6371  0e00 97            	ld	xl,a
6372  0e01 cd0000        	call	_int2indII_slkuf
6374  0e04 5b05          	addw	sp,#5
6375                     ; 922 		int2indII_slkuf(fiksRandom,0, 1, 0, 0, 0);
6377  0e06 4b00          	push	#0
6378  0e08 4b00          	push	#0
6379  0e0a 4b00          	push	#0
6380  0e0c 4b01          	push	#1
6381  0e0e 4b00          	push	#0
6382  0e10 b684          	ld	a,_fiksRandom
6383  0e12 5f            	clrw	x
6384  0e13 97            	ld	xl,a
6385  0e14 cd0000        	call	_int2indII_slkuf
6387  0e17 5b05          	addw	sp,#5
6389  0e19 ace417e4      	jpf	L5762
6390  0e1d               L7703:
6391                     ; 924 	else if(sub_ind==4)
6393  0e1d b662          	ld	a,_a_ind+1
6394  0e1f a104          	cp	a,#4
6395  0e21 2640          	jrne	L3013
6396                     ; 926 		int2indI_slkuf(temperRegToSheduler,1, 2, 0, 0, 0);	
6398  0e23 4b00          	push	#0
6399  0e25 4b00          	push	#0
6400  0e27 4b00          	push	#0
6401  0e29 4b02          	push	#2
6402  0e2b 4b01          	push	#1
6403  0e2d 5f            	clrw	x
6404  0e2e b604          	ld	a,_temperRegToSheduler
6405  0e30 2a01          	jrpl	L061
6406  0e32 53            	cplw	x
6407  0e33               L061:
6408  0e33 97            	ld	xl,a
6409  0e34 cd0000        	call	_int2indI_slkuf
6411  0e37 5b05          	addw	sp,#5
6412                     ; 928 		int2indII_slkuf(time_day_of_week,3, 1, 0, 0, 0);
6414  0e39 4b00          	push	#0
6415  0e3b 4b00          	push	#0
6416  0e3d 4b00          	push	#0
6417  0e3f 4b01          	push	#1
6418  0e41 4b03          	push	#3
6419  0e43 b60e          	ld	a,_time_day_of_week
6420  0e45 5f            	clrw	x
6421  0e46 97            	ld	xl,a
6422  0e47 cd0000        	call	_int2indII_slkuf
6424  0e4a 5b05          	addw	sp,#5
6425                     ; 931 		int2indII_slkuf(day_sheduler_time,0, 3, 0, 0, 0);
6427  0e4c 4b00          	push	#0
6428  0e4e 4b00          	push	#0
6429  0e50 4b00          	push	#0
6430  0e52 4b03          	push	#3
6431  0e54 4b00          	push	#0
6432  0e56 b602          	ld	a,_day_sheduler_time
6433  0e58 5f            	clrw	x
6434  0e59 97            	ld	xl,a
6435  0e5a cd0000        	call	_int2indII_slkuf
6437  0e5d 5b05          	addw	sp,#5
6439  0e5f ace417e4      	jpf	L5762
6440  0e63               L3013:
6441                     ; 934 	else if(sub_ind==5)
6443  0e63 b662          	ld	a,_a_ind+1
6444  0e65 a105          	cp	a,#5
6445  0e67 2638          	jrne	L7013
6446                     ; 936 		int2indI_slkuf(modemDrvPDUSMSSendStepCnt,1, 3, 0, 0, 0);	
6448  0e69 4b00          	push	#0
6449  0e6b 4b00          	push	#0
6450  0e6d 4b00          	push	#0
6451  0e6f 4b03          	push	#3
6452  0e71 4b01          	push	#1
6453  0e73 be00          	ldw	x,_modemDrvPDUSMSSendStepCnt
6454  0e75 cd0000        	call	_int2indI_slkuf
6456  0e78 5b05          	addw	sp,#5
6457                     ; 938 		int2indII_slkuf(modemDrvWatchDogCnt,0, 3, 0, 0, 0);
6459  0e7a 4b00          	push	#0
6460  0e7c 4b00          	push	#0
6461  0e7e 4b00          	push	#0
6462  0e80 4b03          	push	#3
6463  0e82 4b00          	push	#0
6464  0e84 be00          	ldw	x,_modemDrvWatchDogCnt
6465  0e86 cd0000        	call	_int2indII_slkuf
6467  0e89 5b05          	addw	sp,#5
6468                     ; 941 		int2indII_slkuf(4,3, 1, 0, 0, 1);
6470  0e8b 4b01          	push	#1
6471  0e8d 4b00          	push	#0
6472  0e8f 4b00          	push	#0
6473  0e91 4b01          	push	#1
6474  0e93 4b03          	push	#3
6475  0e95 ae0004        	ldw	x,#4
6476  0e98 cd0000        	call	_int2indII_slkuf
6478  0e9b 5b05          	addw	sp,#5
6480  0e9d ace417e4      	jpf	L5762
6481  0ea1               L7013:
6482                     ; 943 	else if(sub_ind==6)
6484  0ea1 b662          	ld	a,_a_ind+1
6485  0ea3 a106          	cp	a,#6
6486  0ea5 263b          	jrne	L3113
6487                     ; 945 		int2indI_slkuf(main_power_off_hndl_cnt,1, 3, 0, 0, 0);	
6489  0ea7 4b00          	push	#0
6490  0ea9 4b00          	push	#0
6491  0eab 4b00          	push	#0
6492  0ead 4b03          	push	#3
6493  0eaf 4b01          	push	#1
6494  0eb1 ce002e        	ldw	x,_main_power_off_hndl_cnt
6495  0eb4 cd0000        	call	_int2indI_slkuf
6497  0eb7 5b05          	addw	sp,#5
6498                     ; 947 		int2indII_slkuf(cbcSystemRequ,0, 1, 0, 0, 0);
6500  0eb9 4b00          	push	#0
6501  0ebb 4b00          	push	#0
6502  0ebd 4b00          	push	#0
6503  0ebf 4b01          	push	#1
6504  0ec1 4b00          	push	#0
6505  0ec3 c6002d        	ld	a,_cbcSystemRequ
6506  0ec6 5f            	clrw	x
6507  0ec7 97            	ld	xl,a
6508  0ec8 cd0000        	call	_int2indII_slkuf
6510  0ecb 5b05          	addw	sp,#5
6511                     ; 948 		int2indII_slkuf(modemDrvPowerDownStepCnt,2, 2, 0, 0, 0);
6513  0ecd 4b00          	push	#0
6514  0ecf 4b00          	push	#0
6515  0ed1 4b00          	push	#0
6516  0ed3 4b02          	push	#2
6517  0ed5 4b02          	push	#2
6518  0ed7 be00          	ldw	x,_modemDrvPowerDownStepCnt
6519  0ed9 cd0000        	call	_int2indII_slkuf
6521  0edc 5b05          	addw	sp,#5
6523  0ede ace417e4      	jpf	L5762
6524  0ee2               L3113:
6525                     ; 953 	else if(sub_ind==7)
6527  0ee2 b662          	ld	a,_a_ind+1
6528  0ee4 a107          	cp	a,#7
6529  0ee6 2628          	jrne	L7113
6530                     ; 955 		int2indI_slkuf(tx_counter1,1, 3, 0, 0, 0);	
6532  0ee8 4b00          	push	#0
6533  0eea 4b00          	push	#0
6534  0eec 4b00          	push	#0
6535  0eee 4b03          	push	#3
6536  0ef0 4b01          	push	#1
6537  0ef2 ce0000        	ldw	x,_tx_counter1
6538  0ef5 cd0000        	call	_int2indI_slkuf
6540  0ef8 5b05          	addw	sp,#5
6541                     ; 957 		int2indII_slkuf(tx_wr_index1,0, 3, 0, 0, 0);
6543  0efa 4b00          	push	#0
6544  0efc 4b00          	push	#0
6545  0efe 4b00          	push	#0
6546  0f00 4b03          	push	#3
6547  0f02 4b00          	push	#0
6548  0f04 ce0000        	ldw	x,_tx_wr_index1
6549  0f07 cd0000        	call	_int2indII_slkuf
6551  0f0a 5b05          	addw	sp,#5
6553  0f0c ace417e4      	jpf	L5762
6554  0f10               L7113:
6555                     ; 962 	else if(sub_ind==8)
6557  0f10 b662          	ld	a,_a_ind+1
6558  0f12 a108          	cp	a,#8
6559  0f14 2703          	jreq	L273
6560  0f16 cc10d2        	jp	L3213
6561  0f19               L273:
6562                     ; 968 		if(++ind_check_cnt1>=5)
6564  0f19 9c            	rvf
6565  0f1a ce0007        	ldw	x,_ind_check_cnt1
6566  0f1d 1c0001        	addw	x,#1
6567  0f20 cf0007        	ldw	_ind_check_cnt1,x
6568  0f23 a30005        	cpw	x,#5
6569  0f26 2f17          	jrslt	L5213
6570                     ; 970 			ind_check_cnt1=0;
6572  0f28 5f            	clrw	x
6573  0f29 cf0007        	ldw	_ind_check_cnt1,x
6574                     ; 971 			if(++ind_check_cnt>=64)ind_check_cnt=0;
6576  0f2c 9c            	rvf
6577  0f2d ce0009        	ldw	x,_ind_check_cnt
6578  0f30 1c0001        	addw	x,#1
6579  0f33 cf0009        	ldw	_ind_check_cnt,x
6580  0f36 a30040        	cpw	x,#64
6581  0f39 2f04          	jrslt	L5213
6584  0f3b 5f            	clrw	x
6585  0f3c cf0009        	ldw	_ind_check_cnt,x
6586  0f3f               L5213:
6587                     ; 973 		ind_outB[0]=0xff;
6589  0f3f 35ff0075      	mov	_ind_outB,#255
6590                     ; 974 		ind_outB[1]=0xff;
6592  0f43 35ff0076      	mov	_ind_outB+1,#255
6593                     ; 975 		ind_outB[2]=0xff;
6595  0f47 35ff0077      	mov	_ind_outB+2,#255
6596                     ; 976 		ind_outB[3]=0xff;
6598  0f4b 35ff0078      	mov	_ind_outB+3,#255
6599                     ; 977 		ind_outC[0]=0xff;
6601  0f4f 35ff000a      	mov	_ind_outC,#255
6602                     ; 978 		ind_outC[1]=0xff;
6604  0f53 35ff000b      	mov	_ind_outC+1,#255
6605                     ; 979 		ind_outC[2]=0xff;
6607  0f57 35ff000c      	mov	_ind_outC+2,#255
6608                     ; 980 		ind_outC[3]=0xff;
6610  0f5b 35ff000d      	mov	_ind_outC+3,#255
6611                     ; 981 		ind_outG[0]=0xff;
6613  0f5f 35ff0016      	mov	_ind_outG,#255
6614                     ; 982 		ind_outG[1]=0xff;
6616  0f63 35ff0017      	mov	_ind_outG+1,#255
6617                     ; 983 		ind_outG[2]=0xff;
6619  0f67 35ff0018      	mov	_ind_outG+2,#255
6620                     ; 984 		ind_outG[3]=0xff;
6622  0f6b 35ff0019      	mov	_ind_outG+3,#255
6623                     ; 986 		if(ind_check_cnt<=7)
6625  0f6f 9c            	rvf
6626  0f70 ce0009        	ldw	x,_ind_check_cnt
6627  0f73 a30008        	cpw	x,#8
6628  0f76 2e1a          	jrsge	L1313
6629                     ; 988 			ind_outB[3]&=(~(1<<ind_check_cnt));	
6631  0f78 5f            	clrw	x
6632  0f79 c6000a        	ld	a,_ind_check_cnt+1
6633  0f7c 2a01          	jrpl	L261
6634  0f7e 53            	cplw	x
6635  0f7f               L261:
6636  0f7f 97            	ld	xl,a
6637  0f80 a601          	ld	a,#1
6638  0f82 5d            	tnzw	x
6639  0f83 2704          	jreq	L461
6640  0f85               L661:
6641  0f85 48            	sll	a
6642  0f86 5a            	decw	x
6643  0f87 26fc          	jrne	L661
6644  0f89               L461:
6645  0f89 43            	cpl	a
6646  0f8a b478          	and	a,_ind_outB+3
6647  0f8c b778          	ld	_ind_outB+3,a
6649  0f8e ace417e4      	jpf	L5762
6650  0f92               L1313:
6651                     ; 990 		else if(ind_check_cnt<=15)
6653  0f92 9c            	rvf
6654  0f93 ce0009        	ldw	x,_ind_check_cnt
6655  0f96 a30010        	cpw	x,#16
6656  0f99 2e1d          	jrsge	L5313
6657                     ; 992 			ind_outB[2]&=(~(1<<(ind_check_cnt-8)));	
6659  0f9b c6000a        	ld	a,_ind_check_cnt+1
6660  0f9e a008          	sub	a,#8
6661  0fa0 5f            	clrw	x
6662  0fa1 4d            	tnz	a
6663  0fa2 2a01          	jrpl	L071
6664  0fa4 53            	cplw	x
6665  0fa5               L071:
6666  0fa5 97            	ld	xl,a
6667  0fa6 a601          	ld	a,#1
6668  0fa8 5d            	tnzw	x
6669  0fa9 2704          	jreq	L271
6670  0fab               L471:
6671  0fab 48            	sll	a
6672  0fac 5a            	decw	x
6673  0fad 26fc          	jrne	L471
6674  0faf               L271:
6675  0faf 43            	cpl	a
6676  0fb0 b477          	and	a,_ind_outB+2
6677  0fb2 b777          	ld	_ind_outB+2,a
6679  0fb4 ace417e4      	jpf	L5762
6680  0fb8               L5313:
6681                     ; 994 		else if(ind_check_cnt<=23)
6683  0fb8 9c            	rvf
6684  0fb9 ce0009        	ldw	x,_ind_check_cnt
6685  0fbc a30018        	cpw	x,#24
6686  0fbf 2e1d          	jrsge	L1413
6687                     ; 996 			ind_outB[1]&=(~(1<<(ind_check_cnt-16)));	
6689  0fc1 c6000a        	ld	a,_ind_check_cnt+1
6690  0fc4 a010          	sub	a,#16
6691  0fc6 5f            	clrw	x
6692  0fc7 4d            	tnz	a
6693  0fc8 2a01          	jrpl	L671
6694  0fca 53            	cplw	x
6695  0fcb               L671:
6696  0fcb 97            	ld	xl,a
6697  0fcc a601          	ld	a,#1
6698  0fce 5d            	tnzw	x
6699  0fcf 2704          	jreq	L002
6700  0fd1               L202:
6701  0fd1 48            	sll	a
6702  0fd2 5a            	decw	x
6703  0fd3 26fc          	jrne	L202
6704  0fd5               L002:
6705  0fd5 43            	cpl	a
6706  0fd6 b476          	and	a,_ind_outB+1
6707  0fd8 b776          	ld	_ind_outB+1,a
6709  0fda ace417e4      	jpf	L5762
6710  0fde               L1413:
6711                     ; 998 		else if(ind_check_cnt<=30)
6713  0fde 9c            	rvf
6714  0fdf ce0009        	ldw	x,_ind_check_cnt
6715  0fe2 a3001f        	cpw	x,#31
6716  0fe5 2e1d          	jrsge	L5413
6717                     ; 1000 			ind_outC[3]&=(~(1<<(ind_check_cnt-23)));	
6719  0fe7 c6000a        	ld	a,_ind_check_cnt+1
6720  0fea a017          	sub	a,#23
6721  0fec 5f            	clrw	x
6722  0fed 4d            	tnz	a
6723  0fee 2a01          	jrpl	L402
6724  0ff0 53            	cplw	x
6725  0ff1               L402:
6726  0ff1 97            	ld	xl,a
6727  0ff2 a601          	ld	a,#1
6728  0ff4 5d            	tnzw	x
6729  0ff5 2704          	jreq	L602
6730  0ff7               L012:
6731  0ff7 48            	sll	a
6732  0ff8 5a            	decw	x
6733  0ff9 26fc          	jrne	L012
6734  0ffb               L602:
6735  0ffb 43            	cpl	a
6736  0ffc b40d          	and	a,_ind_outC+3
6737  0ffe b70d          	ld	_ind_outC+3,a
6739  1000 ace417e4      	jpf	L5762
6740  1004               L5413:
6741                     ; 1002 		else if(ind_check_cnt==31)
6743  1004 ce0009        	ldw	x,_ind_check_cnt
6744  1007 a3001f        	cpw	x,#31
6745  100a 2608          	jrne	L1513
6746                     ; 1004 			ind_outG[3]&=0xfe;	
6748  100c 72110019      	bres	_ind_outG+3,#0
6750  1010 ace417e4      	jpf	L5762
6751  1014               L1513:
6752                     ; 1006 		else if(ind_check_cnt<=38)
6754  1014 9c            	rvf
6755  1015 ce0009        	ldw	x,_ind_check_cnt
6756  1018 a30027        	cpw	x,#39
6757  101b 2e1d          	jrsge	L5513
6758                     ; 1008 			ind_outC[2]&=(~(1<<(ind_check_cnt-31)));	
6760  101d c6000a        	ld	a,_ind_check_cnt+1
6761  1020 a01f          	sub	a,#31
6762  1022 5f            	clrw	x
6763  1023 4d            	tnz	a
6764  1024 2a01          	jrpl	L212
6765  1026 53            	cplw	x
6766  1027               L212:
6767  1027 97            	ld	xl,a
6768  1028 a601          	ld	a,#1
6769  102a 5d            	tnzw	x
6770  102b 2704          	jreq	L412
6771  102d               L612:
6772  102d 48            	sll	a
6773  102e 5a            	decw	x
6774  102f 26fc          	jrne	L612
6775  1031               L412:
6776  1031 43            	cpl	a
6777  1032 b40c          	and	a,_ind_outC+2
6778  1034 b70c          	ld	_ind_outC+2,a
6780  1036 ace417e4      	jpf	L5762
6781  103a               L5513:
6782                     ; 1010 		else if(ind_check_cnt==39)
6784  103a ce0009        	ldw	x,_ind_check_cnt
6785  103d a30027        	cpw	x,#39
6786  1040 2608          	jrne	L1613
6787                     ; 1012 			ind_outG[2]&=0xfe;	
6789  1042 72110018      	bres	_ind_outG+2,#0
6791  1046 ace417e4      	jpf	L5762
6792  104a               L1613:
6793                     ; 1014 		else if(ind_check_cnt<=46)
6795  104a 9c            	rvf
6796  104b ce0009        	ldw	x,_ind_check_cnt
6797  104e a3002f        	cpw	x,#47
6798  1051 2e1d          	jrsge	L5613
6799                     ; 1016 			ind_outC[1]&=(~(1<<(ind_check_cnt-39)));	
6801  1053 c6000a        	ld	a,_ind_check_cnt+1
6802  1056 a027          	sub	a,#39
6803  1058 5f            	clrw	x
6804  1059 4d            	tnz	a
6805  105a 2a01          	jrpl	L022
6806  105c 53            	cplw	x
6807  105d               L022:
6808  105d 97            	ld	xl,a
6809  105e a601          	ld	a,#1
6810  1060 5d            	tnzw	x
6811  1061 2704          	jreq	L222
6812  1063               L422:
6813  1063 48            	sll	a
6814  1064 5a            	decw	x
6815  1065 26fc          	jrne	L422
6816  1067               L222:
6817  1067 43            	cpl	a
6818  1068 b40b          	and	a,_ind_outC+1
6819  106a b70b          	ld	_ind_outC+1,a
6821  106c ace417e4      	jpf	L5762
6822  1070               L5613:
6823                     ; 1018 		else if(ind_check_cnt==47)
6825  1070 ce0009        	ldw	x,_ind_check_cnt
6826  1073 a3002f        	cpw	x,#47
6827  1076 2608          	jrne	L1713
6828                     ; 1020 			ind_outG[1]&=0xfe;	
6830  1078 72110017      	bres	_ind_outG+1,#0
6832  107c ace417e4      	jpf	L5762
6833  1080               L1713:
6834                     ; 1022 		else if(ind_check_cnt<=54)
6836  1080 9c            	rvf
6837  1081 ce0009        	ldw	x,_ind_check_cnt
6838  1084 a30037        	cpw	x,#55
6839  1087 2e1d          	jrsge	L5713
6840                     ; 1024 			ind_outC[0]&=(~(1<<(ind_check_cnt-47)));	
6842  1089 c6000a        	ld	a,_ind_check_cnt+1
6843  108c a02f          	sub	a,#47
6844  108e 5f            	clrw	x
6845  108f 4d            	tnz	a
6846  1090 2a01          	jrpl	L622
6847  1092 53            	cplw	x
6848  1093               L622:
6849  1093 97            	ld	xl,a
6850  1094 a601          	ld	a,#1
6851  1096 5d            	tnzw	x
6852  1097 2704          	jreq	L032
6853  1099               L232:
6854  1099 48            	sll	a
6855  109a 5a            	decw	x
6856  109b 26fc          	jrne	L232
6857  109d               L032:
6858  109d 43            	cpl	a
6859  109e b40a          	and	a,_ind_outC
6860  10a0 b70a          	ld	_ind_outC,a
6862  10a2 ace417e4      	jpf	L5762
6863  10a6               L5713:
6864                     ; 1026 		else if(ind_check_cnt==55)
6866  10a6 ce0009        	ldw	x,_ind_check_cnt
6867  10a9 a30037        	cpw	x,#55
6868  10ac 2608          	jrne	L1023
6869                     ; 1028 			ind_outG[0]&=0xfe;	
6871  10ae 72110016      	bres	_ind_outG,#0
6873  10b2 ace417e4      	jpf	L5762
6874  10b6               L1023:
6875                     ; 1030 		else if(ind_check_cnt<=64)
6877  10b6 9c            	rvf
6878  10b7 ce0009        	ldw	x,_ind_check_cnt
6879  10ba a30041        	cpw	x,#65
6880  10bd 2f03          	jrslt	L473
6881  10bf cc17e4        	jp	L5762
6882  10c2               L473:
6883                     ; 1032 			led_mask_off(0x00);
6885  10c2 4f            	clr	a
6886  10c3 cd0000        	call	_led_mask_off
6888                     ; 1033 			led_on(ind_check_cnt-55);	
6890  10c6 c6000a        	ld	a,_ind_check_cnt+1
6891  10c9 a037          	sub	a,#55
6892  10cb cd0000        	call	_led_on
6894  10ce ace417e4      	jpf	L5762
6895  10d2               L3213:
6896                     ; 1036 	else if(sub_ind==9)
6898  10d2 b662          	ld	a,_a_ind+1
6899  10d4 a109          	cp	a,#9
6900  10d6 2642          	jrne	L1123
6901                     ; 1038 		int2indI_slkuf(waterTemperAlarmCnt,1, 3, 0, 0, 0);
6903  10d8 4b00          	push	#0
6904  10da 4b00          	push	#0
6905  10dc 4b00          	push	#0
6906  10de 4b03          	push	#3
6907  10e0 4b01          	push	#1
6908  10e2 5f            	clrw	x
6909  10e3 c60037        	ld	a,_waterTemperAlarmCnt
6910  10e6 2a01          	jrpl	L432
6911  10e8 53            	cplw	x
6912  10e9               L432:
6913  10e9 97            	ld	xl,a
6914  10ea cd0000        	call	_int2indI_slkuf
6916  10ed 5b05          	addw	sp,#5
6917                     ; 1039 		int2indII_slkuf(mainCnt,0, 2, 0, 0, 0);
6919  10ef 4b00          	push	#0
6920  10f1 4b00          	push	#0
6921  10f3 4b00          	push	#0
6922  10f5 4b02          	push	#2
6923  10f7 4b00          	push	#0
6924  10f9 be82          	ldw	x,_mainCnt
6925  10fb cd0000        	call	_int2indII_slkuf
6927  10fe 5b05          	addw	sp,#5
6928                     ; 1040 		int2indII_slkuf(temperOfWater,2, 2, 0, 0, 0);
6930  1100 4b00          	push	#0
6931  1102 4b00          	push	#0
6932  1104 4b00          	push	#0
6933  1106 4b02          	push	#2
6934  1108 4b02          	push	#2
6935  110a 5f            	clrw	x
6936  110b b61f          	ld	a,_temperOfWater
6937  110d 2a01          	jrpl	L632
6938  110f 53            	cplw	x
6939  1110               L632:
6940  1110 97            	ld	xl,a
6941  1111 cd0000        	call	_int2indII_slkuf
6943  1114 5b05          	addw	sp,#5
6945  1116 ace417e4      	jpf	L5762
6946  111a               L1123:
6947                     ; 1042 	else if(sub_ind==10)
6949  111a b662          	ld	a,_a_ind+1
6950  111c a10a          	cp	a,#10
6951  111e 2651          	jrne	L5123
6952                     ; 1044 		int2indI_slkuf(waterTemperAlarm,1, 1, 0, 0, 0);
6954  1120 4b00          	push	#0
6955  1122 4b00          	push	#0
6956  1124 4b00          	push	#0
6957  1126 4b01          	push	#1
6958  1128 4b01          	push	#1
6959  112a b627          	ld	a,_waterTemperAlarm
6960  112c 5f            	clrw	x
6961  112d 97            	ld	xl,a
6962  112e cd0000        	call	_int2indI_slkuf
6964  1131 5b05          	addw	sp,#5
6965                     ; 1045 		int2indI_slkuf(waterTemperAlarmOld,3, 1, 0, 0, 0);
6967  1133 4b00          	push	#0
6968  1135 4b00          	push	#0
6969  1137 4b00          	push	#0
6970  1139 4b01          	push	#1
6971  113b 4b03          	push	#3
6972  113d b628          	ld	a,_waterTemperAlarmOld
6973  113f 5f            	clrw	x
6974  1140 97            	ld	xl,a
6975  1141 cd0000        	call	_int2indI_slkuf
6977  1144 5b05          	addw	sp,#5
6978                     ; 1046 		int2indII_slkuf(mainCnt,0, 2, 0, 0, 0);
6980  1146 4b00          	push	#0
6981  1148 4b00          	push	#0
6982  114a 4b00          	push	#0
6983  114c 4b02          	push	#2
6984  114e 4b00          	push	#0
6985  1150 be82          	ldw	x,_mainCnt
6986  1152 cd0000        	call	_int2indII_slkuf
6988  1155 5b05          	addw	sp,#5
6989                     ; 1047 		int2indII_slkuf(temperOfWater,2, 2, 0, 0, 0);
6991  1157 4b00          	push	#0
6992  1159 4b00          	push	#0
6993  115b 4b00          	push	#0
6994  115d 4b02          	push	#2
6995  115f 4b02          	push	#2
6996  1161 5f            	clrw	x
6997  1162 b61f          	ld	a,_temperOfWater
6998  1164 2a01          	jrpl	L042
6999  1166 53            	cplw	x
7000  1167               L042:
7001  1167 97            	ld	xl,a
7002  1168 cd0000        	call	_int2indII_slkuf
7004  116b 5b05          	addw	sp,#5
7006  116d ace417e4      	jpf	L5762
7007  1171               L5123:
7008                     ; 1049 	else if(sub_ind==11)
7010  1171 b662          	ld	a,_a_ind+1
7011  1173 a10b          	cp	a,#11
7012  1175 262c          	jrne	L1223
7013                     ; 1051 		int2indI_slkuf(optr_stat,1, 3, 0, 0, 0);
7015  1177 4b00          	push	#0
7016  1179 4b00          	push	#0
7017  117b 4b00          	push	#0
7018  117d 4b03          	push	#3
7019  117f 4b01          	push	#1
7020  1181 c60039        	ld	a,_optr_stat
7021  1184 5f            	clrw	x
7022  1185 97            	ld	xl,a
7023  1186 cd0000        	call	_int2indI_slkuf
7025  1189 5b05          	addw	sp,#5
7026                     ; 1052 		int2indII_slkuf(optr_kontr_cnt,0, 3, 0, 0, 0);
7028  118b 4b00          	push	#0
7029  118d 4b00          	push	#0
7030  118f 4b00          	push	#0
7031  1191 4b03          	push	#3
7032  1193 4b00          	push	#0
7033  1195 c60038        	ld	a,_optr_kontr_cnt
7034  1198 5f            	clrw	x
7035  1199 97            	ld	xl,a
7036  119a cd0000        	call	_int2indII_slkuf
7038  119d 5b05          	addw	sp,#5
7040  119f ace417e4      	jpf	L5762
7041  11a3               L1223:
7042                     ; 1054 	else if(sub_ind==12)
7044  11a3 b662          	ld	a,_a_ind+1
7045  11a5 a10c          	cp	a,#12
7046  11a7 2703          	jreq	L673
7047  11a9 cc17e4        	jp	L5762
7048  11ac               L673:
7049                     ; 1056 		int2indI_slkuf(cntAirSensorLineErrorLo,1, 1, 0, 0, 0);
7051  11ac 4b00          	push	#0
7052  11ae 4b00          	push	#0
7053  11b0 4b00          	push	#0
7054  11b2 4b01          	push	#1
7055  11b4 4b01          	push	#1
7056  11b6 b606          	ld	a,_cntAirSensorLineErrorLo
7057  11b8 5f            	clrw	x
7058  11b9 97            	ld	xl,a
7059  11ba cd0000        	call	_int2indI_slkuf
7061  11bd 5b05          	addw	sp,#5
7062                     ; 1057 		int2indI_slkuf(cntAirSensorLineErrorHi,3, 1, 0, 0, 0);
7064  11bf 4b00          	push	#0
7065  11c1 4b00          	push	#0
7066  11c3 4b00          	push	#0
7067  11c5 4b01          	push	#1
7068  11c7 4b03          	push	#3
7069  11c9 b605          	ld	a,_cntAirSensorLineErrorHi
7070  11cb 5f            	clrw	x
7071  11cc 97            	ld	xl,a
7072  11cd cd0000        	call	_int2indI_slkuf
7074  11d0 5b05          	addw	sp,#5
7075                     ; 1058 		int2indII_slkuf(airSensorErrorStat,0, 2, 0, 0, 0);
7077  11d2 4b00          	push	#0
7078  11d4 4b00          	push	#0
7079  11d6 4b00          	push	#0
7080  11d8 4b02          	push	#2
7081  11da 4b00          	push	#0
7082  11dc b623          	ld	a,_airSensorErrorStat
7083  11de 5f            	clrw	x
7084  11df 97            	ld	xl,a
7085  11e0 cd0000        	call	_int2indII_slkuf
7087  11e3 5b05          	addw	sp,#5
7088                     ; 1059 		int2indII_slkuf(airSensorErrorStatOld,2, 2, 0, 0, 0);
7090  11e5 4b00          	push	#0
7091  11e7 4b00          	push	#0
7092  11e9 4b00          	push	#0
7093  11eb 4b02          	push	#2
7094  11ed 4b02          	push	#2
7095  11ef b624          	ld	a,_airSensorErrorStatOld
7096  11f1 5f            	clrw	x
7097  11f2 97            	ld	xl,a
7098  11f3 cd0000        	call	_int2indII_slkuf
7100  11f6 5b05          	addw	sp,#5
7101  11f8 ace417e4      	jpf	L5762
7102  11fc               L1603:
7103                     ; 1064 else if(ind==iModem_deb)
7105  11fc b661          	ld	a,_a_ind
7106  11fe a10a          	cp	a,#10
7107  1200 2703          	jreq	L004
7108  1202 cc13c6        	jp	L1323
7109  1205               L004:
7110                     ; 1066 	led_mask_off(0x00);
7112  1205 4f            	clr	a
7113  1206 cd0000        	call	_led_mask_off
7115                     ; 1067 	led_on(1);
7117  1209 a601          	ld	a,#1
7118  120b cd0000        	call	_led_on
7120                     ; 1068 	led_on(2);
7122  120e a602          	ld	a,#2
7123  1210 cd0000        	call	_led_on
7125                     ; 1070 	if(sub_ind==0)
7127  1213 3d62          	tnz	_a_ind+1
7128  1215 2703cc12ae    	jrne	L3323
7129                     ; 1072 		int2indI_slkuf(modemState,3, 1, 0, 0, 0);
7131  121a 4b00          	push	#0
7132  121c 4b00          	push	#0
7133  121e 4b00          	push	#0
7134  1220 4b01          	push	#1
7135  1222 4b03          	push	#3
7136  1224 b600          	ld	a,_modemState
7137  1226 5f            	clrw	x
7138  1227 97            	ld	xl,a
7139  1228 cd0000        	call	_int2indI_slkuf
7141  122b 5b05          	addw	sp,#5
7142                     ; 1073 		int2indI_slkuf(modem_plazma,1, 1, 0, 0, 0);
7144  122d 4b00          	push	#0
7145  122f 4b00          	push	#0
7146  1231 4b00          	push	#0
7147  1233 4b01          	push	#1
7148  1235 4b01          	push	#1
7149  1237 c60000        	ld	a,_modem_plazma
7150  123a 5f            	clrw	x
7151  123b 97            	ld	xl,a
7152  123c cd0000        	call	_int2indI_slkuf
7154  123f 5b05          	addw	sp,#5
7155                     ; 1074 		int2indI_slkuf(modem_plazma1,2, 1, 0, 0, 0);
7157  1241 4b00          	push	#0
7158  1243 4b00          	push	#0
7159  1245 4b00          	push	#0
7160  1247 4b01          	push	#1
7161  1249 4b02          	push	#2
7162  124b c60000        	ld	a,_modem_plazma1
7163  124e 5f            	clrw	x
7164  124f 97            	ld	xl,a
7165  1250 cd0000        	call	_int2indI_slkuf
7167  1253 5b05          	addw	sp,#5
7168                     ; 1076 		int2indII_slkuf(modemDrvPDUSMSSendStepCnt,2, 2, 0, 0, 0);
7170  1255 4b00          	push	#0
7171  1257 4b00          	push	#0
7172  1259 4b00          	push	#0
7173  125b 4b02          	push	#2
7174  125d 4b02          	push	#2
7175  125f be00          	ldw	x,_modemDrvPDUSMSSendStepCnt
7176  1261 cd0000        	call	_int2indII_slkuf
7178  1264 5b05          	addw	sp,#5
7179                     ; 1077 		int2indII_slkuf(modemDrvInitStepCnt,0, 2, 0, 0, 0);
7181  1266 4b00          	push	#0
7182  1268 4b00          	push	#0
7183  126a 4b00          	push	#0
7184  126c 4b02          	push	#2
7185  126e 4b00          	push	#0
7186  1270 be00          	ldw	x,_modemDrvInitStepCnt
7187  1272 cd0000        	call	_int2indII_slkuf
7189  1275 5b05          	addw	sp,#5
7190                     ; 1078 		if(AUTH_NUMBER_FLAGS&0x01)led_on(8);
7192  1277 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
7193  127a a501          	bcp	a,#1
7194  127c 2705          	jreq	L5323
7197  127e a608          	ld	a,#8
7198  1280 cd0000        	call	_led_on
7200  1283               L5323:
7201                     ; 1079 		if(AUTH_NUMBER_FLAGS&0x02)led_on(7);
7203  1283 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
7204  1286 a502          	bcp	a,#2
7205  1288 2705          	jreq	L7323
7208  128a a607          	ld	a,#7
7209  128c cd0000        	call	_led_on
7211  128f               L7323:
7212                     ; 1080 		if(AUTH_NUMBER_FLAGS&0x04)led_on(6);
7214  128f c6407f        	ld	a,_AUTH_NUMBER_FLAGS
7215  1292 a504          	bcp	a,#4
7216  1294 2705          	jreq	L1423
7219  1296 a606          	ld	a,#6
7220  1298 cd0000        	call	_led_on
7222  129b               L1423:
7223                     ; 1081 		if(AUTH_NUMBER_FLAGS&0x08)led_on(5);
7225  129b c6407f        	ld	a,_AUTH_NUMBER_FLAGS
7226  129e a508          	bcp	a,#8
7227  12a0 2603          	jrne	L204
7228  12a2 cc17e4        	jp	L5762
7229  12a5               L204:
7232  12a5 a605          	ld	a,#5
7233  12a7 cd0000        	call	_led_on
7235  12aa ace417e4      	jpf	L5762
7236  12ae               L3323:
7237                     ; 1084 	else if(sub_ind==1)
7239  12ae b662          	ld	a,_a_ind+1
7240  12b0 a101          	cp	a,#1
7241  12b2 2647          	jrne	L7423
7242                     ; 1086 		int2indI_slkuf(MAX_POWER_EE,1, 2, 0, 0, 0);
7244  12b4 4b00          	push	#0
7245  12b6 4b00          	push	#0
7246  12b8 4b00          	push	#0
7247  12ba 4b02          	push	#2
7248  12bc 4b01          	push	#1
7249  12be 5f            	clrw	x
7250  12bf c64047        	ld	a,_MAX_POWER_EE
7251  12c2 2a01          	jrpl	L242
7252  12c4 53            	cplw	x
7253  12c5               L242:
7254  12c5 97            	ld	xl,a
7255  12c6 cd0000        	call	_int2indI_slkuf
7257  12c9 5b05          	addw	sp,#5
7258                     ; 1087 		int2indII_slkuf(powerNeccDelta,2, 2, 0, 0, 0);
7260  12cb 4b00          	push	#0
7261  12cd 4b00          	push	#0
7262  12cf 4b00          	push	#0
7263  12d1 4b02          	push	#2
7264  12d3 4b02          	push	#2
7265  12d5 5f            	clrw	x
7266  12d6 b60b          	ld	a,_powerNeccDelta
7267  12d8 2a01          	jrpl	L442
7268  12da 53            	cplw	x
7269  12db               L442:
7270  12db 97            	ld	xl,a
7271  12dc cd0000        	call	_int2indII_slkuf
7273  12df 5b05          	addw	sp,#5
7274                     ; 1088 		int2indII_slkuf(powerNecc,0, 2, 0, 0, 0);
7276  12e1 4b00          	push	#0
7277  12e3 4b00          	push	#0
7278  12e5 4b00          	push	#0
7279  12e7 4b02          	push	#2
7280  12e9 4b00          	push	#0
7281  12eb 5f            	clrw	x
7282  12ec b625          	ld	a,_powerNecc
7283  12ee 2a01          	jrpl	L642
7284  12f0 53            	cplw	x
7285  12f1               L642:
7286  12f1 97            	ld	xl,a
7287  12f2 cd0000        	call	_int2indII_slkuf
7289  12f5 5b05          	addw	sp,#5
7291  12f7 ace417e4      	jpf	L5762
7292  12fb               L7423:
7293                     ; 1090 	else if(sub_ind==2)
7295  12fb b662          	ld	a,_a_ind+1
7296  12fd a102          	cp	a,#2
7297  12ff 267c          	jrne	L3523
7298                     ; 1092 		int2indI_slkuf(aktualTemper,2, 2, 0, 0, 0);	
7300  1301 4b00          	push	#0
7301  1303 4b00          	push	#0
7302  1305 4b00          	push	#0
7303  1307 4b02          	push	#2
7304  1309 4b02          	push	#2
7305  130b 5f            	clrw	x
7306  130c b61d          	ld	a,_aktualTemper
7307  130e 2a01          	jrpl	L052
7308  1310 53            	cplw	x
7309  1311               L052:
7310  1311 97            	ld	xl,a
7311  1312 cd0000        	call	_int2indI_slkuf
7313  1315 5b05          	addw	sp,#5
7314                     ; 1093 		int2indI_slkuf(powerNecc,1, 1, 0, 0, 0);
7316  1317 4b00          	push	#0
7317  1319 4b00          	push	#0
7318  131b 4b00          	push	#0
7319  131d 4b01          	push	#1
7320  131f 4b01          	push	#1
7321  1321 5f            	clrw	x
7322  1322 b625          	ld	a,_powerNecc
7323  1324 2a01          	jrpl	L252
7324  1326 53            	cplw	x
7325  1327               L252:
7326  1327 97            	ld	xl,a
7327  1328 cd0000        	call	_int2indI_slkuf
7329  132b 5b05          	addw	sp,#5
7330                     ; 1094 		int2indII_slkuf(out_stat[0],3, 1, 0, 0, 0);
7332  132d 4b00          	push	#0
7333  132f 4b00          	push	#0
7334  1331 4b00          	push	#0
7335  1333 4b01          	push	#1
7336  1335 4b03          	push	#3
7337  1337 b620          	ld	a,_out_stat
7338  1339 5f            	clrw	x
7339  133a 97            	ld	xl,a
7340  133b cd0000        	call	_int2indII_slkuf
7342  133e 5b05          	addw	sp,#5
7343                     ; 1095 		int2indII_slkuf(out_stat[1],2, 1, 0, 0, 0);
7345  1340 4b00          	push	#0
7346  1342 4b00          	push	#0
7347  1344 4b00          	push	#0
7348  1346 4b01          	push	#1
7349  1348 4b02          	push	#2
7350  134a b621          	ld	a,_out_stat+1
7351  134c 5f            	clrw	x
7352  134d 97            	ld	xl,a
7353  134e cd0000        	call	_int2indII_slkuf
7355  1351 5b05          	addw	sp,#5
7356                     ; 1096 		int2indII_slkuf(out_stat[2],1, 1, 0, 0, 0);
7358  1353 4b00          	push	#0
7359  1355 4b00          	push	#0
7360  1357 4b00          	push	#0
7361  1359 4b01          	push	#1
7362  135b 4b01          	push	#1
7363  135d b622          	ld	a,_out_stat+2
7364  135f 5f            	clrw	x
7365  1360 97            	ld	xl,a
7366  1361 cd0000        	call	_int2indII_slkuf
7368  1364 5b05          	addw	sp,#5
7369                     ; 1097 		int2indII_slkuf(fiksRandom,0, 1, 0, 0, 0);
7371  1366 4b00          	push	#0
7372  1368 4b00          	push	#0
7373  136a 4b00          	push	#0
7374  136c 4b01          	push	#1
7375  136e 4b00          	push	#0
7376  1370 b684          	ld	a,_fiksRandom
7377  1372 5f            	clrw	x
7378  1373 97            	ld	xl,a
7379  1374 cd0000        	call	_int2indII_slkuf
7381  1377 5b05          	addw	sp,#5
7383  1379 ace417e4      	jpf	L5762
7384  137d               L3523:
7385                     ; 1099 	else if(sub_ind==3)
7387  137d b662          	ld	a,_a_ind+1
7388  137f a103          	cp	a,#3
7389  1381 2703          	jreq	L404
7390  1383 cc17e4        	jp	L5762
7391  1386               L404:
7392                     ; 1101 		int2indI_slkuf(temperRegToSheduler,1, 2, 0, 0, 0);	
7394  1386 4b00          	push	#0
7395  1388 4b00          	push	#0
7396  138a 4b00          	push	#0
7397  138c 4b02          	push	#2
7398  138e 4b01          	push	#1
7399  1390 5f            	clrw	x
7400  1391 b604          	ld	a,_temperRegToSheduler
7401  1393 2a01          	jrpl	L452
7402  1395 53            	cplw	x
7403  1396               L452:
7404  1396 97            	ld	xl,a
7405  1397 cd0000        	call	_int2indI_slkuf
7407  139a 5b05          	addw	sp,#5
7408                     ; 1103 		int2indII_slkuf(time_day_of_week,3, 1, 0, 0, 0);
7410  139c 4b00          	push	#0
7411  139e 4b00          	push	#0
7412  13a0 4b00          	push	#0
7413  13a2 4b01          	push	#1
7414  13a4 4b03          	push	#3
7415  13a6 b60e          	ld	a,_time_day_of_week
7416  13a8 5f            	clrw	x
7417  13a9 97            	ld	xl,a
7418  13aa cd0000        	call	_int2indII_slkuf
7420  13ad 5b05          	addw	sp,#5
7421                     ; 1106 		int2indII_slkuf(day_sheduler_time,0, 3, 0, 0, 0);
7423  13af 4b00          	push	#0
7424  13b1 4b00          	push	#0
7425  13b3 4b00          	push	#0
7426  13b5 4b03          	push	#3
7427  13b7 4b00          	push	#0
7428  13b9 b602          	ld	a,_day_sheduler_time
7429  13bb 5f            	clrw	x
7430  13bc 97            	ld	xl,a
7431  13bd cd0000        	call	_int2indII_slkuf
7433  13c0 5b05          	addw	sp,#5
7434  13c2 ace417e4      	jpf	L5762
7435  13c6               L1323:
7436                     ; 1110 else if(ind==iTemperSet)
7438  13c6 b661          	ld	a,_a_ind
7439  13c8 a108          	cp	a,#8
7440  13ca 2703          	jreq	L604
7441  13cc cc14fa        	jp	L3623
7442  13cf               L604:
7443                     ; 1119 	led_mask_off(0x00);
7445  13cf 4f            	clr	a
7446  13d0 cd0000        	call	_led_mask_off
7448                     ; 1120 	if(outMode==omON)
7450  13d3 c6401d        	ld	a,_outMode
7451  13d6 a101          	cp	a,#1
7452  13d8 262d          	jrne	L5623
7453                     ; 1122 		if(MODE_EE==1)led_on(1);
7455  13da c64046        	ld	a,_MODE_EE
7456  13dd a101          	cp	a,#1
7457  13df 2607          	jrne	L7623
7460  13e1 a601          	ld	a,#1
7461  13e3 cd0000        	call	_led_on
7464  13e6 201f          	jra	L5623
7465  13e8               L7623:
7466                     ; 1123 		else if(MODE_EE==2) led_on(2);
7468  13e8 c64046        	ld	a,_MODE_EE
7469  13eb a102          	cp	a,#2
7470  13ed 2607          	jrne	L3723
7473  13ef a602          	ld	a,#2
7474  13f1 cd0000        	call	_led_on
7477  13f4 2011          	jra	L5623
7478  13f6               L3723:
7479                     ; 1124 		else if(MODE_EE==3)
7481  13f6 c64046        	ld	a,_MODE_EE
7482  13f9 a103          	cp	a,#3
7483  13fb 260a          	jrne	L5623
7484                     ; 1126 			led_on(2);
7486  13fd a602          	ld	a,#2
7487  13ff cd0000        	call	_led_on
7489                     ; 1127 			led_on(3);
7491  1402 a603          	ld	a,#3
7492  1404 cd0000        	call	_led_on
7494  1407               L5623:
7495                     ; 1130 	if((outMode==omON)&&(out_stat[0]==osON))led_on(4);
7497  1407 c6401d        	ld	a,_outMode
7498  140a a101          	cp	a,#1
7499  140c 260b          	jrne	L1033
7501  140e b620          	ld	a,_out_stat
7502  1410 a101          	cp	a,#1
7503  1412 2605          	jrne	L1033
7506  1414 a604          	ld	a,#4
7507  1416 cd0000        	call	_led_on
7509  1419               L1033:
7510                     ; 1131 	if((outMode==omON)&&(out_stat[1]==osON))led_on(5);
7512  1419 c6401d        	ld	a,_outMode
7513  141c a101          	cp	a,#1
7514  141e 260b          	jrne	L3033
7516  1420 b621          	ld	a,_out_stat+1
7517  1422 a101          	cp	a,#1
7518  1424 2605          	jrne	L3033
7521  1426 a605          	ld	a,#5
7522  1428 cd0000        	call	_led_on
7524  142b               L3033:
7525                     ; 1132 	if((outMode==omON)&&(out_stat[2]==osON))led_on(6);
7527  142b c6401d        	ld	a,_outMode
7528  142e a101          	cp	a,#1
7529  1430 260b          	jrne	L5033
7531  1432 b622          	ld	a,_out_stat+2
7532  1434 a101          	cp	a,#1
7533  1436 2605          	jrne	L5033
7536  1438 a606          	ld	a,#6
7537  143a cd0000        	call	_led_on
7539  143d               L5033:
7540                     ; 1134 	if(bERR)led_on(7);
7542  143d 3d08          	tnz	_bERR
7543  143f 2707          	jreq	L7033
7546  1441 a607          	ld	a,#7
7547  1443 cd0000        	call	_led_on
7550  1446 2009          	jra	L1133
7551  1448               L7033:
7552                     ; 1135 	else if(bWARN)led_flash(7);
7554  1448 3d07          	tnz	_bWARN
7555  144a 2705          	jreq	L1133
7558  144c a607          	ld	a,#7
7559  144e cd0000        	call	_led_flash
7561  1451               L1133:
7562                     ; 1137 	if(aktualTemper>=0)
7564  1451 9c            	rvf
7565  1452 b61d          	ld	a,_aktualTemper
7566  1454 a100          	cp	a,#0
7567  1456 2f1c          	jrslt	L5133
7568                     ; 1139 		int2indI_slkuf(aktualTemper,2, 2, 0, 1, 0);
7570  1458 4b00          	push	#0
7571  145a 4b01          	push	#1
7572  145c 4b00          	push	#0
7573  145e 4b02          	push	#2
7574  1460 4b02          	push	#2
7575  1462 5f            	clrw	x
7576  1463 b61d          	ld	a,_aktualTemper
7577  1465 2a01          	jrpl	L652
7578  1467 53            	cplw	x
7579  1468               L652:
7580  1468 97            	ld	xl,a
7581  1469 cd0000        	call	_int2indI_slkuf
7583  146c 5b05          	addw	sp,#5
7584                     ; 1140 		ind_outB[1]=0b10011100;
7586  146e 359c0076      	mov	_ind_outB+1,#156
7588  1472 204a          	jra	L7133
7589  1474               L5133:
7590                     ; 1144 		if(-aktualTemper<10)
7592  1474 9c            	rvf
7593  1475 5f            	clrw	x
7594  1476 b61d          	ld	a,_aktualTemper
7595  1478 2a01          	jrpl	L062
7596  147a 53            	cplw	x
7597  147b               L062:
7598  147b 97            	ld	xl,a
7599  147c 50            	negw	x
7600  147d a3000a        	cpw	x,#10
7601  1480 2e21          	jrsge	L1233
7602                     ; 1146 			ind_outB[3]=0b10111111;
7604  1482 35bf0078      	mov	_ind_outB+3,#191
7605                     ; 1147 			int2indI_slkuf(-aktualTemper,2, 1, 0, 1, 0);
7607  1486 4b00          	push	#0
7608  1488 4b01          	push	#1
7609  148a 4b00          	push	#0
7610  148c 4b01          	push	#1
7611  148e 4b02          	push	#2
7612  1490 5f            	clrw	x
7613  1491 b61d          	ld	a,_aktualTemper
7614  1493 2a01          	jrpl	L262
7615  1495 53            	cplw	x
7616  1496               L262:
7617  1496 97            	ld	xl,a
7618  1497 50            	negw	x
7619  1498 cd0000        	call	_int2indI_slkuf
7621  149b 5b05          	addw	sp,#5
7622                     ; 1148 			ind_outB[1]=0b10011100;
7624  149d 359c0076      	mov	_ind_outB+1,#156
7626  14a1 201b          	jra	L7133
7627  14a3               L1233:
7628                     ; 1152 			ind_outB[3]=0b10111111;
7630  14a3 35bf0078      	mov	_ind_outB+3,#191
7631                     ; 1153 			int2indI_slkuf(-aktualTemper,1, 2, 0, 1, 0);
7633  14a7 4b00          	push	#0
7634  14a9 4b01          	push	#1
7635  14ab 4b00          	push	#0
7636  14ad 4b02          	push	#2
7637  14af 4b01          	push	#1
7638  14b1 5f            	clrw	x
7639  14b2 b61d          	ld	a,_aktualTemper
7640  14b4 2a01          	jrpl	L462
7641  14b6 53            	cplw	x
7642  14b7               L462:
7643  14b7 97            	ld	xl,a
7644  14b8 50            	negw	x
7645  14b9 cd0000        	call	_int2indI_slkuf
7647  14bc 5b05          	addw	sp,#5
7648  14be               L7133:
7649                     ; 1157 	int2indII_slkuf(targetTemper,1, 2, 0, 1, MODE_EE==3?0:1);
7651  14be c64046        	ld	a,_MODE_EE
7652  14c1 a103          	cp	a,#3
7653  14c3 2603          	jrne	L662
7654  14c5 4f            	clr	a
7655  14c6 2002          	jra	L072
7656  14c8               L662:
7657  14c8 a601          	ld	a,#1
7658  14ca               L072:
7659  14ca 88            	push	a
7660  14cb 4b01          	push	#1
7661  14cd 4b00          	push	#0
7662  14cf 4b02          	push	#2
7663  14d1 4b01          	push	#1
7664  14d3 5f            	clrw	x
7665  14d4 b61c          	ld	a,_targetTemper
7666  14d6 2a01          	jrpl	L272
7667  14d8 53            	cplw	x
7668  14d9               L272:
7669  14d9 97            	ld	xl,a
7670  14da cd0000        	call	_int2indII_slkuf
7672  14dd 5b05          	addw	sp,#5
7673                     ; 1158 	if((bFL2)&&(MODE_EE!=3))	ind_outC[0]=0b11111111;
7675  14df 3d27          	tnz	_bFL2
7676  14e1 270f          	jreq	L5233
7678  14e3 c64046        	ld	a,_MODE_EE
7679  14e6 a103          	cp	a,#3
7680  14e8 2708          	jreq	L5233
7683  14ea 35ff000a      	mov	_ind_outC,#255
7685  14ee ace417e4      	jpf	L5762
7686  14f2               L5233:
7687                     ; 1159 	else 						ind_outC[0]=0b00111000;
7689  14f2 3538000a      	mov	_ind_outC,#56
7690  14f6 ace417e4      	jpf	L5762
7691  14fa               L3623:
7692                     ; 1163 else if(ind==iDefSet)
7694  14fa b661          	ld	a,_a_ind
7695  14fc a109          	cp	a,#9
7696  14fe 262c          	jrne	L3333
7697                     ; 1165 	led_mask_off(0x00);
7699  1500 4f            	clr	a
7700  1501 cd0000        	call	_led_mask_off
7702                     ; 1167 	int2indI_slkuf(123,1, 3, 0, 0, 0);
7704  1504 4b00          	push	#0
7705  1506 4b00          	push	#0
7706  1508 4b00          	push	#0
7707  150a 4b03          	push	#3
7708  150c 4b01          	push	#1
7709  150e ae007b        	ldw	x,#123
7710  1511 cd0000        	call	_int2indI_slkuf
7712  1514 5b05          	addw	sp,#5
7713                     ; 1168 	int2indII_slkuf(4567,0, 4, 0, 0, 0);
7715  1516 4b00          	push	#0
7716  1518 4b00          	push	#0
7717  151a 4b00          	push	#0
7718  151c 4b04          	push	#4
7719  151e 4b00          	push	#0
7720  1520 ae11d7        	ldw	x,#4567
7721  1523 cd0000        	call	_int2indII_slkuf
7723  1526 5b05          	addw	sp,#5
7725  1528 ace417e4      	jpf	L5762
7726  152c               L3333:
7727                     ; 1170 else if(ind==iMn_number)
7729  152c b661          	ld	a,_a_ind
7730  152e a10b          	cp	a,#11
7731  1530 2703cc15c9    	jrne	L7333
7732                     ; 1172 	led_mask_off(0x00);
7734  1535 4f            	clr	a
7735  1536 cd0000        	call	_led_mask_off
7737                     ; 1174 	int2indI_slkuf(rand_dig[0], 3, 1, 0, 0, 0);
7739  1539 4b00          	push	#0
7740  153b 4b00          	push	#0
7741  153d 4b00          	push	#0
7742  153f 4b01          	push	#1
7743  1541 4b03          	push	#3
7744  1543 c60030        	ld	a,_rand_dig
7745  1546 5f            	clrw	x
7746  1547 97            	ld	xl,a
7747  1548 cd0000        	call	_int2indI_slkuf
7749  154b 5b05          	addw	sp,#5
7750                     ; 1175 	int2indI_slkuf(rand_dig[1], 2, 1, 0, 0, 0);
7752  154d 4b00          	push	#0
7753  154f 4b00          	push	#0
7754  1551 4b00          	push	#0
7755  1553 4b01          	push	#1
7756  1555 4b02          	push	#2
7757  1557 c60031        	ld	a,_rand_dig+1
7758  155a 5f            	clrw	x
7759  155b 97            	ld	xl,a
7760  155c cd0000        	call	_int2indI_slkuf
7762  155f 5b05          	addw	sp,#5
7763                     ; 1176 	int2indI_slkuf(rand_dig[2], 1, 1, 0, 0, 0);
7765  1561 4b00          	push	#0
7766  1563 4b00          	push	#0
7767  1565 4b00          	push	#0
7768  1567 4b01          	push	#1
7769  1569 4b01          	push	#1
7770  156b c60032        	ld	a,_rand_dig+2
7771  156e 5f            	clrw	x
7772  156f 97            	ld	xl,a
7773  1570 cd0000        	call	_int2indI_slkuf
7775  1573 5b05          	addw	sp,#5
7776                     ; 1177 	int2indII_slkuf(rand_dig[3], 3, 1, 0, 0, 0);
7778  1575 4b00          	push	#0
7779  1577 4b00          	push	#0
7780  1579 4b00          	push	#0
7781  157b 4b01          	push	#1
7782  157d 4b03          	push	#3
7783  157f c60033        	ld	a,_rand_dig+3
7784  1582 5f            	clrw	x
7785  1583 97            	ld	xl,a
7786  1584 cd0000        	call	_int2indII_slkuf
7788  1587 5b05          	addw	sp,#5
7789                     ; 1178 	int2indII_slkuf(rand_dig[4], 2, 1, 0, 0, 0);
7791  1589 4b00          	push	#0
7792  158b 4b00          	push	#0
7793  158d 4b00          	push	#0
7794  158f 4b01          	push	#1
7795  1591 4b02          	push	#2
7796  1593 c60034        	ld	a,_rand_dig+4
7797  1596 5f            	clrw	x
7798  1597 97            	ld	xl,a
7799  1598 cd0000        	call	_int2indII_slkuf
7801  159b 5b05          	addw	sp,#5
7802                     ; 1179 	int2indII_slkuf(rand_dig[5], 1, 1, 0, 0, 0);
7804  159d 4b00          	push	#0
7805  159f 4b00          	push	#0
7806  15a1 4b00          	push	#0
7807  15a3 4b01          	push	#1
7808  15a5 4b01          	push	#1
7809  15a7 c60035        	ld	a,_rand_dig+5
7810  15aa 5f            	clrw	x
7811  15ab 97            	ld	xl,a
7812  15ac cd0000        	call	_int2indII_slkuf
7814  15af 5b05          	addw	sp,#5
7815                     ; 1180 	int2indII_slkuf(rand_dig[6], 0, 1, 0, 0, 0);
7817  15b1 4b00          	push	#0
7818  15b3 4b00          	push	#0
7819  15b5 4b00          	push	#0
7820  15b7 4b01          	push	#1
7821  15b9 4b00          	push	#0
7822  15bb c60036        	ld	a,_rand_dig+6
7823  15be 5f            	clrw	x
7824  15bf 97            	ld	xl,a
7825  15c0 cd0000        	call	_int2indII_slkuf
7827  15c3 5b05          	addw	sp,#5
7829  15c5 ace417e4      	jpf	L5762
7830  15c9               L7333:
7831                     ; 1183 else if(ind==iAfterReset)
7833  15c9 b661          	ld	a,_a_ind
7834  15cb a10c          	cp	a,#12
7835  15cd 2619          	jrne	L3433
7836                     ; 1185 	led_mask_off(0x00);
7838  15cf 4f            	clr	a
7839  15d0 cd0000        	call	_led_mask_off
7841                     ; 1187 	int2indI_slkuf(mainCnt, 1, 3, 0, 0, 0);
7843  15d3 4b00          	push	#0
7844  15d5 4b00          	push	#0
7845  15d7 4b00          	push	#0
7846  15d9 4b03          	push	#3
7847  15db 4b01          	push	#1
7848  15dd be82          	ldw	x,_mainCnt
7849  15df cd0000        	call	_int2indI_slkuf
7851  15e2 5b05          	addw	sp,#5
7853  15e4 ace417e4      	jpf	L5762
7854  15e8               L3433:
7855                     ; 1190 else if(ind==iWater)
7857  15e8 b661          	ld	a,_a_ind
7858  15ea a10d          	cp	a,#13
7859  15ec 261e          	jrne	L7433
7860                     ; 1192 	led_mask_off(0x00);
7862  15ee 4f            	clr	a
7863  15ef cd0000        	call	_led_mask_off
7865                     ; 1194 	int2indI_slkuf(temperOfWater,1, 3, 0, 0, 0);
7867  15f2 4b00          	push	#0
7868  15f4 4b00          	push	#0
7869  15f6 4b00          	push	#0
7870  15f8 4b03          	push	#3
7871  15fa 4b01          	push	#1
7872  15fc 5f            	clrw	x
7873  15fd b61f          	ld	a,_temperOfWater
7874  15ff 2a01          	jrpl	L472
7875  1601 53            	cplw	x
7876  1602               L472:
7877  1602 97            	ld	xl,a
7878  1603 cd0000        	call	_int2indI_slkuf
7880  1606 5b05          	addw	sp,#5
7882  1608 ace417e4      	jpf	L5762
7883  160c               L7433:
7884                     ; 1198 else if(ind==iAir)
7886  160c b661          	ld	a,_a_ind
7887  160e a10e          	cp	a,#14
7888  1610 261e          	jrne	L3533
7889                     ; 1200 	led_mask_off(0x00);
7891  1612 4f            	clr	a
7892  1613 cd0000        	call	_led_mask_off
7894                     ; 1202 	int2indI_slkuf(temperOfAir,1, 3, 0, 0, 0);
7896  1616 4b00          	push	#0
7897  1618 4b00          	push	#0
7898  161a 4b00          	push	#0
7899  161c 4b03          	push	#3
7900  161e 4b01          	push	#1
7901  1620 5f            	clrw	x
7902  1621 b61e          	ld	a,_temperOfAir
7903  1623 2a01          	jrpl	L672
7904  1625 53            	cplw	x
7905  1626               L672:
7906  1626 97            	ld	xl,a
7907  1627 cd0000        	call	_int2indI_slkuf
7909  162a 5b05          	addw	sp,#5
7911  162c ace417e4      	jpf	L5762
7912  1630               L3533:
7913                     ; 1206 else if(ind==iInterf)
7915  1630 b661          	ld	a,_a_ind
7916  1632 a10f          	cp	a,#15
7917  1634 2703          	jreq	L014
7918  1636 cc17e4        	jp	L5762
7919  1639               L014:
7920                     ; 1212 	if(++ind_check_cnt1>=5)
7922  1639 9c            	rvf
7923  163a ce0007        	ldw	x,_ind_check_cnt1
7924  163d 1c0001        	addw	x,#1
7925  1640 cf0007        	ldw	_ind_check_cnt1,x
7926  1643 a30005        	cpw	x,#5
7927  1646 2f17          	jrslt	L1633
7928                     ; 1214 		ind_check_cnt1=0;
7930  1648 5f            	clrw	x
7931  1649 cf0007        	ldw	_ind_check_cnt1,x
7932                     ; 1215 		if(++ind_check_cnt>=64)ind_check_cnt=0;
7934  164c 9c            	rvf
7935  164d ce0009        	ldw	x,_ind_check_cnt
7936  1650 1c0001        	addw	x,#1
7937  1653 cf0009        	ldw	_ind_check_cnt,x
7938  1656 a30040        	cpw	x,#64
7939  1659 2f04          	jrslt	L1633
7942  165b 5f            	clrw	x
7943  165c cf0009        	ldw	_ind_check_cnt,x
7944  165f               L1633:
7945                     ; 1217 	ind_outB[0]=0xff;
7947  165f 35ff0075      	mov	_ind_outB,#255
7948                     ; 1218 	ind_outB[1]=0xff;
7950  1663 35ff0076      	mov	_ind_outB+1,#255
7951                     ; 1219 	ind_outB[2]=0xff;
7953  1667 35ff0077      	mov	_ind_outB+2,#255
7954                     ; 1220 	ind_outB[3]=0xff;
7956  166b 35ff0078      	mov	_ind_outB+3,#255
7957                     ; 1221 	ind_outC[0]=0xff;
7959  166f 35ff000a      	mov	_ind_outC,#255
7960                     ; 1222 	ind_outC[1]=0xff;
7962  1673 35ff000b      	mov	_ind_outC+1,#255
7963                     ; 1223 	ind_outC[2]=0xff;
7965  1677 35ff000c      	mov	_ind_outC+2,#255
7966                     ; 1224 	ind_outC[3]=0xff;
7968  167b 35ff000d      	mov	_ind_outC+3,#255
7969                     ; 1225 	ind_outG[0]=0xff;
7971  167f 35ff0016      	mov	_ind_outG,#255
7972                     ; 1226 	ind_outG[1]=0xff;
7974  1683 35ff0017      	mov	_ind_outG+1,#255
7975                     ; 1227 	ind_outG[2]=0xff;
7977  1687 35ff0018      	mov	_ind_outG+2,#255
7978                     ; 1228 	ind_outG[3]=0xff;
7980  168b 35ff0019      	mov	_ind_outG+3,#255
7981                     ; 1229 	led_mask_off(0x00);
7983  168f 4f            	clr	a
7984  1690 cd0000        	call	_led_mask_off
7986                     ; 1231 	if(ind_check_cnt<=7)
7988  1693 9c            	rvf
7989  1694 ce0009        	ldw	x,_ind_check_cnt
7990  1697 a30008        	cpw	x,#8
7991  169a 2e1a          	jrsge	L5633
7992                     ; 1233 		ind_outB[3]&=(~(1<<ind_check_cnt));	
7994  169c 5f            	clrw	x
7995  169d c6000a        	ld	a,_ind_check_cnt+1
7996  16a0 2a01          	jrpl	L003
7997  16a2 53            	cplw	x
7998  16a3               L003:
7999  16a3 97            	ld	xl,a
8000  16a4 a601          	ld	a,#1
8001  16a6 5d            	tnzw	x
8002  16a7 2704          	jreq	L203
8003  16a9               L403:
8004  16a9 48            	sll	a
8005  16aa 5a            	decw	x
8006  16ab 26fc          	jrne	L403
8007  16ad               L203:
8008  16ad 43            	cpl	a
8009  16ae b478          	and	a,_ind_outB+3
8010  16b0 b778          	ld	_ind_outB+3,a
8012  16b2 ace417e4      	jpf	L5762
8013  16b6               L5633:
8014                     ; 1235 	else if(ind_check_cnt<=15)
8016  16b6 9c            	rvf
8017  16b7 ce0009        	ldw	x,_ind_check_cnt
8018  16ba a30010        	cpw	x,#16
8019  16bd 2e1d          	jrsge	L1733
8020                     ; 1237 		ind_outB[2]&=(~(1<<(ind_check_cnt-8)));	
8022  16bf c6000a        	ld	a,_ind_check_cnt+1
8023  16c2 a008          	sub	a,#8
8024  16c4 5f            	clrw	x
8025  16c5 4d            	tnz	a
8026  16c6 2a01          	jrpl	L603
8027  16c8 53            	cplw	x
8028  16c9               L603:
8029  16c9 97            	ld	xl,a
8030  16ca a601          	ld	a,#1
8031  16cc 5d            	tnzw	x
8032  16cd 2704          	jreq	L013
8033  16cf               L213:
8034  16cf 48            	sll	a
8035  16d0 5a            	decw	x
8036  16d1 26fc          	jrne	L213
8037  16d3               L013:
8038  16d3 43            	cpl	a
8039  16d4 b477          	and	a,_ind_outB+2
8040  16d6 b777          	ld	_ind_outB+2,a
8042  16d8 ace417e4      	jpf	L5762
8043  16dc               L1733:
8044                     ; 1239 	else if(ind_check_cnt<=23)
8046  16dc 9c            	rvf
8047  16dd ce0009        	ldw	x,_ind_check_cnt
8048  16e0 a30018        	cpw	x,#24
8049  16e3 2e1d          	jrsge	L5733
8050                     ; 1241 		ind_outB[1]&=(~(1<<(ind_check_cnt-16)));	
8052  16e5 c6000a        	ld	a,_ind_check_cnt+1
8053  16e8 a010          	sub	a,#16
8054  16ea 5f            	clrw	x
8055  16eb 4d            	tnz	a
8056  16ec 2a01          	jrpl	L413
8057  16ee 53            	cplw	x
8058  16ef               L413:
8059  16ef 97            	ld	xl,a
8060  16f0 a601          	ld	a,#1
8061  16f2 5d            	tnzw	x
8062  16f3 2704          	jreq	L613
8063  16f5               L023:
8064  16f5 48            	sll	a
8065  16f6 5a            	decw	x
8066  16f7 26fc          	jrne	L023
8067  16f9               L613:
8068  16f9 43            	cpl	a
8069  16fa b476          	and	a,_ind_outB+1
8070  16fc b776          	ld	_ind_outB+1,a
8072  16fe ace417e4      	jpf	L5762
8073  1702               L5733:
8074                     ; 1243 	else if(ind_check_cnt<=30)
8076  1702 9c            	rvf
8077  1703 ce0009        	ldw	x,_ind_check_cnt
8078  1706 a3001f        	cpw	x,#31
8079  1709 2e1d          	jrsge	L1043
8080                     ; 1245 		ind_outC[3]&=(~(1<<(ind_check_cnt-23)));	
8082  170b c6000a        	ld	a,_ind_check_cnt+1
8083  170e a017          	sub	a,#23
8084  1710 5f            	clrw	x
8085  1711 4d            	tnz	a
8086  1712 2a01          	jrpl	L223
8087  1714 53            	cplw	x
8088  1715               L223:
8089  1715 97            	ld	xl,a
8090  1716 a601          	ld	a,#1
8091  1718 5d            	tnzw	x
8092  1719 2704          	jreq	L423
8093  171b               L623:
8094  171b 48            	sll	a
8095  171c 5a            	decw	x
8096  171d 26fc          	jrne	L623
8097  171f               L423:
8098  171f 43            	cpl	a
8099  1720 b40d          	and	a,_ind_outC+3
8100  1722 b70d          	ld	_ind_outC+3,a
8102  1724 ace417e4      	jpf	L5762
8103  1728               L1043:
8104                     ; 1247 	else if(ind_check_cnt==31)
8106  1728 ce0009        	ldw	x,_ind_check_cnt
8107  172b a3001f        	cpw	x,#31
8108  172e 2608          	jrne	L5043
8109                     ; 1249 		ind_outG[3]&=0xfe;	
8111  1730 72110019      	bres	_ind_outG+3,#0
8113  1734 ace417e4      	jpf	L5762
8114  1738               L5043:
8115                     ; 1251 	else if(ind_check_cnt<=38)
8117  1738 9c            	rvf
8118  1739 ce0009        	ldw	x,_ind_check_cnt
8119  173c a30027        	cpw	x,#39
8120  173f 2e1c          	jrsge	L1143
8121                     ; 1253 		ind_outC[2]&=(~(1<<(ind_check_cnt-31)));	
8123  1741 c6000a        	ld	a,_ind_check_cnt+1
8124  1744 a01f          	sub	a,#31
8125  1746 5f            	clrw	x
8126  1747 4d            	tnz	a
8127  1748 2a01          	jrpl	L033
8128  174a 53            	cplw	x
8129  174b               L033:
8130  174b 97            	ld	xl,a
8131  174c a601          	ld	a,#1
8132  174e 5d            	tnzw	x
8133  174f 2704          	jreq	L233
8134  1751               L433:
8135  1751 48            	sll	a
8136  1752 5a            	decw	x
8137  1753 26fc          	jrne	L433
8138  1755               L233:
8139  1755 43            	cpl	a
8140  1756 b40c          	and	a,_ind_outC+2
8141  1758 b70c          	ld	_ind_outC+2,a
8143  175a cc17e4        	jra	L5762
8144  175d               L1143:
8145                     ; 1255 	else if(ind_check_cnt==39)
8147  175d ce0009        	ldw	x,_ind_check_cnt
8148  1760 a30027        	cpw	x,#39
8149  1763 2606          	jrne	L5143
8150                     ; 1257 		ind_outG[2]&=0xfe;	
8152  1765 72110018      	bres	_ind_outG+2,#0
8154  1769 2079          	jra	L5762
8155  176b               L5143:
8156                     ; 1259 	else if(ind_check_cnt<=46)
8158  176b 9c            	rvf
8159  176c ce0009        	ldw	x,_ind_check_cnt
8160  176f a3002f        	cpw	x,#47
8161  1772 2e1b          	jrsge	L1243
8162                     ; 1261 		ind_outC[1]&=(~(1<<(ind_check_cnt-39)));	
8164  1774 c6000a        	ld	a,_ind_check_cnt+1
8165  1777 a027          	sub	a,#39
8166  1779 5f            	clrw	x
8167  177a 4d            	tnz	a
8168  177b 2a01          	jrpl	L633
8169  177d 53            	cplw	x
8170  177e               L633:
8171  177e 97            	ld	xl,a
8172  177f a601          	ld	a,#1
8173  1781 5d            	tnzw	x
8174  1782 2704          	jreq	L043
8175  1784               L243:
8176  1784 48            	sll	a
8177  1785 5a            	decw	x
8178  1786 26fc          	jrne	L243
8179  1788               L043:
8180  1788 43            	cpl	a
8181  1789 b40b          	and	a,_ind_outC+1
8182  178b b70b          	ld	_ind_outC+1,a
8184  178d 2055          	jra	L5762
8185  178f               L1243:
8186                     ; 1263 	else if(ind_check_cnt==47)
8188  178f ce0009        	ldw	x,_ind_check_cnt
8189  1792 a3002f        	cpw	x,#47
8190  1795 2606          	jrne	L5243
8191                     ; 1265 		ind_outG[1]&=0xfe;	
8193  1797 72110017      	bres	_ind_outG+1,#0
8195  179b 2047          	jra	L5762
8196  179d               L5243:
8197                     ; 1267 	else if(ind_check_cnt<=54)
8199  179d 9c            	rvf
8200  179e ce0009        	ldw	x,_ind_check_cnt
8201  17a1 a30037        	cpw	x,#55
8202  17a4 2e1b          	jrsge	L1343
8203                     ; 1269 		ind_outC[0]&=(~(1<<(ind_check_cnt-47)));	
8205  17a6 c6000a        	ld	a,_ind_check_cnt+1
8206  17a9 a02f          	sub	a,#47
8207  17ab 5f            	clrw	x
8208  17ac 4d            	tnz	a
8209  17ad 2a01          	jrpl	L443
8210  17af 53            	cplw	x
8211  17b0               L443:
8212  17b0 97            	ld	xl,a
8213  17b1 a601          	ld	a,#1
8214  17b3 5d            	tnzw	x
8215  17b4 2704          	jreq	L643
8216  17b6               L053:
8217  17b6 48            	sll	a
8218  17b7 5a            	decw	x
8219  17b8 26fc          	jrne	L053
8220  17ba               L643:
8221  17ba 43            	cpl	a
8222  17bb b40a          	and	a,_ind_outC
8223  17bd b70a          	ld	_ind_outC,a
8225  17bf 2023          	jra	L5762
8226  17c1               L1343:
8227                     ; 1271 	else if(ind_check_cnt==55)
8229  17c1 ce0009        	ldw	x,_ind_check_cnt
8230  17c4 a30037        	cpw	x,#55
8231  17c7 2606          	jrne	L5343
8232                     ; 1273 		ind_outG[0]&=0xfe;	
8234  17c9 72110016      	bres	_ind_outG,#0
8236  17cd 2015          	jra	L5762
8237  17cf               L5343:
8238                     ; 1275 	else if(ind_check_cnt<=64)
8240  17cf 9c            	rvf
8241  17d0 ce0009        	ldw	x,_ind_check_cnt
8242  17d3 a30041        	cpw	x,#65
8243  17d6 2e0c          	jrsge	L5762
8244                     ; 1277 		led_mask_off(0x00);
8246  17d8 4f            	clr	a
8247  17d9 cd0000        	call	_led_mask_off
8249                     ; 1278 		led_on(ind_check_cnt-55);	
8251  17dc c6000a        	ld	a,_ind_check_cnt+1
8252  17df a037          	sub	a,#55
8253  17e1 cd0000        	call	_led_on
8255  17e4               L5762:
8256                     ; 1282 if(powerStat==psOFF)
8258  17e4 3d29          	tnz	_powerStat
8259  17e6 263a          	jrne	L3443
8260                     ; 1284 	led_set(1,0);
8262  17e8 5f            	clrw	x
8263  17e9 a601          	ld	a,#1
8264  17eb 95            	ld	xh,a
8265  17ec cd0000        	call	_led_set
8267                     ; 1285 	led_set(2,0);
8269  17ef 5f            	clrw	x
8270  17f0 a602          	ld	a,#2
8271  17f2 95            	ld	xh,a
8272  17f3 cd0000        	call	_led_set
8274                     ; 1286 	led_set(3,0);
8276  17f6 5f            	clrw	x
8277  17f7 a603          	ld	a,#3
8278  17f9 95            	ld	xh,a
8279  17fa cd0000        	call	_led_set
8281                     ; 1287 	led_set(4,0);
8283  17fd 5f            	clrw	x
8284  17fe a604          	ld	a,#4
8285  1800 95            	ld	xh,a
8286  1801 cd0000        	call	_led_set
8288                     ; 1288 	led_set(5,0);
8290  1804 5f            	clrw	x
8291  1805 a605          	ld	a,#5
8292  1807 95            	ld	xh,a
8293  1808 cd0000        	call	_led_set
8295                     ; 1289 	led_set(6,0);
8297  180b 5f            	clrw	x
8298  180c a606          	ld	a,#6
8299  180e 95            	ld	xh,a
8300  180f cd0000        	call	_led_set
8302                     ; 1290 	led_set(7,0);
8304  1812 5f            	clrw	x
8305  1813 a607          	ld	a,#7
8306  1815 95            	ld	xh,a
8307  1816 cd0000        	call	_led_set
8309                     ; 1291 	led_set(8,2);
8311  1819 ae0002        	ldw	x,#2
8312  181c a608          	ld	a,#8
8313  181e 95            	ld	xh,a
8314  181f cd0000        	call	_led_set
8316  1822               L3443:
8317                     ; 1294 if(bFL5)
8319  1822 3d28          	tnz	_bFL5
8320  1824 2717          	jreq	L5443
8321                     ; 1296 	ind_outB[0]=led_ind_out1;
8323  1826 452475        	mov	_ind_outB,_led_ind_out1
8324                     ; 1297 	ind_outB[4]=led_ind_out1;
8326  1829 452479        	mov	_ind_outB+4,_led_ind_out1
8327                     ; 1298 	ind_outB[5]=led_ind_out1;
8329  182c 45247a        	mov	_ind_outB+5,_led_ind_out1
8330                     ; 1299 	ind_outB[6]=led_ind_out1;
8332  182f 45247b        	mov	_ind_outB+6,_led_ind_out1
8333                     ; 1300 	ind_outB[7]=led_ind_out1;
8335  1832 45247c        	mov	_ind_outB+7,_led_ind_out1
8336                     ; 1301 	ind_outB[8]=led_ind_out1;
8338  1835 45247d        	mov	_ind_outB+8,_led_ind_out1
8339                     ; 1302 	ind_outB[9]=led_ind_out1;
8341  1838 45247e        	mov	_ind_outB+9,_led_ind_out1
8343  183b 2015          	jra	L7443
8344  183d               L5443:
8345                     ; 1306 	ind_outB[0]=led_ind_out2;
8347  183d 452375        	mov	_ind_outB,_led_ind_out2
8348                     ; 1307 	ind_outB[4]=led_ind_out2;
8350  1840 452379        	mov	_ind_outB+4,_led_ind_out2
8351                     ; 1308 	ind_outB[5]=led_ind_out2;
8353  1843 45237a        	mov	_ind_outB+5,_led_ind_out2
8354                     ; 1309 	ind_outB[6]=led_ind_out2;
8356  1846 45237b        	mov	_ind_outB+6,_led_ind_out2
8357                     ; 1310 	ind_outB[7]=led_ind_out2;
8359  1849 45237c        	mov	_ind_outB+7,_led_ind_out2
8360                     ; 1311 	ind_outB[8]=led_ind_out2;
8362  184c 45237d        	mov	_ind_outB+8,_led_ind_out2
8363                     ; 1312 	ind_outB[9]=led_ind_out2;
8365  184f 45237e        	mov	_ind_outB+9,_led_ind_out2
8366  1852               L7443:
8367                     ; 1314 }
8370  1852 85            	popw	x
8371  1853 81            	ret
8531                     ; 1319 void but_an(void)
8531                     ; 1320 {
8532                     	switch	.text
8533  1854               _but_an:
8535  1854 5203          	subw	sp,#3
8536       00000003      OFST:	set	3
8539                     ; 1321 if(!n_but) return;
8541  1856 3d00          	tnz	_n_but
8542  1858 2603          	jrne	L625
8543  185a cc2503        	jp	L425
8544  185d               L625:
8547                     ; 1322 n_but=0;
8549  185d 3f00          	clr	_n_but
8550                     ; 1324 if(ind==iMn)
8552  185f 3d61          	tnz	_a_ind
8553  1861 2703          	jreq	L035
8554  1863 cc1901        	jp	L1453
8555  1866               L035:
8556                     ; 1326 	if(but==butM_)
8558  1866 b600          	ld	a,_but
8559  1868 a17d          	cp	a,#125
8560  186a 2610          	jrne	L3453
8561                     ; 1328 		tree_up(iSet,0,0,0);
8563  186c 4b00          	push	#0
8564  186e 4b00          	push	#0
8565  1870 5f            	clrw	x
8566  1871 a601          	ld	a,#1
8567  1873 95            	ld	xh,a
8568  1874 cd0000        	call	_tree_up
8570  1877 85            	popw	x
8572  1878 ac032503      	jpf	L1063
8573  187c               L3453:
8574                     ; 1330 	else if(but==butM)
8576  187c b600          	ld	a,_but
8577  187e a1fd          	cp	a,#253
8578  1880 2617          	jrne	L7453
8579                     ; 1332 		tree_up(iTemperSet,0,0,0);
8581  1882 4b00          	push	#0
8582  1884 4b00          	push	#0
8583  1886 5f            	clrw	x
8584  1887 a608          	ld	a,#8
8585  1889 95            	ld	xh,a
8586  188a cd0000        	call	_tree_up
8588  188d 85            	popw	x
8589                     ; 1333 		ret_ind(5,0);
8591  188e 5f            	clrw	x
8592  188f a605          	ld	a,#5
8593  1891 95            	ld	xh,a
8594  1892 cd0000        	call	_ret_ind
8597  1895 ac032503      	jpf	L1063
8598  1899               L7453:
8599                     ; 1335 	else if(but==butU)
8601  1899 b600          	ld	a,_but
8602  189b a1fb          	cp	a,#251
8603  189d 2617          	jrne	L3553
8604                     ; 1337 		tree_up(iDate_W,0,0,0);
8606  189f 4b00          	push	#0
8607  18a1 4b00          	push	#0
8608  18a3 5f            	clrw	x
8609  18a4 a604          	ld	a,#4
8610  18a6 95            	ld	xh,a
8611  18a7 cd0000        	call	_tree_up
8613  18aa 85            	popw	x
8614                     ; 1338 		ret_ind(4,0);
8616  18ab 5f            	clrw	x
8617  18ac a604          	ld	a,#4
8618  18ae 95            	ld	xh,a
8619  18af cd0000        	call	_ret_ind
8622  18b2 ac032503      	jpf	L1063
8623  18b6               L3553:
8624                     ; 1340 	else if(but==butD_)
8626  18b6 b600          	ld	a,_but
8627  18b8 a177          	cp	a,#119
8628  18ba 2603          	jrne	L235
8629  18bc cc2503        	jp	L1063
8630  18bf               L235:
8632                     ; 1348 	else if(but==butD)
8634  18bf b600          	ld	a,_but
8635  18c1 a1f7          	cp	a,#247
8636  18c3 2603          	jrne	L435
8637  18c5 cc2503        	jp	L1063
8638  18c8               L435:
8640                     ; 1357 	else if(but==butU_)
8642  18c8 b600          	ld	a,_but
8643  18ca a17b          	cp	a,#123
8644  18cc 2603          	jrne	L635
8645  18ce cc2503        	jp	L1063
8646  18d1               L635:
8648                     ; 1361 	else if(but==butON)
8650  18d1 b600          	ld	a,_but
8651  18d3 a1fe          	cp	a,#254
8652  18d5 2703          	jreq	L045
8653  18d7 cc2503        	jp	L1063
8654  18da               L045:
8655                     ; 1363 		if(outMode==omON)	outMode=omOFF;
8657  18da c6401d        	ld	a,_outMode
8658  18dd a101          	cp	a,#1
8659  18df 2609          	jrne	L5753
8662  18e1 4f            	clr	a
8663  18e2 ae401d        	ldw	x,#_outMode
8664  18e5 cd0000        	call	c_eewrc
8667  18e8 2008          	jra	L7753
8668  18ea               L5753:
8669                     ; 1364 		else 				outMode=omON;
8671  18ea a601          	ld	a,#1
8672  18ec ae401d        	ldw	x,#_outMode
8673  18ef cd0000        	call	c_eewrc
8675  18f2               L7753:
8676                     ; 1365 		HUMAN_SET_EE=1;
8678  18f2 ae0001        	ldw	x,#1
8679  18f5 89            	pushw	x
8680  18f6 ae401e        	ldw	x,#_HUMAN_SET_EE
8681  18f9 cd0000        	call	c_eewrw
8683  18fc 85            	popw	x
8684  18fd ac032503      	jpf	L1063
8685  1901               L1453:
8686                     ; 1369 else if(ind==iTemperSet)
8688  1901 b661          	ld	a,_a_ind
8689  1903 a108          	cp	a,#8
8690  1905 2703          	jreq	L245
8691  1907 cc1a0d        	jp	L3063
8692  190a               L245:
8693                     ; 1371 	if(but==butM)
8695  190a b600          	ld	a,_but
8696  190c a1fd          	cp	a,#253
8697  190e 2610          	jrne	L5063
8698                     ; 1373 		tree_down(0,0);
8700  1910 5f            	clrw	x
8701  1911 4f            	clr	a
8702  1912 95            	ld	xh,a
8703  1913 cd0000        	call	_tree_down
8705                     ; 1374 		ret_ind(0,0);
8707  1916 5f            	clrw	x
8708  1917 4f            	clr	a
8709  1918 95            	ld	xh,a
8710  1919 cd0000        	call	_ret_ind
8713  191c ac032503      	jpf	L1063
8714  1920               L5063:
8715                     ; 1376 	else if(MODE_EE==1)
8717  1920 c64046        	ld	a,_MODE_EE
8718  1923 a101          	cp	a,#1
8719  1925 266e          	jrne	L1163
8720                     ; 1378 		ret_ind(4,0);
8722  1927 5f            	clrw	x
8723  1928 a604          	ld	a,#4
8724  192a 95            	ld	xh,a
8725  192b cd0000        	call	_ret_ind
8727                     ; 1379 		if((but==butU)||(but==butU_))
8729  192e b600          	ld	a,_but
8730  1930 a1fb          	cp	a,#251
8731  1932 2706          	jreq	L5163
8733  1934 b600          	ld	a,_but
8734  1936 a17b          	cp	a,#123
8735  1938 2624          	jrne	L3163
8736  193a               L5163:
8737                     ; 1381 			NECC_TEMPER_WATER_EE++;
8739  193a c64045        	ld	a,_NECC_TEMPER_WATER_EE
8740  193d 4c            	inc	a
8741  193e ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8742  1941 cd0000        	call	c_eewrc
8744                     ; 1382 			gran_char(&NECC_TEMPER_WATER_EE,5,85);
8746  1944 4b55          	push	#85
8747  1946 4b05          	push	#5
8748  1948 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8749  194b cd0000        	call	_gran_char
8751  194e 85            	popw	x
8752                     ; 1383 			speed=1;
8754  194f 35010000      	mov	_speed,#1
8755                     ; 1384 			HUMAN_SET_EE=1;
8757  1953 ae0001        	ldw	x,#1
8758  1956 89            	pushw	x
8759  1957 ae401e        	ldw	x,#_HUMAN_SET_EE
8760  195a cd0000        	call	c_eewrw
8762  195d 85            	popw	x
8763  195e               L3163:
8764                     ; 1386 		if((but==butD)||(but==butD_))
8766  195e b600          	ld	a,_but
8767  1960 a1f7          	cp	a,#247
8768  1962 2709          	jreq	L1263
8770  1964 b600          	ld	a,_but
8771  1966 a177          	cp	a,#119
8772  1968 2703          	jreq	L445
8773  196a cc2503        	jp	L1063
8774  196d               L445:
8775  196d               L1263:
8776                     ; 1388 			NECC_TEMPER_WATER_EE--;
8778  196d c64045        	ld	a,_NECC_TEMPER_WATER_EE
8779  1970 4a            	dec	a
8780  1971 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8781  1974 cd0000        	call	c_eewrc
8783                     ; 1389 			gran_char(&NECC_TEMPER_WATER_EE,5,85);
8785  1977 4b55          	push	#85
8786  1979 4b05          	push	#5
8787  197b ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
8788  197e cd0000        	call	_gran_char
8790  1981 85            	popw	x
8791                     ; 1390 			speed=1;
8793  1982 35010000      	mov	_speed,#1
8794                     ; 1391 			HUMAN_SET_EE=1;
8796  1986 ae0001        	ldw	x,#1
8797  1989 89            	pushw	x
8798  198a ae401e        	ldw	x,#_HUMAN_SET_EE
8799  198d cd0000        	call	c_eewrw
8801  1990 85            	popw	x
8802  1991 ac032503      	jpf	L1063
8803  1995               L1163:
8804                     ; 1394 	else if(MODE_EE==2)
8806  1995 c64046        	ld	a,_MODE_EE
8807  1998 a102          	cp	a,#2
8808  199a 2703          	jreq	L645
8809  199c cc2503        	jp	L1063
8810  199f               L645:
8811                     ; 1396 		ret_ind(4,0);
8813  199f 5f            	clrw	x
8814  19a0 a604          	ld	a,#4
8815  19a2 95            	ld	xh,a
8816  19a3 cd0000        	call	_ret_ind
8818                     ; 1397 		if((but==butU)||(but==butU_))
8820  19a6 b600          	ld	a,_but
8821  19a8 a1fb          	cp	a,#251
8822  19aa 2706          	jreq	L1363
8824  19ac b600          	ld	a,_but
8825  19ae a17b          	cp	a,#123
8826  19b0 2624          	jrne	L7263
8827  19b2               L1363:
8828                     ; 1399 			NECC_TEMPER_AIR_EE++;
8830  19b2 c64044        	ld	a,_NECC_TEMPER_AIR_EE
8831  19b5 4c            	inc	a
8832  19b6 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8833  19b9 cd0000        	call	c_eewrc
8835                     ; 1400 			gran_char(&NECC_TEMPER_AIR_EE,5,35);
8837  19bc 4b23          	push	#35
8838  19be 4b05          	push	#5
8839  19c0 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8840  19c3 cd0000        	call	_gran_char
8842  19c6 85            	popw	x
8843                     ; 1401 			speed=1;
8845  19c7 35010000      	mov	_speed,#1
8846                     ; 1402 			HUMAN_SET_EE=1;
8848  19cb ae0001        	ldw	x,#1
8849  19ce 89            	pushw	x
8850  19cf ae401e        	ldw	x,#_HUMAN_SET_EE
8851  19d2 cd0000        	call	c_eewrw
8853  19d5 85            	popw	x
8854  19d6               L7263:
8855                     ; 1404 		if((but==butD)||(but==butD_))
8857  19d6 b600          	ld	a,_but
8858  19d8 a1f7          	cp	a,#247
8859  19da 2709          	jreq	L5363
8861  19dc b600          	ld	a,_but
8862  19de a177          	cp	a,#119
8863  19e0 2703          	jreq	L055
8864  19e2 cc2503        	jp	L1063
8865  19e5               L055:
8866  19e5               L5363:
8867                     ; 1406 			NECC_TEMPER_AIR_EE--;
8869  19e5 c64044        	ld	a,_NECC_TEMPER_AIR_EE
8870  19e8 4a            	dec	a
8871  19e9 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8872  19ec cd0000        	call	c_eewrc
8874                     ; 1407 			gran_char(&NECC_TEMPER_AIR_EE,5,35);
8876  19ef 4b23          	push	#35
8877  19f1 4b05          	push	#5
8878  19f3 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
8879  19f6 cd0000        	call	_gran_char
8881  19f9 85            	popw	x
8882                     ; 1408 			speed=1;
8884  19fa 35010000      	mov	_speed,#1
8885                     ; 1409 			HUMAN_SET_EE=1;
8887  19fe ae0001        	ldw	x,#1
8888  1a01 89            	pushw	x
8889  1a02 ae401e        	ldw	x,#_HUMAN_SET_EE
8890  1a05 cd0000        	call	c_eewrw
8892  1a08 85            	popw	x
8893  1a09 ac032503      	jpf	L1063
8894  1a0d               L3063:
8895                     ; 1413 else if(ind==iDate_W)
8897  1a0d b661          	ld	a,_a_ind
8898  1a0f a104          	cp	a,#4
8899  1a11 2635          	jrne	L1463
8900                     ; 1415 	if(but==butU)
8902  1a13 b600          	ld	a,_but
8903  1a15 a1fb          	cp	a,#251
8904  1a17 2703          	jreq	L255
8905  1a19 cc2503        	jp	L1063
8906  1a1c               L255:
8907                     ; 1417 		if(sub_ind==0)
8909  1a1c 3d62          	tnz	_a_ind+1
8910  1a1e 2615          	jrne	L5463
8911                     ; 1419 			sub_ind=1;
8913  1a20 35010062      	mov	_a_ind+1,#1
8914                     ; 1420 			ret_ind(4,0);
8916  1a24 5f            	clrw	x
8917  1a25 a604          	ld	a,#4
8918  1a27 95            	ld	xh,a
8919  1a28 cd0000        	call	_ret_ind
8921                     ; 1421 			clear_ind();
8923  1a2b cd0000        	call	_clear_ind
8925                     ; 1422 			ind_hndl();			
8927  1a2e cd077b        	call	_ind_hndl
8930  1a31 ac032503      	jpf	L1063
8931  1a35               L5463:
8932                     ; 1424 		else if(sub_ind==1)
8934  1a35 b662          	ld	a,_a_ind+1
8935  1a37 a101          	cp	a,#1
8936  1a39 2703          	jreq	L455
8937  1a3b cc2503        	jp	L1063
8938  1a3e               L455:
8939                     ; 1426 			tree_down(0,0);	
8941  1a3e 5f            	clrw	x
8942  1a3f 4f            	clr	a
8943  1a40 95            	ld	xh,a
8944  1a41 cd0000        	call	_tree_down
8946  1a44 ac032503      	jpf	L1063
8947  1a48               L1463:
8948                     ; 1430 else if(ind==iSet)
8950  1a48 b661          	ld	a,_a_ind
8951  1a4a a101          	cp	a,#1
8952  1a4c 2703          	jreq	L655
8953  1a4e cc1af5        	jp	L5563
8954  1a51               L655:
8955                     ; 1432 	if((but==butU)||(but==butU_))
8957  1a51 b600          	ld	a,_but
8958  1a53 a1fb          	cp	a,#251
8959  1a55 2706          	jreq	L1663
8961  1a57 b600          	ld	a,_but
8962  1a59 a17b          	cp	a,#123
8963  1a5b 2617          	jrne	L7563
8964  1a5d               L1663:
8965                     ; 1434 		sub_ind++;
8967  1a5d 3c62          	inc	_a_ind+1
8968                     ; 1435 		gran_char(&sub_ind,0,11);
8970  1a5f 4b0b          	push	#11
8971  1a61 4b00          	push	#0
8972  1a63 ae0062        	ldw	x,#_a_ind+1
8973  1a66 cd0000        	call	_gran_char
8975  1a69 85            	popw	x
8976                     ; 1436 		clear_ind();
8978  1a6a cd0000        	call	_clear_ind
8980                     ; 1437 		ind_hndl();
8982  1a6d cd077b        	call	_ind_hndl
8985  1a70 ac032503      	jpf	L1063
8986  1a74               L7563:
8987                     ; 1439 	else if((but==butD)||(but==butD_))
8989  1a74 b600          	ld	a,_but
8990  1a76 a1f7          	cp	a,#247
8991  1a78 2706          	jreq	L7663
8993  1a7a b600          	ld	a,_but
8994  1a7c a177          	cp	a,#119
8995  1a7e 2617          	jrne	L5663
8996  1a80               L7663:
8997                     ; 1441 		sub_ind--;
8999  1a80 3a62          	dec	_a_ind+1
9000                     ; 1442 		gran_char(&sub_ind,0,11);
9002  1a82 4b0b          	push	#11
9003  1a84 4b00          	push	#0
9004  1a86 ae0062        	ldw	x,#_a_ind+1
9005  1a89 cd0000        	call	_gran_char
9007  1a8c 85            	popw	x
9008                     ; 1443 		clear_ind();
9010  1a8d cd0000        	call	_clear_ind
9012                     ; 1444 		ind_hndl();
9014  1a90 cd077b        	call	_ind_hndl
9017  1a93 ac032503      	jpf	L1063
9018  1a97               L5663:
9019                     ; 1446 	else if(but==butM_)
9021  1a97 b600          	ld	a,_but
9022  1a99 a17d          	cp	a,#125
9023  1a9b 2638          	jrne	L3763
9024                     ; 1448 		if(sub_ind==11) //¬ыход 
9026  1a9d b662          	ld	a,_a_ind+1
9027  1a9f a10b          	cp	a,#11
9028  1aa1 260a          	jrne	L5763
9029                     ; 1450 			tree_down(0,0);
9031  1aa3 5f            	clrw	x
9032  1aa4 4f            	clr	a
9033  1aa5 95            	ld	xh,a
9034  1aa6 cd0000        	call	_tree_down
9037  1aa9 ac032503      	jpf	L1063
9038  1aad               L5763:
9039                     ; 1452 		else if(sub_ind==10) //¬ход в установку графика
9041  1aad b662          	ld	a,_a_ind+1
9042  1aaf a10a          	cp	a,#10
9043  1ab1 2610          	jrne	L1073
9044                     ; 1454 			tree_up(iSetTable,0,0,0);
9046  1ab3 4b00          	push	#0
9047  1ab5 4b00          	push	#0
9048  1ab7 5f            	clrw	x
9049  1ab8 a605          	ld	a,#5
9050  1aba 95            	ld	xh,a
9051  1abb cd0000        	call	_tree_up
9053  1abe 85            	popw	x
9055  1abf ac032503      	jpf	L1063
9056  1ac3               L1073:
9057                     ; 1458 			tree_up(iSet_,sub_ind,0,0);
9059  1ac3 4b00          	push	#0
9060  1ac5 4b00          	push	#0
9061  1ac7 b662          	ld	a,_a_ind+1
9062  1ac9 97            	ld	xl,a
9063  1aca a602          	ld	a,#2
9064  1acc 95            	ld	xh,a
9065  1acd cd0000        	call	_tree_up
9067  1ad0 85            	popw	x
9068  1ad1 ac032503      	jpf	L1063
9069  1ad5               L3763:
9070                     ; 1461 	else if(but==butOND_)
9072  1ad5 b600          	ld	a,_but
9073  1ad7 a176          	cp	a,#118
9074  1ad9 2703          	jreq	L065
9075  1adb cc2503        	jp	L1063
9076  1ade               L065:
9077                     ; 1463 		tree_up(iDefSet,0,0,0);
9079  1ade 4b00          	push	#0
9080  1ae0 4b00          	push	#0
9081  1ae2 5f            	clrw	x
9082  1ae3 a609          	ld	a,#9
9083  1ae5 95            	ld	xh,a
9084  1ae6 cd0000        	call	_tree_up
9086  1ae9 85            	popw	x
9087                     ; 1464 		ret_ind(5,0);
9089  1aea 5f            	clrw	x
9090  1aeb a605          	ld	a,#5
9091  1aed 95            	ld	xh,a
9092  1aee cd0000        	call	_ret_ind
9094  1af1 ac032503      	jpf	L1063
9095  1af5               L5563:
9096                     ; 1467 else if(ind==iSet_)
9098  1af5 b661          	ld	a,_a_ind
9099  1af7 a102          	cp	a,#2
9100  1af9 2703          	jreq	L265
9101  1afb cc20a0        	jp	L3173
9102  1afe               L265:
9103                     ; 1469 	if(but==butM_)
9105  1afe b600          	ld	a,_but
9106  1b00 a17d          	cp	a,#125
9107  1b02 260a          	jrne	L5173
9108                     ; 1471 		tree_down(0,0);
9110  1b04 5f            	clrw	x
9111  1b05 4f            	clr	a
9112  1b06 95            	ld	xh,a
9113  1b07 cd0000        	call	_tree_down
9116  1b0a ac032503      	jpf	L1063
9117  1b0e               L5173:
9118                     ; 1475 		if(sub_ind==0)
9120  1b0e 3d62          	tnz	_a_ind+1
9121  1b10 265f          	jrne	L1273
9122                     ; 1477 			if((but==butU)||(but==butU_))
9124  1b12 b600          	ld	a,_but
9125  1b14 a1fb          	cp	a,#251
9126  1b16 2706          	jreq	L5273
9128  1b18 b600          	ld	a,_but
9129  1b1a a17b          	cp	a,#123
9130  1b1c 2620          	jrne	L3273
9131  1b1e               L5273:
9132                     ; 1479 				MODE_EE++;
9134  1b1e c64046        	ld	a,_MODE_EE
9135  1b21 4c            	inc	a
9136  1b22 ae4046        	ldw	x,#_MODE_EE
9137  1b25 cd0000        	call	c_eewrc
9139                     ; 1480 				gran_char(&MODE_EE,1,3);
9141  1b28 4b03          	push	#3
9142  1b2a 4b01          	push	#1
9143  1b2c ae4046        	ldw	x,#_MODE_EE
9144  1b2f cd0000        	call	_gran_char
9146  1b32 85            	popw	x
9147                     ; 1481 				HUMAN_SET_EE=1;
9149  1b33 ae0001        	ldw	x,#1
9150  1b36 89            	pushw	x
9151  1b37 ae401e        	ldw	x,#_HUMAN_SET_EE
9152  1b3a cd0000        	call	c_eewrw
9154  1b3d 85            	popw	x
9155  1b3e               L3273:
9156                     ; 1483 			if((but==butD)||(but==butD_))
9158  1b3e b600          	ld	a,_but
9159  1b40 a1f7          	cp	a,#247
9160  1b42 2709          	jreq	L1373
9162  1b44 b600          	ld	a,_but
9163  1b46 a177          	cp	a,#119
9164  1b48 2703          	jreq	L465
9165  1b4a cc2503        	jp	L1063
9166  1b4d               L465:
9167  1b4d               L1373:
9168                     ; 1485 				MODE_EE--;
9170  1b4d c64046        	ld	a,_MODE_EE
9171  1b50 4a            	dec	a
9172  1b51 ae4046        	ldw	x,#_MODE_EE
9173  1b54 cd0000        	call	c_eewrc
9175                     ; 1486 				gran_char(&MODE_EE,1,3);
9177  1b57 4b03          	push	#3
9178  1b59 4b01          	push	#1
9179  1b5b ae4046        	ldw	x,#_MODE_EE
9180  1b5e cd0000        	call	_gran_char
9182  1b61 85            	popw	x
9183                     ; 1487 				HUMAN_SET_EE=1;
9185  1b62 ae0001        	ldw	x,#1
9186  1b65 89            	pushw	x
9187  1b66 ae401e        	ldw	x,#_HUMAN_SET_EE
9188  1b69 cd0000        	call	c_eewrw
9190  1b6c 85            	popw	x
9191  1b6d ac032503      	jpf	L1063
9192  1b71               L1273:
9193                     ; 1490 		else if(sub_ind==1)
9195  1b71 b662          	ld	a,_a_ind+1
9196  1b73 a101          	cp	a,#1
9197  1b75 2667          	jrne	L5373
9198                     ; 1492 			if((but==butU)||(but==butU_))
9200  1b77 b600          	ld	a,_but
9201  1b79 a1fb          	cp	a,#251
9202  1b7b 2706          	jreq	L1473
9204  1b7d b600          	ld	a,_but
9205  1b7f a17b          	cp	a,#123
9206  1b81 2624          	jrne	L7373
9207  1b83               L1473:
9208                     ; 1494 				NECC_TEMPER_WATER_EE++;
9210  1b83 c64045        	ld	a,_NECC_TEMPER_WATER_EE
9211  1b86 4c            	inc	a
9212  1b87 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9213  1b8a cd0000        	call	c_eewrc
9215                     ; 1495 				gran_char(&NECC_TEMPER_WATER_EE,5,85);
9217  1b8d 4b55          	push	#85
9218  1b8f 4b05          	push	#5
9219  1b91 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9220  1b94 cd0000        	call	_gran_char
9222  1b97 85            	popw	x
9223                     ; 1496 				speed=1;
9225  1b98 35010000      	mov	_speed,#1
9226                     ; 1497 				HUMAN_SET_EE=1;
9228  1b9c ae0001        	ldw	x,#1
9229  1b9f 89            	pushw	x
9230  1ba0 ae401e        	ldw	x,#_HUMAN_SET_EE
9231  1ba3 cd0000        	call	c_eewrw
9233  1ba6 85            	popw	x
9234  1ba7               L7373:
9235                     ; 1499 			if((but==butD)||(but==butD_))
9237  1ba7 b600          	ld	a,_but
9238  1ba9 a1f7          	cp	a,#247
9239  1bab 2709          	jreq	L5473
9241  1bad b600          	ld	a,_but
9242  1baf a177          	cp	a,#119
9243  1bb1 2703          	jreq	L665
9244  1bb3 cc2503        	jp	L1063
9245  1bb6               L665:
9246  1bb6               L5473:
9247                     ; 1501 				NECC_TEMPER_WATER_EE--;
9249  1bb6 c64045        	ld	a,_NECC_TEMPER_WATER_EE
9250  1bb9 4a            	dec	a
9251  1bba ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9252  1bbd cd0000        	call	c_eewrc
9254                     ; 1502 				gran_char(&NECC_TEMPER_WATER_EE,5,85);
9256  1bc0 4b55          	push	#85
9257  1bc2 4b05          	push	#5
9258  1bc4 ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
9259  1bc7 cd0000        	call	_gran_char
9261  1bca 85            	popw	x
9262                     ; 1503 				speed=1;
9264  1bcb 35010000      	mov	_speed,#1
9265                     ; 1504 				HUMAN_SET_EE=1;
9267  1bcf ae0001        	ldw	x,#1
9268  1bd2 89            	pushw	x
9269  1bd3 ae401e        	ldw	x,#_HUMAN_SET_EE
9270  1bd6 cd0000        	call	c_eewrw
9272  1bd9 85            	popw	x
9273  1bda ac032503      	jpf	L1063
9274  1bde               L5373:
9275                     ; 1507 		else if(sub_ind==2)
9277  1bde b662          	ld	a,_a_ind+1
9278  1be0 a102          	cp	a,#2
9279  1be2 2667          	jrne	L1573
9280                     ; 1509 			if((but==butU)||(but==butU_))
9282  1be4 b600          	ld	a,_but
9283  1be6 a1fb          	cp	a,#251
9284  1be8 2706          	jreq	L5573
9286  1bea b600          	ld	a,_but
9287  1bec a17b          	cp	a,#123
9288  1bee 2624          	jrne	L3573
9289  1bf0               L5573:
9290                     ; 1511 				NECC_TEMPER_AIR_EE++;
9292  1bf0 c64044        	ld	a,_NECC_TEMPER_AIR_EE
9293  1bf3 4c            	inc	a
9294  1bf4 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9295  1bf7 cd0000        	call	c_eewrc
9297                     ; 1512 				gran_char(&NECC_TEMPER_AIR_EE,5,35);
9299  1bfa 4b23          	push	#35
9300  1bfc 4b05          	push	#5
9301  1bfe ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9302  1c01 cd0000        	call	_gran_char
9304  1c04 85            	popw	x
9305                     ; 1513 				speed=1;
9307  1c05 35010000      	mov	_speed,#1
9308                     ; 1514 				HUMAN_SET_EE=1;
9310  1c09 ae0001        	ldw	x,#1
9311  1c0c 89            	pushw	x
9312  1c0d ae401e        	ldw	x,#_HUMAN_SET_EE
9313  1c10 cd0000        	call	c_eewrw
9315  1c13 85            	popw	x
9316  1c14               L3573:
9317                     ; 1516 			if((but==butD)||(but==butD_))
9319  1c14 b600          	ld	a,_but
9320  1c16 a1f7          	cp	a,#247
9321  1c18 2709          	jreq	L1673
9323  1c1a b600          	ld	a,_but
9324  1c1c a177          	cp	a,#119
9325  1c1e 2703          	jreq	L075
9326  1c20 cc2503        	jp	L1063
9327  1c23               L075:
9328  1c23               L1673:
9329                     ; 1518 				NECC_TEMPER_AIR_EE--;
9331  1c23 c64044        	ld	a,_NECC_TEMPER_AIR_EE
9332  1c26 4a            	dec	a
9333  1c27 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9334  1c2a cd0000        	call	c_eewrc
9336                     ; 1519 				gran_char(&NECC_TEMPER_AIR_EE,5,35);
9338  1c2d 4b23          	push	#35
9339  1c2f 4b05          	push	#5
9340  1c31 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
9341  1c34 cd0000        	call	_gran_char
9343  1c37 85            	popw	x
9344                     ; 1520 				speed=1;
9346  1c38 35010000      	mov	_speed,#1
9347                     ; 1521 				HUMAN_SET_EE=1;
9349  1c3c ae0001        	ldw	x,#1
9350  1c3f 89            	pushw	x
9351  1c40 ae401e        	ldw	x,#_HUMAN_SET_EE
9352  1c43 cd0000        	call	c_eewrw
9354  1c46 85            	popw	x
9355  1c47 ac032503      	jpf	L1063
9356  1c4b               L1573:
9357                     ; 1525 		else if(sub_ind==3)
9359  1c4b b662          	ld	a,_a_ind+1
9360  1c4d a103          	cp	a,#3
9361  1c4f 2667          	jrne	L5673
9362                     ; 1527 			if((but==butU)||(but==butU_))
9364  1c51 b600          	ld	a,_but
9365  1c53 a1fb          	cp	a,#251
9366  1c55 2706          	jreq	L1773
9368  1c57 b600          	ld	a,_but
9369  1c59 a17b          	cp	a,#123
9370  1c5b 2624          	jrne	L7673
9371  1c5d               L1773:
9372                     ; 1529 				MAX_POWER_EE++;
9374  1c5d c64047        	ld	a,_MAX_POWER_EE
9375  1c60 4c            	inc	a
9376  1c61 ae4047        	ldw	x,#_MAX_POWER_EE
9377  1c64 cd0000        	call	c_eewrc
9379                     ; 1530 				gran_char(&MAX_POWER_EE,1,3);
9381  1c67 4b03          	push	#3
9382  1c69 4b01          	push	#1
9383  1c6b ae4047        	ldw	x,#_MAX_POWER_EE
9384  1c6e cd0000        	call	_gran_char
9386  1c71 85            	popw	x
9387                     ; 1531 				speed=1;
9389  1c72 35010000      	mov	_speed,#1
9390                     ; 1532 				HUMAN_SET_EE=1;
9392  1c76 ae0001        	ldw	x,#1
9393  1c79 89            	pushw	x
9394  1c7a ae401e        	ldw	x,#_HUMAN_SET_EE
9395  1c7d cd0000        	call	c_eewrw
9397  1c80 85            	popw	x
9398  1c81               L7673:
9399                     ; 1534 			if((but==butD)||(but==butD_))
9401  1c81 b600          	ld	a,_but
9402  1c83 a1f7          	cp	a,#247
9403  1c85 2709          	jreq	L5773
9405  1c87 b600          	ld	a,_but
9406  1c89 a177          	cp	a,#119
9407  1c8b 2703          	jreq	L275
9408  1c8d cc2503        	jp	L1063
9409  1c90               L275:
9410  1c90               L5773:
9411                     ; 1536 				MAX_POWER_EE--;
9413  1c90 c64047        	ld	a,_MAX_POWER_EE
9414  1c93 4a            	dec	a
9415  1c94 ae4047        	ldw	x,#_MAX_POWER_EE
9416  1c97 cd0000        	call	c_eewrc
9418                     ; 1537 				gran_char(&MAX_POWER_EE,1,3);
9420  1c9a 4b03          	push	#3
9421  1c9c 4b01          	push	#1
9422  1c9e ae4047        	ldw	x,#_MAX_POWER_EE
9423  1ca1 cd0000        	call	_gran_char
9425  1ca4 85            	popw	x
9426                     ; 1538 				speed=1;
9428  1ca5 35010000      	mov	_speed,#1
9429                     ; 1539 				HUMAN_SET_EE=1;
9431  1ca9 ae0001        	ldw	x,#1
9432  1cac 89            	pushw	x
9433  1cad ae401e        	ldw	x,#_HUMAN_SET_EE
9434  1cb0 cd0000        	call	c_eewrw
9436  1cb3 85            	popw	x
9437  1cb4 ac032503      	jpf	L1063
9438  1cb8               L5673:
9439                     ; 1542 		else if(sub_ind==4)
9441  1cb8 b662          	ld	a,_a_ind+1
9442  1cba a104          	cp	a,#4
9443  1cbc 2703          	jreq	L475
9444  1cbe cc1d5e        	jp	L1004
9445  1cc1               L475:
9446                     ; 1545 			temp=time_year;
9448  1cc1 b60c          	ld	a,_time_year
9449  1cc3 6b03          	ld	(OFST+0,sp),a
9450                     ; 1547 			if((but==butU)||(but==butU_))
9452  1cc5 b600          	ld	a,_but
9453  1cc7 a1fb          	cp	a,#251
9454  1cc9 2706          	jreq	L5004
9456  1ccb b600          	ld	a,_but
9457  1ccd a17b          	cp	a,#123
9458  1ccf 263d          	jrne	L3004
9459  1cd1               L5004:
9460                     ; 1549 				temp++;
9462  1cd1 0c03          	inc	(OFST+0,sp)
9463                     ; 1550 				gran_char(&temp,0,99);
9465  1cd3 4b63          	push	#99
9466  1cd5 4b00          	push	#0
9467  1cd7 96            	ldw	x,sp
9468  1cd8 1c0005        	addw	x,#OFST+2
9469  1cdb cd0000        	call	_gran_char
9471  1cde 85            	popw	x
9472                     ; 1551 				_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
9474  1cdf 7b03          	ld	a,(OFST+0,sp)
9475  1ce1 ae000a        	ldw	x,#10
9476  1ce4 51            	exgw	x,y
9477  1ce5 5f            	clrw	x
9478  1ce6 4d            	tnz	a
9479  1ce7 2a01          	jrpl	L414
9480  1ce9 5a            	decw	x
9481  1cea               L414:
9482  1cea 02            	rlwa	x,a
9483  1ceb cd0000        	call	c_idiv
9485  1cee 909f          	ld	a,yl
9486  1cf0 6b01          	ld	(OFST-2,sp),a
9487  1cf2 7b03          	ld	a,(OFST+0,sp)
9488  1cf4 ae000a        	ldw	x,#10
9489  1cf7 51            	exgw	x,y
9490  1cf8 5f            	clrw	x
9491  1cf9 4d            	tnz	a
9492  1cfa 2a01          	jrpl	L614
9493  1cfc 5a            	decw	x
9494  1cfd               L614:
9495  1cfd 02            	rlwa	x,a
9496  1cfe cd0000        	call	c_idiv
9498  1d01 9f            	ld	a,xl
9499  1d02 4e            	swap	a
9500  1d03 a4f0          	and	a,#240
9501  1d05 1b01          	add	a,(OFST-2,sp)
9502  1d07 97            	ld	xl,a
9503  1d08 a606          	ld	a,#6
9504  1d0a 95            	ld	xh,a
9505  1d0b cd0000        	call	__ds1307_write_byte
9507  1d0e               L3004:
9508                     ; 1554 			if((but==butD)||(but==butD_))
9510  1d0e b600          	ld	a,_but
9511  1d10 a1f7          	cp	a,#247
9512  1d12 2709          	jreq	L1104
9514  1d14 b600          	ld	a,_but
9515  1d16 a177          	cp	a,#119
9516  1d18 2703          	jreq	L675
9517  1d1a cc2503        	jp	L1063
9518  1d1d               L675:
9519  1d1d               L1104:
9520                     ; 1556 				temp--;
9522  1d1d 0a03          	dec	(OFST+0,sp)
9523                     ; 1557 				gran_char(&temp,0,99);
9525  1d1f 4b63          	push	#99
9526  1d21 4b00          	push	#0
9527  1d23 96            	ldw	x,sp
9528  1d24 1c0005        	addw	x,#OFST+2
9529  1d27 cd0000        	call	_gran_char
9531  1d2a 85            	popw	x
9532                     ; 1558 				_ds1307_write_byte(6,((temp/10)<<4)+(temp%10));
9534  1d2b 7b03          	ld	a,(OFST+0,sp)
9535  1d2d ae000a        	ldw	x,#10
9536  1d30 51            	exgw	x,y
9537  1d31 5f            	clrw	x
9538  1d32 4d            	tnz	a
9539  1d33 2a01          	jrpl	L024
9540  1d35 5a            	decw	x
9541  1d36               L024:
9542  1d36 02            	rlwa	x,a
9543  1d37 cd0000        	call	c_idiv
9545  1d3a 909f          	ld	a,yl
9546  1d3c 6b01          	ld	(OFST-2,sp),a
9547  1d3e 7b03          	ld	a,(OFST+0,sp)
9548  1d40 ae000a        	ldw	x,#10
9549  1d43 51            	exgw	x,y
9550  1d44 5f            	clrw	x
9551  1d45 4d            	tnz	a
9552  1d46 2a01          	jrpl	L224
9553  1d48 5a            	decw	x
9554  1d49               L224:
9555  1d49 02            	rlwa	x,a
9556  1d4a cd0000        	call	c_idiv
9558  1d4d 9f            	ld	a,xl
9559  1d4e 4e            	swap	a
9560  1d4f a4f0          	and	a,#240
9561  1d51 1b01          	add	a,(OFST-2,sp)
9562  1d53 97            	ld	xl,a
9563  1d54 a606          	ld	a,#6
9564  1d56 95            	ld	xh,a
9565  1d57 cd0000        	call	__ds1307_write_byte
9567  1d5a ac032503      	jpf	L1063
9568  1d5e               L1004:
9569                     ; 1561 		else if(sub_ind==5)
9571  1d5e b662          	ld	a,_a_ind+1
9572  1d60 a105          	cp	a,#5
9573  1d62 2703          	jreq	L006
9574  1d64 cc1e04        	jp	L5104
9575  1d67               L006:
9576                     ; 1564 			temp=time_month;
9578  1d67 b60d          	ld	a,_time_month
9579  1d69 6b03          	ld	(OFST+0,sp),a
9580                     ; 1566 			if((but==butU)||(but==butU_))
9582  1d6b b600          	ld	a,_but
9583  1d6d a1fb          	cp	a,#251
9584  1d6f 2706          	jreq	L1204
9586  1d71 b600          	ld	a,_but
9587  1d73 a17b          	cp	a,#123
9588  1d75 263d          	jrne	L7104
9589  1d77               L1204:
9590                     ; 1568 				temp++;
9592  1d77 0c03          	inc	(OFST+0,sp)
9593                     ; 1569 				gran_ring_char(&temp,1,12);
9595  1d79 4b0c          	push	#12
9596  1d7b 4b01          	push	#1
9597  1d7d 96            	ldw	x,sp
9598  1d7e 1c0005        	addw	x,#OFST+2
9599  1d81 cd0000        	call	_gran_ring_char
9601  1d84 85            	popw	x
9602                     ; 1570 				_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));
9604  1d85 7b03          	ld	a,(OFST+0,sp)
9605  1d87 ae000a        	ldw	x,#10
9606  1d8a 51            	exgw	x,y
9607  1d8b 5f            	clrw	x
9608  1d8c 4d            	tnz	a
9609  1d8d 2a01          	jrpl	L424
9610  1d8f 5a            	decw	x
9611  1d90               L424:
9612  1d90 02            	rlwa	x,a
9613  1d91 cd0000        	call	c_idiv
9615  1d94 909f          	ld	a,yl
9616  1d96 6b01          	ld	(OFST-2,sp),a
9617  1d98 7b03          	ld	a,(OFST+0,sp)
9618  1d9a ae000a        	ldw	x,#10
9619  1d9d 51            	exgw	x,y
9620  1d9e 5f            	clrw	x
9621  1d9f 4d            	tnz	a
9622  1da0 2a01          	jrpl	L624
9623  1da2 5a            	decw	x
9624  1da3               L624:
9625  1da3 02            	rlwa	x,a
9626  1da4 cd0000        	call	c_idiv
9628  1da7 9f            	ld	a,xl
9629  1da8 4e            	swap	a
9630  1da9 a4f0          	and	a,#240
9631  1dab 1b01          	add	a,(OFST-2,sp)
9632  1dad 97            	ld	xl,a
9633  1dae a605          	ld	a,#5
9634  1db0 95            	ld	xh,a
9635  1db1 cd0000        	call	__ds1307_write_byte
9637  1db4               L7104:
9638                     ; 1573 			if((but==butD)||(but==butD_))
9640  1db4 b600          	ld	a,_but
9641  1db6 a1f7          	cp	a,#247
9642  1db8 2709          	jreq	L5204
9644  1dba b600          	ld	a,_but
9645  1dbc a177          	cp	a,#119
9646  1dbe 2703          	jreq	L206
9647  1dc0 cc2503        	jp	L1063
9648  1dc3               L206:
9649  1dc3               L5204:
9650                     ; 1575 				temp--;
9652  1dc3 0a03          	dec	(OFST+0,sp)
9653                     ; 1576 				gran_ring_char(&temp,1,12);
9655  1dc5 4b0c          	push	#12
9656  1dc7 4b01          	push	#1
9657  1dc9 96            	ldw	x,sp
9658  1dca 1c0005        	addw	x,#OFST+2
9659  1dcd cd0000        	call	_gran_ring_char
9661  1dd0 85            	popw	x
9662                     ; 1577 				_ds1307_write_byte(5,((temp/10)<<4)+(temp%10));
9664  1dd1 7b03          	ld	a,(OFST+0,sp)
9665  1dd3 ae000a        	ldw	x,#10
9666  1dd6 51            	exgw	x,y
9667  1dd7 5f            	clrw	x
9668  1dd8 4d            	tnz	a
9669  1dd9 2a01          	jrpl	L034
9670  1ddb 5a            	decw	x
9671  1ddc               L034:
9672  1ddc 02            	rlwa	x,a
9673  1ddd cd0000        	call	c_idiv
9675  1de0 909f          	ld	a,yl
9676  1de2 6b01          	ld	(OFST-2,sp),a
9677  1de4 7b03          	ld	a,(OFST+0,sp)
9678  1de6 ae000a        	ldw	x,#10
9679  1de9 51            	exgw	x,y
9680  1dea 5f            	clrw	x
9681  1deb 4d            	tnz	a
9682  1dec 2a01          	jrpl	L234
9683  1dee 5a            	decw	x
9684  1def               L234:
9685  1def 02            	rlwa	x,a
9686  1df0 cd0000        	call	c_idiv
9688  1df3 9f            	ld	a,xl
9689  1df4 4e            	swap	a
9690  1df5 a4f0          	and	a,#240
9691  1df7 1b01          	add	a,(OFST-2,sp)
9692  1df9 97            	ld	xl,a
9693  1dfa a605          	ld	a,#5
9694  1dfc 95            	ld	xh,a
9695  1dfd cd0000        	call	__ds1307_write_byte
9697  1e00 ac032503      	jpf	L1063
9698  1e04               L5104:
9699                     ; 1580 		else if(sub_ind==6)
9701  1e04 b662          	ld	a,_a_ind+1
9702  1e06 a106          	cp	a,#6
9703  1e08 2703          	jreq	L406
9704  1e0a cc1ee6        	jp	L1304
9705  1e0d               L406:
9706                     ; 1583 			temp=time_date;
9708  1e0d b603          	ld	a,_time_date
9709  1e0f 6b03          	ld	(OFST+0,sp),a
9710                     ; 1584 			max_day=31;
9712  1e11 a61f          	ld	a,#31
9713  1e13 6b02          	ld	(OFST-1,sp),a
9714                     ; 1585 			if((time_month==4)||(time_month==6)||(time_month==9)||(time_month==11))max_day=30;
9716  1e15 b60d          	ld	a,_time_month
9717  1e17 a104          	cp	a,#4
9718  1e19 2712          	jreq	L5304
9720  1e1b b60d          	ld	a,_time_month
9721  1e1d a106          	cp	a,#6
9722  1e1f 270c          	jreq	L5304
9724  1e21 b60d          	ld	a,_time_month
9725  1e23 a109          	cp	a,#9
9726  1e25 2706          	jreq	L5304
9728  1e27 b60d          	ld	a,_time_month
9729  1e29 a10b          	cp	a,#11
9730  1e2b 2612          	jrne	L3304
9731  1e2d               L5304:
9734  1e2d a61e          	ld	a,#30
9735  1e2f 6b02          	ld	(OFST-1,sp),a
9737  1e31               L3404:
9738                     ; 1591 			if((but==butU)||(but==butU_))
9740  1e31 b600          	ld	a,_but
9741  1e33 a1fb          	cp	a,#251
9742  1e35 2720          	jreq	L5504
9744  1e37 b600          	ld	a,_but
9745  1e39 a17b          	cp	a,#123
9746  1e3b 2658          	jrne	L3504
9747  1e3d 2018          	jra	L5504
9748  1e3f               L3304:
9749                     ; 1586 			else if(time_month==2)
9751  1e3f b60d          	ld	a,_time_month
9752  1e41 a102          	cp	a,#2
9753  1e43 26ec          	jrne	L3404
9754                     ; 1588 				if((time_year%4)==0)max_day=29;
9756  1e45 b60c          	ld	a,_time_year
9757  1e47 a503          	bcp	a,#3
9758  1e49 2606          	jrne	L7404
9761  1e4b a61d          	ld	a,#29
9762  1e4d 6b02          	ld	(OFST-1,sp),a
9764  1e4f 20e0          	jra	L3404
9765  1e51               L7404:
9766                     ; 1589 				else max_day=28;
9768  1e51 a61c          	ld	a,#28
9769  1e53 6b02          	ld	(OFST-1,sp),a
9770  1e55 20da          	jra	L3404
9771  1e57               L5504:
9772                     ; 1593 				temp++;
9774  1e57 0c03          	inc	(OFST+0,sp)
9775                     ; 1594 				gran_ring_char(&temp,1,max_day);
9777  1e59 7b02          	ld	a,(OFST-1,sp)
9778  1e5b 88            	push	a
9779  1e5c 4b01          	push	#1
9780  1e5e 96            	ldw	x,sp
9781  1e5f 1c0005        	addw	x,#OFST+2
9782  1e62 cd0000        	call	_gran_ring_char
9784  1e65 85            	popw	x
9785                     ; 1595 				_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
9787  1e66 7b03          	ld	a,(OFST+0,sp)
9788  1e68 ae000a        	ldw	x,#10
9789  1e6b 51            	exgw	x,y
9790  1e6c 5f            	clrw	x
9791  1e6d 4d            	tnz	a
9792  1e6e 2a01          	jrpl	L434
9793  1e70 5a            	decw	x
9794  1e71               L434:
9795  1e71 02            	rlwa	x,a
9796  1e72 cd0000        	call	c_idiv
9798  1e75 909f          	ld	a,yl
9799  1e77 6b01          	ld	(OFST-2,sp),a
9800  1e79 7b03          	ld	a,(OFST+0,sp)
9801  1e7b ae000a        	ldw	x,#10
9802  1e7e 51            	exgw	x,y
9803  1e7f 5f            	clrw	x
9804  1e80 4d            	tnz	a
9805  1e81 2a01          	jrpl	L634
9806  1e83 5a            	decw	x
9807  1e84               L634:
9808  1e84 02            	rlwa	x,a
9809  1e85 cd0000        	call	c_idiv
9811  1e88 9f            	ld	a,xl
9812  1e89 4e            	swap	a
9813  1e8a a4f0          	and	a,#240
9814  1e8c 1b01          	add	a,(OFST-2,sp)
9815  1e8e 97            	ld	xl,a
9816  1e8f a604          	ld	a,#4
9817  1e91 95            	ld	xh,a
9818  1e92 cd0000        	call	__ds1307_write_byte
9820  1e95               L3504:
9821                     ; 1598 			if((but==butD)||(but==butD_))
9823  1e95 b600          	ld	a,_but
9824  1e97 a1f7          	cp	a,#247
9825  1e99 2709          	jreq	L1604
9827  1e9b b600          	ld	a,_but
9828  1e9d a177          	cp	a,#119
9829  1e9f 2703          	jreq	L606
9830  1ea1 cc2503        	jp	L1063
9831  1ea4               L606:
9832  1ea4               L1604:
9833                     ; 1600 				temp--;
9835  1ea4 0a03          	dec	(OFST+0,sp)
9836                     ; 1601 				gran_ring_char(&temp,1,max_day);
9838  1ea6 7b02          	ld	a,(OFST-1,sp)
9839  1ea8 88            	push	a
9840  1ea9 4b01          	push	#1
9841  1eab 96            	ldw	x,sp
9842  1eac 1c0005        	addw	x,#OFST+2
9843  1eaf cd0000        	call	_gran_ring_char
9845  1eb2 85            	popw	x
9846                     ; 1602 				_ds1307_write_byte(4,((temp/10)<<4)+(temp%10));
9848  1eb3 7b03          	ld	a,(OFST+0,sp)
9849  1eb5 ae000a        	ldw	x,#10
9850  1eb8 51            	exgw	x,y
9851  1eb9 5f            	clrw	x
9852  1eba 4d            	tnz	a
9853  1ebb 2a01          	jrpl	L044
9854  1ebd 5a            	decw	x
9855  1ebe               L044:
9856  1ebe 02            	rlwa	x,a
9857  1ebf cd0000        	call	c_idiv
9859  1ec2 909f          	ld	a,yl
9860  1ec4 6b01          	ld	(OFST-2,sp),a
9861  1ec6 7b03          	ld	a,(OFST+0,sp)
9862  1ec8 ae000a        	ldw	x,#10
9863  1ecb 51            	exgw	x,y
9864  1ecc 5f            	clrw	x
9865  1ecd 4d            	tnz	a
9866  1ece 2a01          	jrpl	L244
9867  1ed0 5a            	decw	x
9868  1ed1               L244:
9869  1ed1 02            	rlwa	x,a
9870  1ed2 cd0000        	call	c_idiv
9872  1ed5 9f            	ld	a,xl
9873  1ed6 4e            	swap	a
9874  1ed7 a4f0          	and	a,#240
9875  1ed9 1b01          	add	a,(OFST-2,sp)
9876  1edb 97            	ld	xl,a
9877  1edc a604          	ld	a,#4
9878  1ede 95            	ld	xh,a
9879  1edf cd0000        	call	__ds1307_write_byte
9881  1ee2 ac032503      	jpf	L1063
9882  1ee6               L1304:
9883                     ; 1605 		else if(sub_ind==7)
9885  1ee6 b662          	ld	a,_a_ind+1
9886  1ee8 a107          	cp	a,#7
9887  1eea 2703          	jreq	L016
9888  1eec cc1f90        	jp	L5604
9889  1eef               L016:
9890                     ; 1608 			temp=time_hour;
9892  1eef b60f          	ld	a,_time_hour
9893  1ef1 6b03          	ld	(OFST+0,sp),a
9894                     ; 1610 			if((but==butU)||(but==butU_))
9896  1ef3 b600          	ld	a,_but
9897  1ef5 a1fb          	cp	a,#251
9898  1ef7 2706          	jreq	L1704
9900  1ef9 b600          	ld	a,_but
9901  1efb a17b          	cp	a,#123
9902  1efd 263f          	jrne	L7604
9903  1eff               L1704:
9904                     ; 1612 				temp++;
9906  1eff 0c03          	inc	(OFST+0,sp)
9907                     ; 1613 				gran_ring_char(&temp,0,23);
9909  1f01 4b17          	push	#23
9910  1f03 4b00          	push	#0
9911  1f05 96            	ldw	x,sp
9912  1f06 1c0005        	addw	x,#OFST+2
9913  1f09 cd0000        	call	_gran_ring_char
9915  1f0c 85            	popw	x
9916                     ; 1614 				_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);
9918  1f0d 7b03          	ld	a,(OFST+0,sp)
9919  1f0f ae000a        	ldw	x,#10
9920  1f12 51            	exgw	x,y
9921  1f13 5f            	clrw	x
9922  1f14 4d            	tnz	a
9923  1f15 2a01          	jrpl	L444
9924  1f17 5a            	decw	x
9925  1f18               L444:
9926  1f18 02            	rlwa	x,a
9927  1f19 cd0000        	call	c_idiv
9929  1f1c 909f          	ld	a,yl
9930  1f1e 6b01          	ld	(OFST-2,sp),a
9931  1f20 7b03          	ld	a,(OFST+0,sp)
9932  1f22 ae000a        	ldw	x,#10
9933  1f25 51            	exgw	x,y
9934  1f26 5f            	clrw	x
9935  1f27 4d            	tnz	a
9936  1f28 2a01          	jrpl	L644
9937  1f2a 5a            	decw	x
9938  1f2b               L644:
9939  1f2b 02            	rlwa	x,a
9940  1f2c cd0000        	call	c_idiv
9942  1f2f 9f            	ld	a,xl
9943  1f30 4e            	swap	a
9944  1f31 a4f0          	and	a,#240
9945  1f33 1b01          	add	a,(OFST-2,sp)
9946  1f35 a4bf          	and	a,#191
9947  1f37 97            	ld	xl,a
9948  1f38 a602          	ld	a,#2
9949  1f3a 95            	ld	xh,a
9950  1f3b cd0000        	call	__ds1307_write_byte
9952  1f3e               L7604:
9953                     ; 1617 			if((but==butD)||(but==butD_))
9955  1f3e b600          	ld	a,_but
9956  1f40 a1f7          	cp	a,#247
9957  1f42 2709          	jreq	L5704
9959  1f44 b600          	ld	a,_but
9960  1f46 a177          	cp	a,#119
9961  1f48 2703          	jreq	L216
9962  1f4a cc2503        	jp	L1063
9963  1f4d               L216:
9964  1f4d               L5704:
9965                     ; 1619 				temp--;
9967  1f4d 0a03          	dec	(OFST+0,sp)
9968                     ; 1620 				gran_ring_char(&temp,0,23);
9970  1f4f 4b17          	push	#23
9971  1f51 4b00          	push	#0
9972  1f53 96            	ldw	x,sp
9973  1f54 1c0005        	addw	x,#OFST+2
9974  1f57 cd0000        	call	_gran_ring_char
9976  1f5a 85            	popw	x
9977                     ; 1621 				_ds1307_write_byte(2,(((temp/10)<<4)+(temp%10))&0b10111111);
9979  1f5b 7b03          	ld	a,(OFST+0,sp)
9980  1f5d ae000a        	ldw	x,#10
9981  1f60 51            	exgw	x,y
9982  1f61 5f            	clrw	x
9983  1f62 4d            	tnz	a
9984  1f63 2a01          	jrpl	L054
9985  1f65 5a            	decw	x
9986  1f66               L054:
9987  1f66 02            	rlwa	x,a
9988  1f67 cd0000        	call	c_idiv
9990  1f6a 909f          	ld	a,yl
9991  1f6c 6b01          	ld	(OFST-2,sp),a
9992  1f6e 7b03          	ld	a,(OFST+0,sp)
9993  1f70 ae000a        	ldw	x,#10
9994  1f73 51            	exgw	x,y
9995  1f74 5f            	clrw	x
9996  1f75 4d            	tnz	a
9997  1f76 2a01          	jrpl	L254
9998  1f78 5a            	decw	x
9999  1f79               L254:
10000  1f79 02            	rlwa	x,a
10001  1f7a cd0000        	call	c_idiv
10003  1f7d 9f            	ld	a,xl
10004  1f7e 4e            	swap	a
10005  1f7f a4f0          	and	a,#240
10006  1f81 1b01          	add	a,(OFST-2,sp)
10007  1f83 a4bf          	and	a,#191
10008  1f85 97            	ld	xl,a
10009  1f86 a602          	ld	a,#2
10010  1f88 95            	ld	xh,a
10011  1f89 cd0000        	call	__ds1307_write_byte
10013  1f8c ac032503      	jpf	L1063
10014  1f90               L5604:
10015                     ; 1624 		else if(sub_ind==8)
10017  1f90 b662          	ld	a,_a_ind+1
10018  1f92 a108          	cp	a,#8
10019  1f94 2703          	jreq	L416
10020  1f96 cc2042        	jp	L1014
10021  1f99               L416:
10022                     ; 1627 			temp=time_min;
10024  1f99 b610          	ld	a,_time_min
10025  1f9b 6b03          	ld	(OFST+0,sp),a
10026                     ; 1629 			if((but==butU)||(but==butU_))
10028  1f9d b600          	ld	a,_but
10029  1f9f a1fb          	cp	a,#251
10030  1fa1 2706          	jreq	L5014
10032  1fa3 b600          	ld	a,_but
10033  1fa5 a17b          	cp	a,#123
10034  1fa7 2643          	jrne	L3014
10035  1fa9               L5014:
10036                     ; 1631 				temp++;
10038  1fa9 0c03          	inc	(OFST+0,sp)
10039                     ; 1632 				gran_ring_char(&temp,0,59);
10041  1fab 4b3b          	push	#59
10042  1fad 4b00          	push	#0
10043  1faf 96            	ldw	x,sp
10044  1fb0 1c0005        	addw	x,#OFST+2
10045  1fb3 cd0000        	call	_gran_ring_char
10047  1fb6 85            	popw	x
10048                     ; 1633 				_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));
10050  1fb7 7b03          	ld	a,(OFST+0,sp)
10051  1fb9 ae000a        	ldw	x,#10
10052  1fbc 51            	exgw	x,y
10053  1fbd 5f            	clrw	x
10054  1fbe 4d            	tnz	a
10055  1fbf 2a01          	jrpl	L454
10056  1fc1 5a            	decw	x
10057  1fc2               L454:
10058  1fc2 02            	rlwa	x,a
10059  1fc3 cd0000        	call	c_idiv
10061  1fc6 909f          	ld	a,yl
10062  1fc8 6b01          	ld	(OFST-2,sp),a
10063  1fca 7b03          	ld	a,(OFST+0,sp)
10064  1fcc ae000a        	ldw	x,#10
10065  1fcf 51            	exgw	x,y
10066  1fd0 5f            	clrw	x
10067  1fd1 4d            	tnz	a
10068  1fd2 2a01          	jrpl	L654
10069  1fd4 5a            	decw	x
10070  1fd5               L654:
10071  1fd5 02            	rlwa	x,a
10072  1fd6 cd0000        	call	c_idiv
10074  1fd9 9f            	ld	a,xl
10075  1fda 4e            	swap	a
10076  1fdb a4f0          	and	a,#240
10077  1fdd 1b01          	add	a,(OFST-2,sp)
10078  1fdf 97            	ld	xl,a
10079  1fe0 a601          	ld	a,#1
10080  1fe2 95            	ld	xh,a
10081  1fe3 cd0000        	call	__ds1307_write_byte
10083                     ; 1634 				_ds1307_write_byte(0,0);
10085  1fe6 5f            	clrw	x
10086  1fe7 4f            	clr	a
10087  1fe8 95            	ld	xh,a
10088  1fe9 cd0000        	call	__ds1307_write_byte
10090  1fec               L3014:
10091                     ; 1636 			if((but==butD)||(but==butD_))
10093  1fec b600          	ld	a,_but
10094  1fee a1f7          	cp	a,#247
10095  1ff0 2709          	jreq	L1114
10097  1ff2 b600          	ld	a,_but
10098  1ff4 a177          	cp	a,#119
10099  1ff6 2703          	jreq	L616
10100  1ff8 cc2503        	jp	L1063
10101  1ffb               L616:
10102  1ffb               L1114:
10103                     ; 1638 				temp--;
10105  1ffb 0a03          	dec	(OFST+0,sp)
10106                     ; 1639 				gran_ring_char(&temp,0,59);
10108  1ffd 4b3b          	push	#59
10109  1fff 4b00          	push	#0
10110  2001 96            	ldw	x,sp
10111  2002 1c0005        	addw	x,#OFST+2
10112  2005 cd0000        	call	_gran_ring_char
10114  2008 85            	popw	x
10115                     ; 1640 				_ds1307_write_byte(1,((temp/10)<<4)+(temp%10));
10117  2009 7b03          	ld	a,(OFST+0,sp)
10118  200b ae000a        	ldw	x,#10
10119  200e 51            	exgw	x,y
10120  200f 5f            	clrw	x
10121  2010 4d            	tnz	a
10122  2011 2a01          	jrpl	L064
10123  2013 5a            	decw	x
10124  2014               L064:
10125  2014 02            	rlwa	x,a
10126  2015 cd0000        	call	c_idiv
10128  2018 909f          	ld	a,yl
10129  201a 6b01          	ld	(OFST-2,sp),a
10130  201c 7b03          	ld	a,(OFST+0,sp)
10131  201e ae000a        	ldw	x,#10
10132  2021 51            	exgw	x,y
10133  2022 5f            	clrw	x
10134  2023 4d            	tnz	a
10135  2024 2a01          	jrpl	L264
10136  2026 5a            	decw	x
10137  2027               L264:
10138  2027 02            	rlwa	x,a
10139  2028 cd0000        	call	c_idiv
10141  202b 9f            	ld	a,xl
10142  202c 4e            	swap	a
10143  202d a4f0          	and	a,#240
10144  202f 1b01          	add	a,(OFST-2,sp)
10145  2031 97            	ld	xl,a
10146  2032 a601          	ld	a,#1
10147  2034 95            	ld	xh,a
10148  2035 cd0000        	call	__ds1307_write_byte
10150                     ; 1641 				_ds1307_write_byte(0,0);
10152  2038 5f            	clrw	x
10153  2039 4f            	clr	a
10154  203a 95            	ld	xh,a
10155  203b cd0000        	call	__ds1307_write_byte
10157  203e ac032503      	jpf	L1063
10158  2042               L1014:
10159                     ; 1644 		else if(sub_ind==9)
10161  2042 b662          	ld	a,_a_ind+1
10162  2044 a109          	cp	a,#9
10163  2046 2703          	jreq	L026
10164  2048 cc2503        	jp	L1063
10165  204b               L026:
10166                     ; 1647 			temp=time_day_of_week;
10168  204b b60e          	ld	a,_time_day_of_week
10169  204d 6b03          	ld	(OFST+0,sp),a
10170                     ; 1649 			if((but==butU)||(but==butU_))
10172  204f b600          	ld	a,_but
10173  2051 a1fb          	cp	a,#251
10174  2053 2706          	jreq	L1214
10176  2055 b600          	ld	a,_but
10177  2057 a17b          	cp	a,#123
10178  2059 2619          	jrne	L7114
10179  205b               L1214:
10180                     ; 1651 				temp++;
10182  205b 0c03          	inc	(OFST+0,sp)
10183                     ; 1652 				gran_ring_char(&temp,1,7);
10185  205d 4b07          	push	#7
10186  205f 4b01          	push	#1
10187  2061 96            	ldw	x,sp
10188  2062 1c0005        	addw	x,#OFST+2
10189  2065 cd0000        	call	_gran_ring_char
10191  2068 85            	popw	x
10192                     ; 1653 				_ds1307_write_byte(3,temp&0x07);
10194  2069 7b03          	ld	a,(OFST+0,sp)
10195  206b a407          	and	a,#7
10196  206d 97            	ld	xl,a
10197  206e a603          	ld	a,#3
10198  2070 95            	ld	xh,a
10199  2071 cd0000        	call	__ds1307_write_byte
10201  2074               L7114:
10202                     ; 1655 			if((but==butD)||(but==butD_))
10204  2074 b600          	ld	a,_but
10205  2076 a1f7          	cp	a,#247
10206  2078 2709          	jreq	L5214
10208  207a b600          	ld	a,_but
10209  207c a177          	cp	a,#119
10210  207e 2703          	jreq	L226
10211  2080 cc2503        	jp	L1063
10212  2083               L226:
10213  2083               L5214:
10214                     ; 1657 				temp--;
10216  2083 0a03          	dec	(OFST+0,sp)
10217                     ; 1658 				gran_ring_char(&temp,1,7);
10219  2085 4b07          	push	#7
10220  2087 4b01          	push	#1
10221  2089 96            	ldw	x,sp
10222  208a 1c0005        	addw	x,#OFST+2
10223  208d cd0000        	call	_gran_ring_char
10225  2090 85            	popw	x
10226                     ; 1659 				_ds1307_write_byte(3,temp&0x07);
10228  2091 7b03          	ld	a,(OFST+0,sp)
10229  2093 a407          	and	a,#7
10230  2095 97            	ld	xl,a
10231  2096 a603          	ld	a,#3
10232  2098 95            	ld	xh,a
10233  2099 cd0000        	call	__ds1307_write_byte
10235  209c ac032503      	jpf	L1063
10236  20a0               L3173:
10237                     ; 1664 else if(ind==iSetTable)
10239  20a0 b661          	ld	a,_a_ind
10240  20a2 a105          	cp	a,#5
10241  20a4 2703          	jreq	L426
10242  20a6 cc213a        	jp	L1314
10243  20a9               L426:
10244                     ; 1666 	if((but==butU)/*||(but==butU_)*/)
10246  20a9 b600          	ld	a,_but
10247  20ab a1fb          	cp	a,#251
10248  20ad 2617          	jrne	L3314
10249                     ; 1668 		sub_ind++;
10251  20af 3c62          	inc	_a_ind+1
10252                     ; 1669 		gran_char(&sub_ind,0,34);
10254  20b1 4b22          	push	#34
10255  20b3 4b00          	push	#0
10256  20b5 ae0062        	ldw	x,#_a_ind+1
10257  20b8 cd0000        	call	_gran_char
10259  20bb 85            	popw	x
10260                     ; 1670 		clear_ind();
10262  20bc cd0000        	call	_clear_ind
10264                     ; 1671 		ind_hndl();
10266  20bf cd077b        	call	_ind_hndl
10269  20c2 ac032503      	jpf	L1063
10270  20c6               L3314:
10271                     ; 1673 	else if((but==butD)/*||(but==butD_)*/)
10273  20c6 b600          	ld	a,_but
10274  20c8 a1f7          	cp	a,#247
10275  20ca 2617          	jrne	L7314
10276                     ; 1675 		sub_ind--;
10278  20cc 3a62          	dec	_a_ind+1
10279                     ; 1676 		gran_char(&sub_ind,0,34);
10281  20ce 4b22          	push	#34
10282  20d0 4b00          	push	#0
10283  20d2 ae0062        	ldw	x,#_a_ind+1
10284  20d5 cd0000        	call	_gran_char
10286  20d8 85            	popw	x
10287                     ; 1677 		clear_ind();
10289  20d9 cd0000        	call	_clear_ind
10291                     ; 1678 		ind_hndl();
10293  20dc cd077b        	call	_ind_hndl
10296  20df ac032503      	jpf	L1063
10297  20e3               L7314:
10298                     ; 1680 	else if(but==butM)
10300  20e3 b600          	ld	a,_but
10301  20e5 a1fd          	cp	a,#253
10302  20e7 2616          	jrne	L3414
10303                     ; 1682 		if(sub_ind1==0)sub_ind1=1;
10305  20e9 3d63          	tnz	_a_ind+2
10306  20eb 2606          	jrne	L5414
10309  20ed 35010063      	mov	_a_ind+2,#1
10311  20f1 2002          	jra	L7414
10312  20f3               L5414:
10313                     ; 1683 		else sub_ind1=0;
10315  20f3 3f63          	clr	_a_ind+2
10316  20f5               L7414:
10317                     ; 1684 		clear_ind();
10319  20f5 cd0000        	call	_clear_ind
10321                     ; 1685 		ind_hndl();
10323  20f8 cd077b        	call	_ind_hndl
10326  20fb ac032503      	jpf	L1063
10327  20ff               L3414:
10328                     ; 1687 	else if((but==butD_)/*||(but==butD_)*/)
10330  20ff b600          	ld	a,_but
10331  2101 a177          	cp	a,#119
10332  2103 2610          	jrne	L3514
10333                     ; 1689 		tree_down(0,0);
10335  2105 5f            	clrw	x
10336  2106 4f            	clr	a
10337  2107 95            	ld	xh,a
10338  2108 cd0000        	call	_tree_down
10340                     ; 1690 		clear_ind();
10342  210b cd0000        	call	_clear_ind
10344                     ; 1691 		ind_hndl();
10346  210e cd077b        	call	_ind_hndl
10349  2111 ac032503      	jpf	L1063
10350  2115               L3514:
10351                     ; 1693 	else if(but==butUD_)
10353  2115 b600          	ld	a,_but
10354  2117 a173          	cp	a,#115
10355  2119 2603          	jrne	L626
10356  211b cc2503        	jp	L1063
10357  211e               L626:
10359                     ; 1774 	else if(but==butM_)
10361  211e b600          	ld	a,_but
10362  2120 a17d          	cp	a,#125
10363  2122 2703          	jreq	L036
10364  2124 cc2503        	jp	L1063
10365  2127               L036:
10366                     ; 1776 		tree_up(iSetTable_,sub_ind,0,sub_ind1);
10368  2127 3b0063        	push	_a_ind+2
10369  212a 4b00          	push	#0
10370  212c b662          	ld	a,_a_ind+1
10371  212e 97            	ld	xl,a
10372  212f a606          	ld	a,#6
10373  2131 95            	ld	xh,a
10374  2132 cd0000        	call	_tree_up
10376  2135 85            	popw	x
10377  2136 ac032503      	jpf	L1063
10378  213a               L1314:
10379                     ; 1780 else if(ind==iSetTable_)
10381  213a b661          	ld	a,_a_ind
10382  213c a106          	cp	a,#6
10383  213e 2703          	jreq	L236
10384  2140 cc2349        	jp	L7614
10385  2143               L236:
10386                     ; 1782 	if(but==butM_)
10388  2143 b600          	ld	a,_but
10389  2145 a17d          	cp	a,#125
10390  2147 260a          	jrne	L1714
10391                     ; 1784 		tree_down(0,0);
10393  2149 5f            	clrw	x
10394  214a 4f            	clr	a
10395  214b 95            	ld	xh,a
10396  214c cd0000        	call	_tree_down
10399  214f ac032503      	jpf	L1063
10400  2153               L1714:
10401                     ; 1786 	else if(but==butM)
10403  2153 b600          	ld	a,_but
10404  2155 a1fd          	cp	a,#253
10405  2157 2618          	jrne	L5714
10406                     ; 1788 		if(sub_ind1==1)sub_ind1=0;
10408  2159 b663          	ld	a,_a_ind+2
10409  215b a101          	cp	a,#1
10410  215d 2604          	jrne	L7714
10413  215f 3f63          	clr	_a_ind+2
10415  2161 2004          	jra	L1024
10416  2163               L7714:
10417                     ; 1789 		else sub_ind1=1;
10419  2163 35010063      	mov	_a_ind+2,#1
10420  2167               L1024:
10421                     ; 1790 		clear_ind();
10423  2167 cd0000        	call	_clear_ind
10425                     ; 1791 		ind_hndl();
10427  216a cd077b        	call	_ind_hndl
10430  216d ac032503      	jpf	L1063
10431  2171               L5714:
10432                     ; 1793 	else if(sub_ind1==0)
10434  2171 3d63          	tnz	_a_ind+2
10435  2173 2703          	jreq	L436
10436  2175 cc222c        	jp	L5024
10437  2178               L436:
10438                     ; 1798 		num_of_day=sub_ind/5;
10440  2178 5f            	clrw	x
10441  2179 b662          	ld	a,_a_ind+1
10442  217b 2a01          	jrpl	L464
10443  217d 53            	cplw	x
10444  217e               L464:
10445  217e 97            	ld	xl,a
10446  217f a605          	ld	a,#5
10447  2181 cd0000        	call	c_sdivx
10449                     ; 1799 		num_of_set=sub_ind%5;
10451  2184 b662          	ld	a,_a_ind+1
10452  2186 ae0005        	ldw	x,#5
10453  2189 51            	exgw	x,y
10454  218a 5f            	clrw	x
10455  218b 4d            	tnz	a
10456  218c 2a01          	jrpl	L664
10457  218e 5a            	decw	x
10458  218f               L664:
10459  218f 02            	rlwa	x,a
10460  2190 cd0000        	call	c_idiv
10462  2193 909f          	ld	a,yl
10463  2195 6b03          	ld	(OFST+0,sp),a
10464                     ; 1801 		if((but==butU)||(but==butU_))
10466  2197 b600          	ld	a,_but
10467  2199 a1fb          	cp	a,#251
10468  219b 2706          	jreq	L1124
10470  219d b600          	ld	a,_but
10471  219f a17b          	cp	a,#123
10472  21a1 2639          	jrne	L7024
10473  21a3               L1124:
10474                     ; 1804 			tempUC++;
10476  21a3 3c01          	inc	_tempUC
10477                     ; 1805 			if(tempUC>TABLE_TIME_EE_MAX[num_of_set])tempUC=TABLE_TIME_EE_MAX[num_of_set];
10479  21a5 7b03          	ld	a,(OFST+0,sp)
10480  21a7 5f            	clrw	x
10481  21a8 97            	ld	xl,a
10482  21a9 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10483  21ac b101          	cp	a,_tempUC
10484  21ae 2409          	jruge	L3124
10487  21b0 7b03          	ld	a,(OFST+0,sp)
10488  21b2 5f            	clrw	x
10489  21b3 97            	ld	xl,a
10490  21b4 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10491  21b7 b701          	ld	_tempUC,a
10492  21b9               L3124:
10493                     ; 1806 			if(tempUC<TABLE_TIME_EE_MIN[num_of_set])tempUC=TABLE_TIME_EE_MIN[num_of_set];
10495  21b9 7b03          	ld	a,(OFST+0,sp)
10496  21bb 5f            	clrw	x
10497  21bc 97            	ld	xl,a
10498  21bd d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10499  21c0 b101          	cp	a,_tempUC
10500  21c2 2309          	jrule	L5124
10503  21c4 7b03          	ld	a,(OFST+0,sp)
10504  21c6 5f            	clrw	x
10505  21c7 97            	ld	xl,a
10506  21c8 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10507  21cb b701          	ld	_tempUC,a
10508  21cd               L5124:
10509                     ; 1808 			speed=1;
10511  21cd 35010000      	mov	_speed,#1
10512                     ; 1809 			HUMAN_SET_EE=1;
10514  21d1 ae0001        	ldw	x,#1
10515  21d4 89            	pushw	x
10516  21d5 ae401e        	ldw	x,#_HUMAN_SET_EE
10517  21d8 cd0000        	call	c_eewrw
10519  21db 85            	popw	x
10520  21dc               L7024:
10521                     ; 1811 		if((but==butD)||(but==butD_))
10523  21dc b600          	ld	a,_but
10524  21de a1f7          	cp	a,#247
10525  21e0 2709          	jreq	L1224
10527  21e2 b600          	ld	a,_but
10528  21e4 a177          	cp	a,#119
10529  21e6 2703          	jreq	L636
10530  21e8 cc2503        	jp	L1063
10531  21eb               L636:
10532  21eb               L1224:
10533                     ; 1814 			if(tempUC)tempUC--;
10535  21eb 3d01          	tnz	_tempUC
10536  21ed 2702          	jreq	L3224
10539  21ef 3a01          	dec	_tempUC
10540  21f1               L3224:
10541                     ; 1815 			if(tempUC>TABLE_TIME_EE_MAX[num_of_set])tempUC=TABLE_TIME_EE_MAX[num_of_set];
10543  21f1 7b03          	ld	a,(OFST+0,sp)
10544  21f3 5f            	clrw	x
10545  21f4 97            	ld	xl,a
10546  21f5 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10547  21f8 b101          	cp	a,_tempUC
10548  21fa 2409          	jruge	L5224
10551  21fc 7b03          	ld	a,(OFST+0,sp)
10552  21fe 5f            	clrw	x
10553  21ff 97            	ld	xl,a
10554  2200 d60041        	ld	a,(_TABLE_TIME_EE_MAX,x)
10555  2203 b701          	ld	_tempUC,a
10556  2205               L5224:
10557                     ; 1816 			if(tempUC<TABLE_TIME_EE_MIN[num_of_set])tempUC=TABLE_TIME_EE_MIN[num_of_set];
10559  2205 7b03          	ld	a,(OFST+0,sp)
10560  2207 5f            	clrw	x
10561  2208 97            	ld	xl,a
10562  2209 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10563  220c b101          	cp	a,_tempUC
10564  220e 2309          	jrule	L7224
10567  2210 7b03          	ld	a,(OFST+0,sp)
10568  2212 5f            	clrw	x
10569  2213 97            	ld	xl,a
10570  2214 d6003c        	ld	a,(_TABLE_TIME_EE_MIN,x)
10571  2217 b701          	ld	_tempUC,a
10572  2219               L7224:
10573                     ; 1818 			speed=1;
10575  2219 35010000      	mov	_speed,#1
10576                     ; 1819 			HUMAN_SET_EE=1;
10578  221d ae0001        	ldw	x,#1
10579  2220 89            	pushw	x
10580  2221 ae401e        	ldw	x,#_HUMAN_SET_EE
10581  2224 cd0000        	call	c_eewrw
10583  2227 85            	popw	x
10584  2228 ac032503      	jpf	L1063
10585  222c               L5024:
10586                     ; 1822 	else if(sub_ind1==1)
10588  222c b663          	ld	a,_a_ind+2
10589  222e a101          	cp	a,#1
10590  2230 2703          	jreq	L046
10591  2232 cc2503        	jp	L1063
10592  2235               L046:
10593                     ; 1827 		num_of_day=sub_ind/5;
10595  2235 b662          	ld	a,_a_ind+1
10596  2237 ae0005        	ldw	x,#5
10597  223a 51            	exgw	x,y
10598  223b 5f            	clrw	x
10599  223c 4d            	tnz	a
10600  223d 2a01          	jrpl	L074
10601  223f 5a            	decw	x
10602  2240               L074:
10603  2240 02            	rlwa	x,a
10604  2241 cd0000        	call	c_idiv
10606  2244 9f            	ld	a,xl
10607  2245 6b02          	ld	(OFST-1,sp),a
10608                     ; 1828 		num_of_set=sub_ind%5;
10610  2247 b662          	ld	a,_a_ind+1
10611  2249 ae0005        	ldw	x,#5
10612  224c 51            	exgw	x,y
10613  224d 5f            	clrw	x
10614  224e 4d            	tnz	a
10615  224f 2a01          	jrpl	L274
10616  2251 5a            	decw	x
10617  2252               L274:
10618  2252 02            	rlwa	x,a
10619  2253 cd0000        	call	c_idiv
10621  2256 909f          	ld	a,yl
10622  2258 6b03          	ld	(OFST+0,sp),a
10623                     ; 1830 		if((but==butU)||(but==butU_))
10625  225a b600          	ld	a,_but
10626  225c a1fb          	cp	a,#251
10627  225e 2706          	jreq	L7324
10629  2260 b600          	ld	a,_but
10630  2262 a17b          	cp	a,#123
10631  2264 2668          	jrne	L5324
10632  2266               L7324:
10633                     ; 1832 			tempUC=TABLE_TEMPER_EE[num_of_day][num_of_set];
10635  2266 7b02          	ld	a,(OFST-1,sp)
10636  2268 97            	ld	xl,a
10637  2269 a605          	ld	a,#5
10638  226b 42            	mul	x,a
10639  226c 01            	rrwa	x,a
10640  226d 1b03          	add	a,(OFST+0,sp)
10641  226f 2401          	jrnc	L474
10642  2271 5c            	incw	x
10643  2272               L474:
10644  2272 02            	rlwa	x,a
10645  2273 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10646  2276 b701          	ld	_tempUC,a
10647                     ; 1833 			if(tempUC)tempUC++;
10649  2278 3d01          	tnz	_tempUC
10650  227a 2702          	jreq	L1424
10653  227c 3c01          	inc	_tempUC
10654  227e               L1424:
10655                     ; 1834 			if(tempUC>35)tempUC=35;
10657  227e b601          	ld	a,_tempUC
10658  2280 a124          	cp	a,#36
10659  2282 2504          	jrult	L3424
10662  2284 35230001      	mov	_tempUC,#35
10663  2288               L3424:
10664                     ; 1835 			if(tempUC<5)tempUC=5;
10666  2288 b601          	ld	a,_tempUC
10667  228a a105          	cp	a,#5
10668  228c 2404          	jruge	L5424
10671  228e 35050001      	mov	_tempUC,#5
10672  2292               L5424:
10673                     ; 1836 			if(TABLE_TEMPER_EE[num_of_day][num_of_set]!=tempUC)TABLE_TEMPER_EE[num_of_day][num_of_set]=tempUC;
10675  2292 7b02          	ld	a,(OFST-1,sp)
10676  2294 97            	ld	xl,a
10677  2295 a605          	ld	a,#5
10678  2297 42            	mul	x,a
10679  2298 01            	rrwa	x,a
10680  2299 1b03          	add	a,(OFST+0,sp)
10681  229b 2401          	jrnc	L674
10682  229d 5c            	incw	x
10683  229e               L674:
10684  229e 02            	rlwa	x,a
10685  229f d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10686  22a2 5f            	clrw	x
10687  22a3 4d            	tnz	a
10688  22a4 2a01          	jrpl	L005
10689  22a6 53            	cplw	x
10690  22a7               L005:
10691  22a7 97            	ld	xl,a
10692  22a8 b601          	ld	a,_tempUC
10693  22aa 905f          	clrw	y
10694  22ac 9097          	ld	yl,a
10695  22ae 90bf00        	ldw	c_y,y
10696  22b1 b300          	cpw	x,c_y
10697  22b3 2715          	jreq	L7424
10700  22b5 7b02          	ld	a,(OFST-1,sp)
10701  22b7 97            	ld	xl,a
10702  22b8 a605          	ld	a,#5
10703  22ba 42            	mul	x,a
10704  22bb 01            	rrwa	x,a
10705  22bc 1b03          	add	a,(OFST+0,sp)
10706  22be 2401          	jrnc	L205
10707  22c0 5c            	incw	x
10708  22c1               L205:
10709  22c1 02            	rlwa	x,a
10710  22c2 b601          	ld	a,_tempUC
10711  22c4 1c4048        	addw	x,#_TABLE_TEMPER_EE
10712  22c7 cd0000        	call	c_eewrc
10714  22ca               L7424:
10715                     ; 1837 			speed=1;
10717  22ca 35010000      	mov	_speed,#1
10718  22ce               L5324:
10719                     ; 1839 		if((but==butD)||(but==butD_))
10721  22ce b600          	ld	a,_but
10722  22d0 a1f7          	cp	a,#247
10723  22d2 2709          	jreq	L3524
10725  22d4 b600          	ld	a,_but
10726  22d6 a177          	cp	a,#119
10727  22d8 2703          	jreq	L246
10728  22da cc2503        	jp	L1063
10729  22dd               L246:
10730  22dd               L3524:
10731                     ; 1841 			tempUC=TABLE_TEMPER_EE[num_of_day][num_of_set];
10733  22dd 7b02          	ld	a,(OFST-1,sp)
10734  22df 97            	ld	xl,a
10735  22e0 a605          	ld	a,#5
10736  22e2 42            	mul	x,a
10737  22e3 01            	rrwa	x,a
10738  22e4 1b03          	add	a,(OFST+0,sp)
10739  22e6 2401          	jrnc	L405
10740  22e8 5c            	incw	x
10741  22e9               L405:
10742  22e9 02            	rlwa	x,a
10743  22ea d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10744  22ed b701          	ld	_tempUC,a
10745                     ; 1842 			if(tempUC)tempUC--;
10747  22ef 3d01          	tnz	_tempUC
10748  22f1 2702          	jreq	L5524
10751  22f3 3a01          	dec	_tempUC
10752  22f5               L5524:
10753                     ; 1843 			if(tempUC>35)tempUC=35;
10755  22f5 b601          	ld	a,_tempUC
10756  22f7 a124          	cp	a,#36
10757  22f9 2504          	jrult	L7524
10760  22fb 35230001      	mov	_tempUC,#35
10761  22ff               L7524:
10762                     ; 1844 			if(tempUC<5)tempUC=5;
10764  22ff b601          	ld	a,_tempUC
10765  2301 a105          	cp	a,#5
10766  2303 2404          	jruge	L1624
10769  2305 35050001      	mov	_tempUC,#5
10770  2309               L1624:
10771                     ; 1845 			if(TABLE_TEMPER_EE[num_of_day][num_of_set]!=tempUC)TABLE_TEMPER_EE[num_of_day][num_of_set]=tempUC;
10773  2309 7b02          	ld	a,(OFST-1,sp)
10774  230b 97            	ld	xl,a
10775  230c a605          	ld	a,#5
10776  230e 42            	mul	x,a
10777  230f 01            	rrwa	x,a
10778  2310 1b03          	add	a,(OFST+0,sp)
10779  2312 2401          	jrnc	L605
10780  2314 5c            	incw	x
10781  2315               L605:
10782  2315 02            	rlwa	x,a
10783  2316 d64048        	ld	a,(_TABLE_TEMPER_EE,x)
10784  2319 5f            	clrw	x
10785  231a 4d            	tnz	a
10786  231b 2a01          	jrpl	L015
10787  231d 53            	cplw	x
10788  231e               L015:
10789  231e 97            	ld	xl,a
10790  231f b601          	ld	a,_tempUC
10791  2321 905f          	clrw	y
10792  2323 9097          	ld	yl,a
10793  2325 90bf00        	ldw	c_y,y
10794  2328 b300          	cpw	x,c_y
10795  232a 2715          	jreq	L3624
10798  232c 7b02          	ld	a,(OFST-1,sp)
10799  232e 97            	ld	xl,a
10800  232f a605          	ld	a,#5
10801  2331 42            	mul	x,a
10802  2332 01            	rrwa	x,a
10803  2333 1b03          	add	a,(OFST+0,sp)
10804  2335 2401          	jrnc	L215
10805  2337 5c            	incw	x
10806  2338               L215:
10807  2338 02            	rlwa	x,a
10808  2339 b601          	ld	a,_tempUC
10809  233b 1c4048        	addw	x,#_TABLE_TEMPER_EE
10810  233e cd0000        	call	c_eewrc
10812  2341               L3624:
10813                     ; 1846 			speed=1;
10815  2341 35010000      	mov	_speed,#1
10816  2345 ac032503      	jpf	L1063
10817  2349               L7614:
10818                     ; 1850 else if(ind==iDeb)
10820  2349 b661          	ld	a,_a_ind
10821  234b a107          	cp	a,#7
10822  234d 2703          	jreq	L446
10823  234f cc23e3        	jp	L7624
10824  2352               L446:
10825                     ; 1852 	if(but==butU)
10827  2352 b600          	ld	a,_but
10828  2354 a1fb          	cp	a,#251
10829  2356 2617          	jrne	L1724
10830                     ; 1854 		sub_ind++;
10832  2358 3c62          	inc	_a_ind+1
10833                     ; 1855 		gran_char(&sub_ind,0,12);
10835  235a 4b0c          	push	#12
10836  235c 4b00          	push	#0
10837  235e ae0062        	ldw	x,#_a_ind+1
10838  2361 cd0000        	call	_gran_char
10840  2364 85            	popw	x
10841                     ; 1856 		clear_ind();
10843  2365 cd0000        	call	_clear_ind
10845                     ; 1857 		ind_hndl();
10847  2368 cd077b        	call	_ind_hndl
10850  236b ac032503      	jpf	L1063
10851  236f               L1724:
10852                     ; 1859 	else if(but==butD)
10854  236f b600          	ld	a,_but
10855  2371 a1f7          	cp	a,#247
10856  2373 2617          	jrne	L5724
10857                     ; 1861 		sub_ind--;
10859  2375 3a62          	dec	_a_ind+1
10860                     ; 1862 		gran_char(&sub_ind,0,12);
10862  2377 4b0c          	push	#12
10863  2379 4b00          	push	#0
10864  237b ae0062        	ldw	x,#_a_ind+1
10865  237e cd0000        	call	_gran_char
10867  2381 85            	popw	x
10868                     ; 1863 		clear_ind();
10870  2382 cd0000        	call	_clear_ind
10872                     ; 1864 		ind_hndl();
10874  2385 cd077b        	call	_ind_hndl
10877  2388 ac032503      	jpf	L1063
10878  238c               L5724:
10879                     ; 1866 	else if(but==butD_)
10881  238c b600          	ld	a,_but
10882  238e a177          	cp	a,#119
10883  2390 260b          	jrne	L1034
10884                     ; 1868 		tree_down(-1,0);
10886  2392 5f            	clrw	x
10887  2393 a6ff          	ld	a,#255
10888  2395 95            	ld	xh,a
10889  2396 cd0000        	call	_tree_down
10892  2399 ac032503      	jpf	L1063
10893  239d               L1034:
10894                     ; 1870 	else if(but==butM)
10896  239d b600          	ld	a,_but
10897  239f a1fd          	cp	a,#253
10898  23a1 2610          	jrne	L5034
10899                     ; 1872 		tree_up(iModem_deb,0,0,0);
10901  23a3 4b00          	push	#0
10902  23a5 4b00          	push	#0
10903  23a7 5f            	clrw	x
10904  23a8 a60a          	ld	a,#10
10905  23aa 95            	ld	xh,a
10906  23ab cd0000        	call	_tree_up
10908  23ae 85            	popw	x
10910  23af ac032503      	jpf	L1063
10911  23b3               L5034:
10912                     ; 1877 	else if(sub_ind==8)
10914  23b3 b662          	ld	a,_a_ind+1
10915  23b5 a108          	cp	a,#8
10916  23b7 2703          	jreq	L646
10917  23b9 cc2503        	jp	L1063
10918  23bc               L646:
10919                     ; 1879 		if((but==butU)||(but==butD)||(but==butM)||(but==butON))	
10921  23bc b600          	ld	a,_but
10922  23be a1fb          	cp	a,#251
10923  23c0 2715          	jreq	L5134
10925  23c2 b600          	ld	a,_but
10926  23c4 a1f7          	cp	a,#247
10927  23c6 270f          	jreq	L5134
10929  23c8 b600          	ld	a,_but
10930  23ca a1fd          	cp	a,#253
10931  23cc 2709          	jreq	L5134
10933  23ce b600          	ld	a,_but
10934  23d0 a1fe          	cp	a,#254
10935  23d2 2703          	jreq	L056
10936  23d4 cc2503        	jp	L1063
10937  23d7               L056:
10938  23d7               L5134:
10939                     ; 1881 			beepTestCnt=10;
10941  23d7 350a000b      	mov	_beepTestCnt,#10
10942                     ; 1882 			ind_check_cnt=0;
10944  23db 5f            	clrw	x
10945  23dc cf0009        	ldw	_ind_check_cnt,x
10946  23df ac032503      	jpf	L1063
10947  23e3               L7624:
10948                     ; 1887 else if(ind==iModem_deb)
10950  23e3 b661          	ld	a,_a_ind
10951  23e5 a10a          	cp	a,#10
10952  23e7 2703          	jreq	L256
10953  23e9 cc2498        	jp	L5234
10954  23ec               L256:
10955                     ; 1889 	if(but==butU)
10957  23ec b600          	ld	a,_but
10958  23ee a1fb          	cp	a,#251
10959  23f0 2603          	jrne	L456
10960  23f2 cc2503        	jp	L1063
10961  23f5               L456:
10963                     ; 1900 	else if(but==butD)
10965  23f5 b600          	ld	a,_but
10966  23f7 a1f7          	cp	a,#247
10967  23f9 2603          	jrne	L656
10968  23fb cc2503        	jp	L1063
10969  23fe               L656:
10971                     ; 1908 	else if(but==butUD_)
10973  23fe b600          	ld	a,_but
10974  2400 a173          	cp	a,#115
10975  2402 260a          	jrne	L7334
10976                     ; 1910 		tree_down(0,0);
10978  2404 5f            	clrw	x
10979  2405 4f            	clr	a
10980  2406 95            	ld	xh,a
10981  2407 cd0000        	call	_tree_down
10984  240a ac032503      	jpf	L1063
10985  240e               L7334:
10986                     ; 1928 	else if(but==butD_)
10988  240e b600          	ld	a,_but
10989  2410 a177          	cp	a,#119
10990  2412 2616          	jrne	L3434
10991                     ; 1930 		AUTH_NUMBER_FLAGS=0;
10993  2414 4f            	clr	a
10994  2415 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
10995  2418 cd0000        	call	c_eewrc
10997                     ; 1935 		HUMAN_SET_EE=1;
10999  241b ae0001        	ldw	x,#1
11000  241e 89            	pushw	x
11001  241f ae401e        	ldw	x,#_HUMAN_SET_EE
11002  2422 cd0000        	call	c_eewrw
11004  2425 85            	popw	x
11006  2426 ac032503      	jpf	L1063
11007  242a               L3434:
11008                     ; 1937 	else if(but==butU_)
11010  242a b600          	ld	a,_but
11011  242c a17b          	cp	a,#123
11012  242e 261a          	jrne	L7434
11013                     ; 1939 		AUTH_NUMBER_FLAGS&=0x01;
11015  2430 c6407f        	ld	a,_AUTH_NUMBER_FLAGS
11016  2433 a401          	and	a,#1
11017  2435 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
11018  2438 cd0000        	call	c_eewrc
11020                     ; 1944 		HUMAN_SET_EE=1;
11022  243b ae0001        	ldw	x,#1
11023  243e 89            	pushw	x
11024  243f ae401e        	ldw	x,#_HUMAN_SET_EE
11025  2442 cd0000        	call	c_eewrw
11027  2445 85            	popw	x
11029  2446 ac032503      	jpf	L1063
11030  244a               L7434:
11031                     ; 1946 	else if(but==butUD_)
11033  244a b600          	ld	a,_but
11034  244c a173          	cp	a,#115
11035  244e 2703          	jreq	L066
11036  2450 cc2503        	jp	L1063
11037  2453               L066:
11038                     ; 1948 		AUTH_NUMBER_FLAGS=0x0f;
11040  2453 a60f          	ld	a,#15
11041  2455 ae407f        	ldw	x,#_AUTH_NUMBER_FLAGS
11042  2458 cd0000        	call	c_eewrc
11044                     ; 1949 		memcpy(MAIN_NUMBER,"9139294352",10);
11046  245b ae000a        	ldw	x,#10
11047  245e               L415:
11048  245e d6006b        	ld	a,(L5534-1,x)
11049  2461 d74001        	ld	(_MAIN_NUMBER-1,x),a
11050  2464 5a            	decw	x
11051  2465 26f7          	jrne	L415
11052                     ; 1950 		memcpy(AUTH_NUMBER_1,"9134863890",10);
11054  2467 ae000a        	ldw	x,#10
11055  246a               L615:
11056  246a d60060        	ld	a,(L7534-1,x)
11057  246d d7400b        	ld	(_AUTH_NUMBER_1-1,x),a
11058  2470 5a            	decw	x
11059  2471 26f7          	jrne	L615
11060                     ; 1951 		memcpy(AUTH_NUMBER_2,"9237328354",10);
11062  2473 ae000a        	ldw	x,#10
11063  2476               L025:
11064  2476 d60055        	ld	a,(L1634-1,x)
11065  2479 d7406a        	ld	(_AUTH_NUMBER_2-1,x),a
11066  247c 5a            	decw	x
11067  247d 26f7          	jrne	L025
11068                     ; 1952 		memcpy(AUTH_NUMBER_3,"11234567890",10);
11070  247f ae000a        	ldw	x,#10
11071  2482               L225:
11072  2482 d60049        	ld	a,(L3634-1,x)
11073  2485 d74074        	ld	(_AUTH_NUMBER_3-1,x),a
11074  2488 5a            	decw	x
11075  2489 26f7          	jrne	L225
11076                     ; 1953 		HUMAN_SET_EE=1;
11078  248b ae0001        	ldw	x,#1
11079  248e 89            	pushw	x
11080  248f ae401e        	ldw	x,#_HUMAN_SET_EE
11081  2492 cd0000        	call	c_eewrw
11083  2495 85            	popw	x
11084  2496 206b          	jra	L1063
11085  2498               L5234:
11086                     ; 1957 else if(ind==iDefSet)
11088  2498 b661          	ld	a,_a_ind
11089  249a a109          	cp	a,#9
11090  249c 263f          	jrne	L7634
11091                     ; 1959 	if(but==butMU_)
11093  249e b600          	ld	a,_but
11094  24a0 a179          	cp	a,#121
11095  24a2 265f          	jrne	L1063
11096                     ; 2038 		MODE_EE=1;
11098  24a4 a601          	ld	a,#1
11099  24a6 ae4046        	ldw	x,#_MODE_EE
11100  24a9 cd0000        	call	c_eewrc
11102                     ; 2039 		NECC_TEMPER_WATER_EE=50;
11104  24ac a632          	ld	a,#50
11105  24ae ae4045        	ldw	x,#_NECC_TEMPER_WATER_EE
11106  24b1 cd0000        	call	c_eewrc
11108                     ; 2040 		NECC_TEMPER_AIR_EE=20;
11110  24b4 a614          	ld	a,#20
11111  24b6 ae4044        	ldw	x,#_NECC_TEMPER_AIR_EE
11112  24b9 cd0000        	call	c_eewrc
11114                     ; 2041 		MAX_POWER_EE=3;
11116  24bc a603          	ld	a,#3
11117  24be ae4047        	ldw	x,#_MAX_POWER_EE
11118  24c1 cd0000        	call	c_eewrc
11120                     ; 2043 		tree_down(0,0);
11122  24c4 5f            	clrw	x
11123  24c5 4f            	clr	a
11124  24c6 95            	ld	xh,a
11125  24c7 cd0000        	call	_tree_down
11127                     ; 2044 		ret_ind(0,0);
11129  24ca 5f            	clrw	x
11130  24cb 4f            	clr	a
11131  24cc 95            	ld	xh,a
11132  24cd cd0000        	call	_ret_ind
11134                     ; 2045 		HUMAN_SET_EE=1;
11136  24d0 ae0001        	ldw	x,#1
11137  24d3 89            	pushw	x
11138  24d4 ae401e        	ldw	x,#_HUMAN_SET_EE
11139  24d7 cd0000        	call	c_eewrw
11141  24da 85            	popw	x
11142  24db 2026          	jra	L1063
11143  24dd               L7634:
11144                     ; 2049 else if(ind==iInterf)
11146  24dd b661          	ld	a,_a_ind
11147  24df a10f          	cp	a,#15
11148  24e1 2620          	jrne	L1063
11149                     ; 2051 	if((but==butU)||(but==butD)||(but==butM)||(but==butON))	
11151  24e3 b600          	ld	a,_but
11152  24e5 a1fb          	cp	a,#251
11153  24e7 2712          	jreq	L1044
11155  24e9 b600          	ld	a,_but
11156  24eb a1f7          	cp	a,#247
11157  24ed 270c          	jreq	L1044
11159  24ef b600          	ld	a,_but
11160  24f1 a1fd          	cp	a,#253
11161  24f3 2706          	jreq	L1044
11163  24f5 b600          	ld	a,_but
11164  24f7 a1fe          	cp	a,#254
11165  24f9 2608          	jrne	L1063
11166  24fb               L1044:
11167                     ; 2053 		beepTestCnt=10;
11169  24fb 350a000b      	mov	_beepTestCnt,#10
11170                     ; 2054 		ind_check_cnt=0;
11172  24ff 5f            	clrw	x
11173  2500 cf0009        	ldw	_ind_check_cnt,x
11174  2503               L1063:
11175                     ; 2057 }
11176  2503               L425:
11179  2503 5b03          	addw	sp,#3
11180  2505 81            	ret
11203                     ; 2059 void t4_init(void)
11203                     ; 2060 {
11204                     	switch	.text
11205  2506               _t4_init:
11209                     ; 2061 TIM4->PSCR = 6;
11211  2506 35065345      	mov	21317,#6
11212                     ; 2062 TIM4->ARR= 158;
11214  250a 359e5346      	mov	21318,#158
11215                     ; 2063 TIM4->IER|= TIM4_IER_UIE;					// enable break interrupt
11217  250e 72105341      	bset	21313,#0
11218                     ; 2065 TIM4->CR1=(TIM4_CR1_URS | TIM4_CR1_CEN | TIM4_CR1_ARPE);	
11220  2512 35855340      	mov	21312,#133
11221                     ; 2067 }
11224  2516 81            	ret
11267                     ; 2073 @far @interrupt void TIM4_UPD_Interrupt (void) 
11267                     ; 2074 {
11269                     	switch	.text
11270  2517               f_TIM4_UPD_Interrupt:
11274                     ; 2076 GPIOD->ODR|=0b00111100;
11276  2517 c6500f        	ld	a,20495
11277  251a aa3c          	or	a,#60
11278  251c c7500f        	ld	20495,a
11279                     ; 2077 ind_cnt++;
11281  251f 3c81          	inc	_ind_cnt
11282                     ; 2078 if(ind_cnt>=10)
11284  2521 b681          	ld	a,_ind_cnt
11285  2523 a10a          	cp	a,#10
11286  2525 2507          	jrult	L7244
11287                     ; 2080 	ind_cnt=0;
11289  2527 3f81          	clr	_ind_cnt
11290                     ; 2081 	but_new=GPIOB->IDR;
11292  2529 5550060000    	mov	_but_new,20486
11293  252e               L7244:
11294                     ; 2083 GPIOB->ODR=ind_outB[ind_cnt];
11296  252e b681          	ld	a,_ind_cnt
11297  2530 5f            	clrw	x
11298  2531 97            	ld	xl,a
11299  2532 e675          	ld	a,(_ind_outB,x)
11300  2534 c75005        	ld	20485,a
11301                     ; 2084 GPIOC->ODR=ind_outC[ind_cnt];
11303  2537 b681          	ld	a,_ind_cnt
11304  2539 5f            	clrw	x
11305  253a 97            	ld	xl,a
11306  253b e60a          	ld	a,(_ind_outC,x)
11307  253d c7500a        	ld	20490,a
11308                     ; 2085 if(powerStat==psOFF)GPIOC->ODR=0xff;
11310  2540 3d29          	tnz	_powerStat
11311  2542 2604          	jrne	L1344
11314  2544 35ff500a      	mov	20490,#255
11315  2548               L1344:
11316                     ; 2086 GPIOG->ODR|=0x01;
11318  2548 7210501e      	bset	20510,#0
11319                     ; 2087 GPIOG->ODR&=ind_outG[ind_cnt];
11321  254c b681          	ld	a,_ind_cnt
11322  254e 5f            	clrw	x
11323  254f 97            	ld	xl,a
11324  2550 c6501e        	ld	a,20510
11325  2553 e416          	and	a,(_ind_outG,x)
11326  2555 c7501e        	ld	20510,a
11327                     ; 2088 if(ind_cnt==9)GPIOB->DDR=0x00;
11329  2558 b681          	ld	a,_ind_cnt
11330  255a a109          	cp	a,#9
11331  255c 2606          	jrne	L3344
11334  255e 725f5007      	clr	20487
11336  2562 2004          	jra	L5344
11337  2564               L3344:
11338                     ; 2089 else GPIOB->DDR=0xff;
11340  2564 35ff5007      	mov	20487,#255
11341  2568               L5344:
11342                     ; 2090 if(powerStat==psOFF)
11344  2568 3d29          	tnz	_powerStat
11345  256a 2618          	jrne	L7344
11346                     ; 2092 	GPIOD->ODR|=0b00111100;
11348  256c c6500f        	ld	a,20495
11349  256f aa3c          	or	a,#60
11350  2571 c7500f        	ld	20495,a
11351                     ; 2093 	if((ind_cnt==0)||(ind_cnt>3))GPIOD->ODR&=ind_strob[0];
11353  2574 3d81          	tnz	_ind_cnt
11354  2576 2706          	jreq	L3444
11356  2578 b681          	ld	a,_ind_cnt
11357  257a a104          	cp	a,#4
11358  257c 2513          	jrult	L5444
11359  257e               L3444:
11362  257e 721b500f      	bres	20495,#5
11363  2582 200d          	jra	L5444
11364  2584               L7344:
11365                     ; 2095 else GPIOD->ODR&=ind_strob[ind_cnt];
11367  2584 b681          	ld	a,_ind_cnt
11368  2586 5f            	clrw	x
11369  2587 97            	ld	xl,a
11370  2588 c6500f        	ld	a,20495
11371  258b d40012        	and	a,(_ind_strob,x)
11372  258e c7500f        	ld	20495,a
11373  2591               L5444:
11374                     ; 2097 if(++t0_cnt0>=10)
11376  2591 3c05          	inc	_t0_cnt0
11377  2593 b605          	ld	a,_t0_cnt0
11378  2595 a10a          	cp	a,#10
11379  2597 255f          	jrult	L7444
11380                     ; 2099   t0_cnt0=0;
11382  2599 3f05          	clr	_t0_cnt0
11383                     ; 2100   b100Hz=1;
11385  259b 35010000      	mov	_b100Hz,#1
11386                     ; 2102 	if(++t0_cnt1>=10)
11388  259f 3c06          	inc	_t0_cnt1
11389  25a1 b606          	ld	a,_t0_cnt1
11390  25a3 a10a          	cp	a,#10
11391  25a5 2506          	jrult	L1544
11392                     ; 2104 		t0_cnt1=0;
11394  25a7 3f06          	clr	_t0_cnt1
11395                     ; 2105 		b10Hz=1;
11397  25a9 35010001      	mov	_b10Hz,#1
11398  25ad               L1544:
11399                     ; 2108 	if(++t0_cnt2>=20)
11401  25ad 3c07          	inc	_t0_cnt2
11402  25af b607          	ld	a,_t0_cnt2
11403  25b1 a114          	cp	a,#20
11404  25b3 2511          	jrult	L3544
11405                     ; 2110 		t0_cnt2=0;
11407  25b5 3f07          	clr	_t0_cnt2
11408                     ; 2111 		b5Hz=1;
11410  25b7 35010002      	mov	_b5Hz,#1
11411                     ; 2112 		bFL5=!bFL5;
11413  25bb 3d28          	tnz	_bFL5
11414  25bd 2604          	jrne	L666
11415  25bf a601          	ld	a,#1
11416  25c1 2001          	jra	L076
11417  25c3               L666:
11418  25c3 4f            	clr	a
11419  25c4               L076:
11420  25c4 b728          	ld	_bFL5,a
11421  25c6               L3544:
11422                     ; 2115 	if(++t0_cnt3>=50)
11424  25c6 3c08          	inc	_t0_cnt3
11425  25c8 b608          	ld	a,_t0_cnt3
11426  25ca a132          	cp	a,#50
11427  25cc 2511          	jrult	L5544
11428                     ; 2117 		t0_cnt3=0;
11430  25ce 3f08          	clr	_t0_cnt3
11431                     ; 2118 		b2Hz=1;
11433  25d0 35010003      	mov	_b2Hz,#1
11434                     ; 2119 		bFL2=!bFL2;
11436  25d4 3d27          	tnz	_bFL2
11437  25d6 2604          	jrne	L276
11438  25d8 a601          	ld	a,#1
11439  25da 2001          	jra	L476
11440  25dc               L276:
11441  25dc 4f            	clr	a
11442  25dd               L476:
11443  25dd b727          	ld	_bFL2,a
11444  25df               L5544:
11445                     ; 2121 	if(++t0_cnt4>=100)
11447  25df 3c09          	inc	_t0_cnt4
11448  25e1 b609          	ld	a,_t0_cnt4
11449  25e3 a164          	cp	a,#100
11450  25e5 2511          	jrult	L7444
11451                     ; 2123 		t0_cnt4=0;
11453  25e7 3f09          	clr	_t0_cnt4
11454                     ; 2124 		b1Hz=1;
11456  25e9 35010004      	mov	_b1Hz,#1
11457                     ; 2125 		bFL1=!bFL1;
11459  25ed 3d26          	tnz	_bFL1
11460  25ef 2604          	jrne	L676
11461  25f1 a601          	ld	a,#1
11462  25f3 2001          	jra	L007
11463  25f5               L676:
11464  25f5 4f            	clr	a
11465  25f6               L007:
11466  25f6 b726          	ld	_bFL1,a
11467  25f8               L7444:
11468                     ; 2128 TIM4->SR1&=~TIM4_SR1_UIF;			// disable break interrupt
11470  25f8 72115342      	bres	21314,#0
11471                     ; 2129 return;
11474  25fc 80            	iret
11539                     ; 2136 main()
11539                     ; 2137 {
11541                     	switch	.text
11542  25fd               _main:
11546                     ; 2138 CLK->ECKR|=1;
11548  25fd 721050c1      	bset	20673,#0
11550  2601               L3744:
11551                     ; 2139 while((CLK->ECKR & 2) == 0);
11553  2601 c650c1        	ld	a,20673
11554  2604 a502          	bcp	a,#2
11555  2606 27f9          	jreq	L3744
11556                     ; 2140 CLK->SWCR|=2;
11558  2608 721250c5      	bset	20677,#1
11559                     ; 2141 CLK->SWR=0xB4;	
11561  260c 35b450c4      	mov	20676,#180
11562                     ; 2143 CLK->CKDIVR=0;
11564  2610 725f50c6      	clr	20678
11565                     ; 2145 FLASH_DUKR=0xae;
11567  2614 35ae5064      	mov	_FLASH_DUKR,#174
11568                     ; 2146 FLASH_DUKR=0x56;
11570  2618 35565064      	mov	_FLASH_DUKR,#86
11571                     ; 2149 GPIOD->DDR|=0b00111100;		//PD2-PD5 выходы открытый коллектор
11573  261c c65011        	ld	a,20497
11574  261f aa3c          	or	a,#60
11575  2621 c75011        	ld	20497,a
11576                     ; 2150 GPIOD->CR1&=0b11000011;		//....
11578  2624 c65012        	ld	a,20498
11579  2627 a4c3          	and	a,#195
11580  2629 c75012        	ld	20498,a
11581                     ; 2151 GPIOD->CR2&=0b11000011;		//....
11583  262c c65013        	ld	a,20499
11584  262f a4c3          	and	a,#195
11585  2631 c75013        	ld	20499,a
11586                     ; 2152 GPIOB->DDR|=0b11111111;		//PORTB все выходы ““Ћ
11588  2634 c65007        	ld	a,20487
11589  2637 aaff          	or	a,#255
11590  2639 c75007        	ld	20487,a
11591                     ; 2153 GPIOB->CR1|=0b11111111;		//....
11593  263c c65008        	ld	a,20488
11594  263f aaff          	or	a,#255
11595  2641 c75008        	ld	20488,a
11596                     ; 2154 GPIOB->CR2&=0b00000000;		//....
11598  2644 725f5009      	clr	20489
11599                     ; 2155 GPIOC->DDR|=0b11111111;		//PORTC все выходы открытый коллектор
11601  2648 c6500c        	ld	a,20492
11602  264b aaff          	or	a,#255
11603  264d c7500c        	ld	20492,a
11604                     ; 2156 GPIOC->CR1&=0b00000000;		//....
11606  2650 725f500d      	clr	20493
11607                     ; 2157 GPIOC->CR2&=0b00000000;		//....
11609  2654 725f500e      	clr	20494
11610                     ; 2158 GPIOG->DDR|=0b00000001;		//PG0 выход открытый коллектор
11612  2658 72105020      	bset	20512,#0
11613                     ; 2159 GPIOG->CR1&=0b11111110;		//....
11615  265c 72115021      	bres	20513,#0
11616                     ; 2160 GPIOG->CR2&=0b11111110;		//....
11618  2660 72115022      	bres	20514,#0
11619                     ; 2161 t4_init();
11621  2664 cd2506        	call	_t4_init
11623                     ; 2162 uart3_init();
11625  2667 cd0000        	call	_uart3_init
11627                     ; 2163 uart1_init();
11629  266a cd0000        	call	_uart1_init
11631                     ; 2164 isp_gpio_init();
11633  266d cd00c7        	call	_isp_gpio_init
11635                     ; 2166 enableInterrupts();
11638  2670 9a            rim
11640                     ; 2168 clear_ind();
11643  2671 cd0000        	call	_clear_ind
11645                     ; 2169 ind=iMn;//iModem_deb;
11647  2674 3f61          	clr	_a_ind
11648                     ; 2175 bERR=0;
11650  2676 3f08          	clr	_bERR
11651                     ; 2176 bWARN=0;
11653  2678 3f07          	clr	_bWARN
11654                     ; 2178 modemDrvInitStepCnt=1;
11656  267a ae0001        	ldw	x,#1
11657  267d bf00          	ldw	_modemDrvInitStepCnt,x
11658                     ; 2183 watchdog_enable();
11660  267f cd0000        	call	_watchdog_enable
11662                     ; 2185 if(power_in_test()==0)
11664  2682 cd0261        	call	_power_in_test
11666  2685 a30000        	cpw	x,#0
11667  2688 2609          	jrne	L1054
11668                     ; 2187 	GPIOD->ODR|=0b00111100;
11670  268a c6500f        	ld	a,20495
11671  268d aa3c          	or	a,#60
11672  268f c7500f        	ld	20495,a
11673                     ; 2188 	halt();
11676  2692 8e            halt
11679  2693               L1054:
11680                     ; 2195 	uart1_in_an();
11682  2693 cd0000        	call	_uart1_in_an
11684                     ; 2196 	if(b100Hz)
11686  2696 3d00          	tnz	_b100Hz
11687  2698 270b          	jreq	L5054
11688                     ; 2198 		b100Hz=0;
11690  269a 3f00          	clr	_b100Hz
11691                     ; 2200 		but_drv();
11693  269c cd0000        	call	_but_drv
11695                     ; 2201 		but_an();
11697  269f cd1854        	call	_but_an
11699                     ; 2204 		input_stat_drv();
11701  26a2 cd0000        	call	_input_stat_drv
11703  26a5               L5054:
11704                     ; 2207 	if(b10Hz)
11706  26a5 3d01          	tnz	_b10Hz
11707  26a7 271e          	jreq	L7054
11708                     ; 2209 		b10Hz=0;
11710  26a9 3f01          	clr	_b10Hz
11711                     ; 2211 		if(bWATCHDOG_REFRESH)watchdog_reset();
11713  26ab 3d2a          	tnz	_bWATCHDOG_REFRESH
11714  26ad 2703          	jreq	L1154
11717  26af cd0000        	call	_watchdog_reset
11719  26b2               L1154:
11720                     ; 2212 		ind_hndl();
11722  26b2 cd077b        	call	_ind_hndl
11724                     ; 2213 		uart3_in_an();
11726  26b5 cd0000        	call	_uart3_in_an
11728                     ; 2214 		out_drv();
11730  26b8 cd0000        	call	_out_drv
11732                     ; 2215 		matemath();
11734  26bb cd071e        	call	_matemath
11736                     ; 2216 		modem_drv();
11738  26be cd0000        	call	_modem_drv
11740                     ; 2217 		sms_fifo_drv();
11742  26c1 cd0000        	call	_sms_fifo_drv
11744                     ; 2218 		power_in_drv();
11746  26c4 cd00f8        	call	_power_in_drv
11748  26c7               L7054:
11749                     ; 2220 	if(b5Hz)
11751  26c7 3d02          	tnz	_b5Hz
11752  26c9 270c          	jreq	L3154
11753                     ; 2222 		b5Hz=0;
11755  26cb 3f02          	clr	_b5Hz
11756                     ; 2224 		if(version_show_cnt)version_show_cnt--;
11758  26cd 725d000c      	tnz	_version_show_cnt
11759  26d1 2704          	jreq	L3154
11762  26d3 725a000c      	dec	_version_show_cnt
11763  26d7               L3154:
11764                     ; 2226 	if(b2Hz)
11766  26d7 3d03          	tnz	_b2Hz
11767  26d9 2705          	jreq	L7154
11768                     ; 2228 		b2Hz=0;
11770  26db 3f03          	clr	_b2Hz
11771                     ; 2230 		time_drv();
11773  26dd cd0528        	call	_time_drv
11775  26e0               L7154:
11776                     ; 2232 	if(b1Hz)
11778  26e0 3d04          	tnz	_b1Hz
11779  26e2 27af          	jreq	L1054
11780                     ; 2234 		b1Hz=0;
11782  26e4 3f04          	clr	_b1Hz
11783                     ; 2236 		isp_hndl();
11785  26e6 cd05bc        	call	_isp_hndl
11787                     ; 2239 		if(mainCnt<1000)
11789  26e9 9c            	rvf
11790  26ea be82          	ldw	x,_mainCnt
11791  26ec a303e8        	cpw	x,#1000
11792  26ef 2e07          	jrsge	L3254
11793                     ; 2241 			mainCnt++;
11795  26f1 be82          	ldw	x,_mainCnt
11796  26f3 1c0001        	addw	x,#1
11797  26f6 bf82          	ldw	_mainCnt,x
11798  26f8               L3254:
11799                     ; 2245 		ds18b20_temper_drv();
11801  26f8 cd0000        	call	_ds18b20_temper_drv
11803                     ; 2246 		ret_ind_hndl();
11805  26fb cd0000        	call	_ret_ind_hndl
11807                     ; 2247 		random_gen();
11809  26fe cd0000        	call	_random_gen
11811                     ; 2250 		sheduler_hndl();
11813  2701 cd05bb        	call	_sheduler_hndl
11815                     ; 2251 		error_warn_hndl();
11817  2704 cd02a4        	call	_error_warn_hndl
11819                     ; 2252 		airSensorLineErrorDrv();
11821  2707 cd0306        	call	_airSensorLineErrorDrv
11823                     ; 2253 		waterTemperAlarmHndl();
11825  270a cd03a6        	call	_waterTemperAlarmHndl
11827  270d 2084          	jra	L1054
13114                     	xdef	_main
13115                     	xdef	f_TIM4_UPD_Interrupt
13116                     	xdef	_matemath
13117                     	xdef	_power_necc_hndl
13118                     	xdef	_power_hndl
13119                     	xdef	_isp_hndl
13120                     	xdef	_sheduler_hndl
13121                     	xdef	_time_drv
13122                     	xdef	_beep_drv
13123                     	xdef	_waterTemperAlarmHndl
13124                     	xdef	_airSensorLineErrorDrv
13125                     	xdef	_error_warn_hndl
13126                     	xdef	_power_in_test
13127                     	xdef	_power_in_drv
13128                     	xdef	_isp_gpio_init
13129                     	xdef	_input_stat_drv
13130                     	switch	.bss
13131  0000               _isp_in_cnt:
13132  0000 000000000000  	ds.b	6
13133                     	xdef	_isp_in_cnt
13134  0006               _isp_cnt:
13135  0006 00            	ds.b	1
13136                     	xdef	_isp_cnt
13137                     	xdef	_version_show_cnt
13138                     	switch	.ubsct
13139  0000               _bDEB:
13140  0000 00            	ds.b	1
13141                     	xdef	_bDEB
13142                     	xdef	_bWATCHDOG_REFRESH
13143  0001               _tempUC:
13144  0001 00            	ds.b	1
13145                     	xdef	_tempUC
13146                     	xdef	_TABLE_TIME_EE_MAX
13147                     	xdef	_TABLE_TIME_EE_MIN
13148  0002               _day_sheduler_time:
13149  0002 00            	ds.b	1
13150                     	xdef	_day_sheduler_time
13151  0003               _time_date:
13152  0003 00            	ds.b	1
13153                     	xdef	_time_date
13154  0004               _temperRegToSheduler:
13155  0004 00            	ds.b	1
13156                     	xdef	_temperRegToSheduler
13157                     	xdef	_b1Hz
13158                     	xdef	_b2Hz
13159                     	xdef	_b5Hz
13160                     	xdef	_b10Hz
13161                     	xdef	_b100Hz
13162                     	xref	_watchdog_reset
13163                     	xref	_watchdog_enable
13164                     	xref	_strcpy
13165                     	xref	_sms_fifo_drv
13166                     	xref	_modem_send_sms
13167                     	xref	_modem_drv
13168                     	xref	_tempRussianText
13169                     	xref.b	_modemDrvWatchDogCnt
13170                     	xref.b	_modemDrvPowerDownStepCnt
13171                     	xref.b	_modemDrvPDUSMSSendStepCnt
13172                     	xref.b	_modemDrvInitStepCnt
13173                     	xref.b	_modemState
13174                     	xref	__ds1307_read_time
13175                     	xref	__ds1307_write_byte
13176                     	xref	_uart1_in_an
13177                     	xref	_uart1_init
13178                     	xref	_modem_plazma1
13179                     	xref	_modem_plazma
13180                     	xref	_tx_counter1
13181                     	xref	_tx_wr_index1
13182                     	xref	_uart3_in_an
13183                     	xref	_uart3_init
13184                     	xref	_ds18b20_temper_drv
13185                     	xref	_waterSensorErrorStat
13186                     	xref	_wire1_in
13187                     	xref	_random_gen
13188                     	xref	_led_flash
13189                     	xref	_led_on
13190                     	xref	_led_off
13191                     	xref	_led_mask_off
13192                     	xref	_led_set
13193                     	xref	_ret_ind_hndl
13194                     	xref	_ret_ind
13195                     	xref	_int2indII_slkuf
13196                     	xref	_int2indI_slkuf
13197                     	xref	_gran_ring_char
13198                     	xref	_gran_char
13199                     	xref	_tree_up
13200                     	xref	_tree_down
13201                     	xref	_clear_ind
13202                     	xref	_but_drv
13203                     	xref	_out_drv
13204                     	xref.b	_speed
13205                     	xref.b	_n_but
13206                     	xref.b	_but
13207                     	xref.b	_but_new
13208                     	xdef	_t4_init
13209                     	xdef	_ind_hndl
13210                     	xdef	_but_an
13211                     	switch	.bss
13212  0007               _ind_check_cnt1:
13213  0007 0000          	ds.b	2
13214                     	xdef	_ind_check_cnt1
13215  0009               _ind_check_cnt:
13216  0009 0000          	ds.b	2
13217                     	xdef	_ind_check_cnt
13218  000b               _beepTestCnt:
13219  000b 00            	ds.b	1
13220                     	xdef	_beepTestCnt
13221  000c               _bCBC_SELF:
13222  000c 00            	ds.b	1
13223                     	xdef	_bCBC_SELF
13224  000d               _cbcVoltage:
13225  000d 0000          	ds.b	2
13226                     	xdef	_cbcVoltage
13227  000f               _cbc_temp1:
13228  000f 000000000000  	ds.b	15
13229                     	xdef	_cbc_temp1
13230  001e               _cbc_temp:
13231  001e 000000000000  	ds.b	15
13232                     	xdef	_cbc_temp
13233  002d               _cbcSystemRequ:
13234  002d 00            	ds.b	1
13235                     	xdef	_cbcSystemRequ
13236  002e               _main_power_off_hndl_cnt:
13237  002e 0000          	ds.b	2
13238                     	xdef	_main_power_off_hndl_cnt
13239                     	xdef	_powerStat
13240                     	xdef	_power_in_drv_alarm_cnt
13241                     	xdef	_power_in_drv_off_cnt
13242                     	xdef	_rand_dig_str
13243  0030               _rand_dig:
13244  0030 000000000000  	ds.b	7
13245                     	xdef	_rand_dig
13246  0037               _waterTemperAlarmCnt:
13247  0037 00            	ds.b	1
13248                     	xdef	_waterTemperAlarmCnt
13249                     	xdef	_waterTemperAlarmOld
13250                     	xdef	_waterTemperAlarm
13251                     	switch	.ubsct
13252  0005               _cntAirSensorLineErrorHi:
13253  0005 00            	ds.b	1
13254                     	xdef	_cntAirSensorLineErrorHi
13255  0006               _cntAirSensorLineErrorLo:
13256  0006 00            	ds.b	1
13257                     	xdef	_cntAirSensorLineErrorLo
13258  0007               _bWARN:
13259  0007 00            	ds.b	1
13260                     	xdef	_bWARN
13261  0008               _bERR:
13262  0008 00            	ds.b	1
13263                     	xdef	_bERR
13264  0009               _beep_drv_cnt:
13265  0009 00            	ds.b	1
13266                     	xdef	_beep_drv_cnt
13267  000a               _powerEnabled:
13268  000a 00            	ds.b	1
13269                     	xdef	_powerEnabled
13270  000b               _powerNeccDelta:
13271  000b 00            	ds.b	1
13272                     	xdef	_powerNeccDelta
13273                     	xdef	_powerNeccOld
13274                     	xdef	_powerNecc
13275  000c               _time_year:
13276  000c 00            	ds.b	1
13277                     	xdef	_time_year
13278  000d               _time_month:
13279  000d 00            	ds.b	1
13280                     	xdef	_time_month
13281  000e               _time_day_of_week:
13282  000e 00            	ds.b	1
13283                     	xdef	_time_day_of_week
13284  000f               _time_hour:
13285  000f 00            	ds.b	1
13286                     	xdef	_time_hour
13287  0010               _time_min:
13288  0010 00            	ds.b	1
13289                     	xdef	_time_min
13290  0011               _time_sec:
13291  0011 00            	ds.b	1
13292                     	xdef	_time_sec
13293  0012               _buff_for_time:
13294  0012 000000000000  	ds.b	10
13295                     	xdef	_buff_for_time
13296                     	xdef	_airSensorErrorStatOld
13297                     	xdef	_airSensorErrorStat
13298  001c               _targetTemper:
13299  001c 00            	ds.b	1
13300                     	xdef	_targetTemper
13301  001d               _aktualTemper:
13302  001d 00            	ds.b	1
13303                     	xdef	_aktualTemper
13304  001e               _temperOfAir:
13305  001e 00            	ds.b	1
13306                     	xdef	_temperOfAir
13307  001f               _temperOfWater:
13308  001f 00            	ds.b	1
13309                     	xdef	_temperOfWater
13310                     	switch	.bss
13311  0038               _optr_kontr_cnt:
13312  0038 00            	ds.b	1
13313                     	xdef	_optr_kontr_cnt
13314  0039               _optr_stat:
13315  0039 00            	ds.b	1
13316                     	xdef	_optr_stat
13317                     	switch	.ubsct
13318  0020               _out_stat:
13319  0020 000000        	ds.b	3
13320                     	xdef	_out_stat
13321  0023               _led_ind_out2:
13322  0023 00            	ds.b	1
13323                     	xdef	_led_ind_out2
13324  0024               _led_ind_out1:
13325  0024 00            	ds.b	1
13326                     	xdef	_led_ind_out1
13327  0025               _bFL_:
13328  0025 00            	ds.b	1
13329                     	xdef	_bFL_
13330  0026               _bFL1:
13331  0026 00            	ds.b	1
13332                     	xdef	_bFL1
13333  0027               _bFL2:
13334  0027 00            	ds.b	1
13335                     	xdef	_bFL2
13336  0028               _bFL5:
13337  0028 00            	ds.b	1
13338                     	xdef	_bFL5
13339  0029               _zero_on:
13340  0029 00            	ds.b	1
13341                     	xdef	_zero_on
13342                     	xdef	_ind_pointer
13343  002a               _c_ind:
13344  002a 0000000000    	ds.b	5
13345                     	xdef	_c_ind
13346  002f               _b_ind:
13347  002f 000000000000  	ds.b	50
13348                     	xdef	_b_ind
13349  0061               _a_ind:
13350  0061 0000000000    	ds.b	5
13351                     	xdef	_a_ind
13352                     	xdef	_DIGISYM
13353  0066               _ind_out_:
13354  0066 0000000000    	ds.b	5
13355                     	xdef	_ind_out_
13356  006b               _dig:
13357  006b 000000000000  	ds.b	10
13358                     	xdef	_dig
13359                     	xdef	_ind_strob
13360                     	xdef	_ind_outG
13361                     	xdef	_ind_outC
13362  0075               _ind_outB:
13363  0075 000000000000  	ds.b	12
13364                     	xdef	_ind_outB
13365  0081               _ind_cnt:
13366  0081 00            	ds.b	1
13367                     	xdef	_ind_cnt
13368  0082               _mainCnt:
13369  0082 0000          	ds.b	2
13370                     	xdef	_mainCnt
13371                     	xdef	_t0_cnt4
13372                     	xdef	_t0_cnt3
13373                     	xdef	_t0_cnt2
13374                     	xdef	_t0_cnt1
13375                     	xdef	_t0_cnt0
13376  0084               _fiksRandom:
13377  0084 00            	ds.b	1
13378                     	xdef	_fiksRandom
13379  0085               _currRandom:
13380  0085 00            	ds.b	1
13381                     	xdef	_currRandom
13382                     	xdef	_warmOrder
13383                     	switch	.const
13384  004a               L3634:
13385  004a 313132333435  	dc.b	"11234567890",0
13386  0056               L1634:
13387  0056 393233373332  	dc.b	"9237328354",0
13388  0061               L7534:
13389  0061 393133343836  	dc.b	"9134863890",0
13390  006c               L5534:
13391  006c 393133393239  	dc.b	"9139294352",0
13392  0077               L5332:
13393  0077 d2e5ecefe5f0  	dc.b	210,229,236,239,229,240
13394  007d e0f2f3f0e020  	dc.b	224,242,243,240,224,32
13395  0083 e2eee4fb20e2  	dc.b	226,238,228,251,32,226
13396  0089 20f1          	dc.b	" ",241
13397  008b e8f1f2e5ece5  	dc.b	232,241,242,229,236,229
13398  0091 20e2          	dc.b	" ",226
13399  0093 fbf8e5203930  	dc.b	251,248,229,32,57,48
13400  0099 20e3          	dc.b	" ",227
13401  009b f02ed62e00    	dc.b	240,46,214,46,0
13402  00a0               L7232:
13403  00a0 d2e5ecefe5f0  	dc.b	210,229,236,239,229,240
13404  00a6 e0f2f3f0e020  	dc.b	224,242,243,240,224,32
13405  00ac e2eee4fb20e2  	dc.b	226,238,228,251,32,226
13406  00b2 20f1          	dc.b	" ",241
13407  00b4 e8f1f2e5ece5  	dc.b	232,241,242,229,236,229
13408  00ba 20ed          	dc.b	" ",237
13409  00bc e8e6e5203320  	dc.b	232,230,229,32,51,32
13410  00c2 e3f02ed62e00  	dc.b	227,240,46,214,46,0
13411  00c8               L1522:
13412  00c8 cde5e8f1eff0  	dc.b	205,229,232,241,239,240
13413  00ce e0e2edeef1f2  	dc.b	224,226,237,238,241,242
13414  00d4 fc20e4e0f2f7  	dc.b	252,32,228,224,242,247
13415  00da e8eae020f2e5  	dc.b	232,234,224,32,242,229
13416  00e0 ecefe5f0e0f2  	dc.b	236,239,229,240,224,242
13417  00e6 f3f0fb20e2ee  	dc.b	243,240,251,32,226,238
13418  00ec e7e4f3f5e000  	dc.b	231,228,243,245,224,0
13419  00f2               L3212:
13420  00f2 ddebe5eaf2f0  	dc.b	221,235,229,234,242,240
13421  00f8 e8f7e5f1f2e2  	dc.b	232,247,229,241,242,226
13422  00fe ee20e2eaebfe  	dc.b	238,32,226,234,235,254
13423  0104 f7e5edee00    	dc.b	247,229,237,238,0
13424  0109               L7702:
13425  0109 ddebe5eaf2f0  	dc.b	221,235,229,234,242,240
13426  010f e8f7e5f1f2e2  	dc.b	232,247,229,241,242,226
13427  0115 ee20eef2eaeb  	dc.b	238,32,238,242,234,235
13428  011b fef7e5edee00  	dc.b	254,247,229,237,238,0
13429                     	xref.b	c_lreg
13430                     	xref.b	c_x
13431                     	xref.b	c_y
13451                     	xref	c_idiv
13452                     	xref	c_eewrw
13453                     	xref	c_smodx
13454                     	xref	c_smody
13455                     	xref	c_imul
13456                     	xref	c_sdivx
13457                     	xref	c_lmod
13458                     	xref	c_eewrl
13459                     	xref	c_ladc
13460                     	xref	c_ltor
13461                     	xref	c_eewrc
13462                     	end
