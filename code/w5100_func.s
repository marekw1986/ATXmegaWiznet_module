	.file	"w5100_func.c"
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
	.section	.text.CloseSocket,code
.global	CloseSocket
	.type	CloseSocket, @function
CloseSocket:
.LFB9:
	.file 1 "w5100/w5100_func.c"
	.loc 1 56 0
	.cfi_startproc
.LVL0:
	push r28
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 59 0
	cpi r24,lo8(5)
	brsh .L1
.LVL1:
	.loc 1 63 0
	mov r28,r24
	ldi r29,0
	mov r29,r28
	clr r28
	subi r28,-1
	sbci r29,-5
	ldi r22,lo8(16)
	movw r24,r28
.LVL2:
	call W51_write
.LVL3:
.L3:
	.loc 1 64 0 discriminator 1
	movw r24,r28
	call W51_read
.LVL4:
	cpse r24,__zero_reg__
	rjmp .L3
.LVL5:
.L1:
/* epilogue start */
	.loc 1 65 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE9:
	.size	CloseSocket, .-CloseSocket
	.section	.progmemx.data,progmemx
.LC0:
	.string	"jendak wywala\n"
	.section	.text.OpenSocket,code
.global	OpenSocket
	.type	OpenSocket, @function
OpenSocket:
.LFB8:
	.loc 1 12 0
	.cfi_startproc
.LVL6:
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
	mov r28,r24
	mov r14,r22
	mov r29,r20
	mov r15,r21
.LVL7:
	.loc 1 17 0
	cpi r24,lo8(4)
	brlo .+2
	rjmp .L9
	.loc 1 22 0
	mov r16,r24
	ldi r17,0
	subi r16,-4
	sbci r17,-1
	mov r17,r16
	clr r16
.LVL8:
	.loc 1 24 0
	movw r12,r16
	ldi r24,3
	add r12,r24
	adc r13,__zero_reg__
.LVL9:
	movw r24,r12
	call W51_read
.LVL10:
	cpse r24,__zero_reg__
	rjmp .L7
	.loc 1 26 0
	mov r24,r28
	call CloseSocket
.LVL11:
.L7:
	.loc 1 30 0
	mov r22,r14
	movw r24,r16
	call W51_write
.LVL12:
	.loc 1 31 0
	mov r22,r15
	movw r24,r16
	adiw r24,4
	call W51_write
.LVL13:
	.loc 1 32 0
	mov r22,r29
	movw r24,r16
	adiw r24,5
	call W51_write
.LVL14:
	.loc 1 33 0
	subi r16,-1
	sbci r17,-1
.LVL15:
	ldi r22,lo8(1)
	movw r24,r16
	call W51_write
.LVL16:
.L8:
	.loc 1 35 0 discriminator 1
	movw r24,r16
	call W51_read
.LVL17:
	cpse r24,__zero_reg__
	rjmp .L8
.LVL18:
.LBB8:
.LBB9:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h"
	.loc 2 187 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL19:
.LBE9:
.LBE8:
	.loc 1 41 0
	movw r24,r12
	call W51_read
.LVL20:
	cpi r24,lo8(34)
	breq .L6
	.loc 1 47 0
	mov r24,r28
	call CloseSocket
.LVL21:
	.loc 1 48 0
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	ldi r24,hlo8(.LC0)
	call puts
.LVL22:
	.loc 1 16 0
	ldi r28,lo8(-1)
.LVL23:
	rjmp .L6
.LVL24:
.L9:
	.loc 1 19 0
	ldi r28,lo8(-1)
.LVL25:
.L6:
	.loc 1 53 0
	mov r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LVL26:
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE8:
	.size	OpenSocket, .-OpenSocket
	.section	.text.DisconnectSocket,code
.global	DisconnectSocket
	.type	DisconnectSocket, @function
DisconnectSocket:
.LFB10:
	.loc 1 68 0
	.cfi_startproc
.LVL27:
	push r28
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 71 0
	cpi r24,lo8(5)
	brsh .L11
.LVL28:
	.loc 1 75 0
	mov r28,r24
	ldi r29,0
	mov r29,r28
	clr r28
	subi r28,-1
	sbci r29,-5
	ldi r22,lo8(8)
	movw r24,r28
.LVL29:
	call W51_write
.LVL30:
.L13:
	.loc 1 76 0 discriminator 1
	movw r24,r28
	call W51_read
.LVL31:
	cpse r24,__zero_reg__
	rjmp .L13
.LVL32:
.L11:
/* epilogue start */
	.loc 1 77 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE10:
	.size	DisconnectSocket, .-DisconnectSocket
	.section	.text.Listen,code
.global	Listen
	.type	Listen, @function
