	.file	"w5100.c"
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
	.section	.text.delay_w51_1,code
.global	delay_w51_1
	.type	delay_w51_1, @function
delay_w51_1:
.LFB6:
	.file 1 "w5100/w5100.c"
	.loc 1 64 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE6:
	.size	delay_w51_1, .-delay_w51_1
	.section	.text.select_w5100,code
.global	select_w5100
	.type	select_w5100, @function
select_w5100:
.LFB7:
	.loc 1 71 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 72 0
	ldi r24,lo8(16)
	sts 1606,r24
	ret
	.cfi_endproc
.LFE7:
	.size	select_w5100, .-select_w5100
	.section	.text.deselect_w5100,code
.global	deselect_w5100
	.type	deselect_w5100, @function
deselect_w5100:
.LFB8:
	.loc 1 76 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 77 0
	ldi r24,lo8(16)
	sts 1605,r24
	ret
	.cfi_endproc
.LFE8:
	.size	deselect_w5100, .-deselect_w5100
	.section	.text.reset_w5100,code
.global	reset_w5100
	.type	reset_w5100, @function
reset_w5100:
.LFB9:
	.loc 1 81 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 82 0
	ldi r24,lo8(8)
	sts 1606,r24
.LVL0:
.LBB22:
.LBB23:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/util/delay.h"
	.loc 2 187 0
	ldi r30,lo8(-25537)
	ldi r31,hi8(-25537)
1:	sbiw r30,1
	brne 1b
	rjmp .
	nop
.LVL1:
.LBE23:
.LBE22:
	.loc 1 84 0
	sts 1605,r24
.LVL2:
.LBB24:
.LBB25:
	.loc 2 187 0
	ldi r31,lo8(63999)
	ldi r18,hi8(63999)
	ldi r24,hlo8(63999)
1:	subi r31,1
	sbci r18,0
	sbci r24,0
	brne 1b
	rjmp .
	nop
.LVL3:
	ret
.LBE25:
.LBE24:
	.cfi_endproc
.LFE9:
	.size	reset_w5100, .-reset_w5100
	.section	.text.W51_write,code
.global	W51_write
	.type	W51_write, @function
W51_write:
.LFB10:
	.loc 1 91 0
	.cfi_startproc
.LVL4:
	push r28
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB32:
.LBB33:
	.loc 1 72 0
	ldi r18,lo8(16)
	sts 1606,r18
.LVL5:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 2 276 0
	ldi r18,lo8(10)
1:	dec r18
	brne 1b
	rjmp .
.LVL6:
.LBE35:
.LBE34:
	.loc 1 99 0
	ldi r18,lo8(-16)
	std Y+1,r18
	.loc 1 100 0
	ldd r18,Y+1
	sts 2243,r18
	.loc 1 101 0
	ldi r30,lo8(-64)
	ldi r31,lo8(8)
.L6:
	.loc 1 101 0 is_stmt 0 discriminator 1
	ldd r18,Z+2
	.loc 1 101 0 is_stmt 1 discriminator 1
	tst r18
	brge .L6
	.loc 1 104 0
	std Y+1,r25
	.loc 1 105 0
	ldd r25,Y+1
	sts 2243,r25
	.loc 1 106 0
	ldi r30,lo8(-64)
	ldi r31,lo8(8)
.L7:
	.loc 1 106 0 is_stmt 0 discriminator 1
	ldd r25,Z+2
	.loc 1 106 0 is_stmt 1 discriminator 1
	tst r25
	brge .L7
	.loc 1 109 0
	std Y+1,r24
	.loc 1 110 0
	ldd r24,Y+1
.LVL7:
	sts 2243,r24
	.loc 1 111 0
	ldi r30,lo8(-64)
	ldi r31,lo8(8)
.L8:
	.loc 1 111 0 is_stmt 0 discriminator 1
	ldd r24,Z+2
	.loc 1 111 0 is_stmt 1 discriminator 1
	tst r24
	brge .L8
	.loc 1 114 0
	std Y+1,r22
	.loc 1 115 0
	ldd r24,Y+1
	sts 2243,r24
	.loc 1 116 0
	ldi r30,lo8(-64)
	ldi r31,lo8(8)
