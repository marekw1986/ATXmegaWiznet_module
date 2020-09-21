	.file	"wdt_driver.c"
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
	.section	.text.WDT_Enable,code
.global	WDT_Enable
	.type	WDT_Enable, @function
WDT_Enable:
.LFB5:
	.file 1 "wdt_driver.c"
	.loc 1 79 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 80 0
	ldi r30,lo8(-128)
	ldi r31,0
	ld r24,Z
	.loc 1 80 0
	ori r24,lo8(3)
.LVL0:
	.loc 1 81 0
	ldi r25,lo8(-40)
	out __CCP__,r25
	.loc 1 82 0
	st Z,r24
.LVL1:
.L2:
	.loc 1 85 0 discriminator 1
	ldd r24,Z+2
	.loc 1 85 0 discriminator 1
	sbrc r24,0
	rjmp .L2
/* epilogue start */
	.loc 1 88 0
	ret
	.cfi_endproc
.LFE5:
	.size	WDT_Enable, .-WDT_Enable
	.section	.text.WDT_EnableAndSetTimeout,code
.global	WDT_EnableAndSetTimeout
	.type	WDT_EnableAndSetTimeout, @function
WDT_EnableAndSetTimeout:
.LFB6:
	.loc 1 106 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 107 0
	ori r24,lo8(3)
.LVL3:
	.loc 1 108 0
	ldi r25,lo8(-40)
	out __CCP__,r25
	.loc 1 109 0
	sts 128,r24
	.loc 1 112 0
	ldi r30,lo8(-128)
	ldi r31,0
.LVL4:
.L5:
	.loc 1 112 0 is_stmt 0 discriminator 1
	ldd r24,Z+2
	.loc 1 112 0 is_stmt 1 discriminator 1
	sbrc r24,0
	rjmp .L5
/* epilogue start */
	.loc 1 115 0
	ret
	.cfi_endproc
.LFE6:
	.size	WDT_EnableAndSetTimeout, .-WDT_EnableAndSetTimeout
	.section	.text.WDT_Disable,code
.global	WDT_Disable
	.type	WDT_Disable, @function
WDT_Disable:
.LFB7:
	.loc 1 131 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 132 0
	ldi r30,lo8(-128)
	ldi r31,0
	ld r24,Z
	.loc 1 132 0
	andi r24,lo8(-4)
	ori r24,lo8(1)
.LVL5:
	.loc 1 133 0
	ldi r25,lo8(-40)
	out __CCP__,r25
	.loc 1 134 0
	st Z,r24
	ret
	.cfi_endproc
.LFE7:
	.size	WDT_Disable, .-WDT_Disable
	.section	.text.WDT_IsWindowModeEnabled,code
.global	WDT_IsWindowModeEnabled
	.type	WDT_IsWindowModeEnabled, @function
WDT_IsWindowModeEnabled:
.LFB8:
	.loc 1 144 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 145 0
	lds r24,129
.LVL6:
	.loc 1 147 0
	andi r24,lo8(2)
.LVL7:
	ret
	.cfi_endproc
.LFE8:
	.size	WDT_IsWindowModeEnabled, .-WDT_IsWindowModeEnabled
	.section	.text.WDT_EnableWindowMode,code
.global	WDT_EnableWindowMode
	.type	WDT_EnableWindowMode, @function
WDT_EnableWindowMode:
.LFB9:
	.loc 1 165 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 166 0
	ldi r30,lo8(-128)
	ldi r31,0
	ld r24,Z
	.loc 1 166 0
	andi r24,lo8(2)
.LVL8:
	.loc 1 167 0
	ldd r25,Z+1
	.loc 1 167 0
	ori r25,lo8(3)
.LVL9:
	.loc 1 168 0
	ldi r18,lo8(-40)
	out __CCP__,r18
	.loc 1 169 0
	std Z+1,r25
.LVL10:
.L10:
	.loc 1 172 0 discriminator 1
	ldd r25,Z+2
	.loc 1 172 0 discriminator 1
	sbrc r25,0
	rjmp .L10
/* epilogue start */
	.loc 1 177 0
	ret
	.cfi_endproc
.LFE9:
	.size	WDT_EnableWindowMode, .-WDT_EnableWindowMode
	.section	.text.WDT_EnableWindowModeAndSetTimeout,code
