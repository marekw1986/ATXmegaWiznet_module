	.file	"descriptors.c"
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
	.section	.text.usb_cb_get_descriptor,code
.global	usb_cb_get_descriptor
	.type	usb_cb_get_descriptor, @function
usb_cb_get_descriptor:
.LFB3:
	.file 1 "usb/descriptors.c"
	.loc 1 92 0
	.cfi_startproc
.LVL0:
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
	movw r16,r20
.LVL1:
	.loc 1 96 0
	cpi r24,lo8(2)
	breq .L3
	cpi r24,lo8(3)
	breq .L4
	cpi r24,lo8(1)
	brne .L12
	.loc 1 99 0
	ldi r28,lo8(18)
	ldi r29,0
	.loc 1 98 0
	ldi r22,lo8(device_descriptor)
	ldi r23,hi8(device_descriptor)
	ldi r24,hlo8(device_descriptor)
.LVL2:
	rjmp .L2
.LVL3:
.L3:
	.loc 1 103 0
	ldi r28,lo8(32)
	ldi r29,0
	.loc 1 102 0
	ldi r22,lo8(configuration_descriptor)
	ldi r23,hi8(configuration_descriptor)
	ldi r24,hlo8(configuration_descriptor)
.LVL4:
	.loc 1 104 0
	rjmp .L2
.LVL5:
.L4:
	.loc 1 106 0
	cpi r22,lo8(1)
	breq .L7
	brlo .L8
	cpi r22,lo8(2)
	breq .L9
	rjmp .L13
.L8:
	.loc 1 108 0
	ldi r22,lo8(language_string)
	ldi r23,hi8(language_string)
	ldi r24,hlo8(language_string)
.LVL6:
	rjmp .L6
.LVL7:
.L7:
	.loc 1 111 0
	ldi r22,lo8(manufacturer_string)
	ldi r23,hi8(manufacturer_string)
	ldi r24,hlo8(manufacturer_string)
.LVL8:
	.loc 1 112 0
	rjmp .L6
.LVL9:
.L9:
	.loc 1 114 0
	ldi r22,lo8(product_string)
	ldi r23,hi8(product_string)
	ldi r24,hlo8(product_string)
.LVL10:
	.loc 1 115 0
	rjmp .L6
.LVL11:
.L13:
	.loc 1 93 0
	ldi r22,0
	ldi r23,0
	ldi r24,0
.LVL12:
.L6:
.LBB2:
	.loc 1 117 0
	movw r30,r22
/* #APP */
 ;  117 "usb/descriptors.c" 1
	lpm r28, Z
	
 ;  0 "" 2
.LVL13:
/* #NOAPP */
.LBE2:
	.loc 1 117 0
	ldi r29,0
.LVL14:
	.loc 1 118 0
	rjmp .L2
.LVL15:
.L12:
	.loc 1 94 0
	ldi r28,0
	ldi r29,0
	.loc 1 93 0
	ldi r22,0
	ldi r23,0
	ldi r24,0
.LVL16:
.L2:
	.loc 1 121 0
	movw r20,r28
.LVL17:
	call usb_ep0_from_progmem
.LVL18:
	movw r30,r16
	st Z,r22
	std Z+1,r23
	std Z+2,r24
	.loc 1 123 0
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
.LVL19:
	pop r17
	pop r16
.LVL20:
	ret
	.cfi_endproc
.LFE3:
	.size	usb_cb_get_descriptor, .-usb_cb_get_descriptor
	.section	.text.usb_cb_reset,code
.global	usb_cb_reset
	.type	usb_cb_reset, @function
usb_cb_reset:
.LFB4:
	.loc 1 125 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE4:
	.size	usb_cb_reset, .-usb_cb_reset
	.section	.text.usb_cb_set_configuration,code
.global	usb_cb_set_configuration
	.type	usb_cb_set_configuration, @function
usb_cb_set_configuration:
.LFB5:
	.loc 1 129 0
	.cfi_startproc