.L9:
	.loc 1 116 0 is_stmt 0 discriminator 1
	ldd r24,Z+2
	.loc 1 116 0 is_stmt 1 discriminator 1
	tst r24
	brge .L9
.LBB36:
.LBB37:
	.loc 1 77 0
	ldi r24,lo8(16)
	sts 1605,r24
/* epilogue start */
.LBE37:
.LBE36:
	.loc 1 120 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE10:
	.size	W51_write, .-W51_write
	.section	.text.W51_read,code
.global	W51_read
	.type	W51_read, @function
W51_read:
.LFB11:
	.loc 1 124 0
	.cfi_startproc
.LVL8:
	push r28
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
.LBB44:
.LBB45:
	.loc 1 72 0
	ldi r18,lo8(16)
	sts 1606,r18
.LVL9:
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	.loc 2 276 0
	ldi r18,lo8(10)
1:	dec r18
	brne 1b
	rjmp .
.LVL10:
.LBE47:
.LBE46:
	.loc 1 132 0
	ldi r18,lo8(15)
	std Y+1,r18
	.loc 1 133 0
	ldd r18,Y+1
	sts 2243,r18
	.loc 1 134 0
	ldi r30,lo8(-64)
	ldi r31,lo8(8)
.L15:
	.loc 1 134 0 is_stmt 0 discriminator 1
	ldd r18,Z+2
	.loc 1 134 0 is_stmt 1 discriminator 1
	tst r18
	brge .L15
	.loc 1 138 0
	std Y+1,r25
	.loc 1 139 0
	ldd r25,Y+1
	sts 2243,r25
	.loc 1 140 0
	ldi r30,lo8(-64)
	ldi r31,lo8(8)
.L16:
	.loc 1 140 0 is_stmt 0 discriminator 1
	ldd r25,Z+2
	.loc 1 140 0 is_stmt 1 discriminator 1
	tst r25
	brge .L16
	.loc 1 143 0
	std Y+1,r24
	.loc 1 144 0
	ldd r24,Y+1
.LVL11:
	sts 2243,r24
	.loc 1 145 0
	ldi r30,lo8(-64)
	ldi r31,lo8(8)
.L17:
	.loc 1 145 0 is_stmt 0 discriminator 1
	ldd r24,Z+2
	.loc 1 145 0 is_stmt 1 discriminator 1
	tst r24
	brge .L17
	.loc 1 148 0
	std Y+1,__zero_reg__
	.loc 1 149 0
	ldd r24,Y+1
	sts 2243,r24
	.loc 1 150 0
	ldi r30,lo8(-64)
	ldi r31,lo8(8)
.L18:
	.loc 1 150 0 is_stmt 0 discriminator 1
	ldd r24,Z+2
	.loc 1 150 0 is_stmt 1 discriminator 1
	tst r24
	brge .L18
	.loc 1 151 0
	lds r24,2243
	.loc 1 151 0
	std Y+1,r24
.LBB48:
.LBB49:
	.loc 1 77 0
	ldi r24,lo8(16)
	sts 1605,r24
.LBE49:
.LBE48:
	.loc 1 155 0
	ldd r24,Y+1
/* epilogue start */
	.loc 1 156 0
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE11:
	.size	W51_read, .-W51_read
	.section	.text.W51_init,code
.global	W51_init
	.type	W51_init, @function
W51_init:
.LFB12:
	.loc 1 161 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 162 0
	call reset_w5100
.LVL12:
.LBB50:
.LBB51:
	.loc 2 187 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL13:
	ret
.LBE51:
.LBE50:
	.cfi_endproc
.LFE12:
	.size	W51_init, .-W51_init
	.section	.text.delay_for_w51_0,code
.global	delay_for_w51_0
	.type	delay_for_w51_0, @function
delay_for_w51_0:
.LFB13:
	.loc 1 168 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL14:
.LBB52:
.LBB53:
	.loc 2 187 0
	ldi r18,lo8(639999)
	ldi r24,hi8(639999)
	ldi r25,hlo8(639999)
