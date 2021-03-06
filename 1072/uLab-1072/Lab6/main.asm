;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _a
	.globl _t
	.globl _table
	.globl _main
	.globl _display
	.globl _delay
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _index
	.globl _multi
	.globl _tmp
	.globl _counter
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_counter::
	.ds 2
_tmp::
	.ds 2
_multi::
	.ds 2
_index::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;d1                        Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:38: void delay() {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:40: for (d1 = 0; d1 < 800; d1 ++) {
	mov	r6,#0x20
	mov	r7,#0x03
00104$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00104$
;	main.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display'
;------------------------------------------------------------
;	main.c:45: void display(){
;	-----------------------------------------
;	 function display
;	-----------------------------------------
_display:
;	main.c:46: P0=tmp^0xff;
	mov	a,#0xff
	xrl	a,_tmp
	mov	r6,a
	mov	_P0,r6
;	main.c:47: P2=a[((counter--)+index)&7];
	mov	r6,_counter
	dec	_counter
	mov	a,#0xff
	cjne	a,_counter,00121$
	dec	(_counter + 1)
00121$:
	mov	a,_index
	add	a,r6
	mov	r6,a
	rlc	a
	subb	a,acc
	anl	ar6,#0x07
	mov	r7,#0x00
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_a
	mov	dpl,a
	mov	a,r7
	addc	a,#(_a >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P2,a
;	main.c:48: delay();
	lcall	_delay
;	main.c:49: tmp<<=1;
	mov	a,_tmp
	add	a,_tmp
	mov	_tmp,a
	mov	a,(_tmp + 1)
	rlc	a
	mov	(_tmp + 1),a
;	main.c:50: if(tmp==0){
	mov	a,_tmp
	orl	a,(_tmp + 1)
;	main.c:51: tmp=0x01;
;	main.c:52: counter=7;
	jnz	00107$
	mov	_tmp,#0x01
	mov	(_tmp + 1),a
	mov	_counter,#0x07
	mov	(_counter + 1),a
;	main.c:53: multi++;
	inc	_multi
	clr	a
	cjne	a,_multi,00123$
	inc	(_multi + 1)
00123$:
;	main.c:54: if(multi==10){
	mov	a,#0x0a
	cjne	a,_multi,00124$
	clr	a
	cjne	a,(_multi + 1),00124$
	sjmp	00125$
00124$:
	ret
00125$:
;	main.c:55: multi=0;
	clr	a
	mov	_multi,a
	mov	(_multi + 1),a
;	main.c:56: index++;
	inc	_index
;	genFromRTrack removed	clr	a
	cjne	a,_index,00126$
	inc	(_index + 1)
00126$:
;	main.c:57: if(index==8)
	mov	a,#0x08
	cjne	a,_index,00127$
	clr	a
	cjne	a,(_index + 1),00127$
	sjmp	00128$
00127$:
	ret
00128$:
;	main.c:58: index=0;
	clr	a
	mov	_index,a
	mov	(_index + 1),a
00107$:
;	main.c:61: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:62: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:63: counter=7;
	mov	_counter,#0x07
	mov	(_counter + 1),#0x00
;	main.c:64: tmp=1;
	mov	_tmp,#0x01
;	main.c:65: index=0;
	clr	a
	mov	(_tmp + 1),a
	mov	_index,a
	mov	(_index + 1),a
;	main.c:66: P1=0xff;
	mov	_P1,#0xff
;	main.c:67: while(1){
00102$:
;	main.c:68: display();
	lcall	_display
;	main.c:75: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_table:
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x00,#0x00	;  0
	.byte #0x00,#0x00	;  0
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
	.byte #0x01,#0x00	;  1
_t:
	.byte #0x7f,#0x00	;  127
	.byte #0x3f,#0x00	;  63
	.byte #0x1f,#0x00	;  31
	.byte #0x0f,#0x00	;  15
	.byte #0x07,#0x00	;  7
	.byte #0x03,#0x00	;  3
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
_a:
	.byte #0xe7,#0x00	;  231
	.byte #0xdb,#0x00	;  219
	.byte #0xbd,#0x00	;  189
	.byte #0x81,#0x00	;  129
	.byte #0xbd,#0x00	;  189
	.byte #0xbd,#0x00	;  189
	.byte #0xbd,#0x00	;  189
	.byte #0xff,#0x00	;  255
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