.global	WDT_EnableWindowModeAndSetTimeout
	.type	WDT_EnableWindowModeAndSetTimeout, @function
WDT_EnableWindowModeAndSetTimeout:
.LFB10:
	.loc 1 199 0
	.cfi_startproc
.LVL11:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 200 0
	ldi r30,lo8(-128)
	ldi r31,0
	ld r25,Z
	.loc 1 200 0
	andi r25,lo8(2)
.LVL12:
	.loc 1 201 0
	ori r24,lo8(3)
.LVL13:
	.loc 1 202 0
	ldi r18,lo8(-40)
	out __CCP__,r18
	.loc 1 203 0
	std Z+1,r24
.LVL14:
.L13:
	.loc 1 206 0 discriminator 1
	ldd r24,Z+2
	.loc 1 206 0 discriminator 1
	sbrc r24,0
	rjmp .L13
	.loc 1 211 0
	mov r24,r25
	ret
	.cfi_endproc
.LFE10:
	.size	WDT_EnableWindowModeAndSetTimeout, .-WDT_EnableWindowModeAndSetTimeout
	.section	.text.WDT_DisableWindowMode,code
.global	WDT_DisableWindowMode
	.type	WDT_DisableWindowMode, @function
WDT_DisableWindowMode:
.LFB11:
	.loc 1 226 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 227 0
	ldi r30,lo8(-128)
	ldi r31,0
	ldd r24,Z+1
	.loc 1 227 0
	andi r24,lo8(-4)
	ori r24,lo8(1)
.LVL15:
	.loc 1 228 0
	ldi r25,lo8(-40)
	out __CCP__,r25
	.loc 1 229 0
	std Z+1,r24
	ret
	.cfi_endproc
.LFE11:
	.size	WDT_DisableWindowMode, .-WDT_DisableWindowMode
	.section	.text,code
