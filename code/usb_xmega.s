	.file	"usb_xmega.c"
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
	.section	.text.usb_reset,code
.global	usb_reset
	.type	usb_reset, @function
usb_reset:
.LFB10:
	.file 1 "usb/usb_xmega.c"
	.loc 1 21 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 26 0
	ldi r24,lo8(3)
	sts 68,r24
	.loc 1 27 0
	ldi r30,lo8(usb_xmega_endpoints)
	ldi r31,hi8(usb_xmega_endpoints)
	ldi r26,lo8(-64)
	ldi r27,lo8(4)
	adiw r26,6
	st X+,r30
	st X,r31
	sbiw r26,6+1
	.loc 1 28 0
	adiw r26,3
	st X,__zero_reg__
	sbiw r26,3
	.loc 1 30 0
	st Z,__zero_reg__
	.loc 1 31 0
	ldi r24,lo8(67)
	std Z+1,r24
	.loc 1 32 0
	ldi r18,lo8(ep0_buf_out)
	ldi r19,hi8(ep0_buf_out)
	std Z+4,r18
	std Z+5,r19
	.loc 1 33 0
	ldi r25,lo8(2)
	std Z+8,r25
	.loc 1 34 0
	std Z+9,r24
	.loc 1 35 0
	ldi r24,lo8(ep0_buf_in)
	ldi r25,hi8(ep0_buf_in)
	std Z+12,r24
	std Z+13,r25
	.loc 1 37 0
	ldi r18,lo8(usb_num_endpoints)
	ldi r19,hi8(usb_num_endpoints)
	ldi r20,hlo8(usb_num_endpoints)
	movw r30,r18
	mov r21,r20
	call __xload_1
	subi r22,lo8(-(1))
	ori r22,lo8(-64)
	st X,r22
	ret
	.cfi_endproc
.LFE10:
	.size	usb_reset, .-usb_reset
	.section	.text.usb_init,code
.global	usb_init
	.type	usb_init, @function
usb_init:
.LFB9:
	.loc 1 7 0
	.cfi_startproc
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
	.loc 1 11 0
	ldi r28,lo8(-64)
	ldi r29,lo8(1)
	ldi r24,lo8(2)
	std Y+10,r24
.LVL0:
.LBB4:
	.loc 1 12 0
	ldi r30,lo8(26)
	ldi r31,0
/* #APP */
 ;  12 "usb/usb_xmega.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL1:
/* #NOAPP */
.LBE4:
	.loc 1 12 0
	ldi r26,lo8(-64)
	ldi r27,lo8(4)
	adiw r26,58
	st X,r30
	sbiw r26,58
	.loc 1 13 0
	std Y+10,r24
.LVL2:
.LBB5:
	.loc 1 14 0
	ldi r30,lo8(27)
	ldi r31,0
.LVL3:
/* #APP */
 ;  14 "usb/usb_xmega.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL4:
/* #NOAPP */
.LBE5:
	.loc 1 14 0
	adiw r26,59
	st X,r30
	.loc 1 18 0
	call usb_reset
.LVL5:
/* epilogue start */
	.loc 1 19 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE9:
	.size	usb_init, .-usb_init
	.section	.text.usb_set_address,code
.global	usb_set_address
	.type	usb_set_address, @function
usb_set_address:
.LFB11:
	.loc 1 40 0
	.cfi_startproc
.LVL6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 41 0
	sts 1219,r24
	ret
	.cfi_endproc
.LFE11:
	.size	usb_set_address, .-usb_set_address
	.section	.text.usb_ep0_from_progmem,code
.global	usb_ep0_from_progmem
	.type	usb_ep0_from_progmem, @function
usb_ep0_from_progmem:
.LFB12:
	.loc 1 44 0
	.cfi_startproc
.LVL7:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 47 0
	sts 458,__zero_reg__
.LVL8:
	.loc 1 48 0
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L5
	mov r26,r24
	movw r24,r22
	movw r30,r24
	ldi r26,lo8(ep0_buf_in)
	ldi r27,hi8(ep0_buf_in)
	subi r20,lo8(-(ep0_buf_in))
	sbci r21,hi8(-(ep0_buf_in))
.LVL9:
.L6:
.LBB6:
	.loc 1 49 0
/* #APP */
 ;  49 "usb/usb_xmega.c" 1
	lpm r18, Z
	
 ;  0 "" 2
.LVL10:
/* #NOAPP */
.LBE6:
	.loc 1 49 0
	st X+,r18
.LVL11:
	adiw r30,1
.LVL12:
	.loc 1 48 0
	cp r26,r20
	cpc r27,r21
	brne .L6
.LVL13:
.L5:
	.loc 1 51 0
	ldi r22,lo8(ep0_buf_in)
	ldi r23,hi8(ep0_buf_in)
	ldi r24,lo8(-128)
	.loc 1 52 0
	ret
	.cfi_endproc
.LFE12:
	.size	usb_ep0_from_progmem, .-usb_ep0_from_progmem
	.section	.text.usb_ep_start_out,code
.global	usb_ep_start_out
	.type	usb_ep_start_out, @function
usb_ep_start_out:
.LFB16:
	.loc 1 74 0
	.cfi_startproc
.LVL14:
	push r16
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 75 0
	mov r30,r24
	andi r30,lo8(63)
	ldi r31,0
.LVL15:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r18,r25
	rol r18
	clr r18
	rol r18
	ldi r19,0
.LVL16:
	.loc 1 76 0
	lsl r30
	rol r31
.LVL17:
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(usb_xmega_endpoints))
	sbci r31,hi8(-(usb_xmega_endpoints))
.LVL18:
	std Z+4,r22
	std Z+5,r23
	.loc 1 77 0
/* #APP */
 ;  77 "usb/usb_xmega.c" 1
	ldi r16, 34
	.dc.w 0x9306
	
 ;  0 "" 2
	.loc 1 79 0
/* #NOAPP */
	ldi r24,0
.LVL19:
/* epilogue start */
	pop r16
	ret
	.cfi_endproc
.LFE16:
	.size	usb_ep_start_out, .-usb_ep_start_out
	.section	.text.usb_ep_start_in,code
.global	usb_ep_start_in
	.type	usb_ep_start_in, @function
usb_ep_start_in:
.LFB17:
	.loc 1 81 0
	.cfi_startproc
.LVL20:
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
	.loc 1 82 0
	mov r30,r24
	andi r30,lo8(63)
	ldi r31,0
.LVL21:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r22,r25
	rol r22
	clr r22
	rol r22
	ldi r23,0
.LVL22:
	.loc 1 83 0
	lsl r30
	rol r31
.LVL23:
	add r30,r22
	adc r31,r23
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(usb_xmega_endpoints))
	sbci r31,hi8(-(usb_xmega_endpoints))
.LVL24:
	std Z+4,r12
	std Z+5,r13
	.loc 1 84 0
	ldi r17,0
	clr r17
	lsr r16
	ror r17
	clr r16
.LVL25:
	or r16,r18
	or r17,r19
	std Z+2,r16
	std Z+3,r17
	.loc 1 85 0
/* #APP */
 ;  85 "usb/usb_xmega.c" 1
	ldi r16, 34
	.dc.w 0x9306
	
 ;  0 "" 2
	.loc 1 87 0
/* #NOAPP */
	ldi r24,0
.LVL26:
/* epilogue start */
	pop r17
.LVL27:
	pop r16
.LVL28:
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE17:
	.size	usb_ep_start_in, .-usb_ep_start_in
	.section	.text.usb_ep_ready,code
.global	usb_ep_ready
	.type	usb_ep_ready, @function
usb_ep_ready:
.LFB18:
	.loc 1 89 0
	.cfi_startproc
.LVL29:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 90 0
	mov r30,r24
	andi r30,lo8(63)
	ldi r31,0
.LVL30:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r18,r25
	rol r18
	clr r18
	rol r18
	ldi r19,0
.LVL31:
	.loc 1 91 0
	lsl r30
	rol r31
.LVL32:
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(usb_xmega_endpoints))
	sbci r31,hi8(-(usb_xmega_endpoints))
.LVL33:
	ld r25,Z
	andi r25,lo8(34)
	ldi r24,lo8(1)
.LVL34:
	breq .L11
	ldi r24,0