.LVL21:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r25,lo8(1)
	cpi r24,lo8(2)
	brlo .L16
	ldi r25,0
.L16:
	.loc 1 135 0
	mov r24,r25
.LVL22:
	ret
	.cfi_endproc
.LFE5:
	.size	usb_cb_set_configuration, .-usb_cb_set_configuration
	.section	.text.usb_cb_completion,code
.global	usb_cb_completion
	.type	usb_cb_completion, @function
usb_cb_completion:
.LFB6:
	.loc 1 137 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE6:
	.size	usb_cb_completion, .-usb_cb_completion
	.section	.text.usb_cb_control_setup,code
.global	usb_cb_control_setup
	.type	usb_cb_control_setup, @function
usb_cb_control_setup:
.LFB7:
	.loc 1 141 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE7:
	.size	usb_cb_control_setup, .-usb_cb_control_setup
	.section	.text.usb_cb_control_in_completion,code
.global	usb_cb_control_in_completion
	.type	usb_cb_control_in_completion, @function
usb_cb_control_in_completion:
.LFB8:
	.loc 1 145 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE8:
	.size	usb_cb_control_in_completion, .-usb_cb_control_in_completion
	.section	.text.usb_cb_control_out_completion,code
.global	usb_cb_control_out_completion
	.type	usb_cb_control_out_completion, @function
usb_cb_control_out_completion:
.LFB9:
	.loc 1 149 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE9:
	.size	usb_cb_control_out_completion, .-usb_cb_control_out_completion
	.section	.text.usb_cb_set_interface,code
.global	usb_cb_set_interface
	.type	usb_cb_set_interface, @function
usb_cb_set_interface:
.LFB10:
	.loc 1 153 0
	.cfi_startproc
.LVL23:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 155 0
	ldi r24,0
.LVL24:
	ret
	.cfi_endproc
.LFE10:
	.size	usb_cb_set_interface, .-usb_cb_set_interface
.global	product_string
	.section	.progmemx.data.product_string,progmemx
	.type	product_string, @object
	.size	product_string, 32
product_string:
	.byte	30
	.byte	3
	.string	"E"
	.string	"x"
	.string	"a"
	.string	"m"
	.string	"p"
	.string	"l"
	.string	"e"
	.string	" "
	.string	"D"
	.string	"e"
	.string	"v"
	.string	"i"
	.string	"c"
	.string	"e"
	.string	""
	.string	""
.global	manufacturer_string
	.section	.progmemx.data.manufacturer_string,progmemx
	.type	manufacturer_string, @object
	.size	manufacturer_string, 30
manufacturer_string:
	.byte	28
	.byte	3
	.string	"N"
	.string	"o"
	.string	"n"
	.string	"o"
	.string	"l"
	.string	"i"
	.string	"t"
	.string	"h"
	.string	" "
	.string	"L"
	.string	"a"
	.string	"b"
	.string	"s"
	.string	""
	.string	""
.global	language_string
	.section	.progmemx.data.language_string,progmemx
	.type	language_string, @object
	.size	language_string, 4
language_string:
	.byte	4
	.byte	3
	.word	1033
.global	configuration_descriptor
	.section	.progmemx.data.configuration_descriptor,progmemx
	.type	configuration_descriptor, @object
	.size	configuration_descriptor, 32
configuration_descriptor:
	.byte	9
	.byte	2
	.word	32
	.byte	1
	.byte	1
	.byte	0
	.byte	-128
	.byte	-6
	.byte	9
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	5
	.byte	-127
	.byte	2
	.word	64
	.byte	0
	.byte	7
	.byte	5
	.byte	2
	.byte	2
	.word	64
	.byte	0
.global	device_descriptor
	.section	.progmemx.data.device_descriptor,progmemx
	.type	device_descriptor, @object
	.size	device_descriptor, 18
