	.file	"diskio.c"
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
	.section	.text.disk_status,code
.global	disk_status
	.type	disk_status, @function
disk_status:
.LFB5:
	.file 1 "fatfs/diskio.c"
	.loc 1 31 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 32 0
	cpse r24,__zero_reg__
	rjmp .L5
	.loc 1 35 0
	lds r24,SDStatus
.LVL1:
	ret
.LVL2:
.L5:
	.loc 1 37 0
	ldi r24,lo8(1)
.LVL3:
	.loc 1 38 0
	ret
	.cfi_endproc
.LFE5:
	.size	disk_status, .-disk_status
	.section	.text.disk_initialize,code
.global	disk_initialize
	.type	disk_initialize, @function
disk_initialize:
.LFB6:
	.loc 1 49 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 50 0
	cpse r24,__zero_reg__
	rjmp .L12
	.loc 1 52 0
	lds r24,SDStatus
.LVL5:
	sbrc r24,1
	rjmp .L11
	.loc 1 53 0
	call sd_init
.LVL6:
	or r24,r25
	brne .L9
	.loc 1 53 0 is_stmt 0 discriminator 1
	lds r24,SDStatus
	andi r24,lo8(-2)
	sts SDStatus,r24
.L9:
	.loc 1 54 0 is_stmt 1
	lds r24,SDStatus
	ret
.LVL7:
.L12:
	.loc 1 56 0
	ldi r24,lo8(1)
.LVL8:
	ret
.L11:
	.loc 1 52 0
	ldi r24,lo8(1)
	.loc 1 57 0
	ret
	.cfi_endproc
.LFE6:
	.size	disk_initialize, .-disk_initialize
	.section	.text.disk_read,code
.global	disk_read
	.type	disk_read, @function
disk_read:
.LFB7:
	.loc 1 71 0
	.cfi_startproc
.LVL9:
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
	movw r28,r22
	movw r12,r18
	movw r14,r20
	.loc 1 72 0
	cpse r24,__zero_reg__
	rjmp .L22
	.loc 1 74 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L16
.LVL10:
.L20:
	.loc 1 75 0
	movw r20,r28
	movw r24,r14
	movw r22,r12
	call sd_readSECTOR
.LVL11:
	or r24,r25
	breq .L16
	.loc 1 76 0
	subi r29,-2
.LVL12:
	.loc 1 77 0
	ldi r24,-1
	sub r12,r24
	sbc r13,r24
	sbc r14,r24
	sbc r15,r24
.LVL13:
	.loc 1 78 0
	subi r16,1
	sbc r17,__zero_reg__
.LVL14:
	.loc 1 74 0
	brne .L20
.L16:
	.loc 1 80 0
	ldi r24,lo8(1)
	or r16,r17
	brne .L14
	ldi r24,0
	rjmp .L14
.LVL15:
.L22:
	.loc 1 83 0
	ldi r24,lo8(4)
.LVL16:
.L14:
/* epilogue start */
	.loc 1 84 0
	pop r29
	pop r28
.LVL17:
	pop r17
	pop r16
.LVL18:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL19:
	ret
	.cfi_endproc
.LFE7:
	.size	disk_read, .-disk_read
	.section	.text.disk_write,code
.global	disk_write
	.type	disk_write, @function
disk_write:
.LFB8:
	.loc 1 99 0
	.cfi_startproc
.LVL20:
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
	push r12
	.cfi_def_cfa_offset 9
	.cfi_offset 12, -8
	push r13
	.cfi_def_cfa_offset 10
	.cfi_offset 13, -9
	push r14
	.cfi_def_cfa_offset 11
	.cfi_offset 14, -10
	push r15
	.cfi_def_cfa_offset 12
	.cfi_offset 15, -11
	push r16
	.cfi_def_cfa_offset 13
	.cfi_offset 16, -12
	push r17
	.cfi_def_cfa_offset 14
	.cfi_offset 17, -13
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	movw r6,r20
	mov r8,r22
	movw r10,r16
	movw r12,r18
	.loc 1 100 0
	cpse r24,__zero_reg__
	rjmp .L32
	.loc 1 102 0
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L26
.LVL21:
.L30:
	.loc 1 103 0
	movw r18,r6
	ldi r20,lo8(-128)
	movw r24,r12
	movw r22,r10
	call sd_writeSECTOR