1:	subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LVL15:
	ret
.LBE53:
.LBE52:
	.cfi_endproc
.LFE13:
	.size	delay_for_w51_0, .-delay_for_w51_0
	.section	.text.W51_config,code
.global	W51_config
	.type	W51_config, @function
W51_config:
.LFB14:
	.loc 1 174 0
	.cfi_startproc
.LVL16:
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
	.loc 1 175 0
	sbiw r24,0
	brne .+2
	rjmp .L27
	movw r28,r24
	.loc 1 177 0
	ldd r22,Y+14
	ldi r24,lo8(1)
	ldi r25,0
.LVL17:
	call W51_write
.LVL18:
	.loc 1 178 0
	ldd r22,Y+15
	ldi r24,lo8(2)
	ldi r25,0
	call W51_write
.LVL19:
	.loc 1 179 0
	ldd r22,Y+16
	ldi r24,lo8(3)
	ldi r25,0
	call W51_write
.LVL20:
	.loc 1 180 0
	ldd r22,Y+17
	ldi r24,lo8(4)
	ldi r25,0
	call W51_write
.LVL21:
.LBB54:
.LBB55:
	.loc 2 187 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL22:
.LBE55:
.LBE54:
	.loc 1 183 0
	ld r22,Y
	ldi r24,lo8(9)
	ldi r25,0
	call W51_write
.LVL23:
	.loc 1 184 0
	ldd r22,Y+1
	ldi r24,lo8(10)
	ldi r25,0
	call W51_write
.LVL24:
	.loc 1 185 0
	ldd r22,Y+2
	ldi r24,lo8(11)
	ldi r25,0
	call W51_write
.LVL25:
	.loc 1 186 0
	ldd r22,Y+3
	ldi r24,lo8(12)
	ldi r25,0
	call W51_write
.LVL26:
	.loc 1 187 0
	ldd r22,Y+4
	ldi r24,lo8(13)
	ldi r25,0
	call W51_write
.LVL27:
	.loc 1 188 0
	ldd r22,Y+5
	ldi r24,lo8(14)
	ldi r25,0
	call W51_write
.LVL28:
.LBB56:
.LBB57:
	.loc 2 187 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL29:
.LBE57:
.LBE56:
	.loc 1 191 0
	ldd r22,Y+10
	ldi r24,lo8(5)
	ldi r25,0
	call W51_write
.LVL30:
	.loc 1 192 0
	ldd r22,Y+11
	ldi r24,lo8(6)
	ldi r25,0
	call W51_write
.LVL31:
	.loc 1 193 0
	ldd r22,Y+12
	ldi r24,lo8(7)
	ldi r25,0
	call W51_write
.LVL32:
	.loc 1 194 0
	ldd r22,Y+13
	ldi r24,lo8(8)
	ldi r25,0
	call W51_write
.LVL33:
.LBB58:
.LBB59:
	.loc 2 187 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL34:
.LBE59:
.LBE58:
	.loc 1 197 0
	ldd r22,Y+6
	ldi r24,lo8(15)
	ldi r25,0
	call W51_write
.LVL35:
	.loc 1 198 0
	ldd r22,Y+7
	ldi r24,lo8(16)
	ldi r25,0
	call W51_write
.LVL36:
	.loc 1 199 0
	ldd r22,Y+8
	ldi r24,lo8(17)
	ldi r25,0
	call W51_write
.LVL37:
	.loc 1 200 0
	ldd r22,Y+9
	ldi r24,lo8(18)
	ldi r25,0
	call W51_write
.LVL38:
.LBB60:
.LBB61:
	.loc 2 187 0
	ldi r24,lo8(7999)
	ldi r25,hi8(7999)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL39:
.LBE61:
.LBE60:
	.loc 1 203 0
	ldi r22,lo8(85)
	ldi r24,lo8(26)
	ldi r25,0
	call W51_write
.LVL40:
	.loc 1 204 0
	ldi r22,lo8(85)
	ldi r24,lo8(27)
	ldi r25,0
	call W51_write