Listen:
.LFB11:
	.loc 1 80 0
	.cfi_startproc
.LVL33:
	push r14
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r16
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r17
	.cfi_def_cfa_offset 7
	.cfi_offset 17, -6
	push r28
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
.LVL34:
	.loc 1 85 0
	cpi r24,lo8(5)
	brsh .L18
	mov r28,r24
	.loc 1 88 0
	mov r16,r24
	ldi r17,0
	subi r16,-4
	sbci r17,-1
	mov r17,r16
	clr r16
.LVL35:
	.loc 1 89 0
	movw r14,r16
	ldi r24,3
	add r14,r24
	adc r15,__zero_reg__
.LVL36:
	movw r24,r14
	call W51_read
.LVL37:
	cpi r24,lo8(19)
	brne .L19
	.loc 1 91 0
	subi r16,-1
	sbci r17,-1
.LVL38:
	ldi r22,lo8(2)
	movw r24,r16
	call W51_write
.LVL39:
.L17:
	.loc 1 92 0 discriminator 1
	movw r24,r16
	call W51_read
.LVL40:
	cpse r24,__zero_reg__
	rjmp .L17
	.loc 1 94 0
	movw r24,r14
	call W51_read
.LVL41:
	cpi r24,lo8(20)
	breq .L20
	.loc 1 97 0
	mov r24,r28
	call CloseSocket
.LVL42:
	.loc 1 84 0
	ldi r24,lo8(-1)
	rjmp .L16
.LVL43:
.L18:
	.loc 1 86 0
	ldi r24,lo8(-1)
.LVL44:
	rjmp .L16
.LVL45:
.L19:
	.loc 1 84 0
	ldi r24,lo8(-1)
	rjmp .L16
.LVL46:
.L20:
	.loc 1 95 0
	ldi r24,0
.LVL47:
.L16:
/* epilogue start */
	.loc 1 100 0
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE11:
	.size	Listen, .-Listen
	.section	.progmemx.data,progmemx
.LC1:
	.string	"buf len = %d\n"
	.section	.text.Send,code
.global	Send
	.type	Send, @function
Send:
.LFB12:
	.loc 1 104 0
	.cfi_startproc
.LVL48:
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
	push r9
	.cfi_def_cfa_offset 11
	.cfi_offset 9, -10
	push r10
	.cfi_def_cfa_offset 12
	.cfi_offset 10, -11
	push r11
	.cfi_def_cfa_offset 13
	.cfi_offset 11, -12
	push r12
	.cfi_def_cfa_offset 14
	.cfi_offset 12, -13
	push r13
	.cfi_def_cfa_offset 15
	.cfi_offset 13, -14
	push r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -15
	push r15
	.cfi_def_cfa_offset 17
	.cfi_offset 15, -16
	push r16
	.cfi_def_cfa_offset 18
	.cfi_offset 16, -17
	push r17
	.cfi_def_cfa_offset 19
	.cfi_offset 17, -18
	push r28
	.cfi_def_cfa_offset 20
	.cfi_offset 28, -19
	push r29
	.cfi_def_cfa_offset 21
	.cfi_offset 29, -20
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	mov r7,r24
	movw r14,r22
	movw r16,r20
.LVL49:
	.loc 1 121 0
	or r20,r21
	breq .L23
	.loc 1 121 0 is_stmt 0 discriminator 1
	ldi r24,lo8(3)
.LVL50:
	cp r24,r7
	brsh .L24
.L23:
	.loc 1 123 0 is_stmt 1
	push r17
	.cfi_def_cfa_offset 22
	push r16
	.cfi_def_cfa_offset 23
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	ldi r26,hlo8(.LC1)
	push r26
	.cfi_def_cfa_offset 24
	push r25
	.cfi_def_cfa_offset 25
	push r24
	.cfi_def_cfa_offset 26
	call printf
.LVL51:
	.loc 1 124 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	.cfi_def_cfa_offset 21
	ldi r24,lo8(-1)
	rjmp .L35
.L24:
	.loc 1 116 0
	mov r2,r7
	mov r3,__zero_reg__
	movw r4,r2
	ldi r25,4
	add r4,r25
	adc r5,__zero_reg__
	mov r5,r4
	clr r4
	.loc 1 127 0
	movw r10,r4
	ldi r30,32
	add r10,r30
	adc r11,__zero_reg__
	movw r24,r10
	call W51_read
.LVL52:
	.loc 1 129 0
	mov r28,r24
	ldi r29,0
	mov r29,r28
	clr r28
	.loc 1 130 0
	movw r12,r4
	ldi r31,33
	add r12,r31
	adc r13,__zero_reg__
	movw r24,r12
.LVL53:
	call W51_read