.LVL22:
	or r24,r25
	breq .L26
	.loc 1 104 0
	ldi r24,2
	add r7,r24
	adc r8,__zero_reg__
.LVL23:
	.loc 1 105 0
	ldi r24,-1
	sub r10,r24
	sbc r11,r24
	sbc r12,r24
	sbc r13,r24
.LVL24:
	.loc 1 106 0
	ldi r24,1
	sub r14,r24
	sbc r15,__zero_reg__
.LVL25:
	.loc 1 102 0
	brne .L30
.L26:
	.loc 1 108 0
	ldi r24,lo8(1)
	or r14,r15
	brne .L24
	ldi r24,0
	rjmp .L24
.LVL26:
.L32:
	.loc 1 111 0
	ldi r24,lo8(4)
.LVL27:
.L24:
/* epilogue start */
	.loc 1 112 0
	pop r17
	pop r16
	pop r15
	pop r14
.LVL28:
	pop r13
	pop r12
	pop r11
	pop r10
.LVL29:
	pop r8
	pop r7
	pop r6
.LVL30:
	ret
	.cfi_endproc
.LFE8:
	.size	disk_write, .-disk_write
	.section	.text.disk_ioctl,code
.global	disk_ioctl
	.type	disk_ioctl, @function
disk_ioctl:
.LFB9:
	.loc 1 126 0
	.cfi_startproc
.LVL31:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 127 0
	cpse r24,__zero_reg__
	rjmp .L39
	.loc 1 129 0
	cpi r22,lo8(2)
	brne .L36
	.loc 1 130 0
	ldi r24,0
	ldi r25,lo8(2)
.LVL32:
	movw r30,r20
	st Z,r24
	std Z+1,r25
	.loc 1 131 0
	ldi r24,0
	ret
.LVL33:
.L36:
	.loc 1 133 0
	lds r24,SDStatus
.LVL34:
	sbrs r24,0
	rjmp .L38
	ldi r24,lo8(3)
	ret
.LVL35:
.L39:
	.loc 1 136 0
	ldi r24,lo8(4)
.LVL36:
	ret
.L38:
	ldi r24,lo8(4)
	.loc 1 137 0
	ret
	.cfi_endproc
.LFE9:
	.size	disk_ioctl, .-disk_ioctl
	.section	.text.disk_timerproc,code
.global	disk_timerproc
	.type	disk_timerproc, @function
disk_timerproc:
.LFB10:
	.loc 1 140 0
	.cfi_startproc
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
	.loc 1 144 0
	call millis
.LVL37:
	lds r16,proctimer.4451
	lds r17,proctimer.4451+1
	lds r18,proctimer.4451+2
	lds r19,proctimer.4451+3
	movw r26,r24
	movw r24,r22
	sub r24,r16
	sbc r25,r17
	sbc r26,r18
	sbc r27,r19
	sbiw r24,11
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	brlo .L40
	.loc 1 145 0
	call millis
.LVL38:
	sts proctimer.4451,r22
	sts proctimer.4451+1,r23
	sts proctimer.4451+2,r24
	sts proctimer.4451+3,r25
	.loc 1 147 0
	lds r17,SDStatus
.LVL39:
	.loc 1 148 0
	call sd_getCD
.LVL40:
	or r24,r25
	breq .L42
	.loc 1 148 0 is_stmt 0 discriminator 1
	andi r17,lo8(-3)
.LVL41:
	rjmp .L43
.L42:
	.loc 1 149 0 is_stmt 1
	ori r17,lo8(3)
.LVL42:
.L43:
	.loc 1 150 0
	sts SDStatus,r17