.LVL41:
	.loc 1 206 0
	ldi r24,0
	rjmp .L26
.LVL42:
.L27:
	.loc 1 175 0
	ldi r24,lo8(-1)
.LVL43:
.L26:
/* epilogue start */
	.loc 1 207 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE14:
	.size	W51_config, .-W51_config
	.section	.text,code
.Letext0:
	.file 3 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 4 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h"
	.file 5 "w5100/w5100.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0xb5d
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"w5100/w5100.c"
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
	.byte	0x3
	.byte	0x7e
	.long	0x18e
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
	.long	0x1d2
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
	.byte	0x4
	.byte	0x54
	.long	0x225
	.uleb128 0x4
	.long	0x17f
	.uleb128 0x5
	.string	"PORT_struct"
	.byte	0x18
	.byte	0x4
	.word	0x60e
	.long	0x3da
	.uleb128 0x6
	.string	"DIR"
	.byte	0x4
	.word	0x610
	.long	0x212
	.byte	0
	.uleb128 0x6
	.string	"DIRSET"
	.byte	0x4
	.word	0x611
	.long	0x212
	.byte	0x1
	.uleb128 0x6
	.string	"DIRCLR"
	.byte	0x4
	.word	0x612
	.long	0x212
	.byte	0x2
	.uleb128 0x6
	.string	"DIRTGL"
	.byte	0x4
	.word	0x613
	.long	0x212
	.byte	0x3
	.uleb128 0x6
	.string	"OUT"
	.byte	0x4
	.word	0x614
	.long	0x212
	.byte	0x4
	.uleb128 0x6
	.string	"OUTSET"
	.byte	0x4
	.word	0x615
	.long	0x212
	.byte	0x5
	.uleb128 0x6
	.string	"OUTCLR"
	.byte	0x4
	.word	0x616
	.long	0x212
	.byte	0x6
	.uleb128 0x6
	.string	"OUTTGL"
	.byte	0x4
	.word	0x617
	.long	0x212
	.byte	0x7
	.uleb128 0x6
	.string	"IN"
	.byte	0x4
	.word	0x618
	.long	0x212
	.byte	0x8
	.uleb128 0x6
	.string	"INTCTRL"
	.byte	0x4
	.word	0x619
	.long	0x212
	.byte	0x9
	.uleb128 0x6
	.string	"INT0MASK"
	.byte	0x4
	.word	0x61a
	.long	0x212
	.byte	0xa
	.uleb128 0x6
	.string	"INT1MASK"
	.byte	0x4
	.word	0x61b
	.long	0x212
	.byte	0xb
	.uleb128 0x6
	.string	"INTFLAGS"
	.byte	0x4
	.word	0x61c
	.long	0x212
	.byte	0xc
	.uleb128 0x6
	.string	"reserved_0x0D"
	.byte	0x4
	.word	0x61d
	.long	0x212
	.byte	0xd
	.uleb128 0x6
	.string	"REMAP"
	.byte	0x4
	.word	0x61e
	.long	0x212
	.byte	0xe
	.uleb128 0x6
	.string	"reserved_0x0F"
	.byte	0x4
	.word	0x61f
	.long	0x212
	.byte	0xf
	.uleb128 0x6
	.string	"PIN0CTRL"
	.byte	0x4
	.word	0x620
	.long	0x212
	.byte	0x10
	.uleb128 0x6
	.string	"PIN1CTRL"
	.byte	0x4
	.word	0x621
	.long	0x212
	.byte	0x11
	.uleb128 0x6
	.string	"PIN2CTRL"
	.byte	0x4
	.word	0x622
	.long	0x212
	.byte	0x12
	.uleb128 0x6
	.string	"PIN3CTRL"
	.byte	0x4
	.word	0x623
	.long	0x212
	.byte	0x13
	.uleb128 0x6
	.string	"PIN4CTRL"
	.byte	0x4
	.word	0x624
	.long	0x212
	.byte	0x14
	.uleb128 0x6
	.string	"PIN5CTRL"
	.byte	0x4
	.word	0x625
	.long	0x212
	.byte	0x15
	.uleb128 0x6
	.string	"PIN6CTRL"
	.byte	0x4
	.word	0x626
	.long	0x212
	.byte	0x16
	.uleb128 0x6
	.string	"PIN7CTRL"
	.byte	0x4
	.word	0x627
	.long	0x212
	.byte	0x17
	.byte	0
	.uleb128 0x7
	.string	"PORT_t"
	.byte	0x4
	.word	0x628
	.long	0x22a
	.uleb128 0x5
	.string	"SPI_struct"
	.byte	0x4
	.byte	0x4
	.word	0x7dd
	.long	0x43b
	.uleb128 0x6
	.string	"CTRL"
	.byte	0x4
	.word	0x7df
	.long	0x212
	.byte	0
	.uleb128 0x6
	.string	"INTCTRL"
	.byte	0x4
	.word	0x7e0
	.long	0x212
	.byte	0x1
	.uleb128 0x6
	.string	"STATUS"
	.byte	0x4
	.word	0x7e1
	.long	0x212
	.byte	0x2
	.uleb128 0x6
	.string	"DATA"
	.byte	0x4
	.word	0x7e2
	.long	0x212
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.string	"SPI_t"
	.byte	0x4
	.word	0x7e3
	.long	0x3e9
	.uleb128 0x8
	.long	0x18e
	.long	0x459
	.uleb128 0x9
	.long	0x459
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.string	"W5100_cfg_t"
	.byte	0x12
	.byte	0x5
	.byte	0xd5
	.long	0x4bd
	.uleb128 0xb
	.string	"mac_addr"
	.byte	0x5
	.byte	0xd7
	.long	0x449
	.byte	0
	.uleb128 0xb
	.string	"ip_addr"
	.byte	0x5
	.byte	0xd8
	.long	0x4bd
	.byte	0x6
	.uleb128 0xb
	.string	"sub_mask"
	.byte	0x5
	.byte	0xd9
	.long	0x4bd
	.byte	0xa
	.uleb128 0xb
	.string	"gtw_addr"
	.byte	0x5
	.byte	0xda
	.long	0x4bd
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.long	0x18e
	.long	0x4cd
	.uleb128 0x9
	.long	0x459
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"W5100_CFG"
	.byte	0x5
	.byte	0xdb
	.long	0x465
	.uleb128 0xc
	.string	"_delay_ms"
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.byte	0x3
	.long	0x520
	.uleb128 0xd
	.string	"__ms"
	.byte	0x2
	.byte	0xa6
	.long	0x520
	.uleb128 0xe
	.string	"__tmp"
	.byte	0x2
	.byte	0xa8
	.long	0x520
	.uleb128 0xf
	.long	.LASF0
	.byte	0x2
	.byte	0xac
	.long	0x1c2
	.uleb128 0x10
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
	.uleb128 0xc
	.string	"_delay_us"
	.byte	0x2
	.byte	0xff
	.byte	0x1
	.byte	0x3
	.long	0x56f
	.uleb128 0xd
	.string	"__us"
	.byte	0x2
	.byte	0xff
	.long	0x520
	.uleb128 0x11
	.string	"__tmp"
	.byte	0x2
	.word	0x101
	.long	0x520
	.uleb128 0x12
	.long	.LASF0
	.byte	0x2
	.word	0x105
	.long	0x1c2
	.uleb128 0x13
	.byte	0x1
	.long	.LASF1
	.byte	0x2
	.word	0x106
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"delay_w51_1"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"select_w5100"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0x58b
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"deselect_w5100"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0x5ae
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.string	"reset_w5100"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x662
	.uleb128 0x18
	.long	0x4de
	.long	.LBB22
	.long	.LBE22
	.byte	0x1
	.byte	0x53
	.long	0x62c
	.uleb128 0x19
	.long	0x4f1
	.long	.LLST0
	.uleb128 0x1a
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x1b
	.long	0x4fd
	.long	.LLST1
	.uleb128 0x1b
	.long	0x50a
	.long	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x4de
	.long	.LBB24
	.long	.LBE24
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.long	0x4f1
	.long	.LLST3
	.uleb128 0x1a
	.long	.LBB25
	.long	.LBE25
	.uleb128 0x1b
	.long	0x4fd
	.long	.LLST4
	.uleb128 0x1b
	.long	0x50a
	.long	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"W51_write"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x704
	.uleb128 0x1d
	.string	"addr"
	.byte	0x1
	.byte	0x5a
	.long	0x1a6
	.long	.LLST6
	.uleb128 0x1e
	.string	"data"
	.byte	0x1
	.byte	0x5a
	.long	0x18e
	.byte	0x1
	.byte	0x66
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.byte	0x5c
	.long	0x225
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x20
	.long	0x58b
	.long	.LBB32
	.long	.LBE32
	.byte	0x1
	.byte	0x5e
	.uleb128 0x18
	.long	0x52a
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.byte	0x60
	.long	0x6f4
	.uleb128 0x19
	.long	0x53d
	.long	.LLST7
	.uleb128 0x1a
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x1b
	.long	0x549
	.long	.LLST8
	.uleb128 0x1b
	.long	0x557
	.long	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x5ae
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.byte	0x77
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"W51_read"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	0x18e
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x79b
	.uleb128 0x1d
	.string	"addr"
	.byte	0x1
	.byte	0x7b
	.long	0x1a6
	.long	.LLST10
	.uleb128 0x1f
	.string	"val"
	.byte	0x1
	.byte	0x7d
	.long	0x79b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x20
	.long	0x58b
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.byte	0x81
	.uleb128 0x18
	.long	0x52a
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.byte	0x83
	.long	0x78b
	.uleb128 0x19
	.long	0x53d
	.long	.LLST11
	.uleb128 0x1a
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x1b
	.long	0x549
	.long	.LLST12
	.uleb128 0x1b
	.long	0x557
	.long	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x5ae
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.byte	0x9a
	.byte	0
	.uleb128 0x4
	.long	0x18e
	.uleb128 0x17
	.byte	0x1
	.string	"W51_init"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x800
	.uleb128 0x18
	.long	0x4de
	.long	.LBB50
	.long	.LBE50
	.byte	0x1
	.byte	0xa4
	.long	0x7f6
	.uleb128 0x19
	.long	0x4f1
	.long	.LLST14
	.uleb128 0x1a
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x1b
	.long	0x4fd
	.long	.LLST15
	.uleb128 0x1b
	.long	0x50a
	.long	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL12
	.long	0x5d3
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"delay_for_w51_0"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x85a
	.uleb128 0x1c
	.long	0x4de
	.long	.LBB52
	.long	.LBE52
	.byte	0x1
	.byte	0xa9
	.uleb128 0x19
	.long	0x4f1
	.long	.LLST17
	.uleb128 0x1a
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x1b
	.long	0x4fd
	.long	.LLST18
	.uleb128 0x1b
	.long	0x50a
	.long	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"W51_config"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.long	0x18e
	.long	.LFB14
	.long	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xb5a
	.uleb128 0x1d
	.string	"pcfg"
	.byte	0x1
	.byte	0xad
	.long	0xb5a
	.long	.LLST20
	.uleb128 0x18
	.long	0x4de
	.long	.LBB54
	.long	.LBE54
	.byte	0x1
	.byte	0xb5
	.long	0x8c6
	.uleb128 0x19
	.long	0x4f1
	.long	.LLST21
	.uleb128 0x1a
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x1b
	.long	0x4fd
	.long	.LLST22
	.uleb128 0x1b
	.long	0x50a
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x4de
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.byte	0xbd
	.long	0x8ff
	.uleb128 0x19
	.long	0x4f1
	.long	.LLST24
	.uleb128 0x1a
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x1b
	.long	0x4fd
	.long	.LLST25
	.uleb128 0x1b
	.long	0x50a
	.long	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x4de
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.byte	0xc3
	.long	0x938
	.uleb128 0x19
	.long	0x4f1
	.long	.LLST27
	.uleb128 0x1a
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x1b
	.long	0x4fd
	.long	.LLST28
	.uleb128 0x1b
	.long	0x50a
	.long	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x4de
	.long	.LBB60
	.long	.LBE60
	.byte	0x1
	.byte	0xc9
	.long	0x971
	.uleb128 0x19
	.long	0x4f1
	.long	.LLST30
	.uleb128 0x1a
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x1b
	.long	0x4fd
	.long	.LLST31
	.uleb128 0x1b
	.long	0x50a
	.long	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL18
	.long	0x662
	.long	0x989
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.long	.LVL19
	.long	0x662
	.long	0x9a1
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.long	.LVL20
	.long	0x662
	.long	0x9b9
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.long	.LVL21
	.long	0x662
	.long	0x9d1
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x23
	.long	.LVL23
	.long	0x662
	.long	0x9e9
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x23
	.long	.LVL24
	.long	0x662
	.long	0xa01
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x23
	.long	.LVL25
	.long	0x662
	.long	0xa19
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x23
	.long	.LVL26
	.long	0x662
	.long	0xa31
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x23
	.long	.LVL27
	.long	0x662
	.long	0xa49
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x23
	.long	.LVL28
	.long	0x662
	.long	0xa61
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x23
	.long	.LVL30
	.long	0x662
	.long	0xa79
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.long	.LVL31
	.long	0x662
	.long	0xa91
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x23
	.long	.LVL32
	.long	0x662
	.long	0xaa9
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x23
	.long	.LVL33
	.long	0x662
	.long	0xac1
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x23
	.long	.LVL35
	.long	0x662
	.long	0xad9
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x23
	.long	.LVL36
	.long	0x662
	.long	0xaf1
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.long	.LVL37
	.long	0x662
	.long	0xb09
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x41
	.byte	0
	.uleb128 0x23
	.long	.LVL38
	.long	0x662
	.long	0xb21
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x42
	.byte	0
	.uleb128 0x23
	.long	.LVL40
	.long	0x662
	.long	0xb3f
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x4a
	.uleb128 0x24
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.uleb128 0x25
	.long	.LVL41
	.long	0x662
	.uleb128 0x24
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x4b
	.uleb128 0x24
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x2
	.long	0x4cd
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x40a00000
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x489c4000
	.long	0
	.long	0