.LVL54:
	.loc 1 133 0
	add r28,r24
	adc r29,__zero_reg__
.LVL55:
	cp r28,r16
	cpc r29,r17
	brsh .+2
	rjmp .L26
.LVL56:
	rjmp .L27
.LVL57:
.L29:
.LBB10:
.LBB11:
	.loc 2 187 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL58:
.LBE11:
.LBE10:
	.loc 1 136 0
	movw r24,r10
	call W51_read
.LVL59:
	.loc 1 138 0
	mov r28,r24
	ldi r29,0
	mov r29,r28
	clr r28
	.loc 1 139 0
	movw r24,r12
.LVL60:
	call W51_read
.LVL61:
	.loc 1 137 0
	add r28,r24
	adc r29,__zero_reg__
.LVL62:
	ldi r25,1
	sub r8,r25
	sbc r9,__zero_reg__
.LVL63:
	.loc 1 141 0
	brne .L28
	.loc 1 143 0
	mov r24,r7
	call DisconnectSocket
.LVL64:
	.loc 1 144 0
	ldi r24,lo8(-1)
	rjmp .L35
.LVL65:
.L28:
	.loc 1 133 0
	cp r28,r16
	cpc r29,r17
	brlo .L29
	rjmp .L27
.LVL66:
.L30:
	.loc 1 155 0
	sbiw r28,1
.LVL67:
	.loc 1 158 0
	movw r24,r12
	andi r25,7
	movw r30,r14
	ld r22,Z+
	movw r14,r30
.LVL68:
	add r24,r2
	adc r25,r3
.LVL69:
	call W51_write
.LVL70:
	.loc 1 159 0
	ldi r31,-1
	sub r12,r31
	sbc r13,r31
.LVL71:
	.loc 1 154 0
	sbiw r28,0
	brne .L30
	add r16,r6
	adc r17,r7
	.loc 1 163 0
	mov r22,r17
	movw r24,r10
	call W51_write
.LVL72:
	.loc 1 164 0
	mov r22,r16
	movw r24,r8
	call W51_write
.LVL73:
	.loc 1 166 0
	ldi r24,-1
	sub r4,r24
	sbc r5,r24
	ldi r22,lo8(32)
	movw r24,r4
	call W51_write
.LVL74:
.L31:
	.loc 1 168 0 discriminator 1
	movw r24,r4
	call W51_read
.LVL75:
	cpse r24,__zero_reg__
	rjmp .L31
	rjmp .L35
.LVL76:
.L27:
	.loc 1 149 0
	movw r10,r4
	ldi r25,36
	add r10,r25
	adc r11,__zero_reg__
	movw r24,r10
	call W51_read
.LVL77:
	mov r6,r24
.LVL78:
	.loc 1 152 0
	movw r8,r4
	ldi r30,37
	add r8,r30
	adc r9,__zero_reg__
	movw r24,r8
	call W51_read
.LVL79:
	.loc 1 150 0
	mov r7,__zero_reg__
	mov r7,r6
	clr r6
.LVL80:
	add r6,r24
	adc r7,__zero_reg__
.LVL81:
	.loc 1 156 0
	ldi r31,8
	add r2,r31
	adc r3,__zero_reg__
.LVL82:
	mov r3,r2
	clr r2
	lsl r3
	lsl r3
	lsl r3
	.loc 1 150 0
	movw r12,r6
	.loc 1 156 0
	movw r28,r16
.LVL83:
	rjmp .L30
.LVL84:
.L26:
.LBB13:
.LBB12:
	.loc 2 187 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL85:
.LBE12:
.LBE13:
	.loc 1 136 0
	movw r24,r10
	call W51_read
.LVL86:
	.loc 1 138 0
	mov r28,r24
	ldi r29,0
	mov r29,r28
	clr r28
	.loc 1 139 0
	movw r24,r12
.LVL87:
	call W51_read
.LVL88:
	.loc 1 137 0
	add r28,r24
	adc r29,__zero_reg__
.LVL89:
	mov __tmp_reg__,r31
	ldi r31,lo8(-23)
	mov r8,r31
	ldi r31,lo8(3)
	mov r9,r31
	mov r31,__tmp_reg__
	rjmp .L28
.LVL90:
.L35:
/* epilogue start */
	.loc 1 171 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
.LVL91:
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.cfi_endproc
.LFE12:
	.size	Send, .-Send
	.section	.text.Receive,code
.global	Receive
	.type	Receive, @function
Receive:
.LFB13:
	.loc 1 177 0
	.cfi_startproc
