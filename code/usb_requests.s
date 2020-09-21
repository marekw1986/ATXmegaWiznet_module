	.file	"usb_requests.c"
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
	.section	.text.usb_ep0_in_multi,code
.global	usb_ep0_in_multi
	.type	usb_ep0_in_multi, @function
usb_ep0_in_multi:
.LFB2:
	.file 1 "usb/usb_requests.c"
	.loc 1 11 0
	.cfi_startproc
	push r16
	.cfi_def_cfa_offset 4
	.cfi_offset 16, -3
	push r28
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	.loc 1 12 0
	lds r28,usb_ep0_in_size
	lds r29,usb_ep0_in_size+1
	cpi r28,65
	cpc r29,__zero_reg__
	brlo .L2
	ldi r28,lo8(64)
	ldi r29,0
.L2:
.LVL0:
	.loc 1 18 0
	lds r20,usb_ep0_in_ptr
	lds r21,usb_ep0_in_ptr+1
	lds r22,usb_ep0_in_ptr+2
	movw r18,r28
	ldi r24,lo8(ep0_buf_in)
	ldi r25,hi8(ep0_buf_in)
	call memcpy
.LVL1:
	.loc 1 19 0
	ldi r20,lo8(ep0_buf_in)
	ldi r21,hi8(ep0_buf_in)
	ldi r22,lo8(-128)
	ldi r16,0
	movw r18,r28
	ldi r24,lo8(-128)
	call usb_ep_start_in
.LVL2:
	.loc 1 21 0
	sbiw r28,0
	brne .L3
	.loc 1 22 0
	call usb_ep0_out
.LVL3:
.L3:
	.loc 1 25 0
	lds r24,usb_ep0_in_size
	lds r25,usb_ep0_in_size+1
	sub r24,r28
	sbc r25,r29
	sts usb_ep0_in_size,r24
	sts usb_ep0_in_size+1,r25
	.loc 1 26 0
	lds r24,usb_ep0_in_ptr
	lds r25,usb_ep0_in_ptr+1
	lds r26,usb_ep0_in_ptr+2
	add r24,r28
	adc r25,r29
	adc r26,__zero_reg__
	sbrc r29,7
	dec r26
	sts usb_ep0_in_ptr,r24
	sts usb_ep0_in_ptr+1,r25
	sts usb_ep0_in_ptr+2,r26
/* epilogue start */
	.loc 1 27 0
	pop r29
	pop r28
.LVL4:
	pop r16
	ret
	.cfi_endproc
.LFE2:
	.size	usb_ep0_in_multi, .-usb_ep0_in_multi
	.section	.text.usb_handle_setup,code
.global	usb_handle_setup
	.type	usb_handle_setup, @function
usb_handle_setup:
.LFB3:
	.loc 1 29 0
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
	push r16
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r28
	.cfi_def_cfa_offset 8
	.cfi_offset 28, -7
	push r29
	.cfi_def_cfa_offset 9
	.cfi_offset 29, -8
	rcall .
	.cfi_def_cfa_offset 12
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	.loc 1 30 0
	lds r24,usb_setup
	andi r24,lo8(96)
	breq .+2
	rjmp .L5
	.loc 1 31 0
	lds r24,usb_setup+1
	ldi r25,0
	cpi r24,12
	cpc r25,__zero_reg__
	brlo .+2
	rjmp .L6
	movw r30,r24
	clr r24
	subi r30,pm_lo8(-(.L8))
	sbci r31,pm_hi8(-(.L8))
	sbci r24,pm_hh8(-(.L8))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.usb_handle_setup,progmem
	.p2align	1
.L8:
	.section	.progmem.gcc_sw_table.usb_handle_setup,progmem
	.word gs(.L7)
	.word gs(.L9)
	.word gs(.L6)
	.word gs(.L9)
	.word gs(.L6)
	.word gs(.L10)
	.word gs(.L11)
	.word gs(.L6)
	.word gs(.L12)
	.word gs(.L13)
	.word gs(.L6)
	.word gs(.L14)
	.section	.text.usb_handle_setup,code
