   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
2818                     ; 5 void watchdog_enable(void)
2818                     ; 6 {
2820                     	switch	.text
2821  0000               _watchdog_enable:
2825                     ; 7 IWDG_KR=KEY_ENABLE;
2827  0000 35cc50e0      	mov	_IWDG_KR,#204
2828                     ; 8 IWDG_KR=KEY_ACCESS;
2830  0004 355550e0      	mov	_IWDG_KR,#85
2831                     ; 9 IWDG_PR=6;
2833  0008 350650e1      	mov	_IWDG_PR,#6
2834                     ; 10 IWDG_RLR=250;
2836  000c 35fa50e2      	mov	_IWDG_RLR,#250
2837                     ; 12 }
2840  0010 81            	ret
2864                     ; 15 void watchdog_reset(void)
2864                     ; 16 {
2865                     	switch	.text
2866  0011               _watchdog_reset:
2870                     ; 17 IWDG_KR=KEY_REFRESH;
2872  0011 35aa50e0      	mov	_IWDG_KR,#170
2873                     ; 18 }
2876  0015 81            	ret
2889                     	xdef	_watchdog_reset
2890                     	xdef	_watchdog_enable
2909                     	end
