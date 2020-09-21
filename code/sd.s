	.file	"sd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__RAMPZ__ = 0x3b
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text,code
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.writeSPI,code
.global	writeSPI
	.type	writeSPI, @function
writeSPI:
.LFB13:
	.file 1 "fatfs/sd.c"
	.loc 1 100 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 101 0
	sts 2755,r24
	.loc 1 102 0
	ldi r30,lo8(-64)
	ldi r31,lo8(10)
.LVL1:
.L2:
	.loc 1 102 0 is_stmt 0 discriminator 1
	ldd r24,Z+2
	.loc 1 102 0 is_stmt 1 discriminator 1
	tst r24
	brge .L2
	.loc 1 103 0
	lds r24,2755
	.loc 1 104 0
	ret
	.cfi_endproc
.LFE13:
	.size	writeSPI, .-writeSPI
	.section	.text.spi_wait_ready,code
.global	spi_wait_ready
	.type	spi_wait_ready, @function
spi_wait_ready:
.LFB14:
	.loc 1 107 0
	.cfi_startproc
	push r12
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LVL2:
	.loc 1 107 0
	mov __tmp_reg__,r31
	ldi r31,lo8(-96)
	mov r12,r31
	ldi r31,lo8(-122)
	mov r13,r31
	clr r14
	inc r14
	mov r15,__zero_reg__
	mov r31,__tmp_reg__
.LVL3:
.L6:
	.loc 1 111 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL4:
	cpi r24,lo8(-1)
	breq .L4
	.loc 1 112 0 discriminator 2
/* #APP */
 ;  112 "fatfs/sd.c" 1
	wdr
 ;  0 "" 2
.LVL5:
/* #NOAPP */
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL6:
	.loc 1 110 0 discriminator 2
	brne .L6
.LVL7:
.L4:
/* epilogue start */
	.loc 1 114 0
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE14:
	.size	spi_wait_ready, .-spi_wait_ready
	.section	.text.sendSDCmd,code
.global	sendSDCmd
	.type	sendSDCmd, @function
sendSDCmd:
.LFB15:
	.loc 1 117 0
	.cfi_startproc
.LVL8:
	push r15
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r28,r24
	mov r29,r20
	mov r17,r21
	mov r16,r22
	mov r15,r23
	.loc 1 120 0
	ldi r24,lo8(1)
.LVL9:
	sts 1702,r24
	.loc 1 121 0
	lds r24,init
	lds r25,init+1
	lds r26,init+2
	lds r27,init+3
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L9
	.loc 1 121 0 is_stmt 0 discriminator 1
	call spi_wait_ready
.LVL10:
.L9:
	.loc 1 123 0 is_stmt 1
	mov r24,r28
	ori r24,lo8(64)
	call writeSPI
.LVL11:
	.loc 1 124 0
	mov r24,r15
	call writeSPI
.LVL12:
	.loc 1 125 0
	mov r24,r16
	call writeSPI
.LVL13:
	.loc 1 126 0
	mov r24,r17
	call writeSPI
.LVL14:
	.loc 1 127 0
	mov r24,r29
	call writeSPI
.LVL15:
	.loc 1 129 0
	tst r28
	breq .L11
	cpi r28,lo8(8)
	breq .L12
	rjmp .L18
.L11:
	.loc 1 131 0
	ldi r24,lo8(-107)
	call writeSPI
.LVL16:
	.loc 1 132 0
	rjmp .L13
.L12:
	.loc 1 134 0
	ldi r24,lo8(-121)
	call writeSPI
.LVL17:
	.loc 1 135 0
	rjmp .L13
.L18:
	.loc 1 137 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL18:
	.loc 1 138 0
	rjmp .L13
.LVL19:
.L15:
	.loc 1 152 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL20:
	ldi r25,0
.LVL21:
	.loc 1 153 0
	cpi r24,-1
	cpc r25,__zero_reg__
	brne .L16
.LVL22:
	sbiw r28,1
.LVL23:
	.loc 1 151 0 discriminator 2
	brne .L15
	rjmp .L16
.LVL24:
.L13:
	.loc 1 117 0
	ldi r28,lo8(8)
	ldi r29,0
.LVL25:
	rjmp .L15
.LVL26:
.L16:
/* epilogue start */
	.loc 1 158 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	ret
	.cfi_endproc
.LFE15:
	.size	sendSDCmd, .-sendSDCmd
	.section	.text.sd_init,code
.global	sd_init
	.type	sd_init, @function