.L11:
	.loc 1 92 0
	ret
	.cfi_endproc
.LFE18:
	.size	usb_ep_ready, .-usb_ep_ready
	.section	.text.usb_ep_pending,code
.global	usb_ep_pending
	.type	usb_ep_pending, @function
usb_ep_pending:
.LFB20:
	.loc 1 99 0
	.cfi_startproc
.LVL35:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 100 0
	mov r30,r24
	andi r30,lo8(63)
	ldi r31,0
.LVL36:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r18,r25
	rol r18
	clr r18
	rol r18
	ldi r19,0
.LVL37:
	.loc 1 101 0
	lsl r30
	rol r31
.LVL38:
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(usb_xmega_endpoints))
	sbci r31,hi8(-(usb_xmega_endpoints))
.LVL39:
	ld r24,Z
.LVL40:
	.loc 1 102 0
	bst r24,5
	clr r24
	bld r24,0
	ret
	.cfi_endproc
.LFE20:
	.size	usb_ep_pending, .-usb_ep_pending
	.section	.text.usb_ep_handled,code
.global	usb_ep_handled
	.type	usb_ep_handled, @function
usb_ep_handled:
.LFB21:
	.loc 1 104 0
	.cfi_startproc
.LVL41:
	push r16
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL42:
	.loc 1 106 0
	mov r30,r24
	andi r30,lo8(63)
	ldi r31,0
	lsl r30
	rol r31
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	clr r24
	lsl r25
	rol r24
	clr r25
.LVL43:
	add r30,r24
	adc r31,r25
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(usb_xmega_endpoints))
	sbci r31,hi8(-(usb_xmega_endpoints))
/* #APP */
 ;  106 "usb/usb_xmega.c" 1
	ldi r16, 32
	.dc.w 0x9306
	
 ;  0 "" 2
/* epilogue start */
	.loc 1 107 0
/* #NOAPP */
	pop r16
	ret
	.cfi_endproc
.LFE21:
	.size	usb_ep_handled, .-usb_ep_handled
	.section	.text.usb_ep_out_length,code
.global	usb_ep_out_length
	.type	usb_ep_out_length, @function
usb_ep_out_length:
.LFB22:
	.loc 1 109 0
	.cfi_startproc
.LVL44:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 110 0
	mov r30,r24
	andi r30,lo8(63)
	ldi r31,0
.LVL45:
	mov __tmp_reg__,r24
	lsl r0
	sbc r25,r25
	mov r18,r25
	rol r18
	clr r18
	rol r18
	ldi r19,0
.LVL46:
	.loc 1 111 0
	lsl r30
	rol r31
.LVL47:
	add r30,r18
	adc r31,r19
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(usb_xmega_endpoints))
	sbci r31,hi8(-(usb_xmega_endpoints))
.LVL48:
	ldd r24,Z+2
	ldd r25,Z+3
.LVL49:
	.loc 1 112 0
	ret
	.cfi_endproc
.LFE22:
	.size	usb_ep_out_length, .-usb_ep_out_length
	.section	.text.usb_detach,code
.global	usb_detach
	.type	usb_detach, @function
usb_detach:
.LFB23:
	.loc 1 115 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 116 0
	ldi r30,lo8(-64)
	ldi r31,lo8(4)
	ldd r24,Z+1
	andi r24,lo8(-2)
	std Z+1,r24
	ret
	.cfi_endproc
.LFE23:
	.size	usb_detach, .-usb_detach
	.section	.text.usb_attach,code
.global	usb_attach
	.type	usb_attach, @function
usb_attach:
.LFB24:
	.loc 1 120 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 121 0
	ldi r30,lo8(-64)
	ldi r31,lo8(4)
	ldd r24,Z+1
	ori r24,lo8(1)
	std Z+1,r24
	ret
	.cfi_endproc
.LFE24:
	.size	usb_attach, .-usb_attach
	.section	.text.usb_ep0_out,code
.global	usb_ep0_out
	.type	usb_ep0_out, @function
usb_ep0_out:
.LFB25:
	.loc 1 125 0
	.cfi_startproc
	push r16
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 126 0
	ldi r30,lo8(usb_xmega_endpoints)
	ldi r31,hi8(usb_xmega_endpoints)
/* #APP */
 ;  126 "usb/usb_xmega.c" 1
	ldi r16, 114
	.dc.w 0x9306
	
 ;  0 "" 2
/* epilogue start */
	.loc 1 127 0
/* #NOAPP */
	pop r16
	ret
	.cfi_endproc
.LFE25:
	.size	usb_ep0_out, .-usb_ep0_out
	.section	.text.usb_ep0_in,code
.global	usb_ep0_in
	.type	usb_ep0_in, @function
usb_ep0_in:
.LFB26:
	.loc 1 129 0
	.cfi_startproc
.LVL50:
	push r16
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 130 0
	ldi r25,0
.LVL51:
.LBB7:
.LBB8:
	.loc 1 83 0
	ldi r18,lo8(ep0_buf_in)
	ldi r19,hi8(ep0_buf_in)
	ldi r30,lo8(usb_xmega_endpoints)
	ldi r31,hi8(usb_xmega_endpoints)
	std Z+12,r18
	std Z+13,r19
	.loc 1 84 0
	std Z+10,r24
	std Z+11,r25
	.loc 1 85 0
	ldi r30,lo8(usb_xmega_endpoints+8)
	ldi r31,hi8(usb_xmega_endpoints+8)
.LVL52:
/* #APP */
 ;  85 "usb/usb_xmega.c" 1
	ldi r16, 34
	.dc.w 0x9306
	
 ;  0 "" 2
.LVL53:
/* epilogue start */
/* #NOAPP */
.LBE8:
.LBE7:
	.loc 1 131 0
	pop r16
	ret
	.cfi_endproc
.LFE26:
	.size	usb_ep0_in, .-usb_ep0_in
	.section	.text.usb_ep0_stall,code
.global	usb_ep0_stall
	.type	usb_ep0_stall, @function
usb_ep0_stall:
.LFB27:
	.loc 1 133 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 134 0
	ldi r30,lo8(usb_xmega_endpoints)
	ldi r31,hi8(usb_xmega_endpoints)
	ldd r24,Z+1
	ori r24,lo8(4)
	std Z+1,r24
	.loc 1 135 0
	ldd r24,Z+9
	ori r24,lo8(4)
	std Z+9,r24
	ret
	.cfi_endproc
.LFE27:
	.size	usb_ep0_stall, .-usb_ep0_stall
	.section	.text.usb_set_speed,code
.global	usb_set_speed
	.type	usb_set_speed, @function
usb_set_speed:
.LFB28:
	.loc 1 138 0
	.cfi_startproc
.LVL54:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE28:
	.size	usb_set_speed, .-usb_set_speed
	.section	.text.usb_get_speed,code
.global	usb_get_speed
	.type	usb_get_speed, @function
usb_get_speed:
.LFB29:
	.loc 1 139 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 139 0
	ldi r24,lo8(1)
	ret
	.cfi_endproc
.LFE29:
	.size	usb_get_speed, .-usb_get_speed
	.section	.text.usb_configure_clock,code
.global	usb_configure_clock
	.type	usb_configure_clock, @function
usb_configure_clock:
.LFB30:
	.loc 1 141 0
	.cfi_startproc
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
	.loc 1 143 0
	ldi r28,lo8(80)
	ldi r29,0
	ldi r24,lo8(4)
	std Y+6,r24
	.loc 1 144 0
	ldi r24,lo8(2)
	sts 458,r24
.LVL55:
.LBB9:
	.loc 1 145 0
	ldi r30,lo8(28)
	ldi r31,0
/* #APP */
 ;  145 "usb/usb_xmega.c" 1
	lpm r30, Z
	
 ;  0 "" 2
.LVL56:
/* #NOAPP */
.LBE9:
	.loc 1 145 0
	ldi r26,lo8(96)
	ldi r27,0
	adiw r26,3
	st X,r30
	sbiw r26,3
	.loc 1 146 0
	ldi r24,lo8(27)
	adiw r26,5
	st X,r24
	sbiw r26,5
	.loc 1 147 0
	ldi r24,lo8(-73)
	adiw r26,6
	st X,r24
	sbiw r26,6
	.loc 1 148 0
	ldi r24,lo8(1)
	st X,r24
	.loc 1 150 0
	ldi r24,lo8(-40)
	out __CCP__,r24
	.loc 1 151 0
	ldi r24,lo8(3)
	st Y,r24
	.loc 1 153 0
	ldi r30,lo8(80)
	ldi r31,0