.L7:
	.loc 1 33 0
	ldi r30,lo8(ep0_buf_in)
	ldi r31,hi8(ep0_buf_in)
	st Z,__zero_reg__
	.loc 1 34 0
	std Z+1,__zero_reg__
	.loc 1 35 0
	ldi r24,lo8(2)
	call usb_ep0_in
.LVL5:
	.loc 1 36 0
	call usb_ep0_out
.LVL6:
	rjmp .L4
.L9:
	.loc 1 40 0
	ldi r24,0
	call usb_ep0_in
.LVL7:
	.loc 1 41 0
	call usb_ep0_out
.LVL8:
	rjmp .L4
.L10:
	.loc 1 44 0
	ldi r24,0
	call usb_ep0_in
.LVL9:
	.loc 1 45 0
	call usb_ep0_out
.LVL10:
	rjmp .L4
.L11:
.LBB2:
	.loc 1 48 0
	ldi r30,lo8(usb_setup)
	ldi r31,hi8(usb_setup)
	ldd r22,Z+2
	ldd r24,Z+3
.LVL11:
	.loc 1 50 0
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	.loc 1 51 0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call usb_cb_get_descriptor
.LVL12:
	.loc 1 53 0
	sbiw r24,0
	breq .L16
	.loc 1 53 0 is_stmt 0 discriminator 1
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	breq .L16
	.loc 1 54 0 is_stmt 1
	lds r18,usb_setup+6
	lds r19,usb_setup+6+1
	cp r18,r24
	cpc r19,r25
	brsh .L17
	movw r24,r18
.LVL13:
.L17:
	.loc 1 58 0
	ldi r18,lo8(ep0_buf_in)
	ldi r19,hi8(ep0_buf_in)
	ldi r20,lo8(-128)
	cp r12,r18
	cpc r13,r19
	cpc r14,r20
	brne .L18
	.loc 1 59 0
	sts usb_ep0_in_size,__zero_reg__
	sts usb_ep0_in_size+1,__zero_reg__
	.loc 1 60 0
	ldi r16,lo8(1)
	movw r18,r24
	mov r22,r14
	movw r20,r12
	ldi r24,lo8(-128)
.LVL14:
	call usb_ep_start_in
.LVL15:
	rjmp .L4
.LVL16:
.L18:
	.loc 1 62 0
	sts usb_ep0_in_size,r24
	sts usb_ep0_in_size+1,r25
	.loc 1 63 0
	sts usb_ep0_in_ptr,r12
	sts usb_ep0_in_ptr+1,r13
	sts usb_ep0_in_ptr+2,r14
	.loc 1 64 0
	call usb_ep0_in_multi
.LVL17:
	rjmp .L4
.LVL18:
.L16:
	.loc 1 69 0
	call usb_ep0_stall
.LVL19:
	rjmp .L4
.L12:
.LBE2:
	.loc 1 73 0
	lds r24,usb_configuration
	sts ep0_buf_in,r24
	.loc 1 74 0
	ldi r24,lo8(1)
	call usb_ep0_in
.LVL20:
	.loc 1 75 0
	call usb_ep0_out
.LVL21:
	rjmp .L4
.L13:
	.loc 1 78 0
	lds r24,usb_setup+2
	call usb_cb_set_configuration
.LVL22:
	tst r24
	breq .L20
	.loc 1 79 0
	ldi r24,0
	call usb_ep0_in
.LVL23:
	.loc 1 80 0
	lds r24,usb_setup+2
	sts usb_configuration,r24
	.loc 1 81 0
	call usb_ep0_out
.LVL24:
	rjmp .L4
.L20:
	.loc 1 83 0
	call usb_ep0_stall
.LVL25:
	rjmp .L4