.LVL92:
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
	push r9
	.cfi_def_cfa_offset 11
	.cfi_offset 9, -10
	push r10
	.cfi_def_cfa_offset 12
	.cfi_offset 10, -11
	push r11
	.cfi_def_cfa_offset 13
	.cfi_offset 11, -12
	push r12
	.cfi_def_cfa_offset 14
	.cfi_offset 12, -13
	push r13
	.cfi_def_cfa_offset 15
	.cfi_offset 13, -14
	push r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -15
	push r15
	.cfi_def_cfa_offset 17
	.cfi_offset 15, -16
	push r16
	.cfi_def_cfa_offset 18
	.cfi_offset 16, -17
	push r17
	.cfi_def_cfa_offset 19
	.cfi_offset 17, -18
	push r28
	.cfi_def_cfa_offset 20
	.cfi_offset 28, -19
	push r29
	.cfi_def_cfa_offset 21
	.cfi_offset 29, -20
	rcall .
	push __zero_reg__
	.cfi_def_cfa_offset 25
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 4 */
/* stack size = 22 */
.L__stack_usage = 22
	movw r10,r22
	.loc 1 184 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .+2
	rjmp .L41
	.loc 1 184 0 is_stmt 0 discriminator 1
	cpi r24,lo8(4)
	brlo .+2
	rjmp .L42
	movw r14,r20
	cpi r20,-1
	cpc r21,__zero_reg__
	brlo .L38
	mov __tmp_reg__,r31
	ldi r31,lo8(-2)
	mov r14,r31
	mov r15,__zero_reg__
	mov r31,__tmp_reg__
.L38:
.LVL93:
	.loc 1 190 0 is_stmt 1
	mov r16,r24
	ldi r17,0
	movw r6,r16
	ldi r30,4
	add r6,r30
	adc r7,__zero_reg__
	mov r7,r6
	clr r6
.LVL94:
	.loc 1 191 0
	movw r2,r6
	ldi r31,40
	add r2,r31
	adc r3,__zero_reg__
	movw r24,r2
.LVL95:
	call W51_read
.LVL96:
	mov r4,r24
.LVL97:
	.loc 1 192 0
	movw r24,r6
	adiw r24,41
	std Y+1,r24
	std Y+2,r25
	call W51_read
.LVL98:
	mov r5,__zero_reg__
	mov r5,r4
	clr r4
.LVL99:
	add r4,r24
	adc r5,__zero_reg__
.LVL100:
	.loc 1 194 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L39
	.loc 1 197 0
	subi r16,-12
	sbci r17,-1
.LVL101:
	mov r17,r16
	clr r16
	lsl r17
	lsl r17
	lsl r17
	movw r8,r4
	std Y+3,r14
	std Y+4,r15
	movw r12,r10
.LVL102:
.L40:
	.loc 1 195 0
	ldd r30,Y+3
	ldd r31,Y+4
	sbiw r30,1
	std Y+3,r30
	std Y+4,r31
.LVL103:
	.loc 1 199 0
	movw r24,r8
	andi r25,7
	add r24,r16
	adc r25,r17
.LVL104:
	call W51_read
.LVL105:
	movw r30,r12
	st Z+,r24
	movw r12,r30
.LVL106:
	.loc 1 200 0
	ldi r31,-1
	sub r8,r31
	sbc r9,r31
.LVL107:
	.loc 1 194 0
	ldd r24,Y+3
	ldd r25,Y+4
	or r24,r25
	brne .L40
	add r4,r14
	adc r5,r15
	add r10,r14
	adc r11,r15
.LVL108:
.L39:
	.loc 1 203 0
	movw r30,r10
	st Z,__zero_reg__
	.loc 1 206 0
	mov r22,r5
	movw r24,r2
	call W51_write
.LVL109:
	.loc 1 207 0
	mov r22,r4
	ldd r24,Y+1
	ldd r25,Y+2
	call W51_write
.LVL110:
	.loc 1 210 0
	ldi r22,lo8(64)
	movw r24,r6
	adiw r24,1
	call W51_write
.LVL111:
.LBB14:
.LBB15:
	.loc 2 276 0
	ldi r31,lo8(53)
1:	dec r31
	brne 1b
	nop
.LVL112:
.LBE15:
.LBE14:
	.loc 1 213 0
	ldi r24,0
	ldi r25,0
	rjmp .L37
.LVL113:
.L41:
	.loc 1 185 0
	ldi r24,lo8(-1)
	ldi r25,0
.LVL114:
	rjmp .L37
.LVL115:
.L42:
	ldi r24,lo8(-1)
	ldi r25,0
.LVL116:
.L37:
/* epilogue start */
	.loc 1 214 0
	adiw r28,4
	out __SP_L__,r28
	out __SP_H__,r29
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
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
	.cfi_endproc