sd_init:
.LFB16:
	.loc 1 164 0
	.cfi_startproc
	push r10
	.cfi_def_cfa_offset 4
	.cfi_offset 10, -3
	push r11
	.cfi_def_cfa_offset 5
	.cfi_offset 11, -4
	push r12
	.cfi_def_cfa_offset 6
	.cfi_offset 12, -5
	push r13
	.cfi_def_cfa_offset 7
	.cfi_offset 13, -6
	push r14
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -7
	push r15
	.cfi_def_cfa_offset 9
	.cfi_offset 15, -8
	push r16
	.cfi_def_cfa_offset 10
	.cfi_offset 16, -9
	push r17
	.cfi_def_cfa_offset 11
	.cfi_offset 17, -10
	push r28
	.cfi_def_cfa_offset 12
	.cfi_offset 28, -11
	push r29
	.cfi_def_cfa_offset 13
	.cfi_offset 29, -12
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
.LBB8:
.LBB9:
	.loc 1 83 0
	ldi r30,lo8(-96)
	ldi r31,lo8(6)
	ldi r25,lo8(1)
	std Z+1,r25
	.loc 1 84 0
	ldi r24,lo8(8)
	sts 1666,r24
	.loc 1 90 0
	std Z+5,r25
	.loc 1 92 0
	sts sd_bytesread,__zero_reg__
	sts sd_bytesread+1,__zero_reg__
	sts sd_bytesread+2,__zero_reg__
	sts sd_bytesread+3,__zero_reg__
	.loc 1 93 0
	ldi r20,lo8(1)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	sts init,r20
	sts init+1,r21
	sts init+2,r22
	sts init+3,r23
	.loc 1 96 0
	ldi r26,lo8(-64)
	ldi r27,lo8(10)
	ld r24,X
	.loc 1 96 0
	andi r24,lo8(-4)
	ori r24,lo8(2)
	st X,r24
.LBE9:
.LBE8:
	.loc 1 169 0
	sts readlock,__zero_reg__
	sts readlock+1,__zero_reg__
	sts writelock,__zero_reg__
	sts writelock+1,__zero_reg__
	.loc 1 170 0
	sts sd_raw_card_type,__zero_reg__
	sts sd_raw_card_type+1,__zero_reg__
	.loc 1 171 0
	ldi r20,lo8(-1)
	ldi r21,lo8(-1)
	movw r22,r20
	sts lastsec,r20
	sts lastsec+1,r21
	sts lastsec+2,r22
	sts lastsec+3,r23
	.loc 1 173 0
	std Z+5,r25
	.loc 1 173 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL27:
	ldi r28,lo8(10)
	ldi r29,0
.LVL28:
.L20:
	.loc 1 176 0 discriminator 3
	ldi r24,lo8(-1)
	call writeSPI
.LVL29:
	sbiw r28,1
.LVL30:
	.loc 1 175 0 discriminator 3
	brne .L20
	.loc 1 178 0
	ldi r28,lo8(-96)
	ldi r29,lo8(6)
.LVL31:
	ldi r17,lo8(1)
	std Y+6,r17
	.loc 1 180 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	ldi r24,0
	call sendSDCmd
.LVL32:
	movw r14,r24
.LVL33:
	.loc 1 181 0
	std Y+5,r17
	.loc 1 181 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL34:
	.loc 1 182 0
	dec r14
	or r14,r15
	breq .+2
	rjmp .L34
	.loc 1 187 0
	ldi r20,lo8(-86)
	ldi r21,lo8(1)
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(8)
	call sendSDCmd
.LVL35:
	.loc 1 188 0
	sbrc r24,2
	rjmp .L22
	.loc 1 189 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL36:
	.loc 1 190 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL37:
	.loc 1 191 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL38:
	sbrs r24,0
	rjmp .L35
	.loc 1 192 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL39:
	cpi r24,lo8(-86)
	breq .+2
	rjmp .L36
	.loc 1 195 0
	ldi r24,lo8(__c.4655)
	ldi r25,hi8(__c.4655)
	ldi r26,hlo8(__c.4655)
	push r26
	.cfi_def_cfa_offset 14
	push r25
	.cfi_def_cfa_offset 15
	push r24
	.cfi_def_cfa_offset 16
	call printf_P
.LVL40:
	.loc 1 196 0
	lds r24,sd_raw_card_type
	lds r25,sd_raw_card_type+1
	ori r24,2
	sts sd_raw_card_type,r24
	sts sd_raw_card_type+1,r25
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.cfi_def_cfa_offset 13
.L25:
	.loc 1 173 0
	ldi r28,0
	ldi r29,lo8(-128)
.LBB10:
	.loc 1 217 0
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	mov r12,__zero_reg__
	set
	clr r13
	bld r13,6
	rjmp .L23
.L22:
.LBE10:
	.loc 1 200 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	ldi r24,lo8(55)
	call sendSDCmd
.LVL41:
	.loc 1 201 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	ldi r24,lo8(41)
	call sendSDCmd
.LVL42:
	.loc 1 202 0
	sbrc r24,2
	rjmp .L24
	.loc 1 204 0
	ldi r24,lo8(1)
	ldi r25,0
	sts sd_raw_card_type,r24
	sts sd_raw_card_type+1,r25
	.loc 1 205 0
	ldi r24,lo8(__c.4657)
	ldi r25,hi8(__c.4657)
	ldi r26,hlo8(__c.4657)
	push r26
	.cfi_def_cfa_offset 14
	push r25
	.cfi_def_cfa_offset 15
	push r24
	.cfi_def_cfa_offset 16
	call printf_P