.LVL57:
.L23:
	.loc 1 153 0 is_stmt 0 discriminator 1
	ldd r24,Z+1
	.loc 1 153 0 is_stmt 1 discriminator 1
	sbrs r24,1
	rjmp .L23
	.loc 1 155 0
	ldi r30,lo8(80)
	ldi r31,0
	ldi r24,lo8(16)
	std Z+5,r24
	.loc 1 157 0
	ldi r24,lo8(-40)
	out __CCP__,r24
	.loc 1 158 0
	ldi r24,lo8(19)
	st Z,r24
.L24:
	.loc 1 160 0 discriminator 1
	ldd r24,Z+1
	.loc 1 160 0 discriminator 1
	sbrs r24,4
	rjmp .L24
	.loc 1 162 0
	ldi r24,lo8(1)
	sts 104,r24
	.loc 1 164 0
	ldi r24,lo8(-40)
	out __CCP__,r24
	.loc 1 165 0
	ldi r30,lo8(64)
	ldi r31,0
	ldi r24,lo8(4)
	st Z,r24
	.loc 1 166 0
	std Z+1,__zero_reg__
/* epilogue start */
	.loc 1 167 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE30:
	.size	usb_configure_clock, .-usb_configure_clock
	.section	.text.__vector_125,code
.global	__vector_125
	.type	__vector_125, @function
__vector_125:
.LFB31:
	.loc 1 169 0
	.cfi_startproc
	push r1
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r18
	.cfi_def_cfa_offset 6
	.cfi_offset 18, -5
	push r19
	.cfi_def_cfa_offset 7
	.cfi_offset 19, -6
	push r20
	.cfi_def_cfa_offset 8
	.cfi_offset 20, -7
	push r21
	.cfi_def_cfa_offset 9
	.cfi_offset 21, -8
	push r22
	.cfi_def_cfa_offset 10
	.cfi_offset 22, -9
	push r23
	.cfi_def_cfa_offset 11
	.cfi_offset 23, -10
	push r24
	.cfi_def_cfa_offset 12
	.cfi_offset 24, -11
	push r25
	.cfi_def_cfa_offset 13
	.cfi_offset 25, -12
	push r26
	.cfi_def_cfa_offset 14
	.cfi_offset 26, -13
	push r27
	.cfi_def_cfa_offset 15
	.cfi_offset 27, -14
	push r30
	.cfi_def_cfa_offset 16
	.cfi_offset 30, -15
	push r31
	.cfi_def_cfa_offset 17
	.cfi_offset 31, -16
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	.loc 1 170 0
	lds r24,1226
	.loc 1 170 0
	tst r24
	brge .L28
	.loc 1 171 0
	ldi r24,lo8(-128)
	sts 1226,r24
	rjmp .L27
.L28:
	.loc 1 172 0
	lds r24,1226
	.loc 1 172 0
	andi r24,lo8(14)
	breq .L30
	.loc 1 173 0
	ldi r24,lo8(14)
	sts 1226,r24
	rjmp .L27
.L30:
	.loc 1 174 0
	lds r24,1226
	.loc 1 174 0
	sbrs r24,0
	rjmp .L31
	.loc 1 175 0
	ldi r24,lo8(1)
	sts 1226,r24
	rjmp .L27
.L31:
	.loc 1 177 0
	ldi r30,lo8(-64)
	ldi r31,lo8(4)
	ldi r24,lo8(112)
	std Z+10,r24
	.loc 1 178 0
	ldd r24,Z+2
	.loc 1 178 0
	sbrs r24,0
	rjmp .L27
	.loc 1 179 0
	ldd r24,Z+2
	andi r24,lo8(-2)
	std Z+2,r24
	.loc 1 180 0
	call usb_reset
.LVL58:
	.loc 1 181 0
	call usb_cb_reset
.LVL59:
.L27:
/* epilogue start */
	.loc 1 184 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE31:
	.size	__vector_125, .-__vector_125
	.section	.text.__vector_126,code
.global	__vector_126
	.type	__vector_126, @function
__vector_126:
.LFB32:
	.loc 1 186 0
	.cfi_startproc
	push r1
	.cfi_def_cfa_offset 4
	.cfi_offset 1, -3
	push r0
	.cfi_def_cfa_offset 5
	.cfi_offset 0, -4
	in r0,__SREG__
	push r0
	clr __zero_reg__
	in r0,__RAMPZ__
	push r0
	push r16
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
	push r18
	.cfi_def_cfa_offset 7
	.cfi_offset 18, -6
	push r19
	.cfi_def_cfa_offset 8
	.cfi_offset 19, -7
	push r20
	.cfi_def_cfa_offset 9
	.cfi_offset 20, -8
	push r21
	.cfi_def_cfa_offset 10
	.cfi_offset 21, -9
	push r22
	.cfi_def_cfa_offset 11
	.cfi_offset 22, -10
	push r23
	.cfi_def_cfa_offset 12
	.cfi_offset 23, -11
	push r24
	.cfi_def_cfa_offset 13
	.cfi_offset 24, -12
	push r25
	.cfi_def_cfa_offset 14
	.cfi_offset 25, -13
	push r26
	.cfi_def_cfa_offset 15
	.cfi_offset 26, -14
	push r27
	.cfi_def_cfa_offset 16
	.cfi_offset 27, -15
	push r30
	.cfi_def_cfa_offset 17
	.cfi_offset 30, -16
	push r31
	.cfi_def_cfa_offset 18
	.cfi_offset 31, -17
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 17 */
.L__stack_usage = 17
	.loc 1 187 0
	ldi r30,lo8(-64)
	ldi r31,lo8(4)
	std Z+4,__zero_reg__
	.loc 1 188 0
	ldi r24,lo8(3)
	std Z+12,r24
	.loc 1 191 0
	lds r24,usb_xmega_endpoints
.LVL60:
	.loc 1 192 0
	sbrs r24,4
	rjmp .L33
	.loc 1 194 0
	ldi r30,lo8(usb_xmega_endpoints)
	ldi r31,hi8(usb_xmega_endpoints)
/* #APP */
 ;  194 "usb/usb_xmega.c" 1
	ldi r16, 48
	.dc.w 0x9306
	
 ;  0 "" 2
	.loc 1 195 0
/* #NOAPP */
	ldi r20,lo8(ep0_buf_out)
	ldi r21,hi8(ep0_buf_out)
	ldi r22,lo8(-128)
	ldi r18,lo8(8)
	ldi r19,0
	ldi r24,lo8(usb_setup)
	ldi r25,hi8(usb_setup)
.LVL61:
	call memcpy
.LVL62:
	.loc 1 196 0
	call usb_handle_setup
.LVL63:
	rjmp .L34
.LVL64:
.L33:
	.loc 1 197 0
	sbrc r24,5
	.loc 1 198 0
	call usb_handle_control_out_complete
.LVL65:
.L34:
	.loc 1 201 0
	lds r24,usb_xmega_endpoints+8
	sbrc r24,5
	.loc 1 202 0
	call usb_handle_control_in_complete
.LVL66:
.L35:
	.loc 1 205 0
	call usb_cb_completion
.LVL67:
/* epilogue start */
	.loc 1 206 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r16
	pop r0
	out __RAMPZ__,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE32:
	.size	__vector_126, .-__vector_126
	.comm	USB_dtype,1,1
	.section	.text,code