.L14:
	.loc 1 87 0
	ldi r30,lo8(usb_setup)
	ldi r31,hi8(usb_setup)
	ldd r22,Z+2
	ldd r23,Z+3
	ldd r24,Z+4
	ldd r25,Z+5
	call usb_cb_set_interface
.LVL26:
	tst r24
	breq .L21
	.loc 1 88 0
	ldi r24,0
	call usb_ep0_in
.LVL27:
	.loc 1 89 0
	call usb_ep0_out
.LVL28:
	rjmp .L4
.L21:
	.loc 1 91 0
	call usb_ep0_stall
.LVL29:
	rjmp .L4
.L6:
	.loc 1 95 0
	call usb_ep0_stall
.LVL30:
	rjmp .L4
.L5:
	.loc 1 99 0
	call usb_cb_control_setup
.LVL31:
.L4:
/* epilogue start */
	.loc 1 100 0
	adiw r28,3
	out __SP_L__,r28
	out __SP_H__,r29
	pop r29
	pop r28
	pop r16
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE3:
	.size	usb_handle_setup, .-usb_handle_setup
	.section	.text.usb_handle_control_out_complete,code
.global	usb_handle_control_out_complete
	.type	usb_handle_control_out_complete, @function
usb_handle_control_out_complete:
.LFB4:
	.loc 1 102 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 103 0
	lds r24,usb_setup
	andi r24,lo8(96)
	breq .L22
	.loc 1 106 0
	call usb_cb_control_out_completion
.LVL32:
.L22:
	ret
	.cfi_endproc
.LFE4:
	.size	usb_handle_control_out_complete, .-usb_handle_control_out_complete
	.section	.text.usb_handle_control_in_complete,code
.global	usb_handle_control_in_complete
	.type	usb_handle_control_in_complete, @function
usb_handle_control_in_complete:
.LFB5:
	.loc 1 110 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 111 0
	lds r24,usb_setup
	andi r24,lo8(96)
	brne .L25
	.loc 1 112 0
	lds r24,usb_setup+1
	cpi r24,lo8(5)
	breq .L27
	cpi r24,lo8(6)
	breq .L28
	ret
.L27:
	.loc 1 114 0
	lds r24,usb_setup+2
	andi r24,lo8(127)
	call usb_set_address
.LVL33:
	.loc 1 115 0
	ret
.L28:
	.loc 1 117 0
	call usb_ep0_in_multi
.LVL34:
	.loc 1 118 0
	ret
.L25:
	.loc 1 121 0
	call usb_cb_control_in_completion
.LVL35:
	ret
	.cfi_endproc
.LFE5:
	.size	usb_handle_control_in_complete, .-usb_handle_control_in_complete
	.section	.text.usb_handle_msft_compatible,code
.global	usb_handle_msft_compatible
	.type	usb_handle_msft_compatible, @function
usb_handle_msft_compatible:
.LFB6:
	.loc 1 125 0
	.cfi_startproc
.LVL36:
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
	mov r20,r22
	mov r27,r23
	mov r26,r24
	.loc 1 126 0
	lds r24,usb_setup+4
	lds r25,usb_setup+4+1
	sbiw r24,4
	brne .L30
.LBB3:
	.loc 1 127 0
	lds r28,usb_setup+6
	lds r29,usb_setup+6+1
.LVL37:
	.loc 1 128 0
	mov r30,r22
	mov r31,r23
	mov r21,r26
	call __xload_4
.LVL38:
	movw r16,r28
	ldi r18,0
	ldi r19,0
	cp r22,r16
	cpc r23,r17
	cpc r24,r18
	cpc r25,r19
	brsh .L31
	.loc 1 129 0
	movw r28,r22
.LVL39:
.L31:
	cpi r28,65
	cpc r29,__zero_reg__
	brlo .L32
	ldi r28,lo8(64)
	ldi r29,0