.LVL43:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.cfi_def_cfa_offset 13
	rjmp .L25
.L24:
	.loc 1 208 0
	ldi r24,lo8(__c.4659)
	ldi r25,hi8(__c.4659)
	ldi r26,hlo8(__c.4659)
	push r26
	.cfi_def_cfa_offset 14
	push r25
	.cfi_def_cfa_offset 15
	push r24
	.cfi_def_cfa_offset 16
	call printf_P
.LVL44:
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.cfi_def_cfa_offset 13
	rjmp .L25
.L23:
.LVL45:
	.loc 1 215 0
	lds r24,sd_raw_card_type
	lds r25,sd_raw_card_type+1
	movw r18,r24
	andi r18,3
	clr r19
	or r18,r19
	breq .L26
.LVL46:
.LBB11:
	.loc 1 217 0
	sbrs r24,1
	rjmp .L37
	mov r16,r10
	mov r14,r11
	mov r15,r12
	mov r17,r13
	rjmp .L27
.L37:
	.loc 1 216 0
	ldi r16,0
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r17,0
.L27:
.LVL47:
	.loc 1 218 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	ldi r24,lo8(55)
	call sendSDCmd
.LVL48:
	.loc 1 219 0
	mov r20,r16
	mov r21,r14
	mov r22,r15
	mov r23,r17
	ldi r24,lo8(41)
	call sendSDCmd
.LVL49:
.LBE11:
	rjmp .L28
.LVL50:
.L26:
	.loc 1 222 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	ldi r24,lo8(1)
	call sendSDCmd
.LVL51:
.L28:
	.loc 1 225 0
	sbrs r24,0
	rjmp .L29
	sbiw r28,1
.LVL52:
	.loc 1 227 0
	brne .L23
	.loc 1 228 0
	ldi r24,lo8(1)
	sts 1701,r24
	.loc 1 228 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL53:
	.loc 1 229 0
	ldi r28,lo8(4)
	ldi r29,0
.LVL54:
	rjmp .L21
.LVL55:
.L29:
	.loc 1 233 0
	lds r28,sd_raw_card_type
	lds r29,sd_raw_card_type+1
.LVL56:
	sbrs r28,1
	rjmp .L30
	.loc 1 236 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	ldi r24,lo8(58)
	call sendSDCmd
.LVL57:
	or r24,r25
	breq .L31
	.loc 1 237 0
	ldi r24,lo8(1)
	sts 1701,r24
	.loc 1 237 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL58:
	.loc 1 238 0
	ldi r28,lo8(5)
	ldi r29,0
	rjmp .L21
.L31:
	.loc 1 241 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL59:
	sbrs r24,6
	rjmp .L32
	.loc 1 241 0 is_stmt 0 discriminator 1
	ori r28,4
	sts sd_raw_card_type,r28
	sts sd_raw_card_type+1,r29
.L32:
	.loc 1 243 0 is_stmt 1
	ldi r24,lo8(-1)
	call writeSPI
.LVL60:
	.loc 1 244 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL61:
	.loc 1 245 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL62:
.L30:
	.loc 1 249 0
	ldi r20,0
	ldi r21,lo8(2)
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(16)
	call sendSDCmd
.LVL63:
	movw r28,r24
	or r24,r25
	breq .L33
	.loc 1 250 0
	ldi r24,lo8(1)
	sts 1701,r24
	.loc 1 250 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL64:
	.loc 1 251 0
	ldi r28,lo8(6)
	ldi r29,0
	rjmp .L21
.L33:
	.loc 1 255 0
	ldi r24,lo8(1)
	sts 1701,r24
	.loc 1 255 0
	ldi r24,lo8(-1)
	call writeSPI
.LVL65:
	.loc 1 283 0
	ldi r30,lo8(-64)
	ldi r31,lo8(10)
	ld r24,Z
	.loc 1 283 0
	andi r24,lo8(124)
	ori r24,lo8(-128)
	st Z,r24
	.loc 1 284 0
	sts init,__zero_reg__
	sts init+1,__zero_reg__
	sts init+2,__zero_reg__
	sts init+3,__zero_reg__
	.loc 1 285 0
	rjmp .L21
.LVL66:
.L34:
	.loc 1 182 0
	ldi r28,lo8(-128)
	ldi r29,0
	rjmp .L21
.LVL67:
.L35:
	.loc 1 191 0
	ldi r28,lo8(2)
	ldi r29,0
	rjmp .L21
.L36:
	.loc 1 192 0
	ldi r28,lo8(3)
	ldi r29,0
.L21:
	.loc 1 286 0
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE16:
	.size	sd_init, .-sd_init
	.section	.text.sd_readSECTOR,code
.global	sd_readSECTOR
	.type	sd_readSECTOR, @function