.Letext0:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 3 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h"
	.file 4 "/opt/microchip/xc8/v2.10/avr/lib/gcc/avr/5.4.0/include/stddef.h"
	.file 5 "usb/usb_standard.h"
	.file 6 "usb/usb.h"
	.file 7 "usb/usb_xmega.h"
	.file 8 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0x1c57
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"usb/usb_xmega.c"
	.string	"/home/marek/Dropbox/Programowanie/Michrochip_PIC/xmegatest.X"
	.long	.Ldebug_ranges0+0
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
	.long	0x190
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
	.long	0x1b8
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
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
	.long	0x227
	.uleb128 0x4
	.long	0x181
	.uleb128 0x3
	.string	"register16_t"
	.byte	0x3
	.byte	0x55
	.long	0x240
	.uleb128 0x4
	.long	0x1a8
	.uleb128 0x5
	.string	"CLK_struct"
	.byte	0x5
	.byte	0x3
	.word	0x200
	.long	0x2a8
	.uleb128 0x6
	.string	"CTRL"
	.byte	0x3
	.word	0x202
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"PSCTRL"
	.byte	0x3
	.word	0x203
	.long	0x214
	.byte	0x1
	.uleb128 0x6
	.string	"LOCK"
	.byte	0x3
	.word	0x204
	.long	0x214
	.byte	0x2
	.uleb128 0x6
	.string	"RTCCTRL"
	.byte	0x3
	.word	0x205
	.long	0x214
	.byte	0x3
	.uleb128 0x6
	.string	"USBCTRL"
	.byte	0x3
	.word	0x206
	.long	0x214
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.string	"CLK_t"
	.byte	0x3
	.word	0x207
	.long	0x245
	.uleb128 0x8
	.string	"CLK_SCLKSEL_enum"
	.byte	0x1
	.long	0x190
	.byte	0x3
	.word	0x22d
	.long	0x344
	.uleb128 0x9
	.string	"CLK_SCLKSEL_RC2M_gc"
	.byte	0
	.uleb128 0x9
	.string	"CLK_SCLKSEL_RC32M_gc"
	.byte	0x1
	.uleb128 0x9
	.string	"CLK_SCLKSEL_RC32K_gc"
	.byte	0x2
	.uleb128 0x9
	.string	"CLK_SCLKSEL_XOSC_gc"
	.byte	0x3
	.uleb128 0x9
	.string	"CLK_SCLKSEL_PLL_gc"
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.string	"CLK_USBSRC_enum"
	.byte	0x1
	.long	0x190
	.byte	0x3
	.word	0x242
	.long	0x38c
	.uleb128 0x9
	.string	"CLK_USBSRC_PLL_gc"
	.byte	0
	.uleb128 0x9
	.string	"CLK_USBSRC_RC32M_gc"
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.string	"CCP_enum"
	.byte	0x1
	.long	0x190
	.byte	0x3
	.word	0x24f
	.long	0x3bf
	.uleb128 0x9
	.string	"CCP_SPM_gc"
	.byte	0x9d
	.uleb128 0x9
	.string	"CCP_IOREG_gc"
	.byte	0xd8
	.byte	0
	.uleb128 0x5
	.string	"DFLL_struct"
	.byte	0x8
	.byte	0x3
	.word	0x2c6
	.long	0x450
	.uleb128 0x6
	.string	"CTRL"
	.byte	0x3
	.word	0x2c8
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"reserved_0x01"
	.byte	0x3
	.word	0x2c9
	.long	0x214
	.byte	0x1
	.uleb128 0x6
	.string	"CALA"
	.byte	0x3
	.word	0x2ca
	.long	0x214
	.byte	0x2
	.uleb128 0x6
	.string	"CALB"
	.byte	0x3
	.word	0x2cb
	.long	0x214
	.byte	0x3
	.uleb128 0x6
	.string	"COMP0"
	.byte	0x3
	.word	0x2cc
	.long	0x214
	.byte	0x4
	.uleb128 0x6
	.string	"COMP1"
	.byte	0x3
	.word	0x2cd
	.long	0x214
	.byte	0x5
	.uleb128 0x6
	.string	"COMP2"
	.byte	0x3
	.word	0x2ce
	.long	0x214
	.byte	0x6
	.uleb128 0xa
	.long	.LASF0
	.byte	0x3
	.word	0x2cf
	.long	0x214
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.string	"DFLL_t"
	.byte	0x3
	.word	0x2d0
	.long	0x3bf
	.uleb128 0x5
	.string	"NVM_struct"
	.byte	0x11
	.byte	0x3
	.word	0x53e
	.long	0x589
	.uleb128 0x6
	.string	"ADDR0"
	.byte	0x3
	.word	0x540
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"ADDR1"
	.byte	0x3
	.word	0x541
	.long	0x214
	.byte	0x1
	.uleb128 0x6
	.string	"ADDR2"
	.byte	0x3
	.word	0x542
	.long	0x214
	.byte	0x2
	.uleb128 0x6
	.string	"reserved_0x03"
	.byte	0x3
	.word	0x543
	.long	0x214
	.byte	0x3
	.uleb128 0x6
	.string	"DATA0"
	.byte	0x3
	.word	0x544
	.long	0x214
	.byte	0x4
	.uleb128 0x6
	.string	"DATA1"
	.byte	0x3
	.word	0x545
	.long	0x214
	.byte	0x5
	.uleb128 0x6
	.string	"DATA2"
	.byte	0x3
	.word	0x546
	.long	0x214
	.byte	0x6
	.uleb128 0xa
	.long	.LASF0
	.byte	0x3
	.word	0x547
	.long	0x214
	.byte	0x7
	.uleb128 0x6
	.string	"reserved_0x08"
	.byte	0x3
	.word	0x548
	.long	0x214
	.byte	0x8
	.uleb128 0x6
	.string	"reserved_0x09"
	.byte	0x3
	.word	0x549
	.long	0x214
	.byte	0x9
	.uleb128 0x6
	.string	"CMD"
	.byte	0x3
	.word	0x54a
	.long	0x214
	.byte	0xa
	.uleb128 0x6
	.string	"CTRLA"
	.byte	0x3
	.word	0x54b
	.long	0x214
	.byte	0xb
	.uleb128 0x6
	.string	"CTRLB"
	.byte	0x3
	.word	0x54c
	.long	0x214
	.byte	0xc
	.uleb128 0x6
	.string	"INTCTRL"
	.byte	0x3
	.word	0x54d
	.long	0x214
	.byte	0xd
	.uleb128 0xa
	.long	.LASF1
	.byte	0x3
	.word	0x54e
	.long	0x214
	.byte	0xe
	.uleb128 0xa
	.long	.LASF2
	.byte	0x3
	.word	0x54f
	.long	0x214
	.byte	0xf
	.uleb128 0x6
	.string	"LOCK_BITS"
	.byte	0x3
	.word	0x550
	.long	0x214
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.string	"NVM_t"
	.byte	0x3
	.word	0x551
	.long	0x45f
	.uleb128 0x8
	.string	"NVM_CMD_enum"
	.byte	0x1
	.long	0x190
	.byte	0x3
	.word	0x56f
	.long	0x97d
	.uleb128 0x9
	.string	"NVM_CMD_NO_OPERATION_gc"
	.byte	0
	.uleb128 0x9
	.string	"NVM_CMD_READ_USER_SIG_ROW_gc"
	.byte	0x1
	.uleb128 0x9
	.string	"NVM_CMD_READ_CALIB_ROW_gc"
	.byte	0x2
	.uleb128 0x9
	.string	"NVM_CMD_READ_EEPROM_gc"
	.byte	0x6
	.uleb128 0x9
	.string	"NVM_CMD_READ_FUSES_gc"
	.byte	0x7
	.uleb128 0x9
	.string	"NVM_CMD_WRITE_LOCK_BITS_gc"
	.byte	0x8
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_USER_SIG_ROW_gc"
	.byte	0x18
	.uleb128 0x9
	.string	"NVM_CMD_WRITE_USER_SIG_ROW_gc"
	.byte	0x1a
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_APP_gc"
	.byte	0x20
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_APP_PAGE_gc"
	.byte	0x22
	.uleb128 0x9
	.string	"NVM_CMD_LOAD_FLASH_BUFFER_gc"
	.byte	0x23
	.uleb128 0x9
	.string	"NVM_CMD_WRITE_APP_PAGE_gc"
	.byte	0x24
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_WRITE_APP_PAGE_gc"
	.byte	0x25
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_FLASH_BUFFER_gc"
	.byte	0x26
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_BOOT_PAGE_gc"
	.byte	0x2a
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_FLASH_PAGE_gc"
	.byte	0x2b
	.uleb128 0x9
	.string	"NVM_CMD_WRITE_BOOT_PAGE_gc"
	.byte	0x2c
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_WRITE_BOOT_PAGE_gc"
	.byte	0x2d
	.uleb128 0x9
	.string	"NVM_CMD_WRITE_FLASH_PAGE_gc"
	.byte	0x2e
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_WRITE_FLASH_PAGE_gc"
	.byte	0x2f
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_EEPROM_gc"
	.byte	0x30
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_EEPROM_PAGE_gc"
	.byte	0x32
	.uleb128 0x9
	.string	"NVM_CMD_LOAD_EEPROM_BUFFER_gc"
	.byte	0x33
	.uleb128 0x9
	.string	"NVM_CMD_WRITE_EEPROM_PAGE_gc"
	.byte	0x34
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_WRITE_EEPROM_PAGE_gc"
	.byte	0x35
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_EEPROM_BUFFER_gc"
	.byte	0x36
	.uleb128 0x9
	.string	"NVM_CMD_APP_CRC_gc"
	.byte	0x38
	.uleb128 0x9
	.string	"NVM_CMD_BOOT_CRC_gc"
	.byte	0x39
	.uleb128 0x9
	.string	"NVM_CMD_FLASH_RANGE_CRC_gc"
	.byte	0x3a
	.uleb128 0x9
	.string	"NVM_CMD_CHIP_ERASE_gc"
	.byte	0x40
	.uleb128 0x9
	.string	"NVM_CMD_READ_NVM_gc"
	.byte	0x43
	.uleb128 0x9
	.string	"NVM_CMD_WRITE_FUSE_gc"
	.byte	0x4c
	.uleb128 0x9
	.string	"NVM_CMD_ERASE_BOOT_gc"
	.byte	0x68
	.uleb128 0x9
	.string	"NVM_CMD_FLASH_CRC_gc"
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.string	"OSC_struct"
	.byte	0x7
	.byte	0x3
	.word	0x5b6
	.long	0xa06
	.uleb128 0x6
	.string	"CTRL"
	.byte	0x3
	.word	0x5b8
	.long	0x214
	.byte	0
	.uleb128 0xa
	.long	.LASF2
	.byte	0x3
	.word	0x5b9
	.long	0x214
	.byte	0x1
	.uleb128 0x6
	.string	"XOSCCTRL"
	.byte	0x3
	.word	0x5ba
	.long	0x214
	.byte	0x2
	.uleb128 0x6
	.string	"XOSCFAIL"
	.byte	0x3
	.word	0x5bb
	.long	0x214
	.byte	0x3
	.uleb128 0x6
	.string	"RC32KCAL"
	.byte	0x3
	.word	0x5bc
	.long	0x214
	.byte	0x4
	.uleb128 0x6
	.string	"PLLCTRL"
	.byte	0x3
	.word	0x5bd
	.long	0x214
	.byte	0x5
	.uleb128 0x6
	.string	"DFLLCTRL"
	.byte	0x3
	.word	0x5be
	.long	0x214
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"OSC_t"
	.byte	0x3
	.word	0x5bf
	.long	0x97d
	.uleb128 0x8
	.string	"OSC_PLLSRC_enum"
	.byte	0x1
	.long	0x190
	.byte	0x3
	.word	0x5cb
	.long	0xa72
	.uleb128 0x9
	.string	"OSC_PLLSRC_RC2M_gc"
	.byte	0
	.uleb128 0x9
	.string	"OSC_PLLSRC_RC32M_gc"
	.byte	0x80
	.uleb128 0x9
	.string	"OSC_PLLSRC_XOSC_gc"
	.byte	0xc0
	.byte	0
	.uleb128 0x8
	.string	"OSC_RC32MCREF_enum"
	.byte	0x1
	.long	0x190
	.byte	0x3
	.word	0x5da
	.long	0xae1
	.uleb128 0x9
	.string	"OSC_RC32MCREF_RC32K_gc"
	.byte	0
	.uleb128 0x9
	.string	"OSC_RC32MCREF_XOSC32K_gc"
	.byte	0x2
	.uleb128 0x9
	.string	"OSC_RC32MCREF_USBSOF_gc"
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.byte	0x3
	.word	0xa57
	.long	0xb07
	.uleb128 0x6
	.string	"CNTL"
	.byte	0x3
	.word	0xa57
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"CNTH"
	.byte	0x3
	.word	0xa57
	.long	0x214
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.byte	0x3
	.word	0xa57
	.long	0xb22
	.uleb128 0xd
	.string	"CNT"
	.byte	0x3
	.word	0xa57
	.long	0x22c
	.uleb128 0xe
	.long	0xae1
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.byte	0x3
	.word	0xa58
	.long	0xb50
	.uleb128 0x6
	.string	"DATAPTRL"
	.byte	0x3
	.word	0xa58
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"DATAPTRH"
	.byte	0x3
	.word	0xa58
	.long	0x214
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.byte	0x3
	.word	0xa58
	.long	0xb6f
	.uleb128 0xd
	.string	"DATAPTR"
	.byte	0x3
	.word	0xa58
	.long	0x22c
	.uleb128 0xe
	.long	0xb22
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.byte	0x3
	.word	0xa59
	.long	0xb9d
	.uleb128 0x6
	.string	"AUXDATAL"
	.byte	0x3
	.word	0xa59
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"AUXDATAH"
	.byte	0x3
	.word	0xa59
	.long	0x214
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.byte	0x3
	.word	0xa59
	.long	0xbbc
	.uleb128 0xd
	.string	"AUXDATA"
	.byte	0x3
	.word	0xa59
	.long	0x22c
	.uleb128 0xe
	.long	0xb6f
	.byte	0
	.uleb128 0x5
	.string	"USB_EP_struct"
	.byte	0x8
	.byte	0x3
	.word	0xa53
	.long	0xc01
	.uleb128 0xa
	.long	.LASF2
	.byte	0x3
	.word	0xa55
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"CTRL"
	.byte	0x3
	.word	0xa56
	.long	0x214
	.byte	0x1
	.uleb128 0xf
	.long	0xb07
	.byte	0x2
	.uleb128 0xf
	.long	0xb50
	.byte	0x4
	.uleb128 0xf
	.long	0xb9d
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.string	"USB_EP_t"
	.byte	0x3
	.word	0xa5a
	.long	0xbbc
	.uleb128 0xb
	.byte	0x2
	.byte	0x3
	.word	0xa66
	.long	0xc3c
	.uleb128 0x6
	.string	"EPPTRL"
	.byte	0x3
	.word	0xa66
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"EPPTRH"
	.byte	0x3
	.word	0xa66
	.long	0x214
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.byte	0x3
	.word	0xa66
	.long	0xc59
	.uleb128 0xd
	.string	"EPPTR"
	.byte	0x3
	.word	0xa66
	.long	0x22c
	.uleb128 0xe
	.long	0xc12
	.byte	0
	.uleb128 0x5
	.string	"USB_struct"
	.byte	0x3c
	.byte	0x3
	.word	0xa5e
	.long	0x114f
	.uleb128 0x6
	.string	"CTRLA"
	.byte	0x3
	.word	0xa60
	.long	0x214
	.byte	0
	.uleb128 0x6
	.string	"CTRLB"
	.byte	0x3
	.word	0xa61
	.long	0x214
	.byte	0x1
	.uleb128 0xa
	.long	.LASF2
	.byte	0x3
	.word	0xa62
	.long	0x214
	.byte	0x2
	.uleb128 0x6
	.string	"ADDR"
	.byte	0x3
	.word	0xa63
	.long	0x214
	.byte	0x3
	.uleb128 0x6
	.string	"FIFOWP"
	.byte	0x3
	.word	0xa64
	.long	0x214
	.byte	0x4
	.uleb128 0x6
	.string	"FIFORP"
	.byte	0x3
	.word	0xa65
	.long	0x214
	.byte	0x5
	.uleb128 0xf
	.long	0xc3c
	.byte	0x6
	.uleb128 0x6
	.string	"INTCTRLA"
	.byte	0x3
	.word	0xa67
	.long	0x214
	.byte	0x8
	.uleb128 0x6
	.string	"INTCTRLB"
	.byte	0x3
	.word	0xa68
	.long	0x214
	.byte	0x9
	.uleb128 0x6
	.string	"INTFLAGSACLR"
	.byte	0x3
	.word	0xa69
	.long	0x214
	.byte	0xa
	.uleb128 0x6
	.string	"INTFLAGSASET"
	.byte	0x3
	.word	0xa6a
	.long	0x214
	.byte	0xb
	.uleb128 0x6
	.string	"INTFLAGSBCLR"
	.byte	0x3
	.word	0xa6b
	.long	0x214
	.byte	0xc
	.uleb128 0x6
	.string	"INTFLAGSBSET"
	.byte	0x3
	.word	0xa6c
	.long	0x214
	.byte	0xd
	.uleb128 0xa
	.long	.LASF1
	.byte	0x3
	.word	0xa6d
	.long	0x214
	.byte	0xe
	.uleb128 0x6
	.string	"reserved_0x0F"
	.byte	0x3
	.word	0xa6e
	.long	0x214
	.byte	0xf
	.uleb128 0x6
	.string	"reserved_0x10"
	.byte	0x3
	.word	0xa6f
	.long	0x214
	.byte	0x10
	.uleb128 0x6
	.string	"reserved_0x11"
	.byte	0x3
	.word	0xa70
	.long	0x214
	.byte	0x11
	.uleb128 0x6
	.string	"reserved_0x12"
	.byte	0x3
	.word	0xa71
	.long	0x214
	.byte	0x12
	.uleb128 0x6
	.string	"reserved_0x13"
	.byte	0x3
	.word	0xa72
	.long	0x214
	.byte	0x13
	.uleb128 0x6
	.string	"reserved_0x14"
	.byte	0x3
	.word	0xa73
	.long	0x214
	.byte	0x14
	.uleb128 0x6
	.string	"reserved_0x15"
	.byte	0x3
	.word	0xa74
	.long	0x214
	.byte	0x15
	.uleb128 0x6
	.string	"reserved_0x16"
	.byte	0x3
	.word	0xa75
	.long	0x214
	.byte	0x16
	.uleb128 0x6
	.string	"reserved_0x17"
	.byte	0x3
	.word	0xa76
	.long	0x214
	.byte	0x17
	.uleb128 0x6
	.string	"reserved_0x18"
	.byte	0x3
	.word	0xa77
	.long	0x214
	.byte	0x18
	.uleb128 0x6
	.string	"reserved_0x19"
	.byte	0x3
	.word	0xa78
	.long	0x214
	.byte	0x19
	.uleb128 0x6
	.string	"reserved_0x1A"
	.byte	0x3
	.word	0xa79
	.long	0x214
	.byte	0x1a
	.uleb128 0x6
	.string	"reserved_0x1B"
	.byte	0x3
	.word	0xa7a
	.long	0x214
	.byte	0x1b
	.uleb128 0x6
	.string	"reserved_0x1C"
	.byte	0x3
	.word	0xa7b
	.long	0x214
	.byte	0x1c
	.uleb128 0x6
	.string	"reserved_0x1D"
	.byte	0x3
	.word	0xa7c
	.long	0x214
	.byte	0x1d
	.uleb128 0x6
	.string	"reserved_0x1E"
	.byte	0x3
	.word	0xa7d
	.long	0x214
	.byte	0x1e
	.uleb128 0x6
	.string	"reserved_0x1F"
	.byte	0x3
	.word	0xa7e
	.long	0x214
	.byte	0x1f
	.uleb128 0x6
	.string	"reserved_0x20"
	.byte	0x3
	.word	0xa7f
	.long	0x214
	.byte	0x20
	.uleb128 0x6
	.string	"reserved_0x21"
	.byte	0x3
	.word	0xa80
	.long	0x214
	.byte	0x21
	.uleb128 0x6
	.string	"reserved_0x22"
	.byte	0x3
	.word	0xa81
	.long	0x214
	.byte	0x22
	.uleb128 0x6
	.string	"reserved_0x23"
	.byte	0x3
	.word	0xa82
	.long	0x214
	.byte	0x23
	.uleb128 0x6
	.string	"reserved_0x24"
	.byte	0x3
	.word	0xa83
	.long	0x214
	.byte	0x24
	.uleb128 0x6
	.string	"reserved_0x25"
	.byte	0x3
	.word	0xa84
	.long	0x214
	.byte	0x25
	.uleb128 0x6
	.string	"reserved_0x26"
	.byte	0x3
	.word	0xa85
	.long	0x214
	.byte	0x26
	.uleb128 0x6
	.string	"reserved_0x27"
	.byte	0x3
	.word	0xa86
	.long	0x214
	.byte	0x27
	.uleb128 0x6
	.string	"reserved_0x28"
	.byte	0x3
	.word	0xa87
	.long	0x214
	.byte	0x28
	.uleb128 0x6
	.string	"reserved_0x29"
	.byte	0x3
	.word	0xa88
	.long	0x214
	.byte	0x29
	.uleb128 0x6
	.string	"reserved_0x2A"
	.byte	0x3
	.word	0xa89
	.long	0x214
	.byte	0x2a
	.uleb128 0x6
	.string	"reserved_0x2B"
	.byte	0x3
	.word	0xa8a
	.long	0x214
	.byte	0x2b
	.uleb128 0x6
	.string	"reserved_0x2C"
	.byte	0x3
	.word	0xa8b
	.long	0x214
	.byte	0x2c
	.uleb128 0x6
	.string	"reserved_0x2D"
	.byte	0x3
	.word	0xa8c
	.long	0x214
	.byte	0x2d
	.uleb128 0x6
	.string	"reserved_0x2E"
	.byte	0x3
	.word	0xa8d
	.long	0x214
	.byte	0x2e
	.uleb128 0x6
	.string	"reserved_0x2F"
	.byte	0x3
	.word	0xa8e
	.long	0x214
	.byte	0x2f
	.uleb128 0x6
	.string	"reserved_0x30"
	.byte	0x3
	.word	0xa8f
	.long	0x214
	.byte	0x30
	.uleb128 0x6
	.string	"reserved_0x31"
	.byte	0x3
	.word	0xa90
	.long	0x214
	.byte	0x31
	.uleb128 0x6
	.string	"reserved_0x32"
	.byte	0x3
	.word	0xa91
	.long	0x214
	.byte	0x32
	.uleb128 0x6
	.string	"reserved_0x33"
	.byte	0x3
	.word	0xa92
	.long	0x214
	.byte	0x33
	.uleb128 0x6
	.string	"reserved_0x34"
	.byte	0x3
	.word	0xa93
	.long	0x214
	.byte	0x34
	.uleb128 0x6
	.string	"reserved_0x35"
	.byte	0x3
	.word	0xa94
	.long	0x214
	.byte	0x35
	.uleb128 0x6
	.string	"reserved_0x36"
	.byte	0x3
	.word	0xa95
	.long	0x214
	.byte	0x36
	.uleb128 0x6
	.string	"reserved_0x37"
	.byte	0x3
	.word	0xa96
	.long	0x214
	.byte	0x37
	.uleb128 0x6
	.string	"reserved_0x38"
	.byte	0x3
	.word	0xa97
	.long	0x214
	.byte	0x38
	.uleb128 0x6
	.string	"reserved_0x39"
	.byte	0x3
	.word	0xa98
	.long	0x214
	.byte	0x39
	.uleb128 0x6
	.string	"CAL0"
	.byte	0x3
	.word	0xa99
	.long	0x214
	.byte	0x3a
	.uleb128 0x6
	.string	"CAL1"
	.byte	0x3
	.word	0xa9a
	.long	0x214
	.byte	0x3b
	.byte	0
	.uleb128 0x7
	.string	"USB_t"
	.byte	0x3
	.word	0xa9b
	.long	0xc59
	.uleb128 0x8
	.string	"USB_EP_BUFSIZE_enum"
	.byte	0x1
	.long	0x190
	.byte	0x3
	.word	0xad6
	.long	0x123b
	.uleb128 0x9
	.string	"USB_EP_BUFSIZE_8_gc"
	.byte	0
	.uleb128 0x9
	.string	"USB_EP_BUFSIZE_16_gc"
	.byte	0x1
	.uleb128 0x9
	.string	"USB_EP_BUFSIZE_32_gc"
	.byte	0x2
	.uleb128 0x9
	.string	"USB_EP_BUFSIZE_64_gc"
	.byte	0x3
	.uleb128 0x9
	.string	"USB_EP_BUFSIZE_128_gc"
	.byte	0x4
	.uleb128 0x9
	.string	"USB_EP_BUFSIZE_256_gc"
	.byte	0x5
	.uleb128 0x9
	.string	"USB_EP_BUFSIZE_512_gc"
	.byte	0x6
	.uleb128 0x9
	.string	"USB_EP_BUFSIZE_1023_gc"
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.string	"USB_EP_TYPE_enum"
	.byte	0x1
	.long	0x190
	.byte	0x3
	.word	0xae3
	.long	0x12bf
	.uleb128 0x9
	.string	"USB_EP_TYPE_DISABLE_gc"
	.byte	0
	.uleb128 0x9
	.string	"USB_EP_TYPE_CONTROL_gc"
	.byte	0x40
	.uleb128 0x9
	.string	"USB_EP_TYPE_BULK_gc"
	.byte	0x80
	.uleb128 0x9
	.string	"USB_EP_TYPE_ISOCHRONOUS_gc"
	.byte	0xc0
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x4
	.byte	0xd8
	.long	0x1b8
	.uleb128 0x10
	.byte	0x1
	.long	0x190
	.byte	0x5
	.byte	0xa
	.long	0x1318
	.uleb128 0x9
	.string	"USB_SPEED_LOW"
	.byte	0
	.uleb128 0x9
	.string	"USB_SPEED_FULL"
	.byte	0x1
	.uleb128 0x9
	.string	"USB_SPEED_HIGH"
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.string	"USB_Speed"
	.byte	0x5
	.byte	0xe
	.long	0x12d9
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.byte	0x1d
	.long	0x1387
	.uleb128 0x12
	.string	"bmRequestType"
	.byte	0x5
	.byte	0x1e
	.long	0x181
	.byte	0
	.uleb128 0x12
	.string	"bRequest"
	.byte	0x5
	.byte	0x1f
	.long	0x181
	.byte	0x1
	.uleb128 0x12
	.string	"wValue"
	.byte	0x5
	.byte	0x20
	.long	0x1a8
	.byte	0x2
	.uleb128 0x12
	.string	"wIndex"
	.byte	0x5
	.byte	0x21
	.long	0x1a8
	.byte	0x4
	.uleb128 0x12
	.string	"wLength"
	.byte	0x5
	.byte	0x22
	.long	0x1a8
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"USB_SetupPacket"
	.byte	0x5
	.byte	0x23
	.long	0x1329
	.uleb128 0x10
	.byte	0x1
	.long	0x190
	.byte	0x5
	.byte	0x3a
	.long	0x14af
	.uleb128 0x9
	.string	"USB_DTYPE_Device"
	.byte	0x1
	.uleb128 0x9
	.string	"USB_DTYPE_Configuration"
	.byte	0x2
	.uleb128 0x9
	.string	"USB_DTYPE_String"
	.byte	0x3
	.uleb128 0x9
	.string	"USB_DTYPE_Interface"
	.byte	0x4
	.uleb128 0x9
	.string	"USB_DTYPE_Endpoint"
	.byte	0x5
	.uleb128 0x9
	.string	"USB_DTYPE_DeviceQualifier"
	.byte	0x6
	.uleb128 0x9
	.string	"USB_DTYPE_Other"
	.byte	0x7
	.uleb128 0x9
	.string	"USB_DTYPE_InterfacePower"
	.byte	0x8
	.uleb128 0x9
	.string	"USB_DTYPE_InterfaceAssociation"
	.byte	0xb
	.uleb128 0x9
	.string	"USB_DTYPE_CSInterface"
	.byte	0x24
	.uleb128 0x9
	.string	"USB_DTYPE_CSEndpoint"
	.byte	0x25
	.byte	0
	.uleb128 0x3
	.string	"usb_size"
	.byte	0x6
	.byte	0x11
	.long	0x12cb
	.uleb128 0x3
	.string	"usb_bank"
	.byte	0x6
	.byte	0x13
	.long	0x181
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.byte	0xe
	.long	0x14ef
	.uleb128 0x12
	.string	"out"
	.byte	0x7
	.byte	0xf
	.long	0xc01
	.byte	0
	.uleb128 0x12
	.string	"in"
	.byte	0x7
	.byte	0x10
	.long	0xc01
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.byte	0x10
	.byte	0x7
	.byte	0xd
	.long	0x1507
	.uleb128 0xe
	.long	0x14cf
	.uleb128 0x14
	.string	"ep"
	.byte	0x7
	.byte	0x12
	.long	0x1507
	.byte	0
	.uleb128 0x15
	.long	0xc01
	.long	0x1517
	.uleb128 0x16
	.long	0x12bf
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.string	"USB_EP_pair"
	.byte	0x10
	.byte	0x7
	.byte	0xc
	.long	0x1531
	.uleb128 0xe
	.long	0x14ef
	.byte	0
	.uleb128 0x3
	.string	"USB_EP_pair_t"
	.byte	0x7
	.byte	0x14
	.long	0x1517
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"long double"
	.uleb128 0x18
	.byte	0x1
	.string	"usb_ep_start_in"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x14bf
	.byte	0x3
	.long	0x15b5
	.uleb128 0x19
	.string	"ep"
	.byte	0x1
	.byte	0x51
	.long	0x181
	.uleb128 0x19
	.string	"data"
	.byte	0x1
	.byte	0x51
	.long	0x15b5
	.uleb128 0x19
	.string	"size"
	.byte	0x1
	.byte	0x51
	.long	0x14af
	.uleb128 0x19
	.string	"zlp"
	.byte	0x1
	.byte	0x51
	.long	0x15c1
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.byte	0x52
	.long	0x15ca
	.uleb128 0x1b
	.string	"e"
	.byte	0x1
	.byte	0x52
	.long	0x15d0
	.byte	0
	.uleb128 0x1c
	.byte	0x3
	.byte	0x7
	.long	0x15bc
	.uleb128 0x1d
	.long	0x181
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.string	"_Bool"
	.uleb128 0x1e
	.byte	0x2
	.long	0x1531
	.uleb128 0x1e
	.byte	0x2
	.long	0xc01
	.uleb128 0x1f
	.byte	0x1
	.string	"usb_reset"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"usb_init"
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1669
	.uleb128 0x21
	.long	.LBB4
	.long	.LBE4
	.long	0x1636
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.byte	0xc
	.long	0x1a8
	.byte	0x1a
	.uleb128 0x23
	.long	.LASF5
	.byte	0x1
	.byte	0xc
	.long	0x181
	.long	.LLST0
	.byte	0
	.uleb128 0x21
	.long	.LBB5
	.long	.LBE5
	.long	0x165f
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.byte	0xe
	.long	0x1a8
	.byte	0x1b
	.uleb128 0x23
	.long	.LASF5
	.byte	0x1
	.byte	0xe
	.long	0x181
	.long	.LLST1
	.byte	0
	.uleb128 0x24
	.long	.LVL5
	.long	0x15d6
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"usb_set_address"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x169c
	.uleb128 0x25
	.string	"addr"
	.byte	0x1
	.byte	0x28
	.long	0x181
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"usb_ep0_from_progmem"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.long	0x15b5
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1732
	.uleb128 0x27
	.string	"addr"
	.byte	0x1
	.byte	0x2c
	.long	0x15b5
	.long	.LLST2
	.uleb128 0x27
	.string	"size"
	.byte	0x1
	.byte	0x2c
	.long	0x1a8
	.long	.LLST3
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x2d
	.long	0x1732
	.uleb128 0x28
	.string	"remaining"
	.byte	0x1
	.byte	0x2e
	.long	0x1a8
	.long	.LLST4
	.uleb128 0x29
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x23
	.long	.LASF4
	.byte	0x1
	.byte	0x31
	.long	0x1a8
	.long	.LLST5
	.uleb128 0x23
	.long	.LASF5
	.byte	0x1
	.byte	0x31
	.long	0x181
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x2
	.long	0x181
	.uleb128 0x26
	.byte	0x1
	.string	"usb_ep_start_out"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.long	0x14bf
	.long	.LFB16
	.long	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x17ad
	.uleb128 0x27
	.string	"ep"
	.byte	0x1
	.byte	0x4a
	.long	0x181
	.long	.LLST7
	.uleb128 0x25
	.string	"data"
	.byte	0x1
	.byte	0x4a
	.long	0x1732
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.byte	0x4a
	.long	0x14af
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.byte	0x4b
	.long	0x15ca
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.byte	0x4b
	.long	0x15d0
	.long	.LLST8
	.byte	0
	.uleb128 0x2a
	.long	0x1555
	.long	.LFB17
	.long	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x17fd
	.uleb128 0x2b
	.long	0x1573
	.long	.LLST9
	.uleb128 0x2c
	.long	0x157d
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
	.uleb128 0x2c
	.long	0x1589
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2b
	.long	0x1595
	.long	.LLST10
	.uleb128 0x2d
	.long	0x15a0
	.uleb128 0x2e
	.long	0x15ab
	.long	.LLST11
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"usb_ep_ready"
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	0x15c1
	.long	.LFB18
	.long	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1849
	.uleb128 0x27
	.string	"ep"
	.byte	0x1
	.byte	0x59
	.long	0x181
	.long	.LLST12
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.byte	0x5a
	.long	0x15ca
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.byte	0x5a
	.long	0x15d0
	.long	.LLST13
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"usb_ep_pending"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	0x15c1
	.long	.LFB20
	.long	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1897
	.uleb128 0x27
	.string	"ep"
	.byte	0x1
	.byte	0x63
	.long	0x181
	.long	.LLST14
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.byte	0x64
	.long	0x15ca
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.byte	0x64
	.long	0x15d0
	.long	.LLST15
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"usb_ep_handled"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x18dd
	.uleb128 0x27
	.string	"ep"
	.byte	0x1
	.byte	0x68
	.long	0x181
	.long	.LLST16
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.byte	0x69
	.long	0x15ca
	.uleb128 0x1b
	.string	"e"
	.byte	0x1
	.byte	0x69
	.long	0x15d0
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"usb_ep_out_length"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x1a8
	.long	.LFB22
	.long	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x192e
	.uleb128 0x27
	.string	"ep"
	.byte	0x1
	.byte	0x6d
	.long	0x181
	.long	.LLST17
	.uleb128 0x1a
	.long	.LASF3
	.byte	0x1
	.byte	0x6e
	.long	0x15ca
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.byte	0x6e
	.long	0x15d0
	.long	.LLST18
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"usb_detach"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"usb_attach"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"usb_ep0_out"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"usb_ep0_in"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	.LFB26
	.long	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x19f6
	.uleb128 0x25
	.string	"size"
	.byte	0x1
	.byte	0x81
	.long	0x181
	.byte	0x1
	.byte	0x68
	.uleb128 0x2f
	.long	0x1555
	.long	.LBB7
	.long	.LBE7
	.byte	0x1
	.byte	0x82
	.uleb128 0x2b
	.long	0x1595
	.long	.LLST19
	.uleb128 0x2b
	.long	0x1589
	.long	.LLST20
	.uleb128 0x30
	.long	0x157d
	.uleb128 0x2b
	.long	0x1573
	.long	.LLST21
	.uleb128 0x29
	.long	.LBB8
	.long	.LBE8
	.uleb128 0x2d
	.long	0x15a0
	.uleb128 0x2e
	.long	0x15ab
	.long	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"usb_ep0_stall"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"usb_set_speed"
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	.LFB28
	.long	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1a46
	.uleb128 0x25
	.string	"speed"
	.byte	0x1
	.byte	0x8a
	.long	0x1318
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"usb_get_speed"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	0x1318
	.long	.LFB29
	.long	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"usb_configure_clock"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1ab6
	.uleb128 0x29
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x22
	.long	.LASF4
	.byte	0x1
	.byte	0x91
	.long	0x1a8
	.byte	0x1c
	.uleb128 0x23
	.long	.LASF5
	.byte	0x1
	.byte	0x91
	.long	0x181
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"__vector_125"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1aea
	.uleb128 0x24
	.long	.LVL58
	.long	0x15d6
	.uleb128 0x24
	.long	.LVL59
	.long	0x1c06
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"__vector_126"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x1b5a
	.uleb128 0x28
	.string	"status"
	.byte	0x1
	.byte	0xbf
	.long	0x181
	.long	.LLST24
	.uleb128 0x32
	.long	.LVL62
	.long	0x1c13
	.long	0x1b35
	.uleb128 0x33
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.long	.LVL63
	.long	0x1c26
	.uleb128 0x24
	.long	.LVL65
	.long	0x1c33
	.uleb128 0x24
	.long	.LVL66
	.long	0x1c40
	.uleb128 0x24
	.long	.LVL67
	.long	0x1c4d
	.byte	0
	.uleb128 0x34
	.string	"USB_dtype"
	.byte	0x5
	.byte	0x46
	.long	0x139e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USB_dtype
	.uleb128 0x35
	.string	"usb_setup"
	.byte	0x6
	.byte	0xb
	.long	0x1387
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	0x181
	.long	0x1b95
	.uleb128 0x16
	.long	0x12bf
	.byte	0x3f
	.byte	0
	.uleb128 0x35
	.string	"ep0_buf_in"
	.byte	0x6
	.byte	0xc
	.long	0x1b85
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"ep0_buf_out"
	.byte	0x6
	.byte	0xd
	.long	0x1b85
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.long	0x1531
	.long	0x1bc9
	.uleb128 0x36
	.byte	0
	.uleb128 0x35
	.string	"usb_xmega_endpoints"
	.byte	0x7
	.byte	0x16
	.long	0x1bbe
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"usb_num_endpoints"
	.byte	0x7
	.byte	0x17
	.long	0x1c01
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.long	0x181
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF6
	.long	.LASF6
	.byte	0x6
	.byte	0x16
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.string	"memcpy"
	.string	"memcpy"
	.byte	0x8
	.byte	0xbf
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF7
	.long	.LASF7
	.byte	0x6
	.byte	0x7c
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF8
	.long	.LASF8
	.byte	0x6
	.byte	0x7d
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF9
	.long	.LASF9
	.byte	0x6
	.byte	0x7e
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF10
	.long	.LASF10
	.byte	0x6
	.byte	0x1c
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x17
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x17
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL3
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5-1
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL9
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
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL9
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL9
	.word	0x3
	.byte	0x84
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL12
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LVL13
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL13
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST7:
	.long	.LVL14
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LFE16
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
	.long	.LVL20
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	.LVL26
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL25
	.word	0x1
	.byte	0x60
	.long	.LVL25
	.long	.LVL27
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	.LVL27
	.long	.LVL28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	.LVL28
	.long	.LFE17
	.word	0x2
	.byte	0x91
	.sleb128 -4
	.long	0
	.long	0
