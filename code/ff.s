	.file	"ff.c"
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
	.section	.text.ld_dword,code
	.type	ld_dword, @function
ld_dword:
.LFB1:
	.file 1 "fatfs/ff.c"
	.loc 1 590 0
	.cfi_startproc
.LVL0:
	push r12
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r18,r22
	mov r20,r24
.LVL1:
	.loc 1 593 0
	mov r26,r24
	movw r24,r22
	adiw r24,3
	adc r26,__zero_reg__
.LVL2:
	.loc 1 594 0
	movw r30,r24
	mov r21,r26
	call __xload_1
.LVL3:
	mov r24,r22
.LVL4:
	ldi r25,0
	ldi r26,0
	ldi r27,0
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
.LVL5:
	movw r12,r18
	mov r14,r20
	ldi r21,2
	add r12,r21
	adc r13,__zero_reg__
	adc r14,__zero_reg__
.LVL6:
	.loc 1 595 0
	movw r30,r12
	mov r21,r14
	call __xload_1
	or r24,r22
.LVL7:
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
.LVL8:
	movw r12,r18
	mov r14,r20
	ldi r21,-1
	sub r12,r21
	sbc r13,r21
	sbc r14,r21
.LVL9:
	.loc 1 596 0
	movw r30,r12
	mov r21,r14
	call __xload_1
	or r24,r22
.LVL10:
	mov r27,r26
	mov r26,r25
	mov r25,r24
	clr r24
.LVL11:
	.loc 1 597 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	movw r18,r24
	movw r20,r26
.LVL12:
	or r18,r22
	movw r24,r20
	movw r22,r18
/* epilogue start */
	.loc 1 598 0
	pop r14
	pop r13
	pop r12
.LVL13:
	ret
	.cfi_endproc
.LFE1:
	.size	ld_dword, .-ld_dword
	.section	.text.mem_cpy,code
	.type	mem_cpy, @function
mem_cpy:
.LFB4:
	.loc 1 655 0
	.cfi_startproc
.LVL14:
	push r12
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL15:
	.loc 1 659 0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L2
	movw r26,r24
	mov r12,r20
	mov r13,r21
	mov r14,r22
	add r24,r18
	adc r25,r19
.LVL16:
.L4:
	.loc 1 661 0 discriminator 1
	movw r30,r12
	mov r21,r14
	call __xload_1
	st X+,r22
.LVL17:
	ldi r18,-1
	sub r12,r18
	sbc r13,r18
	sbc r14,r18
.LVL18:
	.loc 1 662 0 discriminator 1
	cp r26,r24
	cpc r27,r25
	brne .L4
.LVL19:
.L2:
/* epilogue start */
	.loc 1 664 0
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE4:
	.size	mem_cpy, .-mem_cpy
	.section	.text.mem_set,code
	.type	mem_set, @function
mem_set:
.LFB5:
	.loc 1 669 0
	.cfi_startproc
.LVL20:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	add r20,r24
	adc r21,r25
.LVL21:
.L7:
	.loc 1 673 0 discriminator 1
	st Z+,r22
.LVL22:
	.loc 1 674 0 discriminator 1
	cp r30,r20
	cpc r31,r21
	brne .L7
/* epilogue start */
	.loc 1 675 0
	ret
	.cfi_endproc
.LFE5:
	.size	mem_set, .-mem_set
	.section	.text.clst2sect,code
	.type	clst2sect, @function
clst2sect:
.LFB13:
	.loc 1 1136 0
	.cfi_startproc
.LVL23:
	push r16
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r17
	.cfi_def_cfa_offset 5
	.cfi_offset 17, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	.loc 1 1137 0
	movw r18,r20
	movw r20,r22
	subi r18,2
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
.LVL24:
	.loc 1 1138 0
	ldd r24,Z+19
	ldd r25,Z+20
	ldd r26,Z+21
	ldd r27,Z+22
.LVL25:
	sbiw r24,2
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	cp r18,r24
	cpc r19,r25
	cpc r20,r26
	cpc r21,r27
	brsh .L11
	.loc 1 1139 0
	ldd r26,Z+9
	ldd r27,Z+10
	call __muluhisi3
	ldd r16,Z+39
	ldd r17,Z+40
	ldd r18,Z+41
	ldd r19,Z+42
	add r22,r16
	adc r23,r17
	adc r24,r18
	adc r25,r19
	rjmp .L10
.L11:
	.loc 1 1138 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
.L10:
/* epilogue start */
	.loc 1 1140 0
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE13:
	.size	clst2sect, .-clst2sect
	.section	.text.get_achar,code
	.type	get_achar, @function
get_achar:
.LFB29:
	.loc 1 2752 0
	.cfi_startproc
.LVL26:
	push r12
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r16
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	.loc 1 2762 0
	movw r30,r24
	ld  r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	movw r12,r18
	mov r14,r20
	ldi r31,-1
	sub r12,r31
	sbc r13,r31
	sbc r14,r31
	movw r30,r24
	st Z,r12
	std Z+1,r13
	std Z+2,r14
	movw r30,r18
	mov r21,r20
	call __xload_1
	ldi r23,0
	ldi r24,0
	ldi r25,0
.LVL27:
	.loc 1 2763 0
	movw r16,r22
	movw r18,r24
	subi r16,97
	sbc r17,__zero_reg__
	sbc r18,__zero_reg__
	sbc r19,__zero_reg__
	cpi r16,26
	cpc r17,__zero_reg__
	cpc r18,__zero_reg__
	cpc r19,__zero_reg__
	brsh .L13
	.loc 1 2763 0 is_stmt 0 discriminator 1
	subi r22,32
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
.LVL28:
.L13:
	.loc 1 2767 0 is_stmt 1
	cpi r22,-128
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brlo .L14
	.loc 1 2767 0 is_stmt 0 discriminator 1
	movw r26,r24
	movw r24,r22
	subi r24,-128
	sbc r25,__zero_reg__
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	mov __tmp_reg__,r25
	lsl r0
	sbc r26,r26
	subi r24,lo8(-(ExCvt))
	sbci r25,hi8(-(ExCvt))
	sbci r26,hlo8(-(ExCvt))
	movw r30,r24
	mov r21,r26
	call __xload_1
.LVL29:
	ldi r23,0
	ldi r24,0
	ldi r25,0
.LVL30:
.L14:
/* epilogue start */
	.loc 1 2777 0 is_stmt 1
	pop r17
	pop r16
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE29:
	.size	get_achar, .-get_achar
	.section	.text.pattern_matching,code
	.type	pattern_matching, @function
pattern_matching:
.LFB30:
	.loc 1 2786 0
	.cfi_startproc
.LVL31:
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
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,9
	.cfi_def_cfa_offset 30
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 9 */
/* stack size = 27 */
.L__stack_usage = 27
	mov r11,r22
	mov r10,r23
	mov r9,r24
	std Y+7,r18
	std Y+8,r19
	std Y+9,r20
	movw r2,r14
	mov r6,r16
	mov r7,r17
	.loc 1 2792 0
	rjmp .L16
.LVL32:
.L18:
	.loc 1 2793 0
	movw r24,r28
	adiw r24,7
	call get_achar
.LVL33:
	ldi r18,1
	sub r6,r18
	sbc r7,__zero_reg__
.LVL34:
	or r22,r23
	or r22,r24
	or r22,r25
	brne .+2
	rjmp .L25
.LVL35:
.L16:
	.loc 1 2792 0
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .L18
	.loc 1 2795 0
	mov r30,r11
	mov r31,r10
	mov r21,r9
	call __xload_1
	cpse r22,__zero_reg__
	rjmp .L32
	.loc 1 2795 0 is_stmt 0 discriminator 1
	cp r2,__zero_reg__
	cpc r3,__zero_reg__
	breq .+2
	rjmp .L26
.LVL36:
.L32:
	.loc 1 2798 0 is_stmt 1
	std Y+1,r11
	std Y+2,r10
	std Y+3,r9
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	std Y+4,r24
	std Y+5,r25
	std Y+6,r26
.L24:
	.loc 1 2800 0
	ldd r25,Y+1
	ldd r24,Y+2
	ldd r21,Y+3
	mov r30,r25
	mov r31,r24
	call __xload_1
	cpi r22,lo8(63)
	breq .L27
	.loc 1 2800 0 is_stmt 0 discriminator 1
	cpi r22,lo8(42)
	breq .+2
	rjmp .L21
	ldi r18,0
	ldi r19,0
	ldi r16,0
	ldi r17,0
	rjmp .L34
.L27:
	ldi r18,0
	ldi r19,0
	ldi r16,0
	ldi r17,0
.L34:
.LVL37:
	.loc 1 2803 0 is_stmt 1
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	movw r6,r24
	mov r8,r26
	ldi r20,-1
	sub r6,r20
	sbc r7,r20
	sbc r8,r20
	std Y+1,r6
	std Y+2,r7
	std Y+3,r8
	movw r30,r24
	mov r21,r26
	call __xload_1
	cpi r22,lo8(63)
	brne .L28
	.loc 1 2803 0 is_stmt 0 discriminator 1
	subi r16,-1
	sbci r17,-1
.LVL38:
	rjmp .L22
.L28:
	.loc 1 2803 0
	ldi r18,lo8(1)
	ldi r19,0
.LVL39:
.L22:
	.loc 1 2804 0 is_stmt 1
	adiw r24,1
	adc r26,__zero_reg__
	movw r30,r24
	mov r21,r26
	call __xload_1
	cpi r22,lo8(63)
	breq .L34
	.loc 1 2804 0 is_stmt 0 discriminator 1
	cpi r22,lo8(42)
	breq .L34
	.loc 1 2805 0 is_stmt 1
	ldd r24,Y+4
	ldd r25,Y+5
	ldd r26,Y+6
	movw r14,r18
	movw r18,r24
	mov r20,r26
.LVL40:
	mov r24,r8
	movw r22,r6
	call pattern_matching
.LVL41:
	or r24,r25
	brne .L29
	.loc 1 2806 0
	ldd r25,Y+4
	ldd r24,Y+5
	ldd r21,Y+6
	mov r30,r25
	mov r31,r24
	call __xload_1
	mov r12,r22
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.LVL42:
	rjmp .L23
.LVL43:
.L21:
	.loc 1 2808 0
	movw r24,r28
	adiw r24,1
	call get_achar
.LVL44:
	movw r4,r22
	movw r6,r24
.LVL45:
	.loc 1 2809 0
	movw r24,r28
	adiw r24,4
	call get_achar
.LVL46:
	movw r12,r22
	movw r14,r24
.LVL47:
	.loc 1 2810 0
	cp r4,r22
	cpc r5,r23
	cpc r6,r24
	cpc r7,r25
	brne .L23
	.loc 1 2811 0
	or r4,r5
	or r4,r6
	or r4,r7
	breq .+2
	rjmp .L24
	rjmp .L30
.LVL48:
.L23:
	.loc 1 2813 0
	movw r24,r28
	adiw r24,7
	call get_achar
.LVL49:
	.loc 1 2814 0
	cp r2,__zero_reg__
	cpc r3,__zero_reg__
	breq .L31
	.loc 1 2814 0 is_stmt 0 discriminator 1
	or r12,r13
	or r12,r14
	or r12,r15
	breq .+2
	rjmp .L32
	.loc 1 2816 0 is_stmt 1
	ldi r24,0
	ldi r25,0
	rjmp .L17
.LVL50:
.L25:
	.loc 1 2793 0
	ldi r24,0
	ldi r25,0
	rjmp .L17
.LVL51:
.L26:
	.loc 1 2795 0
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L17
.LVL52:
.L29:
	.loc 1 2805 0
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L17
.LVL53:
.L30:
	.loc 1 2811 0
	ldi r24,lo8(1)
	ldi r25,0
	rjmp .L17
.LVL54:
.L31:
	.loc 1 2816 0
	ldi r24,0
	ldi r25,0
.LVL55:
.L17:
/* epilogue start */
	.loc 1 2817 0
	adiw r28,9
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
.LVL56:
	ret
	.cfi_endproc
.LFE30:
	.size	pattern_matching, .-pattern_matching
	.section	.text.get_ldnumber,code
	.type	get_ldnumber, @function
get_ldnumber:
.LFB33:
	.loc 1 3114 0
	.cfi_startproc
.LVL57:
	push r6
	.cfi_def_cfa_offset 4
	.cfi_offset 6, -3
	push r7
	.cfi_def_cfa_offset 5
	.cfi_offset 7, -4
	push r8
	.cfi_def_cfa_offset 6
	.cfi_offset 8, -5
	push r12
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
.LVL58:
	.loc 1 3123 0
	movw r30,r24
	ld  r6,Z
	ldd r7,Z+1
	ldd r8,Z+2
.LVL59:
	.loc 1 3124 0
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	cpc r8,__zero_reg__
	breq .L40
	mov r20,r8
	movw r18,r6
.LVL60:
.L38:
	.loc 1 3125 0 discriminator 2
	subi r18,-1
	sbci r19,-1
	sbci r20,-1
.LVL61:
	movw r12,r18
	mov r14,r20
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	movw r30,r12
	mov r21,r14
	call __xload_1
.LVL62:
	cpi r22,lo8(33)
	brlo .L37
	.loc 1 3125 0 is_stmt 0 discriminator 1
	cpi r22,lo8(58)
	brne .L38
	rjmp .L39
.L37:
	.loc 1 3127 0 is_stmt 1
	cpi r22,lo8(58)
	brne .L41
.L39:
.LVL63:
	.loc 1 3129 0
	movw r30,r6
	mov r21,r8
	call __xload_1
.LVL64:
	ldi r21,lo8(-48)
	add r21,r22
	cpi r21,lo8(10)
	brsh .L42
	.loc 1 3129 0 is_stmt 0 discriminator 1
	ldi r21,2
	add r6,r21
	adc r7,__zero_reg__
	adc r8,__zero_reg__
.LVL65:
	cp r18,r6
	cpc r19,r7
	cpc r20,r8
	brne .L43
	.loc 1 3130 0 is_stmt 1
	ldi r23,0
	subi r22,48
	sbc r23,__zero_reg__
.LVL66:
	.loc 1 3145 0
	cp __zero_reg__,r22
	cpc __zero_reg__,r23
	brlt .L44
.LVL67:
	.loc 1 3147 0
	movw r30,r24
	st Z,r18
	std Z+1,r19
	std Z+2,r20
.LVL68:
	.loc 1 3130 0
	mov r24,r22
.LVL69:
	mov r25,r23
	rjmp .L36
.LVL70:
.L40:
	.loc 1 3124 0
	ldi r24,lo8(-1)
.LVL71:
	ldi r25,lo8(-1)
	rjmp .L36
.LVL72:
.L41:
	.loc 1 3175 0
	ldi r24,0
.LVL73:
	ldi r25,0
	rjmp .L36
.LVL74:
.L42:
	.loc 1 3117 0
	ldi r24,lo8(-1)
.LVL75:
	ldi r25,lo8(-1)
	rjmp .L36
.LVL76:
.L43:
	ldi r24,lo8(-1)
.LVL77:
	ldi r25,lo8(-1)
	rjmp .L36
.LVL78:
.L44:
	ldi r24,lo8(-1)
.LVL79:
	ldi r25,lo8(-1)
.LVL80:
.L36:
/* epilogue start */
	.loc 1 3176 0
	pop r14
	pop r13
	pop r12
	pop r8
	pop r7
	pop r6
	ret
	.cfi_endproc
.LFE33:
	.size	get_ldnumber, .-get_ldnumber
	.section	.text.validate,code
	.type	validate, @function
validate:
.LFB36:
	.loc 1 3457 0
	.cfi_startproc
.LVL81:
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
	movw r28,r24
	movw r16,r22
.LVL82:
	.loc 1 3461 0
	or r24,r25
	breq .L47
	.loc 1 3461 0 is_stmt 0 discriminator 1
	ld r30,Y
	ldd r31,Y+1
	sbiw r30,0
	breq .L47
	.loc 1 3461 0 discriminator 2
	ld r24,Z
.LVL83:
	tst r24
	breq .L47
	.loc 1 3461 0 discriminator 3
	ldd r18,Y+2
	ldd r19,Y+3
	ldd r24,Z+5
	ldd r25,Z+6
	cp r18,r24
	cpc r19,r25
	brne .L47
	.loc 1 3473 0 is_stmt 1
	ldd r24,Z+1
	call disk_status
.LVL84:
	sbrc r24,0
	rjmp .L47
	rjmp .L48
.LVL85:
.L49:
	.loc 1 3478 0 discriminator 4
	movw r30,r16
	st Z,r18
	std Z+1,r19
	.loc 1 3479 0 discriminator 4
	rjmp .L50
.LVL86:
.L48:
	.loc 1 3478 0
	ld r18,Y
	ldd r19,Y+1
	.loc 1 3474 0
	ldi r24,0
	rjmp .L49
.LVL87:
.L47:
	ldi r24,lo8(9)
	.loc 1 3478 0
	ldi r18,0
	ldi r19,0
	rjmp .L49
.LVL88:
.L50:
/* epilogue start */
	.loc 1 3480 0
	pop r29
	pop r28
.LVL89:
	pop r17
	pop r16
.LVL90:
	ret
	.cfi_endproc
.LFE36:
	.size	validate, .-validate
	.section	.text.sync_window,code
	.type	sync_window, @function
sync_window:
.LFB10:
	.loc 1 1045 0
	.cfi_startproc
.LVL91:
	push r6
	.cfi_def_cfa_offset 4
	.cfi_offset 6, -3
	push r7
	.cfi_def_cfa_offset 5
	.cfi_offset 7, -4
	push r8
	.cfi_def_cfa_offset 6
	.cfi_offset 8, -5
	push r12
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r16
	.cfi_def_cfa_offset 11
	.cfi_offset 16, -10
	push r17
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -11
	push r28
	.cfi_def_cfa_offset 13
	.cfi_offset 28, -12
	push r29
	.cfi_def_cfa_offset 14
	.cfi_offset 29, -13
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
.LVL92:
	.loc 1 1049 0
	movw r30,r24
	ldd r18,Z+3
	tst r18
	breq .L53
	movw r28,r24
	.loc 1 1050 0
	movw r6,r24
	ldi r31,47
	add r6,r31
	adc r7,__zero_reg__
	ldi r24,lo8(-128)
.LVL93:
	mov r8,r24
	ldd r16,Y+43
	ldd r17,Y+44
	ldd r18,Y+45
	ldd r19,Y+46
	clr r14
	inc r14
	mov r15,__zero_reg__
	mov r22,r8
	movw r20,r6
	ldd r24,Y+1
	call disk_write
.LVL94:
	cpse r24,__zero_reg__
	rjmp .L54
	.loc 1 1051 0
	std Y+3,__zero_reg__
	.loc 1 1052 0
	ldd r16,Y+43
	ldd r17,Y+44
	ldd r18,Y+45
	ldd r19,Y+46
	ldd r24,Y+23
	ldd r25,Y+24
	ldd r26,Y+25
	ldd r27,Y+26
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
	movw r12,r16
	movw r14,r18
	sub r12,r20
	sbc r13,r21
	sbc r14,r22
	sbc r15,r23
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brsh .L55
	.loc 1 1053 0
	ldd r20,Y+2
	cpi r20,lo8(2)
	brne .L56
	.loc 1 1053 0 is_stmt 0 discriminator 1
	add r16,r24
	adc r17,r25
	adc r18,r26
	adc r19,r27
	clr r14
	inc r14
	mov r15,__zero_reg__
	mov r22,r8
	movw r20,r6
	ldd r24,Y+1
	call disk_write
.LVL95:
	.loc 1 1046 0 is_stmt 1 discriminator 1
	ldi r24,0
	rjmp .L52
.LVL96:
.L53:
	.loc 1 1046 0 is_stmt 0
	ldi r24,0
.LVL97:
	rjmp .L52
.LVL98:
.L54:
	.loc 1 1056 0 is_stmt 1
	ldi r24,lo8(1)
	rjmp .L52
.L55:
	.loc 1 1046 0
	ldi r24,0
	rjmp .L52
.L56:
	ldi r24,0
.LVL99:
.L52:
/* epilogue start */
	.loc 1 1060 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r8
	pop r7
	pop r6
	ret
	.cfi_endproc
.LFE10:
	.size	sync_window, .-sync_window
	.section	.text.move_window,code
	.type	move_window, @function
move_window:
.LFB11:
	.loc 1 1068 0
	.cfi_startproc
.LVL100:
	push r8
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r15
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r28,r24
	movw r8,r20
	movw r10,r22
.LVL101:
	.loc 1 1072 0
	ldd r24,Y+43
	ldd r25,Y+44
	ldd r26,Y+45
	ldd r27,Y+46
.LVL102:
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	breq .L60
	.loc 1 1074 0
	movw r24,r28
	call sync_window
.LVL103:
	mov r15,r24
.LVL104:
	.loc 1 1076 0
	cpse r24,__zero_reg__
	rjmp .L58
	.loc 1 1077 0
	ldi r16,lo8(1)
	ldi r17,0
	movw r20,r10
	movw r18,r8
	movw r22,r28
	subi r22,-47
	sbci r23,-1
	ldd r24,Y+1
	call disk_read
.LVL105:
	tst r24
	breq .L59
	.loc 1 1079 0
	clr r15
	inc r15
.LVL106:
	.loc 1 1078 0
	clr r8
	dec r8
	mov r9,r8
	movw r10,r8
.LVL107:
.L59:
	.loc 1 1081 0
	std Y+43,r8
	std Y+44,r9
	std Y+45,r10
	std Y+46,r11
	rjmp .L58
.LVL108:
.L60:
	.loc 1 1069 0
	mov r15,__zero_reg__
.LVL109:
.L58:
	.loc 1 1085 0
	mov r24,r15
/* epilogue start */
	pop r29
	pop r28
.LVL110:
	pop r17
	pop r16
	pop r15
.LVL111:
	pop r11
	pop r10
	pop r9
	pop r8
.LVL112:
	ret
	.cfi_endproc
.LFE11:
	.size	move_window, .-move_window
	.section	.text.dir_clear,code
	.type	dir_clear, @function
dir_clear:
.LFB18:
	.loc 1 1648 0
	.cfi_startproc
.LVL113:
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
	push r15
	.cfi_def_cfa_offset 14
	.cfi_offset 15, -13
	push r16
	.cfi_def_cfa_offset 15
	.cfi_offset 16, -14
	push r17
	.cfi_def_cfa_offset 16
	.cfi_offset 17, -15
	push r28
	.cfi_def_cfa_offset 17
	.cfi_offset 28, -16
	push r29
	.cfi_def_cfa_offset 18
	.cfi_offset 29, -17
/* prologue: function */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	movw r12,r24
	movw r4,r20
	movw r6,r22
	.loc 1 1654 0
	call sync_window
.LVL114:
	cpse r24,__zero_reg__
	rjmp .L67
	.loc 1 1655 0
	movw r22,r6
	movw r20,r4
	movw r24,r12
	call clst2sect
.LVL115:
	movw r2,r22
	movw r4,r24
.LVL116:
	.loc 1 1656 0
	movw r30,r12
	std Z+43,r22
	std Z+44,r23
	std Z+45,r24
	std Z+46,r25
	.loc 1 1657 0
	movw r6,r12
	ldi r31,47
	add r6,r31
	adc r7,__zero_reg__
	ldi r20,0
	ldi r21,lo8(2)
	ldi r22,0
	ldi r23,0
	movw r24,r6
	call mem_set
.LVL117:
	.loc 1 1670 0
	movw r30,r12
	ldd r24,Z+9
	ldd r25,Z+10
	or r24,r25
	brne .L68
	ldi r28,0
	ldi r29,0
	rjmp .L64
.LVL118:
.L65:
	.loc 1 1670 0 is_stmt 0 discriminator 4
	adiw r28,1
.LVL119:
	movw r30,r12
	ldd r24,Z+9
	ldd r25,Z+10
	cp r28,r24
	cpc r29,r25
	brlo .L63
	rjmp .L64
.LVL120:
.L68:
	.loc 1 1670 0
	ldi r28,0
	ldi r29,0
	ldi r31,lo8(-128)
	mov r8,r31
.LVL121:
.L63:
	.loc 1 1670 0 discriminator 3
	clr r14
	inc r14
	mov r15,__zero_reg__
	movw r18,r4
	movw r16,r2
	add r16,r28
	adc r17,r29
	adc r18,__zero_reg__
	adc r19,__zero_reg__
	mov r22,r8
	movw r20,r6
	movw r30,r12
	ldd r24,Z+1
	call disk_write
.LVL122:
	tst r24
	breq .L65
.LVL123:
.L64:
	.loc 1 1672 0 is_stmt 1
	ldi r24,lo8(1)
	movw r30,r12
	ldd r18,Z+9
	ldd r19,Z+10
	cp r18,r28
	cpc r19,r29
	brne .L62
	ldi r24,0
	rjmp .L62
.LVL124:
.L67:
	.loc 1 1654 0
	ldi r24,lo8(1)
.L62:
/* epilogue start */
	.loc 1 1673 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
.LVL125:
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
.LVL126:
	pop r3
	pop r2
	ret
	.cfi_endproc
.LFE18:
	.size	dir_clear, .-dir_clear
	.section	.text.sync_fs,code
	.type	sync_fs, @function
sync_fs:
.LFB12:
	.loc 1 1098 0
	.cfi_startproc
.LVL127:
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
	push r29
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
	.loc 1 1102 0
	call sync_window
.LVL128:
	mov r25,r24
.LVL129:
	.loc 1 1103 0
	cpse r24,__zero_reg__
	rjmp .L70
	.loc 1 1104 0
	ld r24,Y
.LVL130:
	cpi r24,lo8(3)
	breq .+2
	rjmp .L71
	.loc 1 1104 0 is_stmt 0 discriminator 1
	ldd r24,Y+4
	cpi r24,lo8(1)
	breq .+2
	rjmp .L71
	.loc 1 1106 0 is_stmt 1
	ldi r20,0
	ldi r21,lo8(2)
	ldi r22,0
	ldi r23,0
	movw r14,r28
	ldi r24,47
	add r14,r24
	adc r15,__zero_reg__
	movw r24,r14
	call mem_set
.LVL131:
.LBB12:
.LBB13:
	.loc 1 620 0
	ldi r24,lo8(85)
	movw r30,r28
	subi r30,-45
	sbci r31,-3
.LVL132:
	st Z,r24
.LVL133:
	.loc 1 621 0
	ldi r24,lo8(-86)
	adiw r30,1
.LVL134:
	st Z,r24
.LVL135:
.LBE13:
.LBE12:
.LBB14:
.LBB15:
	.loc 1 626 0
	ldi r24,lo8(82)
	std Y+47,r24
.LVL136:
	.loc 1 627 0
	std Y+48,r24
.LVL137:
	.loc 1 628 0
	ldi r24,lo8(97)
	std Y+49,r24
.LVL138:
	.loc 1 629 0
	ldi r25,lo8(65)
	std Y+50,r25
.LVL139:
.LBE15:
.LBE14:
.LBB16:
.LBB17:
	.loc 1 626 0
	ldi r18,lo8(114)
	sbiw r30,27
	st Z,r18
.LVL140:
	.loc 1 627 0
	adiw r30,1
	st Z,r18
.LVL141:
	.loc 1 628 0
	adiw r30,1
	st Z,r25
.LVL142:
	.loc 1 629 0
	adiw r30,1
	st Z,r24
.LVL143:
.LBE17:
.LBE16:
	.loc 1 1110 0
	ldd r19,Y+15
	ldd r18,Y+16
	ldd r25,Y+17
	ldd r24,Y+18
.LVL144:
.LBB18:
.LBB19:
	.loc 1 626 0
	adiw r30,1
	st Z,r19
.LVL145:
	.loc 1 627 0
	adiw r30,1
	st Z,r18
.LVL146:
	.loc 1 628 0
	adiw r30,1
	st Z,r25
.LVL147:
	.loc 1 629 0
	adiw r30,1
	st Z,r24
.LVL148:
.LBE19:
.LBE18:
	.loc 1 1111 0
	ldd r19,Y+11
	ldd r18,Y+12
	ldd r25,Y+13
	ldd r24,Y+14
.LVL149:
.LBB20:
.LBB21:
	.loc 1 626 0
	adiw r30,1
	st Z,r19
.LVL150:
	.loc 1 627 0
	adiw r30,1
	st Z,r18
.LVL151:
	.loc 1 628 0
	adiw r30,1
	st Z,r25
.LVL152:
	.loc 1 629 0
	adiw r30,1
	st Z,r24
.LVL153:
.LBE21:
.LBE20:
	.loc 1 1113 0
	ldd r16,Y+27
	ldd r17,Y+28
	ldd r18,Y+29
	ldd r19,Y+30
	subi r16,-1
	sbci r17,-1
	sbci r18,-1
	sbci r19,-1
	std Y+43,r16
	std Y+44,r17
	std Y+45,r18
	std Y+46,r19
	.loc 1 1114 0
	movw r20,r14
	ldi r22,lo8(-128)
	clr r14
	inc r14
	mov r15,__zero_reg__
	ldd r24,Y+1
	call disk_write
.LVL154:
	.loc 1 1115 0
	std Y+4,__zero_reg__
.L71:
	.loc 1 1118 0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldd r24,Y+1
	call disk_ioctl
.LVL155:
	.loc 1 1102 0
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	rjmp .L70
	ldi r25,0
.L70:
.LVL156:
	.loc 1 1122 0
	mov r24,r25
/* epilogue start */
	pop r29
	pop r28
.LVL157:
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE12:
	.size	sync_fs, .-sync_fs
	.section	.text.put_fat,code
	.type	put_fat, @function
put_fat:
.LFB15:
	.loc 1 1231 0
	.cfi_startproc
.LVL158:
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
.LVL159:
	.loc 1 1237 0
	cpi r20,2
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brsh .+2
	rjmp .L82
	.loc 1 1237 0 is_stmt 0 discriminator 1
	movw r30,r24
	ldd r12,Z+19
	ldd r13,Z+20
	ldd r14,Z+21
	ldd r15,Z+22
	cp r20,r12
	cpc r21,r13
	cpc r22,r14
	cpc r23,r15
	brlo .+2
	rjmp .L83
	movw r4,r16
	movw r6,r18
	movw r12,r20
	movw r14,r22
	movw r28,r24
	.loc 1 1238 0 is_stmt 1
	ld r24,Z
.LVL160:
	cpi r24,lo8(2)
	brne .+2
	rjmp .L75
	cpi r24,lo8(3)
	brne .+2
	rjmp .L76
	cpi r24,lo8(1)
	breq .+2
	rjmp .L88
.LVL161:
	.loc 1 1240 0
	movw r10,r20
	lsr r11
	ror r10
	add r10,r20
	adc r11,r21
.LVL162:
	.loc 1 1241 0
	movw r24,r10
	mov r24,r25
	clr r25
	lsr r24
	ldd r20,Z+31
	ldd r21,Z+32
	ldd r22,Z+33
	ldd r23,Z+34
.LVL163:
	add r20,r24
	adc r21,r25
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	movw r24,r30
	call move_window
.LVL164:
	mov r17,r24
.LVL165:
	.loc 1 1242 0
	cpse r24,__zero_reg__
	rjmp .L87
	.loc 1 1243 0
	movw r2,r28
	ldi r31,47
	add r2,r31
	adc r3,__zero_reg__
	movw r8,r10
	ldi r18,-1
	sub r8,r18
	sbc r9,r18
.LVL166:
	ldi r19,1
	and r11,r19
	movw r30,r2
	add r30,r10
	adc r31,r11
.LVL167:
	.loc 1 1244 0
	sbrs r12,0
	rjmp .L78
	.loc 1 1244 0 is_stmt 0 discriminator 1
	ld r24,Z
	mov r18,r24
	andi r18,lo8(15)
	ldi r19,lo8(16)
	mul r4,r19
	movw r24,r0
	clr __zero_reg__
	or r24,r18
	st Z,r24
	.loc 1 1245 0 is_stmt 1 discriminator 1
	ldi r24,lo8(1)
	std Y+3,r24
	.loc 1 1246 0 discriminator 1
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
	movw r24,r8
	mov r24,r25
	clr r25
	lsr r24
	add r20,r24
	adc r21,r25
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	movw r24,r28
	call move_window
.LVL168:
	.loc 1 1247 0 discriminator 1
	tst r24
	brne .+2
	rjmp .L89
	rjmp .L85
.LVL169:
.L78:
	.loc 1 1244 0 discriminator 2
	st Z,r4
	.loc 1 1245 0 discriminator 2
	ldi r24,lo8(1)
	std Y+3,r24
	.loc 1 1246 0 discriminator 2
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
	movw r24,r8
	mov r24,r25
	clr r25
	lsr r24
	add r20,r24
	adc r21,r25
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	movw r24,r28
	call move_window
.LVL170:
	.loc 1 1247 0 discriminator 2
	tst r24
	brne .+2
	rjmp .L90
	rjmp .L86
.LVL171:
.L81:
	.loc 1 1249 0 discriminator 4
	st Z,r4
	.loc 1 1250 0 discriminator 4
	ldi r24,lo8(1)
	std Y+3,r24
	.loc 1 1251 0 discriminator 4
	rjmp .L87
.LVL172:
.L75:
	.loc 1 1254 0
	mov r20,r21
	mov r21,r22
	mov r22,r23
	clr r23
	ldd r24,Z+31
	ldd r25,Z+32
	ldd r26,Z+33
	ldd r27,Z+34
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	movw r24,r30
	call move_window
.LVL173:
	mov r17,r24
.LVL174:
	.loc 1 1255 0
	cpse r24,__zero_reg__
	rjmp .L87
	.loc 1 1256 0
	movw r30,r28
	adiw r30,47
	lsl r12
	rol r13
.LVL175:
	clt
	bld r12,0
	ldi r24,1
	and r13,r24
	add r30,r12
	adc r31,r13
.LVL176:
.LBB26:
.LBB27:
	.loc 1 620 0
	st Z,r4
.LVL177:
	.loc 1 621 0
	std Z+1,r5
.LVL178:
.LBE27:
.LBE26:
	.loc 1 1257 0
	ldi r24,lo8(1)
	std Y+3,r24
	.loc 1 1258 0
	rjmp .L87
.LVL179:
.L76:
	.loc 1 1264 0
	ldd r24,Z+31
	ldd r25,Z+32
	ldd r26,Z+33
	ldd r27,Z+34
	set
	bld __zero_reg__,7-1
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr __zero_reg__
	brne 1b
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	movw r24,r30
	call move_window
.LVL180:
	mov r17,r24
.LVL181:
	.loc 1 1265 0
	cpse r24,__zero_reg__
	rjmp .L87
	.loc 1 1267 0
	ldi r30,15
	and r7,r30
.LVL182:
	movw r24,r28
	adiw r24,47
	lsl r12
	rol r13
	lsl r12
	rol r13
.LVL183:
	ldi r31,252
	and r12,r31
	ldi r31,1
	and r13,r31
	add r12,r24
	adc r13,r25
	movw r22,r12
	ldi r24,lo8(-128)
	call ld_dword
.LVL184:
	movw r26,r24
	movw r24,r22
	clr r24
	clr r25
	clr r26
	andi r27,240
	or r4,r24
	or r5,r25
	or r6,r26
	or r7,r27
.LVL185:
.LBB28:
.LBB29:
	.loc 1 626 0
	movw r30,r12
	st Z,r4
.LVL186:
	.loc 1 627 0
	std Z+1,r5
	.loc 1 628 0
	std Z+2,r6
	.loc 1 629 0
	std Z+3,r7
.LBE29:
.LBE28:
	.loc 1 1270 0
	ldi r24,lo8(1)
	std Y+3,r24
	.loc 1 1271 0
	rjmp .L87
.LVL187:
.L82:
	.loc 1 1234 0
	ldi r17,lo8(2)
	rjmp .L87
.L83:
	ldi r17,lo8(2)
	rjmp .L87
.LVL188:
.L88:
	ldi r17,lo8(2)
	rjmp .L87
.LVL189:
.L85:
	.loc 1 1246 0
	mov r17,r24
	rjmp .L87
.L86:
	mov r17,r24
.LVL190:
	.loc 1 1274 0
	rjmp .L87
.LVL191:
.L89:
	.loc 1 1248 0
	ldi r31,1
	and r9,r31
.LVL192:
	movw r30,r2
	add r30,r8
	adc r31,r9
.LVL193:
	.loc 1 1249 0
	set
	bld __zero_reg__,4-1
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	lsr __zero_reg__
	brne 1b
.LVL194:
	rjmp .L81
.LVL195:
.L90:
	.loc 1 1248 0
	ldi r18,1
	and r9,r18
.LVL196:
	movw r30,r2
	add r30,r8
	adc r31,r9
.LVL197:
	.loc 1 1249 0
	ld r25,Z
	andi r25,lo8(-16)
	mov r24,r5
.LVL198:
	andi r24,lo8(15)
	mov r4,r25
.LVL199:
	or r4,r24
	rjmp .L81
.LVL200:
.L87:
	.loc 1 1275 0
	mov r24,r17
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
.LFE15:
	.size	put_fat, .-put_fat
	.section	.text.st_clust,code
	.type	st_clust, @function
st_clust:
.LFB23:
	.loc 1 1856 0
	.cfi_startproc
.LVL201:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
.LVL202:
.LBB34:
.LBB35:
	.loc 1 620 0
	std Z+26,r18
.LVL203:
	.loc 1 621 0
	std Z+27,r19
.LVL204:
.LBE35:
.LBE34:
	.loc 1 1858 0
	movw r26,r24
	ld r24,X
.LVL205:
	cpi r24,lo8(3)
	brne .L91
	.loc 1 1859 0
	movw r24,r20
	clr r26
	clr r27
.LVL206:
.LBB36:
.LBB37:
	.loc 1 620 0
	std Z+20,r24
.LVL207:
	.loc 1 621 0
	std Z+21,r25
.LVL208:
.L91:
	ret
.LBE37:
.LBE36:
	.cfi_endproc
.LFE23:
	.size	st_clust, .-st_clust
	.section	.text.get_fat,code
	.type	get_fat, @function
get_fat:
.LFB14:
	.loc 1 1153 0
	.cfi_startproc
.LVL209:
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
.LVL210:
	.loc 1 1159 0
	cpi r20,2
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brsh .+2
	rjmp .L99
	.loc 1 1156 0 discriminator 1
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	.loc 1 1159 0 discriminator 1
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
.LVL211:
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .+2
	rjmp .L100
	movw r12,r20
	movw r14,r22
.LVL212:
	.loc 1 1165 0
	ld r24,Y
	cpi r24,lo8(2)
	brne .+2
	rjmp .L95
	cpi r24,lo8(3)
	brne .+2
	rjmp .L96
	cpi r24,lo8(1)
	breq .+2
	rjmp .L106
.LVL213:
	.loc 1 1167 0
	movw r16,r20
	lsr r17
	ror r16
	add r16,r20
	adc r17,r21
.LVL214:
	.loc 1 1168 0
	movw r24,r16
	mov r24,r25
	clr r25
	lsr r24
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
.LVL215:
	add r20,r24
	adc r21,r25
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	movw r24,r28
	call move_window
.LVL216:
	cpse r24,__zero_reg__
	rjmp .L102
	.loc 1 1169 0
	movw r10,r16
	ldi r31,-1
	sub r10,r31
	sbc r11,r31
.LVL217:
	andi r17,1
	movw r30,r28
	add r30,r16
	adc r31,r17
	ldd r17,Z+47
.LVL218:
	.loc 1 1170 0
	movw r24,r10
	mov r24,r25
	clr r25
	lsr r24
	ldd r20,Y+31
	ldd r21,Y+32
	ldd r22,Y+33
	ldd r23,Y+34
	add r20,r24
	adc r21,r25
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	movw r24,r28
	call move_window
.LVL219:
	cpse r24,__zero_reg__
	rjmp .L103
	.loc 1 1171 0
	ldi r18,1
	and r11,r18
.LVL220:
	add r28,r10
	adc r29,r11
.LVL221:
	ldd r24,Y+47
	mov r22,r17
	ldi r23,0
	or r23,r24
.LVL222:
	.loc 1 1172 0
	sbrs r12,0
	rjmp .L98
	.loc 1 1172 0 is_stmt 0 discriminator 1
	swap r23
	swap r22
	andi r22,0x0f
	eor r22,r23
	andi r23,0x0f
	eor r22,r23
.LVL223:
	ldi r24,0
	ldi r25,0
	rjmp .L94
.LVL224:
.L98:
	.loc 1 1172 0 discriminator 2
	andi r23,15
.LVL225:
	ldi r24,0
	ldi r25,0
	rjmp .L94
.LVL226:
.L95:
	.loc 1 1176 0 is_stmt 1
	mov r20,r21
	mov r21,r22
	mov r22,r23
	clr r23
	ldd r24,Y+31
	ldd r25,Y+32
	ldd r26,Y+33
	ldd r27,Y+34
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	movw r24,r28
	call move_window
.LVL227:
	cpse r24,__zero_reg__
	rjmp .L104
	.loc 1 1177 0
	movw r18,r28
	subi r18,-47
	sbci r19,-1
	movw r20,r12
	lsl r20
	rol r21
	andi r20,254
	andi r21,1
	add r20,r18
	adc r21,r19
	movw r18,r20
	ldi r20,lo8(-128)
.LVL228:
.LBB40:
.LBB41:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL229:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL230:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL231:
.LBE41:
.LBE40:
	.loc 1 1177 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	movw r30,r24
	or r30,r22
	movw r22,r30
	ldi r24,0
	ldi r25,0
.LVL232:
	.loc 1 1178 0
	rjmp .L94
.LVL233:
.L96:
	.loc 1 1181 0
	ldd r24,Y+31
	ldd r25,Y+32
	ldd r26,Y+33
	ldd r27,Y+34
	set
	bld __zero_reg__,7-1
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr __zero_reg__
	brne 1b
	add r20,r24
	adc r21,r25
	adc r22,r26
	adc r23,r27
	movw r24,r28
	call move_window
.LVL234:
	cpse r24,__zero_reg__
	rjmp .L105
	.loc 1 1182 0
	adiw r28,47
.LVL235:
	movw r20,r12
	lsl r20
	rol r21
	lsl r20
	rol r21
	andi r20,252
	andi r21,1
	add r28,r20
	adc r29,r21
.LVL236:
	movw r22,r28
	ldi r24,lo8(-128)
	call ld_dword
.LVL237:
	andi r25,15
.LVL238:
	.loc 1 1183 0
	rjmp .L94
.LVL239:
.L99:
	.loc 1 1160 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L94
.LVL240:
.L100:
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L94
.LVL241:
.L106:
	.loc 1 1211 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L94
.LVL242:
.L102:
	.loc 1 1163 0
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
	rjmp .L94
.LVL243:
.L103:
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
	rjmp .L94
.LVL244:
.L104:
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
	rjmp .L94
.L105:
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
.LVL245:
.L94:
/* epilogue start */
	.loc 1 1216 0
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
.LFE14:
	.size	get_fat, .-get_fat
	.section	.text.dir_sdi,code
	.type	dir_sdi, @function
dir_sdi:
.LFB19:
	.loc 1 1687 0
	.cfi_startproc
.LVL246:
	push r4
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -3
	push r5
	.cfi_def_cfa_offset 5
	.cfi_offset 5, -4
	push r6
	.cfi_def_cfa_offset 6
	.cfi_offset 6, -5
	push r7
	.cfi_def_cfa_offset 7
	.cfi_offset 7, -6
	push r8
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -7
	push r9
	.cfi_def_cfa_offset 9
	.cfi_offset 9, -8
	push r10
	.cfi_def_cfa_offset 10
	.cfi_offset 10, -9
	push r11
	.cfi_def_cfa_offset 11
	.cfi_offset 11, -10
	push r12
	.cfi_def_cfa_offset 12
	.cfi_offset 12, -11
	push r13
	.cfi_def_cfa_offset 13
	.cfi_offset 13, -12
	push r14
	.cfi_def_cfa_offset 14
	.cfi_offset 14, -13
	push r15
	.cfi_def_cfa_offset 15
	.cfi_offset 15, -14
	push r16
	.cfi_def_cfa_offset 16
	.cfi_offset 16, -15
	push r17
	.cfi_def_cfa_offset 17
	.cfi_offset 17, -16
	push r28
	.cfi_def_cfa_offset 18
	.cfi_offset 28, -17
	push r29
	.cfi_def_cfa_offset 19
	.cfi_offset 29, -18
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r28,r24
	movw r12,r20
	movw r14,r22
.LVL247:
	.loc 1 1692 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	ldi r24,32
	cpc r22,r24
	cpc r23,__zero_reg__
.LVL248:
	brlo .+2
	rjmp .L114
	.loc 1 1692 0 is_stmt 0 discriminator 1
	movw r26,r22
	movw r24,r20
	andi r24,31
	clr r25
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L115
	.loc 1 1689 0 is_stmt 1
	ld r16,Y
	ldd r17,Y+1
	.loc 1 1695 0
	std Y+14,r20
	std Y+15,r21
	std Y+16,r22
	std Y+17,r23
	.loc 1 1696 0
	ldd r8,Y+6
	ldd r9,Y+7
	ldd r10,Y+8
	ldd r11,Y+9
.LVL249:
	.loc 1 1697 0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .L109
	.loc 1 1697 0 is_stmt 0 discriminator 1
	movw r30,r16
	ld r24,Z
	cpi r24,lo8(3)
	brlo .L110
	.loc 1 1698 0 is_stmt 1
	ldd r24,Z+35
	ldd r25,Z+36
	ldd r26,Z+37
	ldd r27,Z+38
.LVL250:
	.loc 1 1702 0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .L116
.LVL251:
.L110:
	.loc 1 1703 0
	movw r30,r16
	ldd r24,Z+7
	ldd r25,Z+8
	ldi r26,0
	ldi r27,0
	movw r22,r14
	movw r20,r12
.LVL252:
	set
	bld __zero_reg__,5-1
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr __zero_reg__
	brne 1b
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .+2
	rjmp .L117
.LVL253:
	.loc 1 1704 0
	ldd r24,Z+35
	ldd r25,Z+36
	ldd r26,Z+37
	ldd r27,Z+38
	std Y+22,r24
	std Y+23,r25
	std Y+24,r26
	std Y+25,r27
	rjmp .L111
.LVL254:
.L116:
	.loc 1 1698 0
	movw r8,r24
	movw r10,r26
.LVL255:
.L109:
	.loc 1 1707 0
	movw r30,r16
	ldd r4,Z+9
	ldd r5,Z+10
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	mov r0,r19
	ldi r19,9
	1:
	lsl r4
	rol r5
	rol r6
	rol r7
	dec r19
	brne 1b
	mov r19,r0
.LVL256:
	.loc 1 1708 0
	cp r12,r4
	cpc r13,r5
	cpc r14,r6
	cpc r15,r7
	brlo .L112
.L122:
	.loc 1 1709 0
	movw r22,r10
	movw r20,r8
	movw r24,r28
	call get_fat
.LVL257:
	movw r8,r22
	movw r10,r24
.LVL258:
	.loc 1 1710 0
	cpi r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
	brne .+2
	rjmp .L118
	.loc 1 1711 0
	ldi r24,2
	cp r8,r24
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brsh .+2
	rjmp .L119
	.loc 1 1711 0 is_stmt 0 discriminator 2
	movw r30,r16
	ldd r24,Z+19
	ldd r25,Z+20
	ldd r26,Z+21
	ldd r27,Z+22
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	brlo .+2
	rjmp .L120
	.loc 1 1712 0 is_stmt 1
	sub r12,r4
	sbc r13,r5
	sbc r14,r6
	sbc r15,r7
.LVL259:
	.loc 1 1708 0
	cp r12,r4
	cpc r13,r5
	cpc r14,r6
	cpc r15,r7
	brsh .L122
.L112:
	.loc 1 1714 0
	movw r22,r10
	movw r20,r8
	movw r24,r16
	call clst2sect
.LVL260:
	std Y+22,r22
	std Y+23,r23
	std Y+24,r24
	std Y+25,r25
.LVL261:
.L111:
	.loc 1 1716 0
	std Y+18,r8
	std Y+19,r9
	std Y+20,r10
	std Y+21,r11
	.loc 1 1717 0
	ldd r24,Y+22
	ldd r25,Y+23
	ldd r26,Y+24
	ldd r27,Y+25
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L121
	.loc 1 1718 0
	movw r22,r14
	movw r20,r12
	mov r0,r19
	ldi r19,9
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r19
	brne 1b
	mov r19,r0
	add r24,r20
	adc r25,r21
	adc r26,r22
	adc r27,r23
	std Y+22,r24
	std Y+23,r25
	std Y+24,r26
	std Y+25,r27
	.loc 1 1719 0
	subi r16,-47
	sbci r17,-1
.LVL262:
	ldi r31,1
	and r13,r31
.LVL263:
	add r12,r16
	adc r13,r17
	std Y+26,r12
	std Y+27,r13
	.loc 1 1721 0
	ldi r24,0
	rjmp .L108
.LVL264:
.L114:
	.loc 1 1693 0
	ldi r24,lo8(2)
	rjmp .L108
.L115:
	ldi r24,lo8(2)
	rjmp .L108
.LVL265:
.L117:
	.loc 1 1703 0
	ldi r24,lo8(2)
	rjmp .L108
.LVL266:
.L118:
	.loc 1 1710 0
	ldi r24,lo8(1)
	rjmp .L108
.L119:
	.loc 1 1711 0
	ldi r24,lo8(2)
	rjmp .L108
.L120:
	ldi r24,lo8(2)
	rjmp .L108
.LVL267:
.L121:
	.loc 1 1717 0
	ldi r24,lo8(2)
.LVL268:
.L108:
/* epilogue start */
	.loc 1 1722 0
	pop r29
	pop r28
.LVL269:
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
	ret
	.cfi_endproc
.LFE19:
	.size	dir_sdi, .-dir_sdi
	.section	.text.create_chain,code
	.type	create_chain, @function
create_chain:
.LFB17:
	.loc 1 1515 0
	.cfi_startproc
.LVL270:
	push r4
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -3
	push r5
	.cfi_def_cfa_offset 5
	.cfi_offset 5, -4
	push r6
	.cfi_def_cfa_offset 6
	.cfi_offset 6, -5
	push r7
	.cfi_def_cfa_offset 7
	.cfi_offset 7, -6
	push r8
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -7
	push r9
	.cfi_def_cfa_offset 9
	.cfi_offset 9, -8
	push r10
	.cfi_def_cfa_offset 10
	.cfi_offset 10, -9
	push r11
	.cfi_def_cfa_offset 11
	.cfi_offset 11, -10
	push r12
	.cfi_def_cfa_offset 12
	.cfi_offset 12, -11
	push r13
	.cfi_def_cfa_offset 13
	.cfi_offset 13, -12
	push r14
	.cfi_def_cfa_offset 14
	.cfi_offset 14, -13
	push r15
	.cfi_def_cfa_offset 15
	.cfi_offset 15, -14
	push r16
	.cfi_def_cfa_offset 16
	.cfi_offset 16, -15
	push r17
	.cfi_def_cfa_offset 17
	.cfi_offset 17, -16
	push r28
	.cfi_def_cfa_offset 18
	.cfi_offset 28, -17
	push r29
	.cfi_def_cfa_offset 19
	.cfi_offset 29, -18
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r16,r24
	movw r4,r20
	movw r6,r22
	.loc 1 1518 0
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
.LVL271:
	.loc 1 1521 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L125
	.loc 1 1522 0
	ldd r8,Y+11
	ldd r9,Y+12
	ldd r10,Y+13
	ldd r11,Y+14
.LVL272:
	.loc 1 1523 0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L140
	.loc 1 1523 0 is_stmt 0 discriminator 2
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
.LVL273:
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	brsh .+2
	rjmp .L126
	.loc 1 1523 0
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
	inc r8
.LVL274:
	rjmp .L126
.LVL275:
.L125:
	.loc 1 1526 0 is_stmt 1
	call get_fat
.LVL276:
	.loc 1 1527 0
	cpi r22,2
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .+2
	rjmp .L141
	.loc 1 1528 0
	cpi r22,-1
	ldi r31,-1
	cpc r23,r31
	cpc r24,r31
	cpc r25,r31
	brne .+2
	rjmp .L142
	.loc 1 1529 0
	ldd r12,Y+19
	ldd r13,Y+20
	ldd r14,Y+21
	ldd r15,Y+22
	cp r22,r12
	cpc r23,r13
	cpc r24,r14
	cpc r25,r15
	brlo .+2
	rjmp .L154
	rjmp .L153
.LVL277:
.L155:
	.loc 1 1563 0
	movw r14,r6
	movw r12,r4
	ldi r18,-1
	sub r12,r18
	sbc r13,r18
	sbc r14,r18
	sbc r15,r18
.LVL278:
	.loc 1 1564 0
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L129
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	set
	bld r12,1
.LVL279:
.L129:
	.loc 1 1565 0
	movw r22,r14
	movw r20,r12
	movw r24,r16
	call get_fat
.LVL280:
	.loc 1 1566 0
	cpi r22,1
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L144
	.loc 1 1566 0 is_stmt 0 discriminator 2
	cpi r22,-1
	ldi r30,-1
	cpc r23,r30
	cpc r24,r30
	cpc r25,r30
	brne .+2
	rjmp .L145
	.loc 1 1567 0 is_stmt 1
	or r22,r23
	or r22,r24
	or r22,r25
	breq .L130
	.loc 1 1568 0
	ldd r8,Y+11
	ldd r9,Y+12
	ldd r10,Y+13
	ldd r11,Y+14
.LVL281:
	.loc 1 1569 0
	ldi r31,2
	cp r8,r31
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brsh .+2
	rjmp .L146
	.loc 1 1569 0 is_stmt 0 discriminator 1
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	brlo .+2
	rjmp .L147
	rjmp .L139
.LVL282:
.L130:
	.loc 1 1573 0 is_stmt 1
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L132
	movw r10,r6
	movw r8,r4
.LVL283:
.L139:
	movw r14,r10
	movw r12,r8
.LVL284:
.L134:
	.loc 1 1576 0
	ldi r18,-1
	sub r12,r18
	sbc r13,r18
	sbc r14,r18
	sbc r15,r18
.LVL285:
	.loc 1 1577 0
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L133
.LVL286:
	.loc 1 1579 0
	ldi r24,2
	cp r8,r24
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brsh .+2
	rjmp .L148
	.loc 1 1578 0
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	set
	bld r12,1
.LVL287:
.L133:
	.loc 1 1581 0
	movw r22,r14
	movw r20,r12
	movw r24,r16
	call get_fat
.LVL288:
	.loc 1 1582 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L132
	.loc 1 1583 0
	cpi r22,1
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L149
	.loc 1 1583 0 is_stmt 0 discriminator 2
	cpi r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
	brne .+2
	rjmp .L150
	.loc 1 1584 0 is_stmt 1
	cp r12,r8
	cpc r13,r9
	cpc r14,r10
	cpc r15,r11
	brne .L134
	rjmp .L151
.LVL289:
.L132:
	.loc 1 1587 0
	ldi r16,lo8(-1)
	ldi r17,lo8(-1)
	movw r18,r16
.LVL290:
	movw r22,r14
	movw r20,r12
	movw r24,r28
	call put_fat
.LVL291:
	.loc 1 1588 0
	cpse r24,__zero_reg__
	rjmp .L135
	.loc 1 1588 0 is_stmt 0 discriminator 1
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L136
	.loc 1 1589 0 is_stmt 1
	movw r18,r14
	movw r16,r12
	movw r22,r6
	movw r20,r4
	movw r24,r28
.LVL292:
	call put_fat
.LVL293:
	.loc 1 1593 0
	cpse r24,__zero_reg__
	rjmp .L135
.L136:
.LVL294:
	.loc 1 1594 0
	std Y+11,r12
	std Y+12,r13
	std Y+13,r14
	std Y+14,r15
	.loc 1 1595 0
	ldd r20,Y+15
	ldd r21,Y+16
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
	sbiw r24,2
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .L137
	.loc 1 1595 0 is_stmt 0 discriminator 1
	subi r20,1
	sbc r21,__zero_reg__
	sbc r22,__zero_reg__
	sbc r23,__zero_reg__
	std Y+15,r20
	std Y+16,r21
	std Y+17,r22
	std Y+18,r23
.L137:
	.loc 1 1596 0 is_stmt 1
	ldd r24,Y+4
	ori r24,lo8(1)
	std Y+4,r24
	movw r24,r14
	movw r22,r12
	rjmp .L153
.LVL295:
.L135:
	.loc 1 1598 0
	cpi r24,lo8(1)
	breq .L152
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rjmp .L153
.LVL296:
.L141:
	.loc 1 1527 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
.LVL297:
	rjmp .L153
.LVL298:
.L142:
	.loc 1 1528 0
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
.LVL299:
	rjmp .L153
.LVL300:
.L144:
	.loc 1 1566 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
.LVL301:
	rjmp .L153
.LVL302:
.L145:
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
.LVL303:
	rjmp .L153
.LVL304:
.L148:
	.loc 1 1579 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
	rjmp .L153
.LVL305:
.L149:
	.loc 1 1583 0
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,0
	ldi r25,0
.LVL306:
	rjmp .L153
.LVL307:
.L150:
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
.LVL308:
	rjmp .L153
.LVL309:
.L151:
	.loc 1 1584 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
.LVL310:
	rjmp .L153
.LVL311:
.L152:
	.loc 1 1598 0
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
	rjmp .L153
.LVL312:
.L154:
	.loc 1 1532 0
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+17
	ldd r25,Y+18
.LVL313:
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L155
	rjmp .L153
.LVL314:
.L146:
	movw r10,r6
	movw r8,r4
.LVL315:
	rjmp .L139
.LVL316:
.L147:
	movw r10,r6
	movw r8,r4
.LVL317:
	rjmp .L139
.LVL318:
.L140:
	.loc 1 1523 0
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
	inc r8
.LVL319:
.L126:
	.loc 1 1532 0
	ldd r22,Y+15
	ldd r23,Y+16
	ldd r24,Y+17
	ldd r25,Y+18
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
.LVL320:
.L153:
/* epilogue start */
	.loc 1 1602 0
	pop r29
	pop r28
.LVL321:
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
.LVL322:
	ret
	.cfi_endproc
.LFE17:
	.size	create_chain, .-create_chain
	.section	.text.remove_chain,code
	.type	remove_chain, @function
remove_chain:
.LFB16:
	.loc 1 1421 0
	.cfi_startproc
.LVL323:
	push r4
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -3
	push r5
	.cfi_def_cfa_offset 5
	.cfi_offset 5, -4
	push r6
	.cfi_def_cfa_offset 6
	.cfi_offset 6, -5
	push r7
	.cfi_def_cfa_offset 7
	.cfi_offset 7, -6
	push r10
	.cfi_def_cfa_offset 8
	.cfi_offset 10, -7
	push r11
	.cfi_def_cfa_offset 9
	.cfi_offset 11, -8
	push r12
	.cfi_def_cfa_offset 10
	.cfi_offset 12, -9
	push r13
	.cfi_def_cfa_offset 11
	.cfi_offset 13, -10
	push r14
	.cfi_def_cfa_offset 12
	.cfi_offset 14, -11
	push r15
	.cfi_def_cfa_offset 13
	.cfi_offset 15, -12
	push r16
	.cfi_def_cfa_offset 14
	.cfi_offset 16, -13
	push r17
	.cfi_def_cfa_offset 15
	.cfi_offset 17, -14
	push r28
	.cfi_def_cfa_offset 16
	.cfi_offset 28, -15
	push r29
	.cfi_def_cfa_offset 17
	.cfi_offset 29, -16
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r10,r24
	movw r12,r20
	movw r14,r22
	movw r22,r18
	movw r20,r16
.LVL324:
	.loc 1 1432 0
	ldi r18,2
	cp r12,r18
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brsh .+2
	rjmp .L161
	.loc 1 1424 0 discriminator 2
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	.loc 1 1432 0 discriminator 2
	ldd r24,Y+19
	ldd r25,Y+20
	ldd r26,Y+21
	ldd r27,Y+22
.LVL325:
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .+2
	rjmp .L162
	.loc 1 1435 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L160
	.loc 1 1436 0
	ldi r16,lo8(-1)
	ldi r17,lo8(-1)
	movw r18,r16
.LVL326:
	movw r24,r28
	call put_fat
.LVL327:
	.loc 1 1437 0
	cpse r24,__zero_reg__
	rjmp .L157
.LVL328:
.L160:
	.loc 1 1442 0
	movw r22,r14
	movw r20,r12
	movw r24,r10
	call get_fat
.LVL329:
	movw r4,r22
	movw r6,r24
.LVL330:
	.loc 1 1443 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L164
	.loc 1 1444 0
	cpi r22,1
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L165
	.loc 1 1445 0
	cpi r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
	breq .L166
	.loc 1 1447 0
	ldi r16,0
	ldi r17,0
	movw r18,r16
	movw r22,r14
	movw r20,r12
	movw r24,r28
	call put_fat
.LVL331:
	.loc 1 1448 0
	cpse r24,__zero_reg__
	rjmp .L157
	.loc 1 1450 0
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r26,Y+17
	ldd r27,Y+18
.LVL332:
	ldd r20,Y+19
	ldd r21,Y+20
	ldd r22,Y+21
	ldd r23,Y+22
	movw r12,r20
	movw r14,r22
.LVL333:
	ldi r30,2
	sub r12,r30
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	cp r24,r12
	cpc r25,r13
	cpc r26,r14
	cpc r27,r15
	brsh .L159
	.loc 1 1451 0
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	std Y+15,r24
	std Y+16,r25
	std Y+17,r26
	std Y+18,r27
	.loc 1 1452 0
	ldd r24,Y+4
	ori r24,lo8(1)
	std Y+4,r24
.L159:
.LVL334:
	.loc 1 1472 0
	movw r14,r6
	movw r12,r4
	.loc 1 1473 0
	cp r4,r20
	cpc r5,r21
	cpc r6,r22
	cpc r7,r23
	brsh .+2
	rjmp .L160
	.loc 1 1501 0
	ldi r24,0
	rjmp .L157
.LVL335:
.L161:
	.loc 1 1432 0
	ldi r24,lo8(2)
	rjmp .L157
.LVL336:
.L162:
	ldi r24,lo8(2)
	rjmp .L157
.LVL337:
.L164:
	.loc 1 1501 0
	ldi r24,0
	rjmp .L157
.L165:
	.loc 1 1444 0
	ldi r24,lo8(2)
	rjmp .L157
.L166:
	.loc 1 1445 0
	ldi r24,lo8(1)
.LVL338:
.L157:
/* epilogue start */
	.loc 1 1502 0
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
.LVL339:
	pop r11
	pop r10
.LVL340:
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.cfi_endproc
.LFE16:
	.size	remove_chain, .-remove_chain
	.section	.text.dir_next,code
	.type	dir_next, @function
dir_next:
.LFB20:
	.loc 1 1735 0
	.cfi_startproc
.LVL341:
	push r4
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -3
	push r5
	.cfi_def_cfa_offset 5
	.cfi_offset 5, -4
	push r6
	.cfi_def_cfa_offset 6
	.cfi_offset 6, -5
	push r7
	.cfi_def_cfa_offset 7
	.cfi_offset 7, -6
	push r10
	.cfi_def_cfa_offset 8
	.cfi_offset 10, -7
	push r11
	.cfi_def_cfa_offset 9
	.cfi_offset 11, -8
	push r12
	.cfi_def_cfa_offset 10
	.cfi_offset 12, -9
	push r13
	.cfi_def_cfa_offset 11
	.cfi_offset 13, -10
	push r14
	.cfi_def_cfa_offset 12
	.cfi_offset 14, -11
	push r15
	.cfi_def_cfa_offset 13
	.cfi_offset 15, -12
	push r16
	.cfi_def_cfa_offset 14
	.cfi_offset 16, -13
	push r17
	.cfi_def_cfa_offset 15
	.cfi_offset 17, -14
	push r28
	.cfi_def_cfa_offset 16
	.cfi_offset 28, -15
	push r29
	.cfi_def_cfa_offset 17
	.cfi_offset 29, -16
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r16,r22
.LVL342:
	.loc 1 1740 0
	movw r30,r24
	ldd r12,Z+14
	ldd r13,Z+15
	ldd r14,Z+16
	ldd r15,Z+17
	ldi r31,32
	add r12,r31
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
.LVL343:
	.loc 1 1741 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	ldi r18,32
	cpc r14,r18
	cpc r15,__zero_reg__
	brlo .L170
	.loc 1 1741 0 is_stmt 0 discriminator 1
	movw r30,r24
	std Z+22,__zero_reg__
	std Z+23,__zero_reg__
	std Z+24,__zero_reg__
	std Z+25,__zero_reg__
	.loc 1 1742 0 is_stmt 1 discriminator 1
	ldi r24,lo8(4)
.LVL344:
	rjmp .L171
.LVL345:
.L170:
	.loc 1 1742 0 is_stmt 0
	movw r30,r24
	ldd r20,Z+22
	ldd r21,Z+23
	ldd r22,Z+24
	ldd r23,Z+25
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L176
	movw r28,r24
	.loc 1 1737 0 is_stmt 1
	ld r10,Z
	ldd r11,Z+1
	.loc 1 1744 0
	movw r26,r14
	movw r24,r12
.LVL346:
	andi r25,1
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L172
.LVL347:
	.loc 1 1745 0
	subi r20,-1
	sbci r21,-1
	sbci r22,-1
	sbci r23,-1
	std Z+22,r20
	std Z+23,r21
	std Z+24,r22
	std Z+25,r23
	.loc 1 1747 0
	ldd r20,Z+18
	ldd r21,Z+19
	ldd r22,Z+20
	ldd r23,Z+21
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L173
	.loc 1 1748 0
	movw r30,r10
	ldd r24,Z+7
	ldd r25,Z+8
	ldi r26,0
	ldi r27,0
	movw r22,r14
	movw r20,r12
	set
	bld __zero_reg__,5-1
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	lsr __zero_reg__
	brne 1b
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .+2
	rjmp .L172
	.loc 1 1749 0
	std Y+22,__zero_reg__
	std Y+23,__zero_reg__
	std Y+24,__zero_reg__
	std Y+25,__zero_reg__
	ldi r24,lo8(4)
	rjmp .L171
.L173:
	.loc 1 1753 0
	movw r30,r10
	ldd r24,Z+9
	ldd r25,Z+10
	sbiw r24,1
	ldi r26,0
	ldi r27,0
	movw r4,r12
	movw r6,r14
	mov r0,r19
	ldi r19,9
	1:
	lsr r7
	ror r6
	ror r5
	ror r4
	dec r19
	brne 1b
	mov r19,r0
	and r24,r4
	and r25,r5
	and r26,r6
	and r27,r7
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L172
	.loc 1 1754 0
	movw r24,r28
	call get_fat
.LVL348:
	movw r4,r22
	movw r6,r24
.LVL349:
	.loc 1 1755 0
	cpi r22,2
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .+2
	rjmp .L177
	.loc 1 1756 0
	cpi r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
	brne .+2
	rjmp .L178
	.loc 1 1757 0
	movw r30,r10
	ldd r24,Z+19
	ldd r25,Z+20
	ldd r26,Z+21
	ldd r27,Z+22
	cp r4,r24
	cpc r5,r25
	cpc r6,r26
	cpc r7,r27
	brlo .L174
	.loc 1 1759 0
	or r16,r17
	brne .L175
	.loc 1 1760 0
	std Y+22,__zero_reg__
	std Y+23,__zero_reg__
	std Y+24,__zero_reg__
	std Y+25,__zero_reg__
	ldi r24,lo8(4)
	rjmp .L171
.L175:
	.loc 1 1762 0
	ldd r20,Y+18
	ldd r21,Y+19
	ldd r22,Y+20
	ldd r23,Y+21
	movw r24,r28
	call create_chain
.LVL350:
	movw r4,r22
	movw r6,r24
.LVL351:
	.loc 1 1763 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L179
	.loc 1 1764 0
	cpi r22,1
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L180
	.loc 1 1765 0
	cpi r22,-1
	ldi r18,-1
	cpc r23,r18
	cpc r24,r18
	cpc r25,r18
	breq .L181
	.loc 1 1766 0
	movw r20,r22
	movw r22,r24
	movw r24,r10
	call dir_clear
.LVL352:
	cpse r24,__zero_reg__
	rjmp .L182
.L174:
	.loc 1 1773 0
	std Y+18,r4
	std Y+19,r5
	std Y+20,r6
	std Y+21,r7
	.loc 1 1774 0
	movw r22,r6
	movw r20,r4
	movw r24,r10
	call clst2sect
.LVL353:
	std Y+22,r22
	std Y+23,r23
	std Y+24,r24
	std Y+25,r25
.LVL354:
.L172:
	.loc 1 1778 0
	std Y+14,r12
	std Y+15,r13
	std Y+16,r14
	std Y+17,r15
	.loc 1 1779 0
	ldi r24,47
	add r10,r24
	adc r11,__zero_reg__
	ldi r30,1
	and r13,r30
.LVL355:
	add r12,r10
	adc r13,r11
	std Y+26,r12
	std Y+27,r13
	.loc 1 1781 0
	ldi r24,0
	rjmp .L171
.LVL356:
.L176:
	.loc 1 1742 0
	ldi r24,lo8(4)
.LVL357:
	rjmp .L171
.LVL358:
.L177:
	.loc 1 1755 0
	ldi r24,lo8(2)
	rjmp .L171
.L178:
	.loc 1 1756 0
	ldi r24,lo8(1)
	rjmp .L171
.L179:
	.loc 1 1763 0
	ldi r24,lo8(7)
	rjmp .L171
.L180:
	.loc 1 1764 0
	ldi r24,lo8(2)
	rjmp .L171
.L181:
	.loc 1 1765 0
	ldi r24,lo8(1)
	rjmp .L171
.L182:
	.loc 1 1766 0
	ldi r24,lo8(1)
.LVL359:
.L171:
/* epilogue start */
	.loc 1 1782 0
	pop r29
	pop r28
	pop r17
	pop r16
.LVL360:
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.cfi_endproc
.LFE20:
	.size	dir_next, .-dir_next
	.section	.text.dir_register,code
	.type	dir_register, @function
dir_register:
.LFB26:
	.loc 1 2496 0
	.cfi_startproc
.LVL361:
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
	movw r16,r24
	.loc 1 2498 0
	movw r26,r24
	ld r14,X+
	ld r15,X
.LVL362:
.LBB44:
.LBB45:
	.loc 1 1802 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	call dir_sdi
.LVL363:
	mov r28,r24
.LVL364:
	.loc 1 1803 0
	cpse r24,__zero_reg__
	rjmp .L184
.L189:
.LVL365:
	.loc 1 1806 0
	movw r30,r16
	ldd r20,Z+22
	ldd r21,Z+23
	ldd r22,Z+24
	ldd r23,Z+25
	movw r24,r14
.LVL366:
	call move_window
.LVL367:
	mov r28,r24
.LVL368:
	.loc 1 1807 0
	cpse r24,__zero_reg__
	rjmp .L184
	.loc 1 1811 0
	movw r26,r16
	adiw r26,26
	ld r30,X+
	ld r31,X
	sbiw r26,26+1
	ld r24,Z
.LVL369:
	cpi r24,lo8(-27)
	breq .L185
	tst r24
	breq .L185
	.loc 1 1817 0
	ldi r22,lo8(1)
	ldi r23,0
	movw r24,r16
	call dir_next
.LVL370:
	mov r28,r24
.LVL371:
	.loc 1 1818 0
	tst r24
	breq .L189
.LVL372:
.L184:
	.loc 1 1821 0
	cpi r28,lo8(4)
	breq .L188
.LVL373:
.LBE45:
.LBE44:
	.loc 1 2575 0
	cpse r28,__zero_reg__
	rjmp .L187
.L185:
	.loc 1 2576 0
	movw r30,r16
	ldd r20,Z+22
	ldd r21,Z+23
	ldd r22,Z+24
	ldd r23,Z+25
	movw r24,r14
	call move_window
.LVL374:
	mov r28,r24
.LVL375:
	.loc 1 2577 0
	cpse r24,__zero_reg__
	rjmp .L187
	.loc 1 2578 0
	ldi r20,lo8(32)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	movw r26,r16
	adiw r26,26
	ld r24,X+
	ld r25,X
	sbiw r26,26+1
.LVL376:
	call mem_set
.LVL377:
	.loc 1 2579 0
	movw r20,r16
	subi r20,-28
	sbci r21,-1
	ldi r22,lo8(-128)
	ldi r18,lo8(11)
	ldi r19,0
	movw r30,r16
	ldd r24,Z+26
	ldd r25,Z+27
	call mem_cpy
.LVL378:
	.loc 1 2583 0
	ldi r24,lo8(1)
	movw r26,r14
	adiw r26,3
	st X,r24
	rjmp .L187
.LVL379:
.L188:
.LBB47:
.LBB46:
	.loc 1 1821 0
	ldi r28,lo8(7)
.LVL380:
.L187:
.LBE46:
.LBE47:
	.loc 1 2588 0
	mov r24,r28
/* epilogue start */
	pop r28
.LVL381:
	pop r17
	pop r16
.LVL382:
	pop r15
	pop r14
.LVL383:
	ret
	.cfi_endproc
.LFE26:
	.size	dir_register, .-dir_register
	.section	.text.dir_read,code
	.type	dir_read, @function
dir_read:
.LFB24:
	.loc 1 2338 0
	.cfi_startproc
.LVL384:
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
	push r29
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
	movw r14,r22
.LVL385:
	.loc 1 2340 0
	ld r16,Y
	ldd r17,Y+1
.LVL386:
	.loc 1 2339 0
	ldi r24,lo8(4)
.LVL387:
	.loc 1 2346 0
	rjmp .L192
.LVL388:
.L197:
	.loc 1 2347 0
	movw r24,r16
.LVL389:
	call move_window
.LVL390:
	.loc 1 2348 0
	cpse r24,__zero_reg__
	rjmp .L198
	.loc 1 2349 0
	ldd r30,Y+26
	ldd r31,Y+27
	ld r18,Z
.LVL391:
	.loc 1 2350 0
	tst r18
	breq .L199
	.loc 1 2370 0
	ldd r25,Z+11
	andi r25,lo8(63)
.LVL392:
	std Y+4,r25
	.loc 1 2391 0
	cpi r18,lo8(-27)
	breq .L194
	.loc 1 2391 0 is_stmt 0 discriminator 1
	cpi r18,lo8(46)
	breq .L194
	.loc 1 2391 0 discriminator 2
	cpi r25,lo8(15)
	breq .L194
	.loc 1 2391 0 discriminator 3
	andi r25,lo8(31)
.LVL393:
	ldi r18,lo8(1)
	ldi r19,0
.LVL394:
	cpi r25,lo8(8)
	breq .L196
	ldi r18,0
	ldi r19,0
.L196:
	cp r18,r14
	cpc r19,r15
	breq .L200
.L194:
	.loc 1 2396 0 is_stmt 1
	ldi r22,0
	ldi r23,0
	movw r24,r28
.LVL395:
	call dir_next
.LVL396:
	.loc 1 2397 0
	cpse r24,__zero_reg__
	rjmp .L198
.LVL397:
.L192:
	.loc 1 2346 0
	ldd r20,Y+22
	ldd r21,Y+23
	ldd r22,Y+24
	ldd r23,Y+25
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L197
	.loc 1 2400 0
	tst r24
	breq .L200
.LVL398:
.L198:
	.loc 1 2400 0 is_stmt 0 discriminator 1
	std Y+22,__zero_reg__
	std Y+23,__zero_reg__
	std Y+24,__zero_reg__
	std Y+25,__zero_reg__
	.loc 1 2401 0 is_stmt 1 discriminator 1
	rjmp .L200
.LVL399:
.L199:
	.loc 1 2351 0
	ldi r24,lo8(4)
.LVL400:
	rjmp .L198
.LVL401:
.L200:
/* epilogue start */
	.loc 1 2402 0
	pop r29
	pop r28
.LVL402:
	pop r17
	pop r16
.LVL403:
	pop r15
	pop r14
.LVL404:
	ret
	.cfi_endproc
.LFE24:
	.size	dir_read, .-dir_read
	.section	.progmemx.data,progmemx
.LC0:
	.string	"FAT32"
	.section	.text.check_fs,code
	.type	check_fs, @function
check_fs:
.LFB34:
	.loc 1 3189 0
	.cfi_startproc
.LVL405:
	push r6
	.cfi_def_cfa_offset 4
	.cfi_offset 6, -3
	push r7
	.cfi_def_cfa_offset 5
	.cfi_offset 7, -4
	push r8
	.cfi_def_cfa_offset 6
	.cfi_offset 8, -5
	push r12
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
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
	movw r28,r24
	.loc 1 3190 0
	std Y+3,__zero_reg__
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	movw r26,r24
.LVL406:
	std Y+43,r24
	std Y+44,r25
	std Y+45,r26
	std Y+46,r27
	.loc 1 3191 0
	movw r24,r28
	call move_window
.LVL407:
	cpse r24,__zero_reg__
	rjmp .L208
	.loc 1 3193 0
	movw r18,r28
	subi r18,-45
	sbci r19,-3
	ldi r20,lo8(-128)
.LVL408:
.LBB54:
.LBB55:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL409:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL410:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL411:
.LBE55:
.LBE54:
	.loc 1 3193 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	or r24,r22
	cpi r24,85
	sbci r25,-86
	breq .+2
	rjmp .L209
	.loc 1 3198 0
	ldd r24,Y+47
	cpi r24,lo8(-21)
	breq .L203
	.loc 1 3198 0 is_stmt 0 discriminator 2
	subi r24,lo8(-(24))
	cpi r24,lo8(2)
	brlo .+2
	rjmp .L210
.L203:
	.loc 1 3199 0 is_stmt 1
	movw r24,r28
	subi r24,-101
	sbci r25,-1
	ldi r26,lo8(-128)
.LVL412:
.LBB56:
.LBB57:
	.loc 1 686 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	cpi r22,lo8(70)
	brne .L204
.LVL413:
	.loc 1 685 0
	movw r18,r24
	mov r20,r26
	subi r18,-1
	sbci r19,-1
	sbci r20,-1
.LVL414:
	.loc 1 686 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	cpi r22,lo8(65)
	brne .L204
.LVL415:
	.loc 1 685 0
	adiw r24,2
	adc r26,__zero_reg__
.LBE57:
.LBE56:
	.loc 1 3199 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	cpi r22,lo8(84)
	brne .+2
	rjmp .L211
.LVL416:
.L204:
	.loc 1 3200 0
	subi r28,127
	sbci r29,-1
.LVL417:
	movw r24,r28
	ldi r26,lo8(-128)
.LVL418:
.LBB58:
.LBB59:
	.loc 1 685 0
	movw r30,r28
	mov r21,r26
	call __xload_1
	ldi r23,0
	subi r22,70
	sbc r23,__zero_reg__
.LVL419:
	movw r12,r24
	mov r14,r26
	ldi r20,-1
	sub r12,r20
	sbc r13,r20
	sbc r14,r20
	mov __tmp_reg__,r31
	ldi r31,lo8(.LC0+1)
	mov r6,r31
	ldi r31,hi8(.LC0+1)
	mov r7,r31
	ldi r31,hlo8(.LC0+1)
	mov r8,r31
	mov r31,__tmp_reg__
.LVL420:
	adiw r24,5
	adc r26,__zero_reg__
.LVL421:
	rjmp .L205
.LVL422:
.L207:
	movw r30,r12
	mov r21,r14
	call __xload_1
.LVL423:
	mov r18,r22
	ldi r19,0
	movw r30,r6
	mov r21,r8
	call __xload_1
	movw r20,r18
	sub r20,r22
	sbc r21,__zero_reg__
	movw r22,r20
.LVL424:
	ldi r21,-1
	sub r12,r21
	sbc r13,r21
	sbc r14,r21
.LVL425:
	ldi r18,-1
	sub r6,r18
	sbc r7,r18
	sbc r8,r18
	.loc 1 686 0
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	breq .L206
.LVL426:
.L205:
	or r22,r23
	breq .L207
.LBE59:
.LBE58:
	.loc 1 3202 0
	ldi r24,lo8(2)
.LVL427:
	rjmp .L202
.LVL428:
.L206:
	.loc 1 3200 0
	or r22,r23
	breq .L212
	.loc 1 3202 0
	ldi r24,lo8(2)
.LVL429:
	rjmp .L202
.LVL430:
.L208:
	.loc 1 3191 0
	ldi r24,lo8(4)
	rjmp .L202
.L209:
	.loc 1 3193 0
	ldi r24,lo8(3)
	rjmp .L202
.L210:
	.loc 1 3202 0
	ldi r24,lo8(2)
	rjmp .L202
.LVL431:
.L211:
	.loc 1 3199 0
	ldi r24,0
	rjmp .L202
.LVL432:
.L212:
	.loc 1 3200 0
	ldi r24,0
.LVL433:
.L202:
/* epilogue start */
	.loc 1 3203 0
	pop r29
	pop r28
	pop r14
	pop r13
	pop r12
	pop r8
	pop r7
	pop r6
	ret
	.cfi_endproc
.LFE34:
	.size	check_fs, .-check_fs
	.section	.text.find_volume,code
	.type	find_volume, @function
find_volume:
.LFB35:
	.loc 1 3217 0
	.cfi_startproc
.LVL434:
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
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,30
	.cfi_def_cfa_offset 51
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 30 */
/* stack size = 48 */
.L__stack_usage = 48
	movw r12,r22
	mov r11,r20
	.loc 1 3228 0
	movw r26,r22
	st X+,__zero_reg__
	st X,__zero_reg__
	.loc 1 3229 0
	call get_ldnumber
.LVL435:
	movw r14,r24
.LVL436:
	.loc 1 3230 0
	tst r25
	brge .+2
	rjmp .L236
	.loc 1 3233 0
	movw r30,r24
	lsl r30
	rol r31
	subi r30,lo8(-(FatFs))
	sbci r31,hi8(-(FatFs))
	ld r16,Z
	ldd r17,Z+1
.LVL437:
	.loc 1 3234 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .+2
	rjmp .L237
	.loc 1 3238 0
	movw r30,r12
	st Z,r16
	std Z+1,r17
	.loc 1 3240 0
	mov r31,r11
	andi r31,lo8(-2)
	mov r11,r31
.LVL438:
	.loc 1 3241 0
	movw r26,r16
	ld r24,X
	tst r24
	breq .L215
	.loc 1 3242 0
	adiw r26,1
	ld r24,X
	call disk_status
.LVL439:
	.loc 1 3243 0
	sbrc r24,0
	rjmp .L215
	.loc 1 3244 0
	tst r11
	brne .+2
	rjmp .L238
	.loc 1 3244 0 is_stmt 0 discriminator 1
	sbrs r24,2
	rjmp .L239
	.loc 1 3245 0 is_stmt 1
	ldi r24,lo8(10)
.LVL440:
	rjmp .L265
.L215:
	.loc 1 3254 0
	movw r30,r16
	st Z,__zero_reg__
	.loc 1 3255 0
	std Z+1,r14
	.loc 1 3256 0
	mov r24,r14
	call disk_initialize
.LVL441:
	.loc 1 3257 0
	sbrc r24,0
	rjmp .L240
	.loc 1 3260 0
	tst r11
	brne .+2
	rjmp .L216
	.loc 1 3260 0 is_stmt 0 discriminator 1
	sbrc r24,2
	rjmp .L241
	rjmp .L216
.LVL442:
.L218:
	.loc 1 3274 0 is_stmt 1
	movw r30,r14
	sbiw r30,4
	ld r24,Z
	tst r24
	breq .L242
	.loc 1 3274 0 is_stmt 0 discriminator 1
	movw r22,r14
	ldi r24,lo8(-128)
	call ld_dword
.LVL443:
	rjmp .L217
.L242:
	.loc 1 3274 0
	ldi r22,0
	ldi r23,0
	movw r24,r22
.L217:
	.loc 1 3274 0 discriminator 4
	movw r26,r12
	st X+,r22
	st X+,r23
	st X+,r24
	st X+,r25
	movw r12,r26
.LVL444:
	ldi r27,16
	add r14,r27
	adc r15,__zero_reg__
.LVL445:
	.loc 1 3272 0 is_stmt 1 discriminator 4
	cp r14,r8
	cpc r15,r9
	brne .L218
	movw r8,r28
	ldi r30,17
	add r8,r30
	adc r9,__zero_reg__
.LVL446:
.L221:
	.loc 1 3279 0
	movw r26,r10
	ld r12,X+
	ld r13,X+
	ld r14,X+
	ld r15,X+
	movw r10,r26
.LVL447:
	.loc 1 3280 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L243
	.loc 1 3280 0 is_stmt 0 discriminator 1
	movw r22,r14
	movw r20,r12
	movw r24,r16
	call check_fs
.LVL448:
	.loc 1 3281 0 is_stmt 1 discriminator 1
	cpi r24,lo8(2)
	brsh .L219
	rjmp .L220
.LVL449:
.L243:
	.loc 1 3280 0
	ldi r24,lo8(3)
.L219:
.LVL450:
	.loc 1 3281 0 discriminator 1
	cp r10,r8
	cpc r11,r9
	brne .L221
	rjmp .L232
.LVL451:
.L260:
	.loc 1 3269 0
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.LVL452:
.L232:
	.loc 1 3283 0
	cpi r24,lo8(4)
	brne .+2
	rjmp .L244
	.loc 1 3284 0
	cpi r24,lo8(2)
	brlo .+2
	rjmp .L245
.L233:
	.loc 1 3352 0
	movw r18,r16
	subi r18,-58
	sbci r19,-1
	ldi r20,lo8(-128)
.LVL453:
.LBB76:
.LBB77:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
.LVL454:
	adiw r24,1
	adc r26,__zero_reg__
.LVL455:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL456:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL457:
.LBE77:
.LBE76:
	.loc 1 3352 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	or r24,r22
	cp r24,__zero_reg__
	sbci r25,2
	breq .+2
	rjmp .L246
	.loc 1 3354 0
	movw r24,r16
	subi r24,-69
	sbci r25,-1
	ldi r26,lo8(-128)
.LVL458:
.LBB78:
.LBB79:
	.loc 1 584 0
	movw r18,r24
	mov r20,r26
	subi r18,-1
	sbci r19,-1
	sbci r20,-1
.LVL459:
	.loc 1 585 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	mov r4,r22
	mov r5,__zero_reg__
	mov r5,r4
	clr r4
.LVL460:
.LBE79:
.LBE78:
	.loc 1 3354 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	or r4,r22
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.LVL461:
	.loc 1 3355 0
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .L222
	.loc 1 3355 0 is_stmt 0 discriminator 1
	movw r22,r16
	subi r22,-83
	sbci r23,-1
	ldi r24,lo8(-128)
	call ld_dword
.LVL462:
	movw r4,r22
	movw r6,r24
.LVL463:
.L222:
	.loc 1 3356 0 is_stmt 1
	movw r30,r16
	std Z+23,r4
	std Z+24,r5
	std Z+25,r6
	std Z+26,r7
	.loc 1 3358 0
	ldd r31,Z+63
	std Y+17,r31
	movw r26,r16
	adiw r26,2
	st X,r31
	sbiw r26,2
	.loc 1 3359 0
	mov r24,r31
	subi r24,lo8(-(-1))
	cpi r24,lo8(2)
	brlo .+2
	rjmp .L247
.LVL464:
	.loc 1 3362 0
	adiw r26,60
	ld r31,X
	sbiw r26,60
.LVL465:
	std Y+30,r31
	mov r24,r31
	ldi r25,0
	adiw r26,9
	st X+,r24
	st X,r25
	sbiw r26,9+1
	.loc 1 3363 0
	sbiw r24,0
	brne .+2
	rjmp .L248
	.loc 1 3363 0 is_stmt 0 discriminator 2
	movw r18,r24
	subi r18,1
	sbc r19,__zero_reg__
	and r24,r18
	and r25,r19
	or r24,r25
	breq .+2
	rjmp .L249
	.loc 1 3365 0 is_stmt 1
	movw r18,r16
	subi r18,-64
	sbci r19,-1
	ldi r20,lo8(-128)
.LVL466:
.LBB80:
.LBB81:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL467:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL468:
	ldi r25,0
	mov r25,r24
	clr r24
	movw r30,r18
	mov r21,r20
	call __xload_1
	movw r2,r24
	or r2,r22
.LVL469:
.LBE81:
.LBE80:
	.loc 1 3365 0
	movw r26,r16
	adiw r26,7
	st X+,r2
	st X,r3
	sbiw r26,7+1
	.loc 1 3366 0
	movw r24,r2
	andi r24,15
	clr r25
	or r24,r25
	breq .+2
	rjmp .L250
	.loc 1 3368 0
	movw r24,r16
	subi r24,-66
	sbci r25,-1
	ldi r26,lo8(-128)
.LVL470:
.LBB82:
.LBB83:
	.loc 1 584 0
	movw r18,r24
	mov r20,r26
	subi r18,-1
	sbci r19,-1
	sbci r20,-1
.LVL471:
	.loc 1 585 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	mov r8,r22
	mov r9,__zero_reg__
	mov r9,r8
	clr r8
.LVL472:
.LBE83:
.LBE82:
	.loc 1 3368 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	or r8,r22
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.LVL473:
	.loc 1 3369 0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .L223
	.loc 1 3369 0 is_stmt 0 discriminator 1
	movw r22,r16
	subi r22,-79
	sbci r23,-1
	ldi r24,lo8(-128)
	call ld_dword
.LVL474:
	movw r8,r22
	movw r10,r24
.LVL475:
.L223:
	.loc 1 3371 0 is_stmt 1
	movw r18,r16
	subi r18,-61
	sbci r19,-1
	ldi r20,lo8(-128)
.LVL476:
.LBB84:
.LBB85:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL477:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL478:
	ldi r25,0
	mov r25,r24
	clr r24
	movw r30,r18
	mov r21,r20
	call __xload_1
	movw r30,r24
	or r30,r22
.LVL479:
.LBE85:
.LBE84:
	.loc 1 3372 0
	sbiw r30,0
	brne .+2
	rjmp .L251
	.loc 1 3360 0
	ldd r18,Y+17
	mov r26,r18
	ldi r27,0
	movw r20,r6
	movw r18,r4
	call __muluhisi3
	std Y+26,r22
	std Y+27,r23
	std Y+28,r24
	std Y+29,r25
	.loc 1 3375 0
	movw r24,r30
	ldi r26,0
	ldi r27,0
	std Y+22,r24
	std Y+23,r25
	std Y+24,r26
	std Y+25,r27
	movw r24,r2
	swap r25
	swap r24
	andi r24,0x0f
	eor r24,r25
	andi r25,0x0f
	eor r24,r25
	ldd r18,Y+22
	ldd r19,Y+23
	ldd r20,Y+24
	ldd r21,Y+25
	add r18,r24
	adc r19,r25
	adc r20,__zero_reg__
	adc r21,__zero_reg__
	movw r26,r20
	movw r24,r18
	ldd r18,Y+26
	ldd r19,Y+27
	ldd r20,Y+28
	ldd r21,Y+29
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	std Y+18,r18
	std Y+19,r19
	std Y+20,r20
	std Y+21,r21
.LVL480:
	.loc 1 3376 0
	cp r8,r18
	cpc r9,r19
	cpc r10,r20
	cpc r11,r21
	brsh .+2
	rjmp .L252
	.loc 1 3377 0
	movw r24,r10
	movw r22,r8
	sub r22,r18
	sbc r23,r19
	sbc r24,r20
	sbc r25,r21
	ldd r26,Y+30
	mov r18,r26
.LVL481:
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	movw r26,r20
	movw r24,r18
.LVL482:
	.loc 1 3378 0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .+2
	rjmp .L253
.LVL483:
	.loc 1 3380 0
	cpi r18,-10
	ldi r30,-1
	cpc r19,r30
	cpc r20,r30
	ldi r30,15
	cpc r21,r30
	brsh .L254
	ldi r31,lo8(3)
	std Y+17,r31
.LVL484:
	rjmp .L224
.LVL485:
.L254:
	.loc 1 3379 0
	std Y+17,__zero_reg__
.LVL486:
.L224:
	.loc 1 3381 0
	cpi r24,-10
	ldi r22,-1
	cpc r25,r22
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brsh .L225
	ldi r30,lo8(2)
	std Y+17,r30
.LVL487:
.L225:
	.loc 1 3382 0
	cpi r24,-10
	sbci r25,15
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brsh .+2
	rjmp .L226
	.loc 1 3383 0
	ldd r22,Y+17
	tst r22
	brne .+2
	rjmp .L255
	.loc 1 3386 0
	movw r8,r18
	movw r10,r20
.LVL488:
	ldi r24,2
	add r8,r24
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	movw r26,r16
	adiw r26,19
	st X+,r8
	st X+,r9
	st X+,r10
	st X,r11
	sbiw r26,19+3
	.loc 1 3387 0
	movw r30,r16
	std Z+27,r12
	std Z+28,r13
	std Z+29,r14
	std Z+30,r15
	.loc 1 3388 0
	ldd r24,Y+22
	ldd r25,Y+23
	ldd r26,Y+24
	ldd r27,Y+25
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	std Z+31,r24
	std Z+32,r25
	std Z+33,r26
	std Z+34,r27
	.loc 1 3389 0
	ldd r20,Y+18
	ldd r21,Y+19
	ldd r22,Y+20
	ldd r23,Y+21
	add r20,r12
	adc r21,r13
	adc r22,r14
	adc r23,r15
	std Z+39,r20
	std Z+40,r21
	std Z+41,r22
	std Z+42,r23
	.loc 1 3390 0
	ldd r31,Y+17
	cpi r31,lo8(3)
	breq .+2
	rjmp .L227
	.loc 1 3391 0
	movw r18,r16
.LVL489:
	subi r18,-89
	sbci r19,-1
	ldi r20,lo8(-128)
.LVL490:
.LBB86:
.LBB87:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL491:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL492:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL493:
.LBE87:
.LBE86:
	.loc 1 3391 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	or r24,r22
	or r24,r25
	breq .+2
	rjmp .L256
	.loc 1 3392 0
	or r2,r3
	breq .+2
	rjmp .L257
	.loc 1 3393 0
	movw r22,r16
	subi r22,-91
	sbci r23,-1
	ldi r24,lo8(-128)
	call ld_dword
.LVL494:
	movw r26,r16
	adiw r26,35
	st X+,r22
	st X+,r23
	st X+,r24
	st X,r25
	sbiw r26,35+3
.LVL495:
	.loc 1 3401 0
	lsl r8
	rol r9
	rol r10
	rol r11
	lsl r8
	rol r9
	rol r10
	rol r11
.LVL496:
	ldi r27,-1
	add r8,r27
	ldi r27,1
	adc r9,r27
	adc r10,__zero_reg__
	adc r11,__zero_reg__
.LVL497:
	mov r0,r23
	ldi r23,9
	1:
	lsr r11
	ror r10
	ror r9
	ror r8
	dec r23
	brne 1b
	mov r23,r0
.LVL498:
	cp r4,r8
	cpc r5,r9
	cpc r6,r10
	cpc r7,r11
	brsh .+2
	rjmp .L258
	rjmp .L266
.LVL499:
.L227:
	.loc 1 3396 0
	or r2,r3
	brne .+2
	rjmp .L259
	.loc 1 3397 0
	ldd r18,Y+26
	ldd r19,Y+27
	ldd r20,Y+28
	ldd r21,Y+29
	add r24,r18
	adc r25,r19
	adc r26,r20
	adc r27,r21
	movw r30,r16
	std Z+35,r24
	std Z+36,r25
	std Z+37,r26
	std Z+38,r27
	.loc 1 3399 0
	ldd r31,Y+17
	cpi r31,lo8(2)
	brne .L229
	.loc 1 3399 0 is_stmt 0 discriminator 1
	lsl r8
	rol r9
	rol r10
	rol r11
	rjmp .L230
.L229:
	.loc 1 3399 0 discriminator 2
	ldi r26,lo8(3)
	ldi r27,0
	movw r20,r10
	movw r18,r8
	call __muluhisi3
	movw r26,r24
	movw r24,r22
	lsr r27
	ror r26
	ror r25
	ror r24
	ldi r18,1
	and r8,r18
	clr r9
	clr r10
	clr r11
	add r8,r24
	adc r9,r25
	adc r10,r26
	adc r11,r27
	rjmp .L230
.LVL500:
.L235:
	.loc 1 3410 0 is_stmt 1
	movw r22,r14
	movw r20,r12
	subi r20,-1
	sbci r21,-1
	sbci r22,-1
	sbci r23,-1
	movw r24,r16
	call move_window
.LVL501:
	cpse r24,__zero_reg__
	rjmp .L231
	.loc 1 3412 0
	movw r26,r16
	adiw r26,4
	st X,__zero_reg__
	.loc 1 3413 0
	movw r18,r16
	subi r18,-45
	sbci r19,-3
	ldi r20,lo8(-128)
.LVL502:
.LBB88:
.LBB89:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL503:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL504:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL505:
.LBE89:
.LBE88:
	.loc 1 3413 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	or r24,r22
	cpi r24,85
	sbci r25,-86
	brne .L231
	.loc 1 3414 0
	movw r22,r16
	subi r22,-47
	sbci r23,-1
	ldi r24,lo8(-128)
	call ld_dword
.LVL506:
	cpi r22,82
	sbci r23,82
	sbci r24,97
	sbci r25,65
	brne .L231
	.loc 1 3415 0
	movw r22,r16
	subi r22,-19
	sbci r23,-3
	ldi r24,lo8(-128)
	call ld_dword
.LVL507:
	cpi r22,114
	sbci r23,114
	sbci r24,65
	sbci r25,97
	brne .L231
	.loc 1 3418 0
	movw r22,r16
	subi r22,-23
	sbci r23,-3
	ldi r24,lo8(-128)
	call ld_dword
.LVL508:
	movw r26,r16
	adiw r26,15
	st X+,r22
	st X+,r23
	st X+,r24
	st X,r25
	sbiw r26,15+3
	.loc 1 3421 0
	movw r22,r16
	subi r22,-27
	sbci r23,-3
	ldi r24,lo8(-128)
	call ld_dword
.LVL509:
	movw r30,r16
	std Z+11,r22
	std Z+12,r23
	std Z+13,r24
	std Z+14,r25
.LVL510:
.L231:
	.loc 1 3429 0
	ldd r30,Y+17
	movw r26,r16
	st X,r30
	.loc 1 3430 0
	lds r24,Fsid
	lds r25,Fsid+1
	adiw r24,1
	sts Fsid,r24
	sts Fsid+1,r25
	adiw r26,5
	st X+,r24
	st X,r25
	sbiw r26,5+1
	.loc 1 3443 0
	ldi r24,0
	rjmp .L265
.LVL511:
.L236:
	.loc 1 3230 0
	ldi r24,lo8(11)
	rjmp .L265
.LVL512:
.L237:
	.loc 1 3234 0
	ldi r24,lo8(12)
	rjmp .L265
.LVL513:
.L238:
	.loc 1 3247 0
	ldi r24,0
.LVL514:
	rjmp .L265
.LVL515:
.L239:
	ldi r24,0
.LVL516:
	rjmp .L265
.LVL517:
.L240:
	.loc 1 3258 0
	ldi r24,lo8(3)
.LVL518:
	rjmp .L265
.LVL519:
.L241:
	.loc 1 3261 0
	ldi r24,lo8(10)
.LVL520:
	rjmp .L265
.LVL521:
.L244:
	.loc 1 3283 0
	ldi r24,lo8(1)
.LVL522:
	rjmp .L265
.LVL523:
.L245:
	.loc 1 3284 0
	ldi r24,lo8(13)
.LVL524:
	rjmp .L265
.L246:
	.loc 1 3352 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL525:
.L247:
	.loc 1 3359 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL526:
.L248:
	.loc 1 3363 0
	ldi r24,lo8(13)
	rjmp .L265
.L249:
	ldi r24,lo8(13)
	rjmp .L265
.L250:
	.loc 1 3366 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL527:
.L251:
	.loc 1 3372 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL528:
.L252:
	.loc 1 3376 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL529:
.L253:
	.loc 1 3378 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL530:
.L255:
	.loc 1 3383 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL531:
.L256:
	.loc 1 3391 0
	ldi r24,lo8(13)
	rjmp .L265
.L257:
	.loc 1 3392 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL532:
.L258:
	.loc 1 3401 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL533:
.L259:
	.loc 1 3396 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL534:
.L261:
	.loc 1 3283 0
	ldi r24,lo8(1)
.LVL535:
	rjmp .L265
.LVL536:
.L262:
	.loc 1 3401 0
	ldi r24,lo8(13)
	rjmp .L265
.LVL537:
.L216:
	.loc 1 3270 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r16
.LVL538:
	call check_fs
.LVL539:
	.loc 1 3271 0
	cpi r24,lo8(2)
	breq .+2
	rjmp .L260
	movw r18,r28
	subi r18,-1
	sbci r19,-1
	movw r10,r18
	movw r14,r16
.LVL540:
	ldi r19,11
	sub r14,r19
	ldi r19,-2
	sbc r15,r19
	movw r8,r16
	ldi r20,-53
	sub r8,r20
	ldi r20,-3
	sbc r9,r20
	movw r12,r10
.LVL541:
	rjmp .L218
.LVL542:
.L220:
	.loc 1 3283 0
	cpi r24,lo8(4)
	breq .+2
	rjmp .L233
	rjmp .L261
.LVL543:
.L267:
	.loc 1 3405 0
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	movw r26,r24
	movw r30,r16
	std Z+15,r24
	std Z+16,r25
	std Z+17,r26
	std Z+18,r27
	std Z+11,r24
	std Z+12,r25
	std Z+13,r26
	std Z+14,r27
	.loc 1 3406 0
	ldi r24,lo8(-128)
	std Z+4,r24
	rjmp .L231
.LVL544:
.L230:
	.loc 1 3401 0
	ldi r31,-1
	add r8,r31
	ldi r31,1
	adc r9,r31
	adc r10,__zero_reg__
	adc r11,__zero_reg__
.LVL545:
	mov r0,r23
	ldi r23,9
	1:
	lsr r11
	ror r10
	ror r9
	ror r8
	dec r23
	brne 1b
	mov r23,r0
.LVL546:
	cp r4,r8
	cpc r5,r9
	cpc r6,r10
	cpc r7,r11
	brsh .+2
	rjmp .L262
	rjmp .L267
.LVL547:
.L266:
	.loc 1 3405 0
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	movw r26,r24
	movw r30,r16
	std Z+15,r24
	std Z+16,r25
	std Z+17,r26
	std Z+18,r27
	std Z+11,r24
	std Z+12,r25
	std Z+13,r26
	std Z+14,r27
	.loc 1 3406 0
	ldi r24,lo8(-128)
	std Z+4,r24
	.loc 1 3409 0
	movw r18,r16
	subi r18,-95
	sbci r19,-1
	ldi r20,lo8(-128)
.LVL548:
.LBB90:
.LBB91:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL549:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL550:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL551:
.LBE91:
.LBE90:
	.loc 1 3409 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	or r24,r22
	sbiw r24,1
	breq .+2
	rjmp .L231
	rjmp .L235
.LVL552:
.L226:
	.loc 1 3386 0
	movw r8,r18
	movw r10,r20
.LVL553:
	ldi r31,2
	add r8,r31
	adc r9,__zero_reg__
	adc r10,__zero_reg__
	adc r11,__zero_reg__
	movw r26,r16
	adiw r26,19
	st X+,r8
	st X+,r9
	st X+,r10
	st X,r11
	sbiw r26,19+3
	.loc 1 3387 0
	movw r30,r16
	std Z+27,r12
	std Z+28,r13
	std Z+29,r14
	std Z+30,r15
	.loc 1 3388 0
	ldd r24,Y+22
	ldd r25,Y+23
	ldd r26,Y+24
	ldd r27,Y+25
	add r24,r12
	adc r25,r13
	adc r26,r14
	adc r27,r15
	std Z+31,r24
	std Z+32,r25
	std Z+33,r26
	std Z+34,r27
	.loc 1 3389 0
	ldd r18,Y+18
	ldd r19,Y+19
	ldd r20,Y+20
	ldd r21,Y+21
.LVL554:
	add r12,r18
	adc r13,r19
	adc r14,r20
	adc r15,r21
.LVL555:
	std Z+39,r12
	std Z+40,r13
	std Z+41,r14
	std Z+42,r15
	.loc 1 3382 0
	ldi r31,lo8(1)
	std Y+17,r31
	rjmp .L227
.LVL556:
.L265:
/* epilogue start */
	.loc 1 3444 0
	adiw r28,30
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
.LVL557:
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
.LFE35:
	.size	find_volume, .-find_volume
	.section	.text.get_fileinfo,code
	.type	get_fileinfo, @function
get_fileinfo:
.LFB28:
	.loc 1 2649 0
	.cfi_startproc
.LVL558:
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
	movw r28,r24
	.loc 1 2659 0
	movw r30,r22
	std Z+9,__zero_reg__
	.loc 1 2660 0
	ldd r24,Y+22
	ldd r25,Y+23
	ldd r26,Y+24
	ldd r27,Y+25
.LVL559:
	or r24,r25
	or r24,r26
	or r24,r27
	brne .+2
	rjmp .L268
	ldi r30,0
	ldi r31,0
	ldi r18,0
	ldi r19,0
	.loc 1 2728 0
	ldi r17,lo8(46)
	.loc 1 2727 0
	ldi r24,lo8(-27)
.L273:
.LVL560:
	.loc 1 2725 0
	movw r20,r18
	subi r20,-1
	sbci r21,-1
.LVL561:
	ldd r26,Y+26
	ldd r27,Y+27
	add r26,r18
	adc r27,r19
	ld r25,X
.LVL562:
	.loc 1 2726 0
	cpi r25,lo8(32)
	breq .L270
	.loc 1 2727 0
	cpi r25,lo8(5)
	brne .L271
	mov r25,r24
.LVL563:
.L271:
	.loc 1 2728 0
	cpi r20,9
	cpc r21,__zero_reg__
	brne .L272
.LVL564:
	.loc 1 2728 0 is_stmt 0 discriminator 1
	movw r26,r22
	add r26,r30
	adc r27,r31
	adiw r26,9
	st X,r17
	adiw r30,1
.LVL565:
.L272:
	.loc 1 2729 0 is_stmt 1
	movw r26,r22
	add r26,r30
	adc r27,r31
	adiw r26,9
	st X,r25
	adiw r30,1
.LVL566:
.L270:
	movw r18,r20
	.loc 1 2724 0
	cpi r20,11
	cpc r21,__zero_reg__
	brne .L273
.LVL567:
	movw r16,r22
	.loc 1 2731 0
	add r30,r22
	adc r31,r23
.LVL568:
	std Z+9,__zero_reg__
	.loc 1 2734 0
	ldd r30,Y+26
	ldd r31,Y+27
	ldd r24,Z+11
	movw r30,r22
	std Z+8,r24
	.loc 1 2735 0
	ldd r22,Y+26
	ldd r23,Y+27
.LVL569:
	subi r22,-28
	sbci r23,-1
	ldi r24,lo8(-128)
	call ld_dword
.LVL570:
	movw r30,r16
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	std Z+3,r25
	.loc 1 2736 0
	ldd r18,Y+26
	ldd r19,Y+27
	subi r18,-22
	sbci r19,-1
	ldi r20,lo8(-128)
.LVL571:
.LBB96:
.LBB97:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL572:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL573:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL574:
.LBE97:
.LBE96:
	.loc 1 2736 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	or r24,r22
	movw r30,r16
	std Z+6,r24
	std Z+7,r25
	.loc 1 2737 0
	ldd r18,Y+26
	ldd r19,Y+27
	subi r18,-24
	sbci r19,-1
	ldi r20,lo8(-128)
.LVL575:
.LBB98:
.LBB99:
	.loc 1 584 0
	mov r26,r20
	movw r24,r18
	adiw r24,1
	adc r26,__zero_reg__
.LVL576:
	.loc 1 585 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL577:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL578:
.LBE99:
.LBE98:
	.loc 1 2737 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	or r24,r22
	movw r30,r16
	std Z+4,r24
	std Z+5,r25
.LVL579:
.L268:
/* epilogue start */
	.loc 1 2738 0
	pop r29
	pop r28
.LVL580:
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE28:
	.size	get_fileinfo, .-get_fileinfo
	.section	.text.ld_clust,code
	.type	ld_clust, @function
ld_clust:
.LFB22:
	.loc 1 1838 0
	.cfi_startproc
.LVL581:
	push r12
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r16
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r12,r20
	mov r14,r22
.LVL582:
.LBB104:
.LBB105:
	.loc 1 584 0
	movw r18,r20
	mov r20,r22
	subi r18,-27
	sbci r19,-1
	sbci r20,-1
.LVL583:
	.loc 1 585 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	mov r16,r22
	ldi r17,0
	mov r17,r16
	clr r16
.LVL584:
	mov r20,r14
	movw r18,r12
	subi r18,-26
	sbci r19,-1
	sbci r20,-1
.LBE105:
.LBE104:
	.loc 1 1841 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	or r16,r22
	ldi r18,0
	ldi r19,0
.LVL585:
	.loc 1 1842 0
	movw r30,r24
	ld r24,Z
.LVL586:
	cpi r24,lo8(3)
	brne .L276
.LVL587:
.LBB106:
.LBB107:
	.loc 1 584 0
	mov r26,r14
	movw r24,r12
	adiw r24,21
	adc r26,__zero_reg__
.LVL588:
	.loc 1 585 0
	movw r30,r24
.LVL589:
	mov r21,r26
	call __xload_1
	mov r24,r22
.LVL590:
	ldi r25,0
	mov r25,r24
	clr r24
.LVL591:
	ldi r31,20
	add r12,r31
	adc r13,__zero_reg__
	adc r14,__zero_reg__
.LBE107:
.LBE106:
	.loc 1 1843 0
	movw r30,r12
	mov r21,r14
	call __xload_1
	or r24,r22
	ldi r26,0
	ldi r27,0
	movw r26,r24
	clr r25
	clr r24
	or r16,r24
	or r17,r25
	or r18,r26
	or r19,r27
.LVL592:
.L276:
	.loc 1 1847 0
	movw r24,r18
	movw r22,r16
/* epilogue start */
	pop r17
	pop r16
.LVL593:
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE22:
	.size	ld_clust, .-ld_clust
	.section	.progmemx.data,progmemx
.LC1:
	.string	"\"*+,:;<=>?[]|\177"
	.section	.text.follow_path,code
	.type	follow_path, @function
follow_path:
.LFB32:
	.loc 1 3028 0
	.cfi_startproc
.LVL594:
	push r2
	.cfi_def_cfa_offset 4
	.cfi_offset 2, -3
	push r3
	.cfi_def_cfa_offset 5
	.cfi_offset 3, -4
	push r4
	.cfi_def_cfa_offset 6
	.cfi_offset 4, -5
	push r6
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r10
	.cfi_def_cfa_offset 10
	.cfi_offset 10, -9
	push r11
	.cfi_def_cfa_offset 11
	.cfi_offset 11, -10
	push r12
	.cfi_def_cfa_offset 12
	.cfi_offset 12, -11
	push r13
	.cfi_def_cfa_offset 13
	.cfi_offset 13, -12
	push r14
	.cfi_def_cfa_offset 14
	.cfi_offset 14, -13
	push r15
	.cfi_def_cfa_offset 15
	.cfi_offset 15, -14
	push r16
	.cfi_def_cfa_offset 16
	.cfi_offset 16, -15
	push r17
	.cfi_def_cfa_offset 17
	.cfi_offset 17, -16
	push r28
	.cfi_def_cfa_offset 18
	.cfi_offset 28, -17
	push r29
	.cfi_def_cfa_offset 19
	.cfi_offset 29, -18
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,9
	.cfi_def_cfa_offset 28
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 9 */
/* stack size = 25 */
.L__stack_usage = 25
	movw r2,r20
	mov r4,r22
	.loc 1 3031 0
	movw r26,r24
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	std Y+6,r26
	std Y+7,r27
.LVL595:
	std Y+8,r24
	std Y+9,r25
	.loc 1 3040 0
	rjmp .L278
.LVL596:
.L279:
	.loc 1 3040 0 is_stmt 0 discriminator 4
	ldi r27,-1
	sub r2,r27
	sbc r3,r27
	sbc r4,r27
.LVL597:
.L278:
	.loc 1 3040 0 discriminator 1
	movw r30,r2
	mov r21,r4
	call __xload_1
	cpi r22,lo8(47)
	breq .L279
	.loc 1 3040 0 discriminator 3
	cpi r22,lo8(92)
	breq .L279
	ldd r18,Y+8
	ldd r19,Y+9
	.loc 1 3041 0 is_stmt 1
	movw r26,r18
.LVL598:
	adiw r26,6
	st X+,__zero_reg__
	st X+,__zero_reg__
	st X+,__zero_reg__
	st X,__zero_reg__
	sbiw r26,6+3
.LVL599:
	.loc 1 3060 0
	movw r30,r2
	mov r21,r4
	call __xload_1
	cpi r22,lo8(32)
	brsh .L280
	.loc 1 3061 0
	ldi r24,lo8(-128)
.LVL600:
	adiw r26,39
	st X,r24
	.loc 1 3062 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r18
	call dir_sdi
.LVL601:
	mov r20,r24
.LVL602:
	rjmp .L314
.LVL603:
.L280:
.LBB120:
.LBB121:
	.loc 1 2959 0
	ldd r30,Y+8
	ldd r31,Y+9
	adiw r30,28
	std Y+4,r30
	std Y+5,r31
	.loc 1 3010 0
	mov __tmp_reg__,r31
	ldi r31,lo8(5)
	mov r15,r31
	mov r31,__tmp_reg__
.LBE121:
.LBE120:
.LBB130:
.LBB131:
	.loc 1 2477 0
	movw r18,r30
	ldi r20,lo8(-128)
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
.LBE131:
.LBE130:
	.loc 1 3096 0
	ldd r10,Y+6
	ldd r11,Y+7
	ldi r21,47
	add r10,r21
	adc r11,__zero_reg__
.LVL604:
.L318:
.LBB135:
.LBB126:
	.loc 1 2960 0
	ldi r20,lo8(11)
	ldi r21,0
	ldi r22,lo8(32)
	ldi r23,0
	ldd r24,Y+4
	ldd r25,Y+5
	call mem_set
.LVL605:
	mov r8,r4
	movw r6,r2
	.loc 1 2961 0
	ldi r26,0
	ldi r27,0
	ldi r24,0
	ldi r25,0
	ldi r18,lo8(8)
	ldi r19,0
	rjmp .L282
.LVL606:
.L292:
	ldi r31,-1
	sub r6,r31
	sbc r7,r31
	sbc r8,r31
.LVL607:
.L282:
	.loc 1 2976 0
	adiw r24,1
.LVL608:
	movw r30,r6
	mov r21,r8
	call __xload_1
	mov r20,r22
.LVL609:
	.loc 1 2977 0
	cpi r22,lo8(33)
	brsh .+2
	rjmp .L320
	.loc 1 2978 0
	cpi r22,lo8(47)
	breq .L284
	cpi r22,lo8(92)
	brne .L285
.L284:
	mov r8,r4
	movw r6,r2
	add r6,r24
	adc r7,r25
	adc r8,__zero_reg__
	sbrc r25,7
	dec r8
	rjmp .L286
.L287:
	.loc 1 2979 0
	adiw r24,1
.LVL610:
	ldi r19,-1
	sub r6,r19
	sbc r7,r19
	sbc r8,r19
.L286:
	movw r30,r6
	mov r21,r8
	call __xload_1
	cpi r22,lo8(47)
	breq .L287
	cpi r22,lo8(92)
	breq .L287
	rjmp .L283
.L285:
	.loc 1 2982 0
	cpi r22,lo8(46)
	brne .+2
	rjmp .L288
	cp r26,r18
	cpc r27,r19
	brlo .+2
	rjmp .L307
	.loc 1 2992 0
	tst r22
	brlt .+2
	rjmp .L289
	.loc 1 2993 0
	andi r20,lo8(127)
.LVL611:
	mov r12,r20
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r22,r14
	movw r20,r12
	subi r20,lo8(-(ExCvt))
	sbci r21,hi8(-(ExCvt))
	sbci r22,hlo8(-(ExCvt))
	movw r12,r20
	mov r14,r22
	movw r30,r20
	mov r21,r14
	call __xload_1
.LVL612:
	mov r20,r22
.LVL613:
	rjmp .L289
.LVL614:
.L312:
.LBB122:
.LBB123:
	.loc 1 695 0
	mov __tmp_reg__,r31
	ldi r31,lo8(.LC1)
	mov r12,r31
	ldi r31,hi8(.LC1)
	mov r13,r31
	ldi r31,hlo8(.LC1)
	mov r14,r31
	mov r31,__tmp_reg__
.LVL615:
.L291:
	ldi r23,-1
	sub r12,r23
	sbc r13,r23
	sbc r14,r23
.LVL616:
	movw r30,r12
	mov r21,r14
	call __xload_1
	tst r22
	brne .+2
	rjmp .L290
	ldi r23,0
	cp r22,r16
	cpc r23,r17
	brne .L291
.LBE123:
.LBE122:
	.loc 1 3002 0
	ldi r20,lo8(6)
	rjmp .L314
.LVL617:
.L303:
	.loc 1 3003 0
	subi r20,lo8(-(-32))
.LVL618:
.L304:
	.loc 1 3004 0
	ldd r30,Y+4
	ldd r31,Y+5
	add r30,r26
	adc r31,r27
	st Z,r20
	adiw r26,1
.LVL619:
	rjmp .L292
.L320:
.L283:
	.loc 1 3007 0
	add r2,r24
	adc r3,r25
	adc r4,__zero_reg__
	sbrc r25,7
	dec r4
.LVL620:
	.loc 1 3008 0
	or r26,r27
	brne .+2
	rjmp .L308
	.loc 1 3010 0
	ldd r26,Y+8
	ldd r27,Y+9
.LVL621:
	adiw r26,28
	ld r24,X
	sbiw r26,28
.LVL622:
	cpi r24,lo8(-27)
	brne .L293
	adiw r26,28
	st X,r15
.L293:
	.loc 1 3011 0
	cpi r20,lo8(33)
	brlo .L309
	ldi r24,0
	rjmp .L294
.L309:
	ldi r24,lo8(4)
.L294:
	ldd r30,Y+8
	ldd r31,Y+9
	std Z+39,r24
.LVL623:
.LBE126:
.LBE135:
.LBB136:
.LBB134:
	.loc 1 2417 0
	ld r16,Z
	ldd r17,Z+1
.LVL624:
	.loc 1 2423 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r30
	call dir_sdi
.LVL625:
	mov r20,r24
.LVL626:
	.loc 1 2424 0
	cpse r24,__zero_reg__
	rjmp .L321
.LVL627:
.L315:
	.loc 1 2450 0
	ldd r26,Y+8
	ldd r27,Y+9
	adiw r26,22
	ld r20,X+
	ld r21,X+
	ld r22,X+
	ld r23,X
	sbiw r26,22+3
	movw r24,r16
.LVL628:
	call move_window
.LVL629:
	.loc 1 2451 0
	cpse r24,__zero_reg__
	rjmp .L322
	.loc 1 2452 0
	ldd r26,Y+8
	ldd r27,Y+9
	adiw r26,26
	ld r30,X+
	ld r31,X
	sbiw r26,26+1
.LVL630:
	.loc 1 2453 0
	ld r25,Z
	tst r25
	brne .+2
	rjmp .L296
	.loc 1 2476 0
	ldd r25,Z+11
	mov r18,r25
	andi r18,lo8(63)
	adiw r26,4
	st X,r18
.LVL631:
	.loc 1 2477 0
	ldd r18,Z+11
	sbrc r18,3
	rjmp .L297
	movw r12,r30
	ldi r27,lo8(-128)
	mov r14,r27
.LVL632:
.LBB132:
.LBB133:
	.loc 1 685 0
	mov r21,r27
	call __xload_1
	mov r18,r22
	ldi r19,0
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r21,Y+3
	call __xload_1
	movw r30,r18
	sub r30,r22
	sbc r31,__zero_reg__
	movw r22,r30
.LVL633:
	mov r20,r14
	movw r18,r12
	subi r18,-1
	sbci r19,-1
	sbci r20,-1
	ldd r6,Y+1
	ldd r7,Y+2
	ldd r8,Y+3
	ldi r31,-1
	sub r6,r31
	sbc r7,r31
	sbc r8,r31
	ldi r21,11
	add r12,r21
	adc r13,__zero_reg__
	adc r14,__zero_reg__
.LVL634:
	rjmp .L298
.LVL635:
.L300:
	movw r30,r18
	mov r21,r20
	call __xload_1
.LVL636:
	mov r26,r22
	ldi r27,0
	movw r30,r6
	mov r21,r8
	call __xload_1
	movw r30,r26
	sub r30,r22
	sbc r31,__zero_reg__
	movw r22,r30
.LVL637:
	subi r18,-1
	sbci r19,-1
	sbci r20,-1
.LVL638:
	ldi r31,-1
	sub r6,r31
	sbc r7,r31
	sbc r8,r31
	.loc 1 686 0
	cp r12,r18
	cpc r13,r19
	cpc r14,r20
	breq .L299
.LVL639:
.L298:
	or r22,r23
	breq .L300
	rjmp .L297
.L299:
.LVL640:
.LBE133:
.LBE132:
	.loc 1 2477 0
	or r22,r23
	brne .+2
	rjmp .L301
.LVL641:
.L297:
	.loc 1 2479 0
	ldi r22,0
	ldi r23,0
	ldd r24,Y+8
	ldd r25,Y+9
.LVL642:
	call dir_next
.LVL643:
	.loc 1 2480 0
	tst r24
	brne .+2
	rjmp .L315
	mov r20,r24
	rjmp .L295
.LVL644:
.L296:
	ldd r24,Y+8
	ldd r25,Y+9
.LVL645:
	movw r26,r24
.LVL646:
.LBE134:
.LBE136:
	.loc 1 3069 0
	adiw r26,39
	ld r24,X
.LVL647:
.L305:
	.loc 1 3077 0
	sbrc r24,2
	rjmp .L310
	ldi r20,lo8(5)
	rjmp .L314
.LVL648:
.L319:
	.loc 1 3084 0
	sbrs r23,4
	rjmp .L311
	.loc 1 3096 0
	ldd r30,Y+8
	ldd r31,Y+9
	ldd r20,Z+14
	ldd r21,Z+15
	andi r21,1
	add r20,r10
	adc r21,r11
	ldi r22,lo8(-128)
	ldd r24,Y+6
	ldd r25,Y+7
.LVL649:
	call ld_clust
.LVL650:
	ldd r26,Y+8
	ldd r27,Y+9
	adiw r26,6
	st X+,r22
	st X+,r23
	st X+,r24
	st X,r25
	sbiw r26,6+3
	.loc 1 3098 0
	rjmp .L318
.LVL651:
.L307:
.LBB137:
.LBB127:
	.loc 1 2982 0
	ldi r20,lo8(6)
.LVL652:
	rjmp .L314
.LVL653:
.L308:
	.loc 1 3008 0
	ldi r20,lo8(6)
.LVL654:
	rjmp .L314
.LVL655:
.L310:
.LBE127:
.LBE137:
	.loc 1 3068 0
	ldi r20,lo8(4)
	rjmp .L314
.LVL656:
.L311:
	.loc 1 3085 0
	ldi r20,lo8(5)
	rjmp .L314
.LVL657:
.L313:
.LBB138:
.LBB128:
	.loc 1 2983 0
	ldi r20,lo8(6)
.LVL658:
	rjmp .L314
.LVL659:
.L289:
	.loc 1 3002 0
	mov r16,r20
	ldi r17,0
.LVL660:
.LBB125:
.LBB124:
	.loc 1 695 0
	cpi r16,34
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L312
.LVL661:
.LBE124:
.LBE125:
	.loc 1 3002 0
	ldi r20,lo8(6)
	rjmp .L314
.LVL662:
.L290:
	.loc 1 3003 0
	ldi r21,lo8(-97)
	add r21,r20
	cpi r21,lo8(26)
	brsh .+2
	rjmp .L303
	rjmp .L304
.LVL663:
.L321:
	rjmp .L295
.LVL664:
.L322:
	mov r20,r24
.LVL665:
.L295:
.LBE128:
.LBE138:
	.loc 1 3069 0
	ldd r26,Y+8
	ldd r27,Y+9
	adiw r26,39
	ld r24,X
.LVL666:
	.loc 1 3071 0
	cpi r20,lo8(4)
	brne .L314
	rjmp .L305
.LVL667:
.L301:
	mov r20,r24
	mov r23,r25
	ldd r30,Y+8
	ldd r31,Y+9
.LVL668:
	.loc 1 3082 0
	ldd r24,Z+39
	sbrs r24,2
	rjmp .L319
	rjmp .L314
.LVL669:
.L288:
.LBB139:
.LBB129:
	.loc 1 2983 0
	cpi r18,11
	cpc r19,__zero_reg__
	breq .L313
	.loc 1 2984 0
	ldi r26,lo8(8)
	ldi r27,0
.LVL670:
	ldi r18,lo8(11)
	ldi r19,0
.LVL671:
	rjmp .L292
.LVL672:
.L314:
.LBE129:
.LBE139:
	.loc 1 3102 0
	mov r24,r20
/* epilogue start */
	adiw r28,9
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
	pop r8
	pop r7
	pop r6
	pop r4
	pop r3
	pop r2
.LVL673:
	ret
	.cfi_endproc
.LFE32:
	.size	follow_path, .-follow_path
	.section	.text.f_mount,code
.global	f_mount
	.type	f_mount, @function
f_mount:
.LFB37:
	.loc 1 3502 0
	.cfi_startproc
.LVL674:
	push r17
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,8
	.cfi_def_cfa_offset 14
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 8 */
/* stack size = 11 */
.L__stack_usage = 11
	std Y+4,r24
	std Y+5,r25
	std Y+6,r20
	std Y+7,r21
	std Y+8,r22
	mov r17,r18
	.loc 1 3506 0
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	.loc 1 3510 0
	movw r24,r28
.LVL675:
	adiw r24,1
	call get_ldnumber
.LVL676:
	.loc 1 3511 0
	tst r25
	brlt .L327
	.loc 1 3512 0
	movw r30,r24
	lsl r30
	rol r31
	subi r30,lo8(-(FatFs))
	sbci r31,hi8(-(FatFs))
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
.LVL677:
	.loc 1 3514 0
	sbiw r30,0
	breq .L325
	.loc 1 3521 0
	st Z,__zero_reg__
.L325:
	.loc 1 3524 0
	ldd r30,Y+4
	ldd r31,Y+5
.LVL678:
	sbiw r30,0
	breq .L326
	.loc 1 3525 0
	st Z,__zero_reg__
.L326:
	.loc 1 3530 0
	lsl r24
	rol r25
.LVL679:
	movw r30,r24
	subi r30,lo8(-(FatFs))
	sbci r31,hi8(-(FatFs))
	ldd r24,Y+4
	ldd r25,Y+5
	st Z,r24
	std Z+1,r25
	.loc 1 3532 0
	tst r17
	breq .L328
	.loc 1 3534 0
	ldi r20,0
	movw r22,r28
	subi r22,-4
	sbci r23,-1
	movw r24,r28
	adiw r24,6
	call find_volume
.LVL680:
	.loc 1 3535 0
	rjmp .L324
.LVL681:
.L327:
	.loc 1 3511 0
	ldi r24,lo8(11)
.LVL682:
	rjmp .L324
.L328:
	.loc 1 3532 0
	ldi r24,0
.L324:
/* epilogue start */
	.loc 1 3536 0
	adiw r28,8
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r17
.LVL683:
	ret
	.cfi_endproc
.LFE37:
	.size	f_mount, .-f_mount
	.section	.text.f_open,code
.global	f_open
	.type	f_open, @function
f_open:
.LFB38:
	.loc 1 3550 0
	.cfi_startproc
.LVL684:
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
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,48
	.cfi_def_cfa_offset 69
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 48 */
/* stack size = 66 */
.L__stack_usage = 66
	std Y+46,r20
	std Y+47,r21
	std Y+48,r22
	.loc 1 3561 0
	sbiw r24,0
	brne .+2
	rjmp .L360
	mov r17,r18
	movw r14,r24
	.loc 1 3564 0
	mov r24,r18
.LVL685:
	andi r24,lo8(63)
	mov r13,r24
.LVL686:
	.loc 1 3565 0
	mov r20,r24
.LVL687:
	movw r22,r28
	subi r22,-44
	sbci r23,-1
	movw r24,r28
	adiw r24,46
	call find_volume
.LVL688:
	.loc 1 3566 0
	cpse r24,__zero_reg__
	rjmp .L352
	.loc 1 3567 0
	ldd r24,Y+44
	ldd r25,Y+45
.LVL689:
	std Y+1,r24
	std Y+2,r25
	.loc 1 3569 0
	ldd r20,Y+46
	ldd r21,Y+47
	ldd r22,Y+48
	movw r24,r28
	adiw r24,1
	call follow_path
.LVL690:
	.loc 1 3571 0
	cpse r24,__zero_reg__
	rjmp .L332
	.loc 1 3572 0
	ldd r24,Y+40
.LVL691:
	tst r24
	brlt .+2
	rjmp .L370
	rjmp .L333
.LVL692:
.L346:
	.loc 1 3584 0
	cpi r24,lo8(4)
	breq .+2
	rjmp .L335
	.loc 1 3588 0
	movw r24,r28
.LVL693:
	adiw r24,1
	call dir_register
.LVL694:
	.loc 1 3591 0
	mov r25,r13
	ori r25,lo8(8)
.LVL695:
	mov r13,r25
	.loc 1 3600 0
	tst r24
	breq .L336
	rjmp .L352
.LVL696:
.L348:
	.loc 1 3594 0
	ldd r24,Y+5
	andi r24,lo8(17)
	breq .+2
	rjmp .L361
	.loc 1 3597 0
	sbrc r17,2
	rjmp .L362
.LVL697:
.L336:
	.loc 1 3600 0 discriminator 1
	sbrs r13,3
	rjmp .L339
	.loc 1 3621 0
	ldd r20,Y+27
	ldd r21,Y+28
	ldi r22,lo8(-128)
	ldd r24,Y+44
	ldd r25,Y+45
	call ld_clust
.LVL698:
	movw r4,r22
	movw r6,r24
.LVL699:
	.loc 1 3622 0
	call get_fattime
.LVL700:
	ldd r30,Y+27
	ldd r31,Y+28
.LVL701:
.LBB144:
.LBB145:
	.loc 1 626 0
	std Z+14,r22
.LVL702:
	.loc 1 627 0
	std Z+15,r23
.LVL703:
	.loc 1 628 0
	std Z+16,r24
.LVL704:
	.loc 1 629 0
	std Z+17,r25
.LVL705:
.LBE145:
.LBE144:
	.loc 1 3623 0
	ldd r30,Y+27
	ldd r31,Y+28
	ldi r24,lo8(32)
	std Z+11,r24
	.loc 1 3624 0
	ldd r22,Y+27
	ldd r23,Y+28
	ldi r18,0
	ldi r19,0
	movw r20,r18
	ldd r24,Y+44
	ldd r25,Y+45
	call st_clust
.LVL706:
	.loc 1 3625 0
	ldd r30,Y+27
	ldd r31,Y+28
.LVL707:
.LBB146:
.LBB147:
	.loc 1 626 0
	std Z+28,__zero_reg__
.LVL708:
	.loc 1 627 0
	std Z+29,__zero_reg__
.LVL709:
	.loc 1 628 0
	std Z+30,__zero_reg__
.LVL710:
	.loc 1 629 0
	std Z+31,__zero_reg__
.LVL711:
.LBE147:
.LBE146:
	.loc 1 3626 0
	ldd r30,Y+44
	ldd r31,Y+45
	ldi r24,lo8(1)
	std Z+3,r24
	.loc 1 3627 0
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L340
	.loc 1 3628 0
	ldd r8,Z+43
	ldd r9,Z+44
	ldd r10,Z+45
	ldd r11,Z+46
.LVL712:
	.loc 1 3629 0
	ldi r16,0
	ldi r17,0
	movw r18,r16
	movw r22,r6
	movw r20,r4
	movw r24,r28
	adiw r24,1
	call remove_chain
.LVL713:
	.loc 1 3630 0
	cpse r24,__zero_reg__
	rjmp .L352
	.loc 1 3631 0
	movw r22,r10
	movw r20,r8
	ldd r24,Y+44
	ldd r25,Y+45
.LVL714:
	call move_window
.LVL715:
	.loc 1 3632 0
	ldd r30,Y+44
	ldd r31,Y+45
	ldi r25,1
	sub r4,r25
	sbc r5,__zero_reg__
	sbc r6,__zero_reg__
	sbc r7,__zero_reg__
.LVL716:
	std Z+11,r4
	std Z+12,r5
	std Z+13,r6
	std Z+14,r7
	.loc 1 3649 0
	tst r24
	breq .L340
	rjmp .L352
.LVL717:
.L374:
	.loc 1 3643 0
	sbrs r17,1
	rjmp .L341
	.loc 1 3643 0 is_stmt 0 discriminator 1
	sbrc r24,0
	rjmp .L363
.L341:
	.loc 1 3650 0 is_stmt 1
	sbrs r17,3
	rjmp .L339
.LVL718:
.L340:
	.loc 1 3650 0 is_stmt 0 discriminator 1
	mov r30,r13
	ori r30,lo8(64)
.LVL719:
	mov r13,r30
.LVL720:
.L339:
	.loc 1 3651 0 is_stmt 1
	ldd r30,Y+44
	ldd r31,Y+45
	ldd r24,Z+43
	ldd r25,Z+44
	ldd r26,Z+45
	ldd r27,Z+46
	movw r30,r14
	std Z+28,r24
	std Z+29,r25
	std Z+30,r26
	std Z+31,r27
	.loc 1 3652 0
	ldd r24,Y+27
	ldd r25,Y+28
	std Z+32,r24
	std Z+33,r25
.L350:
	.loc 1 3680 0
	ldd r6,Y+27
	ldd r7,Y+28
	ldd r10,Y+44
	ldd r11,Y+45
	movw r20,r6
	ldi r22,lo8(-128)
	movw r24,r10
	call ld_clust
.LVL721:
	movw r30,r14
	std Z+6,r22
	std Z+7,r23
	std Z+8,r24
	std Z+9,r25
	.loc 1 3681 0
	movw r22,r6
	subi r22,-28
	sbci r23,-1
	ldi r24,lo8(-128)
	call ld_dword
.LVL722:
	movw r30,r14
	std Z+10,r22
	std Z+11,r23
	std Z+12,r24
	std Z+13,r25
	.loc 1 3686 0
	st Z,r10
	std Z+1,r11
	.loc 1 3687 0
	movw r30,r10
	ldd r24,Z+5
	ldd r25,Z+6
	movw r30,r14
	std Z+2,r24
	std Z+3,r25
	.loc 1 3688 0
	std Z+14,r13
	.loc 1 3689 0
	std Z+15,__zero_reg__
	.loc 1 3690 0
	std Z+24,__zero_reg__
	std Z+25,__zero_reg__
	std Z+26,__zero_reg__
	std Z+27,__zero_reg__
	.loc 1 3691 0
	std Z+16,__zero_reg__
	std Z+17,__zero_reg__
	std Z+18,__zero_reg__
	std Z+19,__zero_reg__
	.loc 1 3694 0
	movw r2,r14
	ldi r31,34
	add r2,r31
	adc r3,__zero_reg__
	ldi r20,0
	ldi r21,lo8(2)
	ldi r22,0
	ldi r23,0
	movw r24,r2
	call mem_set
.LVL723:
	.loc 1 3696 0
	sbrs r13,5
	rjmp .L342
	.loc 1 3696 0 is_stmt 0 discriminator 1
	movw r30,r14
	ldd r4,Z+10
	ldd r5,Z+11
	ldd r6,Z+12
	ldd r7,Z+13
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .+2
	rjmp .L342
	.loc 1 3697 0 is_stmt 1
	std Z+16,r4
	std Z+17,r5
	std Z+18,r6
	std Z+19,r7
	.loc 1 3698 0
	ldd r30,Y+44
	ldd r31,Y+45
	ldd r24,Z+9
	ldd r25,Z+10
	ldi r26,0
	ldi r27,0
	movw r8,r24
	movw r10,r26
	mov r0,r23
	ldi r23,9
	1:
	lsl r8
	rol r9
	rol r10
	rol r11
	dec r23
	brne 1b
	mov r23,r0
.LVL724:
	.loc 1 3699 0
	movw r30,r14
	ldd r20,Z+6
	ldd r21,Z+7
	ldd r22,Z+8
	ldd r23,Z+9
.LVL725:
	.loc 1 3700 0
	cp r8,r4
	cpc r9,r5
	cpc r10,r6
	cpc r11,r7
	brlo .+2
	rjmp .L343
.LVL726:
.L368:
	.loc 1 3701 0
	movw r24,r14
	call get_fat
.LVL727:
	movw r20,r22
	movw r22,r24
.LVL728:
	.loc 1 3702 0
	cpi r20,2
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brlo .+2
	rjmp .L371
	rjmp .L344
.L351:
	.loc 1 3707 0
	ldd r12,Y+44
	ldd r13,Y+45
	movw r24,r12
	call clst2sect
.LVL729:
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L364
	.loc 1 3710 0
	movw r18,r6
	movw r16,r4
	mov r0,r31
	ldi r31,9
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	dec r31
	brne 1b
	mov r31,r0
	movw r20,r18
	movw r18,r16
	add r18,r22
	adc r19,r23
	adc r20,r24
	adc r21,r25
	movw r30,r14
	std Z+24,r18
	std Z+25,r19
	std Z+26,r20
	std Z+27,r21
	.loc 1 3712 0
	ldi r16,lo8(1)
	ldi r17,0
	movw r22,r2
.LVL730:
	movw r30,r12
	ldd r24,Z+1
	call disk_read
.LVL731:
	cpse r24,__zero_reg__
	rjmp .L365
	rjmp .L342
.LVL732:
.L352:
	.loc 1 3723 0 discriminator 1
	movw r30,r14
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	rjmp .L372
.LVL733:
.L360:
	.loc 1 3561 0
	ldi r24,lo8(9)
.LVL734:
	rjmp .L372
.LVL735:
.L332:
	.loc 1 3582 0
	mov r18,r17
	andi r18,lo8(28)
	breq .L353
	rjmp .L346
.LVL736:
.L333:
	mov r18,r17
	andi r18,lo8(28)
	brne .L366
	.loc 1 3573 0
	ldi r24,lo8(6)
	rjmp .L353
.LVL737:
.L370:
	.loc 1 3582 0
	mov r24,r17
	andi r24,lo8(28)
	breq .+2
	rjmp .L348
	rjmp .L373
.LVL738:
.L353:
	.loc 1 3670 0
	cpse r24,__zero_reg__
	rjmp .L352
	rjmp .L350
.LVL739:
.L356:
	.loc 1 3705 0
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	movw r26,r24
	movw r30,r14
	std Z+20,r24
	std Z+21,r25
	std Z+22,r26
	std Z+23,r27
	.loc 1 3703 0
	ldi r24,lo8(1)
	rjmp .L352
.LVL740:
.L343:
	.loc 1 3705 0
	movw r30,r14
	std Z+20,r20
	std Z+21,r21
	std Z+22,r22
	std Z+23,r23
	.loc 1 3706 0
	movw r26,r6
	movw r24,r4
	andi r25,1
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .+2
	rjmp .L351
	rjmp .L342
.LVL741:
.L364:
	.loc 1 3708 0
	ldi r24,lo8(2)
	rjmp .L352
.LVL742:
.L365:
	.loc 1 3712 0
	ldi r24,lo8(1)
.LVL743:
	rjmp .L352
.LVL744:
.L342:
	.loc 1 3725 0
	ldi r24,0
	rjmp .L372
.LVL745:
.L366:
	.loc 1 3573 0
	ldi r24,lo8(6)
.LVL746:
.L335:
	.loc 1 3591 0
	mov r31,r13
	ori r31,lo8(8)
.LVL747:
	mov r13,r31
	rjmp .L353
.LVL748:
.L373:
	.loc 1 3640 0
	ldd r24,Y+5
	sbrc r24,4
	rjmp .L367
	rjmp .L374
.LVL749:
.L375:
	.loc 1 3705 0
	movw r30,r14
	std Z+20,r20
	std Z+21,r21
	std Z+22,r22
	std Z+23,r23
	.loc 1 3702 0
	ldi r24,lo8(2)
	rjmp .L352
.LVL750:
.L344:
	.loc 1 3703 0
	cpi r20,-1
	ldi r31,-1
	cpc r21,r31
	cpc r22,r31
	cpc r23,r31
	breq .L356
	rjmp .L375
.LVL751:
.L376:
	.loc 1 3700 0
	sub r4,r8
	sbc r5,r9
	sbc r6,r10
	sbc r7,r11
.LVL752:
	cp r8,r4
	cpc r9,r5
	cpc r10,r6
	cpc r11,r7
	brsh .+2
	rjmp .L368
	rjmp .L343
.L371:
	.loc 1 3703 0
	cpi r20,-1
	ldi r24,-1
	cpc r21,r24
	cpc r22,r24
	cpc r23,r24
	brne .L376
	rjmp .L356
.LVL753:
.L361:
	.loc 1 3595 0
	ldi r24,lo8(7)
	rjmp .L352
.L362:
	.loc 1 3597 0
	ldi r24,lo8(8)
.LVL754:
	rjmp .L352
.LVL755:
.L363:
	.loc 1 3644 0
	ldi r24,lo8(7)
	rjmp .L352
.L367:
	.loc 1 3641 0
	ldi r24,lo8(4)
.LVL756:
	rjmp .L352
.LVL757:
.L372:
/* epilogue start */
	.loc 1 3726 0
	adiw r28,48
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
.LFE38:
	.size	f_open, .-f_open
	.section	.text.f_read,code
.global	f_read
	.type	f_read, @function
f_read:
.LFB39:
	.loc 1 3741 0
	.cfi_startproc
.LVL758:
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
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,11
	.cfi_def_cfa_offset 32
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 11 */
/* stack size = 29 */
.L__stack_usage = 29
	movw r8,r24
	movw r2,r22
	movw r12,r20
	movw r10,r18
.LVL759:
	.loc 1 3750 0
	movw r30,r18
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	.loc 1 3751 0
	std Y+5,r24
	std Y+6,r9
	movw r22,r28
.LVL760:
	subi r22,-1
	sbci r23,-1
	call validate
.LVL761:
	.loc 1 3752 0
	cpse r24,__zero_reg__
	rjmp .L378
	.loc 1 3752 0 is_stmt 0 discriminator 2
	movw r30,r8
	ldd r24,Z+15
.LVL762:
	cpse r24,__zero_reg__
	rjmp .L378
	.loc 1 3753 0 is_stmt 1
	ldd r24,Z+14
.LVL763:
	sbrs r24,0
	rjmp .L399
	.loc 1 3754 0
	ldd r24,Z+10
	ldd r25,Z+11
	ldd r26,Z+12
	ldd r27,Z+13
	ldd r20,Z+16
	ldd r21,Z+17
	ldd r22,Z+18
	ldd r23,Z+19
	sub r24,r20
	sbc r25,r21
	sbc r26,r22
	sbc r27,r23
.LVL764:
	.loc 1 3755 0
	movw r20,r12
	ldi r22,0
	ldi r23,0
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brsh .L379
	.loc 1 3755 0 is_stmt 0 discriminator 1
	movw r12,r24
.LVL765:
.L379:
	.loc 1 3757 0 is_stmt 1
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .+2
	rjmp .L400
	.loc 1 3809 0
	movw r24,r8
.LVL766:
	adiw r24,34
	std Y+7,r24
	std Y+8,r25
	.loc 1 3805 0
	ldi r26,lo8(-128)
	std Y+9,r24
	std Y+10,r25
	std Y+11,r26
.LVL767:
.L401:
	.loc 1 3759 0
	movw r30,r8
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	movw r20,r24
	movw r22,r26
	andi r21,1
	clr r22
	clr r23
	or r20,r21
	or r20,r22
	or r20,r23
	breq .+2
	rjmp .L380
	.loc 1 3760 0
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r16,Z+9
	ldd r17,Z+10
	subi r16,1
	sbc r17,__zero_reg__
	movw r20,r24
	movw r22,r26
	mov r0,r19
	ldi r19,9
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r19
	brne 1b
	mov r19,r0
	and r16,r20
	and r17,r21
.LVL768:
	.loc 1 3761 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L381
	.loc 1 3762 0
	or r24,r25
	or r24,r26
	or r24,r27
	brne .L382
	.loc 1 3763 0
	movw r30,r8
	ldd r22,Z+6
	ldd r23,Z+7
	ldd r24,Z+8
	ldd r25,Z+9
.LVL769:
	rjmp .L383
.LVL770:
.L382:
	.loc 1 3771 0
	movw r30,r8
	ldd r20,Z+20
	ldd r21,Z+21
	ldd r22,Z+22
	ldd r23,Z+23
	ldd r24,Y+5
	ldd r25,Y+6
	call get_fat
.LVL771:
.L383:
	.loc 1 3774 0
	cpi r22,2
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brsh .L384
	.loc 1 3774 0 is_stmt 0 discriminator 1
	ldi r24,lo8(2)
	movw r30,r8
	std Z+15,r24
	rjmp .L378
.L384:
	.loc 1 3775 0 is_stmt 1
	cpi r22,-1
	ldi r31,-1
	cpc r23,r31
	cpc r24,r31
	cpc r25,r31
	brne .L385
	.loc 1 3775 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r30,r8
	std Z+15,r24
	rjmp .L378
.L385:
	.loc 1 3776 0 is_stmt 1
	movw r30,r8
	std Z+20,r22
	std Z+21,r23
	std Z+22,r24
	std Z+23,r25
.LVL772:
.L381:
	.loc 1 3778 0
	ldd r24,Y+1
	ldd r25,Y+2
	std Y+3,r24
	std Y+4,r25
	movw r30,r8
	ldd r20,Z+20
	ldd r21,Z+21
	ldd r22,Z+22
	ldd r23,Z+23
	call clst2sect
.LVL773:
	.loc 1 3779 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L386
	.loc 1 3779 0 is_stmt 0 discriminator 1
	ldi r24,lo8(2)
	movw r30,r8
	std Z+15,r24
	rjmp .L378
.L386:
	.loc 1 3780 0 is_stmt 1
	movw r4,r22
	movw r6,r24
	add r4,r16
	adc r5,r17
	adc r6,__zero_reg__
	adc r7,__zero_reg__
.LVL774:
	.loc 1 3781 0
	movw r14,r12
	mov r14,r15
	clr r15
	lsr r14
.LVL775:
	.loc 1 3782 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .+2
	rjmp .L387
	.loc 1 3783 0
	ldd r30,Y+3
	ldd r31,Y+4
	ldd r24,Z+9
	ldd r25,Z+10
	movw r18,r16
	add r18,r14
	adc r19,r15
	cp r24,r18
	cpc r25,r19
	brsh .L388
	.loc 1 3784 0
	movw r14,r24
.LVL776:
	sub r14,r16
	sbc r15,r17
.LVL777:
.L388:
	.loc 1 3786 0
	movw r16,r14
.LVL778:
	movw r20,r6
	movw r18,r4
	movw r22,r2
	ldd r30,Y+3
	ldd r31,Y+4
	ldd r24,Z+1
	call disk_read
.LVL779:
	tst r24
	breq .L389
	.loc 1 3786 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r30,r8
	std Z+15,r24
	rjmp .L378
.L389:
	.loc 1 3793 0 is_stmt 1
	movw r30,r8
	ldd r24,Z+14
	tst r24
	brge .L390
	.loc 1 3793 0 is_stmt 0 discriminator 1
	ldd r24,Z+24
	ldd r25,Z+25
	ldd r26,Z+26
	ldd r27,Z+27
	sub r24,r4
	sbc r25,r5
	sbc r26,r6
	sbc r27,r7
	movw r20,r14
	ldi r22,0
	ldi r23,0
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brsh .L390
	.loc 1 3794 0 is_stmt 1
	mov r25,r24
	clr r24
	lsl r25
	ldi r18,0
	ldi r19,lo8(2)
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	add r24,r2
	adc r25,r3
	call mem_cpy
.LVL780:
.L390:
	.loc 1 3798 0
	mov r15,r14
	clr r14
	lsl r15
.LVL781:
	.loc 1 3799 0
	rjmp .L391
.LVL782:
.L387:
	.loc 1 3802 0
	movw r30,r8
	ldd r16,Z+24
	ldd r17,Z+25
	ldd r18,Z+26
	ldd r19,Z+27
.LVL783:
	cp r4,r16
	cpc r5,r17
	cpc r6,r18
	cpc r7,r19
	breq .L392
	.loc 1 3804 0
	ldd r24,Z+14
	tst r24
	brge .L393
	.loc 1 3805 0
	clr r14
	inc r14
	mov r15,__zero_reg__
.LVL784:
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+11
	ldd r30,Y+3
	ldd r31,Y+4
	ldd r24,Z+1
	call disk_write
.LVL785:
	tst r24
	breq .L394
	.loc 1 3805 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r30,r8
	std Z+15,r24
	rjmp .L378
.L394:
	.loc 1 3806 0 is_stmt 1
	movw r30,r8
	ldd r24,Z+14
	andi r24,lo8(127)
	std Z+14,r24
.L393:
	.loc 1 3809 0
	ldd r30,Y+1
	ldd r31,Y+2
	ldi r16,lo8(1)
	ldi r17,0
	movw r20,r6
	movw r18,r4
	ldd r22,Y+7
	ldd r23,Y+8
	ldd r24,Z+1
	call disk_read
.LVL786:
	tst r24
	breq .L392
	.loc 1 3809 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r30,r8
	std Z+15,r24
	rjmp .L378
.L392:
	.loc 1 3812 0 is_stmt 1
	movw r30,r8
	std Z+24,r4
	std Z+25,r5
	std Z+26,r6
	std Z+27,r7
.LVL787:
.L380:
	.loc 1 3814 0
	movw r30,r8
	ldd r20,Z+16
	ldd r21,Z+17
	andi r21,1
.LVL788:
	ldi r24,0
	ldi r25,lo8(2)
	movw r14,r24
	sub r14,r20
	sbc r15,r21
.LVL789:
	cp r12,r14
	cpc r13,r15
	brsh .L395
	movw r14,r12
.LVL790:
.L395:
	.loc 1 3820 0
	ldd r24,Y+7
	ldd r25,Y+8
	add r20,r24
	adc r21,r25
	ldi r22,lo8(-128)
	movw r18,r14
	movw r24,r2
	call mem_cpy
.LVL791:
.L391:
	.loc 1 3758 0
	sub r12,r14
	sbc r13,r15
.LVL792:
	movw r30,r10
	ld r24,Z
	ldd r25,Z+1
	add r24,r14
	adc r25,r15
	st Z,r24
	std Z+1,r25
	add r2,r14
	adc r3,r15
.LVL793:
	movw r30,r8
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	add r24,r14
	adc r25,r15
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	std Z+16,r24
	std Z+17,r25
	std Z+18,r26
	std Z+19,r27
	.loc 1 3757 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .+2
	rjmp .L401
	.loc 1 3824 0
	ldi r24,0
	rjmp .L378
.LVL794:
.L399:
	.loc 1 3753 0
	ldi r24,lo8(7)
	rjmp .L378
.LVL795:
.L400:
	.loc 1 3824 0
	ldi r24,0
.LVL796:
.L378:
/* epilogue start */
	.loc 1 3825 0
	adiw r28,11
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
.LVL797:
	pop r11
	pop r10
.LVL798:
	pop r9
	pop r8
.LVL799:
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
.LVL800:
	ret
	.cfi_endproc
.LFE39:
	.size	f_read, .-f_read
	.section	.text.f_write,code
.global	f_write
	.type	f_write, @function
f_write:
.LFB40:
	.loc 1 3841 0
	.cfi_startproc
.LVL801:
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
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,16
	.cfi_def_cfa_offset 37
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 16 */
/* stack size = 34 */
.L__stack_usage = 34
	movw r2,r24
	movw r4,r20
	mov r6,r22
	movw r8,r18
	std Y+3,r16
	std Y+4,r17
.LVL802:
	.loc 1 3849 0
	movw r26,r16
	st X+,__zero_reg__
	st X,__zero_reg__
	.loc 1 3850 0
	mov r7,r24
	std Y+11,r3
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call validate
.LVL803:
	.loc 1 3851 0
	cpse r24,__zero_reg__
	rjmp .L404
	.loc 1 3851 0 is_stmt 0 discriminator 2
	movw r30,r2
	ldd r24,Z+15
.LVL804:
	cpse r24,__zero_reg__
	rjmp .L404
	.loc 1 3852 0 is_stmt 1
	ldd r24,Z+14
.LVL805:
	sbrs r24,1
	rjmp .L428
	.loc 1 3855 0
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	movw r20,r24
	movw r22,r26
	add r20,r8
	adc r21,r9
	adc r22,__zero_reg__
	adc r23,__zero_reg__
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L405
	.loc 1 3856 0
	movw r8,r24
.LVL806:
	com r8
	com r9
.LVL807:
.L405:
	.loc 1 3859 0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	brne .+2
	rjmp .L406
	.loc 1 3926 0
	movw r18,r2
	subi r18,-34
	sbci r19,-1
	std Y+12,r18
	std Y+13,r19
	.loc 1 3889 0
	movw r24,r18
	ldi r26,lo8(-128)
	std Y+14,r24
	std Y+15,r25
	std Y+16,r26
.LVL808:
.L429:
	.loc 1 3861 0
	movw r30,r2
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	movw r20,r24
	movw r22,r26
	andi r21,1
	clr r22
	clr r23
	or r20,r21
	or r20,r22
	or r20,r23
	breq .+2
	rjmp .L407
	.loc 1 3862 0
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r12,Z+9
	ldd r13,Z+10
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	movw r20,r24
	movw r22,r26
	mov r0,r19
	ldi r19,9
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r19
	brne 1b
	mov r19,r0
	and r12,r20
	and r13,r21
.LVL809:
	.loc 1 3863 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	breq .+2
	rjmp .L408
	.loc 1 3864 0
	or r24,r25
	or r24,r26
	or r24,r27
	brne .L409
	.loc 1 3865 0
	movw r26,r2
	adiw r26,6
	ld r22,X+
	ld r23,X+
	ld r24,X+
	ld r25,X
	sbiw r26,6+3
.LVL810:
	.loc 1 3866 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L410
	.loc 1 3867 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	mov r24,r7
	ldd r25,Y+11
	call create_chain
.LVL811:
	rjmp .L411
.LVL812:
.L409:
	.loc 1 3876 0
	movw r30,r2
	ldd r20,Z+20
	ldd r21,Z+21
	ldd r22,Z+22
	ldd r23,Z+23
	mov r24,r7
	ldd r25,Y+11
	call create_chain
.LVL813:
.L411:
	.loc 1 3879 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L406
.L410:
	.loc 1 3880 0
	cpi r22,1
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L412
	.loc 1 3880 0 is_stmt 0 discriminator 1
	ldi r24,lo8(2)
	movw r26,r2
	adiw r26,15
	st X,r24
	rjmp .L404
.L412:
	.loc 1 3881 0 is_stmt 1
	cpi r22,-1
	ldi r27,-1
	cpc r23,r27
	cpc r24,r27
	cpc r25,r27
	brne .L413
	.loc 1 3881 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r30,r2
	std Z+15,r24
	rjmp .L404
.L413:
	.loc 1 3882 0 is_stmt 1
	movw r26,r2
	adiw r26,20
	st X+,r22
	st X+,r23
	st X+,r24
	st X,r25
	sbiw r26,20+3
	.loc 1 3883 0
	adiw r26,6
	ld r16,X+
	ld r17,X+
	ld r18,X+
	ld r19,X
	sbiw r26,6+3
	or r16,r17
	or r16,r18
	or r16,r19
	brne .L408
	.loc 1 3883 0 is_stmt 0 discriminator 1
	movw r30,r2
	std Z+6,r22
	std Z+7,r23
	std Z+8,r24
	std Z+9,r25
.LVL814:
.L408:
	.loc 1 3888 0 is_stmt 1
	movw r26,r2
	adiw r26,14
	ld r24,X
	sbiw r26,14
	tst r24
	brge .L414
	.loc 1 3889 0
	adiw r26,24
	ld r16,X+
	ld r17,X+
	ld r18,X+
	ld r19,X
	sbiw r26,24+3
	ldd r30,Y+1
	ldd r31,Y+2
	clr r14
	inc r14
	mov r15,__zero_reg__
	ldd r20,Y+14
	ldd r21,Y+15
	ldd r22,Y+16
	ldd r24,Z+1
	call disk_write
.LVL815:
	tst r24
	breq .L415
	.loc 1 3889 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r30,r2
	std Z+15,r24
	rjmp .L404
.L415:
	.loc 1 3890 0 is_stmt 1
	movw r26,r2
	adiw r26,14
	ld r24,X
	sbiw r26,14
	andi r24,lo8(127)
	adiw r26,14
	st X,r24
.L414:
	.loc 1 3893 0
	ldd r30,Y+1
	ldd r31,Y+2
	std Y+5,r30
	std Y+6,r31
	movw r26,r2
	adiw r26,20
	ld r20,X+
	ld r21,X+
	ld r22,X+
	ld r23,X
	sbiw r26,20+3
	movw r24,r30
	call clst2sect
.LVL816:
	.loc 1 3894 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L416
	.loc 1 3894 0 is_stmt 0 discriminator 1
	ldi r24,lo8(2)
	movw r30,r2
	std Z+15,r24
	rjmp .L404
.L416:
	.loc 1 3895 0 is_stmt 1
	movw r18,r22
	movw r20,r24
	add r18,r12
	adc r19,r13
	adc r20,__zero_reg__
	adc r21,__zero_reg__
	std Y+7,r18
	std Y+8,r19
	std Y+9,r20
	std Y+10,r21
.LVL817:
	.loc 1 3896 0
	movw r10,r8
	mov r10,r11
	clr r11
	lsr r10
.LVL818:
	.loc 1 3897 0
	cp r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L417
	.loc 1 3898 0
	ldd r26,Y+5
	ldd r27,Y+6
	adiw r26,9
	ld r24,X+
	ld r25,X
	sbiw r26,9+1
	movw r18,r12
.LVL819:
	add r18,r10
	adc r19,r11
	cp r24,r18
	cpc r25,r19
	brsh .L418
	.loc 1 3899 0
	movw r10,r24
.LVL820:
	sub r10,r12
	sbc r11,r13
.LVL821:
.L418:
	.loc 1 3901 0
	movw r14,r10
	ldd r16,Y+7
	ldd r17,Y+8
	ldd r18,Y+9
	ldd r19,Y+10
	mov r22,r6
	movw r20,r4
	ldd r30,Y+5
	ldd r31,Y+6
	ldd r24,Z+1
	call disk_write
.LVL822:
	tst r24
	breq .L419
	.loc 1 3901 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r26,r2
	adiw r26,15
	st X,r24
	rjmp .L404
.L419:
	.loc 1 3909 0 is_stmt 1
	movw r30,r2
	ldd r24,Z+24
	ldd r25,Z+25
	ldd r26,Z+26
	ldd r27,Z+27
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	sub r24,r18
	sbc r25,r19
	sbc r26,r20
	sbc r27,r21
	movw r20,r10
	ldi r22,0
	ldi r23,0
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brsh .L420
	.loc 1 3910 0
	mov r25,r24
	clr r24
	lsl r25
	mov r22,r6
	movw r20,r4
	add r20,r24
	adc r21,r25
	adc r22,__zero_reg__
	sbrc r25,7
	dec r22
	ldi r18,0
	ldi r19,lo8(2)
	ldd r24,Y+12
	ldd r25,Y+13
	call mem_cpy
.LVL823:
	.loc 1 3911 0
	movw r26,r2
	adiw r26,14
	ld r24,X
	sbiw r26,14
	andi r24,lo8(127)
	adiw r26,14
	st X,r24
.L420:
	.loc 1 3915 0
	mov r11,r10
	clr r10
	lsl r11
.LVL824:
	.loc 1 3916 0
	rjmp .L421
.LVL825:
.L417:
	.loc 1 3924 0
	movw r30,r2
	ldd r24,Z+24
	ldd r25,Z+25
	ldd r26,Z+26
	ldd r27,Z+27
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
.LVL826:
	cp r18,r24
	cpc r19,r25
	cpc r20,r26
	cpc r21,r27
	breq .L422
	.loc 1 3924 0 is_stmt 0 discriminator 1
	ldd r20,Z+16
	ldd r21,Z+17
	ldd r22,Z+18
	ldd r23,Z+19
	ldd r24,Z+10
	ldd r25,Z+11
	ldd r26,Z+12
	ldd r27,Z+13
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L422
	.loc 1 3926 0 is_stmt 1
	ldi r16,lo8(1)
	ldi r17,0
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	ldd r22,Y+12
	ldd r23,Y+13
	ldd r26,Y+5
	ldd r27,Y+6
	adiw r26,1
	ld r24,X
	call disk_read
.LVL827:
	.loc 1 3925 0
	tst r24
	breq .L422
	.loc 1 3927 0
	ldi r24,lo8(1)
	movw r30,r2
	std Z+15,r24
	rjmp .L404
.L422:
	.loc 1 3930 0
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	movw r26,r2
	adiw r26,24
	st X+,r18
	st X+,r19
	st X+,r20
	st X,r21
	sbiw r26,24+3
.LVL828:
.L407:
	.loc 1 3932 0
	movw r30,r2
	ldd r24,Z+16
	ldd r25,Z+17
	andi r25,1
.LVL829:
	ldi r18,0
	ldi r19,lo8(2)
	movw r10,r18
	sub r10,r24
	sbc r11,r25
.LVL830:
	cp r8,r10
	cpc r9,r11
	brsh .L423
	movw r10,r8
.LVL831:
.L423:
	.loc 1 3939 0
	movw r18,r10
	mov r22,r6
	movw r20,r4
	ldd r26,Y+12
	ldd r27,Y+13
	add r24,r26
	adc r25,r27
	call mem_cpy
.LVL832:
	.loc 1 3940 0
	movw r30,r2
	ldd r24,Z+14
	ori r24,lo8(-128)
	std Z+14,r24
.L421:
	.loc 1 3860 0
	sub r8,r10
	sbc r9,r11
.LVL833:
	ldd r26,Y+3
	ldd r27,Y+4
	ld r24,X+
	ld r25,X
	sbiw r26,1
	add r24,r10
	adc r25,r11
	st X+,r24
	st X,r25
	add r4,r10
	adc r5,r11
	adc r6,__zero_reg__
	sbrc r11,7
	dec r6
.LVL834:
	movw r30,r2
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	add r24,r10
	adc r25,r11
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	std Z+16,r24
	std Z+17,r25
	std Z+18,r26
	std Z+19,r27
	ldd r20,Z+10
	ldd r21,Z+11
	ldd r22,Z+12
	ldd r23,Z+13
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L424
	movw r20,r24
	movw r22,r26
.L424:
	movw r26,r2
	adiw r26,10
	st X+,r20
	st X+,r21
	st X+,r22
	st X,r23
	sbiw r26,10+3
	.loc 1 3859 0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	breq .+2
	rjmp .L429
.LVL835:
.L406:
	.loc 1 3944 0
	movw r30,r2
	ldd r24,Z+14
	ori r24,lo8(64)
	std Z+14,r24
	.loc 1 3946 0
	ldi r24,0
	rjmp .L404
.LVL836:
.L428:
	.loc 1 3852 0
	ldi r24,lo8(7)
.LVL837:
.L404:
/* epilogue start */
	.loc 1 3947 0
	adiw r28,16
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
.LVL838:
	pop r7
	pop r6
	pop r5
	pop r4
.LVL839:
	pop r3
	pop r2
.LVL840:
	ret
	.cfi_endproc
.LFE40:
	.size	f_write, .-f_write
	.section	.text.putc_bfd,code
	.type	putc_bfd, @function
putc_bfd:
.LFB56:
	.loc 1 6222 0
	.cfi_startproc
.LVL841:
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
	push __zero_reg__
	push __zero_reg__
	.cfi_def_cfa_offset 15
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 6237 0
	movw r30,r24
	ldd r18,Z+2
	ldd r19,Z+3
.LVL842:
	.loc 1 6238 0
	tst r19
	brlt .L432
	movw r14,r24
	.loc 1 6239 0
	ldd r10,Z+4
	ldd r11,Z+5
.LVL843:
	.loc 1 6337 0
	movw r12,r18
	ldi r31,-1
	sub r12,r31
	sbc r13,r31
.LVL844:
	movw r30,r24
	add r30,r18
	adc r31,r19
	std Z+6,r22
	.loc 1 6340 0
	ldi r24,60
	cp r12,r24
	cpc r13,__zero_reg__
.LVL845:
	brlt .L434
	.loc 1 6341 0
	movw r20,r14
	subi r20,-6
	sbci r21,-1
	ldi r22,lo8(-128)
.LVL846:
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r18,r12
	movw r30,r14
.LVL847:
	ld r24,Z
	ldd r25,Z+1
	call f_write
.LVL848:
	.loc 1 6342 0
	ldi r24,lo8(1)
	ldi r25,0
	ldd r18,Y+1
	ldd r19,Y+2
	cp r18,r12
	cpc r19,r13
	brne .L435
	ldi r24,0
	ldi r25,0
.L435:
	clr r12
	clr r13
	sub r12,r24
	sbc r13,r25
.LVL849:
.L434:
	.loc 1 6344 0
	movw r30,r14
	std Z+2,r12
	std Z+3,r13
	.loc 1 6345 0
	ldi r31,-1
	sub r10,r31
	sbc r11,r31
.LVL850:
	movw r30,r14
	std Z+4,r10
	std Z+5,r11
.LVL851:
.L432:
/* epilogue start */
	.loc 1 6346 0
	pop __tmp_reg__
	pop __tmp_reg__
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
.LFE56:
	.size	putc_bfd, .-putc_bfd
	.section	.text.putc_flush,code
	.type	putc_flush, @function
putc_flush:
.LFB57:
	.loc 1 6352 0
	.cfi_startproc
.LVL852:
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
	push r29
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
	push __zero_reg__
	push __zero_reg__
	.cfi_def_cfa_offset 11
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 6355 0
	movw r30,r24
	ldd r18,Z+2
	ldd r19,Z+3
	tst r19
	brlt .L439
	movw r14,r24
	.loc 1 6356 0
	movw r20,r24
	subi r20,-6
	sbci r21,-1
	ldi r22,lo8(-128)
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	ld r24,Z
	ldd r25,Z+1
.LVL853:
	call f_write
.LVL854:
	cpse r24,__zero_reg__
	rjmp .L440
	.loc 1 6357 0
	movw r30,r14
	ldd r18,Z+2
	ldd r19,Z+3
	ldd r24,Y+1
	ldd r25,Y+2
	cp r18,r24
	cpc r19,r25
	brne .L441
	.loc 1 6357 0 is_stmt 0 discriminator 1
	ldd r24,Z+4
	ldd r25,Z+5
	rjmp .L438
.LVL855:
.L439:
	.loc 1 6358 0 is_stmt 1
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.LVL856:
	rjmp .L438
.LVL857:
.L440:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	rjmp .L438
.L441:
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
.LVL858:
.L438:
/* epilogue start */
	.loc 1 6359 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE57:
	.size	putc_flush, .-putc_flush
	.section	.text.f_sync,code
.global	f_sync
	.type	f_sync, @function
f_sync:
.LFB41:
	.loc 1 3959 0
	.cfi_startproc
.LVL859:
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
	push __zero_reg__
	push __zero_reg__
	.cfi_def_cfa_offset 15
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r12,r24
	.loc 1 3966 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call validate
.LVL860:
	.loc 1 3967 0
	cpse r24,__zero_reg__
	rjmp .L443
	.loc 1 3968 0
	movw r30,r12
	ldd r24,Z+14
.LVL861:
	sbrs r24,6
	rjmp .L446
	.loc 1 3970 0
	tst r24
	brge .L444
	.loc 1 3971 0
	ldd r16,Z+24
	ldd r17,Z+25
	ldd r18,Z+26
	ldd r19,Z+27
	movw r20,r12
	subi r20,-34
	sbci r21,-1
	ldi r22,lo8(-128)
	ldd r30,Y+1
	ldd r31,Y+2
	clr r14
	inc r14
	mov r15,__zero_reg__
	ldd r24,Z+1
	call disk_write
.LVL862:
	cpse r24,__zero_reg__
	rjmp .L447
	.loc 1 3972 0
	movw r30,r12
	ldd r24,Z+14
	andi r24,lo8(127)
	std Z+14,r24
.L444:
	.loc 1 3976 0
	call get_fattime
.LVL863:
	mov r10,r22
	mov r11,r23
	mov r14,r24
	mov r15,r25
.LVL864:
	.loc 1 4009 0
	movw r30,r12
	ldd r20,Z+28
	ldd r21,Z+29
	ldd r22,Z+30
	ldd r23,Z+31
	ldd r24,Y+1
	ldd r25,Y+2
	call move_window
.LVL865:
	.loc 1 4010 0
	cpse r24,__zero_reg__
	rjmp .L443
	.loc 1 4011 0
	movw r30,r12
	ldd r16,Z+32
	ldd r17,Z+33
.LVL866:
	.loc 1 4012 0
	movw r30,r16
	ldd r24,Z+11
.LVL867:
	ori r24,lo8(32)
	std Z+11,r24
	.loc 1 4013 0
	movw r30,r12
	ldd r18,Z+6
	ldd r19,Z+7
	ldd r20,Z+8
	ldd r21,Z+9
	movw r22,r16
	ld r24,Z
	ldd r25,Z+1
	call st_clust
.LVL868:
	.loc 1 4014 0
	movw r30,r12
	ldd r19,Z+10
	ldd r18,Z+11
	ldd r25,Z+12
	ldd r24,Z+13
.LVL869:
.LBB154:
.LBB155:
	.loc 1 626 0
	movw r30,r16
	std Z+28,r19
.LVL870:
	.loc 1 627 0
	std Z+29,r18
.LVL871:
	.loc 1 628 0
	std Z+30,r25
.LVL872:
	.loc 1 629 0
	std Z+31,r24
.LVL873:
.LBE155:
.LBE154:
.LBB156:
.LBB157:
	.loc 1 626 0
	std Z+22,r10
.LVL874:
	.loc 1 627 0
	std Z+23,r11
.LVL875:
	.loc 1 628 0
	std Z+24,r14
.LVL876:
	.loc 1 629 0
	std Z+25,r15
.LVL877:
.LBE157:
.LBE156:
.LBB158:
.LBB159:
	.loc 1 620 0
	std Z+18,__zero_reg__
	.loc 1 621 0
	std Z+19,__zero_reg__
.LVL878:
.LBE159:
.LBE158:
	.loc 1 4017 0
	ldd r24,Y+1
	ldd r25,Y+2
	ldi r18,lo8(1)
	movw r30,r24
	std Z+3,r18
	.loc 1 4018 0
	call sync_fs
.LVL879:
	.loc 1 4019 0
	movw r30,r12
	ldd r25,Z+14
	andi r25,lo8(-65)
	std Z+14,r25
	rjmp .L443
.LVL880:
.L446:
	.loc 1 3966 0
	ldi r24,0
	rjmp .L443
.L447:
	.loc 1 3971 0
	ldi r24,lo8(1)
.L443:
/* epilogue start */
	.loc 1 4026 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
.LVL881:
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE41:
	.size	f_sync, .-f_sync
	.section	.text.f_close,code
.global	f_close
	.type	f_close, @function
f_close:
.LFB42:
	.loc 1 4040 0
	.cfi_startproc
.LVL882:
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
	push __zero_reg__
	push __zero_reg__
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	.loc 1 4045 0
	call f_sync
.LVL883:
	.loc 1 4046 0
	cpse r24,__zero_reg__
	rjmp .L450
	.loc 1 4049 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
.LVL884:
	call validate
.LVL885:
	.loc 1 4050 0
	cpse r24,__zero_reg__
	rjmp .L450
	.loc 1 4055 0
	movw r30,r16
	st Z,__zero_reg__
	std Z+1,__zero_reg__
.L450:
/* epilogue start */
	.loc 1 4063 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL886:
	ret
	.cfi_endproc
.LFE42:
	.size	f_close, .-f_close
	.section	.text.f_lseek,code
.global	f_lseek
	.type	f_lseek, @function
f_lseek:
.LFB43:
	.loc 1 4256 0
	.cfi_startproc
.LVL887:
	push r4
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -3
	push r5
	.cfi_def_cfa_offset 5
	.cfi_offset 5, -4
	push r6
	.cfi_def_cfa_offset 6
	.cfi_offset 6, -5
	push r7
	.cfi_def_cfa_offset 7
	.cfi_offset 7, -6
	push r8
	.cfi_def_cfa_offset 8
	.cfi_offset 8, -7
	push r9
	.cfi_def_cfa_offset 9
	.cfi_offset 9, -8
	push r10
	.cfi_def_cfa_offset 10
	.cfi_offset 10, -9
	push r11
	.cfi_def_cfa_offset 11
	.cfi_offset 11, -10
	push r12
	.cfi_def_cfa_offset 12
	.cfi_offset 12, -11
	push r13
	.cfi_def_cfa_offset 13
	.cfi_offset 13, -12
	push r14
	.cfi_def_cfa_offset 14
	.cfi_offset 14, -13
	push r15
	.cfi_def_cfa_offset 15
	.cfi_offset 15, -14
	push r16
	.cfi_def_cfa_offset 16
	.cfi_offset 16, -15
	push r17
	.cfi_def_cfa_offset 17
	.cfi_offset 17, -16
	push r28
	.cfi_def_cfa_offset 18
	.cfi_offset 28, -17
	push r29
	.cfi_def_cfa_offset 19
	.cfi_offset 29, -18
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,10
	.cfi_def_cfa_offset 29
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 10 */
/* stack size = 26 */
.L__stack_usage = 26
	movw r12,r24
	movw r8,r20
	movw r10,r22
	.loc 1 4265 0
	mov r17,r24
	mov r16,r13
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call validate
.LVL888:
	.loc 1 4266 0
	cpse r24,__zero_reg__
	rjmp .L452
	.loc 1 4266 0 is_stmt 0 discriminator 1
	movw r26,r12
	adiw r26,15
	ld r24,X
	sbiw r26,15
.LVL889:
	.loc 1 4272 0 is_stmt 1 discriminator 1
	cpse r24,__zero_reg__
	rjmp .L452
	.loc 1 4331 0
	adiw r26,10
	ld r24,X+
	ld r25,X+
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
.LVL890:
	cp r24,r8
	cpc r25,r9
	cpc r26,r10
	cpc r27,r11
	brsh .L453
	.loc 1 4331 0 is_stmt 0 discriminator 1
	movw r30,r12
	ldd r18,Z+14
	sbrc r18,1
	rjmp .L453
	.loc 1 4332 0 is_stmt 1
	movw r8,r24
	movw r10,r26
.LVL891:
.L453:
	.loc 1 4334 0
	movw r30,r12
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
.LVL892:
	.loc 1 4335 0
	std Z+16,__zero_reg__
	std Z+17,__zero_reg__
	std Z+18,__zero_reg__
	std Z+19,__zero_reg__
	.loc 1 4336 0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	brne .+2
	rjmp .L474
	.loc 1 4337 0
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r4,Z+9
	ldd r5,Z+10
	mov r6,__zero_reg__
	mov r7,__zero_reg__
	mov r0,r19
	ldi r19,9
	1:
	lsl r4
	rol r5
	rol r6
	rol r7
	dec r19
	brne 1b
	mov r19,r0
.LVL893:
	.loc 1 4338 0
	sbiw r24,0
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brne .+2
	rjmp .L454
	.loc 1 4339 0 discriminator 1
	movw r18,r24
	movw r20,r26
	subi r18,1
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	std Y+3,r18
	std Y+4,r19
	std Y+5,r20
	std Y+6,r21
	.loc 1 4338 0 discriminator 1
	movw r24,r10
	movw r22,r8
	subi r22,1
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	std Y+7,r18
	std Y+8,r19
	std Y+9,r20
	std Y+10,r21
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+5
	ldd r25,Y+6
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
.LVL894:
	cp r24,r18
	cpc r25,r19
	cpc r26,r20
	cpc r27,r21
	brlo .L454
	.loc 1 4340 0
	clr r24
	clr r25
	movw r26,r24
	sub r24,r4
	sbc r25,r5
	sbc r26,r6
	sbc r27,r7
	ldd r18,Y+3
	ldd r19,Y+4
	ldd r20,Y+5
	ldd r21,Y+6
	and r24,r18
	and r25,r19
	and r26,r20
	and r27,r21
	movw r30,r12
	std Z+16,r24
	std Z+17,r25
	std Z+18,r26
	std Z+19,r27
	.loc 1 4341 0
	sub r8,r24
	sbc r9,r25
	sbc r10,r26
	sbc r11,r27
.LVL895:
	.loc 1 4342 0
	ldd r20,Z+20
	ldd r21,Z+21
	ldd r22,Z+22
	ldd r23,Z+23
.LVL896:
	rjmp .L455
.LVL897:
.L454:
	.loc 1 4344 0
	movw r26,r12
	adiw r26,6
	ld r20,X+
	ld r21,X+
	ld r22,X+
	ld r23,X
	sbiw r26,6+3
.LVL898:
	.loc 1 4346 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L456
	.loc 1 4347 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
.LVL899:
	movw r24,r12
	call create_chain
.LVL900:
	movw r20,r22
	movw r22,r24
.LVL901:
	.loc 1 4348 0
	cpi r20,1
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L457
	.loc 1 4348 0 is_stmt 0 discriminator 1
	ldi r24,lo8(2)
	movw r30,r12
	std Z+15,r24
	rjmp .L452
.L457:
	.loc 1 4349 0 is_stmt 1
	cpi r20,-1
	ldi r31,-1
	cpc r21,r31
	cpc r22,r31
	cpc r23,r31
	brne .L458
	.loc 1 4349 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r26,r12
	adiw r26,15
	st X,r24
	rjmp .L452
.L458:
	.loc 1 4350 0 is_stmt 1
	movw r30,r12
	std Z+6,r20
	std Z+7,r21
	std Z+8,r22
	std Z+9,r23
.L456:
	.loc 1 4353 0
	movw r26,r12
	adiw r26,20
	st X+,r20
	st X+,r21
	st X+,r22
	st X,r23
	sbiw r26,20+3
.L455:
	.loc 1 4355 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .+2
	rjmp .L475
	.loc 1 4356 0
	cp r4,r8
	cpc r5,r9
	cpc r6,r10
	cpc r7,r11
	brlo .+2
	rjmp .L460
.L480:
	.loc 1 4357 0
	sub r8,r4
	sbc r9,r5
	sbc r10,r6
	sbc r11,r7
.LVL902:
	movw r30,r12
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	add r24,r4
	adc r25,r5
	adc r26,r6
	adc r27,r7
	std Z+16,r24
	std Z+17,r25
	std Z+18,r26
	std Z+19,r27
	.loc 1 4359 0
	ldd r24,Z+14
	sbrs r24,1
	rjmp .L461
	.loc 1 4364 0
	mov r24,r17
	mov r25,r16
	call create_chain
.LVL903:
	movw r20,r22
	movw r22,r24
.LVL904:
	.loc 1 4365 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L462
	rjmp .L476
.L461:
	.loc 1 4371 0
	mov r24,r17
	mov r25,r16
	call get_fat
.LVL905:
	movw r20,r22
	movw r22,r24
.LVL906:
.L462:
	.loc 1 4373 0
	cpi r20,-1
	ldi r31,-1
	cpc r21,r31
	cpc r22,r31
	cpc r23,r31
	brne .L463
	.loc 1 4373 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r26,r12
	adiw r26,15
	st X,r24
	rjmp .L452
.L463:
	.loc 1 4374 0 is_stmt 1
	cpi r20,2
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brlo .L464
	.loc 1 4374 0 is_stmt 0 discriminator 2
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r24,Z+19
	ldd r25,Z+20
	ldd r26,Z+21
	ldd r27,Z+22
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L465
.L464:
	.loc 1 4374 0 discriminator 3
	ldi r24,lo8(2)
	movw r30,r12
	std Z+15,r24
	rjmp .L452
.L465:
	.loc 1 4375 0 is_stmt 1
	movw r26,r12
	adiw r26,20
	st X+,r20
	st X+,r21
	st X+,r22
	st X,r23
	sbiw r26,20+3
.LVL907:
	.loc 1 4356 0
	cp r4,r8
	cpc r5,r9
	cpc r6,r10
	cpc r7,r11
	brsh .+2
	rjmp .L480
.LVL908:
.L460:
	.loc 1 4377 0
	movw r30,r12
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	add r24,r8
	adc r25,r9
	adc r26,r10
	adc r27,r11
	std Z+16,r24
	std Z+17,r25
	std Z+18,r26
	std Z+19,r27
	.loc 1 4378 0
	movw r26,r10
	movw r24,r8
	andi r25,1
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L477
	.loc 1 4379 0
	ldd r24,Y+1
	ldd r25,Y+2
	call clst2sect
.LVL909:
	.loc 1 4380 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .L467
	.loc 1 4380 0 is_stmt 0 discriminator 1
	ldi r24,lo8(2)
	movw r26,r12
	adiw r26,15
	st X,r24
	rjmp .L452
.L467:
	.loc 1 4381 0 is_stmt 1
	mov r0,r23
	ldi r23,9
	1:
	lsr r11
	ror r10
	ror r9
	ror r8
	dec r23
	brne 1b
	mov r23,r0
.LVL910:
	add r8,r22
	adc r9,r23
	adc r10,r24
	adc r11,r25
.LVL911:
	rjmp .L459
.LVL912:
.L475:
	.loc 1 4335 0
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
.LVL913:
	rjmp .L459
.LVL914:
.L476:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
.LVL915:
	rjmp .L459
.LVL916:
.L477:
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
.LVL917:
.L459:
	.loc 1 4385 0
	movw r30,r12
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	ldd r20,Z+10
	ldd r21,Z+11
	ldd r22,Z+12
	ldd r23,Z+13
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brsh .L468
	.loc 1 4386 0
	std Z+10,r24
	std Z+11,r25
	std Z+12,r26
	std Z+13,r27
	.loc 1 4387 0
	ldd r18,Z+14
	ori r18,lo8(64)
	std Z+14,r18
.L468:
	.loc 1 4389 0
	andi r25,1
	clr r26
	clr r27
	or r24,r25
	or r24,r26
	or r24,r27
	brne .+2
	rjmp .L478
	.loc 1 4389 0 is_stmt 0 discriminator 1
	movw r26,r12
	adiw r26,24
	ld r16,X+
	ld r17,X+
	ld r18,X+
	ld r19,X
	sbiw r26,24+3
	cp r8,r16
	cpc r9,r17
	cpc r10,r18
	cpc r11,r19
	breq .L479
	.loc 1 4392 0 is_stmt 1
	adiw r26,14
	ld r24,X
	tst r24
	brge .L469
	.loc 1 4393 0
	movw r20,r12
	subi r20,-34
	sbci r21,-1
	ldi r22,lo8(-128)
	ldd r30,Y+1
	ldd r31,Y+2
	clr r14
	inc r14
	mov r15,__zero_reg__
	ldd r24,Z+1
	call disk_write
.LVL918:
	tst r24
	breq .L470
	.loc 1 4393 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r30,r12
	std Z+15,r24
	rjmp .L452
.L470:
	.loc 1 4394 0 is_stmt 1
	movw r26,r12
	adiw r26,14
	ld r24,X
	sbiw r26,14
	andi r24,lo8(127)
	adiw r26,14
	st X,r24
.L469:
	.loc 1 4397 0
	ldd r30,Y+1
	ldd r31,Y+2
	ldi r16,lo8(1)
	ldi r17,0
	movw r20,r10
	movw r18,r8
	movw r22,r12
	subi r22,-34
	sbci r23,-1
	ldd r24,Z+1
	call disk_read
.LVL919:
	tst r24
	breq .L471
	.loc 1 4397 0 is_stmt 0 discriminator 1
	ldi r24,lo8(1)
	movw r30,r12
	std Z+15,r24
	rjmp .L452
.L471:
	.loc 1 4399 0 is_stmt 1
	movw r26,r12
	adiw r26,24
	st X+,r8
	st X+,r9
	st X+,r10
	st X,r11
	sbiw r26,24+3
	.loc 1 4403 0
	ldi r24,0
	rjmp .L452
.LVL920:
.L474:
	ldi r24,0
.LVL921:
	rjmp .L452
.LVL922:
.L478:
	ldi r24,0
	rjmp .L452
.L479:
	ldi r24,0
.LVL923:
.L452:
/* epilogue start */
	.loc 1 4404 0
	adiw r28,10
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
.LVL924:
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.cfi_endproc
.LFE43:
	.size	f_lseek, .-f_lseek
	.section	.text.f_opendir,code
.global	f_opendir
	.type	f_opendir, @function
f_opendir:
.LFB44:
	.loc 1 4417 0
	.cfi_startproc
.LVL925:
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
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,5
	.cfi_def_cfa_offset 12
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 5 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r20
	std Y+4,r21
	std Y+5,r22
	.loc 1 4423 0
	sbiw r24,0
	breq .L489
	movw r16,r24
	.loc 1 4426 0
	ldi r20,0
.LVL926:
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r28
.LVL927:
	adiw r24,3
	call find_volume
.LVL928:
	.loc 1 4427 0
	cpse r24,__zero_reg__
	rjmp .L487
	.loc 1 4428 0
	ldd r24,Y+1
	ldd r25,Y+2
.LVL929:
	movw r30,r16
	st Z,r24
	std Z+1,r25
	.loc 1 4430 0
	ldd r20,Y+3
	ldd r21,Y+4
	ldd r22,Y+5
	movw r24,r16
	call follow_path
.LVL930:
	.loc 1 4431 0
	cpse r24,__zero_reg__
	rjmp .L485
	.loc 1 4432 0
	movw r30,r16
	ldd r24,Z+39
.LVL931:
	tst r24
	brlt .L486
	.loc 1 4433 0
	ldd r24,Z+4
	sbrs r24,4
	rjmp .L490
	.loc 1 4443 0
	ldd r20,Z+26
	ldd r21,Z+27
	ldi r22,lo8(-128)
	ldd r24,Y+1
	ldd r25,Y+2
	call ld_clust
.LVL932:
	movw r30,r16
	std Z+6,r22
	std Z+7,r23
	std Z+8,r24
	std Z+9,r25
	rjmp .L486
.LVL933:
.L488:
	.loc 1 4467 0
	tst r24
	breq .L491
	rjmp .L487
.LVL934:
.L490:
	.loc 1 4446 0
	ldi r24,lo8(5)
.L487:
.LVL935:
	.loc 1 4467 0 discriminator 1
	movw r30,r16
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	rjmp .L493
.LVL936:
.L489:
	.loc 1 4423 0
	ldi r24,lo8(9)
.LVL937:
	rjmp .L493
.LVL938:
.L491:
	.loc 1 4469 0
	ldi r24,0
.LVL939:
	rjmp .L493
.L486:
.LVL940:
	.loc 1 4450 0
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r24,Z+5
	ldd r25,Z+6
	movw r30,r16
	std Z+2,r24
	std Z+3,r25
	.loc 1 4451 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r16
	call dir_sdi
.LVL941:
	.loc 1 4465 0
	cpi r24,lo8(4)
	brne .L488
	ldi r24,lo8(5)
.LVL942:
	rjmp .L487
.LVL943:
.L492:
	ldi r24,lo8(5)
.LVL944:
	rjmp .L487
.LVL945:
.L485:
	cpi r24,lo8(4)
	breq .L492
	rjmp .L487
.LVL946:
.L493:
/* epilogue start */
	.loc 1 4470 0
	adiw r28,5
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE44:
	.size	f_opendir, .-f_opendir
	.section	.text.f_closedir,code
.global	f_closedir
	.type	f_closedir, @function
f_closedir:
.LFB45:
	.loc 1 4482 0
	.cfi_startproc
.LVL947:
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
	push __zero_reg__
	push __zero_reg__
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	.loc 1 4487 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call validate
.LVL948:
	.loc 1 4488 0
	cpse r24,__zero_reg__
	rjmp .L495
	.loc 1 4493 0
	movw r30,r16
	st Z,__zero_reg__
	std Z+1,__zero_reg__
.L495:
/* epilogue start */
	.loc 1 4500 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL949:
	ret
	.cfi_endproc
.LFE45:
	.size	f_closedir, .-f_closedir
	.section	.text.f_readdir,code
.global	f_readdir
	.type	f_readdir, @function
f_readdir:
.LFB46:
	.loc 1 4513 0
	.cfi_startproc
.LVL950:
	push r12
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r15
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
	push __zero_reg__
	push __zero_reg__
	.cfi_def_cfa_offset 12
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r16,r24
	movw r12,r22
	.loc 1 4519 0
	movw r22,r28
.LVL951:
	subi r22,-1
	sbci r23,-1
	call validate
.LVL952:
	mov r15,r24
.LVL953:
	.loc 1 4520 0
	cpse r24,__zero_reg__
	rjmp .L499
	.loc 1 4521 0
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .L498
	.loc 1 4522 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r16
	call dir_sdi
.LVL954:
	rjmp .L497
.LVL955:
.L498:
	.loc 1 4525 0
	ldi r22,0
	ldi r23,0
	movw r24,r16
	call dir_read
.LVL956:
	.loc 1 4527 0
	mov r25,r24
	andi r25,lo8(-5)
	brne .L497
.LVL957:
	.loc 1 4528 0
	movw r22,r12
	movw r24,r16
	call get_fileinfo
.LVL958:
	.loc 1 4529 0
	ldi r22,0
	ldi r23,0
	movw r24,r16
	call dir_next
.LVL959:
	.loc 1 4530 0
	cpi r24,lo8(4)
	brne .L497
	mov r24,r15
.LVL960:
	rjmp .L497
.LVL961:
.L499:
.L497:
/* epilogue start */
	.loc 1 4536 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL962:
	pop r15
	pop r13
	pop r12
.LVL963:
	ret
	.cfi_endproc
.LFE46:
	.size	f_readdir, .-f_readdir
	.section	.text.f_findnext,code
.global	f_findnext
	.type	f_findnext, @function
f_findnext:
.LFB47:
	.loc 1 4549 0
	.cfi_startproc
.LVL964:
	push r6
	.cfi_def_cfa_offset 4
	.cfi_offset 6, -3
	push r7
	.cfi_def_cfa_offset 5
	.cfi_offset 7, -4
	push r8
	.cfi_def_cfa_offset 6
	.cfi_offset 8, -5
	push r10
	.cfi_def_cfa_offset 7
	.cfi_offset 10, -6
	push r11
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -7
	push r13
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
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
	movw r10,r24
	movw r28,r22
	.loc 1 4556 0
	movw r6,r22
	ldi r24,9
	add r6,r24
	adc r7,__zero_reg__
.LVL965:
	ldi r30,lo8(-128)
	mov r8,r30
.LVL966:
.L502:
	.loc 1 4554 0
	movw r22,r28
	movw r24,r10
	call f_readdir
.LVL967:
	mov r13,r24
.LVL968:
	.loc 1 4555 0
	cpse r24,__zero_reg__
	rjmp .L501
	.loc 1 4555 0 is_stmt 0 discriminator 1
	sbiw r28,0
	breq .L501
	.loc 1 4555 0 discriminator 2
	ldd r24,Y+9
	tst r24
	breq .L501
	.loc 1 4556 0 is_stmt 1
	movw r30,r10
	ldd r22,Z+40
	ldd r23,Z+41
	ldd r24,Z+42
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	mov r20,r8
	movw r18,r6
	call pattern_matching
.LVL969:
	or r24,r25
	breq .L502
.L501:
	.loc 1 4562 0
	mov r24,r13
/* epilogue start */
	pop r29
	pop r28
.LVL970:
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL971:
	pop r11
	pop r10
.LVL972:
	pop r8
	pop r7
	pop r6
.LVL973:
	ret
	.cfi_endproc
.LFE47:
	.size	f_findnext, .-f_findnext
	.section	.text.f_findfirst,code
.global	f_findfirst
	.type	f_findfirst, @function
f_findfirst:
.LFB48:
	.loc 1 4576 0
	.cfi_startproc
.LVL974:
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
	push r28
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r28,r24
	movw r12,r22
	.loc 1 4580 0
	std Y+40,r14
	std Y+41,r15
	std Y+42,r16
	.loc 1 4581 0
	mov r22,r20
	movw r20,r18
	call f_opendir
.LVL975:
	.loc 1 4582 0
	cpse r24,__zero_reg__
	rjmp .L505
	.loc 1 4583 0
	movw r22,r12
	movw r24,r28
.LVL976:
	call f_findnext
.LVL977:
.L505:
/* epilogue start */
	.loc 1 4586 0
	pop r29
	pop r28
.LVL978:
	pop r16
	pop r15
	pop r14
.LVL979:
	pop r13
	pop r12
.LVL980:
	ret
	.cfi_endproc
.LFE48:
	.size	f_findfirst, .-f_findfirst
	.section	.text.f_stat,code
.global	f_stat
	.type	f_stat, @function
f_stat:
.LFB49:
	.loc 1 4601 0
	.cfi_startproc
.LVL981:
	push r14
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r17
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,46
	.cfi_def_cfa_offset 54
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 46 */
/* stack size = 51 */
.L__stack_usage = 51
	std Y+44,r22
	std Y+45,r23
	std Y+46,r24
	movw r14,r20
	.loc 1 4608 0
	ldi r20,0
.LVL982:
	movw r22,r28
.LVL983:
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,44
	call find_volume
.LVL984:
	mov r17,r24
.LVL985:
	.loc 1 4609 0
	cpse r24,__zero_reg__
	rjmp .L507
	.loc 1 4611 0
	ldd r20,Y+44
	ldd r21,Y+45
	ldd r22,Y+46
	movw r24,r28
	adiw r24,1
	call follow_path
.LVL986:
	mov r17,r24
.LVL987:
	.loc 1 4612 0
	cpse r24,__zero_reg__
	rjmp .L507
	.loc 1 4613 0
	ldd r24,Y+40
	tst r24
	brlt .L508
	.loc 1 4616 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L507
	.loc 1 4616 0 is_stmt 0 discriminator 1
	movw r22,r14
	movw r24,r28
	adiw r24,1
	call get_fileinfo
.LVL988:
	rjmp .L507
.L508:
	.loc 1 4614 0 is_stmt 1
	ldi r17,lo8(6)
.LVL989:
.L507:
	.loc 1 4623 0
	mov r24,r17
/* epilogue start */
	adiw r28,46
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r17
.LVL990:
	pop r15
	pop r14
.LVL991:
	ret
	.cfi_endproc
.LFE49:
	.size	f_stat, .-f_stat
	.section	.text.f_getfree,code
.global	f_getfree
	.type	f_getfree, @function
f_getfree:
.LFB50:
	.loc 1 4637 0
	.cfi_startproc
.LVL992:
	push r3
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,25
	.cfi_def_cfa_offset 45
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 25 */
/* stack size = 42 */
.L__stack_usage = 42
	std Y+17,r22
	std Y+18,r23
	std Y+19,r24
	std Y+24,r20
	std Y+25,r21
	movw r16,r18
	.loc 1 4646 0
	ldi r20,0
.LVL993:
	movw r22,r28
.LVL994:
	subi r22,-1
	sbci r23,-1
	movw r24,r28
	adiw r24,17
	call find_volume
.LVL995:
	mov r3,r24
.LVL996:
	.loc 1 4647 0
	cpse r24,__zero_reg__
	rjmp .L510
	.loc 1 4648 0
	ldd r30,Y+1
	ldd r31,Y+2
	movw r26,r16
	st X+,r30
	st X,r31
	.loc 1 4650 0
	ldd r24,Z+15
	ldd r25,Z+16
	ldd r26,Z+17
	ldd r27,Z+18
	ldd r12,Z+19
	ldd r13,Z+20
	ldd r14,Z+21
	ldd r15,Z+22
	movw r22,r14
	movw r20,r12
	subi r20,2
	sbc r21,__zero_reg__
	sbc r22,__zero_reg__
	sbc r23,__zero_reg__
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brlo .L511
	.loc 1 4651 0
	ldd r30,Y+24
	ldd r31,Y+25
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	rjmp .L510
.L511:
.LVL997:
	.loc 1 4655 0
	ld r24,Z
	cpi r24,lo8(1)
	brne .L512
.LVL998:
	.loc 1 4656 0
	std Y+3,r30
	std Y+4,r31
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	set
	bld r12,1
	.loc 1 4654 0
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
.LVL999:
.L515:
	.loc 1 4658 0
	movw r22,r14
	movw r20,r12
	movw r24,r28
	adiw r24,3
	call get_fat
.LVL1000:
	.loc 1 4659 0
	cpi r22,-1
	ldi r31,-1
	cpc r23,r31
	cpc r24,r31
	cpc r25,r31
	brne .+2
	rjmp .L522
	.loc 1 4660 0
	cpi r22,1
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L523
	.loc 1 4661 0
	or r22,r23
	or r22,r24
	or r22,r25
	brne .L514
	.loc 1 4661 0 is_stmt 0 discriminator 1
	ldi r18,-1
	sub r4,r18
	sbc r5,r18
	sbc r6,r18
	sbc r7,r18
.LVL1001:
.L514:
	.loc 1 4662 0 is_stmt 1
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	sbc r14,r24
	sbc r15,r24
.LVL1002:
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r24,Z+19
	ldd r25,Z+20
	ldd r26,Z+21
	ldd r27,Z+22
	cp r12,r24
	cpc r13,r25
	cpc r14,r26
	cpc r15,r27
	brlo .L515
	rjmp .L513
.LVL1003:
.L512:
	.loc 1 4687 0
	ldd r8,Z+31
	ldd r9,Z+32
	ldd r10,Z+33
	ldd r11,Z+34
.LVL1004:
	.loc 1 4688 0
	ldi r16,0
	ldi r17,0
.LVL1005:
	.loc 1 4654 0
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
.LVL1006:
.L521:
	.loc 1 4690 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L516
.LVL1007:
	.loc 1 4691 0
	movw r26,r10
	movw r24,r8
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	std Y+20,r24
	std Y+21,r25
	std Y+22,r26
	std Y+23,r27
.LVL1008:
	movw r22,r10
	movw r20,r8
	ldd r24,Y+1
	ldd r25,Y+2
.LVL1009:
	call move_window
.LVL1010:
	.loc 1 4692 0
	cpse r24,__zero_reg__
	rjmp .L524
	.loc 1 4691 0
	ldd r8,Y+20
	ldd r9,Y+21
	ldd r10,Y+22
	ldd r11,Y+23
.LVL1011:
.L516:
	.loc 1 4694 0
	ldd r30,Y+1
	ldd r31,Y+2
	ld r24,Z
	cpi r24,lo8(2)
	brne .L517
	.loc 1 4695 0
	adiw r30,47
	add r30,r16
	adc r31,r17
	movw r24,r30
	ldi r26,lo8(-128)
.LVL1012:
.LBB162:
.LBB163:
	.loc 1 584 0
	movw r18,r24
	mov r20,r26
	subi r18,-1
	sbci r19,-1
	sbci r20,-1
.LVL1013:
	.loc 1 585 0
	movw r30,r18
	mov r21,r20
	call __xload_1
	mov r18,r22
.LVL1014:
	ldi r19,0
	mov r19,r18
	clr r18
.LVL1015:
.LBE163:
.LBE162:
	.loc 1 4695 0
	movw r30,r24
	mov r21,r26
	call __xload_1
	or r18,r22
	or r18,r19
	brne .L518
	.loc 1 4695 0 is_stmt 0 discriminator 1
	ldi r25,-1
	sub r4,r25
	sbc r5,r25
	sbc r6,r25
	sbc r7,r25
.LVL1016:
.L518:
	.loc 1 4696 0 is_stmt 1
	subi r16,-2
	sbci r17,-1
.LVL1017:
	rjmp .L519
.LVL1018:
.L517:
	.loc 1 4698 0
	adiw r30,47
	add r30,r16
	adc r31,r17
	movw r22,r30
	ldi r24,lo8(-128)
	call ld_dword
.LVL1019:
	movw r26,r24
	movw r24,r22
	andi r27,15
	or r24,r25
	or r24,r26
	or r24,r27
	brne .L520
	.loc 1 4698 0 is_stmt 0 discriminator 1
	ldi r26,-1
	sub r4,r26
	sbc r5,r26
	sbc r6,r26
	sbc r7,r26
.LVL1020:
.L520:
	.loc 1 4699 0 is_stmt 1
	subi r16,-4
	sbci r17,-1
.LVL1021:
.L519:
	.loc 1 4701 0
	andi r17,1
.LVL1022:
	.loc 1 4702 0
	ldi r27,1
	sub r12,r27
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
.LVL1023:
	breq .+2
	rjmp .L521
	rjmp .L513
.LVL1024:
.L522:
	.loc 1 4659 0
	clr r3
	inc r3
.LVL1025:
	rjmp .L513
.LVL1026:
.L523:
	.loc 1 4660 0
	set
	clr r3
	bld r3,1
.LVL1027:
	rjmp .L513
.LVL1028:
.L524:
	.loc 1 4691 0
	mov r3,r24
.LVL1029:
.L513:
	.loc 1 4705 0
	ldd r30,Y+24
	ldd r31,Y+25
	st Z,r4
	std Z+1,r5
	std Z+2,r6
	std Z+3,r7
	.loc 1 4706 0
	ldd r30,Y+1
	ldd r31,Y+2
	std Z+15,r4
	std Z+16,r5
	std Z+17,r6
	std Z+18,r7
	.loc 1 4707 0
	ldd r24,Z+4
	ori r24,lo8(1)
	std Z+4,r24
.LVL1030:
.L510:
	.loc 1 4712 0
	mov r24,r3
/* epilogue start */
	adiw r28,25
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
.LVL1031:
	ret
	.cfi_endproc
.LFE50:
	.size	f_getfree, .-f_getfree
	.section	.text.f_truncate,code
.global	f_truncate
	.type	f_truncate, @function
f_truncate:
.LFB51:
	.loc 1 4724 0
	.cfi_startproc
.LVL1032:
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
	push __zero_reg__
	push __zero_reg__
	.cfi_def_cfa_offset 13
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r12,r24
	.loc 1 4730 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call validate
.LVL1033:
	.loc 1 4731 0
	cpse r24,__zero_reg__
	rjmp .L544
	.loc 1 4731 0 is_stmt 0 discriminator 2
	movw r30,r12
	ldd r24,Z+15
.LVL1034:
	cpse r24,__zero_reg__
	rjmp .L544
	.loc 1 4732 0 is_stmt 1
	ldd r24,Z+14
.LVL1035:
	sbrs r24,1
	rjmp .L541
	.loc 1 4734 0
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	ldd r20,Z+10
	ldd r21,Z+11
	ldd r22,Z+12
	ldd r23,Z+13
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .+2
	rjmp .L542
	.loc 1 4735 0
	or r24,r25
	or r24,r26
	or r24,r27
	brne .L529
	.loc 1 4736 0
	ldd r20,Z+6
	ldd r21,Z+7
	ldd r22,Z+8
	ldd r23,Z+9
	ldi r16,0
	ldi r17,0
	movw r18,r16
	movw r24,r12
	call remove_chain
.LVL1036:
	mov r18,r24
.LVL1037:
	.loc 1 4737 0
	movw r30,r12
	std Z+6,__zero_reg__
	std Z+7,__zero_reg__
	std Z+8,__zero_reg__
	std Z+9,__zero_reg__
	rjmp .L530
.LVL1038:
.L529:
	.loc 1 4739 0
	movw r30,r12
	ldd r20,Z+20
	ldd r21,Z+21
	ldd r22,Z+22
	ldd r23,Z+23
	movw r24,r12
	call get_fat
.LVL1039:
	.loc 1 4742 0
	cpi r22,1
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L531
	.loc 1 4740 0
	ldi r18,lo8(1)
	cpi r22,-1
	ldi r31,-1
	cpc r23,r31
	cpc r24,r31
	cpc r25,r31
	breq .L532
	ldi r18,0
.L532:
	.loc 1 4743 0
	cpse r18,__zero_reg__
	rjmp .L533
	.loc 1 4743 0 is_stmt 0 discriminator 1
	ldd r30,Y+1
	ldd r31,Y+2
	ldd r16,Z+19
	ldd r17,Z+20
	ldd r18,Z+21
	ldd r19,Z+22
	cp r22,r16
	cpc r23,r17
	cpc r24,r18
	cpc r25,r19
	brsh .L534
	.loc 1 4744 0 is_stmt 1
	movw r30,r12
	ldd r16,Z+20
	ldd r17,Z+21
	ldd r18,Z+22
	ldd r19,Z+23
	movw r20,r22
	movw r22,r24
	movw r24,r12
	call remove_chain
.LVL1040:
	mov r18,r24
.LVL1041:
.L530:
	.loc 1 4747 0
	movw r30,r12
	ldd r20,Z+16
	ldd r21,Z+17
	ldd r22,Z+18
	ldd r23,Z+19
	std Z+10,r20
	std Z+11,r21
	std Z+12,r22
	std Z+13,r23
	.loc 1 4748 0
	ldd r25,Z+14
	ori r25,lo8(64)
	std Z+14,r25
	.loc 1 4750 0
	cpse r18,__zero_reg__
	rjmp .L538
.LVL1042:
.L537:
	.loc 1 4750 0 is_stmt 0 discriminator 1
	tst r25
	brge .L536
	.loc 1 4751 0 is_stmt 1
	movw r30,r12
	ldd r16,Z+24
	ldd r17,Z+25
	ldd r18,Z+26
	ldd r19,Z+27
	movw r20,r12
	subi r20,-34
	sbci r21,-1
	ldi r22,lo8(-128)
	ldd r30,Y+1
	ldd r31,Y+2
	clr r14
	inc r14
	mov r15,__zero_reg__
	ldd r24,Z+1
	call disk_write
.LVL1043:
	cpse r24,__zero_reg__
	rjmp .L543
	.loc 1 4754 0
	movw r30,r12
	ldd r24,Z+14
	andi r24,lo8(127)
	std Z+14,r24
	rjmp .L536
.LVL1044:
.L538:
	.loc 1 4758 0 discriminator 1
	movw r30,r12
	std Z+15,r18
	mov r24,r18
	rjmp .L544
.LVL1045:
.L541:
	.loc 1 4732 0
	ldi r24,lo8(7)
	rjmp .L544
.L542:
	.loc 1 4731 0
	ldi r24,0
	rjmp .L544
.LVL1046:
.L534:
	.loc 1 4747 0
	movw r30,r12
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	std Z+10,r24
	std Z+11,r25
	std Z+12,r26
	std Z+13,r27
	.loc 1 4748 0
	ldd r25,Z+14
	ori r25,lo8(64)
	std Z+14,r25
	rjmp .L537
.LVL1047:
.L533:
	.loc 1 4747 0
	movw r30,r12
	ldd r20,Z+16
	ldd r21,Z+17
	ldd r22,Z+18
	ldd r23,Z+19
	std Z+10,r20
	std Z+11,r21
	std Z+12,r22
	std Z+13,r23
	.loc 1 4748 0
	ldd r25,Z+14
	ori r25,lo8(64)
	std Z+14,r25
	rjmp .L538
.LVL1048:
.L543:
	.loc 1 4752 0
	ldi r18,lo8(1)
.LVL1049:
	rjmp .L538
.LVL1050:
.L536:
	.loc 1 4758 0
	ldi r24,0
	rjmp .L544
.LVL1051:
.L531:
	.loc 1 4747 0
	movw r30,r12
	ldd r24,Z+16
	ldd r25,Z+17
	ldd r26,Z+18
	ldd r27,Z+19
	std Z+10,r24
	std Z+11,r25
	std Z+12,r26
	std Z+13,r27
	.loc 1 4748 0
	ldd r24,Z+14
	ori r24,lo8(64)
	std Z+14,r24
	.loc 1 4742 0
	ldi r18,lo8(2)
	rjmp .L538
.LVL1052:
.L544:
/* epilogue start */
	.loc 1 4762 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
.LVL1053:
	ret
	.cfi_endproc
.LFE51:
	.size	f_truncate, .-f_truncate
	.section	.text.f_unlink,code
.global	f_unlink
	.type	f_unlink, @function
f_unlink:
.LFB52:
	.loc 1 4774 0
	.cfi_startproc
.LVL1054:
	push r8
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
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
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	subi r28,91
	sbc r29,__zero_reg__
	.cfi_def_cfa_offset 104
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 91 */
/* stack size = 101 */
.L__stack_usage = 101
	adiw r28,89-61
	std Y+61,r22
	std Y+62,r23
	std Y+63,r24
	sbiw r28,89-61
.LVL1055:
	.loc 1 4786 0
	ldi r20,lo8(2)
	movw r22,r28
.LVL1056:
	subi r22,-87
	sbci r23,-1
	movw r24,r28
	subi r24,-89
	sbci r25,-1
	call find_volume
.LVL1057:
	.loc 1 4787 0
	cpse r24,__zero_reg__
	rjmp .L557
	.loc 1 4788 0
	adiw r28,87-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,87-62
.LVL1058:
	std Y+1,r24
	std Y+2,r25
	.loc 1 4790 0
	adiw r28,89-61
	ldd r20,Y+61
	ldd r21,Y+62
	ldd r22,Y+63
	sbiw r28,89-61
	movw r24,r28
	adiw r24,1
	call follow_path
.LVL1059:
	.loc 1 4797 0
	cpse r24,__zero_reg__
	rjmp .L557
	.loc 1 4798 0
	ldd r24,Y+40
.LVL1060:
	tst r24
	brge .+2
	rjmp .L554
	.loc 1 4801 0
	ldd r17,Y+5
	sbrc r17,0
	rjmp .L555
	rjmp .L558
.LVL1061:
.L552:
	.loc 1 4823 0
	std Y+44,r14
	std Y+45,r15
	.loc 1 4824 0
	std Y+50,r8
	std Y+51,r9
	std Y+52,r10
	std Y+53,r11
	.loc 1 4831 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r28
	adiw r24,44
	call dir_sdi
.LVL1062:
	.loc 1 4832 0
	cpse r24,__zero_reg__
	rjmp .L557
	.loc 1 4833 0
	ldi r22,0
	ldi r23,0
	movw r24,r28
.LVL1063:
	adiw r24,44
	call dir_read
.LVL1064:
	.loc 1 4834 0
	tst r24
	breq .L556
	.loc 1 4835 0
	cpi r24,lo8(4)
	breq .L550
	rjmp .L557
.LVL1065:
.L553:
.LBB166:
.LBB167:
	.loc 1 2628 0
	ldd r30,Y+27
	ldd r31,Y+28
	ldi r24,lo8(-27)
.LVL1066:
	st Z,r24
	.loc 1 2629 0
	ldi r24,lo8(1)
	movw r30,r14
	std Z+3,r24
.LVL1067:
.LBE167:
.LBE166:
	.loc 1 4842 0
	cp r8,__zero_reg__
	cpc r9,__zero_reg__
	cpc r10,__zero_reg__
	cpc r11,__zero_reg__
	breq .L551
	.loc 1 4846 0
	ldi r16,0
	ldi r17,0
	movw r18,r16
	movw r22,r10
	movw r20,r8
	movw r24,r28
	adiw r24,1
	call remove_chain
.LVL1068:
	.loc 1 4849 0
	cpse r24,__zero_reg__
	rjmp .L557
.LVL1069:
.L551:
	.loc 1 4849 0 is_stmt 0 discriminator 1
	adiw r28,87-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,87-62
	call sync_fs
.LVL1070:
	rjmp .L557
.LVL1071:
.L558:
	.loc 1 4814 0 is_stmt 1
	adiw r28,87-62
	ldd r14,Y+62
	ldd r15,Y+63
	sbiw r28,87-62
	ldd r20,Y+27
	ldd r21,Y+28
	ldi r22,lo8(-128)
	movw r24,r14
	call ld_clust
.LVL1072:
	movw r8,r22
	movw r10,r24
.LVL1073:
	.loc 1 4816 0
	sbrc r17,4
	rjmp .L552
.LVL1074:
.L550:
.LBB169:
.LBB168:
	.loc 1 2604 0
	ldd r14,Y+1
	ldd r15,Y+2
.LVL1075:
	.loc 1 2626 0
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	movw r24,r14
	call move_window
.LVL1076:
	.loc 1 2627 0
	tst r24
	breq .L553
	rjmp .L557
.LVL1077:
.L556:
.LBE168:
.LBE169:
	.loc 1 4834 0
	ldi r24,lo8(7)
.LVL1078:
	rjmp .L557
.LVL1079:
.L554:
	.loc 1 4799 0
	ldi r24,lo8(6)
	rjmp .L557
.L555:
	.loc 1 4802 0
	ldi r24,lo8(7)
.LVL1080:
.L557:
/* epilogue start */
	.loc 1 4856 0
	subi r28,-91
	sbci r29,-1
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE52:
	.size	f_unlink, .-f_unlink
	.section	.text.f_mkdir,code
.global	f_mkdir
	.type	f_mkdir, @function
f_mkdir:
.LFB53:
	.loc 1 4868 0
	.cfi_startproc
.LVL1081:
	push r8
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r13
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r16
	.cfi_def_cfa_offset 11
	.cfi_offset 16, -10
	push r17
	.cfi_def_cfa_offset 12
	.cfi_offset 17, -11
	push r28
	.cfi_def_cfa_offset 13
	.cfi_offset 28, -12
	push r29
	.cfi_def_cfa_offset 14
	.cfi_offset 29, -13
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	sbiw r28,62
	.cfi_def_cfa_offset 76
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 62 */
/* stack size = 73 */
.L__stack_usage = 73
	std Y+60,r22
	std Y+61,r23
	std Y+62,r24
	.loc 1 4877 0
	ldi r20,lo8(2)
	movw r22,r28
.LVL1082:
	subi r22,-58
	sbci r23,-1
	movw r24,r28
	adiw r24,60
	call find_volume
.LVL1083:
	mov r15,r24
.LVL1084:
	.loc 1 4878 0
	cpse r24,__zero_reg__
	rjmp .L570
	.loc 1 4879 0
	ldd r24,Y+58
	ldd r25,Y+59
	std Y+1,r24
	std Y+2,r25
	.loc 1 4881 0
	ldd r20,Y+60
	ldd r21,Y+61
	ldd r22,Y+62
	movw r24,r28
	adiw r24,1
	call follow_path
.LVL1085:
	mov r15,r24
.LVL1086:
	.loc 1 4882 0
	tst r24
	brne .+2
	rjmp .L569
	.loc 1 4886 0
	ldi r24,lo8(4)
	cpse r15,r24
	rjmp .L570
	.loc 1 4887 0
	ldd r24,Y+58
	ldd r25,Y+59
	std Y+44,r24
	std Y+45,r25
	.loc 1 4888 0
	ldi r20,0
	ldi r21,0
	movw r22,r20
	movw r24,r28
	adiw r24,44
	call create_chain
.LVL1087:
	movw r8,r22
	movw r10,r24
.LVL1088:
	.loc 1 4890 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L561
	.loc 1 4891 0
	cpi r22,1
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L562
	rjmp .L571
.L561:
.LVL1089:
	.loc 1 4893 0
	call get_fattime
.LVL1090:
	.loc 1 4890 0
	mov __tmp_reg__,r31
	ldi r31,lo8(7)
	mov r15,r31
	mov r31,__tmp_reg__
	rjmp .L565
.LVL1091:
.L566:
	.loc 1 4898 0
	ldd r24,Y+58
	ldd r25,Y+59
	ldi r20,lo8(11)
	ldi r21,0
	ldi r22,lo8(32)
	ldi r23,0
	adiw r24,47
	call mem_set
.LVL1092:
	.loc 1 4899 0
	ldd r24,Y+58
	ldd r25,Y+59
	mov __tmp_reg__,r31
	ldi r31,lo8(46)
	mov r15,r31
	mov r31,__tmp_reg__
.LVL1093:
	movw r30,r24
	std Z+47,r15
	.loc 1 4900 0
	ldi r18,lo8(16)
	std Z+58,r18
.LVL1094:
.LBB174:
.LBB175:
	.loc 1 626 0
	subi r30,-69
	sbci r31,-1
.LVL1095:
	st Z,r17
.LVL1096:
	.loc 1 627 0
	adiw r30,1
.LVL1097:
	st Z,r16
.LVL1098:
	.loc 1 628 0
	adiw r30,1
.LVL1099:
	st Z,r14
.LVL1100:
	.loc 1 629 0
	adiw r30,1
.LVL1101:
	st Z,r13
.LVL1102:
.LBE175:
.LBE174:
	.loc 1 4902 0
	movw r22,r24
	subi r22,-47
	sbci r23,-1
	movw r20,r10
	movw r18,r8
	call st_clust
.LVL1103:
	.loc 1 4903 0
	ldd r24,Y+58
	ldd r25,Y+59
	movw r20,r24
	subi r20,-47
	sbci r21,-1
	ldi r22,lo8(-128)
	ldi r18,lo8(32)
	ldi r19,0
	subi r24,-79
	sbci r25,-1
	call mem_cpy
.LVL1104:
	.loc 1 4904 0
	ldd r24,Y+58
	ldd r25,Y+59
	movw r30,r24
	subi r30,-80
	sbci r31,-1
	st Z,r15
.LVL1105:
	.loc 1 4905 0
	ldd r18,Y+7
	ldd r19,Y+8
	ldd r20,Y+9
	ldd r21,Y+10
	movw r22,r24
	subi r22,-79
	sbci r23,-1
	call st_clust
.LVL1106:
	.loc 1 4906 0
	ldd r30,Y+58
	ldd r31,Y+59
	ldi r24,lo8(1)
	std Z+3,r24
	.loc 1 4908 0
	movw r24,r28
	adiw r24,1
	call dir_register
.LVL1107:
	mov r15,r24
.LVL1108:
	.loc 1 4911 0
	cpse r24,__zero_reg__
	rjmp .L565
	.loc 1 4924 0
	ldd r30,Y+27
	ldd r31,Y+28
.LVL1109:
.LBB176:
.LBB177:
	.loc 1 626 0
	std Z+22,r17
.LVL1110:
	.loc 1 627 0
	std Z+23,r16
.LVL1111:
	.loc 1 628 0
	std Z+24,r14
.LVL1112:
	.loc 1 629 0
	std Z+25,r13
.LVL1113:
.LBE177:
.LBE176:
	.loc 1 4925 0
	ldd r22,Y+27
	ldd r23,Y+28
	movw r20,r10
	movw r18,r8
	ldd r24,Y+58
	ldd r25,Y+59
	call st_clust
.LVL1114:
	.loc 1 4926 0
	ldd r30,Y+27
	ldd r31,Y+28
	ldi r24,lo8(16)
	std Z+11,r24
	.loc 1 4927 0
	ldd r24,Y+58
	ldd r25,Y+59
	ldi r18,lo8(1)
	movw r30,r24
	std Z+3,r18
	.loc 1 4930 0
	call sync_fs
.LVL1115:
	mov r15,r24
.LVL1116:
	rjmp .L570
.LVL1117:
.L565:
	.loc 1 4933 0
	ldi r16,0
	ldi r17,0
	movw r18,r16
	movw r22,r10
	movw r20,r8
	movw r24,r28
	adiw r24,44
	call remove_chain
.LVL1118:
	rjmp .L570
.LVL1119:
.L569:
	.loc 1 4882 0
	set
	clr r15
	bld r15,3
.LVL1120:
	.loc 1 4939 0
	rjmp .L570
.LVL1121:
.L567:
	.loc 1 4893 0
	call get_fattime
.LVL1122:
	.loc 1 4892 0
	clr r15
	inc r15
	rjmp .L565
.LVL1123:
.L572:
	.loc 1 4893 0
	call get_fattime
.LVL1124:
	mov r17,r22
	mov r16,r23
	mov r14,r24
	mov r13,r25
.LVL1125:
	.loc 1 4895 0
	movw r22,r10
	movw r20,r8
	ldd r24,Y+58
	ldd r25,Y+59
	call dir_clear
.LVL1126:
	mov r15,r24
.LVL1127:
	.loc 1 4896 0
	cpse r24,__zero_reg__
	rjmp .L565
	rjmp .L566
.LVL1128:
.L571:
	.loc 1 4892 0
	cpi r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
	breq .L567
	rjmp .L572
.L562:
.LVL1129:
	.loc 1 4893 0
	call get_fattime
.LVL1130:
	.loc 1 4891 0
	set
	clr r15
	bld r15,1
	rjmp .L565
.LVL1131:
.L570:
	.loc 1 4940 0
	mov r24,r15
/* epilogue start */
	adiw r28,62
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
.LVL1132:
	pop r14
	pop r13
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE53:
	.size	f_mkdir, .-f_mkdir
	.section	.text.f_rename,code
.global	f_rename
	.type	f_rename, @function
f_rename:
.LFB54:
	.loc 1 4953 0
	.cfi_startproc
.LVL1133:
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
	push r29
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	subi r28,126
	sbc r29,__zero_reg__
	.cfi_def_cfa_offset 135
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 126 */
/* stack size = 132 */
.L__stack_usage = 132
	adiw r28,121-61
	std Y+61,r22
	std Y+62,r23
	std Y+63,r24
	sbiw r28,121-61
	adiw r28,124-61
	std Y+61,r18
	std Y+62,r19
	std Y+63,r20
	sbiw r28,124-61
	.loc 1 4962 0
	movw r24,r28
	subi r24,-124
	sbci r25,-1
	call get_ldnumber
.LVL1134:
	.loc 1 4963 0
	ldi r20,lo8(2)
	movw r22,r28
	subi r22,-87
	sbci r23,-1
	movw r24,r28
	subi r24,-121
	sbci r25,-1
	call find_volume
.LVL1135:
	.loc 1 4964 0
	cpse r24,__zero_reg__
	rjmp .L589
	.loc 1 4965 0
	adiw r28,87-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,87-62
.LVL1136:
	std Y+1,r24
	std Y+2,r25
	.loc 1 4967 0
	adiw r28,121-61
	ldd r20,Y+61
	ldd r21,Y+62
	ldd r22,Y+63
	sbiw r28,121-61
	movw r24,r28
	adiw r24,1
	call follow_path
.LVL1137:
	.loc 1 4968 0
	cpse r24,__zero_reg__
	rjmp .L589
	.loc 1 4968 0 is_stmt 0 discriminator 1
	ldd r24,Y+40
.LVL1138:
	andi r24,lo8(-96)
	breq .+2
	rjmp .L585
	rjmp .L590
.LVL1139:
.L581:
	.loc 1 5006 0 is_stmt 1
	ldd r20,Y+50
	ldd r21,Y+51
	ldd r22,Y+52
	ldd r23,Y+53
	ldd r24,Y+7
	ldd r25,Y+8
	ldd r26,Y+9
	ldd r27,Y+10
.LVL1140:
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	breq .+2
	rjmp .L586
	.loc 1 5006 0 is_stmt 0 discriminator 1
	ldd r20,Y+58
	ldd r21,Y+59
	ldd r22,Y+60
	ldd r23,Y+61
	ldd r24,Y+15
	ldd r25,Y+16
	ldd r26,Y+17
	ldd r27,Y+18
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	breq .+2
	rjmp .L587
.L583:
.LVL1141:
	.loc 1 5009 0 is_stmt 1
	movw r24,r28
	adiw r24,44
	call dir_register
.LVL1142:
	.loc 1 5010 0
	cpse r24,__zero_reg__
	rjmp .L589
	.loc 1 5011 0
	adiw r28,70-62
	ldd r16,Y+62
	ldd r17,Y+63
	sbiw r28,70-62
.LVL1143:
	.loc 1 5012 0
	ldi r20,lo8(89)
	ldi r21,0
	add r20,r28
	adc r21,r29
	subi r20,-13
	sbci r21,-1
	ldi r22,lo8(-128)
	ldi r18,lo8(19)
	ldi r19,0
	movw r24,r16
.LVL1144:
	adiw r24,13
	call mem_cpy
.LVL1145:
	.loc 1 5013 0
	adiw r28,100-63
	ldd r24,Y+63
	sbiw r28,100-63
	.loc 1 5014 0
	sbrs r24,4
	rjmp .L578
	.loc 1 5013 0
	movw r30,r16
	std Z+11,r24
	rjmp .L579
.L578:
	.loc 1 5014 0 discriminator 1
	ori r24,lo8(32)
	movw r30,r16
	std Z+11,r24
.L579:
	.loc 1 5015 0
	adiw r28,87-62
	ldd r14,Y+62
	ldd r15,Y+63
	sbiw r28,87-62
	ldi r24,lo8(1)
	movw r30,r14
	std Z+3,r24
	.loc 1 5016 0
	movw r30,r16
	ldd r24,Z+11
	sbrs r24,4
	rjmp .L580
	.loc 1 5016 0 is_stmt 0 discriminator 1
	ldd r20,Y+7
	ldd r21,Y+8
	ldd r22,Y+9
	ldd r23,Y+10
	ldd r24,Y+50
	ldd r25,Y+51
	ldd r26,Y+52
	ldd r27,Y+53
	cp r20,r24
	cpc r21,r25
	cpc r22,r26
	cpc r23,r27
	brne .+2
	rjmp .L580
	.loc 1 5017 0 is_stmt 1
	movw r20,r16
	ldi r22,lo8(-128)
	movw r24,r14
	call ld_clust
.LVL1146:
	movw r20,r22
	movw r22,r24
	movw r24,r14
	call clst2sect
.LVL1147:
	.loc 1 5018 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L588
	.loc 1 5022 0
	movw r20,r22
	movw r22,r24
	movw r24,r14
	call move_window
.LVL1148:
	.loc 1 5024 0
	cpse r24,__zero_reg__
	rjmp .L589
	.loc 1 5023 0 discriminator 1
	adiw r28,87-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,87-62
.LVL1149:
	.loc 1 5024 0 discriminator 1
	movw r30,r24
	subi r30,-80
	sbci r31,-1
	ld r18,Z
	cpi r18,lo8(46)
	breq .+2
	rjmp .L580
	.loc 1 5025 0
	ldd r18,Y+50
	ldd r19,Y+51
	ldd r20,Y+52
	ldd r21,Y+53
	.loc 1 5023 0
	movw r22,r24
	subi r22,-79
	sbci r23,-1
	.loc 1 5025 0
	call st_clust
.LVL1150:
	.loc 1 5026 0
	adiw r28,87-62
	ldd r30,Y+62
	ldd r31,Y+63
	sbiw r28,87-62
	ldi r24,lo8(1)
	std Z+3,r24
	rjmp .L580
.LVL1151:
.L584:
.LBB180:
.LBB181:
	.loc 1 2628 0
	ldd r30,Y+27
	ldd r31,Y+28
	ldi r24,lo8(-27)
.LVL1152:
	st Z,r24
	.loc 1 2629 0
	ldi r24,lo8(1)
	movw r30,r16
	std Z+3,r24
.LVL1153:
.LBE181:
.LBE180:
	.loc 1 5036 0
	adiw r28,87-62
	ldd r24,Y+62
	ldd r25,Y+63
	sbiw r28,87-62
	call sync_fs
.LVL1154:
	rjmp .L589
.LVL1155:
.L586:
	.loc 1 5006 0
	ldi r24,lo8(8)
	rjmp .L589
.L587:
	ldi r24,lo8(8)
	rjmp .L589
.L590:
.LVL1156:
	.loc 1 5002 0
	ldd r20,Y+27
	ldd r21,Y+28
	ldi r22,lo8(-128)
	ldi r18,lo8(32)
	ldi r19,0
	movw r24,r28
	subi r24,-89
	sbci r25,-1
	call mem_cpy
.LVL1157:
	.loc 1 5003 0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	ldi r22,lo8(-128)
	ldi r18,lo8(43)
	ldi r19,0
	movw r24,r28
	adiw r24,44
	call mem_cpy
.LVL1158:
	.loc 1 5004 0
	adiw r28,124-61
	ldd r20,Y+61
	ldd r21,Y+62
	ldd r22,Y+63
	sbiw r28,124-61
	movw r24,r28
	adiw r24,44
	call follow_path
.LVL1159:
	.loc 1 5005 0
	tst r24
	brne .+2
	rjmp .L581
	rjmp .L591
.LVL1160:
.L585:
	.loc 1 4968 0
	ldi r24,lo8(6)
	rjmp .L589
.LVL1161:
.L591:
	.loc 1 5008 0
	cpi r24,lo8(4)
	brne .L589
	rjmp .L583
.LVL1162:
.L580:
.LBB183:
.LBB182:
	.loc 1 2604 0
	ldd r16,Y+1
	ldd r17,Y+2
.LVL1163:
	.loc 1 2626 0
	ldd r20,Y+23
	ldd r21,Y+24
	ldd r22,Y+25
	ldd r23,Y+26
	movw r24,r16
	call move_window
.LVL1164:
	.loc 1 2627 0
	tst r24
	brne .+2
	rjmp .L584
	rjmp .L589
.LVL1165:
.L588:
.LBE182:
.LBE183:
	.loc 1 5019 0
	ldi r24,lo8(2)
.LVL1166:
.L589:
/* epilogue start */
	.loc 1 5045 0
	subi r28,-126
	sbci r29,-1
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE54:
	.size	f_rename, .-f_rename
	.section	.text.f_gets,code
.global	f_gets
	.type	f_gets, @function
f_gets:
.LFB55:
	.loc 1 6082 0
	.cfi_startproc
.LVL1167:
	push r8
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
	push r28
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
	rcall .
	rcall .
	.cfi_def_cfa_offset 21
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 6 */
/* stack size = 18 */
.L__stack_usage = 18
.LVL1168:
	.loc 1 6181 0
	movw r12,r22
	ldi r18,1
	sub r12,r18
	sbc r13,__zero_reg__
.LVL1169:
	.loc 1 6182 0
	cp __zero_reg__,r12
	cpc __zero_reg__,r13
	brge .L593
	movw r10,r20
	movw r8,r24
	movw r16,r24
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.LVL1170:
.L595:
	.loc 1 6183 0
	movw r18,r28
	subi r18,-5
	sbci r19,-1
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r10
	call f_read
.LVL1171:
	.loc 1 6184 0
	ldd r24,Y+5
	ldd r25,Y+6
	sbiw r24,1
	brne .L594
	.loc 1 6185 0
	ldd r25,Y+1
.LVL1172:
	.loc 1 6187 0
	subi r16,-1
	sbci r17,-1
.LVL1173:
	movw r30,r16
	sbiw r30,1
	st Z,r25
	ldi r24,-1
	sub r14,r24
	sbc r15,r24
.LVL1174:
	.loc 1 6188 0
	cpi r25,lo8(10)
	breq .L594
	.loc 1 6182 0
	cp r14,r12
	cpc r15,r13
	brlt .L595
.LVL1175:
.L594:
	.loc 1 6192 0
	movw r30,r16
	st Z,__zero_reg__
	.loc 1 6193 0
	or r14,r15
	breq .L597
	mov r24,r8
	mov r25,r9
	rjmp .L599
.L597:
	ldi r24,0
	ldi r25,0
	rjmp .L599
.LVL1176:
.L593:
	.loc 1 6192 0
	movw r30,r24
	st Z,__zero_reg__
	.loc 1 6193 0
	ldi r24,0
.LVL1177:
	ldi r25,0
.LVL1178:
.L599:
/* epilogue start */
	.loc 1 6194 0
	adiw r28,6
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
.LVL1179:
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE55:
	.size	f_gets, .-f_gets
	.section	.text.f_putc,code
.global	f_putc
	.type	f_putc, @function
f_putc:
.LFB59:
	.loc 1 6377 0
	.cfi_startproc
.LVL1180:
	push r14
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -3
	push r15
	.cfi_def_cfa_offset 5
	.cfi_offset 15, -4
	push r17
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	subi r28,70
	sbc r29,__zero_reg__
	.cfi_def_cfa_offset 78
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 70 */
/* stack size = 75 */
.L__stack_usage = 75
	mov r17,r24
	movw r14,r22
.LVL1181:
.LBB186:
.LBB187:
	.loc 1 6367 0
	ldi r20,lo8(70)
	ldi r21,0
	ldi r22,0
	ldi r23,0
.LVL1182:
	movw r24,r28
.LVL1183:
	adiw r24,1
	call mem_set
.LVL1184:
	.loc 1 6368 0
	std Y+1,r14
	std Y+2,r15
.LVL1185:
.LBE187:
.LBE186:
	.loc 1 6382 0
	mov r22,r17
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1186:
	.loc 1 6383 0
	movw r24,r28
	adiw r24,1
	call putc_flush
.LVL1187:
/* epilogue start */
	.loc 1 6384 0
	subi r28,-70
	sbci r29,-1
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r17
.LVL1188:
	pop r15
	pop r14
.LVL1189:
	ret
	.cfi_endproc
.LFE59:
	.size	f_putc, .-f_putc
	.section	.text.f_puts,code
.global	f_puts
	.type	f_puts, @function
f_puts:
.LFB60:
	.loc 1 6397 0
	.cfi_startproc
.LVL1190:
	push r12
	.cfi_def_cfa_offset 4
	.cfi_offset 12, -3
	push r13
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r16
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	subi r28,70
	sbc r29,__zero_reg__
	.cfi_def_cfa_offset 80
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 70 */
/* stack size = 77 */
.L__stack_usage = 77
	movw r12,r22
	mov r14,r24
	movw r16,r20
.LVL1191:
.LBB190:
.LBB191:
	.loc 1 6367 0
	ldi r20,lo8(70)
	ldi r21,0
.LVL1192:
	ldi r22,0
	ldi r23,0
.LVL1193:
	movw r24,r28
	adiw r24,1
	call mem_set
.LVL1194:
	.loc 1 6368 0
	std Y+1,r16
	std Y+2,r17
.LBE191:
.LBE190:
	.loc 1 6402 0
	movw r30,r12
	mov r21,r14
	call __xload_1
	tst r22
	breq .L602
.L604:
	.loc 1 6402 0 is_stmt 0 discriminator 2
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	sbc r14,r24
.LVL1195:
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1196:
	movw r30,r12
	mov r21,r14
	call __xload_1
	cpse r22,__zero_reg__
	rjmp .L604
.L602:
	.loc 1 6403 0 is_stmt 1
	movw r24,r28
	adiw r24,1
	call putc_flush
.LVL1197:
/* epilogue start */
	.loc 1 6404 0
	subi r28,-70
	sbci r29,-1
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r17
	pop r16
.LVL1198:
	pop r14
	pop r13
	pop r12
.LVL1199:
	ret
	.cfi_endproc
.LFE60:
	.size	f_puts, .-f_puts
	.section	.text.f_printf,code
.global	f_printf
	.type	f_printf, @function
f_printf:
.LFB61:
	.loc 1 6418 0
	.cfi_startproc
.LVL1200:
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
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
	subi r28,106
	sbc r29,__zero_reg__
	.cfi_def_cfa_offset 127
	out __SP_L__,r28
	out __SP_H__,r29
/* prologue: function */
/* frame size = 106 */
/* stack size = 124 */
.L__stack_usage = 124
	subi r28,lo8(-130)
	sbci r29,hi8(-130)
	ld  r6,Y
	ldd r7,Y+1
	ldd r8,Y+2
	subi r28,lo8(130)
	sbci r29,hi8(130)
.LVL1201:
.LBB194:
.LBB195:
	.loc 1 6367 0
	ldi r20,lo8(70)
	ldi r21,0
	ldi r22,0
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call mem_set
.LVL1202:
	.loc 1 6368 0
	subi r28,lo8(-128)
	sbci r29,hi8(-128)
	ld r24,Y
	ldd r25,Y+1
	subi r28,lo8(128)
	sbci r29,hi8(128)
	std Y+1,r24
	std Y+2,r25
.LVL1203:
.LBE195:
.LBE194:
	.loc 1 6429 0
	movw r2,r28
	ldi r18,-123
	add r2,r18
	adc r3,__zero_reg__
.LVL1204:
.L607:
	.loc 1 6432 0
	movw r30,r6
	mov r21,r8
	call __xload_1
.LVL1205:
	.loc 1 6433 0
	tst r22
	brne .+2
	rjmp .L608
	.loc 1 6434 0
	cpi r22,lo8(37)
	breq .L609
	.loc 1 6432 0
	ldi r19,-1
	sub r6,r19
	sbc r7,r19
	sbc r8,r19
.LVL1206:
	.loc 1 6435 0
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1207:
	.loc 1 6436 0
	rjmp .L607
.LVL1208:
.L609:
	.loc 1 6439 0
	mov r26,r8
	movw r24,r6
	adiw r24,1
	adc r26,__zero_reg__
	movw r30,r24
	mov r21,r26
	call __xload_1
.LVL1209:
	mov r18,r22
.LVL1210:
	.loc 1 6440 0
	cpi r22,lo8(48)
	brne .L611
.LVL1211:
	.loc 1 6441 0
	mov r26,r8
	movw r24,r6
	adiw r24,2
	adc r26,__zero_reg__
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r18,r22
.LVL1212:
	ldi r20,3
	add r6,r20
	adc r7,__zero_reg__
	adc r8,__zero_reg__
.LVL1213:
	clr r9
	inc r9
	rjmp .L612
.LVL1214:
.L611:
	.loc 1 6443 0
	cpi r22,lo8(45)
	breq .L613
	.loc 1 6439 0
	ldi r21,2
	add r6,r21
	adc r7,__zero_reg__
	adc r8,__zero_reg__
.LVL1215:
	.loc 1 6438 0
	mov r9,__zero_reg__
	rjmp .L612
.LVL1216:
.L613:
	.loc 1 6444 0
	mov r26,r8
	movw r24,r6
	adiw r24,2
	adc r26,__zero_reg__
	movw r30,r24
	mov r21,r26
	call __xload_1
	mov r18,r22
.LVL1217:
	ldi r24,3
	add r6,r24
	adc r7,__zero_reg__
	adc r8,__zero_reg__
.LVL1218:
	set
	clr r9
	bld r9,1
.LVL1219:
.L612:
	.loc 1 6447 0
	cpi r18,lo8(42)
	breq .L614
	.loc 1 6451 0
	ldi r24,lo8(-48)
	add r24,r18
	cpi r24,lo8(10)
	brlo .L657
	ldi r16,0
	ldi r17,0
	rjmp .L616
.L614:
.LVL1220:
	.loc 1 6448 0
	movw r26,r2
	ld r16,X+
	ld r17,X
.LVL1221:
	.loc 1 6449 0
	movw r30,r6
	mov r21,r8
	call __xload_1
	mov r18,r22
.LVL1222:
	.loc 1 6448 0
	movw r30,r2
	adiw r30,2
.LVL1223:
	movw r2,r30
	.loc 1 6449 0
	ldi r31,-1
	sub r6,r31
	sbc r7,r31
	sbc r8,r31
.LVL1224:
	rjmp .L616
.LVL1225:
.L657:
	.loc 1 6451 0
	ldi r16,0
	ldi r17,0
.LVL1226:
.L615:
	.loc 1 6452 0
	movw r24,r16
	lsl r24
	rol r25
	lsl r16
	rol r17
	lsl r16
	rol r17
	lsl r16
	rol r17
.LVL1227:
	add r16,r24
	adc r17,r25
	add r16,r18
	adc r17,__zero_reg__
	subi r16,48
	sbc r17,__zero_reg__
.LVL1228:
	.loc 1 6453 0
	ldi r18,-1
	sub r6,r18
	sbc r7,r18
	sbc r8,r18
.LVL1229:
	mov r26,r8
	movw r24,r6
	sbiw r24,1
	sbc r26,__zero_reg__
	movw r30,r24
	mov r21,r26
	call __xload_1
.LVL1230:
	mov r18,r22
.LVL1231:
	.loc 1 6451 0
	ldi r24,lo8(-48)
	add r24,r22
	cpi r24,lo8(10)
	brlo .L615
.LVL1232:
.L616:
	.loc 1 6456 0
	mov r24,r18
	andi r24,lo8(-33)
	cpi r24,lo8(76)
	brne .L617
	.loc 1 6457 0
	mov r19,r9
	ori r19,lo8(4)
	mov r9,r19
.LVL1233:
	movw r30,r6
	mov r21,r8
	call __xload_1
	mov r18,r22
.LVL1234:
	ldi r20,-1
	sub r6,r20
	sbc r7,r20
	sbc r8,r20
.LVL1235:
.L617:
	.loc 1 6459 0
	tst r18
	brne .+2
	rjmp .L608
.LVL1236:
	.loc 1 6461 0
	ldi r24,lo8(-97)
	add r24,r18
	cpi r24,lo8(26)
	brsh .L658
	.loc 1 6461 0 is_stmt 0 discriminator 1
	ldi r19,lo8(-32)
	add r19,r18
.LVL1237:
	rjmp .L618
.LVL1238:
.L658:
	.loc 1 6460 0 is_stmt 1
	mov r19,r18
.LVL1239:
.L618:
	.loc 1 6462 0
	mov r24,r19
	ldi r25,0
	movw r30,r24
	subi r30,66
	sbc r31,__zero_reg__
	cpi r30,23
	cpc r31,__zero_reg__
	brlo .+2
	rjmp .L619
	clr r24
	subi r30,pm_lo8(-(.L621))
	sbci r31,pm_hi8(-(.L621))
	sbci r24,pm_hh8(-(.L621))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.f_printf,progmem
	.p2align	1
.L621:
	.section	.progmem.gcc_sw_table.f_printf,progmem
	.word gs(.L620)
	.word gs(.L622)
	.word gs(.L623)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L624)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L625)
	.word gs(.L619)
	.word gs(.L623)
	.word gs(.L619)
	.word gs(.L619)
	.word gs(.L626)
	.section	.text.f_printf,code
.L625:
	.loc 1 6464 0
	movw r30,r2
.LVL1240:
	.loc 1 6464 0
	ld r12,Z
	ldd r13,Z+1
	ldi r21,2
	add r2,r21
	adc r3,__zero_reg__
.LVL1241:
	.loc 1 6465 0
	movw r26,r12
	ld r22,X
	tst r22
	brne .+2
	rjmp .L627
	movw r30,r12
.LVL1242:
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	rjmp .L628
.LVL1243:
.L659:
	movw r4,r14
.LVL1244:
.L628:
	.loc 1 6465 0 is_stmt 0 discriminator 3
	movw r14,r4
	ldi r27,-1
	sub r14,r27
	sbc r15,r27
.LVL1245:
	adiw r30,1
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L659
	rjmp .L673
.LVL1246:
.L665:
	.loc 1 6465 0
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	.loc 1 6467 0 is_stmt 1
	clr r4
	inc r4
	mov r5,__zero_reg__
.LVL1247:
.L653:
	.loc 1 6467 0 is_stmt 0 discriminator 2
	movw r10,r14
.LVL1248:
.L630:
	ldi r22,lo8(32)
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1249:
	ldi r30,-1
	sub r10,r30
	sbc r11,r30
.LVL1250:
	cp r10,r16
	cpc r11,r17
	brlo .L630
	movw r18,r4
	sub r18,r14
	sbc r19,r15
	movw r14,r18
	add r14,r16
	adc r15,r17
.LVL1251:
	.loc 1 6469 0 is_stmt 1
	movw r26,r12
	ld r22,X
	tst r22
	breq .L631
.L632:
	.loc 1 6469 0 is_stmt 0 discriminator 2
	ldi r27,-1
	sub r12,r27
	sbc r13,r27
.LVL1252:
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1253:
	movw r30,r12
	ld r22,Z
	cpse r22,__zero_reg__
	rjmp .L632
.LVL1254:
.L631:
	.loc 1 6470 0 is_stmt 1 discriminator 1
	cp r14,r16
	cpc r15,r17
	brlo .+2
	rjmp .L607
.LVL1255:
.L633:
	.loc 1 6470 0 is_stmt 0 discriminator 2
	ldi r22,lo8(32)
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1256:
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
.LVL1257:
	cp r14,r16
	cpc r15,r17
	brlo .L633
	rjmp .L607
.LVL1258:
.L622:
	.loc 1 6474 0 is_stmt 1
	movw r30,r2
.LVL1259:
	.loc 1 6474 0
	ld r22,Z
	ldi r18,2
	add r2,r18
	adc r3,__zero_reg__
.LVL1260:
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1261:
	.loc 1 6474 0
	rjmp .L607
.LVL1262:
.L619:
	.loc 1 6490 0
	mov r22,r18
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1263:
	rjmp .L607
.LVL1264:
.L623:
	.loc 1 6494 0
	sbrs r9,2
	rjmp .L660
	.loc 1 6484 0
	ldi r26,lo8(10)
	rjmp .L652
.LVL1265:
.L664:
	.loc 1 6487 0
	ldi r26,lo8(16)
.LVL1266:
.L652:
	.loc 1 6494 0 discriminator 1
	movw r30,r2
.LVL1267:
	.loc 1 6494 0 discriminator 1
	ld r22,Z
	ldd r23,Z+1
	ldd r24,Z+2
	ldd r25,Z+3
	ldi r20,4
	add r2,r20
	adc r3,__zero_reg__
.LVL1268:
	.loc 1 6495 0 discriminator 1
	cpi r19,lo8(68)
	breq .L635
	rjmp .L636
.LVL1269:
.L660:
	.loc 1 6484 0
	ldi r26,lo8(10)
.LVL1270:
.L634:
	.loc 1 6494 0 discriminator 2
	cpi r19,lo8(68)
	brne .L637
.LVL1271:
	.loc 1 6494 0 is_stmt 0 discriminator 4
	movw r30,r2
	ld r22,Z
	ldd r23,Z+1
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
.LVL1272:
	.loc 1 6494 0 is_stmt 1 discriminator 4
	movw r20,r2
	subi r20,-2
	sbci r21,-1
.LVL1273:
	movw r2,r20
	rjmp .L635
.LVL1274:
.L637:
	.loc 1 6494 0 discriminator 5
	movw r30,r2
.LVL1275:
	.loc 1 6494 0 discriminator 5
	ld r22,Z
	ldd r23,Z+1
	ldi r21,2
	add r2,r21
	adc r3,__zero_reg__
	ldi r24,0
	ldi r25,0
.LVL1276:
	rjmp .L636
.LVL1277:
.L635:
	.loc 1 6495 0 discriminator 1
	tst r25
	brge .L636
	.loc 1 6496 0
	com r25
	com r24
	com r23
	neg r22
	sbci r23,lo8(-1)
	sbci r24,lo8(-1)
	sbci r25,lo8(-1)
.LVL1278:
	.loc 1 6497 0
	mov r27,r9
	ori r27,lo8(8)
	mov r9,r27
.LVL1279:
.L636:
	cpi r18,lo8(120)
	brne .L638
	ldi r18,lo8(39)
.LVL1280:
	rjmp .L639
.LVL1281:
.L638:
	ldi r18,lo8(7)
.LVL1282:
.L639:
	mov r5,r18
	movw r12,r28
	ldi r30,71
	add r12,r30
	adc r13,__zero_reg__
	.loc 1 6499 0
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	.loc 1 6501 0
	mov r18,r26
	ldi r19,0
.LVL1283:
	ldi r20,0
	ldi r21,0
	adiw r28,103-60
	std Y+60,r18
	std Y+61,r19
	std Y+62,r20
	std Y+63,r21
	sbiw r28,103-60
	rjmp .L642
.LVL1284:
.L661:
	.loc 1 6503 0
	movw r10,r14
.LVL1285:
.L642:
	.loc 1 6501 0
	adiw r28,103-60
	ldd r18,Y+60
	ldd r19,Y+61
	ldd r20,Y+62
	ldd r21,Y+63
	sbiw r28,103-60
	call __udivmodsi4
.LVL1286:
	mov r31,r22
	mov r30,r22
.LVL1287:
	mov r22,r18
.LVL1288:
	mov r23,r19
	mov r24,r20
	mov r25,r21
.LVL1289:
	.loc 1 6502 0
	cpi r31,lo8(10)
	brlo .L640
	.loc 1 6502 0 is_stmt 0 discriminator 5
	mov r30,r5
.LVL1290:
	add r30,r31
.LVL1291:
.L640:
	.loc 1 6503 0 is_stmt 1
	movw r14,r10
	ldi r19,-1
	sub r14,r19
	sbc r15,r19
.LVL1292:
	subi r30,lo8(-(48))
.LVL1293:
	movw r26,r12
	st X,r30
	.loc 1 6504 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L641
	ldi r27,-1
	sub r12,r27
	sbc r13,r27
	.loc 1 6504 0 is_stmt 0 discriminator 1
	ldi r30,32
	cp r14,r30
	cpc r15,__zero_reg__
.LVL1294:
	brne .L661
.L641:
	.loc 1 6505 0 is_stmt 1
	sbrs r9,3
	rjmp .L643
.LVL1295:
	.loc 1 6505 0 is_stmt 0 discriminator 1
	ldi r30,lo8(71)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r14
	adc r31,r15
	ldi r18,lo8(45)
.LVL1296:
	st Z,r18
.LVL1297:
	movw r20,r10
.LVL1298:
	subi r20,-2
	sbci r21,-1
.LVL1299:
	movw r14,r20
.LVL1300:
.L643:
	.loc 1 6506 0 is_stmt 1
	sbrc r9,0
	rjmp .L662
	set
	clr r11
	bld r11,5
	rjmp .L644
.L662:
	mov __tmp_reg__,r31
	ldi r31,lo8(48)
	mov r11,r31
	mov r31,__tmp_reg__
.L644:
.LVL1301:
	.loc 1 6507 0 discriminator 4
	sbrc r9,1
	rjmp .L663
	.loc 1 6508 0 discriminator 1
	movw r4,r14
	ldi r21,-1
	sub r4,r21
	sbc r5,r21
.LVL1302:
	cp r14,r16
	cpc r15,r17
	brsh .L645
	.loc 1 6508 0 is_stmt 0
	movw r12,r14
.LVL1303:
.L646:
	.loc 1 6508 0 discriminator 2
	mov r22,r11
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1304:
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
.LVL1305:
	cp r12,r16
	cpc r13,r17
	brlo .L646
	movw r4,r16
	ldi r25,-1
	sub r4,r25
	sbc r5,r25
	rjmp .L645
.LVL1306:
.L663:
	.loc 1 6506 0 is_stmt 1
	movw r4,r14
.LVL1307:
.L645:
	movw r12,r14
	ldi r26,1
	sub r12,r26
	sbc r13,__zero_reg__
	ldi r30,lo8(71)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r12,r30
	adc r13,r31
.L647:
.LVL1308:
	.loc 1 6511 0 discriminator 1
	ldi r31,1
	sub r14,r31
	sbc r15,__zero_reg__
.LVL1309:
	movw r26,r12
	ld r22,X
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1310:
	ldi r27,1
	sub r12,r27
	sbc r13,__zero_reg__
	.loc 1 6512 0 discriminator 1
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L647
.LVL1311:
	.loc 1 6513 0 discriminator 1
	cp r4,r16
	cpc r5,r17
	brlo .+2
	rjmp .L607
.LVL1312:
.L648:
	.loc 1 6513 0 is_stmt 0 discriminator 2
	mov r22,r11
	movw r24,r28
	adiw r24,1
	call putc_bfd
.LVL1313:
	ldi r30,-1
	sub r4,r30
	sbc r5,r30
.LVL1314:
	cp r4,r16
	cpc r5,r17
	brlo .L648
	rjmp .L607
.LVL1315:
.L608:
	.loc 1 6518 0 is_stmt 1
	movw r24,r28
	adiw r24,1
	call putc_flush
.LVL1316:
	rjmp .L674
.LVL1317:
.L673:
	.loc 1 6466 0
	sbrs r9,1
	rjmp .L649
	rjmp .L632
.LVL1318:
.L627:
	sbrs r9,1
	rjmp .L651
	.loc 1 6465 0
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	rjmp .L631
.LVL1319:
.L626:
	.loc 1 6494 0
	sbrc r9,2
	rjmp .L664
	.loc 1 6487 0
	ldi r26,lo8(16)
	rjmp .L637
.LVL1320:
.L675:
	.loc 1 6469 0
	movw r26,r12
	ld r22,X
	.loc 1 6467 0
	movw r14,r4
	rjmp .L632
.LVL1321:
.L649:
	ldi r27,2
	add r4,r27
	adc r5,__zero_reg__
.LVL1322:
	cp r14,r16
	cpc r15,r17
	brsh .+2
	rjmp .L653
	rjmp .L675
.LVL1323:
.L651:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .+2
	rjmp .L665
	clr r14
	inc r14
	mov r15,__zero_reg__
	rjmp .L631
.LVL1324:
.L655:
	.loc 1 6494 0
	movw r30,r2
.LVL1325:
	.loc 1 6494 0
	ld r22,Z
	ldd r23,Z+1
	ldd r24,Z+2
	ldd r25,Z+3
	ldi r30,4
	add r2,r30
	adc r3,__zero_reg__
.LVL1326:
	.loc 1 6477 0
	ldi r26,lo8(2)
	rjmp .L636
.LVL1327:
.L620:
	.loc 1 6494 0
	sbrc r9,2
	rjmp .L655
	.loc 1 6477 0
	ldi r26,lo8(2)
	rjmp .L634
.LVL1328:
.L656:
	.loc 1 6494 0
	movw r30,r2
.LVL1329:
	.loc 1 6494 0
	ld r22,Z
	ldd r23,Z+1
	ldd r24,Z+2
	ldd r25,Z+3
	ldi r31,4
	add r2,r31
	adc r3,__zero_reg__
.LVL1330:
	.loc 1 6480 0
	ldi r26,lo8(8)
	rjmp .L636
.LVL1331:
.L624:
	.loc 1 6494 0
	sbrc r9,2
	rjmp .L656
	.loc 1 6480 0
	ldi r26,lo8(8)
	rjmp .L637
.LVL1332:
.L674:
/* epilogue start */
	.loc 1 6519 0
	subi r28,-106
	sbci r29,-1
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
.LFE61:
	.size	f_printf, .-f_printf
	.section	.progmemx.data.ExCvt,progmemx
	.type	ExCvt, @object
	.size	ExCvt, 128
ExCvt:
	.byte	-128
	.byte	-102
	.byte	69
	.byte	65
	.byte	-114
	.byte	65
	.byte	-113
	.byte	-128
	.byte	69
	.byte	69
	.byte	69
	.byte	73
	.byte	73
	.byte	73
	.byte	-114
	.byte	-113
	.byte	-112
	.byte	-110
	.byte	-110
	.byte	79
	.byte	-103
	.byte	79
	.byte	85
	.byte	85
	.byte	89
	.byte	-103
	.byte	-102
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.byte	65
	.byte	73
	.byte	79
	.byte	85
	.byte	-91
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.section	.bss.Fsid,bss
	.type	Fsid, @object
	.size	Fsid, 2
Fsid:
	.zero	2
	.section	.bss.FatFs,bss
	.type	FatFs, @object
	.size	FatFs, 2
FatFs:
	.zero	2
	.section	.text,code
.Letext0:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 3 "fatfs/ff.h"
	.file 4 "fatfs/diskio.h"
	.file 5 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stdarg.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0x447a
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"fatfs/ff.c"
	.string	"/home/marek/Dropbox/Programowanie/Michrochip_PIC/xmegatest.X"
	.long	.Ldebug_ranges0+0xa8
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"uint16_t"
	.byte	0x2
	.byte	0x80
	.long	0x1a4
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
	.long	0x1d0
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
	.string	"UINT"
	.byte	0x3
	.byte	0x2d
	.long	0x1a4
	.uleb128 0x3
	.string	"BYTE"
	.byte	0x3
	.byte	0x2e
	.long	0x17c
	.uleb128 0x3
	.string	"WORD"
	.byte	0x3
	.byte	0x2f
	.long	0x194
	.uleb128 0x3
	.string	"DWORD"
	.byte	0x3
	.byte	0x31
	.long	0x1c0
	.uleb128 0x3
	.string	"TCHAR"
	.byte	0x3
	.byte	0x60
	.long	0x24e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"char"
	.uleb128 0x3
	.string	"FSIZE_t"
	.byte	0x3
	.byte	0x71
	.long	0x234
	.uleb128 0x4
	.word	0x22f
	.byte	0x3
	.byte	0x78
	.long	0x385
	.uleb128 0x5
	.string	"fs_type"
	.byte	0x3
	.byte	0x79
	.long	0x21c
	.byte	0
	.uleb128 0x5
	.string	"pdrv"
	.byte	0x3
	.byte	0x7a
	.long	0x21c
	.byte	0x1
	.uleb128 0x5
	.string	"n_fats"
	.byte	0x3
	.byte	0x7b
	.long	0x21c
	.byte	0x2
	.uleb128 0x5
	.string	"wflag"
	.byte	0x3
	.byte	0x7c
	.long	0x21c
	.byte	0x3
	.uleb128 0x5
	.string	"fsi_flag"
	.byte	0x3
	.byte	0x7d
	.long	0x21c
	.byte	0x4
	.uleb128 0x5
	.string	"id"
	.byte	0x3
	.byte	0x7e
	.long	0x228
	.byte	0x5
	.uleb128 0x5
	.string	"n_rootdir"
	.byte	0x3
	.byte	0x7f
	.long	0x228
	.byte	0x7
	.uleb128 0x5
	.string	"csize"
	.byte	0x3
	.byte	0x80
	.long	0x228
	.byte	0x9
	.uleb128 0x5
	.string	"last_clst"
	.byte	0x3
	.byte	0x8e
	.long	0x234
	.byte	0xb
	.uleb128 0x5
	.string	"free_clst"
	.byte	0x3
	.byte	0x8f
	.long	0x234
	.byte	0xf
	.uleb128 0x5
	.string	"n_fatent"
	.byte	0x3
	.byte	0x99
	.long	0x234
	.byte	0x13
	.uleb128 0x5
	.string	"fsize"
	.byte	0x3
	.byte	0x9a
	.long	0x234
	.byte	0x17
	.uleb128 0x5
	.string	"volbase"
	.byte	0x3
	.byte	0x9b
	.long	0x234
	.byte	0x1b
	.uleb128 0x5
	.string	"fatbase"
	.byte	0x3
	.byte	0x9c
	.long	0x234
	.byte	0x1f
	.uleb128 0x5
	.string	"dirbase"
	.byte	0x3
	.byte	0x9d
	.long	0x234
	.byte	0x23
	.uleb128 0x5
	.string	"database"
	.byte	0x3
	.byte	0x9e
	.long	0x234
	.byte	0x27
	.uleb128 0x5
	.string	"winsect"
	.byte	0x3
	.byte	0xa2
	.long	0x234
	.byte	0x2b
	.uleb128 0x5
	.string	"win"
	.byte	0x3
	.byte	0xa3
	.long	0x385
	.byte	0x2f
	.byte	0
	.uleb128 0x6
	.long	0x21c
	.long	0x396
	.uleb128 0x7
	.long	0x396
	.word	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"FATFS"
	.byte	0x3
	.byte	0xa4
	.long	0x265
	.uleb128 0x8
	.byte	0xe
	.byte	0x3
	.byte	0xaa
	.long	0x407
	.uleb128 0x5
	.string	"fs"
	.byte	0x3
	.byte	0xab
	.long	0x407
	.byte	0
	.uleb128 0x5
	.string	"id"
	.byte	0x3
	.byte	0xac
	.long	0x228
	.byte	0x2
	.uleb128 0x5
	.string	"attr"
	.byte	0x3
	.byte	0xad
	.long	0x21c
	.byte	0x4
	.uleb128 0x5
	.string	"stat"
	.byte	0x3
	.byte	0xae
	.long	0x21c
	.byte	0x5
	.uleb128 0x5
	.string	"sclust"
	.byte	0x3
	.byte	0xaf
	.long	0x234
	.byte	0x6
	.uleb128 0x5
	.string	"objsize"
	.byte	0x3
	.byte	0xb0
	.long	0x256
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x3a2
	.uleb128 0x3
	.string	"FFOBJID"
	.byte	0x3
	.byte	0xbb
	.long	0x3af
	.uleb128 0x4
	.word	0x222
	.byte	0x3
	.byte	0xc1
	.long	0x49f
	.uleb128 0x5
	.string	"obj"
	.byte	0x3
	.byte	0xc2
	.long	0x40d
	.byte	0
	.uleb128 0x5
	.string	"flag"
	.byte	0x3
	.byte	0xc3
	.long	0x21c
	.byte	0xe
	.uleb128 0x5
	.string	"err"
	.byte	0x3
	.byte	0xc4
	.long	0x21c
	.byte	0xf
	.uleb128 0x5
	.string	"fptr"
	.byte	0x3
	.byte	0xc5
	.long	0x256
	.byte	0x10
	.uleb128 0x5
	.string	"clust"
	.byte	0x3
	.byte	0xc6
	.long	0x234
	.byte	0x14
	.uleb128 0xa
	.long	.LASF0
	.byte	0x3
	.byte	0xc7
	.long	0x234
	.byte	0x18
	.uleb128 0x5
	.string	"dir_sect"
	.byte	0x3
	.byte	0xc9
	.long	0x234
	.byte	0x1c
	.uleb128 0x5
	.string	"dir_ptr"
	.byte	0x3
	.byte	0xca
	.long	0x49f
	.byte	0x20
	.uleb128 0x5
	.string	"buf"
	.byte	0x3
	.byte	0xd0
	.long	0x385
	.byte	0x22
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x21c
	.uleb128 0x3
	.string	"FIL"
	.byte	0x3
	.byte	0xd2
	.long	0x41c
	.uleb128 0x8
	.byte	0x2b
	.byte	0x3
	.byte	0xd8
	.long	0x50f
	.uleb128 0x5
	.string	"obj"
	.byte	0x3
	.byte	0xd9
	.long	0x40d
	.byte	0
	.uleb128 0x5
	.string	"dptr"
	.byte	0x3
	.byte	0xda
	.long	0x234
	.byte	0xe
	.uleb128 0x5
	.string	"clust"
	.byte	0x3
	.byte	0xdb
	.long	0x234
	.byte	0x12
	.uleb128 0xa
	.long	.LASF0
	.byte	0x3
	.byte	0xdc
	.long	0x234
	.byte	0x16
	.uleb128 0x5
	.string	"dir"
	.byte	0x3
	.byte	0xdd
	.long	0x49f
	.byte	0x1a
	.uleb128 0x5
	.string	"fn"
	.byte	0x3
	.byte	0xde
	.long	0x50f
	.byte	0x1c
	.uleb128 0x5
	.string	"pat"
	.byte	0x3
	.byte	0xe3
	.long	0x51f
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.long	0x21c
	.long	0x51f
	.uleb128 0xb
	.long	0x396
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.byte	0x3
	.byte	0x7
	.long	0x526
	.uleb128 0xd
	.long	0x241
	.uleb128 0x3
	.string	"DIR"
	.byte	0x3
	.byte	0xe5
	.long	0x4b0
	.uleb128 0x8
	.byte	0x16
	.byte	0x3
	.byte	0xeb
	.long	0x587
	.uleb128 0x5
	.string	"fsize"
	.byte	0x3
	.byte	0xec
	.long	0x256
	.byte	0
	.uleb128 0x5
	.string	"fdate"
	.byte	0x3
	.byte	0xed
	.long	0x228
	.byte	0x4
	.uleb128 0x5
	.string	"ftime"
	.byte	0x3
	.byte	0xee
	.long	0x228
	.byte	0x6
	.uleb128 0x5
	.string	"fattrib"
	.byte	0x3
	.byte	0xef
	.long	0x21c
	.byte	0x8
	.uleb128 0x5
	.string	"fname"
	.byte	0x3
	.byte	0xf4
	.long	0x587
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.long	0x241
	.long	0x597
	.uleb128 0xb
	.long	0x396
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"FILINFO"
	.byte	0x3
	.byte	0xf6
	.long	0x536
	.uleb128 0xe
	.byte	0x1
	.long	0x17c
	.byte	0x3
	.byte	0xfc
	.long	0x6f8
	.uleb128 0xf
	.string	"FR_OK"
	.byte	0
	.uleb128 0xf
	.string	"FR_DISK_ERR"
	.byte	0x1
	.uleb128 0xf
	.string	"FR_INT_ERR"
	.byte	0x2
	.uleb128 0xf
	.string	"FR_NOT_READY"
	.byte	0x3
	.uleb128 0xf
	.string	"FR_NO_FILE"
	.byte	0x4
	.uleb128 0xf
	.string	"FR_NO_PATH"
	.byte	0x5
	.uleb128 0xf
	.string	"FR_INVALID_NAME"
	.byte	0x6
	.uleb128 0xf
	.string	"FR_DENIED"
	.byte	0x7
	.uleb128 0xf
	.string	"FR_EXIST"
	.byte	0x8
	.uleb128 0xf
	.string	"FR_INVALID_OBJECT"
	.byte	0x9
	.uleb128 0xf
	.string	"FR_WRITE_PROTECTED"
	.byte	0xa
	.uleb128 0xf
	.string	"FR_INVALID_DRIVE"
	.byte	0xb
	.uleb128 0xf
	.string	"FR_NOT_ENABLED"
	.byte	0xc
	.uleb128 0xf
	.string	"FR_NO_FILESYSTEM"
	.byte	0xd
	.uleb128 0xf
	.string	"FR_MKFS_ABORTED"
	.byte	0xe
	.uleb128 0xf
	.string	"FR_TIMEOUT"
	.byte	0xf
	.uleb128 0xf
	.string	"FR_LOCKED"
	.byte	0x10
	.uleb128 0xf
	.string	"FR_NOT_ENOUGH_CORE"
	.byte	0x11
	.uleb128 0xf
	.string	"FR_TOO_MANY_OPEN_FILES"
	.byte	0x12
	.uleb128 0xf
	.string	"FR_INVALID_PARAMETER"
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"FRESULT"
	.byte	0x3
	.word	0x111
	.long	0x5a6
	.uleb128 0x3
	.string	"DSTATUS"
	.byte	0x4
	.byte	0x14
	.long	0x21c
	.uleb128 0xe
	.byte	0x1
	.long	0x17c
	.byte	0x4
	.byte	0x17
	.long	0x75f
	.uleb128 0xf
	.string	"RES_OK"
	.byte	0
	.uleb128 0xf
	.string	"RES_ERROR"
	.byte	0x1
	.uleb128 0xf
	.string	"RES_WRPRT"
	.byte	0x2
	.uleb128 0xf
	.string	"RES_NOTRDY"
	.byte	0x3
	.uleb128 0xf
	.string	"RES_PARERR"
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x5
	.byte	0x28
	.long	0x775
	.uleb128 0x11
	.byte	0x2
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x5
	.byte	0x62
	.long	0x75f
	.uleb128 0x12
	.byte	0x46
	.byte	0x1
	.word	0x183d
	.long	0x7d6
	.uleb128 0x13
	.string	"fp"
	.byte	0x1
	.word	0x183e
	.long	0x7d6
	.byte	0
	.uleb128 0x13
	.string	"idx"
	.byte	0x1
	.word	0x183f
	.long	0x18d
	.byte	0x2
	.uleb128 0x13
	.string	"nchr"
	.byte	0x1
	.word	0x183f
	.long	0x18d
	.byte	0x4
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.word	0x1846
	.long	0x7dc
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x4a5
	.uleb128 0x6
	.long	0x21c
	.long	0x7ec
	.uleb128 0xb
	.long	0x396
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.string	"putbuff"
	.byte	0x1
	.word	0x1847
	.long	0x798
	.uleb128 0x14
	.string	"ld_dword"
	.byte	0x1
	.word	0x24d
	.byte	0x1
	.long	0x234
	.long	.LFB1
	.long	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x83d
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.word	0x24d
	.long	0x83d
	.long	.LLST0
	.uleb128 0x16
	.string	"rv"
	.byte	0x1
	.word	0x24f
	.long	0x234
	.long	.LLST1
	.byte	0
	.uleb128 0xc
	.byte	0x3
	.byte	0x7
	.long	0x844
	.uleb128 0xd
	.long	0x21c
	.uleb128 0x17
	.string	"mem_cpy"
	.byte	0x1
	.word	0x28e
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8b8
	.uleb128 0x15
	.string	"dst"
	.byte	0x1
	.word	0x28e
	.long	0x8b8
	.long	.LLST2
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.word	0x28e
	.long	0x8ba
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x15
	.string	"cnt"
	.byte	0x1
	.word	0x28e
	.long	0x210
	.long	.LLST3
	.uleb128 0x16
	.string	"d"
	.byte	0x1
	.word	0x290
	.long	0x49f
	.long	.LLST4
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.word	0x291
	.long	0x83d
	.long	.LLST5
	.byte	0
	.uleb128 0x19
	.byte	0x2
	.uleb128 0xc
	.byte	0x3
	.byte	0x7
	.long	0x8c1
	.uleb128 0x1a
	.uleb128 0x17
	.string	"mem_set"
	.byte	0x1
	.word	0x29c
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x923
	.uleb128 0x18
	.string	"dst"
	.byte	0x1
	.word	0x29c
	.long	0x8b8
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.word	0x29c
	.long	0x18d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x15
	.string	"cnt"
	.byte	0x1
	.word	0x29c
	.long	0x210
	.long	.LLST6
	.uleb128 0x16
	.string	"d"
	.byte	0x1
	.word	0x29e
	.long	0x49f
	.long	.LLST7
	.byte	0
	.uleb128 0x14
	.string	"clst2sect"
	.byte	0x1
	.word	0x46c
	.byte	0x1
	.long	0x234
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x965
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0x46d
	.long	0x407
	.long	.LLST8
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.word	0x46e
	.long	0x234
	.long	.LLST9
	.byte	0
	.uleb128 0x14
	.string	"get_achar"
	.byte	0x1
	.word	0xabd
	.byte	0x1
	.long	0x234
	.long	.LFB29
	.long	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9a8
	.uleb128 0x15
	.string	"ptr"
	.byte	0x1
	.word	0xabe
	.long	0x9a8
	.long	.LLST10
	.uleb128 0x16
	.string	"chr"
	.byte	0x1
	.word	0xac1
	.long	0x234
	.long	.LLST11
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x51f
	.uleb128 0x14
	.string	"pattern_matching"
	.byte	0x1
	.word	0xadc
	.byte	0x1
	.long	0x18d
	.long	.LFB30
	.long	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb03
	.uleb128 0x15
	.string	"pat"
	.byte	0x1
	.word	0xadd
	.long	0x51f
	.long	.LLST12
	.uleb128 0x15
	.string	"nam"
	.byte	0x1
	.word	0xade
	.long	0x51f
	.long	.LLST13
	.uleb128 0x15
	.string	"skip"
	.byte	0x1
	.word	0xadf
	.long	0x18d
	.long	.LLST14
	.uleb128 0x15
	.string	"inf"
	.byte	0x1
	.word	0xae0
	.long	0x18d
	.long	.LLST15
	.uleb128 0x1c
	.string	"pp"
	.byte	0x1
	.word	0xae3
	.long	0x51f
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1c
	.string	"np"
	.byte	0x1
	.word	0xae3
	.long	0x51f
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.uleb128 0x16
	.string	"pc"
	.byte	0x1
	.word	0xae4
	.long	0x234
	.long	.LLST16
	.uleb128 0x16
	.string	"nc"
	.byte	0x1
	.word	0xae4
	.long	0x234
	.long	.LLST17
	.uleb128 0x16
	.string	"nm"
	.byte	0x1
	.word	0xae5
	.long	0x18d
	.long	.LLST18
	.uleb128 0x16
	.string	"nx"
	.byte	0x1
	.word	0xae5
	.long	0x18d
	.long	.LLST19
	.uleb128 0x1d
	.long	.LVL33
	.long	0x965
	.long	0xa89
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.uleb128 0x1d
	.long	.LVL41
	.long	0x9ae
	.long	0xabb
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL44
	.long	0x965
	.long	0xad4
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x1d
	.long	.LVL46
	.long	0x965
	.long	0xaed
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x1f
	.long	.LVL49
	.long	0x965
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"get_ldnumber"
	.byte	0x1
	.word	0xc27
	.byte	0x1
	.long	0x18d
	.long	.LFB33
	.long	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb84
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0xc28
	.long	0x9a8
	.long	.LLST20
	.uleb128 0x16
	.string	"tp"
	.byte	0x1
	.word	0xc2b
	.long	0x51f
	.long	.LLST21
	.uleb128 0x16
	.string	"tt"
	.byte	0x1
	.word	0xc2b
	.long	0x51f
	.long	.LLST22
	.uleb128 0x16
	.string	"tc"
	.byte	0x1
	.word	0xc2c
	.long	0x241
	.long	.LLST23
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.word	0xc2d
	.long	0x18d
	.long	.LLST24
	.uleb128 0x16
	.string	"vol"
	.byte	0x1
	.word	0xc2d
	.long	0x18d
	.long	.LLST25
	.byte	0
	.uleb128 0x14
	.string	"validate"
	.byte	0x1
	.word	0xd7d
	.byte	0x1
	.long	0x6f8
	.long	.LFB36
	.long	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xbdf
	.uleb128 0x15
	.string	"obj"
	.byte	0x1
	.word	0xd7e
	.long	0xbdf
	.long	.LLST26
	.uleb128 0x15
	.string	"rfs"
	.byte	0x1
	.word	0xd7f
	.long	0xbe5
	.long	.LLST27
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0xd82
	.long	0x6f8
	.long	.LLST28
	.uleb128 0x20
	.long	.LVL84
	.long	0x4426
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x40d
	.uleb128 0x9
	.byte	0x2
	.long	0x407
	.uleb128 0x14
	.string	"sync_window"
	.byte	0x1
	.word	0x412
	.byte	0x1
	.long	0x6f8
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xc9b
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0x413
	.long	0x407
	.long	.LLST29
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x416
	.long	0x6f8
	.long	.LLST30
	.uleb128 0x1d
	.long	.LVL94
	.long	0x4433
	.long	0xc66
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL95
	.long	0x4433
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"move_window"
	.byte	0x1
	.word	0x428
	.byte	0x1
	.long	0x6f8
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xd3c
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0x429
	.long	0x407
	.long	.LLST31
	.uleb128 0x15
	.string	"sector"
	.byte	0x1
	.word	0x42a
	.long	0x234
	.long	.LLST32
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x42d
	.long	0x6f8
	.long	.LLST33
	.uleb128 0x1d
	.long	.LVL103
	.long	0xbeb
	.long	0xd0a
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LVL105
	.long	0x4440
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 47
	.uleb128 0x1e
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"dir_clear"
	.byte	0x1
	.word	0x66c
	.byte	0x1
	.long	0x6f8
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xe63
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0x66d
	.long	0x407
	.long	.LLST34
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.word	0x66e
	.long	0x234
	.long	.LLST35
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.word	0x671
	.long	0x234
	.long	.LLST36
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.word	0x672
	.long	0x210
	.long	.LLST37
	.uleb128 0x16
	.string	"szb"
	.byte	0x1
	.word	0x672
	.long	0x210
	.long	.LLST38
	.uleb128 0x16
	.string	"ibuf"
	.byte	0x1
	.word	0x673
	.long	0x49f
	.long	.LLST39
	.uleb128 0x1d
	.long	.LVL114
	.long	0xbeb
	.long	0xdd5
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL115
	.long	0x923
	.long	0xdff
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL117
	.long	0x8c2
	.long	0xe2e
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x200
	.byte	0
	.uleb128 0x1f
	.long	.LVL122
	.long	0x4433
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.string	"st_dword"
	.byte	0x1
	.word	0x270
	.byte	0x1
	.byte	0x1
	.long	0xe8f
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.word	0x270
	.long	0x49f
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.word	0x270
	.long	0x234
	.byte	0
	.uleb128 0x22
	.string	"st_word"
	.byte	0x1
	.word	0x26a
	.byte	0x1
	.byte	0x1
	.long	0xeba
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.word	0x26a
	.long	0x49f
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.word	0x26a
	.long	0x228
	.byte	0
	.uleb128 0x14
	.string	"sync_fs"
	.byte	0x1
	.word	0x447
	.byte	0x1
	.long	0x6f8
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1048
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0x448
	.long	0x407
	.long	.LLST40
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x44b
	.long	0x6f8
	.long	.LLST41
	.uleb128 0x24
	.long	0xe8f
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.word	0x453
	.long	0xf20
	.uleb128 0x25
	.long	0xead
	.long	.LLST42
	.uleb128 0x25
	.long	0xea1
	.long	.LLST43
	.byte	0
	.uleb128 0x24
	.long	0xe63
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.word	0x454
	.long	0xf47
	.uleb128 0x25
	.long	0xe82
	.long	.LLST44
	.uleb128 0x25
	.long	0xe76
	.long	.LLST45
	.byte	0
	.uleb128 0x24
	.long	0xe63
	.long	.LBB16
	.long	.LBE16
	.byte	0x1
	.word	0x455
	.long	0xf6e
	.uleb128 0x25
	.long	0xe82
	.long	.LLST46
	.uleb128 0x25
	.long	0xe76
	.long	.LLST47
	.byte	0
	.uleb128 0x24
	.long	0xe63
	.long	.LBB18
	.long	.LBE18
	.byte	0x1
	.word	0x456
	.long	0xf95
	.uleb128 0x25
	.long	0xe82
	.long	.LLST48
	.uleb128 0x25
	.long	0xe76
	.long	.LLST49
	.byte	0
	.uleb128 0x24
	.long	0xe63
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.word	0x457
	.long	0xfbc
	.uleb128 0x25
	.long	0xe82
	.long	.LLST50
	.uleb128 0x25
	.long	0xe76
	.long	.LLST51
	.byte	0
	.uleb128 0x1d
	.long	.LVL128
	.long	0xbeb
	.long	0xfd5
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL131
	.long	0x8c2
	.long	0x1004
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x200
	.byte	0
	.uleb128 0x1d
	.long	.LVL154
	.long	0x4433
	.long	0x102e
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL155
	.long	0x444d
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"put_fat"
	.byte	0x1
	.word	0x4ca
	.byte	0x1
	.long	0x6f8
	.long	.LFB15
	.long	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1199
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0x4cb
	.long	0x407
	.long	.LLST52
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.word	0x4cc
	.long	0x234
	.long	.LLST53
	.uleb128 0x15
	.string	"val"
	.byte	0x1
	.word	0x4cd
	.long	0x234
	.long	.LLST54
	.uleb128 0x16
	.string	"bc"
	.byte	0x1
	.word	0x4d0
	.long	0x210
	.long	.LLST55
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.word	0x4d1
	.long	0x49f
	.long	.LLST56
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x4d2
	.long	0x6f8
	.long	.LLST57
	.uleb128 0x24
	.long	0xe8f
	.long	.LBB26
	.long	.LBE26
	.byte	0x1
	.word	0x4e8
	.long	0x10eb
	.uleb128 0x25
	.long	0xead
	.long	.LLST58
	.uleb128 0x25
	.long	0xea1
	.long	.LLST59
	.byte	0
	.uleb128 0x24
	.long	0xe63
	.long	.LBB28
	.long	.LBE28
	.byte	0x1
	.word	0x4f5
	.long	0x1112
	.uleb128 0x25
	.long	0xe82
	.long	.LLST60
	.uleb128 0x25
	.long	0xe76
	.long	.LLST61
	.byte	0
	.uleb128 0x1d
	.long	.LVL164
	.long	0xc9b
	.long	0x112b
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL168
	.long	0xc9b
	.long	0x1144
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL170
	.long	0xc9b
	.long	0x115d
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL173
	.long	0xc9b
	.long	0x1176
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL180
	.long	0xc9b
	.long	0x118f
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL184
	.long	0x7fc
	.byte	0
	.uleb128 0x17
	.string	"st_clust"
	.byte	0x1
	.word	0x73b
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x123b
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0x73c
	.long	0x407
	.long	.LLST62
	.uleb128 0x18
	.string	"dir"
	.byte	0x1
	.word	0x73d
	.long	0x49f
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x18
	.string	"cl"
	.byte	0x1
	.word	0x73e
	.long	0x234
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x24
	.long	0xe8f
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.word	0x741
	.long	0x1217
	.uleb128 0x25
	.long	0xead
	.long	.LLST63
	.uleb128 0x25
	.long	0xea1
	.long	.LLST64
	.byte	0
	.uleb128 0x26
	.long	0xe8f
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.word	0x743
	.uleb128 0x25
	.long	0xead
	.long	.LLST65
	.uleb128 0x25
	.long	0xea1
	.long	.LLST66
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"ld_word"
	.byte	0x1
	.word	0x244
	.byte	0x1
	.long	0x228
	.byte	0x1
	.long	0x1269
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.word	0x244
	.long	0x83d
	.uleb128 0x28
	.string	"rv"
	.byte	0x1
	.word	0x246
	.long	0x228
	.byte	0
	.uleb128 0x14
	.string	"get_fat"
	.byte	0x1
	.word	0x47d
	.byte	0x1
	.long	0x234
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1385
	.uleb128 0x15
	.string	"obj"
	.byte	0x1
	.word	0x47e
	.long	0xbdf
	.long	.LLST67
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.word	0x47f
	.long	0x234
	.long	.LLST68
	.uleb128 0x16
	.string	"wc"
	.byte	0x1
	.word	0x482
	.long	0x210
	.long	.LLST69
	.uleb128 0x16
	.string	"bc"
	.byte	0x1
	.word	0x482
	.long	0x210
	.long	.LLST70
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.word	0x483
	.long	0x234
	.long	.LLST71
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0x484
	.long	0x407
	.long	.LLST72
	.uleb128 0x24
	.long	0x123b
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.word	0x499
	.long	0x1317
	.uleb128 0x25
	.long	0x1251
	.long	.LLST73
	.uleb128 0x29
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST74
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL216
	.long	0xc9b
	.long	0x1330
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL219
	.long	0xc9b
	.long	0x1349
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL227
	.long	0xc9b
	.long	0x1362
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL234
	.long	0xc9b
	.long	0x137b
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL237
	.long	0x7fc
	.byte	0
	.uleb128 0x14
	.string	"dir_sdi"
	.byte	0x1
	.word	0x693
	.byte	0x1
	.long	0x6f8
	.long	.LFB19
	.long	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1444
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x694
	.long	0x1444
	.long	.LLST75
	.uleb128 0x15
	.string	"ofs"
	.byte	0x1
	.word	0x695
	.long	0x234
	.long	.LLST76
	.uleb128 0x16
	.string	"csz"
	.byte	0x1
	.word	0x698
	.long	0x234
	.long	.LLST77
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.word	0x698
	.long	0x234
	.long	.LLST78
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0x699
	.long	0x407
	.long	.LLST79
	.uleb128 0x1d
	.long	.LVL257
	.long	0x1269
	.long	0x141d
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL260
	.long	0x923
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x52b
	.uleb128 0x14
	.string	"create_chain"
	.byte	0x1
	.word	0x5e7
	.byte	0x1
	.long	0x234
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x15ad
	.uleb128 0x15
	.string	"obj"
	.byte	0x1
	.word	0x5e8
	.long	0xbdf
	.long	.LLST80
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.word	0x5e9
	.long	0x234
	.long	.LLST81
	.uleb128 0x16
	.string	"cs"
	.byte	0x1
	.word	0x5ec
	.long	0x234
	.long	.LLST82
	.uleb128 0x16
	.string	"ncl"
	.byte	0x1
	.word	0x5ec
	.long	0x234
	.long	.LLST83
	.uleb128 0x16
	.string	"scl"
	.byte	0x1
	.word	0x5ec
	.long	0x234
	.long	.LLST84
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x5ed
	.long	0x6f8
	.long	.LLST85
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0x5ee
	.long	0x407
	.long	.LLST86
	.uleb128 0x20
	.long	.LVL276
	.long	0x1269
	.uleb128 0x1d
	.long	.LVL280
	.long	0x1269
	.long	0x1510
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL288
	.long	0x1269
	.long	0x153a
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL291
	.long	0x1048
	.long	0x1575
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL293
	.long	0x1048
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"remove_chain"
	.byte	0x1
	.word	0x588
	.byte	0x1
	.long	0x6f8
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x16d1
	.uleb128 0x15
	.string	"obj"
	.byte	0x1
	.word	0x589
	.long	0xbdf
	.long	.LLST87
	.uleb128 0x1b
	.long	.LASF1
	.byte	0x1
	.word	0x58a
	.long	0x234
	.long	.LLST88
	.uleb128 0x15
	.string	"pclst"
	.byte	0x1
	.word	0x58b
	.long	0x234
	.long	.LLST89
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x58e
	.long	0x6f8
	.long	.LLST90
	.uleb128 0x16
	.string	"nxt"
	.byte	0x1
	.word	0x58f
	.long	0x234
	.long	.LLST91
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0x590
	.long	0x407
	.long	.LLST92
	.uleb128 0x1d
	.long	.LVL327
	.long	0x1048
	.long	0x166f
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL329
	.long	0x1269
	.long	0x1699
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL331
	.long	0x1048
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"dir_next"
	.byte	0x1
	.word	0x6c3
	.byte	0x1
	.long	0x6f8
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x17c7
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x6c4
	.long	0x1444
	.long	.LLST93
	.uleb128 0x15
	.string	"stretch"
	.byte	0x1
	.word	0x6c5
	.long	0x18d
	.long	.LLST94
	.uleb128 0x16
	.string	"ofs"
	.byte	0x1
	.word	0x6c8
	.long	0x234
	.long	.LLST95
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.word	0x6c8
	.long	0x234
	.long	.LLST96
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0x6c9
	.long	0x407
	.long	.LLST97
	.uleb128 0x1d
	.long	.LVL348
	.long	0x1269
	.long	0x175d
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL350
	.long	0x144a
	.long	0x1776
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL352
	.long	0xd3c
	.long	0x17a0
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL353
	.long	0x923
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"dir_alloc"
	.byte	0x1
	.word	0x700
	.byte	0x1
	.long	0x6f8
	.byte	0x1
	.long	0x1819
	.uleb128 0x23
	.string	"dp"
	.byte	0x1
	.word	0x701
	.long	0x1444
	.uleb128 0x23
	.string	"nent"
	.byte	0x1
	.word	0x702
	.long	0x210
	.uleb128 0x28
	.string	"res"
	.byte	0x1
	.word	0x705
	.long	0x6f8
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.word	0x706
	.long	0x210
	.uleb128 0x28
	.string	"fs"
	.byte	0x1
	.word	0x707
	.long	0x407
	.byte	0
	.uleb128 0x14
	.string	"dir_register"
	.byte	0x1
	.word	0x9bd
	.byte	0x1
	.long	0x6f8
	.long	.LFB26
	.long	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1966
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x9be
	.long	0x1444
	.long	.LLST98
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x9c1
	.long	0x6f8
	.long	.LLST99
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0x9c2
	.long	0x407
	.long	.LLST100
	.uleb128 0x2b
	.long	0x17c7
	.long	.LBB44
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.word	0xa0a
	.long	0x1915
	.uleb128 0x25
	.long	0x17ea
	.long	.LLST101
	.uleb128 0x25
	.long	0x17df
	.long	.LLST102
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.uleb128 0x2a
	.long	0x17f7
	.long	.LLST103
	.uleb128 0x2a
	.long	0x1803
	.long	.LLST104
	.uleb128 0x2a
	.long	0x180d
	.long	.LLST105
	.uleb128 0x1d
	.long	.LVL363
	.long	0x1385
	.long	0x18db
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL367
	.long	0xc9b
	.long	0x18f4
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LVL370
	.long	0x16d1
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL374
	.long	0xc9b
	.long	0x192e
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL377
	.long	0x8c2
	.long	0x1951
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1f
	.long	.LVL378
	.long	0x849
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"dir_read"
	.byte	0x1
	.word	0x91e
	.byte	0x1
	.long	0x6f8
	.long	.LFB24
	.long	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1a1d
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x91f
	.long	0x1444
	.long	.LLST106
	.uleb128 0x15
	.string	"vol"
	.byte	0x1
	.word	0x920
	.long	0x18d
	.long	.LLST107
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x923
	.long	0x6f8
	.long	.LLST108
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0x924
	.long	0x407
	.long	.LLST109
	.uleb128 0x16
	.string	"attr"
	.byte	0x1
	.word	0x925
	.long	0x21c
	.long	.LLST110
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.word	0x925
	.long	0x21c
	.long	.LLST111
	.uleb128 0x1d
	.long	.LVL390
	.long	0xc9b
	.long	0x19fd
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LVL396
	.long	0x16d1
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"mem_cmp"
	.byte	0x1
	.word	0x2a7
	.byte	0x1
	.long	0x18d
	.byte	0x1
	.long	0x1a76
	.uleb128 0x23
	.string	"dst"
	.byte	0x1
	.word	0x2a7
	.long	0x8ba
	.uleb128 0x23
	.string	"src"
	.byte	0x1
	.word	0x2a7
	.long	0x8ba
	.uleb128 0x23
	.string	"cnt"
	.byte	0x1
	.word	0x2a7
	.long	0x210
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.word	0x2a9
	.long	0x83d
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.word	0x2a9
	.long	0x83d
	.uleb128 0x28
	.string	"r"
	.byte	0x1
	.word	0x2aa
	.long	0x18d
	.byte	0
	.uleb128 0x14
	.string	"check_fs"
	.byte	0x1
	.word	0xc71
	.byte	0x1
	.long	0x21c
	.long	.LFB34
	.long	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1bb1
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0xc72
	.long	0x407
	.long	.LLST112
	.uleb128 0x1b
	.long	.LASF0
	.byte	0x1
	.word	0xc73
	.long	0x234
	.long	.LLST113
	.uleb128 0x24
	.long	0x123b
	.long	.LBB54
	.long	.LBE54
	.byte	0x1
	.word	0xc79
	.long	0x1ae7
	.uleb128 0x25
	.long	0x1251
	.long	.LLST114
	.uleb128 0x29
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST115
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x1a1d
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.word	0xc7f
	.long	0x1b38
	.uleb128 0x25
	.long	0x1a4b
	.long	.LLST116
	.uleb128 0x25
	.long	0x1a3f
	.long	.LLST117
	.uleb128 0x25
	.long	0x1a33
	.long	.LLST118
	.uleb128 0x29
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x2a
	.long	0x1a57
	.long	.LLST119
	.uleb128 0x2d
	.long	0x1a61
	.uleb128 0x2a
	.long	0x1a6b
	.long	.LLST121
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x1a1d
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.word	0xc80
	.long	0x1b89
	.uleb128 0x25
	.long	0x1a4b
	.long	.LLST122
	.uleb128 0x2e
	.long	0x1a3f
	.uleb128 0x25
	.long	0x1a33
	.long	.LLST123
	.uleb128 0x29
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x2a
	.long	0x1a57
	.long	.LLST124
	.uleb128 0x2a
	.long	0x1a61
	.long	.LLST125
	.uleb128 0x2a
	.long	0x1a6b
	.long	.LLST126
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL407
	.long	0xc9b
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"find_volume"
	.byte	0x1
	.word	0xc8c
	.byte	0x1
	.long	0x6f8
	.long	.LFB35
	.long	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1f71
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0xc8d
	.long	0x9a8
	.long	.LLST127
	.uleb128 0x15
	.string	"rfs"
	.byte	0x1
	.word	0xc8e
	.long	0xbe5
	.long	.LLST128
	.uleb128 0x15
	.string	"mode"
	.byte	0x1
	.word	0xc8f
	.long	0x21c
	.long	.LLST129
	.uleb128 0x16
	.string	"fmt"
	.byte	0x1
	.word	0xc92
	.long	0x21c
	.long	.LLST130
	.uleb128 0x16
	.string	"pt"
	.byte	0x1
	.word	0xc92
	.long	0x49f
	.long	.LLST131
	.uleb128 0x16
	.string	"vol"
	.byte	0x1
	.word	0xc93
	.long	0x18d
	.long	.LLST132
	.uleb128 0x16
	.string	"stat"
	.byte	0x1
	.word	0xc94
	.long	0x708
	.long	.LLST133
	.uleb128 0x16
	.string	"bsect"
	.byte	0x1
	.word	0xc95
	.long	0x234
	.long	.LLST134
	.uleb128 0x16
	.string	"fasize"
	.byte	0x1
	.word	0xc95
	.long	0x234
	.long	.LLST135
	.uleb128 0x16
	.string	"tsect"
	.byte	0x1
	.word	0xc95
	.long	0x234
	.long	.LLST136
	.uleb128 0x16
	.string	"sysect"
	.byte	0x1
	.word	0xc95
	.long	0x234
	.long	.LLST137
	.uleb128 0x16
	.string	"nclst"
	.byte	0x1
	.word	0xc95
	.long	0x234
	.long	.LLST138
	.uleb128 0x16
	.string	"szbfat"
	.byte	0x1
	.word	0xc95
	.long	0x234
	.long	.LLST139
	.uleb128 0x1c
	.string	"br"
	.byte	0x1
	.word	0xc95
	.long	0x1f71
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1c
	.string	"nrsv"
	.byte	0x1
	.word	0xc96
	.long	0x228
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0xc97
	.long	0x407
	.long	.LLST140
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.word	0xc98
	.long	0x210
	.uleb128 0x24
	.long	0x123b
	.long	.LBB76
	.long	.LBE76
	.byte	0x1
	.word	0xd18
	.long	0x1d21
	.uleb128 0x25
	.long	0x1251
	.long	.LLST141
	.uleb128 0x29
	.long	.LBB77
	.long	.LBE77
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST142
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x123b
	.long	.LBB78
	.long	.LBE78
	.byte	0x1
	.word	0xd1a
	.long	0x1d52
	.uleb128 0x25
	.long	0x1251
	.long	.LLST143
	.uleb128 0x29
	.long	.LBB79
	.long	.LBE79
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST144
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x123b
	.long	.LBB80
	.long	.LBE80
	.byte	0x1
	.word	0xd25
	.long	0x1d83
	.uleb128 0x25
	.long	0x1251
	.long	.LLST145
	.uleb128 0x29
	.long	.LBB81
	.long	.LBE81
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST146
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x123b
	.long	.LBB82
	.long	.LBE82
	.byte	0x1
	.word	0xd28
	.long	0x1db4
	.uleb128 0x25
	.long	0x1251
	.long	.LLST147
	.uleb128 0x29
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST148
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x123b
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.word	0xd2b
	.long	0x1de5
	.uleb128 0x25
	.long	0x1251
	.long	.LLST149
	.uleb128 0x29
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST150
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x123b
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.word	0xd3f
	.long	0x1e16
	.uleb128 0x25
	.long	0x1251
	.long	.LLST151
	.uleb128 0x29
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST152
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x123b
	.long	.LBB88
	.long	.LBE88
	.byte	0x1
	.word	0xd55
	.long	0x1e47
	.uleb128 0x25
	.long	0x1251
	.long	.LLST153
	.uleb128 0x29
	.long	.LBB89
	.long	.LBE89
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST154
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x123b
	.long	.LBB90
	.long	.LBE90
	.byte	0x1
	.word	0xd51
	.long	0x1e78
	.uleb128 0x25
	.long	0x1251
	.long	.LLST155
	.uleb128 0x29
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST156
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL435
	.long	0xb03
	.long	0x1e92
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0x20
	.long	.LVL439
	.long	0x4426
	.uleb128 0x1d
	.long	.LVL441
	.long	0x4462
	.long	0x1eaf
	.uleb128 0x1e
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL443
	.long	0x7fc
	.uleb128 0x1d
	.long	.LVL448
	.long	0x1a76
	.long	0x1ee2
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL462
	.long	0x7fc
	.uleb128 0x20
	.long	.LVL474
	.long	0x7fc
	.uleb128 0x20
	.long	.LVL494
	.long	0x7fc
	.uleb128 0x1d
	.long	.LVL501
	.long	0xc9b
	.long	0x1f27
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x7c
	.sleb128 1
	.byte	0
	.uleb128 0x20
	.long	.LVL506
	.long	0x7fc
	.uleb128 0x20
	.long	.LVL507
	.long	0x7fc
	.uleb128 0x20
	.long	.LVL508
	.long	0x7fc
	.uleb128 0x20
	.long	.LVL509
	.long	0x7fc
	.uleb128 0x1f
	.long	.LVL539
	.long	0x1a76
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0
	.uleb128 0x6
	.long	0x234
	.long	0x1f81
	.uleb128 0xb
	.long	0x396
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.string	"get_fileinfo"
	.byte	0x1
	.word	0xa55
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2059
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0xa56
	.long	0x1444
	.long	.LLST157
	.uleb128 0x15
	.string	"fno"
	.byte	0x1
	.word	0xa57
	.long	0x2059
	.long	.LLST158
	.uleb128 0x16
	.string	"si"
	.byte	0x1
	.word	0xa5a
	.long	0x210
	.long	.LLST159
	.uleb128 0x16
	.string	"di"
	.byte	0x1
	.word	0xa5a
	.long	0x210
	.long	.LLST160
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.word	0xa5f
	.long	0x241
	.long	.LLST161
	.uleb128 0x24
	.long	0x123b
	.long	.LBB96
	.long	.LBE96
	.byte	0x1
	.word	0xab0
	.long	0x201e
	.uleb128 0x25
	.long	0x1251
	.long	.LLST162
	.uleb128 0x29
	.long	.LBB97
	.long	.LBE97
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST163
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	0x123b
	.long	.LBB98
	.long	.LBE98
	.byte	0x1
	.word	0xab1
	.long	0x204f
	.uleb128 0x25
	.long	0x1251
	.long	.LLST164
	.uleb128 0x29
	.long	.LBB99
	.long	.LBE99
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST165
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL570
	.long	0x7fc
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x597
	.uleb128 0x14
	.string	"ld_clust"
	.byte	0x1
	.word	0x72a
	.byte	0x1
	.long	0x234
	.long	.LFB22
	.long	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2113
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0x72b
	.long	0x407
	.long	.LLST166
	.uleb128 0x18
	.string	"dir"
	.byte	0x1
	.word	0x72c
	.long	0x83d
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x16
	.string	"cl"
	.byte	0x1
	.word	0x72f
	.long	0x234
	.long	.LLST167
	.uleb128 0x24
	.long	0x123b
	.long	.LBB104
	.long	.LBE104
	.byte	0x1
	.word	0x731
	.long	0x20e5
	.uleb128 0x25
	.long	0x1251
	.long	.LLST168
	.uleb128 0x29
	.long	.LBB105
	.long	.LBE105
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST169
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x123b
	.long	.LBB106
	.long	.LBE106
	.byte	0x1
	.word	0x733
	.uleb128 0x25
	.long	0x1251
	.long	.LLST170
	.uleb128 0x29
	.long	.LBB107
	.long	.LBE107
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST171
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"create_name"
	.byte	0x1
	.word	0xb0b
	.byte	0x1
	.long	0x6f8
	.byte	0x1
	.long	0x218f
	.uleb128 0x23
	.string	"dp"
	.byte	0x1
	.word	0xb0c
	.long	0x1444
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.word	0xb0d
	.long	0x9a8
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.word	0xb8a
	.long	0x21c
	.uleb128 0x28
	.string	"d"
	.byte	0x1
	.word	0xb8a
	.long	0x21c
	.uleb128 0x28
	.string	"sfn"
	.byte	0x1
	.word	0xb8a
	.long	0x49f
	.uleb128 0x28
	.string	"ni"
	.byte	0x1
	.word	0xb8b
	.long	0x210
	.uleb128 0x28
	.string	"si"
	.byte	0x1
	.word	0xb8b
	.long	0x210
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.word	0xb8b
	.long	0x210
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.word	0xb8c
	.long	0x218f
	.byte	0
	.uleb128 0xc
	.byte	0x3
	.byte	0x7
	.long	0x2196
	.uleb128 0xd
	.long	0x24e
	.uleb128 0x27
	.string	"dbc_1st"
	.byte	0x1
	.word	0x2bd
	.byte	0x1
	.long	0x18d
	.byte	0x1
	.long	0x21bc
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.word	0x2bd
	.long	0x21c
	.byte	0
	.uleb128 0x27
	.string	"dbc_2nd"
	.byte	0x1
	.word	0x2d1
	.byte	0x1
	.long	0x18d
	.byte	0x1
	.long	0x21dd
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.word	0x2d1
	.long	0x21c
	.byte	0
	.uleb128 0x27
	.string	"chk_chr"
	.byte	0x1
	.word	0x2b5
	.byte	0x1
	.long	0x18d
	.byte	0x1
	.long	0x220c
	.uleb128 0x23
	.string	"str"
	.byte	0x1
	.word	0x2b5
	.long	0x218f
	.uleb128 0x23
	.string	"chr"
	.byte	0x1
	.word	0x2b5
	.long	0x18d
	.byte	0
	.uleb128 0x27
	.string	"dir_find"
	.byte	0x1
	.word	0x96c
	.byte	0x1
	.long	0x6f8
	.byte	0x1
	.long	0x2250
	.uleb128 0x23
	.string	"dp"
	.byte	0x1
	.word	0x96d
	.long	0x1444
	.uleb128 0x28
	.string	"res"
	.byte	0x1
	.word	0x970
	.long	0x6f8
	.uleb128 0x28
	.string	"fs"
	.byte	0x1
	.word	0x971
	.long	0x407
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.word	0x972
	.long	0x21c
	.byte	0
	.uleb128 0x14
	.string	"follow_path"
	.byte	0x1
	.word	0xbd0
	.byte	0x1
	.long	0x6f8
	.long	.LFB32
	.long	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x24b8
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0xbd1
	.long	0x1444
	.long	.LLST172
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0xbd2
	.long	0x51f
	.long	.LLST173
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0xbd5
	.long	0x6f8
	.long	.LLST174
	.uleb128 0x16
	.string	"ns"
	.byte	0x1
	.word	0xbd6
	.long	0x21c
	.long	.LLST175
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.word	0xbd7
	.long	0x407
	.long	.LLST176
	.uleb128 0x2b
	.long	0x2113
	.long	.LBB120
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.word	0xbfa
	.long	0x237c
	.uleb128 0x25
	.long	0x2138
	.long	.LLST177
	.uleb128 0x25
	.long	0x212d
	.long	.LLST178
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.long	0x2144
	.long	.LLST179
	.uleb128 0x2d
	.long	0x214e
	.uleb128 0x2a
	.long	0x2158
	.long	.LLST180
	.uleb128 0x2a
	.long	0x2164
	.long	.LLST181
	.uleb128 0x2a
	.long	0x216f
	.long	.LLST182
	.uleb128 0x2a
	.long	0x217a
	.long	.LLST183
	.uleb128 0x2a
	.long	0x2184
	.long	.LLST184
	.uleb128 0x2b
	.long	0x21dd
	.long	.LBB122
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.word	0xbba
	.long	0x234e
	.uleb128 0x25
	.long	0x21ff
	.long	.LLST185
	.uleb128 0x25
	.long	0x21f3
	.long	.LLST186
	.byte	0
	.uleb128 0x1f
	.long	.LVL605
	.long	0x8c2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -24
	.byte	0x94
	.byte	0x2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x220c
	.long	.LBB130
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.word	0xbfc
	.long	0x2475
	.uleb128 0x25
	.long	0x2223
	.long	.LLST187
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x2a
	.long	0x222e
	.long	.LLST188
	.uleb128 0x2a
	.long	0x223a
	.long	.LLST189
	.uleb128 0x2a
	.long	0x2245
	.long	.LLST190
	.uleb128 0x24
	.long	0x1a1d
	.long	.LBB132
	.long	.LBE132
	.byte	0x1
	.word	0x9ad
	.long	0x240e
	.uleb128 0x25
	.long	0x1a4b
	.long	.LLST191
	.uleb128 0x25
	.long	0x1a3f
	.long	.LLST192
	.uleb128 0x25
	.long	0x1a33
	.long	.LLST193
	.uleb128 0x29
	.long	.LBB133
	.long	.LBE133
	.uleb128 0x2a
	.long	0x1a57
	.long	.LLST194
	.uleb128 0x2a
	.long	0x1a61
	.long	.LLST195
	.uleb128 0x2a
	.long	0x1a6b
	.long	.LLST196
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL625
	.long	0x1385
	.long	0x2439
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x2
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL629
	.long	0xc9b
	.long	0x2452
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LVL643
	.long	0x16d1
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL601
	.long	0x1385
	.long	0x24a0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x2
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LVL650
	.long	0x205f
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -22
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_mount"
	.byte	0x1
	.word	0xda9
	.byte	0x1
	.long	0x6f8
	.long	.LFB37
	.long	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2581
	.uleb128 0x15
	.string	"fs"
	.byte	0x1
	.word	0xdaa
	.long	0x407
	.long	.LLST197
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0xdab
	.long	0x51f
	.long	.LLST198
	.uleb128 0x15
	.string	"opt"
	.byte	0x1
	.word	0xdac
	.long	0x21c
	.long	.LLST199
	.uleb128 0x16
	.string	"cfs"
	.byte	0x1
	.word	0xdaf
	.long	0x407
	.long	.LLST200
	.uleb128 0x16
	.string	"vol"
	.byte	0x1
	.word	0xdb0
	.long	0x18d
	.long	.LLST201
	.uleb128 0x28
	.string	"res"
	.byte	0x1
	.word	0xdb1
	.long	0x6f8
	.uleb128 0x1c
	.string	"rp"
	.byte	0x1
	.word	0xdb2
	.long	0x51f
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1d
	.long	.LVL676
	.long	0xb03
	.long	0x255b
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x1f
	.long	.LVL680
	.long	0x1bb1
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_open"
	.byte	0x1
	.word	0xdd9
	.byte	0x1
	.long	0x6f8
	.long	.LFB38
	.long	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2835
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0xdda
	.long	0x7d6
	.long	.LLST202
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0xddb
	.long	0x51f
	.long	.LLST203
	.uleb128 0x15
	.string	"mode"
	.byte	0x1
	.word	0xddc
	.long	0x21c
	.long	.LLST204
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0xddf
	.long	0x6f8
	.long	.LLST205
	.uleb128 0x1c
	.string	"dj"
	.byte	0x1
	.word	0xde0
	.long	0x52b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0xde1
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 44
	.uleb128 0x16
	.string	"dw"
	.byte	0x1
	.word	0xde3
	.long	0x234
	.long	.LLST206
	.uleb128 0x16
	.string	"cl"
	.byte	0x1
	.word	0xde3
	.long	0x234
	.long	.LLST207
	.uleb128 0x16
	.string	"bcs"
	.byte	0x1
	.word	0xde3
	.long	0x234
	.long	.LLST208
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.word	0xde3
	.long	0x234
	.long	.LLST209
	.uleb128 0x16
	.string	"sc"
	.byte	0x1
	.word	0xde3
	.long	0x234
	.long	.LLST210
	.uleb128 0x16
	.string	"ofs"
	.byte	0x1
	.word	0xde4
	.long	0x256
	.long	.LLST211
	.uleb128 0x24
	.long	0xe63
	.long	.LBB144
	.long	.LBE144
	.byte	0x1
	.word	0xe26
	.long	0x2681
	.uleb128 0x25
	.long	0xe82
	.long	.LLST212
	.uleb128 0x25
	.long	0xe76
	.long	.LLST213
	.byte	0
	.uleb128 0x24
	.long	0xe63
	.long	.LBB146
	.long	.LBE146
	.byte	0x1
	.word	0xe29
	.long	0x26a8
	.uleb128 0x25
	.long	0xe82
	.long	.LLST214
	.uleb128 0x25
	.long	0xe76
	.long	.LLST215
	.byte	0
	.uleb128 0x1d
	.long	.LVL688
	.long	0x1bb1
	.long	0x26d2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL690
	.long	0x2250
	.long	0x26ec
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x1d
	.long	.LVL694
	.long	0x1819
	.long	0x2706
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x20
	.long	.LVL698
	.long	0x205f
	.uleb128 0x20
	.long	.LVL700
	.long	0x446f
	.uleb128 0x1d
	.long	.LVL706
	.long	0x1199
	.long	0x2736
	.uleb128 0x1e
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL713
	.long	0x15ad
	.long	0x2772
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL715
	.long	0xc9b
	.long	0x2791
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL721
	.long	0x205f
	.long	0x27aa
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL722
	.long	0x7fc
	.uleb128 0x1d
	.long	.LVL723
	.long	0x8c2
	.long	0x27e2
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x200
	.byte	0
	.uleb128 0x1d
	.long	.LVL727
	.long	0x1269
	.long	0x27fb
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL729
	.long	0x923
	.long	0x2814
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LVL731
	.long	0x4440
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_read"
	.byte	0x1
	.word	0xe97
	.byte	0x1
	.long	0x6f8
	.long	.LFB39
	.long	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2a62
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0xe98
	.long	0x7d6
	.long	.LLST216
	.uleb128 0x15
	.string	"buff"
	.byte	0x1
	.word	0xe99
	.long	0x8b8
	.long	.LLST217
	.uleb128 0x15
	.string	"btr"
	.byte	0x1
	.word	0xe9a
	.long	0x210
	.long	.LLST218
	.uleb128 0x15
	.string	"br"
	.byte	0x1
	.word	0xe9b
	.long	0x2a62
	.long	.LLST219
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0xe9e
	.long	0x6f8
	.long	.LLST220
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0xe9f
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.word	0xea0
	.long	0x234
	.long	.LLST221
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.word	0xea0
	.long	0x234
	.long	.LLST222
	.uleb128 0x16
	.string	"remain"
	.byte	0x1
	.word	0xea1
	.long	0x256
	.long	.LLST223
	.uleb128 0x16
	.string	"rcnt"
	.byte	0x1
	.word	0xea2
	.long	0x210
	.long	.LLST224
	.uleb128 0x16
	.string	"cc"
	.byte	0x1
	.word	0xea2
	.long	0x210
	.long	.LLST225
	.uleb128 0x16
	.string	"csect"
	.byte	0x1
	.word	0xea2
	.long	0x210
	.long	.LLST226
	.uleb128 0x16
	.string	"rbuff"
	.byte	0x1
	.word	0xea3
	.long	0x49f
	.long	.LLST227
	.uleb128 0x1d
	.long	.LVL761
	.long	0xb84
	.long	0x294d
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -31
	.byte	0
	.uleb128 0x20
	.long	.LVL771
	.long	0x1269
	.uleb128 0x1d
	.long	.LVL773
	.long	0x923
	.long	0x2971
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -29
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.long	.LVL779
	.long	0x4440
	.long	0x29a6
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL780
	.long	0x849
	.long	0x29d0
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -23
	.byte	0x94
	.byte	0x3
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x200
	.byte	0
	.uleb128 0x1d
	.long	.LVL785
	.long	0x4433
	.long	0x2a0a
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -23
	.byte	0x94
	.byte	0x3
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL786
	.long	0x4440
	.long	0x2a41
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -25
	.byte	0x94
	.byte	0x2
	.uleb128 0x1e
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL791
	.long	0x849
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x210
	.uleb128 0x30
	.byte	0x1
	.string	"f_write"
	.byte	0x1
	.word	0xefb
	.byte	0x1
	.long	0x6f8
	.long	.LFB40
	.long	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2ca5
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0xefc
	.long	0x7d6
	.long	.LLST228
	.uleb128 0x15
	.string	"buff"
	.byte	0x1
	.word	0xefd
	.long	0x8ba
	.long	.LLST229
	.uleb128 0x15
	.string	"btw"
	.byte	0x1
	.word	0xefe
	.long	0x210
	.long	.LLST230
	.uleb128 0x15
	.string	"bw"
	.byte	0x1
	.word	0xeff
	.long	0x2a62
	.long	.LLST231
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0xf02
	.long	0x6f8
	.long	.LLST232
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0xf03
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.word	0xf04
	.long	0x234
	.long	.LLST233
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.word	0xf04
	.long	0x234
	.long	.LLST234
	.uleb128 0x16
	.string	"wcnt"
	.byte	0x1
	.word	0xf05
	.long	0x210
	.long	.LLST235
	.uleb128 0x16
	.string	"cc"
	.byte	0x1
	.word	0xf05
	.long	0x210
	.long	.LLST236
	.uleb128 0x16
	.string	"csect"
	.byte	0x1
	.word	0xf05
	.long	0x210
	.long	.LLST237
	.uleb128 0x16
	.string	"wbuff"
	.byte	0x1
	.word	0xf06
	.long	0x83d
	.long	.LLST238
	.uleb128 0x1d
	.long	.LVL803
	.long	0xb84
	.long	0x2b6e
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1d
	.long	.LVL811
	.long	0x144a
	.long	0x2b8c
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL813
	.long	0x144a
	.uleb128 0x1d
	.long	.LVL815
	.long	0x4433
	.long	0x2bcf
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -23
	.byte	0x94
	.byte	0x3
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL816
	.long	0x923
	.long	0x2bea
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -32
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.long	.LVL822
	.long	0x4433
	.long	0x2c22
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL823
	.long	0x849
	.long	0x2c49
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -25
	.byte	0x94
	.byte	0x2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xa
	.word	0x200
	.byte	0
	.uleb128 0x1d
	.long	.LVL827
	.long	0x4440
	.long	0x2c81
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.byte	0x91
	.sleb128 -25
	.byte	0x94
	.byte	0x2
	.uleb128 0x1e
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -30
	.byte	0x6
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL832
	.long	0x849
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"putc_bfd"
	.byte	0x1
	.word	0x184a
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2d2a
	.uleb128 0x15
	.string	"pb"
	.byte	0x1
	.word	0x184b
	.long	0x2d2a
	.long	.LLST239
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.word	0x184c
	.long	0x241
	.long	.LLST240
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.word	0x184f
	.long	0x210
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.word	0x1850
	.long	0x18d
	.long	.LLST241
	.uleb128 0x16
	.string	"nc"
	.byte	0x1
	.word	0x1850
	.long	0x18d
	.long	.LLST242
	.uleb128 0x1f
	.long	.LVL848
	.long	0x2a68
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x7ec
	.uleb128 0x14
	.string	"putc_flush"
	.byte	0x1
	.word	0x18cd
	.byte	0x1
	.long	0x18d
	.long	.LFB57
	.long	.LFE57
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2d86
	.uleb128 0x15
	.string	"pb"
	.byte	0x1
	.word	0x18ce
	.long	0x2d2a
	.long	.LLST243
	.uleb128 0x1c
	.string	"nw"
	.byte	0x1
	.word	0x18d1
	.long	0x210
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1f
	.long	.LVL854
	.long	0x2a68
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_sync"
	.byte	0x1
	.word	0xf74
	.byte	0x1
	.long	0x6f8
	.long	.LFB41
	.long	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2ee2
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0xf75
	.long	0x7d6
	.long	.LLST244
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0xf78
	.long	0x6f8
	.long	.LLST245
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0xf79
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x16
	.string	"tm"
	.byte	0x1
	.word	0xf7a
	.long	0x234
	.long	.LLST246
	.uleb128 0x16
	.string	"dir"
	.byte	0x1
	.word	0xf7b
	.long	0x49f
	.long	.LLST247
	.uleb128 0x24
	.long	0xe63
	.long	.LBB154
	.long	.LBE154
	.byte	0x1
	.word	0xfae
	.long	0x2e19
	.uleb128 0x25
	.long	0xe82
	.long	.LLST248
	.uleb128 0x25
	.long	0xe76
	.long	.LLST249
	.byte	0
	.uleb128 0x24
	.long	0xe63
	.long	.LBB156
	.long	.LBE156
	.byte	0x1
	.word	0xfaf
	.long	0x2e3c
	.uleb128 0x25
	.long	0xe82
	.long	.LLST250
	.uleb128 0x2e
	.long	0xe76
	.byte	0
	.uleb128 0x24
	.long	0xe8f
	.long	.LBB158
	.long	.LBE158
	.byte	0x1
	.word	0xfb0
	.long	0x2e5f
	.uleb128 0x25
	.long	0xead
	.long	.LLST251
	.uleb128 0x2e
	.long	0xea1
	.byte	0
	.uleb128 0x1d
	.long	.LVL860
	.long	0xb84
	.long	0x2e83
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x1d
	.long	.LVL862
	.long	0x4433
	.long	0x2ead
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL863
	.long	0x446f
	.uleb128 0x20
	.long	.LVL865
	.long	0xc9b
	.uleb128 0x1d
	.long	.LVL868
	.long	0x1199
	.long	0x2ed8
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL879
	.long	0xeba
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_close"
	.byte	0x1
	.word	0xfc5
	.byte	0x1
	.long	0x6f8
	.long	.LFB42
	.long	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2f6a
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0xfc6
	.long	0x7d6
	.long	.LLST252
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0xfc9
	.long	0x6f8
	.long	.LLST253
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0xfca
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1d
	.long	.LVL883
	.long	0x2d86
	.long	0x2f49
	.uleb128 0x1e
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
	.uleb128 0x1f
	.long	.LVL885
	.long	0xb84
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_lseek"
	.byte	0x1
	.word	0x109c
	.byte	0x1
	.long	0x6f8
	.long	.LFB43
	.long	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x30d0
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0x109d
	.long	0x7d6
	.long	.LLST254
	.uleb128 0x15
	.string	"ofs"
	.byte	0x1
	.word	0x109e
	.long	0x256
	.long	.LLST255
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x10a1
	.long	0x6f8
	.long	.LLST256
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x10a2
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.word	0x10a3
	.long	0x234
	.long	.LLST257
	.uleb128 0x16
	.string	"bcs"
	.byte	0x1
	.word	0x10a3
	.long	0x234
	.long	.LLST258
	.uleb128 0x16
	.string	"nsect"
	.byte	0x1
	.word	0x10a3
	.long	0x234
	.long	.LLST259
	.uleb128 0x16
	.string	"ifptr"
	.byte	0x1
	.word	0x10a4
	.long	0x256
	.long	.LLST260
	.uleb128 0x1d
	.long	.LVL888
	.long	0xb84
	.long	0x3030
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.long	.LVL900
	.long	0x144a
	.long	0x3059
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL903
	.long	0x144a
	.uleb128 0x20
	.long	.LVL905
	.long	0x1269
	.uleb128 0x20
	.long	.LVL909
	.long	0x923
	.uleb128 0x1d
	.long	.LVL918
	.long	0x4433
	.long	0x309e
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL919
	.long	0x4440
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 34
	.uleb128 0x1e
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_opendir"
	.byte	0x1
	.word	0x113d
	.byte	0x1
	.long	0x6f8
	.long	.LFB44
	.long	.LFE44
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x31a1
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x113e
	.long	0x1444
	.long	.LLST261
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0x113f
	.long	0x51f
	.long	.LLST262
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x1142
	.long	0x6f8
	.long	.LLST263
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x1143
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1d
	.long	.LVL928
	.long	0x1bb1
	.long	0x3159
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL930
	.long	0x2250
	.long	0x3172
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL932
	.long	0x205f
	.uleb128 0x1f
	.long	.LVL941
	.long	0x1385
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_closedir"
	.byte	0x1
	.word	0x117f
	.byte	0x1
	.long	0x6f8
	.long	.LFB45
	.long	.LFE45
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3211
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x1180
	.long	0x1444
	.long	.LLST264
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.word	0x1183
	.long	0x6f8
	.byte	0x1
	.byte	0x68
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x1184
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1f
	.long	.LVL948
	.long	0xb84
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_readdir"
	.byte	0x1
	.word	0x119d
	.byte	0x1
	.long	0x6f8
	.long	.LFB46
	.long	.LFE46
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3325
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x119e
	.long	0x1444
	.long	.LLST265
	.uleb128 0x15
	.string	"fno"
	.byte	0x1
	.word	0x119f
	.long	0x2059
	.long	.LLST266
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x11a2
	.long	0x6f8
	.long	.LLST267
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x11a3
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1d
	.long	.LVL952
	.long	0xb84
	.long	0x3295
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x1d
	.long	.LVL954
	.long	0x1385
	.long	0x32be
	.uleb128 0x1e
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
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL956
	.long	0x1966
	.long	0x32e1
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL958
	.long	0x1f81
	.long	0x3305
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL959
	.long	0x16d1
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_findnext"
	.byte	0x1
	.word	0x11c1
	.byte	0x1
	.long	0x6f8
	.long	.LFB47
	.long	.LFE47
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x33cb
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x11c2
	.long	0x1444
	.long	.LLST268
	.uleb128 0x15
	.string	"fno"
	.byte	0x1
	.word	0x11c3
	.long	0x2059
	.long	.LLST269
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x11c6
	.long	0x6f8
	.long	.LLST270
	.uleb128 0x1d
	.long	.LVL967
	.long	0x3211
	.long	0x339c
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL969
	.long	0x9ae
	.uleb128 0x1e
	.byte	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_findfirst"
	.byte	0x1
	.word	0x11da
	.byte	0x1
	.long	0x6f8
	.long	.LFB48
	.long	.LFE48
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x348c
	.uleb128 0x15
	.string	"dp"
	.byte	0x1
	.word	0x11db
	.long	0x1444
	.long	.LLST271
	.uleb128 0x15
	.string	"fno"
	.byte	0x1
	.word	0x11dc
	.long	0x2059
	.long	.LLST272
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0x11dd
	.long	0x51f
	.long	.LLST273
	.uleb128 0x15
	.string	"pattern"
	.byte	0x1
	.word	0x11de
	.long	0x51f
	.long	.LLST274
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x11e1
	.long	0x6f8
	.long	.LLST275
	.uleb128 0x1d
	.long	.LVL975
	.long	0x30d0
	.long	0x346b
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0
	.uleb128 0x1f
	.long	.LVL977
	.long	0x3325
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_stat"
	.byte	0x1
	.word	0x11f5
	.byte	0x1
	.long	0x6f8
	.long	.LFB49
	.long	.LFE49
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x354d
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0x11f6
	.long	0x51f
	.long	.LLST276
	.uleb128 0x15
	.string	"fno"
	.byte	0x1
	.word	0x11f7
	.long	0x2059
	.long	.LLST277
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x11fa
	.long	0x6f8
	.long	.LLST278
	.uleb128 0x1c
	.string	"dj"
	.byte	0x1
	.word	0x11fb
	.long	0x52b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1d
	.long	.LVL984
	.long	0x1bb1
	.long	0x3513
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL986
	.long	0x2250
	.long	0x352c
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -53
	.byte	0
	.uleb128 0x1f
	.long	.LVL988
	.long	0x1f81
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_getfree"
	.byte	0x1
	.word	0x1218
	.byte	0x1
	.long	0x6f8
	.long	.LFB50
	.long	.LFE50
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x36cf
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0x1219
	.long	0x51f
	.long	.LLST279
	.uleb128 0x15
	.string	"nclst"
	.byte	0x1
	.word	0x121a
	.long	0x36cf
	.long	.LLST280
	.uleb128 0x15
	.string	"fatfs"
	.byte	0x1
	.word	0x121b
	.long	0xbe5
	.long	.LLST281
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x121e
	.long	0x6f8
	.long	.LLST282
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x121f
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x16
	.string	"nfree"
	.byte	0x1
	.word	0x1220
	.long	0x234
	.long	.LLST283
	.uleb128 0x21
	.long	.LASF1
	.byte	0x1
	.word	0x1220
	.long	0x234
	.long	.LLST284
	.uleb128 0x21
	.long	.LASF0
	.byte	0x1
	.word	0x1220
	.long	0x234
	.long	.LLST285
	.uleb128 0x16
	.string	"stat"
	.byte	0x1
	.word	0x1220
	.long	0x234
	.long	.LLST286
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.word	0x1221
	.long	0x210
	.long	.LLST287
	.uleb128 0x1c
	.string	"obj"
	.byte	0x1
	.word	0x1222
	.long	0x40d
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x24
	.long	0x123b
	.long	.LBB162
	.long	.LBE162
	.byte	0x1
	.word	0x1257
	.long	0x3653
	.uleb128 0x25
	.long	0x1251
	.long	.LLST288
	.uleb128 0x29
	.long	.LBB163
	.long	.LBE163
	.uleb128 0x2a
	.long	0x125d
	.long	.LLST289
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL995
	.long	0x1bb1
	.long	0x367c
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL1000
	.long	0x1269
	.long	0x36a6
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1010
	.long	0xc9b
	.long	0x36c5
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL1019
	.long	0x7fc
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x234
	.uleb128 0x30
	.byte	0x1
	.string	"f_truncate"
	.byte	0x1
	.word	0x1271
	.byte	0x1
	.long	0x6f8
	.long	.LFB51
	.long	.LFE51
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x37ee
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0x1272
	.long	0x7d6
	.long	.LLST290
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x1275
	.long	0x6f8
	.long	.LLST291
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x1276
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x16
	.string	"ncl"
	.byte	0x1
	.word	0x1277
	.long	0x234
	.long	.LLST292
	.uleb128 0x1d
	.long	.LVL1033
	.long	0xb84
	.long	0x375a
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0x1d
	.long	.LVL1036
	.long	0x15ad
	.long	0x3784
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1039
	.long	0x1269
	.long	0x379d
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL1040
	.long	0x15ad
	.long	0x37c7
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL1043
	.long	0x4433
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.string	"dir_remove"
	.byte	0x1
	.word	0xa27
	.byte	0x1
	.long	0x6f8
	.byte	0x1
	.long	0x382a
	.uleb128 0x23
	.string	"dp"
	.byte	0x1
	.word	0xa28
	.long	0x1444
	.uleb128 0x28
	.string	"res"
	.byte	0x1
	.word	0xa2b
	.long	0x6f8
	.uleb128 0x28
	.string	"fs"
	.byte	0x1
	.word	0xa2c
	.long	0x407
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_unlink"
	.byte	0x1
	.word	0x12a3
	.byte	0x1
	.long	0x6f8
	.long	.LFB52
	.long	.LFE52
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x39df
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0x12a4
	.long	0x51f
	.long	.LLST293
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x12a7
	.long	0x6f8
	.long	.LLST294
	.uleb128 0x1c
	.string	"dj"
	.byte	0x1
	.word	0x12a8
	.long	0x52b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1c
	.string	"sdj"
	.byte	0x1
	.word	0x12a8
	.long	0x52b
	.byte	0x2
	.byte	0x8c
	.sleb128 44
	.uleb128 0x16
	.string	"dclst"
	.byte	0x1
	.word	0x12a9
	.long	0x234
	.long	.LLST295
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x12aa
	.long	0x407
	.byte	0x3
	.byte	0x8c
	.sleb128 87
	.uleb128 0x2b
	.long	0x37ee
	.long	.LBB166
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.word	0x12e9
	.long	0x38f5
	.uleb128 0x25
	.long	0x3807
	.long	.LLST296
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x2a
	.long	0x3812
	.long	.LLST297
	.uleb128 0x2a
	.long	0x381e
	.long	.LLST298
	.uleb128 0x1f
	.long	.LVL1076
	.long	0xc9b
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1057
	.long	0x1bb1
	.long	0x391e
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -15
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.long	.LVL1059
	.long	0x2250
	.long	0x3938
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -103
	.byte	0
	.uleb128 0x1d
	.long	.LVL1062
	.long	0x1385
	.long	0x3961
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL1064
	.long	0x1966
	.long	0x3984
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.long	.LVL1068
	.long	0x15ad
	.long	0x39c0
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -103
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL1070
	.long	0xeba
	.uleb128 0x1f
	.long	.LVL1072
	.long	0x205f
	.uleb128 0x1e
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
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_mkdir"
	.byte	0x1
	.word	0x1301
	.byte	0x1
	.long	0x6f8
	.long	.LFB53
	.long	.LFE53
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3c5a
	.uleb128 0x1b
	.long	.LASF2
	.byte	0x1
	.word	0x1302
	.long	0x51f
	.long	.LLST299
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x1305
	.long	0x6f8
	.long	.LLST300
	.uleb128 0x1c
	.string	"dj"
	.byte	0x1
	.word	0x1306
	.long	0x52b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1c
	.string	"sobj"
	.byte	0x1
	.word	0x1307
	.long	0x40d
	.byte	0x2
	.byte	0x8c
	.sleb128 44
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x1308
	.long	0x407
	.byte	0x2
	.byte	0x8c
	.sleb128 58
	.uleb128 0x16
	.string	"dcl"
	.byte	0x1
	.word	0x1309
	.long	0x234
	.long	.LLST301
	.uleb128 0x16
	.string	"pcl"
	.byte	0x1
	.word	0x1309
	.long	0x234
	.long	.LLST302
	.uleb128 0x16
	.string	"tm"
	.byte	0x1
	.word	0x1309
	.long	0x234
	.long	.LLST303
	.uleb128 0x24
	.long	0xe63
	.long	.LBB174
	.long	.LBE174
	.byte	0x1
	.word	0x1325
	.long	0x3aa2
	.uleb128 0x25
	.long	0xe82
	.long	.LLST304
	.uleb128 0x25
	.long	0xe76
	.long	.LLST305
	.byte	0
	.uleb128 0x24
	.long	0xe63
	.long	.LBB176
	.long	.LBE176
	.byte	0x1
	.word	0x133c
	.long	0x3ac9
	.uleb128 0x25
	.long	0xe82
	.long	.LLST306
	.uleb128 0x25
	.long	0xe76
	.long	.LLST307
	.byte	0
	.uleb128 0x1d
	.long	.LVL1083
	.long	0x1bb1
	.long	0x3af2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.long	.LVL1085
	.long	0x2250
	.long	0x3b0c
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -75
	.byte	0
	.uleb128 0x1d
	.long	.LVL1087
	.long	0x144a
	.long	0x3b35
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL1090
	.long	0x446f
	.uleb128 0x1d
	.long	.LVL1092
	.long	0x8c2
	.long	0x3b61
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x1d
	.long	.LVL1103
	.long	0x1199
	.long	0x3b80
	.uleb128 0x1e
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1104
	.long	0x849
	.long	0x3b99
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.long	.LVL1106
	.long	0x1199
	.uleb128 0x1d
	.long	.LVL1107
	.long	0x1819
	.long	0x3bbc
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -75
	.byte	0
	.uleb128 0x1d
	.long	.LVL1114
	.long	0x1199
	.long	0x3bdb
	.uleb128 0x1e
	.byte	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL1115
	.long	0xeba
	.uleb128 0x1d
	.long	.LVL1118
	.long	0x15ad
	.long	0x3c1f
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1e
	.byte	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL1122
	.long	0x446f
	.uleb128 0x20
	.long	.LVL1124
	.long	0x446f
	.uleb128 0x1d
	.long	.LVL1126
	.long	0xd3c
	.long	0x3c50
	.uleb128 0x1e
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
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL1130
	.long	0x446f
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_rename"
	.byte	0x1
	.word	0x1355
	.byte	0x1
	.long	0x6f8
	.long	.LFB54
	.long	.LFE54
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3eb3
	.uleb128 0x15
	.string	"path_old"
	.byte	0x1
	.word	0x1356
	.long	0x51f
	.long	.LLST308
	.uleb128 0x15
	.string	"path_new"
	.byte	0x1
	.word	0x1357
	.long	0x51f
	.long	.LLST309
	.uleb128 0x16
	.string	"res"
	.byte	0x1
	.word	0x135a
	.long	0x6f8
	.long	.LLST310
	.uleb128 0x1c
	.string	"djo"
	.byte	0x1
	.word	0x135b
	.long	0x52b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1c
	.string	"djn"
	.byte	0x1
	.word	0x135b
	.long	0x52b
	.byte	0x2
	.byte	0x8c
	.sleb128 44
	.uleb128 0x1c
	.string	"fs"
	.byte	0x1
	.word	0x135c
	.long	0x407
	.byte	0x3
	.byte	0x8c
	.sleb128 87
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.word	0x135d
	.long	0x3eb3
	.byte	0x3
	.byte	0x8c
	.sleb128 89
	.uleb128 0x16
	.string	"dir"
	.byte	0x1
	.word	0x135d
	.long	0x49f
	.long	.LLST311
	.uleb128 0x16
	.string	"dw"
	.byte	0x1
	.word	0x135e
	.long	0x234
	.long	.LLST312
	.uleb128 0x2b
	.long	0x37ee
	.long	.LBB180
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.word	0x13aa
	.long	0x3d5d
	.uleb128 0x25
	.long	0x3807
	.long	.LLST313
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x2a
	.long	0x3812
	.long	.LLST314
	.uleb128 0x2a
	.long	0x381e
	.long	.LLST315
	.uleb128 0x1f
	.long	.LVL1164
	.long	0xc9b
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1134
	.long	0xb03
	.long	0x3d76
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x1d
	.long	.LVL1135
	.long	0x1bb1
	.long	0x3d9f
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.long	.LVL1137
	.long	0x2250
	.long	0x3db9
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -134
	.byte	0
	.uleb128 0x1d
	.long	.LVL1142
	.long	0x1819
	.long	0x3dd3
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -91
	.byte	0
	.uleb128 0x1d
	.long	.LVL1145
	.long	0x849
	.long	0x3df6
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 13
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x43
	.byte	0
	.uleb128 0x1d
	.long	.LVL1146
	.long	0x205f
	.long	0x3e0f
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL1147
	.long	0x923
	.long	0x3e28
	.uleb128 0x1e
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
	.uleb128 0x1d
	.long	.LVL1148
	.long	0xc9b
	.long	0x3e41
	.uleb128 0x1e
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
	.uleb128 0x20
	.long	.LVL1150
	.long	0x1199
	.uleb128 0x20
	.long	.LVL1154
	.long	0xeba
	.uleb128 0x1d
	.long	.LVL1157
	.long	0x849
	.long	0x3e77
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.long	.LVL1158
	.long	0x849
	.long	0x3e9c
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -91
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.uleb128 0x1f
	.long	.LVL1159
	.long	0x2250
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -91
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x21c
	.long	0x3ec3
	.uleb128 0xb
	.long	0x396
	.byte	0x1f
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_gets"
	.byte	0x1
	.word	0x17bd
	.byte	0x1
	.long	0x3f90
	.long	.LFB55
	.long	.LFE55
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3f90
	.uleb128 0x15
	.string	"buff"
	.byte	0x1
	.word	0x17be
	.long	0x3f90
	.long	.LLST316
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.word	0x17bf
	.long	0x18d
	.long	.LLST317
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0x17c0
	.long	0x7d6
	.long	.LLST318
	.uleb128 0x16
	.string	"nc"
	.byte	0x1
	.word	0x17c3
	.long	0x18d
	.long	.LLST319
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.word	0x17c4
	.long	0x3f90
	.long	.LLST320
	.uleb128 0x1c
	.string	"s"
	.byte	0x1
	.word	0x17c5
	.long	0x3f96
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1c
	.string	"rc"
	.byte	0x1
	.word	0x17c6
	.long	0x210
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.uleb128 0x16
	.string	"dc"
	.byte	0x1
	.word	0x17c7
	.long	0x234
	.long	.LLST321
	.uleb128 0x1f
	.long	.LVL1171
	.long	0x2835
	.uleb128 0x1e
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
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.long	0x241
	.uleb128 0x6
	.long	0x21c
	.long	0x3fa6
	.uleb128 0xb
	.long	0x396
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.string	"putc_init"
	.byte	0x1
	.word	0x18da
	.byte	0x1
	.byte	0x1
	.long	0x3fd1
	.uleb128 0x23
	.string	"pb"
	.byte	0x1
	.word	0x18db
	.long	0x2d2a
	.uleb128 0x23
	.string	"fp"
	.byte	0x1
	.word	0x18dc
	.long	0x7d6
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_putc"
	.byte	0x1
	.word	0x18e5
	.byte	0x1
	.long	0x18d
	.long	.LFB59
	.long	.LFE59
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x40a5
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.word	0x18e6
	.long	0x241
	.long	.LLST322
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0x18e7
	.long	0x7d6
	.long	.LLST323
	.uleb128 0x1c
	.string	"pb"
	.byte	0x1
	.word	0x18ea
	.long	0x7ec
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x24
	.long	0x3fa6
	.long	.LBB186
	.long	.LBE186
	.byte	0x1
	.word	0x18ed
	.long	0x406e
	.uleb128 0x25
	.long	0x3fc5
	.long	.LLST324
	.uleb128 0x25
	.long	0x3fba
	.long	.LLST325
	.uleb128 0x1f
	.long	.LVL1184
	.long	0x8c2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1186
	.long	0x2ca5
	.long	0x408e
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL1187
	.long	0x2d30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -77
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_puts"
	.byte	0x1
	.word	0x18f9
	.byte	0x1
	.long	0x18d
	.long	.LFB60
	.long	.LFE60
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4176
	.uleb128 0x15
	.string	"str"
	.byte	0x1
	.word	0x18fa
	.long	0x51f
	.long	.LLST326
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.word	0x18fb
	.long	0x7d6
	.long	.LLST327
	.uleb128 0x1c
	.string	"pb"
	.byte	0x1
	.word	0x18fe
	.long	0x7ec
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x24
	.long	0x3fa6
	.long	.LBB190
	.long	.LBE190
	.byte	0x1
	.word	0x1901
	.long	0x4145
	.uleb128 0x25
	.long	0x3fc5
	.long	.LLST328
	.uleb128 0x31
	.long	0x3fba
	.byte	0x4
	.byte	0x91
	.sleb128 -79
	.byte	0x9f
	.uleb128 0x1f
	.long	.LVL1194
	.long	0x8c2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -79
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1196
	.long	0x2ca5
	.long	0x415f
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -79
	.byte	0
	.uleb128 0x1f
	.long	.LVL1197
	.long	0x2d30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -79
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"f_printf"
	.byte	0x1
	.word	0x190d
	.byte	0x1
	.long	0x18d
	.long	.LFB61
	.long	.LFE61
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x43ca
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.word	0x190e
	.long	0x7d6
	.byte	0x2
	.byte	0x91
	.sleb128 1
	.uleb128 0x15
	.string	"fmt"
	.byte	0x1
	.word	0x190f
	.long	0x51f
	.long	.LLST329
	.uleb128 0x32
	.uleb128 0x16
	.string	"arp"
	.byte	0x1
	.word	0x1913
	.long	0x789
	.long	.LLST330
	.uleb128 0x1c
	.string	"pb"
	.byte	0x1
	.word	0x1914
	.long	0x7ec
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x16
	.string	"f"
	.byte	0x1
	.word	0x1915
	.long	0x21c
	.long	.LLST331
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.word	0x1915
	.long	0x21c
	.long	.LLST332
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.word	0x1916
	.long	0x210
	.long	.LLST333
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.word	0x1916
	.long	0x210
	.long	.LLST334
	.uleb128 0x16
	.string	"w"
	.byte	0x1
	.word	0x1916
	.long	0x210
	.long	.LLST335
	.uleb128 0x16
	.string	"v"
	.byte	0x1
	.word	0x1917
	.long	0x234
	.long	.LLST336
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.word	0x1918
	.long	0x241
	.long	.LLST337
	.uleb128 0x16
	.string	"d"
	.byte	0x1
	.word	0x1918
	.long	0x241
	.long	.LLST338
	.uleb128 0x1c
	.string	"str"
	.byte	0x1
	.word	0x1918
	.long	0x43ca
	.byte	0x3
	.byte	0x8c
	.sleb128 71
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.word	0x1918
	.long	0x3f90
	.long	.LLST339
	.uleb128 0x24
	.long	0x3fa6
	.long	.LBB194
	.long	.LBE194
	.byte	0x1
	.word	0x191b
	.long	0x42b1
	.uleb128 0x2e
	.long	0x3fc5
	.uleb128 0x25
	.long	0x3fba
	.long	.LLST340
	.uleb128 0x1f
	.long	.LVL1202
	.long	0x8c2
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.uleb128 0x1e
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1207
	.long	0x2ca5
	.long	0x42cb
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.byte	0
	.uleb128 0x1d
	.long	.LVL1249
	.long	0x2ca5
	.long	0x42eb
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.long	.LVL1253
	.long	0x2ca5
	.long	0x4305
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.byte	0
	.uleb128 0x1d
	.long	.LVL1256
	.long	0x2ca5
	.long	0x4325
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1d
	.long	.LVL1261
	.long	0x2ca5
	.long	0x433f
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.byte	0
	.uleb128 0x1d
	.long	.LVL1263
	.long	0x2ca5
	.long	0x4359
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.byte	0
	.uleb128 0x1d
	.long	.LVL1304
	.long	0x2ca5
	.long	0x4379
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1310
	.long	0x2ca5
	.long	0x4393
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.byte	0
	.uleb128 0x1d
	.long	.LVL1313
	.long	0x2ca5
	.long	0x43b3
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.uleb128 0x1e
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL1316
	.long	0x2d30
	.uleb128 0x1e
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0x91
	.sleb128 -126
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x241
	.long	0x43da
	.uleb128 0xb
	.long	0x396
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.long	0x407
	.long	0x43ea
	.uleb128 0xb
	.long	0x396
	.byte	0
	.byte	0
	.uleb128 0x1c
	.string	"FatFs"
	.byte	0x1
	.word	0x1b6
	.long	0x43da
	.byte	0x5
	.byte	0x3
	.long	FatFs
	.uleb128 0x1c
	.string	"Fsid"
	.byte	0x1
	.word	0x1b7
	.long	0x228
	.byte	0x5
	.byte	0x3
	.long	Fsid
	.uleb128 0x1c
	.string	"ExCvt"
	.byte	0x1
	.word	0x22e
	.long	0x4425
	.byte	0x5
	.byte	0x3
	.long	ExCvt
	.uleb128 0x1a
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF3
	.long	.LASF3
	.byte	0x4
	.byte	0x25
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF4
	.long	.LASF4
	.byte	0x4
	.byte	0x28
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF5
	.long	.LASF5
	.byte	0x4
	.byte	0x26
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF6
	.long	.LASF6
	.byte	0x4
	.byte	0x2b
	.uleb128 0x34
	.byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.byte	0x46
	.byte	0x41
	.byte	0x54
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.byte	0x1
	.long	.LASF7
	.long	.LASF7
	.byte	0x4
	.byte	0x24
	.uleb128 0x35
	.byte	0x1
	.byte	0x1
	.long	.LASF8
	.long	.LASF8
	.byte	0x3
	.word	0x150
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x30
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.long	.LVL3
	.word	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL12
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL13
	.word	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.long	.LVL13
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x8
	.byte	0x86
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL2
	.long	.LVL4
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x8
	.byte	0x82
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0xb
	.byte	0x82
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0xb
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0xb
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0xb
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0xb
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0xb
	.byte	0x7c
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	.LVL13
	.long	.LFE1
	.word	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x88
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL14
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL14
	.long	.LVL16
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x22
	.byte	0x8a
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.word	0xc
	.byte	0x8a
	.sleb128 0
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL15
	.long	.LVL16
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL18
	.word	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.word	0x9
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0xa
	.byte	0x88
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x8e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LFE5
	.word	0xb
	.byte	0x8e
	.sleb128 0
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x22
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL22
	.long	.LFE5
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL23
	.long	.LVL25
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LFE13
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL23
	.long	.LVL24
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
	.long	.LVL24
	.long	.LFE13
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LFE29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL27
	.long	.LVL29
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LFE29
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL31
	.long	.LVL32
	.word	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL31
	.long	.LVL32
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LFE30
	.word	0x2
	.byte	0x91
	.sleb128 -23
	.long	0
	.long	0
.LLST14:
	.long	.LVL31
	.long	.LVL32
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LVL34
	.word	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL35
	.long	.LVL36
	.word	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL51
	.long	.LVL52
	.word	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL31
	.long	.LVL36
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL56
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL45
	.long	.LVL48
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL54
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST17:
	.long	.LVL42
	.long	.LVL43
	.word	0xc
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
	.long	.LVL47
	.long	.LVL50
	.word	0xc
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
	.long	.LVL53
	.long	.LVL55
	.word	0xc
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
	.long	0
	.long	0
.LLST18:
	.long	.LVL37
	.long	.LVL43
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL37
	.long	.LVL40
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40
	.long	.LVL42
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST20:
	.long	.LVL57
	.long	.LVL69
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL69
	.long	.LVL70
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL71
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL71
	.long	.LVL72
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LVL73
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL73
	.long	.LVL74
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL74
	.long	.LVL75
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL75
	.long	.LVL76
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL76
	.long	.LVL77
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL77
	.long	.LVL78
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL79
	.long	.LFE33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL59
	.long	.LVL65
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LVL68
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL68
	.long	.LVL70
	.word	0x3
	.byte	0x76
	.sleb128 -2
	.byte	0x9f
	.long	.LVL70
	.long	.LVL76
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL77
	.long	.LVL80
	.word	0x3
	.byte	0x76
	.sleb128 -2
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL59
	.long	.LVL60
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LVL70
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL72
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LVL80
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LVL62
	.long	.LVL64
	.word	0x1
	.byte	0x66
	.long	.LVL72
	.long	.LVL74
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST24:
	.long	.LVL63
	.long	.LVL66
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL66
	.long	.LVL70
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL74
	.long	.LVL78
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL78
	.long	.LVL80
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST25:
	.long	.LVL58
	.long	.LVL67
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL67
	.long	.LVL70
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL80
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL81
	.long	.LVL83
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LVL89
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL89
	.long	.LFE36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL81
	.long	.LVL84-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84-1
	.long	.LVL90
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LFE36
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST28:
	.long	.LVL82
	.long	.LVL85
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL86
	.long	.LVL87
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL87
	.long	.LVL88
	.word	0x2
	.byte	0x39
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL91
	.long	.LVL93
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL96
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96
	.long	.LVL97
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL97
	.long	.LVL98
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL98
	.long	.LVL99
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL99
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL92
	.long	.LVL99
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL99
	.long	.LFE10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST31:
	.long	.LVL100
	.long	.LVL102
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL102
	.long	.LVL110
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL110
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL100
	.long	.LVL103-1
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
	.long	.LVL103-1
	.long	.LVL112
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST33:
	.long	.LVL101
	.long	.LVL104
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL104
	.long	.LVL106
	.word	0x1
	.byte	0x5f
	.long	.LVL107
	.long	.LVL108
	.word	0x1
	.byte	0x5f
	.long	.LVL108
	.long	.LVL109
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL109
	.long	.LVL111
	.word	0x1
	.byte	0x5f
	.long	.LVL111
	.long	.LFE11
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST34:
	.long	.LVL113
	.long	.LVL114-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL114-1
	.long	.LVL125
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL125
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL113
	.long	.LVL114-1
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
	.long	.LVL114-1
	.long	.LVL126
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL126
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL116
	.long	.LVL124
	.word	0xc
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
	.long	0
	.long	0
.LLST37:
	.long	.LVL117
	.long	.LVL118
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL118
	.long	.LVL120
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120
	.long	.LVL121
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL121
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
.LLST38:
	.long	.LVL117
	.long	.LVL124
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL117
	.long	.LVL124
	.word	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST40:
	.long	.LVL127
	.long	.LVL128-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL128-1
	.long	.LVL157
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL157
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL129
	.long	.LVL130
	.word	0x1
	.byte	0x68
	.long	.LVL130
	.long	.LVL131-1
	.word	0x1
	.byte	0x69
	.long	.LVL156
	.long	.LFE12
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST42:
	.long	.LVL131
	.long	.LVL133
	.word	0x4
	.byte	0xb
	.word	0xaa55
	.byte	0x9f
	.long	.LVL133
	.long	.LVL135
	.word	0x3
	.byte	0x8
	.byte	0xaa
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL131
	.long	.LVL132
	.word	0x4
	.byte	0x8c
	.sleb128 558
	.byte	0x9f
	.long	.LVL132
	.long	.LVL133
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL133
	.long	.LVL134
	.word	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.long	.LVL134
	.long	.LVL135
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL135
	.long	.LVL136
	.word	0x6
	.byte	0xc
	.long	0x41615252
	.byte	0x9f
	.long	.LVL136
	.long	.LVL137
	.word	0x6
	.byte	0xc
	.long	0x416152
	.byte	0x9f
	.long	.LVL137
	.long	.LVL138
	.word	0x4
	.byte	0xa
	.word	0x4161
	.byte	0x9f
	.long	.LVL138
	.long	.LVL139
	.word	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL135
	.long	.LVL136
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL136
	.long	.LVL137
	.word	0x3
	.byte	0x7e
	.sleb128 2
	.byte	0x9f
	.long	.LVL137
	.long	.LVL138
	.word	0x3
	.byte	0x7e
	.sleb128 3
	.byte	0x9f
	.long	.LVL138
	.long	.LVL139
	.word	0x3
	.byte	0x7e
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL139
	.long	.LVL140
	.word	0x6
	.byte	0xc
	.long	0x61417272
	.byte	0x9f
	.long	.LVL140
	.long	.LVL141
	.word	0x6
	.byte	0xc
	.long	0x614172
	.byte	0x9f
	.long	.LVL141
	.long	.LVL142
	.word	0x4
	.byte	0xa
	.word	0x6141
	.byte	0x9f
	.long	.LVL142
	.long	.LVL143
	.word	0x3
	.byte	0x8
	.byte	0x61
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL139
	.long	.LVL140
	.word	0x4
	.byte	0x8c
	.sleb128 532
	.byte	0x9f
	.long	.LVL140
	.long	.LVL141
	.word	0x4
	.byte	0x8c
	.sleb128 533
	.byte	0x9f
	.long	.LVL141
	.long	.LVL142
	.word	0x4
	.byte	0x8c
	.sleb128 534
	.byte	0x9f
	.long	.LVL142
	.long	.LVL143
	.word	0x4
	.byte	0x8c
	.sleb128 535
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL144
	.long	.LVL145
	.word	0xc
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST49:
	.long	.LVL144
	.long	.LVL145
	.word	0x4
	.byte	0x8c
	.sleb128 536
	.byte	0x9f
	.long	.LVL145
	.long	.LVL146
	.word	0x4
	.byte	0x8c
	.sleb128 537
	.byte	0x9f
	.long	.LVL146
	.long	.LVL147
	.word	0x4
	.byte	0x8c
	.sleb128 538
	.byte	0x9f
	.long	.LVL147
	.long	.LVL148
	.word	0x4
	.byte	0x8c
	.sleb128 539
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL149
	.long	.LVL150
	.word	0xc
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST51:
	.long	.LVL149
	.long	.LVL150
	.word	0x4
	.byte	0x8c
	.sleb128 540
	.byte	0x9f
	.long	.LVL150
	.long	.LVL151
	.word	0x4
	.byte	0x8c
	.sleb128 541
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.word	0x4
	.byte	0x8c
	.sleb128 542
	.byte	0x9f
	.long	.LVL152
	.long	.LVL153
	.word	0x4
	.byte	0x8c
	.sleb128 543
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL158
	.long	.LVL160
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL160
	.long	.LVL187
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL187
	.long	.LVL188
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL188
	.long	.LVL200
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL200
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL158
	.long	.LVL163
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
	.long	.LVL163
	.long	.LVL175
	.word	0xc
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
	.long	.LVL175
	.long	.LVL179
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL179
	.long	.LVL183
	.word	0xc
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
	.long	.LVL183
	.long	.LVL187
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL187
	.long	.LVL188
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
	.long	.LVL188
	.long	.LVL200
	.word	0xc
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
	.long	.LVL200
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL158
	.long	.LVL172
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL172
	.long	.LVL182
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL182
	.long	.LVL185
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL185
	.long	.LVL187
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL187
	.long	.LVL188
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL188
	.long	.LVL194
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL194
	.long	.LVL195
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL195
	.long	.LVL199
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL199
	.long	.LVL200
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST55:
	.long	.LVL161
	.long	.LVL162
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL162
	.long	.LVL166
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL166
	.long	.LVL171
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL189
	.long	.LVL192
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL195
	.long	.LVL196
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST56:
	.long	.LVL167
	.long	.LVL168-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL168-1
	.long	.LVL169
	.word	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL169
	.long	.LVL170-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL170-1
	.long	.LVL171
	.word	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL171
	.long	.LVL172
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL189
	.long	.LVL193
	.word	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL193
	.long	.LVL195
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL195
	.long	.LVL197
	.word	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL197
	.long	.LVL200
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST57:
	.long	.LVL159
	.long	.LVL165
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL165
	.long	.LVL168
	.word	0x1
	.byte	0x61
	.long	.LVL168
	.long	.LVL169
	.word	0x1
	.byte	0x68
	.long	.LVL169
	.long	.LVL170
	.word	0x1
	.byte	0x61
	.long	.LVL170
	.long	.LVL171
	.word	0x1
	.byte	0x68
	.long	.LVL172
	.long	.LVL174
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL174
	.long	.LVL179
	.word	0x1
	.byte	0x61
	.long	.LVL179
	.long	.LVL181
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL181
	.long	.LVL187
	.word	0x1
	.byte	0x61
	.long	.LVL187
	.long	.LVL189
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL189
	.long	.LVL190
	.word	0x1
	.byte	0x68
	.long	.LVL190
	.long	.LVL191
	.word	0x1
	.byte	0x61
	.long	.LVL191
	.long	.LVL198
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST58:
	.long	.LVL176
	.long	.LVL177
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST59:
	.long	.LVL176
	.long	.LVL177
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL177
	.long	.LVL178
	.word	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.long	0
	.long	0
.LLST60:
	.long	.LVL185
	.long	.LVL186
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST61:
	.long	.LVL185
	.long	.LVL186
	.word	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL201
	.long	.LVL205
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL205
	.long	.LFE23
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST63:
	.long	.LVL202
	.long	.LVL203
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL203
	.long	.LVL204
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL202
	.long	.LVL203
	.word	0x3
	.byte	0x86
	.sleb128 27
	.byte	0x9f
	.long	.LVL203
	.long	.LVL204
	.word	0x3
	.byte	0x86
	.sleb128 28
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL206
	.long	.LVL207
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST66:
	.long	.LVL206
	.long	.LVL207
	.word	0x3
	.byte	0x86
	.sleb128 21
	.byte	0x9f
	.long	.LVL207
	.long	.LVL208
	.word	0x3
	.byte	0x86
	.sleb128 22
	.byte	0x9f
	.long	0
	.long	0
.LLST67:
	.long	.LVL209
	.long	.LVL211
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL211
	.long	.LVL216-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL216-1
	.long	.LVL226
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL226
	.long	.LVL227-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL227-1
	.long	.LVL233
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL233
	.long	.LVL234-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL234-1
	.long	.LVL239
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL239
	.long	.LVL240
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL240
	.long	.LVL242
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL242
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL209
	.long	.LVL215
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
	.long	.LVL215
	.long	.LVL239
	.word	0xc
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
	.long	.LVL239
	.long	.LVL241
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
	.long	.LVL241
	.long	.LVL245
	.word	0xc
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
	.long	.LVL245
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST69:
	.long	.LVL218
	.long	.LVL222
	.word	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL222
	.long	.LVL223
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL224
	.long	.LVL225
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL243
	.long	.LVL244
	.word	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST70:
	.long	.LVL213
	.long	.LVL214
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL214
	.long	.LVL217
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL217
	.long	.LVL220
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL242
	.long	.LVL243
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL243
	.long	.LVL244
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST71:
	.long	.LVL212
	.long	.LVL232
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL232
	.long	.LVL233
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL233
	.long	.LVL238
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL238
	.long	.LVL239
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL241
	.long	.LVL245
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL245
	.long	.LFE14
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST72:
	.long	.LVL210
	.long	.LVL211
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL211
	.long	.LVL221
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL226
	.long	.LVL235
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL235
	.long	.LVL236
	.word	0x3
	.byte	0x8c
	.sleb128 -47
	.byte	0x9f
	.long	.LVL239
	.long	.LVL240
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL240
	.long	.LVL245
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST73:
	.long	.LVL228
	.long	.LVL231
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST74:
	.long	.LVL228
	.long	.LVL229
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL229
	.long	.LVL230
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL230
	.long	.LVL231
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL246
	.long	.LVL248
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL248
	.long	.LVL269
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL269
	.long	.LFE19
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST76:
	.long	.LVL246
	.long	.LVL252
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
	.long	.LVL252
	.long	.LVL263
	.word	0xc
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
	.long	.LVL264
	.long	.LVL268
	.word	0xc
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
	.long	0
	.long	0
.LLST77:
	.long	.LVL256
	.long	.LVL261
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL266
	.long	.LVL267
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST78:
	.long	.LVL249
	.long	.LVL250
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL250
	.long	.LVL251
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL251
	.long	.LVL254
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL254
	.long	.LVL255
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL255
	.long	.LVL264
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL265
	.long	.LVL266
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL266
	.long	.LVL268
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST79:
	.long	.LVL247
	.long	.LVL248
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL248
	.long	.LVL253
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	.LVL253
	.long	.LVL262
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL262
	.long	.LVL264
	.word	0x3
	.byte	0x80
	.sleb128 -47
	.byte	0x9f
	.long	.LVL264
	.long	.LVL265
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	.LVL265
	.long	.LVL268
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST80:
	.long	.LVL270
	.long	.LVL273
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL273
	.long	.LVL290
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL290
	.long	.LVL296
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL296
	.long	.LVL311
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL311
	.long	.LVL312
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL312
	.long	.LVL320
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL320
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL270
	.long	.LVL276-1
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
	.long	.LVL276-1
	.long	.LVL322
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL322
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST82:
	.long	.LVL276
	.long	.LVL277
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL280
	.long	.LVL281
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL281
	.long	.LVL282
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL282
	.long	.LVL283
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL288
	.long	.LVL291-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL296
	.long	.LVL297
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL298
	.long	.LVL299
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL300
	.long	.LVL301
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL302
	.long	.LVL303
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL305
	.long	.LVL306
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL307
	.long	.LVL308
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL309
	.long	.LVL310
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL312
	.long	.LVL313
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL314
	.long	.LVL315
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL315
	.long	.LVL316
	.word	0x2
	.byte	0x8c
	.sleb128 11
	.long	.LVL316
	.long	.LVL317
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL317
	.long	.LVL318
	.word	0x2
	.byte	0x8c
	.sleb128 11
	.long	0
	.long	0
.LLST83:
	.long	.LVL277
	.long	.LVL278
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL278
	.long	.LVL283
	.word	0xc
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
	.long	.LVL283
	.long	.LVL284
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL284
	.long	.LVL286
	.word	0xc
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
	.long	.LVL286
	.long	.LVL287
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL287
	.long	.LVL296
	.word	0xc
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
	.long	.LVL300
	.long	.LVL304
	.word	0xc
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
	.long	.LVL304
	.long	.LVL305
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL305
	.long	.LVL312
	.word	0xc
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
	.long	.LVL314
	.long	.LVL317
	.word	0xc
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
	.long	.LVL317
	.long	.LVL318
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST84:
	.long	.LVL272
	.long	.LVL274
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL274
	.long	.LVL275
	.word	0x2
	.byte	0x8c
	.sleb128 11
	.long	.LVL277
	.long	.LVL283
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL283
	.long	.LVL289
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL300
	.long	.LVL304
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL304
	.long	.LVL311
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL312
	.long	.LVL317
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL317
	.long	.LVL320
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST85:
	.long	.LVL291
	.long	.LVL292
	.word	0x1
	.byte	0x68
	.long	.LVL293
	.long	.LVL294
	.word	0x1
	.byte	0x68
	.long	.LVL294
	.long	.LVL295
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL295
	.long	.LVL296
	.word	0x1
	.byte	0x68
	.long	.LVL311
	.long	.LVL312
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST86:
	.long	.LVL271
	.long	.LVL321
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST87:
	.long	.LVL323
	.long	.LVL325
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL325
	.long	.LVL340
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL340
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST88:
	.long	.LVL323
	.long	.LVL324
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
	.long	.LVL324
	.long	.LVL333
	.word	0xc
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
	.long	.LVL334
	.long	.LVL335
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL335
	.long	.LVL339
	.word	0xc
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
	.long	0
	.long	0
.LLST89:
	.long	.LVL323
	.long	.LVL326
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL326
	.long	.LVL327-1
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
	.long	.LVL327-1
	.long	.LVL335
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	.LVL335
	.long	.LVL337
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL337
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST90:
	.long	.LVL324
	.long	.LVL327
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL327
	.long	.LVL328
	.word	0x1
	.byte	0x68
	.long	.LVL331
	.long	.LVL332
	.word	0x1
	.byte	0x68
	.long	.LVL335
	.long	.LVL337
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST91:
	.long	.LVL330
	.long	.LVL335
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL337
	.long	.LVL338
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST92:
	.long	.LVL324
	.long	.LVL325
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL325
	.long	.LVL335
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL335
	.long	.LVL336
	.word	0x2
	.byte	0x7a
	.sleb128 0
	.long	.LVL336
	.long	.LVL338
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST93:
	.long	.LVL341
	.long	.LVL344
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL344
	.long	.LVL345
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL345
	.long	.LVL346
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL346
	.long	.LVL347
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL347
	.long	.LVL356
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL356
	.long	.LVL357
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL357
	.long	.LVL358
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL358
	.long	.LVL359
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL359
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST94:
	.long	.LVL341
	.long	.LVL348-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL348-1
	.long	.LVL360
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL360
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST95:
	.long	.LVL343
	.long	.LVL355
	.word	0xc
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
	.long	.LVL355
	.long	.LVL356
	.word	0x2
	.byte	0x8c
	.sleb128 14
	.long	.LVL356
	.long	.LVL359
	.word	0xc
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
	.long	0
	.long	0
.LLST96:
	.long	.LVL349
	.long	.LVL354
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL358
	.long	.LVL359
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST97:
	.long	.LVL342
	.long	.LVL344
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL344
	.long	.LVL345
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL345
	.long	.LVL346
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL346
	.long	.LVL347
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL347
	.long	.LVL348-1
	.word	0x2
	.byte	0x8c
	.sleb128 0
	.long	.LVL356
	.long	.LVL357
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL357
	.long	.LVL358
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST98:
	.long	.LVL361
	.long	.LVL363-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL363-1
	.long	.LVL382
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL382
	.long	.LFE26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST99:
	.long	.LVL375
	.long	.LVL376
	.word	0x1
	.byte	0x68
	.long	.LVL376
	.long	.LVL379
	.word	0x1
	.byte	0x6c
	.long	.LVL380
	.long	.LVL381
	.word	0x1
	.byte	0x6c
	.long	.LVL381
	.long	.LFE26
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST100:
	.long	.LVL362
	.long	.LVL383
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST101:
	.long	.LVL362
	.long	.LVL373
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL379
	.long	.LVL380
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST102:
	.long	.LVL362
	.long	.LVL363-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL363-1
	.long	.LVL373
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL379
	.long	.LVL380
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST103:
	.long	.LVL364
	.long	.LVL366
	.word	0x1
	.byte	0x68
	.long	.LVL366
	.long	.LVL368
	.word	0x1
	.byte	0x6c
	.long	.LVL368
	.long	.LVL369
	.word	0x1
	.byte	0x68
	.long	.LVL369
	.long	.LVL371
	.word	0x1
	.byte	0x6c
	.long	.LVL371
	.long	.LVL373
	.word	0x1
	.byte	0x68
	.long	.LVL379
	.long	.LVL380
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST104:
	.long	.LVL365
	.long	.LVL372
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST105:
	.long	.LVL362
	.long	.LVL373
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL379
	.long	.LVL380
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST106:
	.long	.LVL384
	.long	.LVL387
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL387
	.long	.LVL402
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL402
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST107:
	.long	.LVL384
	.long	.LVL388
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL388
	.long	.LVL404
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL404
	.long	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST108:
	.long	.LVL385
	.long	.LVL388
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL388
	.long	.LVL389
	.word	0x1
	.byte	0x68
	.long	.LVL390
	.long	.LVL395
	.word	0x1
	.byte	0x68
	.long	.LVL396
	.long	.LVL400
	.word	0x1
	.byte	0x68
	.long	.LVL400
	.long	.LVL401
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL401
	.long	.LFE24
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST109:
	.long	.LVL386
	.long	.LVL403
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST110:
	.long	.LVL392
	.long	.LVL393
	.word	0x1
	.byte	0x69
	.long	.LVL393
	.long	.LVL396-1
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	0
	.long	0
.LLST111:
	.long	.LVL391
	.long	.LVL394
	.word	0x1
	.byte	0x62
	.long	.LVL399
	.long	.LVL401
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST112:
	.long	.LVL405
	.long	.LVL406
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL406
	.long	.LVL417
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL417
	.long	.LVL430
	.word	0x4
	.byte	0x8c
	.sleb128 -129
	.byte	0x9f
	.long	.LVL430
	.long	.LVL432
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL432
	.long	.LVL433
	.word	0x4
	.byte	0x8c
	.sleb128 -129
	.byte	0x9f
	.long	.LVL433
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST113:
	.long	.LVL405
	.long	.LVL407-1
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
	.long	.LVL407-1
	.long	.LFE34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST114:
	.long	.LVL408
	.long	.LVL411
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST115:
	.long	.LVL408
	.long	.LVL409
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL409
	.long	.LVL410
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL410
	.long	.LVL411
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST116:
	.long	.LVL412
	.long	.LVL413
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL413
	.long	.LVL415
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST117:
	.long	.LVL412
	.long	.LVL415
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+17498
	.sleb128 0
	.long	0
	.long	0
.LLST118:
	.long	.LVL412
	.long	.LVL415
	.word	0x9
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST119:
	.long	.LVL412
	.long	.LVL413
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL413
	.long	.LVL414
	.word	0x3
	.byte	0x88
	.sleb128 2
	.byte	0x9f
	.long	.LVL414
	.long	.LVL415
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL415
	.long	.LVL416
	.word	0x3
	.byte	0x82
	.sleb128 2
	.byte	0x9f
	.long	.LVL431
	.long	.LVL432
	.word	0x3
	.byte	0x82
	.sleb128 2
	.byte	0x9f
	.long	0
	.long	0
.LLST121:
	.long	.LVL412
	.long	.LVL413
	.word	0xb
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x46
	.byte	0x1c
	.byte	0x9f
	.long	.LVL413
	.long	.LVL414
	.word	0xb
	.byte	0x88
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x41
	.byte	0x1c
	.byte	0x9f
	.long	.LVL414
	.long	.LVL415
	.word	0xb
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x41
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST122:
	.long	.LVL418
	.long	.LVL419
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL419
	.long	.LVL422
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL422
	.long	.LVL424
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL424
	.long	.LVL425
	.word	0x7
	.byte	0x7c
	.sleb128 0
	.byte	0x20
	.byte	0x88
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL425
	.long	.LVL427
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST123:
	.long	.LVL418
	.long	.LVL421
	.word	0x9
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.long	.LVL421
	.long	.LVL427
	.word	0x3
	.byte	0x88
	.sleb128 -5
	.byte	0x9f
	.long	0
	.long	0
.LLST124:
	.long	.LVL418
	.long	.LVL421
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL421
	.long	.LVL422
	.word	0x3
	.byte	0x88
	.sleb128 -4
	.byte	0x9f
	.long	.LVL422
	.long	.LVL425
	.word	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.long	.LVL425
	.long	.LVL430
	.word	0x9
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL432
	.long	.LVL433
	.word	0x9
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST125:
	.long	.LVL420
	.long	.LVL422
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL422
	.long	.LVL425
	.word	0x12
	.byte	0x7c
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x6
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.long	.LC0
	.byte	0x22
	.byte	0x9f
	.long	.LVL425
	.long	.LVL427
	.word	0x12
	.byte	0x7c
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x5
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.long	.LC0
	.byte	0x22
	.byte	0x9f
	.long	.LVL428
	.long	.LVL429
	.word	0x12
	.byte	0x7c
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x5
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.long	.LC0
	.byte	0x22
	.byte	0x9f
	.long	.LVL432
	.long	.LVL433
	.word	0x12
	.byte	0x7c
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x5
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.long	.LC0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST126:
	.long	.LVL418
	.long	.LVL419
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL419
	.long	.LVL423
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL424
	.long	.LVL426
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL426
	.long	.LVL428
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST127:
	.long	.LVL434
	.long	.LVL435-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL435-1
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST128:
	.long	.LVL434
	.long	.LVL435-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL435-1
	.long	.LVL442
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL442
	.long	.LVL451
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL451
	.long	.LVL452
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL452
	.long	.LVL511
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL511
	.long	.LVL521
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL521
	.long	.LVL537
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL537
	.long	.LVL541
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL541
	.long	.LFE35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST129:
	.long	.LVL434
	.long	.LVL435-1
	.word	0x1
	.byte	0x64
	.long	.LVL435-1
	.long	.LVL557
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST130:
	.long	.LVL448
	.long	.LVL449
	.word	0x1
	.byte	0x68
	.long	.LVL450
	.long	.LVL454
	.word	0x1
	.byte	0x68
	.long	.LVL483
	.long	.LVL486
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL486
	.long	.LVL511
	.word	0x2
	.byte	0x91
	.sleb128 -34
	.long	.LVL521
	.long	.LVL522
	.word	0x1
	.byte	0x68
	.long	.LVL523
	.long	.LVL524
	.word	0x1
	.byte	0x68
	.long	.LVL530
	.long	.LVL531
	.word	0x1
	.byte	0x66
	.long	.LVL531
	.long	.LVL532
	.word	0x1
	.byte	0x6f
	.long	.LVL532
	.long	.LVL534
	.word	0x2
	.byte	0x91
	.sleb128 -34
	.long	.LVL534
	.long	.LVL535
	.word	0x1
	.byte	0x68
	.long	.LVL536
	.long	.LVL537
	.word	0x2
	.byte	0x91
	.sleb128 -34
	.long	.LVL539
	.long	.LVL543
	.word	0x1
	.byte	0x68
	.long	.LVL543
	.long	.LVL544
	.word	0x2
	.byte	0x91
	.sleb128 -34
	.long	.LVL544
	.long	.LVL545
	.word	0x1
	.byte	0x6f
	.long	.LVL545
	.long	.LVL552
	.word	0x2
	.byte	0x91
	.sleb128 -34
	.long	.LVL552
	.long	.LVL556
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST131:
	.long	.LVL442
	.long	.LVL445
	.word	0x3
	.byte	0x7e
	.sleb128 -8
	.byte	0x9f
	.long	.LVL445
	.long	.LVL451
	.word	0x3
	.byte	0x7e
	.sleb128 -24
	.byte	0x9f
	.long	.LVL534
	.long	.LVL536
	.word	0x3
	.byte	0x7e
	.sleb128 -24
	.byte	0x9f
	.long	.LVL542
	.long	.LVL543
	.word	0x3
	.byte	0x7e
	.sleb128 -24
	.byte	0x9f
	.long	0
	.long	0
.LLST132:
	.long	.LVL436
	.long	.LVL442
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL451
	.long	.LVL452
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL511
	.long	.LVL521
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL537
	.long	.LVL540
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST133:
	.long	.LVL439
	.long	.LVL440
	.word	0x1
	.byte	0x68
	.long	.LVL441
	.long	.LVL442
	.word	0x1
	.byte	0x68
	.long	.LVL513
	.long	.LVL514
	.word	0x1
	.byte	0x68
	.long	.LVL515
	.long	.LVL516
	.word	0x1
	.byte	0x68
	.long	.LVL517
	.long	.LVL518
	.word	0x1
	.byte	0x68
	.long	.LVL519
	.long	.LVL520
	.word	0x1
	.byte	0x68
	.long	.LVL537
	.long	.LVL538
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST134:
	.long	.LVL442
	.long	.LVL446
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL447
	.long	.LVL451
	.word	0xc
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
	.long	.LVL451
	.long	.LVL452
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL452
	.long	.LVL499
	.word	0xc
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
	.long	.LVL500
	.long	.LVL510
	.word	0xc
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
	.long	.LVL521
	.long	.LVL533
	.word	0xc
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
	.long	.LVL534
	.long	.LVL536
	.word	0xc
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
	.long	.LVL537
	.long	.LVL542
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL542
	.long	.LVL543
	.word	0xc
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
	.long	.LVL547
	.long	.LVL555
	.word	0xc
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
	.long	.LVL555
	.long	.LVL556
	.word	0x2
	.byte	0x8a
	.sleb128 27
	.long	0
	.long	0
.LLST135:
	.long	.LVL461
	.long	.LVL464
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL464
	.long	.LVL465
	.word	0x9
	.byte	0x8f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.long	.LVL465
	.long	.LVL474-1
	.word	0xb
	.byte	0x80
	.sleb128 63
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.long	.LVL474-1
	.long	.LVL484
	.word	0xb
	.byte	0x91
	.sleb128 -34
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.long	.LVL485
	.long	.LVL486
	.word	0xb
	.byte	0x91
	.sleb128 -34
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.long	.LVL525
	.long	.LVL526
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL526
	.long	.LVL527
	.word	0xb
	.byte	0x80
	.sleb128 63
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.long	.LVL527
	.long	.LVL530
	.word	0xb
	.byte	0x91
	.sleb128 -34
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.long	0
	.long	0
.LLST136:
	.long	.LVL473
	.long	.LVL488
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL527
	.long	.LVL531
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL552
	.long	.LVL553
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST137:
	.long	.LVL480
	.long	.LVL481
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL481
	.long	.LVL511
	.word	0x2
	.byte	0x91
	.sleb128 -33
	.long	.LVL528
	.long	.LVL529
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL529
	.long	.LVL534
	.word	0x2
	.byte	0x91
	.sleb128 -33
	.long	.LVL536
	.long	.LVL537
	.word	0x2
	.byte	0x91
	.sleb128 -33
	.long	.LVL543
	.long	.LVL556
	.word	0x2
	.byte	0x91
	.sleb128 -33
	.long	0
	.long	0
.LLST138:
	.long	.LVL482
	.long	.LVL489
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL489
	.long	.LVL496
	.word	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.long	.LVL529
	.long	.LVL531
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL531
	.long	.LVL532
	.word	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.long	.LVL552
	.long	.LVL554
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL554
	.long	.LVL556
	.word	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.long	0
	.long	0
.LLST139:
	.long	.LVL495
	.long	.LVL496
	.word	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.long	.LVL496
	.long	.LVL497
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL497
	.long	.LVL498
	.word	0x4
	.byte	0x78
	.sleb128 -511
	.byte	0x9f
	.long	.LVL544
	.long	.LVL545
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL545
	.long	.LVL546
	.word	0x4
	.byte	0x78
	.sleb128 -511
	.byte	0x9f
	.long	0
	.long	0
.LLST140:
	.long	.LVL437
	.long	.LVL511
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL512
	.long	.LVL556
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST141:
	.long	.LVL453
	.long	.LVL457
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST142:
	.long	.LVL453
	.long	.LVL455
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL455
	.long	.LVL456
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL456
	.long	.LVL457
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST143:
	.long	.LVL458
	.long	.LVL460
	.word	0x9
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST144:
	.long	.LVL458
	.long	.LVL459
	.word	0x8
	.byte	0x88
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL459
	.long	.LVL460
	.word	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST145:
	.long	.LVL466
	.long	.LVL469
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST146:
	.long	.LVL466
	.long	.LVL467
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL467
	.long	.LVL468
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL468
	.long	.LVL469
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST147:
	.long	.LVL470
	.long	.LVL472
	.word	0x9
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST148:
	.long	.LVL470
	.long	.LVL471
	.word	0x8
	.byte	0x88
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL471
	.long	.LVL472
	.word	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST149:
	.long	.LVL476
	.long	.LVL479
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST150:
	.long	.LVL476
	.long	.LVL477
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL477
	.long	.LVL478
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL478
	.long	.LVL479
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST151:
	.long	.LVL490
	.long	.LVL493
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST152:
	.long	.LVL490
	.long	.LVL491
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL491
	.long	.LVL492
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL492
	.long	.LVL493
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST153:
	.long	.LVL502
	.long	.LVL505
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST154:
	.long	.LVL502
	.long	.LVL503
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL503
	.long	.LVL504
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL504
	.long	.LVL505
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST155:
	.long	.LVL548
	.long	.LVL551
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST156:
	.long	.LVL548
	.long	.LVL549
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL549
	.long	.LVL550
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL550
	.long	.LVL551
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST157:
	.long	.LVL558
	.long	.LVL559
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL559
	.long	.LVL580
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL580
	.long	.LFE28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST158:
	.long	.LVL558
	.long	.LVL569
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL569
	.long	.LVL579
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL579
	.long	.LFE28
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST159:
	.long	.LVL560
	.long	.LVL561
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL561
	.long	.LVL567
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL567
	.long	.LVL570-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST160:
	.long	.LVL560
	.long	.LVL564
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL564
	.long	.LVL566
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL566
	.long	.LVL568
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST161:
	.long	.LVL562
	.long	.LVL570-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST162:
	.long	.LVL571
	.long	.LVL574
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST163:
	.long	.LVL571
	.long	.LVL572
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL572
	.long	.LVL573
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL573
	.long	.LVL574
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST164:
	.long	.LVL575
	.long	.LVL578
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST165:
	.long	.LVL575
	.long	.LVL576
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL576
	.long	.LVL577
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL577
	.long	.LVL578
	.word	0x8
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST166:
	.long	.LVL581
	.long	.LVL586
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL586
	.long	.LVL589
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL589
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST167:
	.long	.LVL585
	.long	.LVL593
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL593
	.long	.LFE22
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST168:
	.long	.LVL582
	.long	.LVL584
	.word	0x3
	.byte	0x84
	.sleb128 26
	.byte	0x9f
	.long	0
	.long	0
.LLST169:
	.long	.LVL582
	.long	.LVL583
	.word	0x8
	.byte	0x84
	.sleb128 27
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL583
	.long	.LVL584
	.word	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST170:
	.long	.LVL587
	.long	.LVL591
	.word	0x3
	.byte	0x84
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST171:
	.long	.LVL587
	.long	.LVL588
	.word	0x8
	.byte	0x84
	.sleb128 21
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL588
	.long	.LVL590
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL590
	.long	.LVL591
	.word	0x8
	.byte	0x84
	.sleb128 21
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST172:
	.long	.LVL594
	.long	.LVL600
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL600
	.long	.LVL603
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL603
	.long	.LVL604
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL604
	.long	.LFE32
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
.LLST173:
	.long	.LVL594
	.long	.LVL596
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL596
	.long	.LVL673
	.word	0x9
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST174:
	.long	.LVL602
	.long	.LVL603
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST175:
	.long	.LVL647
	.long	.LVL649
	.word	0x1
	.byte	0x68
	.long	.LVL649
	.long	.LVL650-1
	.word	0x6
	.byte	0x91
	.sleb128 -20
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.long	.LVL655
	.long	.LVL657
	.word	0x1
	.byte	0x68
	.long	.LVL666
	.long	.LVL667
	.word	0x1
	.byte	0x68
	.long	.LVL668
	.long	.LVL669
	.word	0x2
	.byte	0x8e
	.sleb128 39
	.long	0
	.long	0
.LLST176:
	.long	.LVL595
	.long	.LVL598
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL598
	.long	.LVL599
	.word	0x2
	.byte	0x88
	.sleb128 0
	.long	.LVL599
	.long	.LFE32
	.word	0x2
	.byte	0x91
	.sleb128 -22
	.long	0
	.long	0
.LLST177:
	.long	.LVL604
	.long	.LVL623
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+8835
	.sleb128 0
	.long	.LVL651
	.long	.LVL655
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+8835
	.sleb128 0
	.long	.LVL657
	.long	.LVL663
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+8835
	.sleb128 0
	.long	.LVL669
	.long	.LVL672
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+8835
	.sleb128 0
	.long	0
	.long	0
.LLST178:
	.long	.LVL604
	.long	.LVL623
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL651
	.long	.LVL655
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL657
	.long	.LVL663
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL669
	.long	.LVL672
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
.LLST179:
	.long	.LVL606
	.long	.LVL607
	.word	0x1
	.byte	0x64
	.long	.LVL609
	.long	.LVL611
	.word	0x1
	.byte	0x64
	.long	.LVL611
	.long	.LVL612
	.word	0x1
	.byte	0x66
	.long	.LVL613
	.long	.LVL614
	.word	0x1
	.byte	0x64
	.long	.LVL614
	.long	.LVL618
	.word	0x1
	.byte	0x60
	.long	.LVL618
	.long	.LVL623
	.word	0x1
	.byte	0x64
	.long	.LVL651
	.long	.LVL652
	.word	0x1
	.byte	0x64
	.long	.LVL652
	.long	.LVL653
	.word	0x1
	.byte	0x66
	.long	.LVL653
	.long	.LVL654
	.word	0x1
	.byte	0x64
	.long	.LVL657
	.long	.LVL658
	.word	0x1
	.byte	0x64
	.long	.LVL658
	.long	.LVL659
	.word	0x1
	.byte	0x66
	.long	.LVL659
	.long	.LVL661
	.word	0x1
	.byte	0x64
	.long	.LVL661
	.long	.LVL663
	.word	0x1
	.byte	0x60
	.long	.LVL669
	.long	.LVL672
	.word	0x1
	.byte	0x64
	.long	0
	.long	0
.LLST180:
	.long	.LVL604
	.long	.LVL623
	.word	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL651
	.long	.LVL655
	.word	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL657
	.long	.LVL663
	.word	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL669
	.long	.LVL672
	.word	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST181:
	.long	.LVL605
	.long	.LVL606
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL607
	.long	.LVL623
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL651
	.long	.LVL655
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL657
	.long	.LVL663
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL669
	.long	.LVL671
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST182:
	.long	.LVL605
	.long	.LVL606
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL606
	.long	.LVL622
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL651
	.long	.LVL655
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL657
	.long	.LVL663
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL669
	.long	.LVL672
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST183:
	.long	.LVL605
	.long	.LVL606
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL607
	.long	.LVL618
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL618
	.long	.LVL619
	.word	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.long	.LVL619
	.long	.LVL621
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL651
	.long	.LVL655
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL657
	.long	.LVL663
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL669
	.long	.LVL670
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST184:
	.long	.LVL604
	.long	.LVL620
	.word	0x9
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.long	.LVL651
	.long	.LVL653
	.word	0x9
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.long	.LVL657
	.long	.LVL663
	.word	0x9
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.long	.LVL669
	.long	.LVL672
	.word	0x9
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST185:
	.long	.LVL614
	.long	.LVL617
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL660
	.long	.LVL662
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST186:
	.long	.LVL615
	.long	.LVL617
	.word	0x9
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST187:
	.long	.LVL623
	.long	.LVL625-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL625-1
	.long	.LVL646
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL663
	.long	.LVL665
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL667
	.long	.LVL668
	.word	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
.LLST188:
	.long	.LVL626
	.long	.LVL627
	.word	0x1
	.byte	0x64
	.long	.LVL627
	.long	.LVL628
	.word	0x1
	.byte	0x68
	.long	.LVL629
	.long	.LVL642
	.word	0x1
	.byte	0x68
	.long	.LVL643
	.long	.LVL645
	.word	0x1
	.byte	0x68
	.long	.LVL663
	.long	.LVL664
	.word	0x1
	.byte	0x64
	.long	.LVL664
	.long	.LVL665
	.word	0x1
	.byte	0x68
	.long	.LVL667
	.long	.LVL668
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST189:
	.long	.LVL624
	.long	.LVL646
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL663
	.long	.LVL665
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL667
	.long	.LVL668
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST190:
	.long	.LVL630
	.long	.LVL631
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	.LVL644
	.long	.LVL646
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST191:
	.long	.LVL632
	.long	.LVL633
	.word	0x2
	.byte	0x3b
	.byte	0x9f
	.long	.LVL633
	.long	.LVL635
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL635
	.long	.LVL637
	.word	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL637
	.long	.LVL638
	.word	0x7
	.byte	0x82
	.sleb128 0
	.byte	0x20
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL638
	.long	.LVL640
	.word	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x82
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST192:
	.long	.LVL632
	.long	.LVL640
	.word	0x2
	.byte	0x91
	.sleb128 -27
	.long	0
	.long	0
.LLST193:
	.long	.LVL632
	.long	.LVL634
	.word	0x9
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	.LVL634
	.long	.LVL640
	.word	0x3
	.byte	0x7c
	.sleb128 -11
	.byte	0x9f
	.long	0
	.long	0
.LLST194:
	.long	.LVL632
	.long	.LVL634
	.word	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.long	.LVL634
	.long	.LVL635
	.word	0x3
	.byte	0x7c
	.sleb128 -10
	.byte	0x9f
	.long	.LVL635
	.long	.LVL638
	.word	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.long	.LVL638
	.long	.LVL641
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	.LVL648
	.long	.LVL650-1
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	.LVL656
	.long	.LVL657
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	.LVL667
	.long	.LVL669
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST195:
	.long	.LVL632
	.long	.LVL635
	.word	0x7
	.byte	0x91
	.sleb128 -27
	.byte	0x94
	.byte	0x3
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL635
	.long	.LVL638
	.word	0x11
	.byte	0x82
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0xc
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x91
	.sleb128 -27
	.byte	0x94
	.byte	0x3
	.byte	0x22
	.byte	0x9f
	.long	.LVL638
	.long	.LVL641
	.word	0x11
	.byte	0x82
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x91
	.sleb128 -27
	.byte	0x94
	.byte	0x3
	.byte	0x22
	.byte	0x9f
	.long	.LVL648
	.long	.LVL650-1
	.word	0x11
	.byte	0x82
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x91
	.sleb128 -27
	.byte	0x94
	.byte	0x3
	.byte	0x22
	.byte	0x9f
	.long	.LVL656
	.long	.LVL657
	.word	0x11
	.byte	0x82
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x91
	.sleb128 -27
	.byte	0x94
	.byte	0x3
	.byte	0x22
	.byte	0x9f
	.long	.LVL667
	.long	.LVL669
	.word	0x11
	.byte	0x82
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0xb
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x91
	.sleb128 -27
	.byte	0x94
	.byte	0x3
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST196:
	.long	.LVL632
	.long	.LVL633
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL633
	.long	.LVL636
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL637
	.long	.LVL640
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST197:
	.long	.LVL674
	.long	.LVL675
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL675
	.long	.LFE37
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	0
	.long	0
.LLST198:
	.long	.LVL674
	.long	.LVL676-1
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL676-1
	.long	.LFE37
	.word	0x2
	.byte	0x91
	.sleb128 -8
	.long	0
	.long	0
.LLST199:
	.long	.LVL674
	.long	.LVL676-1
	.word	0x1
	.byte	0x62
	.long	.LVL676-1
	.long	.LVL683
	.word	0x1
	.byte	0x61
	.long	.LVL683
	.long	.LFE37
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST200:
	.long	.LVL677
	.long	.LVL678
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST201:
	.long	.LVL676
	.long	.LVL679
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL681
	.long	.LVL682
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST202:
	.long	.LVL684
	.long	.LVL685
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL685
	.long	.LVL733
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL733
	.long	.LVL734
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL734
	.long	.LVL735
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL735
	.long	.LVL757
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL757
	.long	.LFE38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST203:
	.long	.LVL684
	.long	.LVL687
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL687
	.long	.LVL733
	.word	0x2
	.byte	0x91
	.sleb128 -23
	.long	.LVL733
	.long	.LVL735
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL735
	.long	.LFE38
	.word	0x2
	.byte	0x91
	.sleb128 -23
	.long	0
	.long	0
.LLST204:
	.long	.LVL684
	.long	.LVL686
	.word	0x1
	.byte	0x62
	.long	.LVL686
	.long	.LVL694
	.word	0x1
	.byte	0x5d
	.long	.LVL694
	.long	.LVL695
	.word	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x38
	.byte	0x21
	.byte	0x9f
	.long	.LVL695
	.long	.LVL696
	.word	0x1
	.byte	0x69
	.long	.LVL696
	.long	.LVL718
	.word	0x1
	.byte	0x5d
	.long	.LVL718
	.long	.LVL719
	.word	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL719
	.long	.LVL720
	.word	0x1
	.byte	0x6e
	.long	.LVL720
	.long	.LVL732
	.word	0x1
	.byte	0x5d
	.long	.LVL733
	.long	.LVL735
	.word	0x1
	.byte	0x62
	.long	.LVL735
	.long	.LVL746
	.word	0x1
	.byte	0x5d
	.long	.LVL746
	.long	.LVL747
	.word	0x5
	.byte	0x7d
	.sleb128 0
	.byte	0x38
	.byte	0x21
	.byte	0x9f
	.long	.LVL747
	.long	.LVL748
	.word	0x1
	.byte	0x6f
	.long	.LVL748
	.long	.LVL756
	.word	0x1
	.byte	0x5d
	.long	0
	.long	0
.LLST205:
	.long	.LVL688
	.long	.LVL689
	.word	0x1
	.byte	0x68
	.long	.LVL690
	.long	.LVL691
	.word	0x1
	.byte	0x68
	.long	.LVL692
	.long	.LVL693
	.word	0x1
	.byte	0x68
	.long	.LVL694
	.long	.LVL696
	.word	0x1
	.byte	0x68
	.long	.LVL696
	.long	.LVL713
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL713
	.long	.LVL714
	.word	0x1
	.byte	0x68
	.long	.LVL715
	.long	.LVL717
	.word	0x1
	.byte	0x68
	.long	.LVL717
	.long	.LVL718
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL725
	.long	.LVL732
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL732
	.long	.LVL733
	.word	0x1
	.byte	0x68
	.long	.LVL735
	.long	.LVL736
	.word	0x1
	.byte	0x68
	.long	.LVL736
	.long	.LVL737
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL737
	.long	.LVL738
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL738
	.long	.LVL739
	.word	0x1
	.byte	0x68
	.long	.LVL739
	.long	.LVL740
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL740
	.long	.LVL743
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL743
	.long	.LVL744
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL744
	.long	.LVL745
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL745
	.long	.LVL746
	.word	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL746
	.long	.LVL748
	.word	0x1
	.byte	0x68
	.long	.LVL748
	.long	.LVL749
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL749
	.long	.LVL751
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL751
	.long	.LVL754
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL754
	.long	.LVL755
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL755
	.long	.LVL756
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL756
	.long	.LVL757
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST206:
	.long	.LVL712
	.long	.LVL717
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST207:
	.long	.LVL699
	.long	.LVL716
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL716
	.long	.LVL717
	.word	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST208:
	.long	.LVL724
	.long	.LVL732
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL739
	.long	.LVL744
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL749
	.long	.LVL753
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST209:
	.long	.LVL725
	.long	.LVL727-1
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
	.long	.LVL728
	.long	.LVL729-1
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
	.long	.LVL739
	.long	.LVL740
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL740
	.long	.LVL741
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
	.long	.LVL749
	.long	.LVL753
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
	.long	0
	.long	0
.LLST210:
	.long	.LVL729
	.long	.LVL730
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL741
	.long	.LVL742
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST211:
	.long	.LVL725
	.long	.LVL726
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL751
	.long	.LVL752
	.word	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST212:
	.long	.LVL701
	.long	.LVL702
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST213:
	.long	.LVL701
	.long	.LVL702
	.word	0x3
	.byte	0x8e
	.sleb128 15
	.byte	0x9f
	.long	.LVL702
	.long	.LVL703
	.word	0x3
	.byte	0x8e
	.sleb128 16
	.byte	0x9f
	.long	.LVL703
	.long	.LVL704
	.word	0x3
	.byte	0x8e
	.sleb128 17
	.byte	0x9f
	.long	.LVL704
	.long	.LVL705
	.word	0x3
	.byte	0x8e
	.sleb128 18
	.byte	0x9f
	.long	0
	.long	0
.LLST214:
	.long	.LVL707
	.long	.LVL711
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST215:
	.long	.LVL707
	.long	.LVL708
	.word	0x3
	.byte	0x8e
	.sleb128 29
	.byte	0x9f
	.long	.LVL708
	.long	.LVL709
	.word	0x3
	.byte	0x8e
	.sleb128 30
	.byte	0x9f
	.long	.LVL709
	.long	.LVL710
	.word	0x3
	.byte	0x8e
	.sleb128 31
	.byte	0x9f
	.long	.LVL710
	.long	.LVL711
	.word	0x3
	.byte	0x8e
	.sleb128 32
	.byte	0x9f
	.long	0
	.long	0
.LLST216:
	.long	.LVL758
	.long	.LVL761-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL761-1
	.long	.LVL799
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL799
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST217:
	.long	.LVL758
	.long	.LVL760
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL760
	.long	.LVL767
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL767
	.long	.LVL794
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL794
	.long	.LVL796
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL796
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST218:
	.long	.LVL758
	.long	.LVL761-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL761-1
	.long	.LVL797
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST219:
	.long	.LVL758
	.long	.LVL761-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL761-1
	.long	.LVL798
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL798
	.long	.LFE39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST220:
	.long	.LVL761
	.long	.LVL763
	.word	0x1
	.byte	0x68
	.long	.LVL763
	.long	.LVL767
	.word	0x2
	.byte	0x78
	.sleb128 15
	.long	.LVL794
	.long	.LVL796
	.word	0x2
	.byte	0x78
	.sleb128 15
	.long	0
	.long	0
.LLST221:
	.long	.LVL769
	.long	.LVL770
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL771
	.long	.LVL772
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST222:
	.long	.LVL773
	.long	.LVL774
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL774
	.long	.LVL787
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST223:
	.long	.LVL764
	.long	.LVL766
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL766
	.long	.LVL767
	.word	0x8
	.byte	0x78
	.sleb128 10
	.byte	0x6
	.byte	0x78
	.sleb128 16
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL795
	.long	.LVL796
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST224:
	.long	.LVL781
	.long	.LVL782
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL788
	.long	.LVL789
	.word	0x7
	.byte	0xa
	.word	0x200
	.byte	0x84
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL789
	.long	.LVL794
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST225:
	.long	.LVL775
	.long	.LVL776
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL776
	.long	.LVL777
	.word	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x39
	.byte	0x25
	.byte	0x9f
	.long	.LVL777
	.long	.LVL781
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL781
	.long	.LVL782
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL782
	.long	.LVL784
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL784
	.long	.LVL787
	.word	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x39
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST226:
	.long	.LVL768
	.long	.LVL778
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL782
	.long	.LVL783
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST227:
	.long	.LVL759
	.long	.LVL760
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL760
	.long	.LVL800
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST228:
	.long	.LVL801
	.long	.LVL803-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL803-1
	.long	.LVL840
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL840
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST229:
	.long	.LVL801
	.long	.LVL803-1
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL803-1
	.long	.LVL808
	.word	0x9
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.long	.LVL808
	.long	.LVL836
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL836
	.long	.LVL837
	.word	0x9
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.long	.LVL837
	.long	.LFE40
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST230:
	.long	.LVL801
	.long	.LVL803-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL803-1
	.long	.LVL806
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL806
	.long	.LVL807
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL807
	.long	.LVL838
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST231:
	.long	.LVL801
	.long	.LVL808
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL808
	.long	.LVL836
	.word	0x2
	.byte	0x91
	.sleb128 -34
	.long	.LVL836
	.long	.LVL837
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL837
	.long	.LFE40
	.word	0x2
	.byte	0x91
	.sleb128 -34
	.long	0
	.long	0
.LLST232:
	.long	.LVL803
	.long	.LVL805
	.word	0x1
	.byte	0x68
	.long	.LVL805
	.long	.LVL808
	.word	0x2
	.byte	0x72
	.sleb128 15
	.long	.LVL836
	.long	.LVL837
	.word	0x2
	.byte	0x72
	.sleb128 15
	.long	0
	.long	0
.LLST233:
	.long	.LVL810
	.long	.LVL811-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL811
	.long	.LVL812
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL813
	.long	.LVL814
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST234:
	.long	.LVL816
	.long	.LVL817
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL817
	.long	.LVL819
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL819
	.long	.LVL825
	.word	0x2
	.byte	0x91
	.sleb128 -30
	.long	.LVL825
	.long	.LVL826
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL826
	.long	.LVL828
	.word	0x2
	.byte	0x91
	.sleb128 -30
	.long	0
	.long	0
.LLST235:
	.long	.LVL824
	.long	.LVL825
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL829
	.long	.LVL830
	.word	0x7
	.byte	0xa
	.word	0x200
	.byte	0x88
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL830
	.long	.LVL835
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST236:
	.long	.LVL818
	.long	.LVL820
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL820
	.long	.LVL821
	.word	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x39
	.byte	0x25
	.byte	0x9f
	.long	.LVL821
	.long	.LVL824
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL824
	.long	.LVL825
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL825
	.long	.LVL828
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST237:
	.long	.LVL809
	.long	.LVL828
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST238:
	.long	.LVL802
	.long	.LVL803-1
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL803-1
	.long	.LVL839
	.word	0x9
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST239:
	.long	.LVL841
	.long	.LVL845
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL845
	.long	.LVL851
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL851
	.long	.LFE56
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST240:
	.long	.LVL841
	.long	.LVL846
	.word	0x1
	.byte	0x66
	.long	.LVL846
	.long	.LVL847
	.word	0x2
	.byte	0x8e
	.sleb128 6
	.long	.LVL847
	.long	.LVL848-1
	.word	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.long	.LVL848-1
	.long	.LFE56
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST241:
	.long	.LVL842
	.long	.LVL844
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL844
	.long	.LVL851
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST242:
	.long	.LVL843
	.long	.LVL850
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL850
	.long	.LVL851
	.word	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST243:
	.long	.LVL852
	.long	.LVL853
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL853
	.long	.LVL855
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL855
	.long	.LVL856
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL856
	.long	.LVL857
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL857
	.long	.LVL858
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL858
	.long	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST244:
	.long	.LVL859
	.long	.LVL860-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL860-1
	.long	.LVL881
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL881
	.long	.LFE41
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST245:
	.long	.LVL860
	.long	.LVL861
	.word	0x1
	.byte	0x68
	.long	.LVL865
	.long	.LVL867
	.word	0x1
	.byte	0x68
	.long	.LVL879
	.long	.LVL880
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST246:
	.long	.LVL864
	.long	.LVL880
	.word	0xc
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST247:
	.long	.LVL866
	.long	.LVL880
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST248:
	.long	.LVL869
	.long	.LVL870
	.word	0xc
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST249:
	.long	.LVL869
	.long	.LVL870
	.word	0x3
	.byte	0x80
	.sleb128 29
	.byte	0x9f
	.long	.LVL870
	.long	.LVL871
	.word	0x3
	.byte	0x80
	.sleb128 30
	.byte	0x9f
	.long	.LVL871
	.long	.LVL872
	.word	0x3
	.byte	0x80
	.sleb128 31
	.byte	0x9f
	.long	.LVL872
	.long	.LVL873
	.word	0x3
	.byte	0x80
	.sleb128 32
	.byte	0x9f
	.long	0
	.long	0
.LLST250:
	.long	.LVL873
	.long	.LVL874
	.word	0xc
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST251:
	.long	.LVL877
	.long	.LVL878
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST252:
	.long	.LVL882
	.long	.LVL883-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL883-1
	.long	.LVL886
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL886
	.long	.LFE42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST253:
	.long	.LVL883
	.long	.LVL884
	.word	0x1
	.byte	0x68
	.long	.LVL885
	.long	.LFE42
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST254:
	.long	.LVL887
	.long	.LVL888-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL888-1
	.long	.LVL924
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL924
	.long	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST255:
	.long	.LVL887
	.long	.LVL888-1
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
	.long	.LVL888-1
	.long	.LVL910
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL912
	.long	.LVL913
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL914
	.long	.LVL915
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL916
	.long	.LVL917
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL920
	.long	.LVL922
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST256:
	.long	.LVL888
	.long	.LVL890
	.word	0x1
	.byte	0x68
	.long	.LVL890
	.long	.LVL900-1
	.word	0x2
	.byte	0x7c
	.sleb128 15
	.long	.LVL920
	.long	.LVL922
	.word	0x2
	.byte	0x7c
	.sleb128 15
	.long	0
	.long	0
.LLST257:
	.long	.LVL896
	.long	.LVL897
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
	.long	.LVL898
	.long	.LVL899
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
	.long	.LVL899
	.long	.LVL900-1
	.word	0x2
	.byte	0x7c
	.sleb128 6
	.long	.LVL901
	.long	.LVL903-1
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
	.long	.LVL904
	.long	.LVL905-1
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
	.long	.LVL906
	.long	.LVL907
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
	.long	.LVL907
	.long	.LVL908
	.word	0x2
	.byte	0x8a
	.sleb128 20
	.long	.LVL908
	.long	.LVL909-1
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
	.long	.LVL912
	.long	.LVL917
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
	.long	0
	.long	0
.LLST258:
	.long	.LVL893
	.long	.LVL920
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL922
	.long	.LVL923
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST259:
	.long	.LVL892
	.long	.LVL909
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL909
	.long	.LVL911
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL911
	.long	.LVL912
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL912
	.long	.LVL917
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL917
	.long	.LVL920
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL920
	.long	.LVL922
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL922
	.long	.LVL923
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST260:
	.long	.LVL892
	.long	.LVL894
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL894
	.long	.LVL897
	.word	0x6
	.byte	0x91
	.sleb128 -26
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL920
	.long	.LVL921
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST261:
	.long	.LVL925
	.long	.LVL927
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL927
	.long	.LVL936
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL936
	.long	.LVL937
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL937
	.long	.LVL938
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL938
	.long	.LVL946
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL946
	.long	.LFE44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST262:
	.long	.LVL925
	.long	.LVL926
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL926
	.long	.LVL936
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	.LVL936
	.long	.LVL938
	.word	0x9
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.long	.LVL938
	.long	.LFE44
	.word	0x2
	.byte	0x91
	.sleb128 -9
	.long	0
	.long	0
.LLST263:
	.long	.LVL928
	.long	.LVL929
	.word	0x1
	.byte	0x68
	.long	.LVL930
	.long	.LVL931
	.word	0x1
	.byte	0x68
	.long	.LVL933
	.long	.LVL934
	.word	0x1
	.byte	0x68
	.long	.LVL935
	.long	.LVL936
	.word	0x1
	.byte	0x68
	.long	.LVL938
	.long	.LVL939
	.word	0x1
	.byte	0x68
	.long	.LVL940
	.long	.LVL941
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL941
	.long	.LVL942
	.word	0x1
	.byte	0x68
	.long	.LVL943
	.long	.LVL944
	.word	0x1
	.byte	0x68
	.long	.LVL944
	.long	.LVL945
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL945
	.long	.LVL946
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST264:
	.long	.LVL947
	.long	.LVL948-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL948-1
	.long	.LVL949
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL949
	.long	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST265:
	.long	.LVL950
	.long	.LVL952-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL952-1
	.long	.LVL962
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL962
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST266:
	.long	.LVL950
	.long	.LVL951
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL951
	.long	.LVL963
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL963
	.long	.LFE46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST267:
	.long	.LVL953
	.long	.LVL954
	.word	0x1
	.byte	0x5f
	.long	.LVL954
	.long	.LVL955
	.word	0x1
	.byte	0x68
	.long	.LVL955
	.long	.LVL956
	.word	0x1
	.byte	0x5f
	.long	.LVL956
	.long	.LVL957
	.word	0x1
	.byte	0x68
	.long	.LVL957
	.long	.LVL959
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL959
	.long	.LVL960
	.word	0x1
	.byte	0x68
	.long	.LVL961
	.long	.LFE46
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST268:
	.long	.LVL964
	.long	.LVL965
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL965
	.long	.LVL972
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL972
	.long	.LFE47
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST269:
	.long	.LVL964
	.long	.LVL966
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL966
	.long	.LVL970
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL970
	.long	.LVL973
	.word	0x3
	.byte	0x76
	.sleb128 -9
	.byte	0x9f
	.long	.LVL973
	.long	.LFE47
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST270:
	.long	.LVL968
	.long	.LVL971
	.word	0x1
	.byte	0x5d
	.long	.LVL971
	.long	.LFE47
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST271:
	.long	.LVL974
	.long	.LVL975-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL975-1
	.long	.LVL978
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL978
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST272:
	.long	.LVL974
	.long	.LVL975-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL975-1
	.long	.LVL980
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL980
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST273:
	.long	.LVL974
	.long	.LVL975-1
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	.LVL975-1
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST274:
	.long	.LVL974
	.long	.LVL979
	.word	0x9
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.long	.LVL979
	.long	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST275:
	.long	.LVL975
	.long	.LVL976
	.word	0x1
	.byte	0x68
	.long	.LVL977
	.long	.LFE48
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST276:
	.long	.LVL981
	.long	.LVL983
	.word	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL983
	.long	.LFE49
	.word	0x2
	.byte	0x91
	.sleb128 -10
	.long	0
	.long	0
.LLST277:
	.long	.LVL981
	.long	.LVL982
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL982
	.long	.LVL991
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL991
	.long	.LFE49
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST278:
	.long	.LVL985
	.long	.LVL990
	.word	0x1
	.byte	0x61
	.long	.LVL990
	.long	.LFE49
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST279:
	.long	.LVL992
	.long	.LVL994
	.word	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL994
	.long	.LFE50
	.word	0x2
	.byte	0x91
	.sleb128 -28
	.long	0
	.long	0
.LLST280:
	.long	.LVL992
	.long	.LVL993
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL993
	.long	.LFE50
	.word	0x2
	.byte	0x91
	.sleb128 -21
	.long	0
	.long	0
.LLST281:
	.long	.LVL992
	.long	.LVL995-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL995-1
	.long	.LVL1005
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1005
	.long	.LVL1006
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1006
	.long	.LVL1024
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL1024
	.long	.LVL1028
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1028
	.long	.LFE50
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST282:
	.long	.LVL996
	.long	.LVL1006
	.word	0x1
	.byte	0x53
	.long	.LVL1006
	.long	.LVL1010
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1010
	.long	.LVL1011
	.word	0x1
	.byte	0x68
	.long	.LVL1011
	.long	.LVL1024
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1024
	.long	.LVL1025
	.word	0x1
	.byte	0x53
	.long	.LVL1026
	.long	.LVL1027
	.word	0x1
	.byte	0x53
	.long	.LVL1028
	.long	.LVL1029
	.word	0x1
	.byte	0x68
	.long	.LVL1029
	.long	.LVL1031
	.word	0x1
	.byte	0x53
	.long	.LVL1031
	.long	.LFE50
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST283:
	.long	.LVL997
	.long	.LVL999
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL999
	.long	.LVL1003
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1003
	.long	.LVL1006
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1006
	.long	.LVL1030
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST284:
	.long	.LVL998
	.long	.LVL999
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL999
	.long	.LVL1030
	.word	0xc
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
	.long	0
	.long	0
.LLST285:
	.long	.LVL1004
	.long	.LVL1008
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1008
	.long	.LVL1009
	.word	0xc
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1009
	.long	.LVL1011
	.word	0x2
	.byte	0x91
	.sleb128 -25
	.long	.LVL1011
	.long	.LVL1024
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1028
	.long	.LVL1029
	.word	0x2
	.byte	0x91
	.sleb128 -25
	.long	0
	.long	0
.LLST286:
	.long	.LVL1000
	.long	.LVL1003
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1024
	.long	.LVL1028
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST287:
	.long	.LVL1004
	.long	.LVL1006
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1006
	.long	.LVL1007
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1007
	.long	.LVL1011
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1017
	.long	.LVL1018
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1021
	.long	.LVL1024
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1028
	.long	.LVL1029
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST288:
	.long	.LVL1012
	.long	.LVL1015
	.word	0x9
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST289:
	.long	.LVL1012
	.long	.LVL1013
	.word	0x8
	.byte	0x88
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL1013
	.long	.LVL1014
	.word	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL1014
	.long	.LVL1015
	.word	0x8
	.byte	0x88
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST290:
	.long	.LVL1032
	.long	.LVL1033-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1033-1
	.long	.LVL1053
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1053
	.long	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST291:
	.long	.LVL1033
	.long	.LVL1035
	.word	0x1
	.byte	0x68
	.long	.LVL1035
	.long	.LVL1036-1
	.word	0x2
	.byte	0x7c
	.sleb128 15
	.long	.LVL1037
	.long	.LVL1038
	.word	0x1
	.byte	0x62
	.long	.LVL1038
	.long	.LVL1039-1
	.word	0x2
	.byte	0x7c
	.sleb128 15
	.long	.LVL1039
	.long	.LVL1040-1
	.word	0x6
	.byte	0x86
	.sleb128 0
	.byte	0x9
	.byte	0xff
	.byte	0x29
	.byte	0x9f
	.long	.LVL1041
	.long	.LVL1042
	.word	0x1
	.byte	0x62
	.long	.LVL1042
	.long	.LVL1044
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1044
	.long	.LVL1045
	.word	0x1
	.byte	0x62
	.long	.LVL1045
	.long	.LVL1046
	.word	0x2
	.byte	0x7c
	.sleb128 15
	.long	.LVL1046
	.long	.LVL1047
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1047
	.long	.LVL1048
	.word	0x6
	.byte	0x86
	.sleb128 0
	.byte	0x9
	.byte	0xff
	.byte	0x29
	.byte	0x9f
	.long	.LVL1048
	.long	.LVL1049
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1049
	.long	.LVL1050
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL1050
	.long	.LVL1051
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1051
	.long	.LVL1052
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST292:
	.long	.LVL1039
	.long	.LVL1040-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1046
	.long	.LVL1048
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1051
	.long	.LVL1052
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST293:
	.long	.LVL1054
	.long	.LVL1056
	.word	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1056
	.long	.LFE52
	.word	0x2
	.byte	0x91
	.sleb128 -15
	.long	0
	.long	0
.LLST294:
	.long	.LVL1057
	.long	.LVL1058
	.word	0x1
	.byte	0x68
	.long	.LVL1059
	.long	.LVL1060
	.word	0x1
	.byte	0x68
	.long	.LVL1061
	.long	.LVL1062
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1062
	.long	.LVL1063
	.word	0x1
	.byte	0x68
	.long	.LVL1064
	.long	.LVL1065
	.word	0x1
	.byte	0x68
	.long	.LVL1065
	.long	.LVL1067
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1068
	.long	.LVL1069
	.word	0x1
	.byte	0x68
	.long	.LVL1069
	.long	.LVL1077
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1077
	.long	.LVL1078
	.word	0x1
	.byte	0x68
	.long	.LVL1078
	.long	.LVL1079
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST295:
	.long	.LVL1055
	.long	.LVL1061
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1061
	.long	.LVL1071
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1071
	.long	.LVL1073
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1073
	.long	.LVL1079
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1079
	.long	.LVL1080
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST296:
	.long	.LVL1065
	.long	.LVL1067
	.word	0x4
	.byte	0x91
	.sleb128 -103
	.byte	0x9f
	.long	.LVL1074
	.long	.LVL1077
	.word	0x4
	.byte	0x91
	.sleb128 -103
	.byte	0x9f
	.long	0
	.long	0
.LLST297:
	.long	.LVL1065
	.long	.LVL1066
	.word	0x1
	.byte	0x68
	.long	.LVL1076
	.long	.LVL1077
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST298:
	.long	.LVL1065
	.long	.LVL1067
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1075
	.long	.LVL1077
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST299:
	.long	.LVL1081
	.long	.LVL1082
	.word	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1082
	.long	.LFE53
	.word	0x2
	.byte	0x91
	.sleb128 -16
	.long	0
	.long	0
.LLST300:
	.long	.LVL1084
	.long	.LVL1088
	.word	0x1
	.byte	0x5f
	.long	.LVL1088
	.long	.LVL1089
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1089
	.long	.LVL1091
	.word	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL1091
	.long	.LVL1093
	.word	0x1
	.byte	0x5f
	.long	.LVL1108
	.long	.LVL1121
	.word	0x1
	.byte	0x5f
	.long	.LVL1121
	.long	.LVL1123
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL1123
	.long	.LVL1127
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1127
	.long	.LVL1128
	.word	0x1
	.byte	0x5f
	.long	.LVL1128
	.long	.LVL1129
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1129
	.long	.LVL1131
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL1131
	.long	.LVL1132
	.word	0x1
	.byte	0x5f
	.long	.LVL1132
	.long	.LFE53
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST301:
	.long	.LVL1088
	.long	.LVL1119
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1121
	.long	.LVL1131
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST302:
	.long	.LVL1105
	.long	.LVL1106-1
	.word	0x3
	.byte	0x91
	.sleb128 -69
	.long	0
	.long	0
.LLST303:
	.long	.LVL1091
	.long	.LVL1117
	.word	0xc
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1125
	.long	.LVL1128
	.word	0xc
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST304:
	.long	.LVL1094
	.long	.LVL1096
	.word	0xc
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST305:
	.long	.LVL1094
	.long	.LVL1095
	.word	0x4
	.byte	0x88
	.sleb128 70
	.byte	0x9f
	.long	.LVL1095
	.long	.LVL1096
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL1096
	.long	.LVL1097
	.word	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.long	.LVL1097
	.long	.LVL1098
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL1098
	.long	.LVL1099
	.word	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.long	.LVL1099
	.long	.LVL1100
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	.LVL1100
	.long	.LVL1101
	.word	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.long	.LVL1101
	.long	.LVL1102
	.word	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST306:
	.long	.LVL1109
	.long	.LVL1110
	.word	0xc
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST307:
	.long	.LVL1109
	.long	.LVL1110
	.word	0x3
	.byte	0x8e
	.sleb128 23
	.byte	0x9f
	.long	.LVL1110
	.long	.LVL1111
	.word	0x3
	.byte	0x8e
	.sleb128 24
	.byte	0x9f
	.long	.LVL1111
	.long	.LVL1112
	.word	0x3
	.byte	0x8e
	.sleb128 25
	.byte	0x9f
	.long	.LVL1112
	.long	.LVL1113
	.word	0x3
	.byte	0x8e
	.sleb128 26
	.byte	0x9f
	.long	0
	.long	0
.LLST308:
	.long	.LVL1133
	.long	.LVL1134-1
	.word	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1134-1
	.long	.LFE54
	.word	0x2
	.byte	0x91
	.sleb128 -14
	.long	0
	.long	0
.LLST309:
	.long	.LVL1133
	.long	.LVL1134-1
	.word	0x9
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1134-1
	.long	.LFE54
	.word	0x2
	.byte	0x91
	.sleb128 -11
	.long	0
	.long	0
.LLST310:
	.long	.LVL1135
	.long	.LVL1136
	.word	0x1
	.byte	0x68
	.long	.LVL1137
	.long	.LVL1138
	.word	0x1
	.byte	0x68
	.long	.LVL1139
	.long	.LVL1140
	.word	0x1
	.byte	0x68
	.long	.LVL1141
	.long	.LVL1142
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL1142
	.long	.LVL1144
	.word	0x1
	.byte	0x68
	.long	.LVL1148
	.long	.LVL1149
	.word	0x1
	.byte	0x68
	.long	.LVL1151
	.long	.LVL1153
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1154
	.long	.LVL1155
	.word	0x1
	.byte	0x68
	.long	.LVL1156
	.long	.LVL1159
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1159
	.long	.LVL1160
	.word	0x1
	.byte	0x68
	.long	.LVL1161
	.long	.LVL1162
	.word	0x1
	.byte	0x68
	.long	.LVL1162
	.long	.LVL1165
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST311:
	.long	.LVL1143
	.long	.LVL1148
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1148
	.long	.LVL1150-1
	.word	0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4f
	.byte	0x9f
	.long	.LVL1165
	.long	.LVL1166
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST312:
	.long	.LVL1147
	.long	.LVL1148-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1165
	.long	.LVL1166
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST313:
	.long	.LVL1151
	.long	.LVL1153
	.word	0x4
	.byte	0x91
	.sleb128 -134
	.byte	0x9f
	.long	.LVL1162
	.long	.LVL1165
	.word	0x4
	.byte	0x91
	.sleb128 -134
	.byte	0x9f
	.long	0
	.long	0
.LLST314:
	.long	.LVL1151
	.long	.LVL1152
	.word	0x1
	.byte	0x68
	.long	.LVL1164
	.long	.LVL1165
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST315:
	.long	.LVL1151
	.long	.LVL1153
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1163
	.long	.LVL1165
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST316:
	.long	.LVL1167
	.long	.LVL1170
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1170
	.long	.LVL1176
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1176
	.long	.LVL1177
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1177
	.long	.LVL1178
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1178
	.long	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST317:
	.long	.LVL1167
	.long	.LVL1169
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1169
	.long	.LVL1179
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1179
	.long	.LFE55
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST318:
	.long	.LVL1167
	.long	.LVL1170
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1170
	.long	.LVL1176
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1176
	.long	.LVL1178
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1178
	.long	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST319:
	.long	.LVL1168
	.long	.LVL1170
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1170
	.long	.LVL1176
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1176
	.long	.LVL1178
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST320:
	.long	.LVL1168
	.long	.LVL1170
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1170
	.long	.LVL1176
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1176
	.long	.LVL1177
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1177
	.long	.LFE55
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST321:
	.long	.LVL1172
	.long	.LVL1175
	.word	0x6
	.byte	0x89
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST322:
	.long	.LVL1180
	.long	.LVL1183
	.word	0x1
	.byte	0x68
	.long	.LVL1183
	.long	.LVL1188
	.word	0x1
	.byte	0x61
	.long	.LVL1188
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST323:
	.long	.LVL1180
	.long	.LVL1182
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1182
	.long	.LVL1189
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1189
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST324:
	.long	.LVL1181
	.long	.LVL1182
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1182
	.long	.LVL1185
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST325:
	.long	.LVL1181
	.long	.LVL1185
	.word	0x4
	.byte	0x91
	.sleb128 -77
	.byte	0x9f
	.long	0
	.long	0
.LLST326:
	.long	.LVL1190
	.long	.LVL1193
	.word	0x9
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1193
	.long	.LVL1199
	.word	0x9
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST327:
	.long	.LVL1190
	.long	.LVL1192
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1192
	.long	.LVL1198
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1198
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST328:
	.long	.LVL1191
	.long	.LVL1192
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1192
	.long	.LVL1198
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1198
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST329:
	.long	.LVL1200
	.long	.LVL1204
	.word	0x2
	.byte	0x91
	.sleb128 3
	.long	.LVL1204
	.long	.LVL1206
	.word	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL1206
	.long	.LVL1208
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1208
	.long	.LVL1211
	.word	0x3
	.byte	0x76
	.sleb128 2
	.byte	0x9f
	.long	.LVL1211
	.long	.LVL1213
	.word	0x3
	.byte	0x76
	.sleb128 3
	.byte	0x9f
	.long	.LVL1213
	.long	.LVL1214
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1214
	.long	.LVL1215
	.word	0x3
	.byte	0x76
	.sleb128 2
	.byte	0x9f
	.long	.LVL1215
	.long	.LVL1216
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1216
	.long	.LVL1218
	.word	0x3
	.byte	0x76
	.sleb128 3
	.byte	0x9f
	.long	.LVL1218
	.long	.LVL1221
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1221
	.long	.LVL1224
	.word	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL1224
	.long	.LVL1233
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1233
	.long	.LVL1235
	.word	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL1235
	.long	.LVL1315
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1317
	.long	.LVL1332
	.word	0x9
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST330:
	.long	.LVL1204
	.long	.LVL1220
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1220
	.long	.LVL1223
	.word	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.long	.LVL1223
	.long	.LVL1225
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1225
	.long	.LVL1240
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1240
	.long	.LVL1242
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1242
	.long	.LVL1258
	.word	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.long	.LVL1258
	.long	.LVL1259
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1259
	.long	.LVL1261-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1261-1
	.long	.LVL1262
	.word	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.long	.LVL1262
	.long	.LVL1267
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1267
	.long	.LVL1269
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1269
	.long	.LVL1271
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1271
	.long	.LVL1273
	.word	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.long	.LVL1273
	.long	.LVL1274
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1274
	.long	.LVL1275
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1275
	.long	.LVL1277
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1277
	.long	.LVL1316
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1317
	.long	.LVL1319
	.word	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.long	.LVL1319
	.long	.LVL1320
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1320
	.long	.LVL1324
	.word	0x3
	.byte	0x72
	.sleb128 -2
	.byte	0x9f
	.long	.LVL1324
	.long	.LVL1325
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1325
	.long	.LVL1326
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1326
	.long	.LVL1327
	.word	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.long	.LVL1327
	.long	.LVL1329
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1329
	.long	.LVL1331
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1331
	.long	.LVL1332
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST331:
	.long	.LVL1208
	.long	.LVL1211
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1211
	.long	.LVL1214
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL1214
	.long	.LVL1216
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1216
	.long	.LVL1219
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL1219
	.long	.LVL1315
	.word	0x1
	.byte	0x59
	.long	.LVL1317
	.long	.LVL1332
	.word	0x1
	.byte	0x59
	.long	0
	.long	0
.LLST332:
	.long	.LVL1264
	.long	.LVL1265
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL1265
	.long	.LVL1266
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	.LVL1269
	.long	.LVL1270
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL1319
	.long	.LVL1320
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	.LVL1324
	.long	.LVL1328
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL1328
	.long	.LVL1332
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST333:
	.long	.LVL1279
	.long	.LVL1284
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1284
	.long	.LVL1285
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1285
	.long	.LVL1292
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1292
	.long	.LVL1295
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1295
	.long	.LVL1299
	.word	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.long	.LVL1299
	.long	.LVL1300
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1300
	.long	.LVL1315
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST334:
	.long	.LVL1241
	.long	.LVL1243
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1243
	.long	.LVL1244
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1244
	.long	.LVL1245
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1245
	.long	.LVL1246
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1246
	.long	.LVL1247
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL1248
	.long	.LVL1249
	.word	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.long	.LVL1249
	.long	.LVL1250
	.word	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.long	.LVL1250
	.long	.LVL1251
	.word	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.long	.LVL1251
	.long	.LVL1254
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1254
	.long	.LVL1256
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL1256
	.long	.LVL1257
	.word	0x3
	.byte	0x7e
	.sleb128 2
	.byte	0x9f
	.long	.LVL1257
	.long	.LVL1258
	.word	0x3
	.byte	0x7e
	.sleb128 1
	.byte	0x9f
	.long	.LVL1300
	.long	.LVL1302
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1302
	.long	.LVL1303
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1303
	.long	.LVL1304
	.word	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.long	.LVL1304
	.long	.LVL1305
	.word	0x3
	.byte	0x7c
	.sleb128 2
	.byte	0x9f
	.long	.LVL1305
	.long	.LVL1306
	.word	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.long	.LVL1306
	.long	.LVL1307
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1308
	.long	.LVL1311
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1311
	.long	.LVL1313
	.word	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.long	.LVL1313
	.long	.LVL1314
	.word	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.long	.LVL1314
	.long	.LVL1315
	.word	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.long	.LVL1317
	.long	.LVL1318
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1318
	.long	.LVL1319
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1320
	.long	.LVL1321
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1321
	.long	.LVL1322
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1322
	.long	.LVL1323
	.word	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1323
	.long	.LVL1324
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST335:
	.long	.LVL1208
	.long	.LVL1221
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1221
	.long	.LVL1225
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1225
	.long	.LVL1226
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1226
	.long	.LVL1227
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1228
	.long	.LVL1315
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1317
	.long	.LVL1332
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST336:
	.long	.LVL1268
	.long	.LVL1269
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1272
	.long	.LVL1274
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1276
	.long	.LVL1284
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1284
	.long	.LVL1285
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1285
	.long	.LVL1286
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1289
	.long	.LVL1292
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1292
	.long	.LVL1296
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1296
	.long	.LVL1298
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1298
	.long	.LVL1302
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1302
	.long	.LVL1303
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1306
	.long	.LVL1307
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1326
	.long	.LVL1327
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1330
	.long	.LVL1331
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST337:
	.long	.LVL1205
	.long	.LVL1207-1
	.word	0x1
	.byte	0x66
	.long	.LVL1208
	.long	.LVL1209
	.word	0x1
	.byte	0x66
	.long	.LVL1210
	.long	.LVL1229
	.word	0x1
	.byte	0x62
	.long	.LVL1229
	.long	.LVL1230
	.word	0x1
	.byte	0x66
	.long	.LVL1231
	.long	.LVL1248
	.word	0x1
	.byte	0x62
	.long	.LVL1258
	.long	.LVL1260
	.word	0x1
	.byte	0x62
	.long	.LVL1262
	.long	.LVL1263-1
	.word	0x1
	.byte	0x62
	.long	.LVL1264
	.long	.LVL1280
	.word	0x1
	.byte	0x62
	.long	.LVL1281
	.long	.LVL1282
	.word	0x1
	.byte	0x62
	.long	.LVL1315
	.long	.LVL1316-1
	.word	0x1
	.byte	0x66
	.long	.LVL1317
	.long	.LVL1332
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST338:
	.long	.LVL1236
	.long	.LVL1237
	.word	0x1
	.byte	0x62
	.long	.LVL1237
	.long	.LVL1238
	.word	0x1
	.byte	0x63
	.long	.LVL1238
	.long	.LVL1239
	.word	0x1
	.byte	0x62
	.long	.LVL1239
	.long	.LVL1248
	.word	0x1
	.byte	0x63
	.long	.LVL1258
	.long	.LVL1261-1
	.word	0x1
	.byte	0x63
	.long	.LVL1262
	.long	.LVL1263-1
	.word	0x1
	.byte	0x63
	.long	.LVL1264
	.long	.LVL1283
	.word	0x1
	.byte	0x63
	.long	.LVL1284
	.long	.LVL1285
	.word	0x8
	.byte	0x8a
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.byte	0x1c
	.byte	0x9f
	.long	.LVL1287
	.long	.LVL1288
	.word	0x1
	.byte	0x66
	.long	.LVL1288
	.long	.LVL1290
	.word	0x1
	.byte	0x6e
	.long	.LVL1290
	.long	.LVL1291
	.word	0x1
	.byte	0x6f
	.long	.LVL1291
	.long	.LVL1293
	.word	0x1
	.byte	0x6e
	.long	.LVL1293
	.long	.LVL1294
	.word	0x3
	.byte	0x8e
	.sleb128 -48
	.byte	0x9f
	.long	.LVL1294
	.long	.LVL1297
	.word	0x8
	.byte	0x8a
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.byte	0x1c
	.byte	0x9f
	.long	.LVL1301
	.long	.LVL1315
	.word	0x1
	.byte	0x5b
	.long	.LVL1317
	.long	.LVL1332
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST339:
	.long	.LVL1241
	.long	.LVL1258
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1317
	.long	.LVL1319
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1320
	.long	.LVL1324
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST340:
	.long	.LVL1201
	.long	.LVL1203
	.word	0x4
	.byte	0x91
	.sleb128 -126
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,info
	.long	0x1a4
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	0
	.long	0
	.section	.debug_ranges,info
.Ldebug_ranges0:
	.long	.LBB44
	.long	.LBE44
	.long	.LBB47
	.long	.LBE47
	.long	0
	.long	0
	.long	.LBB120
	.long	.LBE120
	.long	.LBB135
	.long	.LBE135
	.long	.LBB137
	.long	.LBE137
	.long	.LBB138
	.long	.LBE138
	.long	.LBB139
	.long	.LBE139
	.long	0
	.long	0
	.long	.LBB122
	.long	.LBE122
	.long	.LBB125
	.long	.LBE125
	.long	0
	.long	0
	.long	.LBB130
	.long	.LBE130
	.long	.LBB136
	.long	.LBE136
	.long	0
	.long	0
	.long	.LBB166
	.long	.LBE166
	.long	.LBB169
	.long	.LBE169
	.long	0
	.long	0
	.long	.LBB180
	.long	.LBE180
	.long	.LBB183
	.long	.LBE183
	.long	0
	.long	0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB13
	.long	.LFE13
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB33
	.long	.LFE33
	.long	.LFB36
	.long	.LFE36
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB18
	.long	.LFE18
	.long	.LFB12
	.long	.LFE12
	.long	.LFB15
	.long	.LFE15
	.long	.LFB23
	.long	.LFE23
	.long	.LFB14
	.long	.LFE14
	.long	.LFB19
	.long	.LFE19
	.long	.LFB17
	.long	.LFE17
	.long	.LFB16
	.long	.LFE16
	.long	.LFB20
	.long	.LFE20
	.long	.LFB26
	.long	.LFE26
	.long	.LFB24
	.long	.LFE24
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB28
	.long	.LFE28
	.long	.LFB22
	.long	.LFE22
	.long	.LFB32
	.long	.LFE32
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
	.long	.LFB44
	.long	.LFE44
	.long	.LFB45
	.long	.LFE45
	.long	.LFB46
	.long	.LFE46
	.long	.LFB47
	.long	.LFE47
	.long	.LFB48
	.long	.LFE48
	.long	.LFB49
	.long	.LFE49
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	0
	.long	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF7:
	.string	"disk_initialize"
.LASF1:
	.string	"clst"
.LASF6:
	.string	"disk_ioctl"
.LASF4:
	.string	"disk_write"
.LASF3:
	.string	"disk_status"
.LASF8:
	.string	"get_fattime"
.LASF2:
	.string	"path"
.LASF0:
	.string	"sect"
.LASF5:
	.string	"disk_read"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
.global __do_clear_bss