device_descriptor:
	.byte	18
	.byte	1
	.word	512
	.byte	-1
	.byte	0
	.byte	0
	.byte	64
	.word	-26215
	.word	-1
	.word	257
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.comm	USB_dtype,1,1
	.section	.text,code
.Letext0:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 3 "usb/usb_standard.h"
	.file 4 "usb/usb_xmega.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0xba5
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"usb/descriptors.c"
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
	.long	0x192
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
	.long	0x1ba
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.long	0x192
	.byte	0x3
	.byte	0x3a
	.long	0x333
	.uleb128 0x5
	.string	"USB_DTYPE_Device"
	.byte	0x1
	.uleb128 0x5
	.string	"USB_DTYPE_Configuration"
	.byte	0x2
	.uleb128 0x5
	.string	"USB_DTYPE_String"
	.byte	0x3
	.uleb128 0x5
	.string	"USB_DTYPE_Interface"
	.byte	0x4
	.uleb128 0x5
	.string	"USB_DTYPE_Endpoint"
	.byte	0x5
	.uleb128 0x5
	.string	"USB_DTYPE_DeviceQualifier"
	.byte	0x6
	.uleb128 0x5
	.string	"USB_DTYPE_Other"
	.byte	0x7
	.uleb128 0x5
	.string	"USB_DTYPE_InterfacePower"
	.byte	0x8
	.uleb128 0x5
	.string	"USB_DTYPE_InterfaceAssociation"
	.byte	0xb
	.uleb128 0x5
	.string	"USB_DTYPE_CSInterface"
	.byte	0x24
	.uleb128 0x5
	.string	"USB_DTYPE_CSEndpoint"
	.byte	0x25
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.long	0x192
	.byte	0x3
	.byte	0x48
	.long	0x448
	.uleb128 0x5
	.string	"USB_CSCP_NoDeviceClass"
	.byte	0
	.uleb128 0x5
	.string	"USB_CSCP_NoDeviceSubclass"
	.byte	0
	.uleb128 0x5
	.string	"USB_CSCP_NoDeviceProtocol"
	.byte	0
	.uleb128 0x5
	.string	"USB_CSCP_VendorSpecificClass"
	.byte	0xff
	.uleb128 0x5
	.string	"USB_CSCP_VendorSpecificSubclass"
	.byte	0xff
	.uleb128 0x5
	.string	"USB_CSCP_VendorSpecificProtocol"
	.byte	0xff
	.uleb128 0x5
	.string	"USB_CSCP_IADDeviceClass"
	.byte	0xef
	.uleb128 0x5
	.string	"USB_CSCP_IADDeviceSubclass"
	.byte	0x2
	.uleb128 0x5
	.string	"USB_CSCP_IADDeviceProtocol"
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x12
	.byte	0x3
	.byte	0x73
	.long	0x562
	.uleb128 0x7
	.long	.LASF0
	.byte	0x3
	.byte	0x74
	.long	0x183
	.byte	0
	.uleb128 0x7
	.long	.LASF1
	.byte	0x3
	.byte	0x75
	.long	0x183
	.byte	0x1
	.uleb128 0x8
	.string	"bcdUSB"
	.byte	0x3
	.byte	0x76
	.long	0x1aa
	.byte	0x2
	.uleb128 0x8
	.string	"bDeviceClass"
	.byte	0x3
	.byte	0x77
	.long	0x183
	.byte	0x4
	.uleb128 0x8
	.string	"bDeviceSubClass"
	.byte	0x3
	.byte	0x78
	.long	0x183
	.byte	0x5
	.uleb128 0x8
	.string	"bDeviceProtocol"
	.byte	0x3
	.byte	0x79
	.long	0x183
	.byte	0x6
	.uleb128 0x8
	.string	"bMaxPacketSize0"
	.byte	0x3
	.byte	0x7a
	.long	0x183
	.byte	0x7
	.uleb128 0x8
	.string	"idVendor"
	.byte	0x3
	.byte	0x7b
	.long	0x1aa
	.byte	0x8
	.uleb128 0x8
	.string	"idProduct"
	.byte	0x3
	.byte	0x7c
	.long	0x1aa
	.byte	0xa
	.uleb128 0x8
	.string	"bcdDevice"
	.byte	0x3
	.byte	0x7d
	.long	0x1aa
	.byte	0xc
	.uleb128 0x8
	.string	"iManufacturer"
	.byte	0x3
	.byte	0x7e
	.long	0x183
	.byte	0xe
	.uleb128 0x8
	.string	"iProduct"
	.byte	0x3
	.byte	0x7f
	.long	0x183
	.byte	0xf
	.uleb128 0x8
	.string	"iSerialNumber"
	.byte	0x3
	.byte	0x80
	.long	0x183
	.byte	0x10
	.uleb128 0x8
	.string	"bNumConfigurations"
	.byte	0x3
	.byte	0x81
	.long	0x183
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.string	"USB_DeviceDescriptor"
	.byte	0x3
	.byte	0x82
	.long	0x448
	.uleb128 0x6
	.byte	0x9
	.byte	0x3
	.byte	0x8e
	.long	0x61c
	.uleb128 0x7
	.long	.LASF0
	.byte	0x3
	.byte	0x8f
	.long	0x183
	.byte	0
	.uleb128 0x7
	.long	.LASF1
	.byte	0x3
	.byte	0x90
	.long	0x183
	.byte	0x1
	.uleb128 0x8
	.string	"wTotalLength"
	.byte	0x3
	.byte	0x91
	.long	0x1aa
	.byte	0x2
	.uleb128 0x8
	.string	"bNumInterfaces"
	.byte	0x3
	.byte	0x92
	.long	0x183
	.byte	0x4
	.uleb128 0x8
	.string	"bConfigurationValue"
	.byte	0x3
	.byte	0x93
	.long	0x183
	.byte	0x5
	.uleb128 0x8
	.string	"iConfiguration"
	.byte	0x3
	.byte	0x94
	.long	0x183
	.byte	0x6
	.uleb128 0x7
	.long	.LASF2
	.byte	0x3
	.byte	0x95
	.long	0x183
	.byte	0x7
	.uleb128 0x8
	.string	"bMaxPower"
	.byte	0x3
	.byte	0x96
	.long	0x183
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"USB_ConfigurationDescriptor"
	.byte	0x3
	.byte	0x97
	.long	0x57e
	.uleb128 0x6
	.byte	0x9
	.byte	0x3
	.byte	0x99
	.long	0x70a
	.uleb128 0x7
	.long	.LASF0
	.byte	0x3
	.byte	0x9a
	.long	0x183
	.byte	0
	.uleb128 0x7
	.long	.LASF1
	.byte	0x3
	.byte	0x9b
	.long	0x183
	.byte	0x1
	.uleb128 0x8
	.string	"bInterfaceNumber"
	.byte	0x3
	.byte	0x9c
	.long	0x183
	.byte	0x2
	.uleb128 0x8
	.string	"bAlternateSetting"
	.byte	0x3
	.byte	0x9d
	.long	0x183
	.byte	0x3
	.uleb128 0x8
	.string	"bNumEndpoints"
	.byte	0x3
	.byte	0x9e
	.long	0x183
	.byte	0x4
	.uleb128 0x8
	.string	"bInterfaceClass"
	.byte	0x3
	.byte	0x9f
	.long	0x183
	.byte	0x5
	.uleb128 0x8
	.string	"bInterfaceSubClass"
	.byte	0x3
	.byte	0xa0
	.long	0x183
	.byte	0x6
	.uleb128 0x8
	.string	"bInterfaceProtocol"
	.byte	0x3
	.byte	0xa1
	.long	0x183
	.byte	0x7
	.uleb128 0x8
	.string	"iInterface"
	.byte	0x3
	.byte	0xa2
	.long	0x183
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"USB_InterfaceDescriptor"
	.byte	0x3
	.byte	0xa3
	.long	0x63f
	.uleb128 0x6
	.byte	0x7
	.byte	0x3
	.byte	0xb0
	.long	0x798
	.uleb128 0x7
	.long	.LASF0
	.byte	0x3
	.byte	0xb1
	.long	0x183
	.byte	0
	.uleb128 0x7
	.long	.LASF1
	.byte	0x3
	.byte	0xb2
	.long	0x183
	.byte	0x1
	.uleb128 0x8
	.string	"bEndpointAddress"
	.byte	0x3
	.byte	0xb3
	.long	0x183
	.byte	0x2
	.uleb128 0x7
	.long	.LASF2
	.byte	0x3
	.byte	0xb4
	.long	0x183
	.byte	0x3
	.uleb128 0x8
	.string	"wMaxPacketSize"
	.byte	0x3
	.byte	0xb5
	.long	0x1aa
	.byte	0x4
	.uleb128 0x8
	.string	"bInterval"
	.byte	0x3
	.byte	0xb6
	.long	0x183
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"USB_EndpointDescriptor"
	.byte	0x3
	.byte	0xb7
	.long	0x729
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.byte	0xb9
	.long	0x7e7
	.uleb128 0x7
	.long	.LASF0
	.byte	0x3
	.byte	0xba
	.long	0x183
	.byte	0
	.uleb128 0x7
	.long	.LASF1
	.byte	0x3
	.byte	0xbb
	.long	0x183
	.byte	0x1
	.uleb128 0x8
	.string	"bString"
	.byte	0x3
	.byte	0xbc
	.long	0x7e7
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0x1ba
	.long	0x7f6
	.uleb128 0xa
	.long	0x216
	.byte	0
	.uleb128 0x3
	.string	"USB_StringDescriptor"
	.byte	0x3
	.byte	0xbd
	.long	0x7b6
	.uleb128 0xb
	.long	.LASF3
	.byte	0x20
	.byte	0x1
	.byte	0x19
	.long	0x870
	.uleb128 0x8
	.string	"Config"
	.byte	0x1
	.byte	0x1a
	.long	0x61c
	.byte	0
	.uleb128 0x8
	.string	"Interface0"
	.byte	0x1
	.byte	0x1b
	.long	0x70a
	.byte	0x9
	.uleb128 0x8
	.string	"DataInEndpoint"
	.byte	0x1
	.byte	0x1c
	.long	0x798
	.byte	0x12
	.uleb128 0x8
	.string	"DataOutEndpoint"
	.byte	0x1
	.byte	0x1d
	.long	0x798
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1
	.byte	0x1f
	.long	0x812
	.uleb128 0xd
	.byte	0x1
	.string	"usb_cb_get_descriptor"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.long	0x1aa
	.long	.LFB3
	.long	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x944
	.uleb128 0xe
	.string	"type"
	.byte	0x1
	.byte	0x5c
	.long	0x183
	.long	.LLST0
	.uleb128 0xe
	.string	"index"
	.byte	0x1
	.byte	0x5c
	.long	0x183
	.long	.LLST1
	.uleb128 0xe
	.string	"ptr"
	.byte	0x1
	.byte	0x5c
	.long	0x944
	.long	.LLST2
	.uleb128 0xf
	.string	"address"
	.byte	0x1
	.byte	0x5d
	.long	0x956
	.long	.LLST3
	.uleb128 0xf
	.string	"size"
	.byte	0x1
	.byte	0x5e
	.long	0x1aa
	.long	.LLST4
	.uleb128 0x10
	.long	.LBB2
	.long	.LBE2
	.long	0x92e
	.uleb128 0x11
	.string	"__addr16"
	.byte	0x1
	.byte	0x75
	.long	0x1aa
	.uleb128 0xf
	.string	"__result"
	.byte	0x1
	.byte	0x75
	.long	0x183
	.long	.LLST5
	.byte	0
	.uleb128 0x12
	.long	.LVL18
	.long	0xb9b
	.uleb128 0x13
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x2
	.long	0x94a
	.uleb128 0x15
	.byte	0x3
	.byte	0x7
	.long	0x951
	.uleb128 0x16
	.long	0x183
	.uleb128 0x15
	.byte	0x3
	.byte	0x7
	.long	0x95d
	.uleb128 0x17
	.uleb128 0x18
	.byte	0x1
	.string	"usb_cb_reset"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"usb_cb_set_configuration"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.long	0x9bf
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x9bf
	.uleb128 0xe
	.string	"config"
	.byte	0x1
	.byte	0x81
	.long	0x183
	.long	.LLST6
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.string	"_Bool"
	.uleb128 0x18
	.byte	0x1
	.string	"usb_cb_completion"
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"usb_cb_control_setup"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"usb_cb_control_in_completion"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"usb_cb_control_out_completion"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"usb_cb_set_interface"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	0x9bf
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xac6
	.uleb128 0xe
	.string	"interface"
	.byte	0x1
	.byte	0x99
	.long	0x1aa
	.long	.LLST7
	.uleb128 0x19
	.string	"altsetting"
	.byte	0x1
	.byte	0x99
	.long	0x1aa
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x1a
	.string	"USB_dtype"
	.byte	0x3
	.byte	0x46
	.long	0x222
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USB_dtype
	.uleb128 0x1a
	.string	"device_descriptor"
	.byte	0x1
	.byte	0x4
	.long	0xafe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	device_descriptor
	.uleb128 0x16
	.long	0x562
	.uleb128 0x1a
	.string	"configuration_descriptor"
	.byte	0x1
	.byte	0x21
	.long	0xb2a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	configuration_descriptor
	.uleb128 0x16
	.long	0x870
	.uleb128 0x1a
	.string	"language_string"
	.byte	0x1
	.byte	0x49
	.long	0xb4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	language_string
	.uleb128 0x16
	.long	0x7f6
	.uleb128 0x1a
	.string	"manufacturer_string"
	.byte	0x1
	.byte	0x4f
	.long	0xb74
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	manufacturer_string
	.uleb128 0x16
	.long	0x7f6
	.uleb128 0x1a
	.string	"product_string"
	.byte	0x1
	.byte	0x55
	.long	0xb96
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	product_string
	.uleb128 0x16
	.long	0x7f6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.long	.LASF4
	.long	.LASF4
	.byte	0x4
	.byte	0x9
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
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
	.long	.LVL0
	.long	.LVL18-1
	.word	0x1
	.byte	0x68
	.long	.LVL18-1
	.long	.LFE3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x66
	.long	.LVL2
	.long	.LVL3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x66
	.long	.LVL4
	.long	.LVL5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x66
	.long	.LVL6
	.long	.LVL7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x66
	.long	.LVL8
	.long	.LVL9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x66
	.long	.LVL10
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x66
	.long	.LVL12
	.long	.LVL15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x66
	.long	.LVL16
	.long	.LFE3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL17
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL20
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LFE3
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL12
	.long	.LVL15
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
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL18-1
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
.LLST4:
	.long	.LVL1
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LVL5
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL5
	.long	.LVL14
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL19
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19
	.long	.LFE3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL15
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST6:
	.long	.LVL21
	.long	.LVL22
	.word	0x1
	.byte	0x68
	.long	.LVL22
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,info
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	0
	.long	0
	.section	.debug_ranges,info
.Ldebug_ranges0:
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
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	0
	.long	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF2:
	.string	"bmAttributes"
.LASF1:
	.string	"bDescriptorType"
.LASF3:
	.string	"ConfigDesc"
.LASF4:
	.string	"usb_ep0_from_progmem"
.LASF0:
	.string	"bLength"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
.global __do_clear_bss