.LLST5:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0xc
	.long	0x4e200
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL4
	.long	.LVL7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST8:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42000000
	.long	0
	.long	0
.LLST9:
	.long	.LVL5
	.long	.LVL6
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL8
	.long	.LVL11
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL11
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST12:
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42000000
	.long	0
	.long	0
.LLST13:
	.long	.LVL9
	.long	.LVL10
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST15:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46fa0000
	.long	0
	.long	0
.LLST16:
	.long	.LVL12
	.long	.LVL13
	.word	0x4
	.byte	0xa
	.word	0x7d00
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42c80000
	.long	0
	.long	0
.LLST18:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x4a435000
	.long	0
	.long	0
.LLST19:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0xc
	.long	0x30d400
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL42
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL43
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL43
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST22:
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46fa0000
	.long	0
	.long	0
.LLST23:
	.long	.LVL21
	.long	.LVL22
	.word	0x4
	.byte	0xa
	.word	0x7d00
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST25:
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46fa0000
	.long	0
	.long	0
.LLST26:
	.long	.LVL28
	.long	.LVL29
	.word	0x4
	.byte	0xa
	.word	0x7d00
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST28:
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46fa0000
	.long	0
	.long	0
.LLST29:
	.long	.LVL33
	.long	.LVL34
	.word	0x4
	.byte	0xa
	.word	0x7d00
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL38
	.long	.LVL39
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST31:
	.long	.LVL38
	.long	.LVL39
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x46fa0000
	.long	0
	.long	0
.LLST32:
	.long	.LVL38
	.long	.LVL39
	.word	0x4
	.byte	0xa
	.word	0x7d00
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,info
	.long	0x5c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
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
.LASF1:
	.string	"__builtin_avr_delay_cycles"
.LASF0:
	.string	"__ticks_dc"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