.Letext0:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 3 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0x697
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"wdt_driver.c"
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
	.long	0x18d
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
	.byte	0x1
	.byte	0x8
	.string	"char"
	.uleb128 0x3
	.string	"register8_t"
	.byte	0x3
	.byte	0x54
	.long	0x21c
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x5
	.string	"CCP_enum"
	.byte	0x1
	.long	0x18d
	.byte	0x3
	.word	0x24f
	.long	0x254
	.uleb128 0x6
	.string	"CCP_SPM_gc"
	.byte	0x9d
	.uleb128 0x6
	.string	"CCP_IOREG_gc"
	.byte	0xd8
	.byte	0
	.uleb128 0x7
	.string	"WDT_struct"
	.byte	0x3
	.byte	0x3
	.word	0xb0b
	.long	0x298
	.uleb128 0x8
	.string	"CTRL"
	.byte	0x3
	.word	0xb0d
	.long	0x209
	.byte	0
	.uleb128 0x8
	.string	"WINCTRL"
	.byte	0x3
	.word	0xb0e
	.long	0x209
	.byte	0x1
	.uleb128 0x8
	.string	"STATUS"
	.byte	0x3
	.word	0xb0f
	.long	0x209
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"WDT_t"
	.byte	0x3
	.word	0xb10
	.long	0x254
	.uleb128 0x5
	.string	"WDT_PER_enum"
	.byte	0x1
	.long	0x18d
	.byte	0x3
	.word	0xb13
	.long	0x394
	.uleb128 0x6
	.string	"WDT_PER_8CLK_gc"
	.byte	0
	.uleb128 0x6
	.string	"WDT_PER_16CLK_gc"
	.byte	0x4
	.uleb128 0x6
	.string	"WDT_PER_32CLK_gc"
	.byte	0x8
	.uleb128 0x6
	.string	"WDT_PER_64CLK_gc"
	.byte	0xc
	.uleb128 0x6
	.string	"WDT_PER_128CLK_gc"
	.byte	0x10
	.uleb128 0x6
	.string	"WDT_PER_256CLK_gc"
	.byte	0x14
	.uleb128 0x6
	.string	"WDT_PER_512CLK_gc"
	.byte	0x18
	.uleb128 0x6
	.string	"WDT_PER_1KCLK_gc"
	.byte	0x1c
	.uleb128 0x6
	.string	"WDT_PER_2KCLK_gc"
	.byte	0x20
	.uleb128 0x6
	.string	"WDT_PER_4KCLK_gc"
	.byte	0x24
	.uleb128 0x6
	.string	"WDT_PER_8KCLK_gc"
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.string	"WDT_PER_t"
	.byte	0x3
	.word	0xb20
	.long	0x2a6
	.uleb128 0x5
	.string	"WDT_WPER_enum"
	.byte	0x1
	.long	0x18d
	.byte	0x3
	.word	0xb23
	.long	0x4a0
	.uleb128 0x6
	.string	"WDT_WPER_8CLK_gc"
	.byte	0
	.uleb128 0x6
	.string	"WDT_WPER_16CLK_gc"
	.byte	0x4
	.uleb128 0x6
	.string	"WDT_WPER_32CLK_gc"
	.byte	0x8
	.uleb128 0x6
	.string	"WDT_WPER_64CLK_gc"
	.byte	0xc
	.uleb128 0x6
	.string	"WDT_WPER_128CLK_gc"
	.byte	0x10
	.uleb128 0x6
	.string	"WDT_WPER_256CLK_gc"
	.byte	0x14
	.uleb128 0x6
	.string	"WDT_WPER_512CLK_gc"
	.byte	0x18
	.uleb128 0x6
	.string	"WDT_WPER_1KCLK_gc"
	.byte	0x1c
	.uleb128 0x6
	.string	"WDT_WPER_2KCLK_gc"
	.byte	0x20
	.uleb128 0x6
	.string	"WDT_WPER_4KCLK_gc"
	.byte	0x24
	.uleb128 0x6
	.string	"WDT_WPER_8KCLK_gc"
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.string	"WDT_WPER_t"
	.byte	0x3
	.word	0xb30
	.long	0x3a6
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.byte	0x1
	.string	"WDT_Enable"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4ee
	.uleb128 0xb
	.long	.LASF0
	.byte	0x1
	.byte	0x50
	.long	0x17e
	.long	.LLST0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"WDT_EnableAndSetTimeout"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x53c
	.uleb128 0xc
	.string	"period"
	.byte	0x1
	.byte	0x69
	.long	0x394
	.long	.LLST1
	.uleb128 0xb
	.long	.LASF0
	.byte	0x1
	.byte	0x6b
	.long	0x17e
	.long	.LLST2
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"WDT_Disable"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x56a
	.uleb128 0xd
	.long	.LASF0
	.byte	0x1
	.byte	0x84
	.long	0x17e
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"WDT_IsWindowModeEnabled"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.long	0x17e
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5b3
	.uleb128 0xf
	.string	"wdwm_enabled"
	.byte	0x1
	.byte	0x91
	.long	0x17e
	.long	.LLST3
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"WDT_EnableWindowMode"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	0x17e
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x5fd
	.uleb128 0xd
	.long	.LASF1
	.byte	0x1
	.byte	0xa6
	.long	0x17e
	.byte	0x1
	.byte	0x68
	.uleb128 0xb
	.long	.LASF0
	.byte	0x1
	.byte	0xa7
	.long	0x17e
	.long	.LLST4
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"WDT_EnableWindowModeAndSetTimeout"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.long	0x17e
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x666
	.uleb128 0xc
	.string	"period"
	.byte	0x1
	.byte	0xc6
	.long	0x4a0
	.long	.LLST5
	.uleb128 0xd
	.long	.LASF1
	.byte	0x1
	.byte	0xc8
	.long	0x17e
	.byte	0x1
	.byte	0x69
	.uleb128 0xb
	.long	.LASF0
	.byte	0x1
	.byte	0xc9
	.long	0x17e
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"WDT_DisableWindowMode"
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0xd
	.long	.LASF0
	.byte	0x1
	.byte	0xe3
	.long	0x17e
	.byte	0x1
	.byte	0x68
	.byte	0
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.long	.LFE5
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL4
	.long	.LFE6
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x9f
	.long	.LVL7
	.long	.LFE8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x69
	.long	.LVL10
	.long	.LFE9
	.word	0x2
	.byte	0x8e
	.sleb128 1
	.long	0
	.long	0
.LLST5:
	.long	.LVL11
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	.LVL14
	.long	.LFE10
	.word	0x2
	.byte	0x8e
	.sleb128 1
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
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	0
	.long	0
	.section	.debug_ranges,info
.Ldebug_ranges0:
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
	.long	.LFB11
	.long	.LFE11
	.long	0
	.long	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF0:
	.string	"temp"
.LASF1:
	.string	"wd_enable"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