.LFE13:
	.size	Receive, .-Receive
	.section	.text.ReceivedSize,code
.global	ReceivedSize
	.type	ReceivedSize, @function
ReceivedSize:
.LFB14:
	.loc 1 217 0
	.cfi_startproc
.LVL117:
	push r16
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
	push r28
	.cfi_def_cfa_offset 6
	.cfi_offset 28, -5
	push r29
	.cfi_def_cfa_offset 7
	.cfi_offset 29, -6
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 221 0
	cpi r24,lo8(4)
	brsh .L46
	.loc 1 223 0
	mov r28,r24
	ldi r29,0
	adiw r28,4
	mov r29,r28
	clr r28
.LVL118:
	.loc 1 224 0
	movw r24,r28
.LVL119:
	adiw r24,38
	call W51_read
.LVL120:
	.loc 1 225 0
	ldi r25,0
	mov r17,r24
	clr r16
	movw r24,r28
.LVL121:
	adiw r24,39
	call W51_read
.LVL122:
	movw r18,r16
	add r18,r24
	adc r19,__zero_reg__
	movw r24,r18
	.loc 1 226 0
	rjmp .L45
.LVL123:
.L46:
	.loc 1 222 0
	ldi r24,0
	ldi r25,0
.LVL124:
.L45:
/* epilogue start */
	.loc 1 227 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE14:
	.size	ReceivedSize, .-ReceivedSize
	.section	.text,code