sd_readSECTOR:
.LFB17:
	.loc 1 294 0
	.cfi_startproc
	push r12
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r22
	movw r14,r24
	movw r16,r20
	.loc 1 297 0
	ldi r24,lo8(1)
	sts sd_led,r24
	.loc 1 324 0
	sts lastsec,r12
	sts lastsec+1,r13
	sts lastsec+2,r14
	sts lastsec+3,r15
	.loc 1 326 0
	lds r24,sd_raw_card_type
	sbrs r24,2
	rjmp .L41
	.loc 1 326 0 is_stmt 0 discriminator 1
	movw r22,r14
	movw r20,r12
	andi r22,127
	clr r23
	ldi r24,lo8(17)
	call sendSDCmd
	rjmp .L42
.L41:
	.loc 1 327 0 is_stmt 1
	movw r22,r14
	movw r20,r12
	mov r0,r19
	ldi r19,9
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	dec r19
	brne 1b
	mov r19,r0
	ldi r24,lo8(17)
	call sendSDCmd
.L42:
	.loc 1 329 0
	or r24,r25
	breq .+2
	rjmp .L43
.L47:
	.loc 1 332 0
	ldi r24,lo8(-1)
	call writeSPI
	.loc 1 333 0
	cpi r24,lo8(-2)
	brne .L47
	movw r28,r16
	subi r17,-2
.L45:
	.loc 1 341 0 discriminator 1
	lds r24,sdsread
	lds r25,sdsread+1
	lds r26,sdsread+2
	lds r27,sdsread+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts sdsread,r24
	sts sdsread+1,r25
	sts sdsread+2,r26
	sts sdsread+3,r27
	.loc 1 345 0 discriminator 1
	ldi r24,lo8(-1)
	call writeSPI
	st Y+,r24
	.loc 1 347 0 discriminator 1
	cp r28,r16
	cpc r29,r17
	brne .L45
	.loc 1 348 0
	lds r24,sd_bytesread
	lds r25,sd_bytesread+1
	lds r26,sd_bytesread+2
	lds r27,sd_bytesread+3
	subi r25,-2
	sbci r26,-1
	sbci r27,-1
	sts sd_bytesread,r24
	sts sd_bytesread+1,r25
	sts sd_bytesread+2,r26
	sts sd_bytesread+3,r27
	.loc 1 350 0
	ldi r24,lo8(-1)
	call writeSPI
	.loc 1 351 0
	ldi r24,lo8(-1)
	call writeSPI
	.loc 1 365 0
	ldi r24,lo8(1)
	sts 1701,r24
	.loc 1 365 0
	ldi r24,lo8(-1)
	call writeSPI
	.loc 1 369 0
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L46
.L43:
	.loc 1 360 0
	push r15
	.cfi_def_cfa_offset 12
	push r14
	.cfi_def_cfa_offset 13
	push r13
	.cfi_def_cfa_offset 14
	push r12
	.cfi_def_cfa_offset 15
	ldi r24,lo8(__c.4676)
	ldi r25,hi8(__c.4676)
	ldi r26,hlo8(__c.4676)
	push r26
	.cfi_def_cfa_offset 16
	push r25
	.cfi_def_cfa_offset 17
	push r24
	.cfi_def_cfa_offset 18
	call printf_P
	.loc 1 361 0
	sts readlock,__zero_reg__
	sts readlock+1,__zero_reg__
	.loc 1 362 0
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,7
	out __SP_L__,r24
	out __SP_H__,r25
	.cfi_def_cfa_offset 11
	ldi r24,0
	ldi r25,0
.L46:
/* epilogue start */
	.loc 1 370 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE17:
	.size	sd_readSECTOR, .-sd_readSECTOR
	.section	.text.sd_writeSECTOR,code
.global	sd_writeSECTOR
	.type	sd_writeSECTOR, @function
sd_writeSECTOR:
.LFB18:
	.loc 1 377 0
	.cfi_startproc
	push r2
	.cfi_def_cfa_offset 4
	.cfi_offset 2, -3
	push r3
	.cfi_def_cfa_offset 5
	.cfi_offset 3, -4
	push r4
	.cfi_def_cfa_offset 6
	.cfi_offset 4, -5
	push r5
	.cfi_def_cfa_offset 7
	.cfi_offset 5, -6
	push r6
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -7
	push r7
	.cfi_def_cfa_offset 9
	.cfi_offset 7, -8
	push r8
	.cfi_def_cfa_offset 10
	.cfi_offset 8, -9
	push r12
	.cfi_def_cfa_offset 11
	.cfi_offset 12, -10
	push r13
	.cfi_def_cfa_offset 12
	.cfi_offset 13, -11
	push r14
	.cfi_def_cfa_offset 13
	.cfi_offset 14, -12
	push r28
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r2,r22
	movw r4,r24
	movw r6,r18
	mov r8,r20
	.loc 1 379 0
	ldi r24,lo8(1)
	sts sd_led,r24
	.loc 1 387 0
	lds r24,sd_raw_card_type
	sbrs r24,2
	rjmp .L51
	.loc 1 387 0 is_stmt 0 discriminator 1
	movw r22,r4
	movw r20,r2
	andi r22,127
	clr r23
	ldi r24,lo8(24)
	call sendSDCmd
	movw r28,r24
	rjmp .L52