.LVL40:
.L32:
	.loc 1 134 0
	movw r18,r28
	mov r21,r27
	mov r22,r26
	ldi r24,lo8(ep0_buf_in)
	ldi r25,hi8(ep0_buf_in)
	call memcpy
.LVL41:
	.loc 1 135 0
	ldi r20,lo8(ep0_buf_in)
	ldi r21,hi8(ep0_buf_in)
	ldi r22,lo8(-128)
	ldi r16,0
	movw r18,r28
	ldi r24,lo8(-128)
	call usb_ep_start_in
.LVL42:
	.loc 1 136 0
	call usb_ep0_out
.LVL43:
	rjmp .L29
.LVL44:
.L30:
.LBE3:
	.loc 1 138 0
	call usb_ep0_stall
.LVL45:
.L29:
/* epilogue start */
	.loc 1 140 0
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE6:
	.size	usb_handle_msft_compatible, .-usb_handle_msft_compatible
	.section	.text.usb_string_to_descriptor,code
.global	usb_string_to_descriptor
	.type	usb_string_to_descriptor, @function
usb_string_to_descriptor:
.LFB7:
	.loc 1 142 0
	.cfi_startproc
.LVL46:
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
	movw r28,r24
.LVL47:
	.loc 1 144 0
	movw r22,r24
	ldi r24,lo8(-128)
.LVL48:
	call strlen
.LVL49:
	cpi r24,32
	cpc r25,__zero_reg__
	brlo .L35
	ldi r24,lo8(31)
	ldi r25,0
.LVL50:
.L35:
	.loc 1 147 0
	ldi r30,lo8(ep0_buf_in)
	ldi r31,hi8(ep0_buf_in)
	movw r18,r24
	subi r18,-1
	sbci r19,-1
	lsl r18
	st Z,r18
	.loc 1 148 0
	ldi r18,lo8(3)
	std Z+1,r18
.LVL51:
.LBB4:
	.loc 1 149 0
	sbiw r24,0
	breq .L36
	movw r30,r28
	ldi r26,lo8(ep0_buf_in+2)
	ldi r27,hi8(ep0_buf_in+2)
	add r24,r28
	adc r25,r29
.LVL52:
.L37:
	.loc 1 150 0 discriminator 3
	ld r18,Z+
.LVL53:
	ldi r19,0
	st X+,r18
	st X+,r19
.LVL54:
	.loc 1 149 0 discriminator 3
	cp r30,r24
	cpc r31,r25
	brne .L37
.LVL55:
.L36:
.LBE4:
	.loc 1 153 0
	ldi r24,lo8(ep0_buf_in)
	ldi r25,hi8(ep0_buf_in)
/* epilogue start */
	pop r29
	pop r28
.LVL56:
	ret
	.cfi_endproc
.LFE7:
	.size	usb_string_to_descriptor, .-usb_string_to_descriptor
	.comm	usb_ep0_in_ptr,3,1
	.comm	usb_ep0_in_size,2,1
	.comm	usb_configuration,1,1
	.comm	ep0_buf_out,64,4
	.comm	ep0_buf_in,64,4
	.comm	usb_setup,8,1
	.comm	USB_dtype,1,1
	.section	.text,code