.LVL43:
.L40:
/* epilogue start */
	.loc 1 152 0
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE10:
	.size	disk_timerproc, .-disk_timerproc
	.section	.bss.proctimer.4451,bss
	.type	proctimer.4451, @object
	.size	proctimer.4451, 4
proctimer.4451:
	.zero	4
.global	SDStatus
	.section	.data.SDStatus,data
	.type	SDStatus, @object
	.size	SDStatus, 1
SDStatus:
	.byte	1
	.section	.text,code
.Letext0:
	.file 2 "/opt/microchip/xc8/v2.10/avr/avr/include/stdint.h"
	.file 3 "fatfs/ff.h"
	.file 4 "fatfs/diskio.h"
	.file 5 "fatfs/sd.h"
	.file 6 "fatfs/../time/time.h"
	.section	.debug_info,info
.Ldebug_info0:
	.long	0x572
	.word	0x3
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C11"
	.string	" 5.4.0 -mn-flash=3 -mno-skip-bug -mrmw -mdevice=atxmega128a3u -mconst-data-in-progmem -mpack-dir=/opt/microchip/xc8/v2.10/dfp -mmcu=avrxmega6 -gdwarf-3 -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields"
	.byte	0xc
	.string	"fatfs/diskio.c"
	.string	"/home/marek/Dropbox/Programowanie/Michrochip_PIC/xmegatest.X"
	.long	.Ldebug_ranges0+0
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
	.long	0x1a8
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
	.long	0x1d4
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
	.long	0x1a8
	.uleb128 0x3
	.string	"BYTE"
	.byte	0x3
	.byte	0x2e
	.long	0x180
	.uleb128 0x3
	.string	"WORD"
	.byte	0x3
	.byte	0x2f
	.long	0x198
	.uleb128 0x3
	.string	"DWORD"
	.byte	0x3
	.byte	0x31
	.long	0x1c4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x2
	.long	0x220
	.uleb128 0x3
	.string	"DSTATUS"
	.byte	0x4
	.byte	0x14
	.long	0x220
	.uleb128 0x5
	.byte	0x1
	.long	0x180
	.byte	0x4
	.byte	0x17
	.long	0x2b6
	.uleb128 0x6
	.string	"RES_OK"
	.byte	0
	.uleb128 0x6
	.string	"RES_ERROR"
	.byte	0x1
	.uleb128 0x6
	.string	"RES_WRPRT"
	.byte	0x2
	.uleb128 0x6
	.string	"RES_NOTRDY"
	.byte	0x3
	.uleb128 0x6
	.string	"RES_PARERR"
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"DRESULT"
	.byte	0x4
	.byte	0x1d
	.long	0x26e
	.uleb128 0x7
	.byte	0x2
	.uleb128 0x8
	.byte	0x1
	.string	"disk_status"
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	0x25f
	.long	.LFB5
	.long	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x2fc
	.uleb128 0x9
	.string	"pdrv"
	.byte	0x1
	.byte	0x1d
	.long	0x220
	.long	.LLST0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"disk_initialize"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	0x25f
	.long	.LFB6
	.long	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x33e
	.uleb128 0x9
	.string	"pdrv"
	.byte	0x1
	.byte	0x2f
	.long	0x220
	.long	.LLST1
	.uleb128 0xa
	.long	.LVL6
	.long	0x526
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"disk_read"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0x2b6
	.long	.LFB7
	.long	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x3ca
	.uleb128 0x9
	.string	"pdrv"
	.byte	0x1
	.byte	0x42
	.long	0x220
	.long	.LLST2
	.uleb128 0x9
	.string	"buff"
	.byte	0x1
	.byte	0x43
	.long	0x259
	.long	.LLST3
	.uleb128 0x9
	.string	"sector"
	.byte	0x1
	.byte	0x44
	.long	0x238
	.long	.LLST4
	.uleb128 0x9
	.string	"count"
	.byte	0x1
	.byte	0x45
	.long	0x214
	.long	.LLST5
	.uleb128 0xb
	.long	.LVL11
	.long	0x53b
	.uleb128 0xc
	.byte	0xc
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0xc
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
	.uleb128 0x8
	.byte	0x1
	.string	"disk_write"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.long	0x2b6
	.long	.LFB8
	.long	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x44c
	.uleb128 0x9
	.string	"pdrv"
	.byte	0x1
	.byte	0x5e
	.long	0x220
	.long	.LLST6
	.uleb128 0x9
	.string	"buff"
	.byte	0x1
	.byte	0x5f
	.long	0x44c
	.long	.LLST7
	.uleb128 0x9
	.string	"sector"
	.byte	0x1
	.byte	0x60
	.long	0x238
	.long	.LLST8
	.uleb128 0x9
	.string	"count"
	.byte	0x1
	.byte	0x61
	.long	0x214
	.long	.LLST9
	.uleb128 0xb
	.long	.LVL22
	.long	0x548
	.uleb128 0xc
	.byte	0xc
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
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x3
	.byte	0x7
	.long	0x453
	.uleb128 0xe
	.long	0x220
	.uleb128 0x8
	.byte	0x1
	.string	"disk_ioctl"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	0x2b6
	.long	.LFB9
	.long	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x4ac
	.uleb128 0x9
	.string	"pdrv"
	.byte	0x1
	.byte	0x7a
	.long	0x220
	.long	.LLST10
	.uleb128 0xf
	.string	"cmd"
	.byte	0x1
	.byte	0x7b
	.long	0x220
	.byte	0x1
	.byte	0x66
	.uleb128 0xf
	.string	"buff"
	.byte	0x1
	.byte	0x7c
	.long	0x2c5
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"disk_timerproc"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.long	0x50f
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x8d
	.long	0x25f
	.long	.LLST11
	.uleb128 0x12
	.string	"proctimer"
	.byte	0x1
	.byte	0x8e
	.long	0x1c4
	.byte	0x5
	.byte	0x3
	.long	proctimer.4451
	.uleb128 0xa
	.long	.LVL37
	.long	0x555
	.uleb128 0xa
	.long	.LVL38
	.long	0x555
	.uleb128 0xa
	.long	.LVL40
	.long	0x568
	.byte	0
	.uleb128 0x13
	.string	"SDStatus"
	.byte	0x1
	.byte	0x16
	.long	0x25f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	SDStatus
	.uleb128 0x14
	.byte	0x1
	.byte	0x1
	.string	"sd_init"
	.string	"sd_init"
	.byte	0x5
	.byte	0x15
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF0
	.long	.LASF0
	.byte	0x5
	.byte	0x18
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF1
	.long	.LASF1
	.byte	0x5
	.byte	0x19
	.uleb128 0x14
	.byte	0x1
	.byte	0x1
	.string	"millis"
	.string	"millis"
	.byte	0x6
	.byte	0x16
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF2
	.long	.LASF2
	.byte	0x5
	.byte	0x16
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL8
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	.LVL10
	.long	.LVL15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL10
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
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
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL10
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
	.long	.LVL10
	.long	.LVL19
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
.LLST5:
	.long	.LVL9
	.long	.LVL14
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL18
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LVL26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0x1
	.byte	0x68
	.long	.LVL27
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL20
	.long	.LVL21
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
	.long	.LVL21
	.long	.LVL30
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
.LLST8:
	.long	.LVL20
	.long	.LVL21
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
	.long	.LVL21
	.long	.LVL29
	.word	0xc
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL25
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LVL28
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL31
	.long	.LVL32
	.word	0x1
	.byte	0x68
	.long	.LVL32
	.long	.LVL33
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	.LVL34
	.long	.LVL35
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	.LVL36
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL39
	.long	.LVL43
	.word	0x1
	.byte	0x61
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
.LASF0:
	.string	"sd_readSECTOR"
.LASF1:
	.string	"sd_writeSECTOR"
.LASF2:
	.string	"sd_getCD"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.3_166) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