.L51:
	.loc 1 388 0 is_stmt 1
	movw r22,r4
	movw r20,r2
	mov r0,r19
	ldi r19,9
	1:
	lsl r20
	rol r21
	rol r22
	rol r23
	dec r19
	brne 1b
	mov r19,r0
	ldi r24,lo8(24)
	call sendSDCmd
	movw r28,r24
.L52:
	.loc 1 390 0
	sbiw r28,0
	breq .+2
	rjmp .L53
	.loc 1 392 0
	ldi r24,lo8(-2)
	call writeSPI
	mov r14,r8
	movw r12,r6
	ldi r24,2
	add r7,r24
	adc r8,__zero_reg__
.L54:
	.loc 1 394 0 discriminator 3
	movw r30,r12
	mov r21,r14
	call __xload_1
	mov r24,r22
	call writeSPI
	ldi r25,-1
	sub r12,r25
	sbc r13,r25
	sbc r14,r25
	cp r12,r6
	cpc r13,r7
	cpc r14,r8
	brne .L54
	.loc 1 396 0
	ldi r24,lo8(-1)
	call writeSPI
	.loc 1 397 0
	ldi r24,lo8(-1)
	call writeSPI
	.loc 1 399 0
	ldi r24,lo8(-1)
	call writeSPI
	.loc 1 400 0
	andi r24,lo8(15)
	cpi r24,lo8(5)
	brne .L55
.L59:
	.loc 1 403 0
	ldi r24,lo8(-1)
	call writeSPI
	mov r28,r24
	ldi r29,0
	.loc 1 404 0
	sbiw r28,0
	breq .L59
	rjmp .L56
.L55:
	.loc 1 410 0
	push __zero_reg__
	.cfi_def_cfa_offset 16
	push __zero_reg__
	.cfi_def_cfa_offset 17
	push r5
	.cfi_def_cfa_offset 18
	push r4
	.cfi_def_cfa_offset 19
	push r3
	.cfi_def_cfa_offset 20
	push r2
	.cfi_def_cfa_offset 21
	ldi r24,lo8(__c.4689)
	ldi r25,hi8(__c.4689)
	ldi r26,hlo8(__c.4689)
	push r26
	.cfi_def_cfa_offset 22
	push r25
	.cfi_def_cfa_offset 23
	push r24
	.cfi_def_cfa_offset 24
	call printf_P
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,9
	out __SP_L__,r24
	out __SP_H__,r25
	.cfi_def_cfa_offset 15
	rjmp .L56
.L53:
	.loc 1 414 0
	push r29
	.cfi_def_cfa_offset 16
	push r28
	.cfi_def_cfa_offset 17
	push r5
	.cfi_def_cfa_offset 18
	push r4
	.cfi_def_cfa_offset 19
	push r3
	.cfi_def_cfa_offset 20
	push r2
	.cfi_def_cfa_offset 21
	ldi r24,lo8(__c.4691)
	ldi r25,hi8(__c.4691)
	ldi r26,hlo8(__c.4691)
	push r26
	.cfi_def_cfa_offset 22
	push r25
	.cfi_def_cfa_offset 23
	push r24
	.cfi_def_cfa_offset 24
	call printf_P
	in r24,__SP_L__
	in r25,__SP_H__
	adiw r24,9
	out __SP_L__,r24
	out __SP_H__,r25
	.cfi_def_cfa_offset 15
.L56:
	.loc 1 418 0
	ldi r24,lo8(1)
	sts 1701,r24
	.loc 1 418 0
	ldi r24,lo8(-1)
	call writeSPI
	.loc 1 423 0
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r14
	pop r13
	pop r12
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.cfi_endproc
.LFE18:
	.size	sd_writeSECTOR, .-sd_writeSECTOR
	.section	.text.sd_getCD,code
.global	sd_getCD
	.type	sd_getCD, @function
sd_getCD:
.LFB19:
	.loc 1 429 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 430 0
	lds r24,1672
	.loc 1 430 0
	lsr r24
	lsr r24
	lsr r24
	ldi r25,lo8(1)
	eor r24,r25
	.loc 1 431 0
	andi r24,1
	ldi r25,0
	ret
	.cfi_endproc
.LFE19:
	.size	sd_getCD, .-sd_getCD
	.section	.progmemx.data.__c.4691,progmemx
	.type	__c.4691, @object
	.size	__c.4691, 35
__c.4691:
	.string	"writeSECTOR %ld cmd rejected r=%d\n"
	.section	.progmemx.data.__c.4689,progmemx
	.type	__c.4689, @object
	.size	__c.4689, 29
__c.4689:
	.string	"writeSECTOR %ld failed r=%d\n"
	.section	.progmemx.data.__c.4676,progmemx
	.type	__c.4676, @object
	.size	__c.4676, 41
__c.4676:
	.string	"readSECTOR  %ld cmd rejected return -1\r\n"
	.section	.progmemx.data.__c.4659,progmemx
	.type	__c.4659, @object
	.size	__c.4659, 11