.Letext0:
	.file 3 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 4 "w5100/w5100.h"
	.file 5 "/opt/microchip/xc8/v2.10/avr/avr/include/stdio.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0xacc
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"w5100/w5100_func.c"
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
	.byte	0x3
	.byte	0x7e
	.long	0x193
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
	.byte	0x3
	.byte	0x82
	.long	0x1d7
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"char"
	.uleb128 0x4
	.string	"_delay_ms"
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.byte	0x3
	.long	0x26d
	.uleb128 0x5
	.string	"__ms"
	.byte	0x2
	.byte	0xa6
	.long	0x26d
	.uleb128 0x6
	.string	"__tmp"
	.byte	0x2
	.byte	0xa8
	.long	0x26d
	.uleb128 0x7
	.long	.LASF0
	.byte	0x2
	.byte	0xac
	.long	0x1c7
	.uleb128 0x8
	.byte	0x1
	.long	.LASF1
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.string	"_delay_us"
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0x2bc
	.uleb128 0x5
	.string	"__us"
	.byte	0x2
	.byte	0xff
	.long	0x26d
	.uleb128 0x9
	.string	"__tmp"
	.byte	0x2
	.word	0x101
	.long	0x26d
	.uleb128 0xa
	.long	.LASF0
	.byte	0x2
	.word	0x105
	.long	0x1c7
	.uleb128 0xb
	.byte	0x1
	.long	.LASF1
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"CloseSocket"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x32e
	.uleb128 0xd
	.long	.LASF2
	.byte	0x1
	.byte	0x37
	.long	0x193
	.long	.LLST0
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0x39
	.long	0x1ab
	.long	.LLST1
	.uleb128 0xf
	.long	.LVL3
	.long	0xa8f
	.long	0x318
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x11
	.long	.LVL4
	.long	0xa9d
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"OpenSocket"
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.long	0x193
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4ed
	.uleb128 0xd
	.long	.LASF2
	.byte	0x1
	.byte	0xa
	.long	0x193
	.long	.LLST2
	.uleb128 0x13
	.string	"eth_protocol"
	.byte	0x1
	.byte	0xa
	.long	0x193
	.long	.LLST3
	.uleb128 0x13
	.string	"tcp_port"
	.byte	0x1
	.byte	0xb
	.long	0x1ab
	.long	.LLST4
	.uleb128 0x14
	.string	"retval"
	.byte	0x1
	.byte	0xd
	.long	0x193
	.sleb128 -1
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0xe
	.long	0x1ab
	.long	.LLST5
	.uleb128 0x15
	.long	0x22b
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x24
	.long	0x3e3
	.uleb128 0x16
	.long	0x23e
	.long	.LLST6
	.uleb128 0x17
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x18
	.long	0x24a
	.long	.LLST7
	.uleb128 0x18
	.long	0x257
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LVL10
	.long	0xa9d
	.long	0x3fc
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL11
	.long	0x2bc
	.long	0x410
	.uleb128 0x10
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL12
	.long	0xa8f
	.long	0x42f
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL13
	.long	0xa8f
	.long	0x44e
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 4
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL14
	.long	0xa8f
	.long	0x46d
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 5
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL16
	.long	0xa8f
	.long	0x48b
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.long	.LVL17
	.long	0xa9d
	.long	0x4a4
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL20
	.long	0xa9d
	.long	0x4bd
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL21
	.long	0x2bc
	.long	0x4d1
	.uleb128 0x10
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.long	.LVL22
	.long	0xaab
	.uleb128 0x10
	.byte	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"DisconnectSocket"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x564
	.uleb128 0xd
	.long	.LASF2
	.byte	0x1
	.byte	0x43
	.long	0x193
	.long	.LLST9
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0x45
	.long	0x1ab
	.long	.LLST10
	.uleb128 0xf
	.long	.LVL30
	.long	0xa8f
	.long	0x54e
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x11
	.long	.LVL31
	.long	0xa9d
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Listen"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	0x193
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x62a
	.uleb128 0xd
	.long	.LASF2
	.byte	0x1
	.byte	0x4f
	.long	0x193
	.long	.LLST11
	.uleb128 0x14
	.string	"retval"
	.byte	0x1
	.byte	0x51
	.long	0x193
	.sleb128 -1
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0x52
	.long	0x1ab
	.long	.LLST12
	.uleb128 0xf
	.long	.LVL37
	.long	0xa9d
	.long	0x5c9
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL39
	.long	0xa8f
	.long	0x5e7
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0xf
	.long	.LVL40
	.long	0xa9d
	.long	0x600
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL41
	.long	0xa9d
	.long	0x619
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.long	.LVL42
	.long	0x2bc
	.uleb128 0x10
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Send"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.long	0x193
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x889
	.uleb128 0xd
	.long	.LASF2
	.byte	0x1
	.byte	0x66
	.long	0x193
	.long	.LLST13
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x66
	.long	0x889
	.long	.LLST14
	.uleb128 0x13
	.string	"buflen"
	.byte	0x1
	.byte	0x67
	.long	0x1ab
	.long	.LLST15
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.byte	0x69
	.long	0x1ab
	.long	.LLST16
	.uleb128 0x19
	.string	"offaddr"
	.byte	0x1
	.byte	0x6a
	.long	0x1ab
	.long	.LLST17
	.uleb128 0xe
	.long	.LASF4
	.byte	0x1
	.byte	0x6b
	.long	0x1ab
	.long	.LLST18
	.uleb128 0x19
	.string	"txsize"
	.byte	0x1
	.byte	0x6c
	.long	0x1ab
	.long	.LLST19
	.uleb128 0x19
	.string	"timeout"
	.byte	0x1
	.byte	0x6d
	.long	0x1ab
	.long	.LLST20
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0x6e
	.long	0x1ab
	.long	.LLST21
	.uleb128 0x1a
	.long	0x22b
	.long	.LBB10
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x86
	.long	0x711
	.uleb128 0x16
	.long	0x23e
	.long	.LLST22
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0
	.uleb128 0x18
	.long	0x24a
	.long	.LLST23
	.uleb128 0x18
	.long	0x257
	.long	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LVL51
	.long	0xabb
	.uleb128 0xf
	.long	.LVL52
	.long	0xa9d
	.long	0x733
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL54
	.long	0xa9d
	.long	0x74c
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL59
	.long	0xa9d
	.long	0x765
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL61
	.long	0xa9d
	.long	0x77e
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL64
	.long	0x4ed
	.long	0x792
	.uleb128 0x10
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL70
	.long	0xa8f
	.long	0x7b2
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x9
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.word	0x7ff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0xf
	.long	.LVL72
	.long	0xa8f
	.long	0x7d1
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL73
	.long	0xa8f
	.long	0x7f0
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL74
	.long	0xa8f
	.long	0x80f
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LVL75
	.long	0xa9d
	.long	0x828
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL77
	.long	0xa9d
	.long	0x841
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL79
	.long	0xa9d
	.long	0x85a
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL86
	.long	0xa9d
	.long	0x873
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.long	.LVL88
	.long	0xa9d
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x2
	.long	0x184
	.uleb128 0x12
	.byte	0x1
	.string	"Receive"
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	0x1ab
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa08
	.uleb128 0xd
	.long	.LASF2
	.byte	0x1
	.byte	0xaf
	.long	0x193
	.long	.LLST25
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0xaf
	.long	0xa08
	.long	.LLST26
	.uleb128 0x13
	.string	"buflen"
	.byte	0x1
	.byte	0xb0
	.long	0x1ab
	.long	.LLST27
	.uleb128 0x19
	.string	"ptr"
	.byte	0x1
	.byte	0xb2
	.long	0x1ab
	.long	.LLST28
	.uleb128 0x19
	.string	"offaddr"
	.byte	0x1
	.byte	0xb3
	.long	0x1ab
	.long	.LLST29
	.uleb128 0xe
	.long	.LASF4
	.byte	0x1
	.byte	0xb4
	.long	0x1ab
	.long	.LLST30
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0xb5
	.long	0x1ab
	.long	.LLST31
	.uleb128 0x15
	.long	0x277
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0xd3
	.long	0x958
	.uleb128 0x16
	.long	0x28a
	.long	.LLST32
	.uleb128 0x17
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x18
	.long	0x296
	.long	.LLST33
	.uleb128 0x18
	.long	0x2a4
	.long	.LLST34
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LVL96
	.long	0xa9d
	.long	0x971
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL98
	.long	0xa9d
	.long	0x98c
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x8c
	.sleb128 1
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	.LVL105
	.long	0xa9d
	.long	0x9ac
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.word	0x7ff
	.byte	0x1a
	.byte	0x80
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0xf
	.long	.LVL109
	.long	0xa8f
	.long	0x9cb
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL110
	.long	0xa8f
	.long	0x9ec
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x8c
	.sleb128 1
	.byte	0x94
	.byte	0x2
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.long	.LVL111
	.long	0xa8f
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x76
	.sleb128 1
	.uleb128 0x10
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x2
	.long	0x193
	.uleb128 0x12
	.byte	0x1
	.string	"ReceivedSize"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	0x1ab
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa8f
	.uleb128 0xd
	.long	.LASF2
	.byte	0x1
	.byte	0xd8
	.long	0x193
	.long	.LLST35
	.uleb128 0x19
	.string	"val"
	.byte	0x1
	.byte	0xda
	.long	0x1ab
	.long	.LLST36
	.uleb128 0xe
	.long	.LASF3
	.byte	0x1
	.byte	0xdb
	.long	0x1ab
	.long	.LLST37
	.uleb128 0xf
	.long	.LVL120
	.long	0xa9d
	.long	0xa79
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 38
	.byte	0
	.uleb128 0x11
	.long	.LVL122
	.long	0xa9d
	.uleb128 0x10
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 39
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x1
	.long	.LASF5
	.long	.LASF5
	.byte	0x4
	.word	0x10f
	.uleb128 0x1e
	.byte	0x1
	.byte	0x1
	.long	.LASF6
	.long	.LASF6
	.byte	0x4
	.word	0x119
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1
	.string	"puts"
	.string	"puts"
	.byte	0x5
	.word	0x2f1
	.uleb128 0x1f
	.byte	0x1
	.byte	0x1
	.string	"printf"
	.string	"printf"
	.byte	0x5
	.word	0x28e
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
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
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0xa
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL2
	.long	.LVL5
	.word	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL23
	.word	0x1
	.byte	0x6c
	.long	.LVL23
	.long	.LVL24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x1
	.byte	0x68
	.long	.LVL25
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL10-1
	.word	0x1
	.byte	0x66
	.long	.LVL10-1
	.long	.LVL26
	.word	0x1
	.byte	0x5e
	.long	.LVL26
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL10-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10-1
	.long	.LVL24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL15
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LVL24
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46fa0000
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL19
	.word	0x4
	.byte	0xa
	.word	0x7d00
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL27
	.long	.LVL29
	.word	0x1
	.byte	0x68
	.long	.LVL29
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL28
	.long	.LVL29
	.word	0xa
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL29
	.long	.LVL32
	.word	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL33
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	.LVL36
	.long	.LVL43
	.word	0x1
	.byte	0x6c
	.long	.LVL43
	.long	.LVL44
	.word	0x1
	.byte	0x68
	.long	.LVL44
	.long	.LVL45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL45
	.long	.LVL47
	.word	0x1
	.byte	0x6c
	.long	.LVL47
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL35
	.long	.LVL38
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38
	.long	.LVL43
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46
	.long	.LVL47
	.word	0x3
	.byte	0x80
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL48
	.long	.LVL50
	.word	0x1
	.byte	0x68
	.long	.LVL50
	.long	.LVL56
	.word	0x1
	.byte	0x57
	.long	.LVL56
	.long	.LVL66
	.word	0x1
	.byte	0x52
	.long	.LVL66
	.long	.LVL76
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL76
	.long	.LVL82
	.word	0x1
	.byte	0x52
	.long	.LVL82
	.long	.LVL84
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL84
	.long	.LVL90
	.word	0x1
	.byte	0x52
	.long	.LVL90
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL48
	.long	.LVL51-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL51-1
	.long	.LVL68
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL68
	.long	.LVL71
	.word	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.long	.LVL71
	.long	.LVL91
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL48
	.long	.LVL51-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL51-1
	.long	.LVL66
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LVL76
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL90
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL78
	.long	.LVL80
	.word	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL66
	.long	.LVL76
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL81
	.long	.LVL84
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL67
	.long	.LVL69
	.word	0xa
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.word	0x7ff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70-1
	.long	.LVL71
	.word	0xa
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.word	0x7ff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL71
	.long	.LVL76
	.word	0xa
	.byte	0x7c
	.sleb128 -1
	.byte	0xa
	.word	0x7ff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.word	0x9
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL55
	.long	.LVL57
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL60
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL62
	.long	.LVL66
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL83
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84
	.long	.LVL86
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL86
	.long	.LVL87
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL89
	.long	.LVL90
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL54
	.long	.LVL57
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL57
	.long	.LVL62
	.word	0x7
	.byte	0xa
	.word	0x3ea
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL62
	.long	.LVL63
	.word	0x7
	.byte	0xa
	.word	0x3eb
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL63
	.long	.LVL66
	.word	0x7
	.byte	0xa
	.word	0x3ea
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL84
	.long	.LVL89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL89
	.long	.LVL90
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL49
	.long	.LVL50
	.word	0xa
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL50
	.long	.LVL56
	.word	0xa
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL56
	.long	.LVL66
	.word	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL66
	.long	.LVL76
	.word	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL76
	.long	.LVL82
	.word	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL82
	.long	.LVL84
	.word	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL84
	.long	.LVL90
	.word	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	.LVL90
	.long	.LFE12
	.word	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x38
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL57
	.long	.LVL58
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	.LVL84
	.long	.LVL85
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST23:
	.long	.LVL57
	.long	.LVL58
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46fa0000
	.long	.LVL84
	.long	.LVL85
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46fa0000
	.long	0
	.long	0
