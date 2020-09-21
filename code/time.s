	.file	"time.c"
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
	.section	.text.time_init,code
.global	time_init
	.type	time_init, @function
time_init:
.LFB10:
	.file 1 "time/time.c"
	.loc 1 7 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 8 0
	ldi r24,0
	ldi r25,lo8(125)
	sts 2086,r24
	sts 2086+1,r25
	.loc 1 9 0
	ldi r30,0
	ldi r31,lo8(8)
	ldi r24,lo8(1)
	st Z,r24
	.loc 1 10 0
	std Z+1,__zero_reg__
	.loc 1 11 0
	std Z+6,r24
	ret
	.cfi_endproc
.LFE10:
	.size	time_init, .-time_init
	.section	.text.millis,code
.global	millis
	.type	millis, @function
millis:
.LFB11:
	.loc 1 14 0
	.cfi_startproc
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
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 5 */
.L__stack_usage = 5
.LBB7:
	.loc 1 16 0
	in r24,__SREG__
	std Y+1,r24
.LBB8:
.LBB9:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/util/atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "/opt/microchip/xc8/v2.10/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL0:
/* #NOAPP */
.LBE9:
.LBE8:
	.loc 1 17 0
	lds r16,milliseconds
	lds r17,milliseconds+1
	lds r18,milliseconds+2
	lds r19,milliseconds+3
.LVL1:
.LBB10:
.LBB11:
	.loc 2 70 0
	movw r24,r28
	adiw r24,1
	ldi r26,lo8(-128)
	movw r30,r24
	mov r21,r26
	call __xload_1
	out __SREG__,r22
	.loc 2 71 0
.LBE11:
.LBE10:
.LBE7:
	.loc 1 20 0
	movw r24,r18
	movw r22,r16
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL2:
	ret
	.cfi_endproc
.LFE11:
	.size	millis, .-millis
	.section	.text.get_fattime,code
.global	get_fattime
	.type	get_fattime, @function
get_fattime:
.LFB12:
	.loc 1 22 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 24 0
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r22
	ret
	.cfi_endproc
.LFE12:
	.size	get_fattime, .-get_fattime
	.section	.text.__vector_14,code
.global	__vector_14
	.type	__vector_14, @function
__vector_14:
.LFB13:
	.loc 1 26 0
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
	push r24
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r26
	.cfi_def_cfa_offset 8
	.cfi_offset 26, -7
	push r27
	.cfi_def_cfa_offset 9
	.cfi_offset 27, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 27 0
	lds r24,milliseconds
	lds r25,milliseconds+1
	lds r26,milliseconds+2
	lds r27,milliseconds+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts milliseconds,r24
	sts milliseconds+1,r25
	sts milliseconds+2,r26
	sts milliseconds+3,r27
/* epilogue start */
	.loc 1 28 0
	pop r27
	pop r26
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE13:
	.size	__vector_14, .-__vector_14
.global	milliseconds
	.section	.bss.milliseconds,bss
	.type	milliseconds, @object
	.size	milliseconds, 4
milliseconds:
	.zero	4
	.section	.text,code