.Letext0:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 3 "usb/usb_standard.h"
	.file 4 "usb/usb.h"
	.file 5 "/opt/microchip/xc8/v2.10/avr/avr/include/string.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0xc8b
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"usb/usb_requests.c"
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
	.long	0x193
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
	.long	0x1bb
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
	.long	0x1e7
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x1d
	.long	0x285
	.uleb128 0x5
	.string	"bmRequestType"
	.byte	0x3
	.byte	0x1e
	.long	0x184
	.byte	0
	.uleb128 0x5
	.string	"bRequest"
	.byte	0x3
	.byte	0x1f
	.long	0x184
	.byte	0x1
	.uleb128 0x5
	.string	"wValue"
	.byte	0x3
	.byte	0x20
	.long	0x1ab
	.byte	0x2
	.uleb128 0x5
	.string	"wIndex"
	.byte	0x3
	.byte	0x21
	.long	0x1ab
	.byte	0x4
	.uleb128 0x5
	.string	"wLength"
	.byte	0x3
	.byte	0x22
	.long	0x1ab
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"USB_SetupPacket"
	.byte	0x3
	.byte	0x23
	.long	0x227
	.uleb128 0x6
	.byte	0x1
	.long	0x193
	.byte	0x3
	.byte	0x26
	.long	0x3a7
	.uleb128 0x7
	.string	"USB_REQ_GetStatus"
	.byte	0
	.uleb128 0x7
	.string	"USB_REQ_ClearFeature"
	.byte	0x1
	.uleb128 0x7
	.string	"USB_REQ_SetFeature"
	.byte	0x3
	.uleb128 0x7
	.string	"USB_REQ_SetAddress"
	.byte	0x5
	.uleb128 0x7
	.string	"USB_REQ_GetDescriptor"
	.byte	0x6
	.uleb128 0x7
	.string	"USB_REQ_SetDescriptor"
	.byte	0x7
	.uleb128 0x7
	.string	"USB_REQ_GetConfiguration"
	.byte	0x8
	.uleb128 0x7
	.string	"USB_REQ_SetConfiguration"
	.byte	0x9
	.uleb128 0x7
	.string	"USB_REQ_GetInterface"
	.byte	0xa
	.uleb128 0x7
	.string	"USB_REQ_SetInterface"
	.byte	0xb
	.uleb128 0x7
	.string	"USB_REQ_SynchFrame"
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	0x193
	.byte	0x3
	.byte	0x3a
	.long	0x4b8
	.uleb128 0x7
	.string	"USB_DTYPE_Device"
	.byte	0x1
	.uleb128 0x7
	.string	"USB_DTYPE_Configuration"
	.byte	0x2
	.uleb128 0x7
	.string	"USB_DTYPE_String"
	.byte	0x3
	.uleb128 0x7
	.string	"USB_DTYPE_Interface"
	.byte	0x4
	.uleb128 0x7
	.string	"USB_DTYPE_Endpoint"
	.byte	0x5
	.uleb128 0x7
	.string	"USB_DTYPE_DeviceQualifier"
	.byte	0x6
	.uleb128 0x7
	.string	"USB_DTYPE_Other"
	.byte	0x7
	.uleb128 0x7
	.string	"USB_DTYPE_InterfacePower"
	.byte	0x8
	.uleb128 0x7
	.string	"USB_DTYPE_InterfaceAssociation"
	.byte	0xb
	.uleb128 0x7
	.string	"USB_DTYPE_CSInterface"
	.byte	0x24
	.uleb128 0x7
	.string	"USB_DTYPE_CSEndpoint"
	.byte	0x25
	.byte	0
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.byte	0xb9
	.long	0x4f9
	.uleb128 0x5
	.string	"bLength"
	.byte	0x3
	.byte	0xba
	.long	0x184
	.byte	0
	.uleb128 0x5
	.string	"bDescriptorType"
	.byte	0x3
	.byte	0xbb
	.long	0x184
	.byte	0x1
	.uleb128 0x5
	.string	"bString"
	.byte	0x3
	.byte	0xbc
	.long	0x4f9
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x1bb
	.long	0x508
	.uleb128 0x9
	.long	0x508
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"USB_StringDescriptor"
	.byte	0x3
	.byte	0xbd
	.long	0x4b8
	.uleb128 0x4
	.byte	0x18
	.byte	0x3
	.byte	0xc0
	.long	0x5a8
	.uleb128 0x5
	.string	"bFirstInterfaceNumber"
	.byte	0x3
	.byte	0xc1
	.long	0x184
	.byte	0
	.uleb128 0x5
	.string	"reserved1"
	.byte	0x3
	.byte	0xc2
	.long	0x184
	.byte	0x1
	.uleb128 0x5
	.string	"compatibleID"
	.byte	0x3
	.byte	0xc3
	.long	0x5a8
	.byte	0x2
	.uleb128 0x5
	.string	"subCompatibleID"
	.byte	0x3
	.byte	0xc4
	.long	0x5a8
	.byte	0xa
	.uleb128 0x5
	.string	"reserved2"
	.byte	0x3
	.byte	0xc5
	.long	0x5b8
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.long	0x184
	.long	0x5b8
	.uleb128 0xa
	.long	0x508
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x184
	.long	0x5c8
	.uleb128 0xa
	.long	0x508
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.string	"USB_MicrosoftCompatibleDescriptor_Interface"
	.byte	0x3
	.byte	0xc6
	.long	0x530
	.uleb128 0x4
	.byte	0x10
	.byte	0x3
	.byte	0xc8
	.long	0x66a
	.uleb128 0x5
	.string	"dwLength"
	.byte	0x3
	.byte	0xc9
	.long	0x1d7
	.byte	0
	.uleb128 0x5
	.string	"bcdVersion"
	.byte	0x3
	.byte	0xca
	.long	0x1ab
	.byte	0x4
	.uleb128 0x5
	.string	"wIndex"
	.byte	0x3
	.byte	0xcb
	.long	0x1ab
	.byte	0x6
	.uleb128 0x5
	.string	"bCount"
	.byte	0x3
	.byte	0xcc
	.long	0x184
	.byte	0x8
	.uleb128 0x5
	.string	"reserved"
	.byte	0x3
	.byte	0xcd
	.long	0x66a
	.byte	0x9
	.uleb128 0x5
	.string	"interfaces"
	.byte	0x3
	.byte	0xce
	.long	0x67a
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x184
	.long	0x67a
	.uleb128 0xa
	.long	0x508
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.long	0x5c8
	.long	0x689
	.uleb128 0x9
	.long	0x508
	.byte	0
	.uleb128 0x3
	.string	"USB_MicrosoftCompatibleDescriptor"
	.byte	0x3
	.byte	0xcf
	.long	0x5fb
	.uleb128 0xb
	.byte	0x1
	.string	"usb_ep0_in_multi"
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x73e
	.uleb128 0xc
	.string	"tsize"
	.byte	0x1
	.byte	0xc
	.long	0x1ab
	.long	.LLST0
	.uleb128 0xd
	.long	.LVL1
	.long	0xbd8
	.long	0x70f
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ep0_buf_in
	.uleb128 0xe
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LVL2
	.long	0xbeb
	.long	0x734
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.uleb128 0xe
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL3
	.long	0xbf8
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"usb_handle_setup"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x8e9
	.uleb128 0x10
	.long	.LBB2
	.long	.LBE2
	.long	0x80a
	.uleb128 0xc
	.string	"type"
	.byte	0x1
	.byte	0x30
	.long	0x184
	.long	.LLST1
	.uleb128 0xc
	.string	"index"
	.byte	0x1
	.byte	0x31
	.long	0x184
	.long	.LLST2
	.uleb128 0x11
	.string	"descriptor"
	.byte	0x1
	.byte	0x32
	.long	0x8e9
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xc
	.string	"size"
	.byte	0x1
	.byte	0x33
	.long	0x1ab
	.long	.LLST3
	.uleb128 0xd
	.long	.LVL12
	.long	0xc05
	.long	0x7cf
	.uleb128 0xe
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.long	.LVL15
	.long	0xbeb
	.long	0x7f7
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.uleb128 0xe
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
	.byte	0x7c
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL17
	.long	0x6b2
	.uleb128 0xf
	.long	.LVL19
	.long	0xc12
	.byte	0
	.uleb128 0xd
	.long	.LVL5
	.long	0xc1f
	.long	0x81d
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0xf
	.long	.LVL6
	.long	0xbf8
	.uleb128 0xd
	.long	.LVL7
	.long	0xc1f
	.long	0x839
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LVL8
	.long	0xbf8
	.uleb128 0xd
	.long	.LVL9
	.long	0xc1f
	.long	0x855
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LVL10
	.long	0xbf8
	.uleb128 0xd
	.long	.LVL20
	.long	0xc1f
	.long	0x871
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.long	.LVL21
	.long	0xbf8
	.uleb128 0xf
	.long	.LVL22
	.long	0xc2c
	.uleb128 0xd
	.long	.LVL23
	.long	0xc1f
	.long	0x896
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LVL24
	.long	0xbf8
	.uleb128 0xf
	.long	.LVL25
	.long	0xc12
	.uleb128 0xf
	.long	.LVL26
	.long	0xc39
	.uleb128 0xd
	.long	.LVL27
	.long	0xc1f
	.long	0x8c4
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LVL28
	.long	0xbf8
	.uleb128 0xf
	.long	.LVL29
	.long	0xc12
	.uleb128 0xf
	.long	.LVL30
	.long	0xc12
	.uleb128 0xf
	.long	.LVL31
	.long	0xc46
	.byte	0
	.uleb128 0x12
	.byte	0x3
	.byte	0x7
	.long	0x8f0
	.uleb128 0x13
	.long	0x184
	.uleb128 0xb
	.byte	0x1
	.string	"usb_handle_control_out_complete"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x933
	.uleb128 0xf
	.long	.LVL32
	.long	0xc53
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"usb_handle_control_in_complete"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x982
	.uleb128 0xf
	.long	.LVL33
	.long	0xc60
	.uleb128 0xf
	.long	.LVL34
	.long	0x6b2
	.uleb128 0xf
	.long	.LVL35
	.long	0xc6d
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"usb_handle_msft_compatible"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xa48
	.uleb128 0x14
	.string	"msft_compatible"
	.byte	0x1
	.byte	0x7d
	.long	0xa48
	.long	.LLST4
	.uleb128 0x10
	.long	.LBB3
	.long	.LBE3
	.long	0xa3e
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x7f
	.long	0x1ab
	.long	.LLST5
	.uleb128 0xd
	.long	.LVL41
	.long	0xbd8
	.long	0xa0f
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ep0_buf_in
	.uleb128 0xe
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LVL42
	.long	0xbeb
	.long	0xa34
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.uleb128 0xe
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.long	.LVL43
	.long	0xbf8
	.byte	0
	.uleb128 0xf
	.long	.LVL45
	.long	0xc12
	.byte	0
	.uleb128 0x12
	.byte	0x3
	.byte	0x7
	.long	0xa4f
	.uleb128 0x13
	.long	0x689
	.uleb128 0x15
	.byte	0x1
	.string	"usb_string_to_descriptor"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.long	0xaea
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xaea
	.uleb128 0x14
	.string	"str"
	.byte	0x1
	.byte	0x8e
	.long	0xaec
	.long	.LLST6
	.uleb128 0x11
	.string	"desc"
	.byte	0x1
	.byte	0x8f
	.long	0xafa
	.byte	0x6
	.byte	0x3
	.long	ep0_buf_in
	.byte	0x9f
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x90
	.long	0x1ab
	.long	.LLST7
	.uleb128 0x16
	.string	"maxlen"
	.byte	0x1
	.byte	0x91
	.long	0xb00
	.byte	0x1f
	.uleb128 0x10
	.long	.LBB4
	.long	.LBE4
	.long	0xae0
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x95
	.long	0x1a4
	.long	.LLST8
	.byte	0
	.uleb128 0xf
	.long	.LVL49
	.long	0xc7a
	.byte	0
	.uleb128 0x17
	.byte	0x2
	.uleb128 0x18
	.byte	0x2
	.long	0xaf2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"char"
	.uleb128 0x18
	.byte	0x2
	.long	0x514
	.uleb128 0x13
	.long	0x1ab
	.uleb128 0x19
	.string	"USB_dtype"
	.byte	0x3
	.byte	0x46
	.long	0x3a7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USB_dtype
	.uleb128 0x19
	.string	"usb_setup"
	.byte	0x1
	.byte	0x3
	.long	0x285
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	usb_setup
	.uleb128 0x8
	.long	0x184
	.long	0xb45
	.uleb128 0xa
	.long	0x508
	.byte	0x3f
	.byte	0
	.uleb128 0x19
	.string	"ep0_buf_in"
	.byte	0x1
	.byte	0x4
	.long	0xb35
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ep0_buf_in
	.uleb128 0x19
	.string	"ep0_buf_out"
	.byte	0x1
	.byte	0x5
	.long	0xb35
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ep0_buf_out
	.uleb128 0x19
	.string	"usb_configuration"
	.byte	0x1
	.byte	0x6
	.long	0xb98
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	usb_configuration
	.uleb128 0x1a
	.long	0x184
	.uleb128 0x19
	.string	"usb_ep0_in_size"
	.byte	0x1
	.byte	0x8
	.long	0x1ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	usb_ep0_in_size
	.uleb128 0x19
	.string	"usb_ep0_in_ptr"
	.byte	0x1
	.byte	0x9
	.long	0x8e9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	usb_ep0_in_ptr
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.string	"memcpy"
	.string	"memcpy"
	.byte	0x5
	.byte	0xbf
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF0
	.long	.LASF0
	.byte	0x4
	.byte	0x5f
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF1
	.long	.LASF1
	.byte	0x4
	.byte	0x68
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF2
	.long	.LASF2
	.byte	0x4
	.byte	0x27
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF3
	.long	.LASF3
	.byte	0x4
	.byte	0x6b
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF4
	.long	.LASF4
	.byte	0x4
	.byte	0x65
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF5
	.long	.LASF5
	.byte	0x4
	.byte	0x21
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF6
	.long	.LASF6
	.byte	0x4
	.byte	0x24
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF7
	.long	.LASF7
	.byte	0x4
	.byte	0x19
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF8
	.long	.LASF8
	.byte	0x4
	.byte	0x1e
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF9
	.long	.LASF9
	.byte	0x4
	.byte	0x36
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.long	.LASF10
	.long	.LASF10
	.byte	0x4
	.byte	0x1d
	.uleb128 0x1d
	.byte	0x1
	.byte	0x1
	.string	"strlen"
	.string	"strlen"
	.byte	0x5
	.word	0x18f
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
	.uleb128 0xb
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.long	.LVL4
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL11
	.long	.LVL12-1
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST2:
	.long	.LVL11
	.long	.LVL12-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST3:
	.long	.LVL12
	.long	.LVL14
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL15-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LVL19-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL36
	.long	.LVL38
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
	.long	.LVL38
	.long	.LVL44
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45-1
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
	.long	.LVL45-1
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL37
	.long	.LVL44
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL46
	.long	.LVL48
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LVL49-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49-1
	.long	.LVL56
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL49
	.long	.LVL52
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL51
	.long	.LVL52
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.word	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL53
	.long	.LVL54
	.word	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0x20
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.word	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,info
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,info
.Ldebug_ranges0:
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF1:
	.string	"usb_ep0_out"
.LASF3:
	.string	"usb_ep0_stall"
.LASF9:
	.string	"usb_set_address"
.LASF10:
	.string	"usb_cb_control_in_completion"
.LASF0:
	.string	"usb_ep_start_in"
.LASF8:
	.string	"usb_cb_control_out_completion"
.LASF2:
	.string	"usb_cb_get_descriptor"
.LASF6:
	.string	"usb_cb_set_interface"
.LASF5:
	.string	"usb_cb_set_configuration"
.LASF4:
	.string	"usb_ep0_in"
.LASF7:
	.string	"usb_cb_control_setup"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
.global __do_clear_bss