__c.4659:
	.string	"MMC card\r\n"
	.section	.progmemx.data.__c.4657,progmemx
	.type	__c.4657, @object
	.size	__c.4657, 13
__c.4657:
	.string	"SD v1 card\r\n"
	.section	.progmemx.data.__c.4655,progmemx
	.type	__c.4655, @object
	.size	__c.4655, 13
__c.4655:
	.string	"SD v2 card\r\n"
	.section	.bss.sd_raw_card_type,bss
	.type	sd_raw_card_type, @object
	.size	sd_raw_card_type, 2
sd_raw_card_type:
	.zero	2
	.comm	sd_led,1,1
	.comm	writelock,2,1
	.comm	readlock,2,1
.global	sdsread
	.section	.bss.sdsread,bss
	.type	sdsread, @object
	.size	sdsread, 4
sdsread:
	.zero	4
	.comm	init,4,1
	.comm	lastsec,4,1
	.comm	sd_bytesread,4,1
	.section	.text,code
.Letext0:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 3 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h"
	.file 4 "fatfs/sd.h"
	.file 5 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0xb24
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"fatfs/sd.c"
	.string	"/home/marek/Dropbox/Programowanie/Michrochip_PIC/xmegatest.X"
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_t"
	.byte	0x2
	.byte	0x7e
	.long	0x18b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x2
	.byte	0x82
	.long	0x1cf
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"register8_t"
	.byte	0x3
	.byte	0x54
	.long	0x222
	.uleb128 0x4
	.long	0x17c
	.uleb128 0x5
	.string	"PORT_struct"
	.byte	0x18
	.byte	0x3
	.word	0x60e
	.long	0x3d7
	.uleb128 0x6
	.string	"DIR"
	.byte	0x3
	.word	0x610
	.long	0x20f
	.byte	0
	.uleb128 0x6
	.string	"DIRSET"
	.byte	0x3
	.word	0x611
	.long	0x20f
	.byte	0x1
	.uleb128 0x6
	.string	"DIRCLR"
	.byte	0x3
	.word	0x612
	.long	0x20f
	.byte	0x2
	.uleb128 0x6
	.string	"DIRTGL"
	.byte	0x3
	.word	0x613
	.long	0x20f
	.byte	0x3
	.uleb128 0x6
	.string	"OUT"
	.byte	0x3
	.word	0x614
	.long	0x20f
	.byte	0x4
	.uleb128 0x6
	.string	"OUTSET"
	.byte	0x3
	.word	0x615
	.long	0x20f
	.byte	0x5
	.uleb128 0x6
	.string	"OUTCLR"
	.byte	0x3
	.word	0x616
	.long	0x20f
	.byte	0x6
	.uleb128 0x6
	.string	"OUTTGL"
	.byte	0x3
	.word	0x617
	.long	0x20f
	.byte	0x7
	.uleb128 0x6
	.string	"IN"
	.byte	0x3
	.word	0x618
	.long	0x20f
	.byte	0x8
	.uleb128 0x6
	.string	"INTCTRL"
	.byte	0x3
	.word	0x619
	.long	0x20f
	.byte	0x9
	.uleb128 0x6
	.string	"INT0MASK"
	.byte	0x3
	.word	0x61a
	.long	0x20f
	.byte	0xa
	.uleb128 0x6
	.string	"INT1MASK"
	.byte	0x3
	.word	0x61b
	.long	0x20f
	.byte	0xb
	.uleb128 0x6
	.string	"INTFLAGS"
	.byte	0x3
	.word	0x61c
	.long	0x20f
	.byte	0xc
	.uleb128 0x6
	.string	"reserved_0x0D"
	.byte	0x3
	.word	0x61d
	.long	0x20f
	.byte	0xd
	.uleb128 0x6
	.string	"REMAP"
	.byte	0x3
	.word	0x61e
	.long	0x20f
	.byte	0xe
	.uleb128 0x6
	.string	"reserved_0x0F"
	.byte	0x3
	.word	0x61f
	.long	0x20f
	.byte	0xf
	.uleb128 0x6
	.string	"PIN0CTRL"
	.byte	0x3
	.word	0x620
	.long	0x20f
	.byte	0x10
	.uleb128 0x6
	.string	"PIN1CTRL"
	.byte	0x3
	.word	0x621
	.long	0x20f
	.byte	0x11
	.uleb128 0x6
	.string	"PIN2CTRL"
	.byte	0x3
	.word	0x622
	.long	0x20f
	.byte	0x12
	.uleb128 0x6
	.string	"PIN3CTRL"
	.byte	0x3
	.word	0x623
	.long	0x20f
	.byte	0x13
	.uleb128 0x6
	.string	"PIN4CTRL"
	.byte	0x3
	.word	0x624
	.long	0x20f
	.byte	0x14
	.uleb128 0x6
	.string	"PIN5CTRL"
	.byte	0x3
	.word	0x625
	.long	0x20f
	.byte	0x15
	.uleb128 0x6
	.string	"PIN6CTRL"
	.byte	0x3
	.word	0x626
	.long	0x20f
	.byte	0x16
	.uleb128 0x6
	.string	"PIN7CTRL"
	.byte	0x3
	.word	0x627
	.long	0x20f
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"PORT_t"
	.byte	0x3
	.word	0x628
	.long	0x227
	.uleb128 0x5
	.string	"SPI_struct"
	.byte	0x4
	.byte	0x3
	.word	0x7dd
	.long	0x438
	.uleb128 0x6
	.string	"CTRL"
	.byte	0x3
	.word	0x7df
	.long	0x20f
	.byte	0
	.uleb128 0x6
	.string	"INTCTRL"
	.byte	0x3
	.word	0x7e0
	.long	0x20f
	.byte	0x1
	.uleb128 0x6
	.string	"STATUS"
	.byte	0x3
	.word	0x7e1
	.long	0x20f
	.byte	0x2
	.uleb128 0x6
	.string	"DATA"
	.byte	0x3
	.word	0x7e2
	.long	0x20f
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"SPI_t"
	.byte	0x3
	.word	0x7e3
	.long	0x3e6
	.uleb128 0x8
	.string	"SPI_PRESCALER_enum"
	.byte	0x1
	.long	0x18b
	.byte	0x3
	.word	0x7f8
	.long	0x4cb
	.uleb128 0x9
	.string	"SPI_PRESCALER_DIV4_gc"
	.byte	0
	.uleb128 0x9
	.string	"SPI_PRESCALER_DIV16_gc"
	.byte	0x1
	.uleb128 0x9
	.string	"SPI_PRESCALER_DIV64_gc"
	.byte	0x2
	.uleb128 0x9
	.string	"SPI_PRESCALER_DIV128_gc"
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.byte	0x2
	.long	0x4dd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"char"
	.uleb128 0xb
	.byte	0x3
	.byte	0x7
	.long	0x4ec
	.uleb128 0xc
	.long	0x4dd
	.uleb128 0x3
	.string	"LBA"
	.byte	0x4
	.byte	0x12
	.long	0x1cf
	.uleb128 0xd
	.byte	0x1
	.string	"writeSPI"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.long	0x18b
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x52b
	.uleb128 0xe
	.string	"b"
	.byte	0x1
	.byte	0x64
	.long	0x18b
	.long	.LLST0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"spi_wait_ready"
	.byte	0x1
	.byte	0x6b
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x56b
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.long	0x1bf
	.long	.LLST1
	.uleb128 0x11
	.long	.LVL4
	.long	0x4fc
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"sendSDCmd"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.long	0x19c
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x67e
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0x75
	.long	0x18b
	.long	.LLST2
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0x75
	.long	0x1cf
	.long	.LLST3
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x76
	.long	0x19c
	.long	.LLST4
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0x76
	.long	0x19c
	.long	.LLST5
	.uleb128 0x13
	.long	.LVL10
	.long	0x52b
	.uleb128 0x14
	.long	.LVL11
	.long	0x4fc
	.long	0x5e1
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0
	.uleb128 0x14
	.long	.LVL12
	.long	0x4fc
	.long	0x5f5
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL13
	.long	0x4fc
	.long	0x609
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL14
	.long	0x4fc
	.long	0x61d
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL15
	.long	0x4fc
	.long	0x631
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.long	.LVL16
	.long	0x4fc
	.long	0x645
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x95
	.byte	0
	.uleb128 0x14
	.long	.LVL17
	.long	0x4fc
	.long	0x659
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x87
	.byte	0
	.uleb128 0x14
	.long	.LVL18
	.long	0x4fc
	.long	0x66d
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.long	.LVL20
	.long	0x4fc
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"initSD"
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"sd_init"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x19c
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x960
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.long	0x19c
	.long	.LLST6
	.uleb128 0x10
	.string	"r"
	.byte	0x1
	.byte	0xa5
	.long	0x19c
	.long	.LLST7
	.uleb128 0x16
	.long	0x67e
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0xa7
	.uleb128 0x17
	.long	.Ldebug_ranges0+0
	.long	0x720
	.uleb128 0x10
	.string	"arg"
	.byte	0x1
	.byte	0xd8
	.long	0x1b3
	.long	.LLST8
	.uleb128 0x14
	.long	.LVL48
	.long	0x56b
	.long	0x70f
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x37
	.uleb128 0x12
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LVL49
	.long	0x56b
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LVL27
	.long	0x4fc
	.long	0x734
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL29
	.long	0x4fc
	.long	0x748
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL32
	.long	0x56b
	.long	0x76b
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0x12
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL34
	.long	0x4fc
	.long	0x77f
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL35
	.long	0x56b
	.long	0x7a4
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x38
	.uleb128 0x12
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x1aa
	.byte	0
	.uleb128 0x14
	.long	.LVL36
	.long	0x4fc
	.long	0x7b8
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL37
	.long	0x4fc
	.long	0x7cc
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL38
	.long	0x4fc
	.long	0x7e0
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL39
	.long	0x4fc
	.long	0x7f4
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x13
	.long	.LVL40
	.long	0xb19
	.uleb128 0x14
	.long	.LVL41
	.long	0x56b
	.long	0x821
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x37
	.uleb128 0x12
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL42
	.long	0x56b
	.long	0x845
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.uleb128 0x12
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LVL43
	.long	0xb19
	.uleb128 0x13
	.long	.LVL44
	.long	0xb19
	.uleb128 0x14
	.long	.LVL51
	.long	0x56b
	.long	0x87a
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x12
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL53
	.long	0x4fc
	.long	0x88e
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL57
	.long	0x56b
	.long	0x8b2
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.uleb128 0x12
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL58
	.long	0x4fc
	.long	0x8c6
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL59
	.long	0x4fc
	.long	0x8da
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL60
	.long	0x4fc
	.long	0x8ee
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL61
	.long	0x4fc
	.long	0x902
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL62
	.long	0x4fc
	.long	0x916
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.long	.LVL63
	.long	0x56b
	.long	0x93b
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.uleb128 0x12
	.byte	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x200
	.byte	0
	.uleb128 0x14
	.long	.LVL64
	.long	0x4fc
	.long	0x94f
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.long	.LVL65
	.long	0x4fc
	.uleb128 0x12
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"sd_readSECTOR"
	.byte	0x1
	.word	0x126
	.byte	0x1
	.long	0x19c
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9cb
	.uleb128 0x19
	.string	"a"
	.byte	0x1
	.word	0x126
	.long	0x4f1
	.byte	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.word	0x126
	.long	0x4d7
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.word	0x127
	.long	0x19c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.word	0x127
	.long	0x19c
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"sd_writeSECTOR"
	.byte	0x1
	.word	0x179
	.byte	0x1
	.long	0x19c
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa3a
	.uleb128 0x19
	.string	"a"
	.byte	0x1
	.word	0x179
	.long	0x4f1
	.byte	0xc
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x19
	.string	"p"
	.byte	0x1
	.word	0x179
	.long	0x4e5
	.byte	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.word	0x17a
	.long	0x1a3
	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.word	0x17a
	.long	0x1a3
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"sd_getCD"
	.byte	0x1
	.word	0x1aa
	.byte	0x1
	.long	0x19c
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1d
	.string	"sd_raw_card_type"
	.byte	0x1
	.byte	0x50
	.long	0x19c
	.byte	0x5
	.byte	0x3
	.long	sd_raw_card_type
	.uleb128 0x1e
	.string	"sdsread"
	.byte	0x1
	.byte	0xd
	.long	0x1cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sdsread
	.uleb128 0x1e
	.string	"sd_bytesread"
	.byte	0x1
	.byte	0xd
	.long	0x1cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sd_bytesread
	.uleb128 0x1e
	.string	"sd_led"
	.byte	0x1
	.byte	0x11
	.long	0x4dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sd_led
	.uleb128 0x1e
	.string	"lastsec"
	.byte	0x1
	.byte	0xd
	.long	0x1cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	lastsec
	.uleb128 0x1e
	.string	"init"
	.byte	0x1
	.byte	0xd
	.long	0x1cf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	init
	.uleb128 0x1e
	.string	"readlock"
	.byte	0x1
	.byte	0x10
	.long	0xafc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	readlock
	.uleb128 0x4
	.long	0x19c
	.uleb128 0x1e
	.string	"writelock"
	.byte	0x1
	.byte	0x10
	.long	0xafc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	writelock
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1
	.long	.LASF0
	.long	.LASF0
	.byte	0x5
	.word	0x294
	.byte	0
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x33
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LFE13
	.word	0x3
	.byte	0xa
	.word	0xac3
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LVL5
	.word	0x9
	.byte	0xc
	.long	0x186a0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x9
	.byte	0xc
	.long	0x186a1
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x9
	.byte	0xc
	.long	0x186a0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL19
	.word	0x1
	.byte	0x6c
	.long	.LVL19
	.long	.LVL24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x1
	.byte	0x6c
	.long	.LVL25
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL10-1
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL19
	.long	.LVL22
	.word	0x5
	.byte	0x38
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x5
	.byte	0x39
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x5
	.byte	0x38
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL24
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LVL24
	.word	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL27
	.long	.LVL28
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.word	0x5
	.byte	0x3a
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.word	0x5
	.byte	0x3b
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.word	0x5
	.byte	0x3a
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL45
	.long	.LVL52
	.word	0x7
	.byte	0xb
	.word	0x8000
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL52
	.long	.LVL54
	.word	0x7
	.byte	0xa
	.word	0x7fff
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL55
	.long	.LVL56
	.word	0x7
	.byte	0xb
	.word	0x8000
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL33
	.long	.LVL35
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LVL67
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL46
	.long	.LVL47
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL47
	.long	.LVL50
	.word	0xc
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,info
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	0
	.long	0
	.section	.debug_ranges,info
.Ldebug_ranges0:
	.long	.LBB10
	.long	.LBE10
	.long	.LBB11
	.long	.LBE11
	.long	0
	.long	0
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	0
	.long	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF0:
	.string	"printf_P"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
.global __do_clear_bss