.Letext0:
	.file 3 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 4 "/opt/microchip/xc8/v2.10/dfp/include/avr/iox128a3u.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0xd3f
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"time/time.c"
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
	.long	0x18c
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
	.byte	0x3
	.byte	0x80
	.long	0x1b4
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
	.long	0x1e0
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
	.long	0x233
	.uleb128 0x4
	.long	0x17d
	.uleb128 0x3
	.string	"register16_t"
	.byte	0x4
	.byte	0x55
	.long	0x24c
	.uleb128 0x4
	.long	0x1a4
	.uleb128 0x4
	.long	0x1d0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x829
	.long	0x27c
	.uleb128 0x6
	.string	"CNTL"
	.byte	0x4
	.word	0x829
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CNTH"
	.byte	0x4
	.word	0x829
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x829
	.long	0x297
	.uleb128 0x8
	.string	"CNT"
	.byte	0x4
	.word	0x829
	.long	0x238
	.uleb128 0x9
	.long	0x256
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x82e
	.long	0x2bd
	.uleb128 0x6
	.string	"PERL"
	.byte	0x4
	.word	0x82e
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"PERH"
	.byte	0x4
	.word	0x82e
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x82e
	.long	0x2d8
	.uleb128 0x8
	.string	"PER"
	.byte	0x4
	.word	0x82e
	.long	0x238
	.uleb128 0x9
	.long	0x297
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x82f
	.long	0x2fe
	.uleb128 0x6
	.string	"CCAL"
	.byte	0x4
	.word	0x82f
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CCAH"
	.byte	0x4
	.word	0x82f
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x82f
	.long	0x319
	.uleb128 0x8
	.string	"CCA"
	.byte	0x4
	.word	0x82f
	.long	0x238
	.uleb128 0x9
	.long	0x2d8
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x830
	.long	0x33f
	.uleb128 0x6
	.string	"CCBL"
	.byte	0x4
	.word	0x830
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CCBH"
	.byte	0x4
	.word	0x830
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x830
	.long	0x35a
	.uleb128 0x8
	.string	"CCB"
	.byte	0x4
	.word	0x830
	.long	0x238
	.uleb128 0x9
	.long	0x319
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x831
	.long	0x380
	.uleb128 0x6
	.string	"CCCL"
	.byte	0x4
	.word	0x831
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CCCH"
	.byte	0x4
	.word	0x831
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x831
	.long	0x39b
	.uleb128 0x8
	.string	"CCC"
	.byte	0x4
	.word	0x831
	.long	0x238
	.uleb128 0x9
	.long	0x35a
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x832
	.long	0x3c1
	.uleb128 0x6
	.string	"CCDL"
	.byte	0x4
	.word	0x832
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CCDH"
	.byte	0x4
	.word	0x832
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x832
	.long	0x3dc
	.uleb128 0x8
	.string	"CCD"
	.byte	0x4
	.word	0x832
	.long	0x238
	.uleb128 0x9
	.long	0x39b
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x839
	.long	0x408
	.uleb128 0x6
	.string	"PERBUFL"
	.byte	0x4
	.word	0x839
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"PERBUFH"
	.byte	0x4
	.word	0x839
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x839
	.long	0x426
	.uleb128 0x8
	.string	"PERBUF"
	.byte	0x4
	.word	0x839
	.long	0x238
	.uleb128 0x9
	.long	0x3dc
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x83a
	.long	0x452
	.uleb128 0x6
	.string	"CCABUFL"
	.byte	0x4
	.word	0x83a
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CCABUFH"
	.byte	0x4
	.word	0x83a
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x83a
	.long	0x470
	.uleb128 0x8
	.string	"CCABUF"
	.byte	0x4
	.word	0x83a
	.long	0x238
	.uleb128 0x9
	.long	0x426
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x83b
	.long	0x49c
	.uleb128 0x6
	.string	"CCBBUFL"
	.byte	0x4
	.word	0x83b
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CCBBUFH"
	.byte	0x4
	.word	0x83b
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x83b
	.long	0x4ba
	.uleb128 0x8
	.string	"CCBBUF"
	.byte	0x4
	.word	0x83b
	.long	0x238
	.uleb128 0x9
	.long	0x470
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x83c
	.long	0x4e6
	.uleb128 0x6
	.string	"CCCBUFL"
	.byte	0x4
	.word	0x83c
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CCCBUFH"
	.byte	0x4
	.word	0x83c
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x83c
	.long	0x504
	.uleb128 0x8
	.string	"CCCBUF"
	.byte	0x4
	.word	0x83c
	.long	0x238
	.uleb128 0x9
	.long	0x4ba
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.word	0x83d
	.long	0x530
	.uleb128 0x6
	.string	"CCDBUFL"
	.byte	0x4
	.word	0x83d
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CCDBUFH"
	.byte	0x4
	.word	0x83d
	.long	0x220
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.word	0x83d
	.long	0x54e
	.uleb128 0x8
	.string	"CCDBUF"
	.byte	0x4
	.word	0x83d
	.long	0x238
	.uleb128 0x9
	.long	0x504
	.byte	0
	.uleb128 0xa
	.string	"TC0_struct"
	.byte	0x40
	.byte	0x4
	.word	0x807
	.long	0x917
	.uleb128 0x6
	.string	"CTRLA"
	.byte	0x4
	.word	0x809
	.long	0x220
	.byte	0
	.uleb128 0x6
	.string	"CTRLB"
	.byte	0x4
	.word	0x80a
	.long	0x220
	.byte	0x1
	.uleb128 0x6
	.string	"CTRLC"
	.byte	0x4
	.word	0x80b
	.long	0x220
	.byte	0x2
	.uleb128 0x6
	.string	"CTRLD"
	.byte	0x4
	.word	0x80c
	.long	0x220
	.byte	0x3
	.uleb128 0x6
	.string	"CTRLE"
	.byte	0x4
	.word	0x80d
	.long	0x220
	.byte	0x4
	.uleb128 0x6
	.string	"reserved_0x05"
	.byte	0x4
	.word	0x80e
	.long	0x220
	.byte	0x5
	.uleb128 0x6
	.string	"INTCTRLA"
	.byte	0x4
	.word	0x80f
	.long	0x220
	.byte	0x6
	.uleb128 0x6
	.string	"INTCTRLB"
	.byte	0x4
	.word	0x810
	.long	0x220
	.byte	0x7
	.uleb128 0x6
	.string	"CTRLFCLR"
	.byte	0x4
	.word	0x811
	.long	0x220
	.byte	0x8
	.uleb128 0x6
	.string	"CTRLFSET"
	.byte	0x4
	.word	0x812
	.long	0x220
	.byte	0x9
	.uleb128 0x6
	.string	"CTRLGCLR"
	.byte	0x4
	.word	0x813
	.long	0x220
	.byte	0xa
	.uleb128 0x6
	.string	"CTRLGSET"
	.byte	0x4
	.word	0x814
	.long	0x220
	.byte	0xb
	.uleb128 0x6
	.string	"INTFLAGS"
	.byte	0x4
	.word	0x815
	.long	0x220
	.byte	0xc
	.uleb128 0x6
	.string	"reserved_0x0D"
	.byte	0x4
	.word	0x816
	.long	0x220
	.byte	0xd
	.uleb128 0x6
	.string	"reserved_0x0E"
	.byte	0x4
	.word	0x817
	.long	0x220
	.byte	0xe
	.uleb128 0x6
	.string	"TEMP"
	.byte	0x4
	.word	0x818
	.long	0x220
	.byte	0xf
	.uleb128 0x6
	.string	"reserved_0x10"
	.byte	0x4
	.word	0x819
	.long	0x220
	.byte	0x10
	.uleb128 0x6
	.string	"reserved_0x11"
	.byte	0x4
	.word	0x81a
	.long	0x220
	.byte	0x11
	.uleb128 0x6
	.string	"reserved_0x12"
	.byte	0x4
	.word	0x81b
	.long	0x220
	.byte	0x12
	.uleb128 0x6
	.string	"reserved_0x13"
	.byte	0x4
	.word	0x81c
	.long	0x220
	.byte	0x13
	.uleb128 0x6
	.string	"reserved_0x14"
	.byte	0x4
	.word	0x81d
	.long	0x220
	.byte	0x14
	.uleb128 0x6
	.string	"reserved_0x15"
	.byte	0x4
	.word	0x81e
	.long	0x220
	.byte	0x15
	.uleb128 0x6
	.string	"reserved_0x16"
	.byte	0x4
	.word	0x81f
	.long	0x220
	.byte	0x16
	.uleb128 0x6
	.string	"reserved_0x17"
	.byte	0x4
	.word	0x820
	.long	0x220
	.byte	0x17
	.uleb128 0x6
	.string	"reserved_0x18"
	.byte	0x4
	.word	0x821
	.long	0x220
	.byte	0x18
	.uleb128 0x6
	.string	"reserved_0x19"
	.byte	0x4
	.word	0x822
	.long	0x220
	.byte	0x19
	.uleb128 0x6
	.string	"reserved_0x1A"
	.byte	0x4
	.word	0x823
	.long	0x220
	.byte	0x1a
	.uleb128 0x6
	.string	"reserved_0x1B"
	.byte	0x4
	.word	0x824
	.long	0x220
	.byte	0x1b
	.uleb128 0x6
	.string	"reserved_0x1C"
	.byte	0x4
	.word	0x825
	.long	0x220
	.byte	0x1c
	.uleb128 0x6
	.string	"reserved_0x1D"
	.byte	0x4
	.word	0x826
	.long	0x220
	.byte	0x1d
	.uleb128 0x6
	.string	"reserved_0x1E"
	.byte	0x4
	.word	0x827
	.long	0x220
	.byte	0x1e
	.uleb128 0x6
	.string	"reserved_0x1F"
	.byte	0x4
	.word	0x828
	.long	0x220
	.byte	0x1f
	.uleb128 0xb
	.long	0x27c
	.byte	0x20
	.uleb128 0x6
	.string	"reserved_0x22"
	.byte	0x4
	.word	0x82a
	.long	0x220
	.byte	0x22
	.uleb128 0x6
	.string	"reserved_0x23"
	.byte	0x4
	.word	0x82b
	.long	0x220
	.byte	0x23
	.uleb128 0x6
	.string	"reserved_0x24"
	.byte	0x4
	.word	0x82c
	.long	0x220
	.byte	0x24
	.uleb128 0x6
	.string	"reserved_0x25"
	.byte	0x4
	.word	0x82d
	.long	0x220
	.byte	0x25
	.uleb128 0xb
	.long	0x2bd
	.byte	0x26
	.uleb128 0xb
	.long	0x2fe
	.byte	0x28
	.uleb128 0xb
	.long	0x33f
	.byte	0x2a
	.uleb128 0xb
	.long	0x380
	.byte	0x2c
	.uleb128 0xb
	.long	0x3c1
	.byte	0x2e
	.uleb128 0x6
	.string	"reserved_0x30"
	.byte	0x4
	.word	0x833
	.long	0x220
	.byte	0x30
	.uleb128 0x6
	.string	"reserved_0x31"
	.byte	0x4
	.word	0x834
	.long	0x220
	.byte	0x31
	.uleb128 0x6
	.string	"reserved_0x32"
	.byte	0x4
	.word	0x835
	.long	0x220
	.byte	0x32
	.uleb128 0x6
	.string	"reserved_0x33"
	.byte	0x4
	.word	0x836
	.long	0x220
	.byte	0x33
	.uleb128 0x6
	.string	"reserved_0x34"
	.byte	0x4
	.word	0x837
	.long	0x220
	.byte	0x34
	.uleb128 0x6
	.string	"reserved_0x35"
	.byte	0x4
	.word	0x838
	.long	0x220
	.byte	0x35
	.uleb128 0xb
	.long	0x408
	.byte	0x36
	.uleb128 0xb
	.long	0x452
	.byte	0x38
	.uleb128 0xb
	.long	0x49c
	.byte	0x3a
	.uleb128 0xb
	.long	0x4e6
	.byte	0x3c
	.uleb128 0xb
	.long	0x530
	.byte	0x3e
	.byte	0
	.uleb128 0xc
	.string	"TC0_t"
	.byte	0x4
	.word	0x83e
	.long	0x54e
	.uleb128 0xd
	.string	"TC_CLKSEL_enum"
	.byte	0x1
	.long	0x18c
	.byte	0x4
	.word	0x8a8
	.long	0xa8f
	.uleb128 0xe
	.string	"TC_CLKSEL_OFF_gc"
	.byte	0
	.uleb128 0xe
	.string	"TC_CLKSEL_DIV1_gc"
	.byte	0x1
	.uleb128 0xe
	.string	"TC_CLKSEL_DIV2_gc"
	.byte	0x2
	.uleb128 0xe
	.string	"TC_CLKSEL_DIV4_gc"
	.byte	0x3
	.uleb128 0xe
	.string	"TC_CLKSEL_DIV8_gc"
	.byte	0x4
	.uleb128 0xe
	.string	"TC_CLKSEL_DIV64_gc"
	.byte	0x5
	.uleb128 0xe
	.string	"TC_CLKSEL_DIV256_gc"
	.byte	0x6
	.uleb128 0xe
	.string	"TC_CLKSEL_DIV1024_gc"
	.byte	0x7
	.uleb128 0xe
	.string	"TC_CLKSEL_EVCH0_gc"
	.byte	0x8
	.uleb128 0xe
	.string	"TC_CLKSEL_EVCH1_gc"
	.byte	0x9
	.uleb128 0xe
	.string	"TC_CLKSEL_EVCH2_gc"
	.byte	0xa
	.uleb128 0xe
	.string	"TC_CLKSEL_EVCH3_gc"
	.byte	0xb
	.uleb128 0xe
	.string	"TC_CLKSEL_EVCH4_gc"
	.byte	0xc
	.uleb128 0xe
	.string	"TC_CLKSEL_EVCH5_gc"
	.byte	0xd
	.uleb128 0xe
	.string	"TC_CLKSEL_EVCH6_gc"
	.byte	0xe
	.uleb128 0xe
	.string	"TC_CLKSEL_EVCH7_gc"
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.string	"TC_OVFINTLVL_enum"
	.byte	0x1
	.long	0x18c
	.byte	0x4
	.word	0x8e9
	.long	0xb05
	.uleb128 0xe
	.string	"TC_OVFINTLVL_OFF_gc"
	.byte	0
	.uleb128 0xe
	.string	"TC_OVFINTLVL_LO_gc"
	.byte	0x1
	.uleb128 0xe
	.string	"TC_OVFINTLVL_MED_gc"
	.byte	0x2
	.uleb128 0xe
	.string	"TC_OVFINTLVL_HI_gc"
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.string	"TC_WGMODE_enum"
	.byte	0x1
	.long	0x18c
	.byte	0x4
	.word	0x8f2
	.long	0xbf8
	.uleb128 0xe
	.string	"TC_WGMODE_NORMAL_gc"
	.byte	0
	.uleb128 0xe
	.string	"TC_WGMODE_FRQ_gc"
	.byte	0x1
	.uleb128 0xe
	.string	"TC_WGMODE_SINGLESLOPE_gc"
	.byte	0x3
	.uleb128 0xe
	.string	"TC_WGMODE_SS_gc"
	.byte	0x3
	.uleb128 0xe
	.string	"TC_WGMODE_DSTOP_gc"
	.byte	0x5
	.uleb128 0xe
	.string	"TC_WGMODE_DS_T_gc"
	.byte	0x5
	.uleb128 0xe
	.string	"TC_WGMODE_DSBOTH_gc"
	.byte	0x6
	.uleb128 0xe
	.string	"TC_WGMODE_DS_TB_gc"
	.byte	0x6
	.uleb128 0xe
	.string	"TC_WGMODE_DSBOTTOM_gc"
	.byte	0x7
	.uleb128 0xe
	.string	"TC_WGMODE_DS_B_gc"
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"char"
	.uleb128 0xf
	.string	"__iCliRetVal"
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x17d
	.byte	0x3
	.uleb128 0x10
	.string	"__iRestore"
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0xc42
	.uleb128 0x11
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0xc42
	.byte	0
	.uleb128 0x12
	.byte	0x3
	.byte	0x7
	.long	0xc49
	.uleb128 0x13
	.long	0x17d
	.uleb128 0x14
	.byte	0x1
	.string	"time_init"
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"millis"
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0x1d0
	.long	.LFB11
	.long	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0xceb
	.uleb128 0x16
	.string	"tmp"
	.byte	0x1
	.byte	0xf
	.long	0x1d0
	.long	.LLST0
	.uleb128 0x17
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x18
	.string	"sreg_save"
	.byte	0x1
	.byte	0x10
	.long	0x17d
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x16
	.string	"__ToDo"
	.byte	0x1
	.byte	0x10
	.long	0x17d
	.long	.LLST1
	.uleb128 0x19
	.long	0xc0c
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x10
	.uleb128 0x1a
	.long	0xc22
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x10
	.uleb128 0x1b
	.long	0xc36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"get_fattime"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	0x1d0
	.long	.LFB12
	.long	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.string	"__vector_14"
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x1d
	.string	"milliseconds"
	.byte	0x1
	.byte	0x5
	.long	0x251
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	milliseconds
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
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
	.long	.LVL2
	.long	.LFE11
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
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL1
	.long	.LFE11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,info
	.long	0x34
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	0
	.long	0
	.section	.debug_ranges,info
.Ldebug_ranges0:
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
.global __do_clear_bss