.LLST24:
	.long	.LVL57
	.long	.LVL58
	.word	0x4
	.byte	0xa
	.word	0x7d00
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.word	0x4
	.byte	0xa
	.word	0x7d00
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL92
	.long	.LVL95
	.word	0x1
	.byte	0x68
	.long	.LVL95
	.long	.LVL101
	.word	0x1
	.byte	0x60
	.long	.LVL101
	.long	.LVL113
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL113
	.long	.LVL114
	.word	0x1
	.byte	0x68
	.long	.LVL114
	.long	.LVL115
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL115
	.long	.LVL116
	.word	0x1
	.byte	0x68
	.long	.LVL116
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL92
	.long	.LVL96-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96-1
	.long	.LVL102
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102
	.long	.LVL106
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL106
	.long	.LVL107
	.word	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL107
	.long	.LVL108
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL113
	.long	.LVL116
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST27:
	.long	.LVL92
	.long	.LVL93
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL102
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102
	.long	.LVL103
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	.LVL103
	.long	.LVL105-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL105-1
	.long	.LVL108
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	.LVL113
	.long	.LVL116
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST28:
	.long	.LVL97
	.long	.LVL99
	.word	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL100
	.long	.LVL102
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102
	.long	.LVL108
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LVL103
	.long	.LVL104
	.word	0xa
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.word	0x7ff
	.byte	0x1a
	.byte	0x80
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL104
	.long	.LVL105-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL105-1
	.long	.LVL107
	.word	0xa
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.word	0x7ff
	.byte	0x1a
	.byte	0x80
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL107
	.long	.LVL108
	.word	0xa
	.byte	0x78
	.sleb128 -1
	.byte	0xa
	.word	0x7ff
	.byte	0x1a
	.byte	0x80
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL94
	.long	.LVL113
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LVL111
	.long	.LVL112
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40a00000
	.long	0
	.long	0
.LLST33:
	.long	.LVL111
	.long	.LVL112
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x43200000
	.long	0
	.long	0
.LLST34:
	.long	.LVL111
	.long	.LVL112
	.word	0x3
	.byte	0x8
	.byte	0xa0
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL117
	.long	.LVL119
	.word	0x1
	.byte	0x68
	.long	.LVL119
	.long	.LVL123
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL123
	.long	.LVL124
	.word	0x1
	.byte	0x68
	.long	.LVL124
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL120
	.long	.LVL121
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL118
	.long	.LVL123
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
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
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	0
	.long	0
	.section	.debug_ranges,info
.Ldebug_ranges0:
	.long	.LBB10
	.long	.LBE10
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LFB9
	.long	.LFE9
	.long	.LFB8
	.long	.LFE8
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	0
	.long	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF2:
	.string	"sock"
.LASF5:
	.string	"W51_write"
.LASF0:
	.string	"__ticks_dc"
.LASF4:
	.string	"realaddr"
.LASF3:
	.string	"sockaddr"
.LASF6:
	.string	"W51_read"
.LASF1:
	.string	"__builtin_avr_delay_cycles"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
