   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  68                     ; 5 void _ds1307_write_byte(char adr,char data)
  68                     ; 6 {
  70                     	switch	.text
  71  0000               __ds1307_write_byte:
  73  0000 89            	pushw	x
  74       00000000      OFST:	set	0
  77                     ; 7 i2c_Start();
  79  0001 cd0000        	call	_i2c_Start
  81                     ; 8 i2c_SendByte(0xd0);
  83  0004 a6d0          	ld	a,#208
  84  0006 cd0000        	call	_i2c_SendByte
  86                     ; 9 if(i2c_ReadAcknowledge()) goto Stop_label_ds1307_write_byte;
  88  0009 cd0000        	call	_i2c_ReadAcknowledge
  90  000c 4d            	tnz	a
  91  000d 2613          	jrne	L3
  94                     ; 10 i2c_SendByte(adr);
  96  000f 7b01          	ld	a,(OFST+1,sp)
  97  0011 cd0000        	call	_i2c_SendByte
  99                     ; 11 if(i2c_ReadAcknowledge()) goto Stop_label_ds1307_write_byte;
 101  0014 cd0000        	call	_i2c_ReadAcknowledge
 103  0017 4d            	tnz	a
 104  0018 2608          	jrne	L3
 107                     ; 12 i2c_SendByte(data);
 109  001a 7b02          	ld	a,(OFST+2,sp)
 110  001c cd0000        	call	_i2c_SendByte
 112                     ; 13 i2c_ReadAcknowledge();
 114  001f cd0000        	call	_i2c_ReadAcknowledge
 116  0022               L3:
 117                     ; 14 Stop_label_ds1307_write_byte: 
 117                     ; 15 i2c_Stop();
 119  0022 cd0000        	call	_i2c_Stop
 121                     ; 16 }
 124  0025 85            	popw	x
 125  0026 81            	ret
 176                     ; 19 void _ds1307_read_time(char *buff)
 176                     ; 20 {
 177                     	switch	.text
 178  0027               __ds1307_read_time:
 180  0027 89            	pushw	x
 181  0028 88            	push	a
 182       00000001      OFST:	set	1
 185                     ; 23 i2c_Start();
 187  0029 cd0000        	call	_i2c_Start
 189                     ; 24 i2c_SendByte(0xd0);
 191  002c a6d0          	ld	a,#208
 192  002e cd0000        	call	_i2c_SendByte
 194                     ; 25 if(i2c_ReadAcknowledge()) goto Stop_label_ds1307_read_time;
 196  0031 cd0000        	call	_i2c_ReadAcknowledge
 198  0034 4d            	tnz	a
 199  0035 2643          	jrne	L14
 202                     ; 26 i2c_SendByte(0x00);
 204  0037 4f            	clr	a
 205  0038 cd0000        	call	_i2c_SendByte
 207                     ; 27 if(i2c_ReadAcknowledge()) goto Stop_label_ds1307_read_time;
 209  003b cd0000        	call	_i2c_ReadAcknowledge
 211  003e 4d            	tnz	a
 212  003f 2639          	jrne	L14
 215                     ; 28 i2c_Restart();
 217  0041 cd0000        	call	_i2c_Restart
 219                     ; 29 i2c_SendByte(0xd1);
 221  0044 a6d1          	ld	a,#209
 222  0046 cd0000        	call	_i2c_SendByte
 224                     ; 30 if(i2c_ReadAcknowledge()) goto Stop_label_ds1307_read_time;
 226  0049 cd0000        	call	_i2c_ReadAcknowledge
 228  004c 4d            	tnz	a
 229  004d 262b          	jrne	L14
 232                     ; 31 for(i=0;i<7;i++)
 234  004f 0f01          	clr	(OFST+0,sp)
 235  0051               L37:
 236                     ; 33 	buff[i]=i2c_ReadByte();
 238  0051 7b02          	ld	a,(OFST+1,sp)
 239  0053 97            	ld	xl,a
 240  0054 7b03          	ld	a,(OFST+2,sp)
 241  0056 1b01          	add	a,(OFST+0,sp)
 242  0058 2401          	jrnc	L01
 243  005a 5c            	incw	x
 244  005b               L01:
 245  005b 02            	rlwa	x,a
 246  005c 89            	pushw	x
 247  005d cd0000        	call	_i2c_ReadByte
 249  0060 85            	popw	x
 250  0061 f7            	ld	(x),a
 251                     ; 34 	i2c_SendAcknowledge(1);
 253  0062 a601          	ld	a,#1
 254  0064 cd0000        	call	_i2c_SendAcknowledge
 256                     ; 31 for(i=0;i<7;i++)
 258  0067 0c01          	inc	(OFST+0,sp)
 261  0069 7b01          	ld	a,(OFST+0,sp)
 262  006b a107          	cp	a,#7
 263  006d 25e2          	jrult	L37
 264                     ; 36 buff[7]=i2c_ReadByte();
 266  006f cd0000        	call	_i2c_ReadByte
 268  0072 1e02          	ldw	x,(OFST+1,sp)
 269  0074 e707          	ld	(7,x),a
 270                     ; 37 i2c_SendAcknowledge(0);
 272  0076 4f            	clr	a
 273  0077 cd0000        	call	_i2c_SendAcknowledge
 275  007a               L14:
 276                     ; 38 Stop_label_ds1307_read_time: 
 276                     ; 39 i2c_Stop();
 278  007a cd0000        	call	_i2c_Stop
 280                     ; 41 }
 283  007d 5b03          	addw	sp,#3
 284  007f 81            	ret
 297                     	xref	_i2c_Stop
 298                     	xref	_i2c_SendByte
 299                     	xref	_i2c_SendAcknowledge
 300                     	xref	_i2c_ReadByte
 301                     	xref	_i2c_ReadAcknowledge
 302                     	xref	_i2c_Restart
 303                     	xref	_i2c_Start
 304                     	xdef	__ds1307_read_time
 305                     	xdef	__ds1307_write_byte
 324                     	end