.LLST11:
	.long	.LVL24
	.long	.LFE17
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL29
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	.LVL34
	.long	.LFE18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL33
	.long	.LFE18
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST14:
	.long	.LVL35
	.long	.LVL40
	.word	0x1
	.byte	0x68
	.long	.LVL40
	.long	.LFE20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL39
	.long	.LFE20
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL41
	.long	.LVL43
	.word	0x1
	.byte	0x68
	.long	.LVL43
	.long	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL44
	.long	.LVL49
	.word	0x1
	.byte	0x68
	.long	.LVL49
	.long	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL48
	.long	.LFE22
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST19:
	.long	.LVL51
	.long	.LVL53
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL51
	.long	.LVL53
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST21:
	.long	.LVL51
	.long	.LVL53
	.word	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL52
	.long	.LFE26
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST23:
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x6e
	.long	0
	.long	0
.LLST24:
	.long	.LVL60
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	.LVL64
	.long	.LVL65-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,info
	.long	0xb4
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	0
	.long	0
	.section	.debug_ranges,info
.Ldebug_ranges0:
	.long	.LFB10
	.long	.LFE10
	.long	.LFB9
	.long	.LFE9
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	0
	.long	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF8:
	.string	"usb_handle_control_out_complete"
.LASF3:
	.string	"pair"
.LASF6:
	.string	"usb_cb_reset"
.LASF4:
	.string	"__addr16"
.LASF9:
	.string	"usb_handle_control_in_complete"
.LASF0:
	.string	"reserved_0x07"
.LASF5:
	.string	"__result"
.LASF7:
	.string	"usb_handle_setup"
.LASF10:
	.string	"usb_cb_completion"
.LASF1:
	.string	"reserved_0x0E"
.LASF2:
	.string	"STATUS"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
.global __do_clear_bss
