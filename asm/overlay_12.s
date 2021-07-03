	.include "asm/macros.inc"
	.include "global.inc"

	.text

	thumb_func_start ov12_022378C0
ov12_022378C0: ; 0x022378C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r0, #0
	bl sub_020072A4
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0xf
	bls _022378D6
	b _02237AFA
_022378D6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022378E2: ; jump table
	.short _02237902 - _022378E2 - 2 ; case 0
	.short _0223792E - _022378E2 - 2 ; case 1
	.short _02237974 - _022378E2 - 2 ; case 2
	.short _0223798A - _022378E2 - 2 ; case 3
	.short _022379A0 - _022378E2 - 2 ; case 4
	.short _022379B0 - _022378E2 - 2 ; case 5
	.short _022379C6 - _022378E2 - 2 ; case 6
	.short _022379E2 - _022378E2 - 2 ; case 7
	.short _022379F4 - _022378E2 - 2 ; case 8
	.short _02237A10 - _022378E2 - 2 ; case 9
	.short _02237A2C - _022378E2 - 2 ; case 10
	.short _02237A48 - _022378E2 - 2 ; case 11
	.short _02237A64 - _022378E2 - 2 ; case 12
	.short _02237A6A - _022378E2 - 2 ; case 13
	.short _02237AD2 - _022378E2 - 2 ; case 14
	.short _02237AF4 - _022378E2 - 2 ; case 15
_02237902:
	mov r2, #0xb
	mov r0, #3
	mov r1, #5
	lsl r2, r2, #0x10
	bl sub_0201A910
	ldr r1, [r5]
	mov r0, #4
	tst r0, r1
	beq _02237928
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _02237928
	mov r0, #1
	str r0, [r4]
	b _02237AFA
_02237928:
	mov r0, #3
	str r0, [r4]
	b _02237AFA
_0223792E:
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_022399D4
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02039F68
	bl sub_02039998
	cmp r0, #0
	bne _02237962
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x15
	bl sub_0202D0FC
	ldr r0, [r5]
	cmp r0, #0x8f
	beq _0223796E
	mov r0, #1
	bl sub_02005BEC
	b _0223796E
_02237962:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x1a
	bl sub_0202D0FC
_0223796E:
	mov r0, #2
	str r0, [r4]
	b _02237AFA
_02237974:
	add r0, r6, #0
	bl ov12_02239C28
	cmp r0, #1
	bne _022379EC
	add r0, r6, #0
	bl ov12_0223A088
	mov r0, #3
	str r0, [r4]
	b _02237AFA
_0223798A:
	add r0, r6, #0
	bl ov12_0223A0D4
	cmp r0, #1
	bne _0223799A
	mov r0, #4
	str r0, [r4]
	b _02237AFA
_0223799A:
	mov r0, #5
	str r0, [r4]
	b _02237AFA
_022379A0:
	add r0, r6, #0
	bl ov12_0223A218
	cmp r0, #1
	bne _022379EC
	mov r0, #5
	str r0, [r4]
	b _02237AFA
_022379B0:
	add r0, r6, #0
	bl ov12_0223A260
	cmp r0, #1
	bne _022379C0
	mov r0, #6
	str r0, [r4]
	b _02237AFA
_022379C0:
	mov r0, #8
	str r0, [r4]
	b _02237AFA
_022379C6:
	add r0, r6, #0
	bl ov12_0223A3A8
	cmp r0, #1
	bne _022379EC
	ldr r0, _02237B00 ; =0x00000005
	bl UnloadOverlayByID
	mov r0, #7
	str r0, [r4]
	mov r0, #0x3d
	bl sub_02037AC0
	b _02237AFA
_022379E2:
	mov r0, #0x3d
	bl sub_02037B38
	cmp r0, #0
	bne _022379EE
_022379EC:
	b _02237AFA
_022379EE:
	mov r0, #8
	str r0, [r4]
	b _02237AFA
_022379F4:
	ldr r0, _02237B04 ; =0x00000006
	mov r1, #2
	bl HandleLoadOverlay
	ldr r0, _02237B08 ; =0x00000007
	mov r1, #2
	bl HandleLoadOverlay
	add r0, r6, #0
	bl ov12_02237F18
	mov r0, #9
	str r0, [r4]
	b _02237AFA
_02237A10:
	add r0, r6, #0
	bl ov12_02238358
	cmp r0, #1
	bne _02237AFA
	add r0, r6, #0
	bl ov12_0223843C
	mov r0, #0
	bl sub_02005BEC
	mov r0, #0xa
	str r0, [r4]
	b _02237AFA
_02237A2C:
	add r0, r6, #0
	bl ov12_0223A3F0
	cmp r0, #1
	bne _02237A3C
	mov r0, #0xb
	str r0, [r4]
	b _02237AFA
_02237A3C:
	mov r0, #5
	bl sub_0201A9C4
	mov r0, #0xd
	str r0, [r4]
	b _02237AFA
_02237A48:
	add r0, r6, #0
	bl ov12_0223A5E4
	cmp r0, #1
	bne _02237AFA
	ldr r0, _02237B00 ; =0x00000005
	bl UnloadOverlayByID
	mov r0, #5
	bl sub_0201A9C4
	mov r0, #0xc
	str r0, [r4]
	b _02237AFA
_02237A64:
	mov r0, #0xf
	str r0, [r4]
	b _02237AFA
_02237A6A:
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl ov12_0223B5EC
	add r6, r0, #0
	beq _02237ACC
	mov r0, #3
	mov r1, #0x47
	lsl r2, r0, #0x10
	bl sub_0201A910
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	bl sub_02074644
	mov r2, #0x59
	lsl r2, r2, #2
	add r1, r0, #0
	ldr r0, [r5, r2]
	mov r3, #0x47
	str r0, [sp]
	add r0, r2, #0
	sub r0, #0x54
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	add r0, r2, #0
	sub r0, #0x5c
	ldr r0, [r5, r0]
	sub r2, #0x20
	str r0, [sp, #8]
	ldr r0, [r5, r2]
	add r2, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	str r3, [sp, #0x18]
	add r3, #0xe9
	ldr r0, [r5, #4]
	ldr r3, [r5, r3]
	bl sub_02075A7C
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xe
	str r0, [r4]
	b _02237AFA
_02237ACC:
	mov r0, #0xf
	str r0, [r4]
	b _02237AFA
_02237AD2:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r5, [r5, r0]
	add r0, r5, #0
	bl sub_02075D3C
	cmp r0, #1
	bne _02237AFA
	add r0, r5, #0
	bl sub_02075D4C
	mov r0, #0x47
	bl sub_0201A9C4
	mov r0, #0xd
	str r0, [r4]
	b _02237AFA
_02237AF4:
	add sp, #0x24
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02237AFA:
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02237B00: .word 0x00000005
_02237B04: .word 0x00000006
_02237B08: .word 0x00000007
	thumb_func_end ov12_022378C0

	thumb_func_start ov12_02237B0C
ov12_02237B0C: ; 0x02237B0C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_0226631C
	ldr r0, [r4, #4]
	bl ov12_022660A8
	ldr r1, _02237B58 ; =0x000023FF
	mov r0, #4
	ldrb r2, [r4, r1]
	orr r2, r0
	strb r2, [r4, r1]
	bl sub_02002DB4
	add r0, r4, #0
	mov r1, #3
	bl ov12_0223BBF0
	ldr r0, _02237B5C ; =0x00002445
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02237B46
	ldr r0, _02237B60 ; =0x00000007
	bl UnloadOverlayByID
	b _02237B4C
_02237B46:
	ldr r0, _02237B64 ; =0x0000000A
	bl UnloadOverlayByID
_02237B4C:
	ldr r0, _02237B68 ; =0x00000008
	mov r1, #2
	bl HandleLoadOverlay
	pop {r4, pc}
	nop
_02237B58: .word 0x000023FF
_02237B5C: .word 0x00002445
_02237B60: .word 0x00000007
_02237B64: .word 0x0000000A
_02237B68: .word 0x00000008
	thumb_func_end ov12_02237B0C

	thumb_func_start ov12_02237B6C
ov12_02237B6C: ; 0x02237B6C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0201A0FC
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_0226631C
	ldr r0, [r4, #8]
	bl sub_0201D520
	ldr r0, [r4, #4]
	bl ov12_02238A30
	add r0, r4, #0
	bl ov12_02238A64
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_0200D998
	add r4, #0x90
	ldr r0, [r4]
	bl sub_0200D108
	bl sub_020205AC
	mov r0, #4
	bl sub_02002DB4
	pop {r4, pc}
	thumb_func_end ov12_02237B6C

	thumb_func_start ov12_02237BB8
ov12_02237BB8: ; 0x02237BB8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02237CB0 ; =0x00000008
	bl UnloadOverlayByID
	ldr r0, _02237CB4 ; =0x00002445
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _02237BD6
	ldr r0, _02237CB8 ; =0x00000007
	mov r1, #2
	bl HandleLoadOverlay
	b _02237BDE
_02237BD6:
	ldr r0, _02237CBC ; =0x0000000A
	mov r1, #2
	bl HandleLoadOverlay
_02237BDE:
	add r0, r5, #0
	mov r1, #0
	bl ov12_0223BBF0
	bl sub_02026E9C
	add r4, r0, #0
	bl sub_02026E94
	add r1, r0, #0
	mov r0, #0
	add r2, r4, #0
	bl sub_020D4790
	mov r0, #7
	mov r1, #5
	bl sub_02007688
	add r6, r0, #0
	mov r0, #8
	mov r1, #5
	bl sub_02007688
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0223BFC0
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223AAC8
	add r3, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r2, r5, #0
	bl ov12_022660D0
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #4
	mov r1, #5
	bl sub_02002CEC
	ldr r1, _02237CC0 ; =0x000023FF
	mov r0, #2
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
	ldr r0, [r5, #4]
	bl ov12_0226604C
	mov r0, #0x10
	mov r1, #1
	bl sub_02022CC8
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov12_02266390
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	mov r2, #0x67
	str r3, [sp, #4]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_02266508
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl ov12_02266644
	add r0, r6, #0
	bl sub_0200770C
	add r0, r4, #0
	bl sub_0200770C
	mov r0, #1
	bl sub_020027F0
	add r0, r5, #0
	bl ov12_0223A620
	add r5, #0x90
	ldr r0, [r5]
	bl sub_0200CF6C
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_02009FC8
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02237CB0: .word 0x00000008
_02237CB4: .word 0x00002445
_02237CB8: .word 0x00000007
_02237CBC: .word 0x0000000A
_02237CC0: .word 0x000023FF
	thumb_func_end ov12_02237BB8

	thumb_func_start ov12_02237CC4
ov12_02237CC4: ; 0x02237CC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0201D520
	mov r0, #1
	mov r1, #0
	bl sub_02022C60
	mov r0, #2
	mov r1, #0
	bl sub_02022C60
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0201BB4C
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_0201BB4C
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_0201BB4C
	add r0, r4, #0
	bl ov12_0223BCC8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_02237CC4

	thumb_func_start ov12_02237D00
ov12_02237D00: ; 0x02237D00
	push {r4, r5, r6, lr}
	sub sp, #0x68
	ldr r1, _02237EB4 ; =0x000023FF
	add r5, r0, #0
	ldrb r2, [r5, r1]
	mov r0, #1
	ldr r4, _02237EB8 ; =0x0226C120
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	add r3, sp, #0x14
	mov r2, #0xa
_02237D1A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02237D1A
	ldr r0, [r4]
	mov r1, #1
	str r0, [r3]
	ldr r0, [r5, #4]
	add r2, sp, #0x14
	mov r3, #0
	bl sub_0201B1E4
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0201CAE0
	ldr r0, [r5, #4]
	mov r1, #2
	add r2, sp, #0x30
	mov r3, #0
	bl sub_0201B1E4
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_0201CAE0
	ldr r0, [r5, #4]
	mov r1, #3
	add r2, sp, #0x4c
	mov r3, #0
	bl sub_0201B1E4
	ldr r0, [r5, #4]
	mov r1, #3
	bl sub_0201CAE0
	ldr r1, _02237EBC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_02022C60
	add r0, r5, #0
	bl ov12_0223B708
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #4]
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200EB80
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r1, _02237EC0 ; =0x00002404
	ldr r2, [r5, #4]
	ldr r1, [r5, r1]
	mov r0, #7
	add r1, r1, #3
	mov r3, #3
	bl sub_020078F0
	add r0, r5, #0
	bl ov12_0223B52C
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, _02237EC0 ; =0x00002404
	ldr r0, [r5, #0x28]
	ldr r6, [r5, r3]
	mov r1, #7
	lsl r3, r6, #1
	add r3, r6, r3
	add r3, #0xb0
	add r2, r3, r2
	mov r3, #5
	bl sub_02003200
	add r0, r4, #0
	bl sub_0200E640
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0x26
	mov r3, #5
	bl sub_02003200
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0x10
	mov r2, #8
	mov r3, #5
	bl sub_02003200
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #7
	mov r1, #2
	mov r3, #3
	bl sub_02007914
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _02237EC4 ; =0xFFFF1FFF
	ldr r3, _02237EC8 ; =0x04001000
	and r2, r1
	str r2, [r0]
	ldr r2, [r3]
	and r1, r2
	add r2, r0, #0
	str r1, [r3]
	add r2, #0x48
	ldrh r3, [r2]
	mov r1, #0x3f
	add r0, #0x4a
	bic r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	bl sub_02022D24
	mov r0, #0x10
	mov r1, #1
	bl sub_02022C60
	mov r0, #0x10
	mov r1, #1
	bl sub_02022CC8
	ldr r0, _02237ECC ; =ov12_02239730
	add r1, r5, #0
	bl sub_0201A0FC
	ldr r0, _02237EB4 ; =0x000023FF
	mov r3, #2
	ldrb r1, [r5, r0]
	mov r2, #1
	orr r1, r3
	strb r1, [r5, r0]
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	bl sub_0201D40C
	ldr r0, [r5, #8]
	mov r1, #0xff
	bl sub_0201D978
	ldr r0, [r5, #8]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E998
	add r0, r5, #0
	bl ov12_0223A620
	add sp, #0x68
	pop {r4, r5, r6, pc}
	nop
_02237EB4: .word 0x000023FF
_02237EB8: .word 0x0226C120
_02237EBC: .word 0x04000008
_02237EC0: .word 0x00002404
_02237EC4: .word 0xFFFF1FFF
_02237EC8: .word 0x04001000
_02237ECC: .word ov12_02239730
	thumb_func_end ov12_02237D00

	thumb_func_start ov12_02237ED0
ov12_02237ED0: ; 0x02237ED0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02237F0C ; =0x00002445
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bne _02237EE2
	bl GF_AssertFail
_02237EE2:
	ldr r0, _02237F0C ; =0x00002445
	cmp r4, #0
	strb r4, [r5, r0]
	bne _02237EFA
	ldr r0, _02237F10 ; =0x0000000A
	bl UnloadOverlayByID
	ldr r0, _02237F14 ; =0x00000007
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, r4, r5, pc}
_02237EFA:
	ldr r0, _02237F14 ; =0x00000007
	bl UnloadOverlayByID
	ldr r0, _02237F10 ; =0x0000000A
	mov r1, #2
	bl HandleLoadOverlay
	pop {r3, r4, r5, pc}
	nop
_02237F0C: .word 0x00002445
_02237F10: .word 0x0000000A
_02237F14: .word 0x00000007
	thumb_func_end ov12_02237ED0

	thumb_func_start ov12_02237F18
ov12_02237F18: ; 0x02237F18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl sub_02007290
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020072A4
	add r7, r0, #0
	bl sub_02026E8C
	add r5, r0, #0
	bl sub_02026E84
	add r1, r0, #0
	mov r0, #0
	add r2, r5, #0
	bl sub_020D4790
	bl sub_02026E9C
	add r5, r0, #0
	bl sub_02026E94
	add r1, r0, #0
	mov r0, #0
	add r2, r5, #0
	bl sub_020D4790
	bl ov12_02239644
	str r0, [r4]
	bl sub_0201A108
	mov r0, #4
	mov r1, #5
	bl sub_02002CEC
	mov r0, #0xe
	mov r1, #2
	mov r2, #0xf
	mov r3, #5
	bl sub_0200CC74
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #5
	bl sub_020030E8
	str r0, [r4, #0x28]
	mov r1, #1
	bl sub_02003B50
	mov r2, #2
	ldr r0, [r4, #0x28]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #5
	bl sub_02003120
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r2, r1, #9
	mov r3, #5
	bl sub_02003120
	mov r2, #7
	ldr r0, [r4, #0x28]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #5
	bl sub_02003120
	mov r2, #2
	ldr r0, [r4, #0x28]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #5
	bl sub_02003120
	mov r0, #5
	bl sub_0201AC88
	str r0, [r4, #4]
	mov r0, #5
	mov r1, #3
	bl sub_0201D39C
	str r0, [r4, #8]
	mov r6, #0
	add r5, r4, #0
_02237FD8:
	mov r1, #0x32
	mov r0, #5
	lsl r1, r1, #6
	bl sub_0201AA8C
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _02237FD8
	mov r0, #0x40
	mov r1, #5
	bl sub_0202055C
	mov r0, #7
	mov r1, #5
	bl sub_02007688
	add r5, r0, #0
	mov r0, #8
	mov r1, #5
	bl sub_02007688
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_0223BFC0
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_0223AAC8
	add r3, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, r6, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r4, #0
	bl ov12_022660D0
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	bl sub_0200770C
	add r0, r6, #0
	bl sub_0200770C
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov12_022387AC
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	mov r3, #2
	bl sub_0201D40C
	ldr r0, [r4, #8]
	mov r1, #0xff
	bl sub_0201D978
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E998
	mov r0, #5
	bl sub_0200CF18
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	ldr r1, _02238314 ; =0x0226C060
	ldr r2, _02238318 ; =0x0226C018
	mov r3, #0x20
	bl sub_0200CF70
	ldr r1, _0223831C ; =0x00100010
	mov r0, #1
	bl sub_02009FE8
	mov r0, #1
	bl sub_0200A080
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0200CF38
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0x80
	bl sub_0200CFF4
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, _02238320 ; =0x0226C02C
	bl sub_0200D3F8
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	bl sub_0200CF6C
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_02009FC8
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_02266390
	mov r0, #7
	mov r1, #5
	bl sub_02007688
	add r6, r0, #0
	mov r0, #8
	mov r1, #5
	bl sub_02007688
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	mov r2, #0x67
	str r3, [sp, #4]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02266508
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov12_02266644
	add r0, r6, #0
	bl sub_0200770C
	add r0, r5, #0
	bl sub_0200770C
	mov r0, #5
	bl sub_02007FD4
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	mov r2, #0xc0
	bl sub_02009408
	add r0, r4, #0
	bl ov12_0223BC48
	bl ov12_022396F0
	mov r0, #5
	bl ov07_0221BEDC
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r4, #0
	bl ov12_022389B8
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xc5
	mov r3, #5
	bl sub_0200BAF8
	str r0, [r4, #0xc]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #3
	mov r3, #5
	bl sub_0200BAF8
	str r0, [r4, #0x10]
	mov r0, #5
	bl sub_0200BD08
	str r0, [r4, #0x14]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #5
	bl sub_02026354
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0200335C
	ldr r1, _02238324 ; =0x00002228
	mov r2, #0xe0
	add r1, r4, r1
	bl sub_020D47B8
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0200335C
	ldr r1, _02238328 ; =0x00002308
	mov r2, #0xe0
	add r1, r4, r1
	bl sub_020D47B8
	add r0, r4, #0
	bl ov12_0223B52C
	mov r1, #0
	lsl r6, r0, #2
	str r1, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	ldr r3, _0223832C ; =0x00002404
	mov r5, #0xc
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x28]
	mul r5, r3
	ldr r3, _02238330 ; =0x0226C1C8
	mov r2, #2
	add r3, r3, r5
	ldr r3, [r6, r3]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_02003D5C
	mov r0, #0xc0
	str r0, [sp]
	add r0, #0x40
	str r0, [sp, #4]
	ldr r3, _0223832C ; =0x00002404
	mov r5, #0xc
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x28]
	mul r5, r3
	ldr r3, _02238330 ; =0x0226C1C8
	mov r1, #0
	add r3, r3, r5
	ldr r3, [r6, r3]
	mov r2, #2
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_02003D5C
	mov r0, #0
	str r0, [sp]
	mov r0, #0xdf
	str r0, [sp, #4]
	ldr r3, _0223832C ; =0x00002404
	mov r5, #0xc
	ldr r3, [r4, r3]
	mov r1, #2
	mul r5, r3
	ldr r3, _02238330 ; =0x0226C1C8
	ldr r0, [r4, #0x28]
	add r3, r3, r5
	ldr r3, [r6, r3]
	add r2, r1, #0
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_02003D5C
	mov r1, #0
	mov r0, #0xa0
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02003D5C
	mov r2, #0
	str r2, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r1, #1
	add r3, r2, #0
	bl sub_02003D5C
	mov r2, #0
	str r2, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r3, _02238334 ; =0x0000FFFF
	mov r1, #3
	bl sub_02003D5C
	ldr r0, [r4, #0x28]
	mov r1, #0
	mov r2, #0xb
	mov r3, #5
	bl sub_020163E0
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_0201649C
	ldr r0, _02238338 ; =ov12_02239810
	ldr r2, _0223833C ; =0x0000EA60
	add r1, r4, #0
	bl sub_0200E320
	str r0, [r4, #0x1c]
	ldr r0, _02238340 ; =ov12_02239854
	ldr r2, _02238344 ; =0x0000C350
	add r1, r4, #0
	bl sub_0200E320
	str r0, [r4, #0x20]
	mov r2, #0x4b
	ldr r0, _02238348 ; =ov12_0223998C
	add r1, r4, #0
	lsl r2, r2, #4
	bl sub_0200E33C
	str r0, [r4, #0x24]
	mov r1, #0x32
	ldr r0, _0223834C ; =0x00002438
	mvn r1, r1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov12_0223A620
	add r0, r4, #0
	bl ov12_0223AA84
	bl sub_02078804
	mov r0, #5
	mov r1, #4
	mov r2, #0
	bl sub_02016EDC
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #5
	bl sub_02020654
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02238350 ; =0x0000240C
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0223830E
	mov r0, #0x6f
	ldr r1, _02238354 ; =0x00002484
	mov r5, #0
	lsl r0, r0, #2
_02238300:
	add r2, r7, r5
	ldrb r3, [r2, r0]
	add r2, r4, r5
	add r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _02238300
_0223830E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02238314: .word 0x0226C060
_02238318: .word 0x0226C018
_0223831C: .word 0x00100010
_02238320: .word 0x0226C02C
_02238324: .word 0x00002228
_02238328: .word 0x00002308
_0223832C: .word 0x00002404
_02238330: .word 0x0226C1C8
_02238334: .word 0x0000FFFF
_02238338: .word ov12_02239810
_0223833C: .word 0x0000EA60
_02238340: .word ov12_02239854
_02238344: .word 0x0000C350
_02238348: .word ov12_0223998C
_0223834C: .word 0x00002438
_02238350: .word 0x0000240C
_02238354: .word 0x00002484
	thumb_func_end ov12_02237F18

	thumb_func_start ov12_02238358
ov12_02238358: ; 0x02238358
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02007290
	add r4, r0, #0
	ldr r2, [r4, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _0223839E
	ldr r1, _02238430 ; =0x0000240C
	mov r2, #0x10
	ldr r3, [r4, r1]
	tst r2, r3
	bne _0223839E
	sub r1, #0x10
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02238380
	ldr r1, [r4, #0x30]
	bl ov12_022486B0
_02238380:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0223842A
	add r5, r4, #0
_0223838A:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02258E54
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223838A
	b _0223842A
_0223839E:
	ldr r0, _02238434 ; =0x000023FC
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _022383BA
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_022486B0
	ldr r1, _02238438 ; =0x000023FE
	strb r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_022621C4
_022383BA:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _022383E0
	add r5, r4, #0
	add r7, r6, #0
_022383C6:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02258E54
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_022621C4
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _022383C6
_022383E0:
	ldr r0, _02238438 ; =0x000023FE
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0223842A
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02238404
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_022486B0
	ldr r1, _02238438 ; =0x000023FE
	strb r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_022621C4
_02238404:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0223842A
	add r5, r4, #0
	add r7, r6, #0
_02238410:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02258E54
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_022621C4
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02238410
_0223842A:
	ldr r0, _02238438 ; =0x000023FE
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02238430: .word 0x0000240C
_02238434: .word 0x000023FC
_02238438: .word 0x000023FE
	thumb_func_end ov12_02238358

	thumb_func_start ov12_0223843C
ov12_0223843C: ; 0x0223843C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02007290
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020072A4
	ldr r3, _02238778 ; =0x0000244C
	mov r2, #0x67
	ldr r1, [r4, r3]
	add r7, r0, #0
	lsl r2, r2, #2
	str r1, [r7, r2]
	add r1, r3, #0
	sub r1, #0x40
	ldr r1, [r4, r1]
	sub r2, #0x10
	str r1, [r7, r2]
	sub r3, #0x40
	ldr r2, [r4, r3]
	mov r1, #0x10
	tst r1, r2
	bne _02238470
	bl sub_020302A4
_02238470:
	ldr r0, _0223877C ; =0x00002445
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02238480
	add r0, r4, #0
	mov r1, #0
	bl ov12_02237ED0
_02238480:
	ldr r1, [r7]
	ldr r0, _02238780 ; =0x00000AA4
	tst r0, r1
	beq _0223848C
	mov r5, #0
	b _022384A0
_0223848C:
	ldr r0, _02238784 ; =0x00002420
	ldrb r0, [r4, r0]
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0223849E
	ldr r5, _02238788 ; =0x00007FFF
	b _022384A0
_0223849E:
	mov r5, #0
_022384A0:
	mov r0, #0
	add r1, r5, #0
	bl sub_0200FBF4
	mov r0, #1
	add r1, r5, #0
	bl sub_0200FBF4
	add r0, r4, #0
	bl ov12_0223B798
	ldr r0, _02238784 ; =0x00002420
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _022384CE
	ldr r0, [r4, #0x6c]
	mov r1, #0
	bl sub_02074644
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_0223B870
_022384CE:
	mov r0, #0
	str r0, [sp]
	add r6, r7, #0
	add r5, r4, #0
_022384D6:
	ldr r0, [r5, #0x68]
	ldr r1, [r6, #4]
	bl sub_020748B8
	ldr r0, [r5, #0x68]
	bl sub_0201AB0C
	add r1, r6, #0
	add r1, #0xf8
	ldr r0, [r5, #0x48]
	ldr r1, [r1]
	bl sub_02028EE4
	ldr r0, [r5, #0x48]
	bl sub_0201AB0C
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp]
	cmp r0, #4
	blt _022384D6
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020164C4
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [r4, #0x58]
	ldr r1, [r7, r1]
	bl sub_020781B4
	ldr r0, [r4, #0x58]
	bl sub_0201AB0C
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [r4, #0x60]
	ldr r1, [r7, r1]
	bl sub_020293FC
	ldr r0, [r4, #0x60]
	bl sub_0201AB0C
	mov r0, #0x45
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r7, r0]
	add r1, r0, #0
	ldr r2, [r4, #0x5c]
	sub r1, #8
	str r2, [r7, r1]
	add r1, r0, #0
	add r1, #0xac
	ldr r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xa4
	str r2, [r7, r1]
	add r1, r4, #0
	add r1, #0x98
	ldr r2, [r1]
	add r1, r0, #0
	add r1, #0x14
	str r2, [r7, r1]
	add r1, r4, #0
	add r1, #0x9c
	ldr r2, [r1]
	add r1, r0, #0
	add r1, #0x20
	str r2, [r7, r1]
	add r1, r0, #0
	ldr r2, _0223878C ; =0x00002414
	add r1, #0x7c
	ldr r3, [r4, r2]
	add r0, #0x5c
	str r3, [r7, r1]
	add r1, r2, #0
	add r1, #0xc
	ldrb r3, [r4, r1]
	mov r1, #0x3f
	add r2, #0x28
	and r1, r3
	str r1, [r7, #0x14]
	ldr r1, [r4, r2]
	mov r2, #4
	str r1, [r7, r0]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r3, #0
	bl ov12_022581D4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov12_022581D4
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	mov r3, #0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #6
	bl ov12_022581D4
	add r5, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #6
	mov r3, #2
	bl ov12_022581D4
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	add r0, r5, r0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #7
	mov r3, #0
	bl ov12_022581D4
	add r5, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #7
	mov r3, #2
	bl ov12_022581D4
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, [r7, r1]
	add r0, r5, r0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov12_022581D4
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r0, _02238790 ; =0x00002478
	add r1, #0x10
	ldr r0, [r4, r0]
	mov r6, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	str r0, [r7, r1]
	mov r7, #0x1d
	add r5, r4, #0
	lsl r7, r7, #4
_0223861E:
	ldr r0, [r5, r7]
	bl sub_0201AB0C
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _0223861E
	ldr r0, [r4, #0x18]
	bl sub_0201AB0C
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02003150
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02003150
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_02003150
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_02003150
	ldr r0, [r4, #0x28]
	bl sub_02003104
	ldr r0, [r4, #0xc]
	bl sub_0200BB44
	ldr r0, [r4, #0x10]
	bl sub_0200BB44
	ldr r0, [r4, #0x14]
	bl sub_0200BDA0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02016F2C
	bl sub_02014F84
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl ov07_0221BFE0
	ldr r0, [r4, #0x30]
	bl ov12_022486FC
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _022386A8
	ldr r7, _02238794 ; =0x000023FD
	add r5, r4, #0
_02238694:
	ldrb r2, [r4, r7]
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02258E7C
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02238694
_022386A8:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02008524
	ldr r0, _02238794 ; =0x000023FD
	ldrb r0, [r4, r0]
	cmp r0, #2
	beq _022386C0
	add r0, r4, #0
	bl ov12_02237B6C
_022386C0:
	mov r0, #0
	bl sub_02002B34
	mov r0, #0
	bl sub_02002B50
	mov r0, #0
	bl sub_02002B8C
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_0201D54C
	ldr r0, [r4, #4]
	bl sub_0201AB0C
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0201AB0C
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201AB0C
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200CD94
	ldr r0, [r4, #0x1c]
	bl sub_0200E390
	ldr r0, [r4, #0x20]
	bl sub_0200E390
	bl sub_02021238
	ldr r0, [r4]
	bl ov12_022396E8
	ldr r0, _02238798 ; =0x00002434
	ldr r0, [r4, r0]
	bl SetLCRNGSeed
	add r0, r4, #0
	bl ov12_0223BD2C
	cmp r0, #0
	beq _0223872E
	ldr r0, _0223879C ; =0x00000704
	mov r1, #0
	bl sub_02006154
_0223872E:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202067C
	add r0, r4, #0
	bl ov12_0223BFEC
	cmp r0, #0
	beq _02238748
	mov r0, #0x7f
	bl sub_020059D0
_02238748:
	mov r0, #0x92
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238756
	bl ov12_0226BEF0
_02238756:
	add r0, r4, #0
	bl sub_0201AB0C
	ldr r0, _022387A0 ; =0x00000006
	bl UnloadOverlayByID
	ldr r0, _022387A4 ; =0x00000007
	bl UnloadOverlayByID
	bl sub_02039998
	cmp r0, #0
	bne _02238776
	ldr r0, _022387A8 ; =0x00000012
	bl UnloadOverlayByID
_02238776:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02238778: .word 0x0000244C
_0223877C: .word 0x00002445
_02238780: .word 0x00000AA4
_02238784: .word 0x00002420
_02238788: .word 0x00007FFF
_0223878C: .word 0x00002414
_02238790: .word 0x00002478
_02238794: .word 0x000023FD
_02238798: .word 0x00002434
_0223879C: .word 0x00000704
_022387A0: .word 0x00000006
_022387A4: .word 0x00000007
_022387A8: .word 0x00000012
	thumb_func_end ov12_0223843C

	thumb_func_start ov12_022387AC
ov12_022387AC: ; 0x022387AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02022C54
	ldr r6, _02238994 ; =0x0226C0A8
	add r3, sp, #0x20
	mov r2, #5
_022387BE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022387BE
	add r0, sp, #0x20
	bl sub_02022BE8
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020D47EC
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020D47EC
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020D47EC
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020D47EC
	mov r0, #0
	bl sub_0200FBE8
	mov r0, #1
	bl sub_0200FBE8
	ldr r6, _02238998 ; =0x0226BFE8
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201ACB0
	ldr r1, _0223899C ; =0x000023FF
	mov r0, #1
	ldrb r2, [r5, r1]
	ldr r6, _022389A0 ; =0x0226C174
	add r3, sp, #0x48
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	mov r2, #0xa
_02238838:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02238838
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	add r2, sp, #0x48
	mov r3, #0
	bl sub_0201B1E4
	add r0, r4, #0
	mov r1, #1
	bl sub_0201CAE0
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x64
	mov r3, #0
	bl sub_0201B1E4
	add r0, r4, #0
	mov r1, #2
	bl sub_0201CAE0
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x80
	mov r3, #0
	bl sub_0201B1E4
	add r0, r4, #0
	mov r1, #3
	bl sub_0201CAE0
	ldr r1, _022389A4 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_02022C60
	add r0, r4, #0
	bl ov12_0226604C
	add r0, r5, #0
	bl ov12_0223B708
	add r7, r0, #0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #5
	mov r1, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200EB80
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r1, _022389A8 ; =0x00002404
	mov r0, #7
	ldr r1, [r5, r1]
	add r2, r4, #0
	add r1, r1, #3
	mov r3, #3
	bl sub_020078F0
	add r0, r5, #0
	bl ov12_0223B52C
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _022389A8 ; =0x00002404
	ldr r0, [r5, #0x28]
	ldr r3, [r5, r2]
	mov r1, #7
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, #0xb0
	add r2, r2, r6
	mov r3, #5
	bl sub_02003200
	add r0, r7, #0
	bl sub_0200E640
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0x26
	mov r3, #5
	bl sub_02003200
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0x10
	mov r2, #8
	mov r3, #5
	bl sub_02003200
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #7
	mov r1, #2
	add r2, r4, #0
	mov r3, #3
	bl sub_02007914
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _022389AC ; =0xFFFF1FFF
	ldr r3, _022389B0 ; =0x04001000
	and r2, r1
	str r2, [r0]
	ldr r2, [r3]
	and r1, r2
	add r2, r0, #0
	str r1, [r3]
	add r2, #0x48
	ldrh r3, [r2]
	mov r1, #0x3f
	add r0, #0x4a
	bic r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	bl sub_02022D24
	mov r0, #0x10
	mov r1, #1
	bl sub_02022C60
	mov r0, #0x10
	mov r1, #1
	bl sub_02022CC8
	ldr r0, _022389B4 ; =ov12_02239730
	add r1, r5, #0
	bl sub_0201A0FC
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02238994: .word 0x0226C0A8
_02238998: .word 0x0226BFE8
_0223899C: .word 0x000023FF
_022389A0: .word 0x0226C174
_022389A4: .word 0x04000008
_022389A8: .word 0x00002404
_022389AC: .word 0xFFFF1FFF
_022389B0: .word 0x04001000
_022389B4: .word ov12_02239730
	thumb_func_end ov12_022387AC

	thumb_func_start ov12_022389B8
ov12_022389B8: ; 0x022389B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov12_0223AB40
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0
	add r3, r4, #0
	bl ov12_02265FD4
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl ov12_02265FD4
	add r0, r5, #0
	bl ov12_0223A7E4
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _02238A2A
	add r6, r5, #0
_022389F4:
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov12_022581D4
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_0223A880
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_0223AA88
	add r2, r0, #0
	ldr r1, [r6, #0x34]
	add r0, r5, #0
	add r3, r7, #0
	bl ov12_02258DB0
	ldr r0, [r5, #0x44]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r0
	blt _022389F4
_02238A2A:
	bl ov12_0223A7A0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022389B8

	thumb_func_start ov12_02238A30
ov12_02238A30: ; 0x02238A30
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_02022C60
	mov r0, #2
	mov r1, #0
	bl sub_02022C60
	add r0, r4, #0
	mov r1, #1
	bl sub_0201BB4C
	add r0, r4, #0
	mov r1, #2
	bl sub_0201BB4C
	add r0, r4, #0
	mov r1, #3
	bl sub_0201BB4C
	add r0, r4, #0
	bl ov12_022660A8
	pop {r4, pc}
	thumb_func_end ov12_02238A30

	thumb_func_start ov12_02238A64
ov12_02238A64: ; 0x02238A64
	bx lr
	.align 2, 0
	thumb_func_end ov12_02238A64

	thumb_func_start ov12_02238A68
ov12_02238A68: ; 0x02238A68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, [r1]
	str r1, [sp, #4]
	str r0, [r4, #0x2c]
	mov r7, #0
	add r6, r4, #0
	add r5, r1, #0
_02238A7A:
	mov r0, #5
	bl sub_02028ED0
	add r1, r0, #0
	add r0, r5, #0
	str r1, [r6, #0x48]
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_02028EE4
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r7, r7, #1
	str r0, [r6, #0x78]
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, #4
	blt _02238A7A
	mov r1, #0x1b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
	ldr r0, _02238D44 ; =0x00002446
	ldr r3, [sp, #4]
	strh r1, [r4, r0]
	mov r0, #0x1a
	ldr r1, _02238D48 ; =0x00002468
	mov r6, #0
	add r5, r4, #0
	lsl r0, r0, #4
_02238AB8:
	ldr r2, [r3, r0]
	add r6, r6, #1
	str r2, [r5, r1]
	add r3, r3, #4
	add r5, r5, #4
	cmp r6, #4
	blt _02238AB8
	bl sub_0201FD2C
	ldr r1, _02238D4C ; =0x00002434
	ldr r2, [sp, #4]
	str r0, [r4, r1]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r3, [r2, r0]
	add r2, r1, #0
	add r2, #0x14
	str r3, [r4, r2]
	ldr r2, [sp, #4]
	ldr r3, [r2, r0]
	add r2, r1, #0
	add r2, #0x18
	str r3, [r4, r2]
	ldr r2, [sp, #4]
	sub r0, #0x10
	ldr r0, [r2, r0]
	sub r1, #0x28
	str r0, [r4, r1]
	mov r0, #5
	bl sub_02078188
	str r0, [r4, #0x58]
	mov r1, #0x42
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [r4, #0x58]
	bl sub_020781B4
	mov r0, #5
	bl sub_020293E8
	str r0, [r4, #0x60]
	mov r1, #0x11
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, [r4, #0x60]
	bl sub_020293FC
	mov r1, #0x45
	lsl r1, r1, #2
	ldr r0, [sp, #4]
	add r2, r1, #0
	ldr r0, [r0, r1]
	add r3, r1, #0
	str r0, [r4, #0x64]
	ldr r0, [sp, #4]
	add r2, #0x1c
	ldr r2, [r0, r2]
	add r0, r1, #0
	add r0, #0xa0
	str r2, [r4, r0]
	add r2, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x34
	ldr r2, [r0, r2]
	add r0, r1, #0
	add r0, #0xa4
	str r2, [r4, r0]
	add r2, r1, #0
	ldr r0, [sp, #4]
	sub r2, #8
	ldr r0, [r0, r2]
	add r2, r1, #0
	str r0, [r4, #0x5c]
	ldr r0, [sp, #4]
	add r2, #0xa4
	ldr r2, [r0, r2]
	add r0, r1, #0
	add r0, #0xac
	str r2, [r4, r0]
	add r2, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x14
	ldr r2, [r0, r2]
	add r0, r4, #0
	add r0, #0x98
	str r2, [r0]
	add r2, r1, #0
	add r5, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x4c
	ldr r2, [r0, r2]
	ldr r0, _02238D50 ; =0x00002424
	add r3, #0x20
	str r2, [r4, r0]
	ldr r2, [sp, #4]
	add r5, #0x58
	ldr r3, [r2, r3]
	add r2, r4, #0
	add r2, #0x9c
	str r3, [r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x7c
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x10
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x3c
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x24
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x38
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x20
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x40
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x1c
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x48
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x14
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x80
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #8
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x50
	ldr r3, [r2, r3]
	add r2, r0, #4
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x54
	ldr r3, [r2, r3]
	add r2, r0, #0
	add r2, #0xc
	str r3, [r4, r2]
	add r2, r0, #0
	add r2, #0x54
	ldr r2, [r4, r2]
	mov r3, #2
	bic r2, r3
	ldr r3, [sp, #4]
	ldr r3, [r3, r5]
	add r5, r1, #0
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1e
	orr r3, r2
	add r2, r0, #0
	add r2, #0x54
	str r3, [r4, r2]
	add r2, r0, #0
	add r2, #0x54
	ldr r2, [r4, r2]
	mov r3, #8
	bic r2, r3
	ldr r3, [sp, #4]
	add r5, #0xbc
	ldr r3, [r3, r5]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1c
	orr r3, r2
	add r2, r0, #0
	add r2, #0x54
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x60
	ldr r2, [r2, r3]
	add r0, #8
	str r2, [r4, r0]
	ldr r0, [sp, #4]
	add r1, #0x30
	ldr r0, [r0, r1]
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	sub r1, #0xd8
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02238C52
	bl GF_AssertFail
_02238C52:
	mov r1, #0x72
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	ldr r0, _02238D54 ; =0x00002488
	ldr r5, [sp, #4]
	str r1, [r4, r0]
	mov r0, #0
	str r0, [sp, #8]
	str r4, [sp, #0x34]
	add r6, r5, #0
	add r7, r4, #0
_02238C6A:
	ldr r0, [sp, #0x34]
	ldr r1, [r5, #0x18]
	add r0, #0xa0
	strh r1, [r0]
	add r3, r6, #0
	add r2, r7, #0
	mov r0, #6
	add r3, #0x28
	add r2, #0xac
	mov ip, r0
_02238C7E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bne _02238C7E
	ldr r0, [r3]
	add r5, r5, #4
	str r0, [r2]
	ldr r0, [sp, #0x34]
	add r6, #0x34
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	add r7, #0x34
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _02238C6A
	add r0, r4, #0
	bl ov12_02248660
	ldr r7, _02238D58 ; =0x0000248C
	str r0, [r4, #0x30]
	mov r5, #0
	add r6, r4, #0
_02238CB2:
	mov r0, #5
	bl sub_020744BC
	str r0, [r6, #0x68]
	ldr r0, [sp, #4]
	add r6, r6, #4
	add r1, r0, r5
	mov r0, #0x73
	lsl r0, r0, #2
	ldrb r1, [r1, r0]
	add r0, r4, r5
	add r5, r5, #1
	strb r1, [r0, r7]
	cmp r5, #4
	blt _02238CB2
	mov r0, #0
	ldr r6, [sp, #4]
	str r0, [sp, #0xc]
_02238CD6:
	ldr r0, [r6, #4]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _02238D08
_02238CE2:
	ldr r0, [r6, #4]
	add r1, r5, #0
	bl sub_02074644
	add r7, r0, #0
	bl sub_0206FF88
	str r0, [sp, #0x44]
	add r0, r7, #0
	mov r1, #0x6f
	add r2, sp, #0x44
	bl sub_0206EC40
	ldr r0, [r6, #4]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _02238CE2
_02238D08:
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _02238CD6
	ldr r0, [r4, #0x2c]
	mov r1, #4
	tst r1, r0
	bne _02238D1E
	b _022390CE
_02238D1E:
	add r0, r4, #0
	bl sub_02074E5C
	add r0, r4, #0
	bl ov12_0223BFC0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov12_0223A664
	ldr r1, [r4, #0x2c]
	mov r0, #0x80
	tst r0, r1
	beq _02238E22
	ldr r6, _02238D5C ; =0x0226C2DC
	b _02238D60
	.align 2, 0
_02238D44: .word 0x00002446
_02238D48: .word 0x00002468
_02238D4C: .word 0x00002434
_02238D50: .word 0x00002424
_02238D54: .word 0x00002488
_02238D58: .word 0x0000248C
_02238D5C: .word 0x0226C2DC
_02238D60:
	mov r5, #0
	add r7, r4, #0
_02238D64:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov12_02258D74
	str r0, [r7, #0x34]
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _02238D64
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_02238D86:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02260EA4
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_020748B8
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _02238D86
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _02238E18
	add r7, r4, #0
_02238DB2:
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _02238DFC
_02238DBE:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_02074644
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02238DF0
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02238DF0
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02238DFC
_02238DF0:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _02238DBE
_02238DFC:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022582B8
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0x10]
	cmp r0, r1
	blt _02238DB2
_02238E18:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_02256F28
	b _022390C4
_02238E22:
	mov r0, #8
	tst r0, r1
	beq _02238F04
	mov r5, #0
	add r6, r4, #0
_02238E2C:
	add r0, sp, #0x40
	strb r5, [r0]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl ov12_0223BFCC
	lsl r1, r5, #0x10
	add r7, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov12_0223BFCC
	ldr r1, _022390DC ; =0x0226C008
	lsl r2, r7, #2
	add r1, r1, r2
	ldrb r1, [r0, r1]
	add r0, sp, #0x40
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov12_02258D74
	str r0, [r6, #0x34]
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #4
	blt _02238E2C
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_02238E68:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov12_02260EA4
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_020748B8
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _02238E68
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _02238EFA
	add r7, r4, #0
_02238E94:
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _02238EDE
_02238EA0:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_02074644
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02238ED2
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02238ED2
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02238EDE
_02238ED2:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _02238EA0
_02238EDE:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022582B8
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _02238E94
_02238EFA:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_02256F28
	b _022390C4
_02238F04:
	mov r0, #2
	tst r0, r1
	bne _02238F0C
	b _02239018
_02238F0C:
	ldr r0, [sp, #0x38]
	ldr r1, _022390E0 ; =0x0226BFE0
	lsl r0, r0, #2
	mov r5, #0
	add r6, r1, r0
	add r7, r4, #0
_02238F18:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov12_02258D74
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov12_02260EA4
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _02238F18
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_02238F42:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_020748B8
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _02238F42
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _02239016
_02238F64:
	ldr r0, [sp, #0x18]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x30]
	lsl r0, r0, #2
	add r7, r4, r0
	ldr r0, [r7, #0x68]
	mov r6, #0
	bl sub_02074640
	cmp r0, #0
	ble _02238FFC
_02238F7C:
	ldr r0, [r7, #0x68]
	add r1, r6, #0
	bl sub_02074644
	ldr r1, [sp, #0x18]
	add r5, r0, #0
	cmp r1, #1
	ble _02238FC8
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x30]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022581D4
	cmp r6, r0
	beq _02238FF0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02238FF0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02238FF0
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02238FFC
	b _02238FF0
_02238FC8:
	mov r1, #5
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02238FF0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02238FF0
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02238FFC
_02238FF0:
	ldr r0, [r7, #0x68]
	add r6, r6, #1
	bl sub_02074640
	cmp r6, r0
	blt _02238F7C
_02238FFC:
	str r6, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x18]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022582B8
	ldr r0, [sp, #0x18]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _02238F64
_02239016:
	b _022390C4
_02239018:
	ldr r0, [sp, #0x38]
	ldr r1, _022390E4 ; =0x0226BFDC
	lsl r0, r0, #1
	mov r5, #0
	add r6, r1, r0
	add r7, r4, #0
_02239024:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov12_02258D74
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov12_02260EA4
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #2
	blt _02239024
	mov r0, #0
	str r5, [r4, #0x44]
	str r0, [sp, #0x1c]
	add r7, r4, #0
_02239050:
	ldr r0, [sp, #4]
	ldr r1, [r7, #0x68]
	ldr r0, [r0, #4]
	bl sub_020748B8
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _022390A4
_02239066:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_02074644
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02239098
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02239098
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _022390A4
_02239098:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _02239066
_022390A4:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022582B8
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	blt _02239050
_022390C4:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_02256F28
	b _0223948A
_022390CE:
	mov r1, #0x10
	tst r1, r0
	bne _022390D6
	b _022391EA
_022390D6:
	ldr r6, _022390E8 ; =0x0226C2DC
	b _022390EC
	nop
_022390DC: .word 0x0226C008
_022390E0: .word 0x0226BFE0
_022390E4: .word 0x0226BFDC
_022390E8: .word 0x0226C2DC
_022390EC:
	mov r5, #0
	add r7, r4, #0
_022390F0:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov12_02258D74
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov12_02260EA4
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _022390F0
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_0223911A:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_020748B8
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223911A
	ldr r0, [r4, #0x44]
	mov r7, #0
	cmp r0, #0
	ble _022391DA
_0223913A:
	add r0, r4, #0
	add r1, r7, #0
	mov r5, #0
	bl ov12_0223A834
	cmp r0, #0
	ble _022391BE
_02239148:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov12_0223A880
	add r6, r0, #0
	cmp r7, #2
	bne _02239188
	mov r1, #5
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _022391B0
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _022391B0
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _022391B0
	ldr r0, [sp, #0x3c]
	cmp r0, r5
	bne _022391BE
	b _022391B0
_02239188:
	mov r1, #5
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _022391B0
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _022391B0
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _022391BE
_022391B0:
	add r0, r4, #0
	add r1, r7, #0
	add r5, r5, #1
	bl ov12_0223A834
	cmp r5, r0
	blt _02239148
_022391BE:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #2
	add r3, r7, #0
	bl ov12_022582B8
	cmp r7, #0
	bne _022391D2
	str r5, [sp, #0x3c]
_022391D2:
	ldr r0, [r4, #0x44]
	add r7, r7, #1
	cmp r7, r0
	blt _0223913A
_022391DA:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_02256F28
	ldr r0, _022394D8 ; =0x000023FC
	mov r1, #1
	strb r1, [r4, r0]
	b _0223948A
_022391EA:
	mov r1, #8
	tst r1, r0
	beq _022392BA
	ldr r6, _022394DC ; =0x0226C2DC
	mov r5, #0
	add r7, r4, #0
_022391F6:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov12_02258D74
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov12_02260EA4
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _022391F6
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_02239220:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_020748B8
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _02239220
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _022392AA
	add r7, r4, #0
_02239244:
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _0223928E
_02239250:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_02074644
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02239282
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02239282
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _0223928E
_02239282:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _02239250
_0223928E:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022582B8
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _02239244
_022392AA:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_02256F28
	ldr r0, _022394D8 ; =0x000023FC
	mov r1, #1
	strb r1, [r4, r0]
	b _0223948A
_022392BA:
	mov r1, #2
	tst r0, r1
	bne _022392C2
	b _022393D6
_022392C2:
	ldr r6, _022394DC ; =0x0226C2DC
	mov r5, #0
	add r7, r4, #0
_022392C8:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov12_02258D74
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov12_02260EA4
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _022392C8
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_022392F2:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_020748B8
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _022392F2
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _022393C6
_02239314:
	ldr r0, [sp, #0x24]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x2c]
	lsl r0, r0, #2
	add r7, r4, r0
	ldr r0, [r7, #0x68]
	mov r6, #0
	bl sub_02074640
	cmp r0, #0
	ble _022393AC
_0223932C:
	ldr r0, [r7, #0x68]
	add r1, r6, #0
	bl sub_02074644
	ldr r1, [sp, #0x24]
	add r5, r0, #0
	cmp r1, #1
	ble _02239378
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x2c]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022581D4
	cmp r6, r0
	beq _022393A0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _022393A0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _022393A0
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _022393AC
	b _022393A0
_02239378:
	mov r1, #5
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _022393A0
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _022393A0
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _022393AC
_022393A0:
	ldr r0, [r7, #0x68]
	add r6, r6, #1
	bl sub_02074640
	cmp r6, r0
	blt _0223932C
_022393AC:
	str r6, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x24]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022582B8
	ldr r0, [sp, #0x24]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	blt _02239314
_022393C6:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_02256F28
	ldr r0, _022394D8 ; =0x000023FC
	mov r1, #1
	strb r1, [r4, r0]
	b _0223948A
_022393D6:
	ldr r6, _022394E0 ; =_0226BFD8
	mov r5, #0
	add r7, r4, #0
_022393DC:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov12_02258D74
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov12_02260EA4
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #2
	blt _022393DC
	mov r0, #0
	str r5, [r4, #0x44]
	str r0, [sp, #0x28]
	add r7, r4, #0
_02239408:
	ldr r0, [sp, #4]
	ldr r1, [r7, #0x68]
	ldr r0, [r0, #4]
	bl sub_020748B8
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _0223945C
_0223941E:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_02074644
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02239450
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02239450
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _0223945C
_02239450:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _0223941E
_0223945C:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x28]
	add r0, r4, #0
	mov r2, #2
	bl ov12_022582B8
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _02239408
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov12_02256F28
	ldr r0, _022394D8 ; =0x000023FC
	mov r1, #1
	strb r1, [r4, r0]
_0223948A:
	mov r0, #2
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #8
	tst r0, r1
	beq _022394A6
	ldr r0, [r4, #0x6c]
	mov r1, #0
	bl sub_02074644
	add r2, r4, #0
	mov r1, #0x90
	add r2, #0xf4
	bl sub_0206E540
_022394A6:
	ldr r1, [r4, #0x2c]
	mov r0, #1
	tst r0, r1
	beq _0223954E
	add r0, r4, #0
	add r0, #0xe1
	ldrb r0, [r0]
	bl ov12_022395BC
	cmp r0, #1
	beq _022394C8
	ldr r0, _022394E4 ; =0x00000149
	ldrb r0, [r4, r0]
	bl ov12_022395BC
	cmp r0, #1
	bne _0223954E
_022394C8:
	ldr r0, [r4, #0x68]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _02239516
	ldr r7, _022394E8 ; =0x00002408
	b _022394EC
	.align 2, 0
_022394D8: .word 0x000023FC
_022394DC: .word 0x0226C2DC
_022394E0: .word _0226BFD8
_022394E4: .word 0x00000149
_022394E8: .word 0x00002408
_022394EC:
	ldr r0, [r4, #0x68]
	add r1, r5, #0
	bl sub_02074644
	ldr r2, [r4, r7]
	add r6, r0, #0
	lsl r2, r2, #0x10
	mov r1, #3
	lsr r2, r2, #0x10
	bl sub_0206FE90
	add r0, r6, #0
	mov r1, #2
	bl sub_02097F0C
	ldr r0, [r4, #0x68]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _022394EC
_02239516:
	ldr r0, [r4, #0x70]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _0223954E
	ldr r7, _022395B0 ; =0x00002408
_02239524:
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl sub_02074644
	ldr r2, [r4, r7]
	add r6, r0, #0
	lsl r2, r2, #0x10
	mov r1, #3
	lsr r2, r2, #0x10
	bl sub_0206FE90
	add r0, r6, #0
	mov r1, #2
	bl sub_02097F0C
	ldr r0, [r4, #0x70]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _02239524
_0223954E:
	ldr r0, _022395B4 ; =0x0000247C
	mov r7, #0
	sub r6, r0, #4
	str r7, [r4, r0]
	add r1, r6, #0
	ldr r2, [r4, r1]
	mov r1, #4
	bic r2, r1
	sub r0, r0, #4
	str r2, [r4, r0]
	ldr r0, [r4, #0x44]
	add r5, r7, #0
	cmp r0, #0
	ble _02239594
_0223956A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223AA40
	bl sub_0202907C
	cmp r0, #7
	beq _0223957C
	mov r7, #1
_0223957C:
	cmp r0, #7
	beq _0223958C
	cmp r0, #8
	beq _0223958C
	ldr r1, [r4, r6]
	mov r0, #4
	orr r0, r1
	str r0, [r4, r6]
_0223958C:
	ldr r0, [r4, #0x44]
	add r5, r5, #1
	cmp r5, r0
	blt _0223956A
_02239594:
	ldr r0, _022395B8 ; =0x000023FC
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _022395A4
	add r0, #0x80
	add sp, #0x48
	str r7, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_022395A4:
	mov r1, #0
	add r0, #0x80
	str r1, [r4, r0]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022395B0: .word 0x00002408
_022395B4: .word 0x0000247C
_022395B8: .word 0x000023FC
	thumb_func_end ov12_02238A68

	thumb_func_start ov12_022395BC
ov12_022395BC: ; 0x022395BC
	cmp r0, #0x69
	bgt _0223961A
	bge _0223963C
	cmp r0, #0x62
	bgt _0223960C
	bge _0223963C
	add r1, r0, #0
	sub r1, #0x42
	cmp r1, #0x17
	bhi _02239640
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022395DC: ; jump table
	.short _0223963C - _022395DC - 2 ; case 0
	.short _0223963C - _022395DC - 2 ; case 1
	.short _02239640 - _022395DC - 2 ; case 2
	.short _02239640 - _022395DC - 2 ; case 3
	.short _0223963C - _022395DC - 2 ; case 4
	.short _02239640 - _022395DC - 2 ; case 5
	.short _0223963C - _022395DC - 2 ; case 6
	.short _0223963C - _022395DC - 2 ; case 7
	.short _0223963C - _022395DC - 2 ; case 8
	.short _0223963C - _022395DC - 2 ; case 9
	.short _0223963C - _022395DC - 2 ; case 10
	.short _02239640 - _022395DC - 2 ; case 11
	.short _02239640 - _022395DC - 2 ; case 12
	.short _02239640 - _022395DC - 2 ; case 13
	.short _02239640 - _022395DC - 2 ; case 14
	.short _02239640 - _022395DC - 2 ; case 15
	.short _02239640 - _022395DC - 2 ; case 16
	.short _02239640 - _022395DC - 2 ; case 17
	.short _02239640 - _022395DC - 2 ; case 18
	.short _02239640 - _022395DC - 2 ; case 19
	.short _0223963C - _022395DC - 2 ; case 20
	.short _0223963C - _022395DC - 2 ; case 21
	.short _0223963C - _022395DC - 2 ; case 22
	.short _0223963C - _022395DC - 2 ; case 23
_0223960C:
	cmp r0, #0x67
	bgt _02239614
	beq _0223963C
	b _02239640
_02239614:
	cmp r0, #0x68
	beq _0223963C
	b _02239640
_0223961A:
	cmp r0, #0x6b
	bgt _02239626
	bge _0223963C
	cmp r0, #0x6a
	beq _0223963C
	b _02239640
_02239626:
	cmp r0, #0x6c
	bgt _0223962E
	beq _0223963C
	b _02239640
_0223962E:
	cmp r0, #0x70
	bgt _02239640
	cmp r0, #0x6e
	blt _02239640
	beq _0223963C
	cmp r0, #0x70
	bne _02239640
_0223963C:
	mov r0, #1
	bx lr
_02239640:
	mov r0, #0
	bx lr
	thumb_func_end ov12_022395BC

	thumb_func_start ov12_02239644
ov12_02239644: ; 0x02239644
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	mov r1, #0
	ldr r0, _02239660 ; =ov12_02239664
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #5
	add r3, r1, #0
	bl sub_02026EB4
	add sp, #8
	pop {r3, pc}
	nop
_02239660: .word ov12_02239664
	thumb_func_end ov12_02239644

	thumb_func_start ov12_02239664
ov12_02239664: ; 0x02239664
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_02022C60
	ldr r0, _022396D0 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _022396D4 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _022396D8 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020CF82C
	mov r0, #0
	ldr r2, _022396DC ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020CF910
	ldr r1, _022396E0 ; =0xBFFF0000
	ldr r0, _022396E4 ; =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_022396D0: .word 0x04000008
_022396D4: .word 0xFFFFCFFD
_022396D8: .word 0x0000CFFB
_022396DC: .word 0x00007FFF
_022396E0: .word 0xBFFF0000
_022396E4: .word 0x04000580
	thumb_func_end ov12_02239664

	thumb_func_start ov12_022396E8
ov12_022396E8: ; 0x022396E8
	ldr r3, _022396EC ; =sub_02026F54
	bx r3
	.align 2, 0
_022396EC: .word sub_02026F54
	thumb_func_end ov12_022396E8

	thumb_func_start ov12_022396F0
ov12_022396F0: ; 0x022396F0
	push {r3, r4, r5, lr}
	ldr r3, _02239728 ; =0x02110924
	mov r0, #2
	mov r1, #0
	ldr r3, [r3]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0223972C ; =0x0211092C
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3]
	mov r0, #0xc0
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _02239718
	bl GF_AssertFail
_02239718:
	cmp r5, #0
	bne _02239720
	bl GF_AssertFail
_02239720:
	bl sub_02014DA0
	pop {r3, r4, r5, pc}
	nop
_02239728: .word 0x02110924
_0223972C: .word 0x0211092C
	thumb_func_end ov12_022396F0

	thumb_func_start ov12_02239730
ov12_02239730: ; 0x02239730
	push {r3, r4, r5, lr}
	sub sp, #0x50
	ldr r1, _022397C8 ; =0x000023FF
	add r4, r0, #0
	ldrb r2, [r4, r1]
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1f
	beq _02239750
	mov r0, #1
	bic r2, r0
	strb r2, [r4, r1]
	ldr r0, _022397CC ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _022397D0 ; =0x04001050
	strh r1, [r0]
_02239750:
	ldr r1, _022397C8 ; =0x000023FF
	ldrb r2, [r4, r1]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1f
	beq _02239774
	mov r0, #2
	bic r2, r0
	strb r2, [r4, r1]
	ldr r5, _022397D4 ; =0x0226C0D0
	add r3, sp, #0x28
	mov r2, #5
_02239766:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02239766
	add r0, sp, #0x28
	bl sub_02022BE8
_02239774:
	ldr r1, _022397C8 ; =0x000023FF
	ldrb r2, [r4, r1]
	lsl r0, r2, #0x1d
	lsr r0, r0, #0x1f
	beq _02239798
	mov r0, #4
	bic r2, r0
	strb r2, [r4, r1]
	ldr r5, _022397D8 ; =0x0226C0F8
	add r3, sp, #0
	mov r2, #5
_0223978A:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223978A
	add r0, sp, #0
	bl sub_02022BE8
_02239798:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02009418
	bl sub_0202061C
	bl sub_0200D034
	ldr r0, [r4, #0x28]
	bl sub_0200398C
	ldr r0, [r4, #4]
	bl sub_0201EEB4
	ldr r3, _022397DC ; =0x027E0000
	ldr r1, _022397E0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	add sp, #0x50
	pop {r3, r4, r5, pc}
	nop
_022397C8: .word 0x000023FF
_022397CC: .word 0x04000050
_022397D0: .word 0x04001050
_022397D4: .word 0x0226C0D0
_022397D8: .word 0x0226C0F8
_022397DC: .word 0x027E0000
_022397E0: .word 0x00003FF8
	thumb_func_end ov12_02239730

	thumb_func_start ov12_022397E4
ov12_022397E4: ; 0x022397E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0200398C
	bl sub_0202061C
	ldr r0, [r4, #4]
	bl sub_0201EEB4
	ldr r3, _02239808 ; =0x027E0000
	ldr r1, _0223980C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02239808: .word 0x027E0000
_0223980C: .word 0x00003FF8
	thumb_func_end ov12_022397E4

	thumb_func_start ov12_02239810
ov12_02239810: ; 0x02239810
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, #5
	bl sub_020399FC
	ldr r0, _02239850 ; =0x000023FD
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02239828
	cmp r0, #3
	bne _0223984E
_02239828:
	cmp r0, #0
	bne _02239830
	bl ov06_0221BAF0
_02239830:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02008120
	add r4, #0x94
	ldr r0, [r4]
	bl sub_0200D020
	bl sub_0200D03C
	mov r0, #1
	mov r1, #0
	bl sub_02026E50
_0223984E:
	pop {r4, pc}
	.align 2, 0
_02239850: .word 0x000023FD
	thumb_func_end ov12_02239810

	thumb_func_start ov12_02239854
ov12_02239854: ; 0x02239854
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov12_0223A7F0
	str r0, [sp]
	add r0, r5, #0
	mov r6, #0
	bl ov12_0223BD2C
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_0223A7E0
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _0223987A
	b _02239984
_0223987A:
	mov r0, #2
	tst r0, r4
	beq _02239898
	mov r0, #1
	tst r0, r4
	beq _02239984
	ldr r0, _02239988 ; =0x00000704
	add r1, r6, #0
	bl sub_02006154
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223BD3C
	pop {r3, r4, r5, r6, r7, pc}
_02239898:
	ldr r0, [sp]
	add r4, r6, #0
	cmp r0, #0
	ble _02239906
_022398A0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223A7E8
	add r7, r0, #0
	bl ov12_02261264
	cmp r0, #0
	bne _022398BE
	add r0, r5, #0
	bl ov12_0223B514
	mov r1, #0x10
	tst r0, r1
	beq _022398D6
_022398BE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223AB1C
	cmp r0, #0
	bne _022398FE
	add r0, r5, #0
	bl ov12_0223B514
	mov r1, #0x10
	tst r0, r1
	beq _022398FE
_022398D6:
	add r0, r7, #0
	bl ov12_0226127C
	add r1, r0, #0
	beq _022398FE
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl sub_020880B0
	cmp r0, #1
	bne _022398FE
	add r0, r4, #0
	bl sub_020726C0
	orr r6, r0
_022398FE:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _022398A0
_02239906:
	cmp r6, #0
	beq _0223992C
	add r0, r5, #0
	bl ov12_0223BD2C
	cmp r0, #0
	bne _0223992C
	ldr r0, _02239988 ; =0x00000704
	bl sub_0200604C
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223BD3C
	add r0, r5, #0
	mov r1, #4
	bl ov12_0223BD68
	b _0223994A
_0223992C:
	cmp r6, #0
	bne _0223994A
	add r0, r5, #0
	bl ov12_0223BD2C
	cmp r0, #0
	beq _0223994A
	ldr r0, _02239988 ; =0x00000704
	mov r1, #0
	bl sub_02006154
	add r0, r5, #0
	mov r1, #0
	bl ov12_0223BD3C
_0223994A:
	add r0, r5, #0
	bl ov12_0223BD2C
	cmp r0, #0
	beq _02239984
	add r0, r5, #0
	bl ov12_0223BD58
	add r4, r0, #0
	ldr r0, _02239988 ; =0x00000704
	bl sub_02006184
	cmp r0, #0
	bne _02239984
	sub r1, r4, #1
	bne _0223997A
	ldr r0, _02239988 ; =0x00000704
	bl sub_0200604C
	add r0, r5, #0
	mov r1, #4
	bl ov12_0223BD68
	pop {r3, r4, r5, r6, r7, pc}
_0223997A:
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov12_0223BD68
_02239984:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02239988: .word 0x00000704
	thumb_func_end ov12_02239854

	thumb_func_start ov12_0223998C
ov12_0223998C: ; 0x0223998C
	push {r3, r4, r5, lr}
	ldr r3, _022399B8 ; =0x00002438
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, r3]
	mov r1, #1
	add r0, r0, #3
	str r0, [r4, r3]
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r2, #3
	bl sub_0201BC8C
	ldr r0, _022399B8 ; =0x00002438
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022399B4
	add r0, r5, #0
	bl sub_0200E390
_022399B4:
	pop {r3, r4, r5, pc}
	nop
_022399B8: .word 0x00002438
	thumb_func_end ov12_0223998C

	thumb_func_start ov12_022399BC
ov12_022399BC: ; 0x022399BC
	push {r3, lr}
	bl sub_02039998
	cmp r0, #0
	bne _022399CE
	ldr r0, _022399D0 ; =0x00000012
	mov r1, #2
	bl HandleLoadOverlay
_022399CE:
	pop {r3, pc}
	.align 2, 0
_022399D0: .word 0x00000012
	thumb_func_end ov12_022399BC

	thumb_func_start ov12_022399D4
ov12_022399D4: ; 0x022399D4
	push {r4, r5, r6, lr}
	sub sp, #0x68
	add r4, r1, #0
	ldr r1, _02239C00 ; =0x00001028
	mov r2, #5
	bl sub_02007280
	add r5, r0, #0
	ldr r0, _02239C04 ; =0x00001020
	str r4, [r5]
	mov r2, #0
	strb r2, [r5, r0]
	add r1, r0, #1
	strb r2, [r5, r1]
	add r0, r0, #2
	strh r2, [r5, r0]
	mov r0, #5
	bl sub_020030E8
	str r0, [r5, #0xc]
	mov r1, #1
	bl sub_02003B50
	mov r2, #2
	ldr r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #5
	bl sub_02003120
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r2, #2
	add r3, r1, #0
	bl sub_02003D5C
	mov r0, #5
	bl sub_0201AC88
	str r0, [r5, #4]
	mov r0, #5
	mov r1, #1
	bl sub_0201D39C
	str r0, [r5, #8]
	add r0, r5, #0
	bl sub_02074EC4
	bl sub_02022C54
	ldr r6, _02239C08 ; =0x0226C080
	add r3, sp, #0x40
	mov r2, #5
_02239A46:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02239A46
	add r0, sp, #0x40
	bl sub_02022BE8
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020D47EC
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020D47EC
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020D47EC
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020D47EC
	mov r1, #5
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	bl sub_020D4790
	ldr r6, _02239C0C ; =0x0226BFF8
	add r3, sp, #0x30
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201ACB0
	ldr r6, _02239C10 ; =0x0226C044
	add r3, sp, #0x14
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	ldr r0, [r5, #4]
	mov r3, #0
	bl sub_0201B1E4
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_0201CAE0
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0202ADCC
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #4]
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200EB80
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x10
	mov r2, #8
	mov r3, #5
	bl sub_02003200
	add r0, r4, #0
	bl sub_0200E640
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x26
	mov r3, #5
	bl sub_02003200
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02003D5C
	bl sub_02022D24
	mov r0, #0x10
	mov r1, #1
	bl sub_02022C60
	ldr r2, _02239C14 ; =0x04000304
	mov r3, #2
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	mov r2, #1
	bl sub_0201D40C
	ldr r0, [r5, #8]
	mov r1, #0xff
	bl sub_0201D978
	ldr r0, [r5, #8]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E998
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xc5
	mov r3, #5
	bl sub_0200BAF8
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #5
	bl sub_02026354
	add r6, r0, #0
	ldr r1, _02239C18 ; =0x0000039B
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200BB6C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #8]
	mov r1, #1
	add r2, r6, #0
	bl sub_020200A8
	add r0, r6, #0
	bl sub_02026380
	add r0, r4, #0
	bl sub_0200BB44
	ldr r0, _02239C1C ; =ov12_022397E4
	add r1, r5, #0
	bl sub_0201A0FC
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r2, _02239C20 ; =0x0000FFFF
	mov r1, #5
	bl sub_02003370
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0200F0AC
	ldr r1, _02239C24 ; =0x00001024
	str r0, [r5, r1]
	bl ov12_0223A7A0
	add sp, #0x68
	pop {r4, r5, r6, pc}
	nop
_02239C00: .word 0x00001028
_02239C04: .word 0x00001020
_02239C08: .word 0x0226C080
_02239C0C: .word 0x0226BFF8
_02239C10: .word 0x0226C044
_02239C14: .word 0x04000304
_02239C18: .word 0x0000039B
_02239C1C: .word ov12_022397E4
_02239C20: .word 0x0000FFFF
_02239C24: .word 0x00001024
	thumb_func_end ov12_022399D4

	thumb_func_start ov12_02239C28
ov12_02239C28: ; 0x02239C28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_02007290
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #5
	bl sub_020399FC
	ldr r0, _02239F2C ; =0x00001021
	mov r7, #0
	ldrb r1, [r4, r0]
	cmp r1, #0x21
	bls _02239C46
	b _0223A06C
_02239C46:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02239C52: ; jump table
	.short _02239C96 - _02239C52 - 2 ; case 0
	.short _02239CAC - _02239C52 - 2 ; case 1
	.short _02239CC0 - _02239C52 - 2 ; case 2
	.short _02239CD0 - _02239C52 - 2 ; case 3
	.short _02239D0A - _02239C52 - 2 ; case 4
	.short _02239FE2 - _02239C52 - 2 ; case 5
	.short _02239D22 - _02239C52 - 2 ; case 6
	.short _02239D3C - _02239C52 - 2 ; case 7
	.short _02239FE2 - _02239C52 - 2 ; case 8
	.short _02239D50 - _02239C52 - 2 ; case 9
	.short _02239D6C - _02239C52 - 2 ; case 10
	.short _02239FE2 - _02239C52 - 2 ; case 11
	.short _02239D80 - _02239C52 - 2 ; case 12
	.short _02239D9A - _02239C52 - 2 ; case 13
	.short _02239FE2 - _02239C52 - 2 ; case 14
	.short _02239DAE - _02239C52 - 2 ; case 15
	.short _02239DC8 - _02239C52 - 2 ; case 16
	.short _02239FE2 - _02239C52 - 2 ; case 17
	.short _02239DDC - _02239C52 - 2 ; case 18
	.short _02239DF6 - _02239C52 - 2 ; case 19
	.short _02239FE2 - _02239C52 - 2 ; case 20
	.short _02239E0A - _02239C52 - 2 ; case 21
	.short _02239E4E - _02239C52 - 2 ; case 22
	.short _02239FE2 - _02239C52 - 2 ; case 23
	.short _02239E8A - _02239C52 - 2 ; case 24
	.short _02239EBE - _02239C52 - 2 ; case 25
	.short _02239FE2 - _02239C52 - 2 ; case 26
	.short _02239EF8 - _02239C52 - 2 ; case 27
	.short _02239F38 - _02239C52 - 2 ; case 28
	.short _02239FE2 - _02239C52 - 2 ; case 29
	.short _02239F74 - _02239C52 - 2 ; case 30
	.short _02239FA8 - _02239C52 - 2 ; case 31
	.short _02239FE2 - _02239C52 - 2 ; case 32
	.short _0223A052 - _02239C52 - 2 ; case 33
_02239C96:
	add r0, r7, #0
	bl sub_0200FBE8
	mov r0, #1
	bl sub_02037930
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239CAC:
	ldr r0, [r4, #0xc]
	bl sub_02003B44
	cmp r0, #0
	bne _02239D5A
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239CC0:
	mov r0, #0x32
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239CD0:
	mov r0, #0x32
	bl sub_02037B38
	cmp r0, #0
	beq _02239CF2
	mov r0, #0x33
	bl sub_02037AC0
	ldr r0, _02239F30 ; =0x00001022
	add r1, r7, #0
	strh r1, [r4, r0]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239CF2:
	ldr r0, _02239F30 ; =0x00001022
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	ldr r0, _02239F34 ; =0x00000708
	cmp r1, r0
	bls _02239D5A
	mov r0, #1
	bl sub_02039AD8
	b _0223A06C
_02239D0A:
	mov r1, #5
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_02075074
	cmp r0, #1
	bne _02239D5A
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239D22:
	add r0, r4, #0
	bl sub_020750E0
	cmp r0, #1
	bne _02239D5A
	mov r0, #0x34
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239D3C:
	add r0, r4, #0
	bl sub_02075108
	cmp r0, #1
	bne _02239D5A
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239D50:
	add r0, r4, #0
	bl sub_0207514C
	cmp r0, #1
	beq _02239D5C
_02239D5A:
	b _0223A06C
_02239D5C:
	mov r0, #0x35
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239D6C:
	add r0, r4, #0
	bl sub_02075178
	cmp r0, #1
	bne _02239E66
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239D80:
	add r0, r4, #0
	bl sub_020751B8
	cmp r0, #1
	bne _02239E66
	mov r0, #0x36
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239D9A:
	add r0, r4, #0
	bl sub_020751DC
	cmp r0, #1
	bne _02239E66
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239DAE:
	add r0, r4, #0
	bl sub_02075220
	cmp r0, #1
	bne _02239E66
	mov r0, #0x37
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239DC8:
	add r0, r4, #0
	bl sub_02075248
	cmp r0, #1
	bne _02239E66
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239DDC:
	add r0, r4, #0
	bl sub_0207527C
	cmp r0, #1
	bne _02239E66
	mov r0, #0x38
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239DF6:
	add r0, r4, #0
	bl sub_020752D8
	cmp r0, #1
	bne _02239E66
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239E0A:
	ldr r1, [r4]
	ldr r2, [r1]
	mov r1, #0x80
	tst r1, r2
	bne _02239E1A
	mov r1, #0x21
	strb r1, [r4, r0]
	b _0223A06C
_02239E1A:
	bl sub_0203769C
	cmp r0, #0
	beq _02239E32
	mov r0, #0x39
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239E32:
	add r0, r4, #0
	mov r1, #1
	bl sub_0207531C
	cmp r0, #1
	bne _02239E66
	mov r0, #0x39
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239E4E:
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	beq _02239E72
	mov r0, #0x39
	bl sub_02037B38
	cmp r0, #1
	beq _02239E68
_02239E66:
	b _0223A06C
_02239E68:
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239E72:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x39
	bl sub_02075350
	cmp r0, #1
	bne _02239F68
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239E8A:
	bl sub_0203769C
	cmp r0, #0
	beq _02239EA2
	mov r0, #0x3a
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239EA2:
	add r0, r4, #0
	mov r1, #3
	bl sub_0207531C
	cmp r0, #1
	bne _02239F68
	mov r0, #0x3a
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239EBE:
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	beq _02239EE0
	mov r0, #0x3a
	bl sub_02037B38
	cmp r0, #1
	bne _02239F68
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239EE0:
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x3a
	bl sub_02075350
	cmp r0, #1
	bne _02239F68
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239EF8:
	bl sub_0203769C
	cmp r0, #0
	beq _02239F10
	mov r0, #0x3b
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239F10:
	add r0, r4, #0
	mov r1, #1
	bl sub_020753A8
	cmp r0, #1
	bne _02239F68
	mov r0, #0x3b
	bl sub_02037AC0
	ldr r0, _02239F2C ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
	.align 2, 0
_02239F2C: .word 0x00001021
_02239F30: .word 0x00001022
_02239F34: .word 0x00000708
_02239F38:
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	beq _02239F5A
	mov r0, #0x3b
	bl sub_02037B38
	cmp r0, #1
	bne _02239F68
	ldr r0, _0223A074 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239F5A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x3b
	bl sub_020753D4
	cmp r0, #1
	beq _02239F6A
_02239F68:
	b _0223A06C
_02239F6A:
	ldr r0, _0223A074 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239F74:
	bl sub_0203769C
	cmp r0, #0
	beq _02239F8C
	mov r0, #0x3c
	bl sub_02037AC0
	ldr r0, _0223A074 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239F8C:
	add r0, r4, #0
	mov r1, #3
	bl sub_020753A8
	cmp r0, #1
	bne _0223A06C
	mov r0, #0x3c
	bl sub_02037AC0
	ldr r0, _0223A074 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239FA8:
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	beq _02239FCA
	mov r0, #0x3c
	bl sub_02037B38
	cmp r0, #1
	bne _0223A06C
	ldr r0, _0223A074 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239FCA:
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x3c
	bl sub_020753D4
	cmp r0, #1
	bne _0223A06C
	ldr r0, _0223A074 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223A06C
_02239FE2:
	bl sub_02037454
	ldr r1, _0223A078 ; =0x00001020
	ldrb r2, [r4, r1]
	cmp r2, r0
	bne _0223A038
	add r0, r1, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x14
	bne _0223A008
	add r6, r7, #0
	add r5, r4, #0
_02239FFA:
	ldr r0, [r5, #0x10]
	bl sub_0201AB0C
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _02239FFA
_0223A008:
	ldr r0, _0223A078 ; =0x00001020
	mov r3, #0
	strb r3, [r4, r0]
	add r1, r0, #2
	strh r3, [r4, r1]
	add r1, r0, #1
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #1
	strb r2, [r4, r1]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x21
	bne _0223A06C
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r2, _0223A07C ; =0x0000FFFF
	mov r1, #5
	bl sub_02003370
	b _0223A06C
_0223A038:
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrh r1, [r4, r0]
	ldr r0, _0223A080 ; =0x00000708
	cmp r1, r0
	bls _0223A06C
	mov r0, #1
	bl sub_02039AD8
	b _0223A06C
_0223A052:
	ldr r0, [r4, #0xc]
	bl sub_02003B44
	cmp r0, #0
	bne _0223A06C
	ldr r0, _0223A084 ; =0x00001024
	mov r7, #1
	ldr r0, [r4, r0]
	bl sub_0200F450
	mov r0, #0
	bl sub_02037930
_0223A06C:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223A074: .word 0x00001021
_0223A078: .word 0x00001020
_0223A07C: .word 0x0000FFFF
_0223A080: .word 0x00000708
_0223A084: .word 0x00001024
	thumb_func_end ov12_02239C28

	thumb_func_start ov12_0223A088
ov12_0223A088: ; 0x0223A088
	push {r4, lr}
	bl sub_02007290
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0201A0FC
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02003150
	ldr r0, [r4, #0xc]
	bl sub_02003104
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0201D54C
	mov r0, #2
	mov r1, #0
	bl sub_02022C60
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_0201BB4C
	ldr r0, [r4, #4]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	thumb_func_end ov12_0223A088

	thumb_func_start ov12_0223A0D4
ov12_0223A0D4: ; 0x0223A0D4
	push {r3, r4, r5, lr}
	ldr r1, _0223A20C ; =0x00002490
	add r5, r0, #0
	mov r2, #5
	bl sub_02007280
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020072A4
	add r5, r0, #0
	ldr r2, _0223A20C ; =0x00002490
	mov r0, #0
	add r1, r4, #0
	bl sub_020D4858
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02238A68
	ldr r0, [r4, #0x2c]
	mov r1, #4
	tst r1, r0
	beq _0223A114
	ldr r1, _0223A210 ; =0x0000240C
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223A114
	mov r1, #0x80
	tst r0, r1
	beq _0223A11C
_0223A114:
	bl sub_0203A914
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223A11C:
	ldr r0, _0223A214 ; =0x00000005
	mov r1, #2
	bl HandleLoadOverlay
	ldr r1, [r4, #0x2c]
	mov r0, #8
	tst r0, r1
	bne _0223A130
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223A130:
	mov r0, #5
	mov r1, #0x30
	bl sub_0201AA8C
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #0x30
	bl sub_020D4858
	bl sub_0203769C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r5, #0
	bl sub_020378AC
	cmp r0, #3
	bhi _0223A1B4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A166: ; jump table
	.short _0223A16E - _0223A166 - 2 ; case 0
	.short _0223A194 - _0223A166 - 2 ; case 1
	.short _0223A194 - _0223A166 - 2 ; case 2
	.short _0223A16E - _0223A166 - 2 ; case 3
_0223A16E:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r1, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r1, [r0, #4]
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223AB6C
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r1, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r1, [r0, #0xc]
	b _0223A1B4
_0223A194:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223AB6C
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	str r2, [r1, #4]
	lsl r1, r5, #2
	add r1, r4, r1
	ldr r1, [r1, #0x68]
	ldr r0, [r4, r0]
	str r1, [r0, #0xc]
_0223A1B4:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #5
	str r2, [r1, #0x24]
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020378AC
	cmp r0, #3
	bhi _0223A1FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A1DC: ; jump table
	.short _0223A1E4 - _0223A1DC - 2 ; case 0
	.short _0223A1F2 - _0223A1DC - 2 ; case 1
	.short _0223A1F2 - _0223A1DC - 2 ; case 2
	.short _0223A1E4 - _0223A1DC - 2 ; case 3
_0223A1E4:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	b _0223A1FE
_0223A1F2:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	add r0, #0x29
	strb r1, [r0]
_0223A1FE:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0221BA00
	mov r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223A20C: .word 0x00002490
_0223A210: .word 0x0000240C
_0223A214: .word 0x00000005
	thumb_func_end ov12_0223A0D4

	thumb_func_start ov12_0223A218
ov12_0223A218: ; 0x0223A218
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02007290
	add r6, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223A25A
	mov r4, #0
	mov r7, #0x71
	add r5, r4, #0
	lsl r7, r7, #2
_0223A236:
	ldr r0, [r6, r7]
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223A244
	bl sub_0201AB0C
_0223A244:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223A236
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0201AB0C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223A25A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223A218

	thumb_func_start ov12_0223A260
ov12_0223A260: ; 0x0223A260
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02007290
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020072A4
	ldr r0, [r4, #0x2c]
	mov r1, #4
	tst r1, r0
	beq _0223A288
	ldr r1, _0223A3A4 ; =0x0000240C
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223A288
	mov r1, #0x80
	tst r0, r1
	beq _0223A290
_0223A288:
	bl sub_0203A914
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223A290:
	bl sub_0203769C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	mov r0, #5
	mov r1, #0x30
	bl sub_0201AA8C
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #0x30
	bl sub_020D4858
	ldr r1, [r4, #0x2c]
	mov r0, #8
	tst r0, r1
	beq _0223A30E
	mov r6, #0
	add r5, r4, #0
_0223A2BC:
	add r0, r6, #0
	bl sub_020378AC
	mov r2, #0x71
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	lsl r0, r0, #2
	ldr r1, [r5, #0x68]
	add r0, r2, r0
	str r1, [r0, #4]
	add r0, r6, #0
	bl sub_020378AC
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #5
	bl sub_02028F68
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	lsl r1, r7, #2
	add r1, r2, r1
	add r6, r6, #1
	add r5, r5, #4
	str r0, [r1, #0x14]
	cmp r6, #4
	blt _0223A2BC
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #5
	str r2, [r1, #0x24]
	ldr r1, [r4, r0]
	mov r2, #1
	add r1, #0x28
	strb r2, [r1]
	ldr r0, [r4, r0]
	add r0, #0x29
	strb r2, [r0]
	b _0223A394
_0223A30E:
	add r0, r5, #0
	lsl r7, r5, #2
	bl sub_020378AC
	mov r2, #0x71
	lsl r2, r2, #2
	add r1, r4, r7
	ldr r2, [r4, r2]
	lsl r0, r0, #2
	ldr r1, [r1, #0x68]
	add r0, r2, r0
	str r1, [r0, #4]
	mov r0, #1
	eor r0, r5
	lsl r6, r0, #2
	str r0, [sp]
	bl sub_020378AC
	add r1, r4, r6
	ldr r2, [r1, #0x68]
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r0, r0, #2
	add r0, r1, r0
	str r2, [r0, #4]
	add r0, r5, #0
	bl sub_020378AC
	add r5, r0, #0
	add r0, r4, r7
	ldr r0, [r0, #0x48]
	mov r1, #5
	bl sub_02028F68
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	lsl r1, r5, #2
	add r1, r2, r1
	str r0, [r1, #0x14]
	ldr r0, [sp]
	bl sub_020378AC
	add r5, r0, #0
	add r0, r4, r6
	ldr r0, [r0, #0x48]
	mov r1, #5
	bl sub_02028F68
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	lsl r2, r5, #2
	add r2, r3, r2
	str r0, [r2, #0x14]
	ldr r0, [r4, r1]
	mov r2, #5
	str r2, [r0, #0x24]
	ldr r0, [r4, r1]
	mov r2, #1
	add r0, #0x28
	strb r2, [r0]
	ldr r0, [r4, r1]
	mov r2, #0
	add r0, #0x29
	strb r2, [r0]
_0223A394:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0221BA00
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223A3A4: .word 0x0000240C
	thumb_func_end ov12_0223A260

	thumb_func_start ov12_0223A3A8
ov12_0223A3A8: ; 0x0223A3A8
	push {r3, r4, r5, r6, r7, lr}
	bl sub_02007290
	add r6, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223A3EA
	mov r4, #0
	mov r7, #0x71
	add r5, r4, #0
	lsl r7, r7, #2
_0223A3C6:
	ldr r0, [r6, r7]
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223A3D4
	bl sub_0201AB0C
_0223A3D4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223A3C6
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0201AB0C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223A3EA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223A3A8

	thumb_func_start ov12_0223A3F0
ov12_0223A3F0: ; 0x0223A3F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_020072A4
	add r7, r0, #0
	ldr r0, [r7]
	mov r1, #4
	tst r1, r0
	beq _0223A414
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223A414
	mov r1, #0x80
	tst r0, r1
	beq _0223A41A
_0223A414:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223A41A:
	bl sub_0203769C
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0223A5DC ; =0x00000005
	mov r1, #2
	bl HandleLoadOverlay
	mov r0, #5
	mov r1, #0x30
	bl sub_0201AA8C
	add r6, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	str r6, [r7, r0]
	mov r0, #0
	add r1, r6, #0
	mov r2, #0x30
	bl sub_020D4858
	str r7, [r6]
	ldr r0, [r7, #0x14]
	cmp r0, #5
	bhi _0223A4CE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A458: ; jump table
	.short _0223A4CE - _0223A458 - 2 ; case 0
	.short _0223A464 - _0223A458 - 2 ; case 1
	.short _0223A488 - _0223A458 - 2 ; case 2
	.short _0223A4AC - _0223A458 - 2 ; case 3
	.short _0223A4CE - _0223A458 - 2 ; case 4
	.short _0223A4AC - _0223A458 - 2 ; case 5
_0223A464:
	bl sub_02039998
	cmp r0, #0
	bne _0223A47A
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x16
	bl sub_0202D0FC
	b _0223A4CE
_0223A47A:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x1b
	bl sub_0202D0FC
	b _0223A4CE
_0223A488:
	bl sub_02039998
	cmp r0, #0
	bne _0223A49E
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x17
	bl sub_0202D0FC
	b _0223A4CE
_0223A49E:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x1c
	bl sub_0202D0FC
	b _0223A4CE
_0223A4AC:
	bl sub_02039998
	cmp r0, #0
	bne _0223A4C2
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x18
	bl sub_0202D0FC
	b _0223A4CE
_0223A4C2:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x1d
	bl sub_0202D0FC
_0223A4CE:
	ldr r1, [r7]
	mov r0, #8
	tst r0, r1
	beq _0223A538
	mov r4, #0
	add r5, r7, #0
_0223A4DA:
	add r0, r4, #0
	bl sub_020378AC
	lsl r0, r0, #2
	ldr r1, [r5, #4]
	add r0, r6, r0
	str r1, [r0, #4]
	add r0, r4, #0
	bl sub_020378AC
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #5
	bl sub_02028F68
	ldr r1, [sp, #8]
	add r4, r4, #1
	lsl r1, r1, #2
	add r1, r6, r1
	add r5, r5, #4
	str r0, [r1, #0x14]
	cmp r4, #4
	blt _0223A4DA
	mov r0, #5
	str r0, [r6, #0x24]
	add r0, r6, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #1
	add r0, #0x29
	strb r1, [r0]
	ldr r1, [r7, #0x14]
	cmp r1, #5
	beq _0223A52E
	add r0, r6, #0
	add r0, #0x2a
	strb r1, [r0]
	b _0223A5C4
_0223A52E:
	add r0, r6, #0
	mov r1, #3
	add r0, #0x2a
	strb r1, [r0]
	b _0223A5C4
_0223A538:
	lsl r0, r4, #2
	str r0, [sp]
	add r0, r4, #0
	bl sub_020378AC
	ldr r1, [sp]
	lsl r0, r0, #2
	add r1, r7, r1
	ldr r1, [r1, #4]
	add r0, r6, r0
	str r1, [r0, #4]
	mov r0, #1
	eor r0, r4
	lsl r5, r0, #2
	str r0, [sp, #4]
	bl sub_020378AC
	add r1, r7, r5
	lsl r0, r0, #2
	ldr r1, [r1, #4]
	add r0, r6, r0
	str r1, [r0, #4]
	add r0, r4, #0
	bl sub_020378AC
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #5
	add r0, r7, r0
	add r0, #0xf8
	ldr r0, [r0]
	bl sub_02028F68
	lsl r1, r4, #2
	add r1, r6, r1
	str r0, [r1, #0x14]
	ldr r0, [sp, #4]
	bl sub_020378AC
	add r4, r0, #0
	add r0, r7, r5
	add r0, #0xf8
	ldr r0, [r0]
	mov r1, #5
	bl sub_02028F68
	lsl r1, r4, #2
	add r1, r6, r1
	str r0, [r1, #0x14]
	mov r0, #5
	str r0, [r6, #0x24]
	add r0, r6, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	ldr r1, [r7, #0x14]
	cmp r1, #5
	beq _0223A5BC
	add r0, r6, #0
	add r0, #0x2a
	strb r1, [r0]
	b _0223A5C4
_0223A5BC:
	add r0, r6, #0
	mov r1, #3
	add r0, #0x2a
	strb r1, [r0]
_0223A5C4:
	ldr r0, _0223A5E0 ; =0x000001B2
	ldrb r1, [r7, r0]
	add r0, r6, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r6, #0
	bl sub_0221BA00
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223A5DC: .word 0x00000005
_0223A5E0: .word 0x000001B2
	thumb_func_end ov12_0223A3F0

	thumb_func_start ov12_0223A5E4
ov12_0223A5E4: ; 0x0223A5E4
	push {r4, r5, r6, lr}
	bl sub_020072A4
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r6, [r0, r1]
	add r0, r6, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223A61A
	mov r4, #0
	add r5, r6, #0
_0223A5FE:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0223A608
	bl sub_0201AB0C
_0223A608:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223A5FE
	add r0, r6, #0
	bl sub_0201AB0C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223A61A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov12_0223A5E4

	thumb_func_start ov12_0223A620
ov12_0223A620: ; 0x0223A620
	push {r3, lr}
	ldr r2, [r0, #0x2c]
	ldr r1, _0223A65C ; =0x00000404
	tst r1, r2
	bne _0223A634
	ldr r1, _0223A660 ; =0x0000240C
	ldr r1, [r0, r1]
	mov r0, #0x10
	tst r0, r1
	beq _0223A648
_0223A634:
	mov r0, #1
	bl sub_02002B50
	mov r0, #1
	bl sub_02002B34
	mov r0, #0
	bl sub_02002B8C
	pop {r3, pc}
_0223A648:
	mov r0, #3
	bl sub_02002B50
	mov r0, #1
	bl sub_02002B34
	mov r0, #1
	bl sub_02002B8C
	pop {r3, pc}
	.align 2, 0
_0223A65C: .word 0x00000404
_0223A660: .word 0x0000240C
	thumb_func_end ov12_0223A620

	thumb_func_start ov12_0223A664
ov12_0223A664: ; 0x0223A664
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r2, _0223A798 ; =0x0000240C
	str r0, [sp]
	ldr r3, [r0, r2]
	mov r0, #0x10
	tst r0, r3
	beq _0223A680
	ldr r0, [sp]
	mov r1, #1
	sub r2, #0x10
	strb r1, [r0, r2]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_0223A680:
	mov r0, #0x5f
	mov r3, #0
	add r4, sp, #0x30
	add r5, sp, #0x20
	lsl r0, r0, #2
_0223A68A:
	stmia r4!, {r3}
	ldr r2, [r1, r0]
	add r3, r3, #1
	add r1, r1, #4
	stmia r5!, {r2}
	cmp r3, #4
	blt _0223A68A
	bl sub_0203769C
	str r0, [sp, #0x10]
	bl sub_02037454
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	sub r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _0223A70A
	add r0, sp, #0x30
	add r2, sp, #0x20
	str r0, [sp, #8]
	str r2, [sp, #0x18]
	mov ip, r0
_0223A6BC:
	ldr r0, [sp, #4]
	add r5, r0, #1
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bge _0223A6F6
	ldr r1, [sp, #0x18]
	lsl r0, r5, #2
	add r3, r1, r0
	mov r1, ip
	add r4, r1, r0
_0223A6D0:
	ldr r0, [r3]
	ldr r7, [r2]
	str r0, [sp, #0x1c]
	cmp r7, r0
	bge _0223A6EA
	ldr r0, [sp, #8]
	ldr r1, [r4]
	ldr r6, [r0]
	str r1, [r0]
	ldr r0, [sp, #0x1c]
	str r6, [r4]
	str r0, [r2]
	str r7, [r3]
_0223A6EA:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r3, r3, #4
	add r4, r4, #4
	cmp r5, r0
	blt _0223A6D0
_0223A6F6:
	ldr r0, [sp, #8]
	add r2, r2, #4
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0223A6BC
_0223A70A:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne _0223A71E
	ldr r0, [sp]
	ldr r1, _0223A79C ; =0x000023FC
	mov r2, #1
	strb r2, [r0, r1]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_0223A71E:
	ldr r0, [sp]
	ldr r1, [r0, #0x2c]
	mov r0, #0x80
	tst r0, r1
	bne _0223A792
	mov r0, #8
	tst r0, r1
	beq _0223A784
	ldr r0, [sp, #0x10]
	bl sub_020378AC
	add r4, r0, #0
	ldr r0, [sp, #0x30]
	bl sub_020378AC
	cmp r0, #3
	bhi _0223A792
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A74C: ; jump table
	.short _0223A754 - _0223A74C - 2 ; case 0
	.short _0223A76C - _0223A74C - 2 ; case 1
	.short _0223A754 - _0223A74C - 2 ; case 2
	.short _0223A76C - _0223A74C - 2 ; case 3
_0223A754:
	mov r0, #1
	tst r0, r4
	beq _0223A792
	ldr r1, _0223A798 ; =0x0000240C
	ldr r0, [sp]
	ldr r2, [r0, r1]
	mov r0, #0x20
	orr r2, r0
	ldr r0, [sp]
	add sp, #0x40
	str r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0223A76C:
	mov r0, #1
	tst r0, r4
	bne _0223A792
	ldr r1, _0223A798 ; =0x0000240C
	ldr r0, [sp]
	ldr r2, [r0, r1]
	mov r0, #0x20
	orr r2, r0
	ldr r0, [sp]
	add sp, #0x40
	str r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0223A784:
	ldr r1, _0223A798 ; =0x0000240C
	ldr r0, [sp]
	ldr r2, [r0, r1]
	mov r0, #0x20
	orr r2, r0
	ldr r0, [sp]
	str r2, [r0, r1]
_0223A792:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223A798: .word 0x0000240C
_0223A79C: .word 0x000023FC
	thumb_func_end ov12_0223A664

	thumb_func_start ov12_0223A7A0
ov12_0223A7A0: ; 0x0223A7A0
	push {r3, lr}
	bl sub_0203A880
	bl sub_02039998
	cmp r0, #0
	beq _0223A7BC
	bl ov00_021EC9D4
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203A930
	pop {r3, pc}
_0223A7BC:
	bl sub_02035650
	cmp r0, #0
	beq _0223A7D0
	bl sub_020DEF44
	mov r1, #3
	sub r0, r1, r0
	bl sub_0203A930
_0223A7D0:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov12_0223A7A0

	thumb_func_start ov12_0223A7D4
ov12_0223A7D4: ; 0x0223A7D4
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov12_0223A7D4

	thumb_func_start ov12_0223A7D8
ov12_0223A7D8: ; 0x0223A7D8
	ldr r2, [r0, #8]
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
	thumb_func_end ov12_0223A7D8

	thumb_func_start ov12_0223A7E0
ov12_0223A7E0: ; 0x0223A7E0
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end ov12_0223A7E0

	thumb_func_start ov12_0223A7E4
ov12_0223A7E4: ; 0x0223A7E4
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end ov12_0223A7E4

	thumb_func_start ov12_0223A7E8
ov12_0223A7E8: ; 0x0223A7E8
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov12_0223A7E8

	thumb_func_start ov12_0223A7F0
ov12_0223A7F0: ; 0x0223A7F0
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end ov12_0223A7F0

	thumb_func_start ov12_0223A7F4
ov12_0223A7F4: ; 0x0223A7F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223A812
	mov r3, #0x10
	tst r2, r3
	beq _0223A81A
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223A81A
_0223A812:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	pop {r3, r4, r5, pc}
_0223A81A:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223A82C
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	pop {r3, r4, r5, pc}
_0223A82C:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223A7F4

	thumb_func_start ov12_0223A834
ov12_0223A834: ; 0x0223A834
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223A852
	mov r3, #0x10
	tst r2, r3
	beq _0223A85E
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223A85E
_0223A852:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	bl sub_02074640
	pop {r3, r4, r5, pc}
_0223A85E:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223A874
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	bl sub_02074640
	pop {r3, r4, r5, pc}
_0223A874:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	bl sub_02074640
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223A834

	thumb_func_start ov12_0223A880
ov12_0223A880: ; 0x0223A880
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223A8A0
	mov r3, #0x10
	tst r2, r3
	beq _0223A8AE
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223A8AE
_0223A8A0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r6, #0
	bl sub_02074644
	pop {r4, r5, r6, pc}
_0223A8AE:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223A8C6
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r6, #0
	bl sub_02074644
	pop {r4, r5, r6, pc}
_0223A8C6:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r6, #0
	bl sub_02074644
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223A880

	thumb_func_start ov12_0223A8D4
ov12_0223A8D4: ; 0x0223A8D4
	add r0, #0x88
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov12_0223A8D4

	thumb_func_start ov12_0223A8DC
ov12_0223A8DC: ; 0x0223A8DC
	add r0, #0x8c
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov12_0223A8DC

	thumb_func_start ov12_0223A8E4
ov12_0223A8E4: ; 0x0223A8E4
	add r0, #0x90
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov12_0223A8E4

	thumb_func_start ov12_0223A8EC
ov12_0223A8EC: ; 0x0223A8EC
	add r0, #0x94
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov12_0223A8EC

	thumb_func_start ov12_0223A8F4
ov12_0223A8F4: ; 0x0223A8F4
	mov r2, #0x5f
	lsl r2, r2, #2
	add r2, r0, r2
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
	thumb_func_end ov12_0223A8F4

	thumb_func_start ov12_0223A900
ov12_0223A900: ; 0x0223A900
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223A900

	thumb_func_start ov12_0223A908
ov12_0223A908: ; 0x0223A908
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov12_0223A908

	thumb_func_start ov12_0223A914
ov12_0223A914: ; 0x0223A914
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x1a
	lsl r0, r0, #4
	str r2, [r1, r0]
	bx lr
	thumb_func_end ov12_0223A914

	thumb_func_start ov12_0223A920
ov12_0223A920: ; 0x0223A920
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223A920

	thumb_func_start ov12_0223A928
ov12_0223A928: ; 0x0223A928
	mov r1, #0x6b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223A928

	thumb_func_start ov12_0223A930
ov12_0223A930: ; 0x0223A930
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov12_0223A930

	thumb_func_start ov12_0223A934
ov12_0223A934: ; 0x0223A934
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov12_0223A934

	thumb_func_start ov12_0223A938
ov12_0223A938: ; 0x0223A938
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end ov12_0223A938

	thumb_func_start ov12_0223A93C
ov12_0223A93C: ; 0x0223A93C
	ldr r0, [r0, #0x60]
	bx lr
	thumb_func_end ov12_0223A93C

	thumb_func_start ov12_0223A940
ov12_0223A940: ; 0x0223A940
	mov r1, #0x8a
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end ov12_0223A940

	thumb_func_start ov12_0223A948
ov12_0223A948: ; 0x0223A948
	ldr r1, _0223A950 ; =0x00001228
	add r0, r0, r1
	bx lr
	nop
_0223A950: .word 0x00001228
	thumb_func_end ov12_0223A948

	thumb_func_start ov12_0223A954
ov12_0223A954: ; 0x0223A954
	ldr r1, _0223A95C ; =0x000023E8
	add r0, r0, r1
	bx lr
	nop
_0223A95C: .word 0x000023E8
	thumb_func_end ov12_0223A954

	thumb_func_start ov12_0223A960
ov12_0223A960: ; 0x0223A960
	ldr r1, _0223A968 ; =0x000023EA
	add r0, r0, r1
	bx lr
	nop
_0223A968: .word 0x000023EA
	thumb_func_end ov12_0223A960

	thumb_func_start ov12_0223A96C
ov12_0223A96C: ; 0x0223A96C
	ldr r1, _0223A974 ; =0x000023EC
	add r0, r0, r1
	bx lr
	nop
_0223A974: .word 0x000023EC
	thumb_func_end ov12_0223A96C

	thumb_func_start ov12_0223A978
ov12_0223A978: ; 0x0223A978
	ldr r1, _0223A980 ; =0x000023EE
	add r0, r0, r1
	bx lr
	nop
_0223A980: .word 0x000023EE
	thumb_func_end ov12_0223A978

	thumb_func_start ov12_0223A984
ov12_0223A984: ; 0x0223A984
	ldr r1, _0223A98C ; =0x000023F0
	add r0, r0, r1
	bx lr
	nop
_0223A98C: .word 0x000023F0
	thumb_func_end ov12_0223A984

	thumb_func_start ov12_0223A990
ov12_0223A990: ; 0x0223A990
	ldr r1, _0223A998 ; =0x000023F2
	add r0, r0, r1
	bx lr
	nop
_0223A998: .word 0x000023F2
	thumb_func_end ov12_0223A990

	thumb_func_start ov12_0223A99C
ov12_0223A99C: ; 0x0223A99C
	mov r1, #0x1d
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end ov12_0223A99C

	thumb_func_start ov12_0223A9A4
ov12_0223A9A4: ; 0x0223A9A4
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov12_0223A9A4

	thumb_func_start ov12_0223A9A8
ov12_0223A9A8: ; 0x0223A9A8
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov12_0223A9A8

	thumb_func_start ov12_0223A9AC
ov12_0223A9AC: ; 0x0223A9AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223A9CA
	mov r3, #0x10
	tst r2, r3
	beq _0223A9D4
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223A9D4
_0223A9CA:
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0xa0
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0223A9D4:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223A9E8
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1e
	add r0, r5, r0
	add r0, #0xa0
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0223A9E8:
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0xa0
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223A9AC

	thumb_func_start ov12_0223A9F4
ov12_0223A9F4: ; 0x0223A9F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223AA12
	mov r3, #0x10
	tst r2, r3
	beq _0223AA1C
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223AA1C
_0223AA12:
	mov r0, #0x34
	add r5, #0xac
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
_0223AA1C:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223AA34
	mov r0, #1
	add r1, r4, #0
	and r1, r0
	mov r0, #0x34
	add r5, #0xac
	mul r0, r1
	add r0, r5, r0
	pop {r3, r4, r5, pc}
_0223AA34:
	mov r0, #0x34
	add r5, #0xac
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223A9F4

	thumb_func_start ov12_0223AA40
ov12_0223AA40: ; 0x0223AA40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223AA5E
	mov r3, #0x10
	tst r2, r3
	beq _0223AA66
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223AA66
_0223AA5E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
_0223AA66:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223AA78
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
_0223AA78:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223AA40

	thumb_func_start ov12_0223AA80
ov12_0223AA80: ; 0x0223AA80
	ldr r0, [r0, #0x58]
	bx lr
	thumb_func_end ov12_0223AA80

	thumb_func_start ov12_0223AA84
ov12_0223AA84: ; 0x0223AA84
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end ov12_0223AA84

	thumb_func_start ov12_0223AA88
ov12_0223AA88: ; 0x0223AA88
	push {r3, lr}
	ldr r2, _0223AAB4 ; =0x00002478
	ldr r0, [r0, r2]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0223AAA4
	add r0, r1, #0
	mov r1, #0xb4
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
_0223AAA4:
	add r0, r1, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	.align 2, 0
_0223AAB4: .word 0x00002478
	thumb_func_end ov12_0223AA88

	thumb_func_start ov12_0223AAB8
ov12_0223AAB8: ; 0x0223AAB8
	ldr r1, _0223AAC4 ; =0x00002478
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
	nop
_0223AAC4: .word 0x00002478
	thumb_func_end ov12_0223AAB8

	thumb_func_start ov12_0223AAC8
ov12_0223AAC8: ; 0x0223AAC8
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _0223AAD4 ; =sub_02028F94
	ldr r0, [r0, #0x48]
	bx r3
	nop
_0223AAD4: .word sub_02028F94
	thumb_func_end ov12_0223AAC8

	thumb_func_start ov12_0223AAD8
ov12_0223AAD8: ; 0x0223AAD8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0223AAFC
	add r5, r6, #0
_0223AAE8:
	ldr r0, [r5, #0x34]
	bl ov12_02261258
	cmp r7, r0
	beq _0223AAFC
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223AAE8
_0223AAFC:
	ldr r0, [r6, #0x44]
	cmp r4, r0
	blt _0223AB06
	bl GF_AssertFail
_0223AB06:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223AAD8

	thumb_func_start ov12_0223AB0C
ov12_0223AB0C: ; 0x0223AB0C
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _0223AB18 ; =ov12_02261258
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0223AB18: .word ov12_02261258
	thumb_func_end ov12_0223AB0C

	thumb_func_start ov12_0223AB1C
ov12_0223AB1C: ; 0x0223AB1C
	push {r3, lr}
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x34]
	bl ov12_02261258
	mov r1, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov12_0223AB1C

	thumb_func_start ov12_0223AB34
ov12_0223AB34: ; 0x0223AB34
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223AB34

	thumb_func_start ov12_0223AB3C
ov12_0223AB3C: ; 0x0223AB3C
	ldr r0, [r0, #0x64]
	bx lr
	thumb_func_end ov12_0223AB3C

	thumb_func_start ov12_0223AB40
ov12_0223AB40: ; 0x0223AB40
	mov r1, #9
	lsl r1, r1, #0xa
	ldr r0, [r0, r1]
	cmp r0, #0x18
	bgt _0223AB4E
	cmp r0, #0
	bge _0223AB50
_0223AB4E:
	mov r0, #0x18
_0223AB50:
	bx lr
	.align 2, 0
	thumb_func_end ov12_0223AB40

	thumb_func_start ov12_0223AB54
ov12_0223AB54: ; 0x0223AB54
	ldr r1, _0223AB5C ; =0x00002404
	ldr r0, [r0, r1]
	bx lr
	nop
_0223AB5C: .word 0x00002404
	thumb_func_end ov12_0223AB54

	thumb_func_start ov12_0223AB60
ov12_0223AB60: ; 0x0223AB60
	ldr r1, _0223AB68 ; =0x00002408
	ldr r0, [r0, r1]
	bx lr
	nop
_0223AB68: .word 0x00002408
	thumb_func_end ov12_0223AB60

	thumb_func_start ov12_0223AB6C
ov12_0223AB6C: ; 0x0223AB6C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov12_0223A7F0
	str r0, [sp]
	add r0, r6, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223AB88
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223AB88:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _0223ABB2
_0223AB90:
	cmp r4, r5
	beq _0223ABAA
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0223AB1C
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223AB1C
	cmp r7, r0
	beq _0223ABB2
_0223ABAA:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _0223AB90
_0223ABB2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223AB6C

	thumb_func_start ov12_0223ABB8
ov12_0223ABB8: ; 0x0223ABB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	bl ov12_0223A7F0
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223ABDC
	mov r0, #1
	add sp, #8
	eor r0, r6
	pop {r3, r4, r5, r6, r7, pc}
_0223ABDC:
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	ble _0223AC18
_0223ABE4:
	cmp r4, r6
	beq _0223AC10
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223AB0C
	mov r1, #2
	and r1, r0
	ldr r0, [sp]
	cmp r0, r1
	bne _0223AC10
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223AB1C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223AB1C
	cmp r7, r0
	bne _0223AC18
_0223AC10:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0223ABE4
_0223AC18:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223ABB8

	thumb_func_start ov12_0223AC20
ov12_0223AC20: ; 0x0223AC20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	ldr r1, [sp, #0x38]
	add r6, r2, #0
	str r1, [sp, #0x38]
	add r1, r0, #0
	ldr r1, [r1, #0x30]
	add r4, r3, #0
	str r1, [sp, #0x1c]
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	mov r2, #2
	add r3, r7, #0
	bl ov12_022581D4
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	bl ov12_0223A7E0
	cmp r0, #3
	beq _0223AC6A
	ldr r0, [sp, #4]
	bl ov12_0223A7E0
	mov r1, #0x10
	tst r0, r1
	beq _0223AC90
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	bne _0223AC90
_0223AC6A:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov12_0223AB6C
	add r3, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #2
	bl ov12_022581D4
	str r0, [sp, #0xc]
	cmp r0, r6
	bne _0223AC94
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov12_0223AB6C
	add r7, r0, #0
	b _0223AC94
_0223AC90:
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
_0223AC94:
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl ov12_0223A880
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	mov r1, #0xf
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223AD28
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	mov r1, #7
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223AD28
	mov r1, #7
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	add r2, sp, #0x20
	bl sub_0206EC40
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223ACE4
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223AD24
_0223ACE4:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #7
	str r0, [sp, #0x20]
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov12_0224F168
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov12_0224EDE0
	ldr r1, _0223AF38 ; =0xF7FFFFFF
	str r0, [sp, #0x20]
	and r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	add r3, sp, #0x20
	bl ov12_0224F168
_0223AD24:
	mov r0, #1
	str r0, [sp, #0x14]
_0223AD28:
	ldr r0, [sp, #0x38]
	mov r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223AD8C
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0223AF3C ; =0x00000F88
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223AD8C
	ldr r1, _0223AF40 ; =0xFFFFF077
	add r2, sp, #0x20
	and r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	bl sub_0206EC40
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223AD68
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223AD88
_0223AD68:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov12_0224EDE0
	ldr r1, _0223AF40 ; =0xFFFFF077
	str r0, [sp, #0x20]
	and r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov12_0224F168
_0223AD88:
	mov r0, #1
	str r0, [sp, #0x14]
_0223AD8C:
	ldr r0, [sp, #0x38]
	mov r1, #0x11
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223ADF0
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	mov r1, #0x10
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223ADF0
	mov r1, #0x10
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	add r2, sp, #0x20
	bl sub_0206EC40
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223ADCC
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223ADEC
_0223ADCC:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #0x10
	str r0, [sp, #0x20]
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov12_0224F168
_0223ADEC:
	mov r0, #1
	str r0, [sp, #0x14]
_0223ADF0:
	ldr r0, [sp, #0x38]
	mov r1, #0x12
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223AE54
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	mov r1, #0x20
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223AE54
	mov r1, #0x20
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	add r2, sp, #0x20
	bl sub_0206EC40
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223AE30
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223AE50
_0223AE30:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #0x20
	str r0, [sp, #0x20]
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov12_0224F168
_0223AE50:
	mov r0, #1
	str r0, [sp, #0x14]
_0223AE54:
	ldr r0, [sp, #0x38]
	mov r1, #0x13
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223AEB8
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	mov r1, #0x40
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223AEB8
	mov r1, #0x40
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	add r2, sp, #0x20
	bl sub_0206EC40
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223AE94
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223AEB4
_0223AE94:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #0x40
	str r0, [sp, #0x20]
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov12_0224F168
_0223AEB4:
	mov r0, #1
	str r0, [sp, #0x14]
_0223AEB8:
	ldr r0, [sp, #0x38]
	mov r1, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223AF00
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223AED6
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223AF00
_0223AED6:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #7
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223AF00
	mov r1, #7
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	add r3, sp, #0x20
	bl ov12_0224F168
	mov r0, #1
	str r0, [sp, #0x14]
_0223AF00:
	ldr r0, [sp, #0x38]
	mov r1, #0x15
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223AF5C
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223AF1E
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223AF5C
_0223AF1E:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #0xf
	lsl r1, r1, #0x10
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223AF5C
	ldr r1, _0223AF44 ; =0xFFF0FFFF
	b _0223AF48
	.align 2, 0
_0223AF38: .word 0xF7FFFFFF
_0223AF3C: .word 0x00000F88
_0223AF40: .word 0xFFFFF077
_0223AF44: .word 0xFFF0FFFF
_0223AF48:
	mov r2, #0x35
	and r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	add r3, sp, #0x20
	bl ov12_0224F168
	mov r0, #1
	str r0, [sp, #0x14]
_0223AF5C:
	ldr r0, [sp, #0x38]
	mov r1, #0x16
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223AFB6
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #1
	add r3, r7, #0
	bl ov12_022581D4
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _0223AFB6
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #0
	add r3, r7, #0
	bl ov12_022581D4
	mov r1, #0x40
	str r0, [sp, #0x20]
	orr r0, r1
	str r0, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #0
	add r3, r7, #0
	bl ov12_022582B8
	mov r0, #5
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #1
	add r3, r7, #0
	bl ov12_022582B8
	mov r0, #1
	str r0, [sp, #0x14]
_0223AFB6:
	ldr r0, [sp, #0x38]
	mov r1, #0x1b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223AFF4
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223AFD4
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223AFF4
_0223AFD4:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x13
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #0xc
	bge _0223AFF4
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x13
	mov r3, #1
	bl ov12_0224F794
	mov r0, #1
	str r0, [sp, #0x14]
_0223AFF4:
	ldr r0, [sp, #0x38]
	mov r1, #0x1c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B032
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B012
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B032
_0223B012:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #0xc
	bge _0223B032
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #1
	bl ov12_0224F794
	mov r0, #1
	str r0, [sp, #0x14]
_0223B032:
	ldr r0, [sp, #0x38]
	mov r1, #0x1d
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B070
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B050
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B070
_0223B050:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x16
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #0xc
	bge _0223B070
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x16
	mov r3, #1
	bl ov12_0224F794
	mov r0, #1
	str r0, [sp, #0x14]
_0223B070:
	ldr r0, [sp, #0x38]
	mov r1, #0x1e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B0AE
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B08E
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B0AE
_0223B08E:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x17
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #0xc
	bge _0223B0AE
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x17
	mov r3, #1
	bl ov12_0224F794
	mov r0, #1
	str r0, [sp, #0x14]
_0223B0AE:
	ldr r0, [sp, #0x38]
	mov r1, #0x1f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B0EC
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B0CC
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B0EC
_0223B0CC:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x15
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #0xc
	bge _0223B0EC
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x15
	mov r3, #1
	bl ov12_0224F794
	mov r0, #1
	str r0, [sp, #0x14]
_0223B0EC:
	ldr r0, [sp, #0x38]
	mov r1, #0x20
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B12A
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B10A
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B12A
_0223B10A:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x18
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #0xc
	bge _0223B12A
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x18
	mov r3, #1
	bl ov12_0224F794
	mov r0, #1
	str r0, [sp, #0x14]
_0223B12A:
	ldr r0, [sp, #0x38]
	mov r1, #0x21
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B174
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B148
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B174
_0223B148:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #1
	lsl r1, r1, #0x14
	add r2, r0, #0
	str r0, [sp, #0x20]
	tst r2, r1
	bne _0223B174
	orr r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	add r3, sp, #0x20
	bl ov12_0224F168
	mov r0, #1
	str r0, [sp, #0x14]
_0223B174:
	ldr r0, [sp, #0x38]
	mov r1, #0x24
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B20A
	ldr r0, [sp, #0x38]
	mov r1, #0x37
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	str r0, [sp, #0x20]
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x3a
	mov r2, #0
	bl sub_0206E540
	add r5, r0, #0
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x42
	mov r2, #0
	bl sub_0206E540
	cmp r5, r0
	beq _0223B20A
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	add r1, #0x3a
	bl sub_0206F558
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B1CC
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B206
_0223B1CC:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #2
	lsl r1, r1, #0x14
	tst r0, r1
	bne _0223B206
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x4b
	mov r3, #0
	bl ov12_0224EDE0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020726C0
	tst r0, r5
	bne _0223B206
	add r4, #0x1f
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r1, r7, #0
	add r2, r4, #0
	bl ov12_0224F794
_0223B206:
	mov r0, #1
	str r0, [sp, #0x14]
_0223B20A:
	ldr r0, [sp, #0x38]
	mov r1, #0x25
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B2A8
	ldr r0, [sp, #0x38]
	mov r1, #0x37
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	str r0, [sp, #0x20]
	mov r4, #0
_0223B22E:
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x3a
	mov r2, #0
	bl sub_0206E540
	add r5, r0, #0
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x42
	mov r2, #0
	bl sub_0206E540
	cmp r5, r0
	beq _0223B2A2
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	add r1, #0x3a
	bl sub_0206F558
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B264
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B29E
_0223B264:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov12_0224EDE0
	mov r1, #2
	lsl r1, r1, #0x14
	tst r0, r1
	bne _0223B29E
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x4b
	mov r3, #0
	bl ov12_0224EDE0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020726C0
	tst r0, r5
	bne _0223B29E
	add r2, r4, #0
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r1, r7, #0
	add r2, #0x1f
	bl ov12_0224F794
_0223B29E:
	mov r0, #1
	str r0, [sp, #0x14]
_0223B2A2:
	add r4, r4, #1
	cmp r4, #4
	blt _0223B22E
_0223B2A8:
	ldr r0, [sp, #0x38]
	mov r1, #0x26
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	bne _0223B2BC
	b _0223B3C4
_0223B2BC:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x38]
	mov r1, #0x17
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B2E6
	ldr r0, [sp, #0x18]
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _0223B2F2
	mov r0, #1
	str r0, [sp, #0x20]
	b _0223B2F2
_0223B2E6:
	ldr r0, [sp, #0x18]
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	str r0, [sp, #0x20]
_0223B2F2:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0223B3C4
	ldr r0, [sp, #0x18]
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_0206E540
	cmp r4, r0
	beq _0223B3C4
	ldr r0, [sp, #0x38]
	mov r1, #0x36
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	str r0, [sp, #0x20]
	cmp r0, #0xfd
	beq _0223B352
	cmp r0, #0xfe
	beq _0223B33C
	cmp r0, #0xff
	bne _0223B372
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_0206E540
	str r0, [sp, #0x20]
	b _0223B372
_0223B33C:
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_0206E540
	lsr r0, r0, #1
	str r0, [sp, #0x20]
	bne _0223B372
	mov r0, #1
	str r0, [sp, #0x20]
	b _0223B372
_0223B352:
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_0206E540
	mov r1, #0x19
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	bl sub_020F2BA4
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _0223B372
	mov r0, #1
	str r0, [sp, #0x20]
_0223B372:
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	mov r1, #0xa3
	bl sub_0206F558
	ldr r0, [sp, #0x38]
	mov r1, #0x17
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	bne _0223B3C0
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223B3A8
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x5f
	add r3, sp, #0x20
	bl ov12_0224F168
	b _0223B3C0
_0223B3A8:
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B3B4
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B3C0
_0223B3B4:
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r1, r7, #0
	mov r2, #0x2f
	bl ov12_0224F794
_0223B3C0:
	mov r0, #1
	str r0, [sp, #0x14]
_0223B3C4:
	ldr r0, [sp, #0x38]
	mov r1, #0x2d
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B3FA
	ldr r0, [sp, #0x18]
	mov r1, #9
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0x64
	bhs _0223B3FA
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0223B3FA
	ldr r0, [sp, #0x38]
	mov r1, #0x38
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	str r0, [sp, #8]
_0223B3FA:
	ldr r0, [sp, #0x38]
	mov r1, #0x2e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B43E
	ldr r0, [sp, #0x18]
	mov r1, #9
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0x64
	blo _0223B43E
	ldr r0, [sp, #0x18]
	mov r1, #9
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0xc8
	bhs _0223B43E
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0223B43E
	ldr r0, [sp, #0x38]
	mov r1, #0x39
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	str r0, [sp, #8]
_0223B43E:
	ldr r0, [sp, #0x38]
	mov r1, #0x2f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0
	beq _0223B474
	ldr r0, [sp, #0x18]
	mov r1, #9
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0xc8
	blo _0223B474
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0223B474
	ldr r0, [sp, #0x38]
	mov r1, #0x3a
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_02077D88
	str r0, [sp, #8]
_0223B474:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0223B4FA
	ble _0223B4D8
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	bl ov12_0223AA88
	bl sub_020780BC
	cmp r0, #0xb
	bne _0223B492
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0223B492:
	ldr r0, [sp, #0x18]
	mov r1, #0x98
	mov r2, #0
	bl sub_0206E540
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov12_0223AB60
	cmp r4, r0
	bne _0223B4AE
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0223B4AE:
	ldr r0, [sp, #0x18]
	mov r1, #6
	mov r2, #0
	bl sub_0206E540
	str r0, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0x35
	bne _0223B4D8
	ldr r1, [sp, #8]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl sub_020F2998
	str r0, [sp, #8]
_0223B4D8:
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #8]
	mov r1, #9
	bl sub_0206F558
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223B4EE
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223B4FA
_0223B4EE:
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #8]
	add r1, r7, #0
	mov r2, #0x2c
	bl ov12_0224F794
_0223B4FA:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0223B50C
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x18]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl sub_02097EF4
_0223B50C:
	ldr r0, [sp, #0x14]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223AC20

	thumb_func_start ov12_0223B514
ov12_0223B514: ; 0x0223B514
	ldr r1, _0223B51C ; =0x0000240C
	ldr r0, [r0, r1]
	bx lr
	nop
_0223B51C: .word 0x0000240C
	thumb_func_end ov12_0223B514

	thumb_func_start ov12_0223B520
ov12_0223B520: ; 0x0223B520
	ldr r1, _0223B528 ; =0x00002410
	ldr r0, [r0, r1]
	bx lr
	nop
_0223B528: .word 0x00002410
	thumb_func_end ov12_0223B520

	thumb_func_start ov12_0223B52C
ov12_0223B52C: ; 0x0223B52C
	ldr r2, _0223B57C ; =0x00002404
	ldr r1, [r0, r2]
	cmp r1, #5
	bhi _0223B576
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B540: ; jump table
	.short _0223B54C - _0223B540 - 2 ; case 0
	.short _0223B54C - _0223B540 - 2 ; case 1
	.short _0223B54C - _0223B540 - 2 ; case 2
	.short _0223B54C - _0223B540 - 2 ; case 3
	.short _0223B54C - _0223B540 - 2 ; case 4
	.short _0223B54C - _0223B540 - 2 ; case 5
_0223B54C:
	add r2, #0xc
	ldr r1, [r0, r2]
	cmp r1, #4
	bhi _0223B578
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B560: ; jump table
	.short _0223B56A - _0223B560 - 2 ; case 0
	.short _0223B56A - _0223B560 - 2 ; case 1
	.short _0223B56E - _0223B560 - 2 ; case 2
	.short _0223B572 - _0223B560 - 2 ; case 3
	.short _0223B572 - _0223B560 - 2 ; case 4
_0223B56A:
	mov r0, #0
	bx lr
_0223B56E:
	mov r0, #1
	bx lr
_0223B572:
	mov r0, #2
	bx lr
_0223B576:
	mov r0, #0
_0223B578:
	bx lr
	nop
_0223B57C: .word 0x00002404
	thumb_func_end ov12_0223B52C

	thumb_func_start ov12_0223B580
ov12_0223B580: ; 0x0223B580
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov12_0223AB0C
	cmp r0, #4
	bne _0223B5E8
	ldr r1, [r5, #0x2c]
	mov r0, #8
	tst r0, r1
	bne _0223B5E8
	mov r0, #4
	tst r0, r1
	beq _0223B5B2
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223AB6C
	bl sub_020726C0
	tst r0, r4
	bne _0223B5E8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223B5B2:
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0
	bl ov12_022581D4
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_022581D4
	cmp r0, #0xe
	bne _0223B5D6
	cmp r6, #0x10
	bhi _0223B5E0
_0223B5D6:
	mov r0, #0
	bl sub_020726C0
	tst r0, r4
	beq _0223B5E4
_0223B5E0:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223B5E4:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223B5E8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223B580

	thumb_func_start ov12_0223B5EC
ov12_0223B5EC: ; 0x0223B5EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	add r7, r2, #0
	cmp r0, #1
	beq _0223B60E
	cmp r0, #4
	beq _0223B60E
	cmp r0, #5
	beq _0223B60E
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0223B60E:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223B682
_0223B618:
	mov r0, #0
	str r0, [r4]
	cmp r0, #6
	bge _0223B650
	mov r6, #0x5e
	lsl r6, r6, #2
_0223B624:
	bl sub_020726C0
	ldr r1, [r5, r6]
	tst r0, r1
	beq _0223B646
	ldr r0, [r4]
	bl sub_020726C0
	mov r3, #0x5e
	lsl r3, r3, #2
	mov r2, #0
	mvn r2, r2
	ldr r1, [r5, r3]
	eor r0, r2
	and r0, r1
	str r0, [r5, r3]
	b _0223B650
_0223B646:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	cmp r0, #6
	blt _0223B624
_0223B650:
	ldr r1, [r4]
	cmp r1, #6
	bge _0223B678
	ldr r0, [r5, #4]
	bl sub_02074644
	mov r3, #0x16
	str r7, [sp]
	lsl r3, r3, #4
	ldr r3, [r5, r3]
	add r1, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [r5, #4]
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_02070E34
	str r0, [sp, #4]
	cmp r0, #0
	bne _0223B684
_0223B678:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223B618
_0223B682:
	ldr r0, [sp, #4]
_0223B684:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223B5EC

	thumb_func_start ov12_0223B688
ov12_0223B688: ; 0x0223B688
	ldr r1, _0223B690 ; =0x000023FC
	ldrb r0, [r0, r1]
	bx lr
	nop
_0223B690: .word 0x000023FC
	thumb_func_end ov12_0223B688

	thumb_func_start ov12_0223B694
ov12_0223B694: ; 0x0223B694
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0223B6A2
	bl GF_AssertFail
_0223B6A2:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov12_022581D4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	thumb_func_end ov12_0223B694

	thumb_func_start ov12_0223B6B4
ov12_0223B6B4: ; 0x0223B6B4
	ldr r1, _0223B6BC ; =0x00002414
	ldr r0, [r0, r1]
	bx lr
	nop
_0223B6BC: .word 0x00002414
	thumb_func_end ov12_0223B6B4

	thumb_func_start ov12_0223B6C0
ov12_0223B6C0: ; 0x0223B6C0
	ldr r2, _0223B6C8 ; =0x00002414
	str r1, [r0, r2]
	bx lr
	nop
_0223B6C8: .word 0x00002414
	thumb_func_end ov12_0223B6C0

	thumb_func_start ov12_0223B6CC
ov12_0223B6CC: ; 0x0223B6CC
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223B6CC

	thumb_func_start ov12_0223B6D4
ov12_0223B6D4: ; 0x0223B6D4
	push {r3, lr}
	ldr r2, [r0, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _0223B6EC
	ldr r1, _0223B704 ; =0x0000240C
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223B6EC
	mov r0, #1
	pop {r3, pc}
_0223B6EC:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0202AD74
	cmp r0, #0
	bne _0223B6FE
	mov r0, #1
	pop {r3, pc}
_0223B6FE:
	mov r0, #0
	pop {r3, pc}
	nop
_0223B704: .word 0x0000240C
	thumb_func_end ov12_0223B6D4

	thumb_func_start ov12_0223B708
ov12_0223B708: ; 0x0223B708
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r3, _0223B714 ; =sub_0202ADCC
	ldr r0, [r0, r1]
	bx r3
	nop
_0223B714: .word sub_0202ADCC
	thumb_func_end ov12_0223B708

	thumb_func_start ov12_0223B718
ov12_0223B718: ; 0x0223B718
	push {r3, lr}
	ldr r2, [r0, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _0223B730
	ldr r1, _0223B73C ; =0x0000240C
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223B730
	mov r0, #1
	pop {r3, pc}
_0223B730:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0202AD3C
	pop {r3, pc}
	.align 2, 0
_0223B73C: .word 0x0000240C
	thumb_func_end ov12_0223B718

	thumb_func_start ov12_0223B740
ov12_0223B740: ; 0x0223B740
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r3, _0223B74C ; =sub_0202AD90
	ldr r0, [r0, r1]
	bx r3
	nop
_0223B74C: .word sub_0202AD90
	thumb_func_end ov12_0223B740

	thumb_func_start ov12_0223B750
ov12_0223B750: ; 0x0223B750
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223B750

	thumb_func_start ov12_0223B758
ov12_0223B758: ; 0x0223B758
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223B776
	mov r3, #0x10
	tst r2, r3
	beq _0223B77E
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223B77E
_0223B776:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x78]
	pop {r3, r4, r5, pc}
_0223B77E:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223B790
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x78]
	pop {r3, r4, r5, pc}
_0223B790:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x78]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223B758

	thumb_func_start ov12_0223B798
ov12_0223B798: ; 0x0223B798
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0xa9
	ldr r2, [r5, #0x2c]
	lsl r1, r1, #2
	tst r1, r2
	bne _0223B84E
	mov r4, #0
	add r1, r4, #0
	bl ov12_0223A834
	cmp r0, #0
	ble _0223B84E
	add r7, r4, #0
_0223B7B4:
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov12_0223A880
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r1, r0
	bne _0223B840
	add r0, r4, #0
	bl sub_020726C0
	ldr r1, _0223B850 ; =0x00002418
	ldrb r1, [r5, r1]
	tst r0, r1
	beq _0223B840
	add r0, r5, #0
	bl ov12_0223AB40
	cmp r0, #0x17
	bhi _0223B828
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B7F8: ; jump table
	.short _0223B82C - _0223B7F8 - 2 ; case 0
	.short _0223B82C - _0223B7F8 - 2 ; case 1
	.short _0223B828 - _0223B7F8 - 2 ; case 2
	.short _0223B828 - _0223B7F8 - 2 ; case 3
	.short _0223B82C - _0223B7F8 - 2 ; case 4
	.short _0223B82C - _0223B7F8 - 2 ; case 5
	.short _0223B828 - _0223B7F8 - 2 ; case 6
	.short _0223B828 - _0223B7F8 - 2 ; case 7
	.short _0223B828 - _0223B7F8 - 2 ; case 8
	.short _0223B832 - _0223B7F8 - 2 ; case 9
	.short _0223B828 - _0223B7F8 - 2 ; case 10
	.short _0223B832 - _0223B7F8 - 2 ; case 11
	.short _0223B832 - _0223B7F8 - 2 ; case 12
	.short _0223B832 - _0223B7F8 - 2 ; case 13
	.short _0223B832 - _0223B7F8 - 2 ; case 14
	.short _0223B832 - _0223B7F8 - 2 ; case 15
	.short _0223B832 - _0223B7F8 - 2 ; case 16
	.short _0223B82C - _0223B7F8 - 2 ; case 17
	.short _0223B832 - _0223B7F8 - 2 ; case 18
	.short _0223B832 - _0223B7F8 - 2 ; case 19
	.short _0223B832 - _0223B7F8 - 2 ; case 20
	.short _0223B832 - _0223B7F8 - 2 ; case 21
	.short _0223B832 - _0223B7F8 - 2 ; case 22
	.short _0223B82C - _0223B7F8 - 2 ; case 23
_0223B828:
	str r7, [sp]
	b _0223B836
_0223B82C:
	mov r0, #1
	str r0, [sp]
	b _0223B836
_0223B832:
	mov r0, #2
	str r0, [sp]
_0223B836:
	add r0, r6, #0
	mov r1, #0x70
	add r2, sp, #0
	bl sub_0206EC40
_0223B840:
	add r0, r5, #0
	mov r1, #0
	add r4, r4, #1
	bl ov12_0223A834
	cmp r4, r0
	blt _0223B7B4
_0223B84E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B850: .word 0x00002418
	thumb_func_end ov12_0223B798

	thumb_func_start ov12_0223B854
ov12_0223B854: ; 0x0223B854
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_020726C0
	ldr r1, _0223B86C ; =0x00002418
	add r2, r5, r1
	ldrb r1, [r2, r4]
	orr r0, r1
	strb r0, [r2, r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B86C: .word 0x00002418
	thumb_func_end ov12_0223B854

	thumb_func_start ov12_0223B870
ov12_0223B870: ; 0x0223B870
	bx lr
	.align 2, 0
	thumb_func_end ov12_0223B870

	thumb_func_start ov12_0223B874
ov12_0223B874: ; 0x0223B874
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #1
	add r4, r0, #0
	mov r0, #5
	lsl r1, r1, #0x10
	bl sub_0201AA8C
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #5
	sub r1, #0x20
	bl sub_0201AA8C
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, r1, #4
	mov r2, #1
	ldr r0, _0223BACC ; =0x06010000
	ldr r1, [r4, r1]
	lsl r2, r2, #0x10
	bl sub_020D4808
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0200335C
	mov r2, #2
	add r1, r5, #0
	lsl r2, r2, #8
	bl sub_020D4808
	mov r0, #0x19
	lsl r0, r0, #0x16
	str r0, [sp, #0x24]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl sub_02024B1C
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x24]
	add r0, r0, r1
	str r0, [sp, #0x24]
	mov r0, #0x14
	str r0, [sp, #0x28]
	lsl r0, r0, #0xb
	str r0, [sp, #0xc]
_0223B8E0:
	mov r0, #0x10
	mov ip, r0
	lsl r0, r0, #6
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	mov r7, #1
	sub r0, #0x14
	lsl r1, r0, #8
	ldr r0, [sp, #0x24]
	add r0, r0, r1
	str r0, [sp, #0x10]
_0223B8F6:
	mov r0, ip
	sub r0, #0x10
	ldr r1, [sp, #0x10]
	lsl r3, r0, #5
	add r3, r1, r3
	ldr r5, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r2, #0
	add r6, r5, r1
_0223B908:
	cmp r0, #8
	bge _0223B930
	add r1, r2, #0
	tst r1, r7
	beq _0223B922
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	ldrb r5, [r3, r1]
	mov r1, #0xf0
	and r1, r5
	asr r1, r1, #4
	b _0223B95E
_0223B922:
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	ldrb r5, [r3, r1]
	mov r1, #0xf
	and r1, r5
	b _0223B95E
_0223B930:
	mov r1, #1
	tst r1, r2
	beq _0223B94C
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r5, r3, r1
	mov r1, #7
	lsl r1, r1, #8
	ldrb r5, [r5, r1]
	mov r1, #0xf0
	and r1, r5
	asr r1, r1, #4
	b _0223B95E
_0223B94C:
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r5, r3, r1
	mov r1, #7
	lsl r1, r1, #8
	ldrb r5, [r5, r1]
	mov r1, #0xf
	and r1, r5
_0223B95E:
	cmp r1, #0
	beq _0223B96E
	mov r5, #0x22
	lsl r5, r5, #4
	ldr r5, [r4, r5]
	add r1, #0x70
	add r5, r6, r5
	strb r1, [r2, r5]
_0223B96E:
	add r2, r2, #1
	cmp r2, #0x40
	blt _0223B908
	ldr r0, [sp, #0x14]
	add r0, #0x40
	str r0, [sp, #0x14]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x20
	blt _0223B8F6
	mov r1, #2
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #0x1c
	blt _0223B8E0
	mov r0, #0x19
	lsl r0, r0, #0x16
	str r0, [sp, #8]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl sub_02024B1C
	ldr r1, [r0, #4]
	ldr r0, [sp, #8]
	mov r7, #0x26
	add r0, r0, r1
	str r0, [sp, #8]
	mov r3, #0
	mov r0, #0xf
	mov r1, #0xf0
	lsl r7, r7, #0xa
	mov r2, #1
_0223B9BE:
	add r5, r3, #0
	tst r5, r2
	beq _0223B9D4
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r6, r5, #1
	ldr r5, [sp, #8]
	ldrb r5, [r5, r6]
	and r5, r1
	asr r5, r5, #4
	b _0223B9E0
_0223B9D4:
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r6, r5, #1
	ldr r5, [sp, #8]
	ldrb r5, [r5, r6]
	and r5, r0
_0223B9E0:
	cmp r5, #0
	beq _0223B9F0
	mov r6, #0x22
	lsl r6, r6, #4
	ldr r6, [r4, r6]
	add r5, #0x70
	add r6, r6, r3
	strb r5, [r6, r7]
_0223B9F0:
	mov r5, #2
	add r3, r3, #1
	lsl r5, r5, #0xa
	cmp r3, r5
	blt _0223B9BE
	mov r0, #0x1c
	str r0, [sp, #4]
	lsl r0, r0, #0xb
	str r0, [sp, #0x18]
_0223BA02:
	ldr r0, [sp, #4]
	mov r2, #0
	sub r0, #0x1c
	lsl r1, r0, #8
	ldr r0, [sp, #8]
	str r2, [sp, #0x20]
	add r0, r0, r1
	str r0, [sp, #0x1c]
	mov r7, #1
_0223BA14:
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	lsl r1, r0, #0xa
	ldr r0, [sp, #0x1c]
	lsr r5, r2, #0x1f
	add r6, r0, r1
	lsl r1, r2, #0x1d
	sub r1, r1, r5
	mov r0, #0x1d
	ror r1, r0
	add r0, r5, r1
	lsl r0, r0, #5
	ldr r5, [sp, #0x18]
	ldr r1, [sp, #0x20]
	mov r3, #0
	add r0, r6, r0
	add r1, r5, r1
_0223BA3A:
	add r5, r3, #0
	tst r5, r7
	beq _0223BA56
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	add r6, r0, r5
	mov r5, #1
	lsl r5, r5, #0xa
	ldrb r6, [r6, r5]
	mov r5, #0xf0
	and r5, r6
	asr r5, r5, #4
	b _0223BA68
_0223BA56:
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	add r6, r0, r5
	mov r5, #1
	lsl r5, r5, #0xa
	ldrb r6, [r6, r5]
	mov r5, #0xf
	and r5, r6
_0223BA68:
	cmp r5, #0
	beq _0223BA78
	mov r6, #0x22
	lsl r6, r6, #4
	ldr r6, [r4, r6]
	add r5, #0x70
	add r6, r1, r6
	strb r5, [r3, r6]
_0223BA78:
	add r3, r3, #1
	cmp r3, #0x40
	blt _0223BA3A
	ldr r0, [sp, #0x20]
	add r2, r2, #1
	add r0, #0x40
	str r0, [sp, #0x20]
	cmp r2, #0x18
	blt _0223BA14
	mov r3, #2
	ldr r0, [sp, #0x18]
	lsl r3, r3, #0xa
	add r0, r0, r3
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0x20
	blt _0223BA02
	mov r0, #0
	mov r2, #0x22
	str r0, [sp]
	lsl r2, r2, #4
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	mov r1, #3
	lsl r3, r3, #5
	bl sub_0201C0C0
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02266008
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov12_02266008
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0223BACC: .word 0x06010000
	thumb_func_end ov12_0223B874

	thumb_func_start ov12_0223BAD0
ov12_0223BAD0: ; 0x0223BAD0
	mov r1, #0x22
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223BAD0

	thumb_func_start ov12_0223BAD8
ov12_0223BAD8: ; 0x0223BAD8
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223BAD8

	thumb_func_start ov12_0223BAE0
ov12_0223BAE0: ; 0x0223BAE0
	ldr r1, _0223BAE8 ; =0x00002228
	add r0, r0, r1
	bx lr
	nop
_0223BAE8: .word 0x00002228
	thumb_func_end ov12_0223BAE0

	thumb_func_start ov12_0223BAEC
ov12_0223BAEC: ; 0x0223BAEC
	ldr r1, _0223BAF4 ; =0x00002308
	add r0, r0, r1
	bx lr
	nop
_0223BAF4: .word 0x00002308
	thumb_func_end ov12_0223BAEC

	thumb_func_start ov12_0223BAF8
ov12_0223BAF8: ; 0x0223BAF8
	ldr r1, _0223BB00 ; =0x0000242C
	ldr r0, [r0, r1]
	bx lr
	nop
_0223BB00: .word 0x0000242C
	thumb_func_end ov12_0223BAF8

	thumb_func_start ov12_0223BB04
ov12_0223BB04: ; 0x0223BB04
	ldr r1, _0223BB0C ; =0x00002421
	ldrb r0, [r0, r1]
	bx lr
	nop
_0223BB0C: .word 0x00002421
	thumb_func_end ov12_0223BB04

	thumb_func_start ov12_0223BB10
ov12_0223BB10: ; 0x0223BB10
	ldr r2, _0223BB18 ; =0x00002421
	strb r1, [r0, r2]
	bx lr
	nop
_0223BB18: .word 0x00002421
	thumb_func_end ov12_0223BB10

	thumb_func_start ov12_0223BB1C
ov12_0223BB1C: ; 0x0223BB1C
	ldr r1, _0223BB24 ; =0x00002430
	ldr r0, [r0, r1]
	bx lr
	nop
_0223BB24: .word 0x00002430
	thumb_func_end ov12_0223BB1C

	thumb_func_start ov12_0223BB28
ov12_0223BB28: ; 0x0223BB28
	push {r3, lr}
	ldr r2, _0223BB40 ; =0x0000240C
	ldr r3, [r0, r2]
	mov r2, #0x10
	tst r2, r3
	bne _0223BB3E
	mov r2, #0x87
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	bl sub_0202D0FC
_0223BB3E:
	pop {r3, pc}
	.align 2, 0
_0223BB40: .word 0x0000240C
	thumb_func_end ov12_0223BB28

	thumb_func_start ov12_0223BB44
ov12_0223BB44: ; 0x0223BB44
	push {r3, lr}
	ldr r1, _0223BB60 ; =0x0000240C
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223BB5C
	mov r1, #0x87
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x15
	bl sub_0202D1C0
_0223BB5C:
	pop {r3, pc}
	nop
_0223BB60: .word 0x0000240C
	thumb_func_end ov12_0223BB44

	thumb_func_start ov12_0223BB64
ov12_0223BB64: ; 0x0223BB64
	mov r2, #0x91
	lsl r2, r2, #6
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov12_0223BB64

	thumb_func_start ov12_0223BB6C
ov12_0223BB6C: ; 0x0223BB6C
	ldr r2, _0223BB74 ; =0x00002444
	strb r1, [r0, r2]
	bx lr
	nop
_0223BB74: .word 0x00002444
	thumb_func_end ov12_0223BB6C

	thumb_func_start ov12_0223BB78
ov12_0223BB78: ; 0x0223BB78
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov12_0223BB78

	thumb_func_start ov12_0223BB80
ov12_0223BB80: ; 0x0223BB80
	mov r2, #0x6f
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov12_0223BB80

	thumb_func_start ov12_0223BB88
ov12_0223BB88: ; 0x0223BB88
	mov r2, #0x1d
	lsl r2, r2, #4
	add r2, r0, r2
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
	thumb_func_end ov12_0223BB88

	thumb_func_start ov12_0223BB94
ov12_0223BB94: ; 0x0223BB94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blt _0223BBA2
	bl GF_AssertFail
_0223BBA2:
	lsl r0, r5, #4
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223BB94

	thumb_func_start ov12_0223BBA8
ov12_0223BBA8: ; 0x0223BBA8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	blt _0223BBB8
	bl GF_AssertFail
_0223BBB8:
	lsl r0, r4, #4
	add r0, r5, r0
	str r6, [r0, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223BBA8

	thumb_func_start ov12_0223BBC0
ov12_0223BBC0: ; 0x0223BBC0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	blt _0223BBD0
	bl GF_AssertFail
_0223BBD0:
	lsl r0, r4, #4
	add r0, r5, r0
	str r6, [r0, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223BBC0

	thumb_func_start ov12_0223BBD8
ov12_0223BBD8: ; 0x0223BBD8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	blt _0223BBE8
	bl GF_AssertFail
_0223BBE8:
	lsl r0, r4, #4
	add r0, r5, r0
	str r6, [r0, #0xc]
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223BBD8

	thumb_func_start ov12_0223BBF0
ov12_0223BBF0: ; 0x0223BBF0
	ldr r2, _0223BBF8 ; =0x000023FD
	strb r1, [r0, r2]
	bx lr
	nop
_0223BBF8: .word 0x000023FD
	thumb_func_end ov12_0223BBF0

	thumb_func_start ov12_0223BBFC
ov12_0223BBFC: ; 0x0223BBFC
	ldr r2, _0223BC04 ; =0x000023F4
	str r1, [r0, r2]
	bx lr
	nop
_0223BC04: .word 0x000023F4
	thumb_func_end ov12_0223BBFC

	thumb_func_start ov12_0223BC08
ov12_0223BC08: ; 0x0223BC08
	ldr r2, _0223BC10 ; =0x000023F8
	str r1, [r0, r2]
	bx lr
	nop
_0223BC10: .word 0x000023F8
	thumb_func_end ov12_0223BC08

	thumb_func_start ov12_0223BC14
ov12_0223BC14: ; 0x0223BC14
	ldr r2, _0223BC1C ; =0x000023F4
	ldr r0, [r0, r2]
	strb r1, [r0]
	bx lr
	.align 2, 0
_0223BC1C: .word 0x000023F4
	thumb_func_end ov12_0223BC14

	thumb_func_start ov12_0223BC20
ov12_0223BC20: ; 0x0223BC20
	ldr r2, _0223BC28 ; =0x000023F8
	ldr r0, [r0, r2]
	strb r1, [r0]
	bx lr
	.align 2, 0
_0223BC28: .word 0x000023F8
	thumb_func_end ov12_0223BC20

	thumb_func_start ov12_0223BC2C
ov12_0223BC2C: ; 0x0223BC2C
	ldr r2, _0223BC34 ; =0x000023FE
	strb r1, [r0, r2]
	bx lr
	nop
_0223BC34: .word 0x000023FE
	thumb_func_end ov12_0223BC2C

	thumb_func_start ov12_0223BC38
ov12_0223BC38: ; 0x0223BC38
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _0223BC44 ; =ov12_0226127C
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0223BC44: .word ov12_0226127C
	thumb_func_end ov12_0223BC38

	thumb_func_start ov12_0223BC48
ov12_0223BC48: ; 0x0223BC48
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r7, #0
	cmp r0, #0
	ble _0223BC94
	add r5, r6, #0
_0223BC56:
	ldr r0, [r5, #0x34]
	bl ov12_0226127C
	add r4, r0, #0
	str r6, [r4, #0xc]
	ldr r0, [r5, #0x34]
	bl ov12_02261258
	str r0, [sp]
	add r0, r6, #0
	bl ov12_0223A7E0
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_02265B64
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	add r0, r4, #0
	bl ov12_02264BCC
	add r0, r4, #0
	mov r1, #0
	bl ov12_02264F28
	ldr r0, [r6, #0x44]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r0
	blt _0223BC56
_0223BC94:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223BC48

	thumb_func_start ov12_0223BC98
ov12_0223BC98: ; 0x0223BC98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _0223BCC4
	add r5, r6, #0
	mov r7, #1
_0223BCA8:
	ldr r0, [r5, #0x34]
	bl ov12_0226127C
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0223BCBA
	add r1, r7, #0
	bl ov12_02264F28
_0223BCBA:
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223BCA8
_0223BCC4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223BC98

	thumb_func_start ov12_0223BCC8
ov12_0223BCC8: ; 0x0223BCC8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _0223BCEE
	add r5, r6, #0
	add r7, r4, #0
_0223BCD8:
	ldr r0, [r5, #0x34]
	bl ov12_0226127C
	add r1, r7, #0
	bl ov12_02264F28
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223BCD8
_0223BCEE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223BCC8

	thumb_func_start ov12_0223BCF0
ov12_0223BCF0: ; 0x0223BCF0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _0223BD12
	add r5, r6, #0
_0223BCFE:
	ldr r0, [r5, #0x34]
	bl ov12_0226127C
	bl ov12_02264C68
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223BCFE
_0223BD12:
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223BCF0

	thumb_func_start ov12_0223BD14
ov12_0223BD14: ; 0x0223BD14
	ldr r1, _0223BD1C ; =0x00002420
	ldrb r0, [r0, r1]
	bx lr
	nop
_0223BD1C: .word 0x00002420
	thumb_func_end ov12_0223BD14

	thumb_func_start ov12_0223BD20
ov12_0223BD20: ; 0x0223BD20
	ldr r2, _0223BD28 ; =0x00002420
	strb r1, [r0, r2]
	bx lr
	nop
_0223BD28: .word 0x00002420
	thumb_func_end ov12_0223BD20

	thumb_func_start ov12_0223BD2C
ov12_0223BD2C: ; 0x0223BD2C
	ldr r1, _0223BD38 ; =0x000023FF
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1e
	bx lr
	nop
_0223BD38: .word 0x000023FF
	thumb_func_end ov12_0223BD2C

	thumb_func_start ov12_0223BD3C
ov12_0223BD3C: ; 0x0223BD3C
	push {r3, r4}
	ldr r3, _0223BD54 ; =0x000023FF
	lsl r1, r1, #0x1e
	ldrb r4, [r0, r3]
	mov r2, #0x18
	lsr r1, r1, #0x1b
	bic r4, r2
	orr r1, r4
	strb r1, [r0, r3]
	pop {r3, r4}
	bx lr
	nop
_0223BD54: .word 0x000023FF
	thumb_func_end ov12_0223BD3C

	thumb_func_start ov12_0223BD58
ov12_0223BD58: ; 0x0223BD58
	ldr r1, _0223BD64 ; =0x000023FF
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	bx lr
	nop
_0223BD64: .word 0x000023FF
	thumb_func_end ov12_0223BD58

	thumb_func_start ov12_0223BD68
ov12_0223BD68: ; 0x0223BD68
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xf
	blo _0223BD76
	bl GF_AssertFail
_0223BD76:
	ldr r1, _0223BD88 ; =0x000023FF
	mov r0, #0xe0
	ldrb r2, [r5, r1]
	bic r2, r0
	lsl r0, r4, #0x1d
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r5, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223BD88: .word 0x000023FF
	thumb_func_end ov12_0223BD68

	thumb_func_start ov12_0223BD8C
ov12_0223BD8C: ; 0x0223BD8C
	ldr r2, _0223BD94 ; =0x0000243C
	str r1, [r0, r2]
	bx lr
	nop
_0223BD94: .word 0x0000243C
	thumb_func_end ov12_0223BD8C

	thumb_func_start ov12_0223BD98
ov12_0223BD98: ; 0x0223BD98
	push {r3, r4}
	ldr r2, _0223BDB8 ; =0x00002448
	ldr r1, _0223BDBC ; =0x41C64E6D
	ldr r3, [r0, r2]
	add r4, r3, #0
	mul r4, r1
	ldr r1, _0223BDC0 ; =0x00006073
	add r1, r4, r1
	str r1, [r0, r2]
	ldr r0, [r0, r2]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_0223BDB8: .word 0x00002448
_0223BDBC: .word 0x41C64E6D
_0223BDC0: .word 0x00006073
	thumb_func_end ov12_0223BD98

	thumb_func_start ov12_0223BDC4
ov12_0223BDC4: ; 0x0223BDC4
	ldr r1, _0223BDCC ; =0x0000244C
	ldr r0, [r0, r1]
	bx lr
	nop
_0223BDCC: .word 0x0000244C
	thumb_func_end ov12_0223BDC4

	thumb_func_start ov12_0223BDD0
ov12_0223BDD0: ; 0x0223BDD0
	ldr r2, _0223BDD8 ; =0x0000244C
	str r1, [r0, r2]
	bx lr
	nop
_0223BDD8: .word 0x0000244C
	thumb_func_end ov12_0223BDD0

	thumb_func_start ov12_0223BDDC
ov12_0223BDDC: ; 0x0223BDDC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _0223BE08 ; =0x0000240C
	mov r3, #0x10
	ldr r4, [r0, r1]
	tst r4, r3
	bne _0223BE04
	add r1, #0x54
	add r4, r0, r1
	lsl r5, r6, #1
	ldrh r1, [r4, r5]
	lsl r0, r3, #6
	cmp r1, r0
	bhs _0223BE04
	add r0, r6, #0
	bl sub_02030260
	ldrh r0, [r4, r5]
	add r0, r0, #1
	strh r0, [r4, r5]
_0223BE04:
	pop {r4, r5, r6, pc}
	nop
_0223BE08: .word 0x0000240C
	thumb_func_end ov12_0223BDDC

	thumb_func_start ov12_0223BE0C
ov12_0223BE0C: ; 0x0223BE0C
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r3, r1, #0
	ldr r1, [sp]
	mov r2, #0xff
	strb r2, [r1]
	ldr r1, _0223BE60 ; =0x0000240C
	mov r6, #0x10
	ldr r2, [r0, r1]
	and r2, r6
	beq _0223BE44
	add r1, #0x54
	lsl r5, r3, #1
	add r4, r0, r1
	ldrh r1, [r4, r5]
	lsl r6, r6, #6
	cmp r1, r6
	bhs _0223BE44
	add r0, r3, #0
	bl sub_0203027C
	ldr r1, [sp]
	mov r7, #0
	strb r0, [r1]
	ldrh r0, [r4, r5]
	add r0, r0, #1
	strh r0, [r4, r5]
	b _0223BE5A
_0223BE44:
	cmp r2, #0
	beq _0223BE5A
	lsl r1, r3, #1
	add r1, r0, r1
	ldr r0, _0223BE64 ; =0x00002460
	ldrh r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	cmp r1, r0
	blo _0223BE5A
	mov r7, #1
_0223BE5A:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BE60: .word 0x0000240C
_0223BE64: .word 0x00002460
	thumb_func_end ov12_0223BE0C

	thumb_func_start ov12_0223BE68
ov12_0223BE68: ; 0x0223BE68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r6, #0
	ldr r0, [r0, #0x44]
	add r7, r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _0223BEFC
_0223BE7A:
	ldr r0, [sp]
	lsl r1, r7, #1
	add r5, r0, r1
	ldr r0, _0223BF0C ; =0x00002460
	add r1, r0, #0
	sub r1, #0x10
	ldrh r2, [r5, r0]
	ldrh r1, [r5, r1]
	cmp r2, r1
	beq _0223BEEE
	add r1, r6, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	ldr r1, [sp, #4]
	add r3, r0, #0
	strb r7, [r1, r6]
	add r1, r2, #1
	lsl r1, r1, #0x18
	sub r3, #0x10
	lsr r6, r1, #0x18
	ldrh r1, [r5, r0]
	ldrh r3, [r5, r3]
	mov r4, #0
	sub r3, r1, r3
	ldr r1, [sp, #4]
	strb r3, [r1, r2]
	ldrh r1, [r5, r0]
	sub r0, #0x10
	ldrh r0, [r5, r0]
	sub r0, r1, r0
	cmp r0, #0
	ble _0223BEE6
_0223BEBA:
	ldr r1, _0223BF10 ; =0x00002450
	add r0, r7, #0
	ldrh r1, [r5, r1]
	add r1, r4, r1
	bl sub_0203027C
	add r2, r6, #1
	lsl r2, r2, #0x18
	add r1, r6, #0
	lsr r6, r2, #0x18
	ldr r2, [sp, #4]
	strb r0, [r2, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0223BF0C ; =0x00002460
	ldrh r1, [r5, r0]
	sub r0, #0x10
	ldrh r0, [r5, r0]
	sub r0, r1, r0
	cmp r4, r0
	blt _0223BEBA
_0223BEE6:
	ldr r0, _0223BF0C ; =0x00002460
	ldrh r1, [r5, r0]
	sub r0, #0x10
	strh r1, [r5, r0]
_0223BEEE:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	ldr r0, [r0, #0x44]
	cmp r7, r0
	blt _0223BE7A
_0223BEFC:
	cmp r6, #0x1c
	bls _0223BF04
	bl GF_AssertFail
_0223BF04:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BF0C: .word 0x00002460
_0223BF10: .word 0x00002450
	thumb_func_end ov12_0223BE68

	thumb_func_start ov12_0223BF14
ov12_0223BF14: ; 0x0223BF14
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0]
	ldr r0, [sp]
	add r6, r2, #0
	ldr r1, [r0, #0x2c]
	mov r0, #4
	tst r0, r1
	beq _0223BF9E
	ldr r1, _0223BFA8 ; =0x000023FC
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0223BF9E
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0223BF9E
_0223BF40:
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #0x24
	bl ov12_0223BFB0
	add r5, r0, #0
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #0x24
	bl ov12_0223BFB0
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0223BF86
	ldr r0, [sp]
	lsl r1, r5, #1
	add r0, r0, r1
	str r0, [sp, #4]
_0223BF66:
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #0x24
	bl ov12_0223BFB0
	add r2, r0, #0
	ldr r3, [sp, #4]
	ldr r1, _0223BFAC ; =0x00002458
	add r0, r5, #0
	ldrh r1, [r3, r1]
	add r1, r4, r1
	bl sub_02030260
	add r4, r4, #1
	cmp r4, r7
	blt _0223BF66
_0223BF86:
	ldr r0, [sp]
	lsl r1, r5, #1
	add r2, r0, r1
	ldr r0, _0223BFAC ; =0x00002458
	ldrh r0, [r2, r0]
	add r1, r0, r7
	ldr r0, _0223BFAC ; =0x00002458
	strh r1, [r2, r0]
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0223BF40
_0223BF9E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_0223BFA8: .word 0x000023FC
_0223BFAC: .word 0x00002458
	thumb_func_end ov12_0223BF14

	thumb_func_start ov12_0223BFB0
ov12_0223BFB0: ; 0x0223BFB0
	ldrh r3, [r2]
	sub r3, r3, #1
	strh r3, [r2]
	ldrb r3, [r1]
	add r2, r3, #1
	strb r2, [r1]
	ldrb r0, [r0, r3]
	bx lr
	thumb_func_end ov12_0223BFB0

	thumb_func_start ov12_0223BFC0
ov12_0223BFC0: ; 0x0223BFC0
	ldr r1, _0223BFC8 ; =0x00002446
	ldrh r0, [r0, r1]
	bx lr
	nop
_0223BFC8: .word 0x00002446
	thumb_func_end ov12_0223BFC0

	thumb_func_start ov12_0223BFCC
ov12_0223BFCC: ; 0x0223BFCC
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0223BFD8 ; =0x00002468
	ldr r0, [r1, r0]
	bx lr
	nop
_0223BFD8: .word 0x00002468
	thumb_func_end ov12_0223BFCC

	thumb_func_start ov12_0223BFDC
ov12_0223BFDC: ; 0x0223BFDC
	mov r3, #0x34
	mul r3, r1
	add r1, r0, r3
	lsl r0, r2, #1
	add r0, r1, r0
	add r0, #0xb0
	ldrh r0, [r0]
	bx lr
	thumb_func_end ov12_0223BFDC

	thumb_func_start ov12_0223BFEC
ov12_0223BFEC: ; 0x0223BFEC
	ldr r1, _0223BFF8 ; =0x00002478
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	nop
_0223BFF8: .word 0x00002478
	thumb_func_end ov12_0223BFEC

	thumb_func_start ov12_0223BFFC
ov12_0223BFFC: ; 0x0223BFFC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _0223C078 ; =0x0000240C
	add r5, r0, #0
	ldr r3, [r5, r1]
	mov r2, #0x10
	tst r2, r3
	beq _0223C072
	add r1, #0x6c
	ldr r1, [r5, r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	bne _0223C072
	ldr r1, [r5, #0x30]
	mov r2, #0xd
	mov r3, #0
	bl ov12_022581D4
	cmp r0, #0x2c
	beq _0223C072
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #0xe
	mov r3, #0
	bl ov12_022581D4
	cmp r0, #0x2c
	beq _0223C072
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov12_0226AA8C
	mov r1, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200FA24
	bl sub_02005FA0
	mov r0, #0
	bl sub_020059D0
	ldr r1, _0223C07C ; =0x00002478
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
_0223C072:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223C078: .word 0x0000240C
_0223C07C: .word 0x00002478
	thumb_func_end ov12_0223BFFC

	thumb_func_start ov12_0223C080
ov12_0223C080: ; 0x0223C080
	push {r4, lr}
	ldr r1, _0223C0C0 ; =0x0000240C
	add r4, r0, #0
	ldr r3, [r4, r1]
	mov r2, #0x10
	tst r2, r3
	beq _0223C0B6
	add r1, #0x6c
	ldr r1, [r4, r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	bne _0223C0B6
	ldr r1, [r4, #0x30]
	mov r2, #0xd
	mov r3, #0
	bl ov12_022581D4
	cmp r0, #0x2c
	beq _0223C0B6
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #0xe
	mov r3, #0
	bl ov12_022581D4
	cmp r0, #0x2c
	bne _0223C0BA
_0223C0B6:
	mov r0, #0
	pop {r4, pc}
_0223C0BA:
	mov r0, #1
	pop {r4, pc}
	nop
_0223C0C0: .word 0x0000240C
	thumb_func_end ov12_0223C080

	thumb_func_start ov12_0223C0C4
ov12_0223C0C4: ; 0x0223C0C4
	push {r4, lr}
	ldr r1, _0223C0E8 ; =0x0000240C
	add r4, r0, #0
	ldr r3, [r4, r1]
	mov r2, #0x10
	tst r2, r3
	beq _0223C0E4
	add r1, #0x74
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0223C0E4
	bl ov12_0226BEC4
	mov r1, #0x92
	lsl r1, r1, #6
	str r0, [r4, r1]
_0223C0E4:
	pop {r4, pc}
	nop
_0223C0E8: .word 0x0000240C
	thumb_func_end ov12_0223C0C4

	thumb_func_start ov12_0223C0EC
ov12_0223C0EC: ; 0x0223C0EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223C10A
	mov r3, #0x10
	tst r2, r3
	beq _0223C112
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223C112
_0223C10A:
	ldr r0, _0223C130 ; =0x00002484
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_0223C112:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223C126
	mov r0, #1
	and r0, r4
	add r1, r5, r0
	ldr r0, _0223C130 ; =0x00002484
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_0223C126:
	ldr r0, _0223C130 ; =0x00002484
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_0223C130: .word 0x00002484
	thumb_func_end ov12_0223C0EC

	thumb_func_start ov12_0223C134
ov12_0223C134: ; 0x0223C134
	ldr r1, _0223C13C ; =0x00002488
	ldr r0, [r0, r1]
	bx lr
	nop
_0223C13C: .word 0x00002488
	thumb_func_end ov12_0223C134

	thumb_func_start ov12_0223C140
ov12_0223C140: ; 0x0223C140
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	blo _0223C14E
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_0223C14E:
	mov r3, #0xa9
	ldr r2, [r5, #0x2c]
	lsl r3, r3, #2
	tst r3, r2
	beq _0223C15C
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_0223C15C:
	mov r3, #2
	tst r2, r3
	beq _0223C170
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _0223C170
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_0223C170:
	ldr r1, [r5, #0x2c]
	mov r0, #8
	tst r0, r1
	beq _0223C180
	ldr r0, _0223C19C ; =0x0000248C
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_0223C180:
	mov r0, #2
	tst r0, r1
	beq _0223C192
	mov r0, #1
	and r0, r4
	add r1, r5, r0
	ldr r0, _0223C19C ; =0x0000248C
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_0223C192:
	ldr r0, _0223C19C ; =0x0000248C
	add r1, r5, r4
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	nop
_0223C19C: .word 0x0000248C
	thumb_func_end ov12_0223C140

	thumb_func_start ov12_0223C1A0
ov12_0223C1A0: ; 0x0223C1A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0223C1C2
	add r5, r6, #0
_0223C1B0:
	ldr r0, [r5, #0x34]
	bl ov12_02261258
	strb r4, [r7, r0]
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223C1B0
_0223C1C2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223C1A0

	thumb_func_start ov12_0223C1C4
ov12_0223C1C4: ; 0x0223C1C4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r1, #0
	mov r0, #0xff
_0223C1CE:
	strb r0, [r6, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _0223C1CE
	ldr r0, [r7, #0x44]
	mov r5, #0
	cmp r0, #0
	ble _0223C1F2
	add r4, r7, #0
_0223C1E0:
	ldr r0, [r4, #0x34]
	bl ov12_02261258
	strb r0, [r6, r5]
	ldr r0, [r7, #0x44]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _0223C1E0
_0223C1F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223C1C4

	thumb_func_start ov12_0223C1F4
ov12_0223C1F4: ; 0x0223C1F4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0
	add r6, r1, #0
	add r5, r0, #0
_0223C1FE:
	add r0, r0, #1
	stmia r1!, {r5}
	cmp r0, #4
	blt _0223C1FE
	ldr r0, [r7, #0x44]
	cmp r0, #0
	ble _0223C220
	add r4, r7, #0
_0223C20E:
	ldr r0, [r4, #0x34]
	bl ov12_02261270
	stmia r6!, {r0}
	ldr r0, [r7, #0x44]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _0223C20E
_0223C220:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223C1F4

	thumb_func_start ov12_0223C224
ov12_0223C224: ; 0x0223C224
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0223C24A
	add r5, r6, #0
_0223C234:
	ldr r0, [r5, #0x34]
	bl ov12_0226127C
	add r1, r7, #0
	bl ov12_02264EE0
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223C234
_0223C24A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223C224

	thumb_func_start ov12_0223C24C
ov12_0223C24C: ; 0x0223C24C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02028FF0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	bls _0223C262
	mov r4, #8
_0223C262:
	add r0, r5, #0
	bl sub_02071808
	ldr r1, _0223C284 ; =0x0226C2E0
	lsl r0, r0, #2
	ldrb r1, [r1, r4]
	add r4, r1, #0
	mul r4, r0
	add r0, r6, #0
	bl sub_02029024
	cmp r4, r0
	bls _0223C27E
	add r4, r0, #0
_0223C27E:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0223C284: .word 0x0226C2E0
	thumb_func_end ov12_0223C24C

	thumb_func_start ov12_0223C288
ov12_0223C288: ; 0x0223C288
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, #0x34]
	bl ov12_02261258
	add r4, r0, #0
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #2
	add r3, r6, #0
	bl ov12_022581D4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223A880
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	mov r1, #0x84
	tst r1, r0
	bne _0223C2CE
	mov r1, #1
	tst r1, r4
	bne _0223C2C6
	sub r0, #0x4a
	cmp r0, #1
	bhi _0223C2CE
_0223C2C6:
	ldr r0, [r5, #0x60]
	add r1, r6, #0
	bl sub_0202A36C
_0223C2CE:
	mov r0, #1
	tst r0, r4
	bne _0223C2EE
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	mov r1, #0x67
	lsl r1, r1, #2
	cmp r0, r1
	bne _0223C2EE
	ldr r0, [r5, #0x60]
	add r1, r6, #0
	bl sub_0202A434
_0223C2EE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223C288

	thumb_func_start ov12_0223C2F0
ov12_0223C2F0: ; 0x0223C2F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x34]
	bl ov12_02261258
	ldr r2, [r5, #0x2c]
	mov r1, #0x84
	tst r1, r2
	bne _0223C32C
	mov r1, #1
	tst r0, r1
	beq _0223C32C
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov12_022581D4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223A880
	add r1, r0, #0
	ldr r0, [r5, #0x60]
	bl sub_0202A434
_0223C32C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223C2F0

	thumb_func_start ov12_0223C330
ov12_0223C330: ; 0x0223C330
	ldr r3, _0223C33C ; =sub_02029FF8
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x60]
	lsr r1, r1, #0x10
	bx r3
	nop
_0223C33C: .word sub_02029FF8
	thumb_func_end ov12_0223C330

	thumb_func_start ov12_0223C340
ov12_0223C340: ; 0x0223C340
	ldr r0, _0223C348 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0223C348: .word 0x04000050
	thumb_func_end ov12_0223C340

	thumb_func_start ov12_0223C34C
ov12_0223C34C: ; 0x0223C34C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r6, r0, #0
	mov r1, #0
	str r2, [sp, #0xc]
	add r5, r3, #0
	bl ov12_0223A7D8
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	mov r2, #0x80
	add r1, r0, #0
	tst r1, r2
	beq _0223C454
	ldr r1, _0223C488 ; =0x00002710
	cmp r4, r1
	beq _0223C376
	lsl r1, r2, #6
	tst r0, r1
	beq _0223C3D2
_0223C376:
	cmp r5, #0x64
	bne _0223C38E
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	mov r1, #0x34
	add r2, #0xd0
	mul r1, r0
	add r0, r2, r1
	mov r1, #5
	bl sub_02015898
	b _0223C3A0
_0223C38E:
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	mov r1, #0x34
	add r2, #0xd8
	mul r1, r0
	add r0, r2, r1
	mov r1, #5
	bl sub_02015898
_0223C3A0:
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0xff
	bl sub_0201D978
	ldr r0, [r6, #0x18]
	add r1, r4, #0
	bl sub_020263D4
	mov r3, #0
	ldr r0, [sp, #0x30]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C48C ; =ov12_0223CF14
	mov r1, #1
	str r0, [sp, #8]
	ldr r2, [r6, #0x18]
	add r0, r7, #0
	bl sub_020200A8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026380
	b _0223C480
_0223C3D2:
	cmp r5, #0x64
	bne _0223C3E0
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r0, #1
	str r0, [sp, #0x10]
	b _0223C3E8
_0223C3E0:
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r0, #2
	str r0, [sp, #0x10]
_0223C3E8:
	mov r4, #0
	add r5, r6, #0
_0223C3EC:
	ldr r0, [r5, #0x48]
	bl sub_0202907C
	cmp r0, #0
	beq _0223C3FE
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223C3EC
_0223C3FE:
	cmp r4, #4
	bne _0223C408
	mov r2, #0xb5
	lsl r2, r2, #2
	b _0223C40A
_0223C408:
	ldr r2, _0223C490 ; =0x000002D3
_0223C40A:
	mov r0, #0
	mov r1, #0x1b
	mov r3, #5
	bl sub_0200BAF8
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl sub_0200BBA0
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0xff
	bl sub_0201D978
	ldr r0, [r6, #0x18]
	add r1, r4, #0
	bl sub_020263D4
	mov r3, #0
	ldr r0, [sp, #0x30]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C48C ; =ov12_0223CF14
	mov r1, #1
	str r0, [sp, #8]
	ldr r2, [r6, #0x18]
	add r0, r7, #0
	bl sub_020200A8
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02026380
	ldr r0, [sp, #0x14]
	bl sub_0200BB44
	b _0223C480
_0223C454:
	ldr r2, [r6, #0x18]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #5
	bl sub_02073548
	add r0, r7, #0
	mov r1, #0xff
	bl sub_0201D978
	mov r3, #0
	ldr r0, [sp, #0x30]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C48C ; =ov12_0223CF14
	mov r1, #1
	str r0, [sp, #8]
	ldr r2, [r6, #0x18]
	add r0, r7, #0
	bl sub_020200A8
	add r5, r0, #0
_0223C480:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223C488: .word 0x00002710
_0223C48C: .word ov12_0223CF14
_0223C490: .word 0x000002D3
	thumb_func_end ov12_0223C34C

	thumb_func_start ov12_0223C494
ov12_0223C494: ; 0x0223C494
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #0xc]
	add r5, r0, #0
	add r4, r2, #0
	mov r1, #0
	add r6, r3, #0
	bl ov12_0223A7D8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223C558
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223C754
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	bl ov12_0223CEF4
	add r0, r7, #0
	mov r1, #0xff
	bl sub_0201D978
	mov r3, #0
	str r3, [sp]
	ldr r0, _0223C4E4 ; =ov12_0223CF14
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [r5, #0x18]
	add r0, r7, #0
	mov r1, #1
	bl sub_020200A8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C4E4: .word ov12_0223CF14
	thumb_func_end ov12_0223C494

	thumb_func_start ov12_0223C4E8
ov12_0223C4E8: ; 0x0223C4E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r3, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r7, #0
	add r6, r2, #0
	bl ov12_0223C558
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223C754
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_0223CEF4
	ldr r1, [sp, #0x28]
	mov r0, #1
	tst r0, r1
	beq _0223C51C
	add r0, r4, #0
	mov r1, #0xff
	bl sub_0201D978
_0223C51C:
	ldr r1, [sp, #0x28]
	mov r0, #2
	tst r0, r1
	beq _0223C534
	mov r0, #0
	ldr r1, [r5, #0x18]
	add r2, r0, #0
	bl sub_02002F30
	ldr r1, [sp, #0x2c]
	sub r3, r1, r0
	b _0223C536
_0223C534:
	mov r3, #0
_0223C536:
	ldr r0, [sp, #0x24]
	mov r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r0, [sp, #4]
	ldr r0, _0223C554 ; =ov12_0223CF14
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r4, [sp, #0x20]
	ldr r2, [r5, #0x18]
	add r3, r4, r3
	bl sub_020200A8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223C554: .word ov12_0223CF14
	thumb_func_end ov12_0223C4E8

	thumb_func_start ov12_0223C558
ov12_0223C558: ; 0x0223C558
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	bl ov12_0223A7E0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	mov r1, #0x80
	tst r1, r0
	bne _0223C57E
	mov r1, #0x40
	tst r1, r0
	beq _0223C588
	ldr r1, [r4, #0x20]
	add r0, r6, #0
	bl ov12_0223AB1C
	cmp r0, #0
	bne _0223C580
_0223C57E:
	b _0223C752
_0223C580:
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C588:
	mov r1, #0x3f
	and r0, r1
	cmp r0, #0x3c
	bls _0223C592
	b _0223C74E
_0223C592:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C59E: ; jump table
	.short _0223C752 - _0223C59E - 2 ; case 0
	.short _0223C618 - _0223C59E - 2 ; case 1
	.short _0223C630 - _0223C59E - 2 ; case 2
	.short _0223C752 - _0223C59E - 2 ; case 3
	.short _0223C752 - _0223C59E - 2 ; case 4
	.short _0223C752 - _0223C59E - 2 ; case 5
	.short _0223C752 - _0223C59E - 2 ; case 6
	.short _0223C752 - _0223C59E - 2 ; case 7
	.short _0223C752 - _0223C59E - 2 ; case 8
	.short _0223C692 - _0223C59E - 2 ; case 9
	.short _0223C630 - _0223C59E - 2 ; case 10
	.short _0223C630 - _0223C59E - 2 ; case 11
	.short _0223C630 - _0223C59E - 2 ; case 12
	.short _0223C630 - _0223C59E - 2 ; case 13
	.short _0223C630 - _0223C59E - 2 ; case 14
	.short _0223C630 - _0223C59E - 2 ; case 15
	.short _0223C630 - _0223C59E - 2 ; case 16
	.short _0223C630 - _0223C59E - 2 ; case 17
	.short _0223C630 - _0223C59E - 2 ; case 18
	.short _0223C630 - _0223C59E - 2 ; case 19
	.short _0223C656 - _0223C59E - 2 ; case 20
	.short _0223C66E - _0223C59E - 2 ; case 21
	.short _0223C752 - _0223C59E - 2 ; case 22
	.short _0223C66E - _0223C59E - 2 ; case 23
	.short _0223C752 - _0223C59E - 2 ; case 24
	.short _0223C752 - _0223C59E - 2 ; case 25
	.short _0223C752 - _0223C59E - 2 ; case 26
	.short _0223C752 - _0223C59E - 2 ; case 27
	.short _0223C752 - _0223C59E - 2 ; case 28
	.short _0223C752 - _0223C59E - 2 ; case 29
	.short _0223C752 - _0223C59E - 2 ; case 30
	.short _0223C692 - _0223C59E - 2 ; case 31
	.short _0223C692 - _0223C59E - 2 ; case 32
	.short _0223C692 - _0223C59E - 2 ; case 33
	.short _0223C630 - _0223C59E - 2 ; case 34
	.short _0223C630 - _0223C59E - 2 ; case 35
	.short _0223C6F0 - _0223C59E - 2 ; case 36
	.short _0223C630 - _0223C59E - 2 ; case 37
	.short _0223C630 - _0223C59E - 2 ; case 38
	.short _0223C630 - _0223C59E - 2 ; case 39
	.short _0223C630 - _0223C59E - 2 ; case 40
	.short _0223C630 - _0223C59E - 2 ; case 41
	.short _0223C630 - _0223C59E - 2 ; case 42
	.short _0223C6F0 - _0223C59E - 2 ; case 43
	.short _0223C630 - _0223C59E - 2 ; case 44
	.short _0223C630 - _0223C59E - 2 ; case 45
	.short _0223C630 - _0223C59E - 2 ; case 46
	.short _0223C630 - _0223C59E - 2 ; case 47
	.short _0223C66E - _0223C59E - 2 ; case 48
	.short _0223C752 - _0223C59E - 2 ; case 49
	.short _0223C752 - _0223C59E - 2 ; case 50
	.short _0223C752 - _0223C59E - 2 ; case 51
	.short _0223C6F0 - _0223C59E - 2 ; case 52
	.short _0223C6F0 - _0223C59E - 2 ; case 53
	.short _0223C6F0 - _0223C59E - 2 ; case 54
	.short _0223C6F0 - _0223C59E - 2 ; case 55
	.short _0223C752 - _0223C59E - 2 ; case 56
	.short _0223C752 - _0223C59E - 2 ; case 57
	.short _0223C752 - _0223C59E - 2 ; case 58
	.short _0223C752 - _0223C59E - 2 ; case 59
	.short _0223C752 - _0223C59E - 2 ; case 60
_0223C618:
	ldr r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C64C
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C630:
	ldr r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C64C
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	bne _0223C64E
_0223C64C:
	b _0223C752
_0223C64E:
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C656:
	ldr r1, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C66E:
	ldr r1, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C692:
	ldr r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C6CC
	ldrh r0, [r4, #2]
	add r0, r0, #3
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223C6B4
	ldrh r0, [r4, #2]
	add r0, r0, #2
	strh r0, [r4, #2]
_0223C6B4:
	ldr r1, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C6CC:
	ldr r1, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C6F0:
	ldr r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C72A
	ldrh r0, [r4, #2]
	add r0, r0, #3
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223C712
	ldrh r0, [r4, #2]
	add r0, r0, #2
	strh r0, [r4, #2]
_0223C712:
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C72A:
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223C752
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223C74E:
	bl GF_AssertFail
_0223C752:
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223C558

	thumb_func_start ov12_0223C754
ov12_0223C754: ; 0x0223C754
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r2, [r4, #1]
	mov r1, #0x3f
	add r5, r0, #0
	and r1, r2
	cmp r1, #0x3c
	bls _0223C766
	b _0223CDCA
_0223C766:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223C772: ; jump table
	.short _0223CDCE - _0223C772 - 2 ; case 0
	.short _0223CDCE - _0223C772 - 2 ; case 1
	.short _0223C7EC - _0223C772 - 2 ; case 2
	.short _0223C7F6 - _0223C772 - 2 ; case 3
	.short _0223C800 - _0223C772 - 2 ; case 4
	.short _0223C80A - _0223C772 - 2 ; case 5
	.short _0223C814 - _0223C772 - 2 ; case 6
	.short _0223C81E - _0223C772 - 2 ; case 7
	.short _0223C82A - _0223C772 - 2 ; case 8
	.short _0223C834 - _0223C772 - 2 ; case 9
	.short _0223C848 - _0223C772 - 2 ; case 10
	.short _0223C85C - _0223C772 - 2 ; case 11
	.short _0223C870 - _0223C772 - 2 ; case 12
	.short _0223C884 - _0223C772 - 2 ; case 13
	.short _0223C898 - _0223C772 - 2 ; case 14
	.short _0223C8AC - _0223C772 - 2 ; case 15
	.short _0223C8C0 - _0223C772 - 2 ; case 16
	.short _0223C8D4 - _0223C772 - 2 ; case 17
	.short _0223C8E8 - _0223C772 - 2 ; case 18
	.short _0223C8FC - _0223C772 - 2 ; case 19
	.short _0223C7F6 - _0223C772 - 2 ; case 20
	.short _0223C910 - _0223C772 - 2 ; case 21
	.short _0223C924 - _0223C772 - 2 ; case 22
	.short _0223C938 - _0223C772 - 2 ; case 23
	.short _0223C94C - _0223C772 - 2 ; case 24
	.short _0223C960 - _0223C772 - 2 ; case 25
	.short _0223C974 - _0223C772 - 2 ; case 26
	.short _0223C988 - _0223C772 - 2 ; case 27
	.short _0223C99C - _0223C772 - 2 ; case 28
	.short _0223C9B0 - _0223C772 - 2 ; case 29
	.short _0223C9C4 - _0223C772 - 2 ; case 30
	.short _0223C9D8 - _0223C772 - 2 ; case 31
	.short _0223C9F6 - _0223C772 - 2 ; case 32
	.short _0223CA14 - _0223C772 - 2 ; case 33
	.short _0223CA32 - _0223C772 - 2 ; case 34
	.short _0223CA50 - _0223C772 - 2 ; case 35
	.short _0223CA6E - _0223C772 - 2 ; case 36
	.short _0223CA8C - _0223C772 - 2 ; case 37
	.short _0223CAAA - _0223C772 - 2 ; case 38
	.short _0223CAC8 - _0223C772 - 2 ; case 39
	.short _0223CAE6 - _0223C772 - 2 ; case 40
	.short _0223CB04 - _0223C772 - 2 ; case 41
	.short _0223CB22 - _0223C772 - 2 ; case 42
	.short _0223CB40 - _0223C772 - 2 ; case 43
	.short _0223CB5E - _0223C772 - 2 ; case 44
	.short _0223CB7C - _0223C772 - 2 ; case 45
	.short _0223CB9A - _0223C772 - 2 ; case 46
	.short _0223CBB8 - _0223C772 - 2 ; case 47
	.short _0223CBD6 - _0223C772 - 2 ; case 48
	.short _0223CBF4 - _0223C772 - 2 ; case 49
	.short _0223CC12 - _0223C772 - 2 ; case 50
	.short _0223CC30 - _0223C772 - 2 ; case 51
	.short _0223CC4E - _0223C772 - 2 ; case 52
	.short _0223CC76 - _0223C772 - 2 ; case 53
	.short _0223CC9E - _0223C772 - 2 ; case 54
	.short _0223CCC6 - _0223C772 - 2 ; case 55
	.short _0223CCEE - _0223C772 - 2 ; case 56
	.short _0223CD16 - _0223C772 - 2 ; case 57
	.short _0223CD3E - _0223C772 - 2 ; case 58
	.short _0223CD66 - _0223C772 - 2 ; case 59
	.short _0223CD8E - _0223C772 - 2 ; case 60
_0223C7EC:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223C7F6:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223C800:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CE68
	pop {r3, r4, r5, pc}
_0223C80A:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CE00
	pop {r3, r4, r5, pc}
_0223C814:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CE0C
	pop {r3, r4, r5, pc}
_0223C81E:
	ldr r2, [r4, #4]
	ldr r3, [r4, #0x1c]
	mov r1, #0
	bl ov12_0223CE24
	pop {r3, r4, r5, pc}
_0223C82A:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CECC
	pop {r3, r4, r5, pc}
_0223C834:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223C848:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223C85C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	pop {r3, r4, r5, pc}
_0223C870:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE68
	pop {r3, r4, r5, pc}
_0223C884:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE50
	pop {r3, r4, r5, pc}
_0223C898:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE80
	pop {r3, r4, r5, pc}
_0223C8AC:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE00
	pop {r3, r4, r5, pc}
_0223C8C0:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CEA4
	pop {r3, r4, r5, pc}
_0223C8D4:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE0C
	pop {r3, r4, r5, pc}
_0223C8E8:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	pop {r3, r4, r5, pc}
_0223C8FC:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CEE4
	pop {r3, r4, r5, pc}
_0223C910:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDF4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223C924:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDF4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223C938:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CE5C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223C94C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CE00
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223C960:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CE0C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE0C
	pop {r3, r4, r5, pc}
_0223C974:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CECC
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	pop {r3, r4, r5, pc}
_0223C988:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CECC
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223C99C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CECC
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE00
	pop {r3, r4, r5, pc}
_0223C9B0:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CECC
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE0C
	pop {r3, r4, r5, pc}
_0223C9C4:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CEB4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	pop {r3, r4, r5, pc}
_0223C9D8:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223C9F6:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE5C
	pop {r3, r4, r5, pc}
_0223CA14:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE00
	pop {r3, r4, r5, pc}
_0223CA32:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDF4
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223CA50:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDF4
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE0C
	pop {r3, r4, r5, pc}
_0223CA6E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223CA8C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223CAAA:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE00
	pop {r3, r4, r5, pc}
_0223CAC8:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE68
	pop {r3, r4, r5, pc}
_0223CAE6:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE50
	pop {r3, r4, r5, pc}
_0223CB04:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE74
	pop {r3, r4, r5, pc}
_0223CB22:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE0C
	pop {r3, r4, r5, pc}
_0223CB40:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE00
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223CB5E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE00
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223CB7C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE00
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE68
	pop {r3, r4, r5, pc}
_0223CB9A:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE00
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE74
	pop {r3, r4, r5, pc}
_0223CBB8:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CEE4
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CEE4
	pop {r3, r4, r5, pc}
_0223CBD6:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CE00
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CEA8
	pop {r3, r4, r5, pc}
_0223CBF4:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CECC
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223CC12:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CEB4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223CC30:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CEB4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CE00
	pop {r3, r4, r5, pc}
_0223CC4E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CDF4
	pop {r3, r4, r5, pc}
_0223CC76:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CE5C
	pop {r3, r4, r5, pc}
_0223CC9E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE5C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CE68
	pop {r3, r4, r5, pc}
_0223CCC6:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CDD0
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CE00
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CE00
	pop {r3, r4, r5, pc}
_0223CCEE:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CECC
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CDD0
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CECC
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223CD16:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CEB4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223CD3E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CEB4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CECC
	pop {r3, r4, r5, pc}
_0223CD66:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CEB4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CEB4
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CECC
	pop {r3, r4, r5, pc}
_0223CD8E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov12_0223CEB4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223CECC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov12_0223CDD0
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223CEB4
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #4
	bl ov12_0223CECC
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	mov r1, #5
	bl ov12_0223CDD0
	pop {r3, r4, r5, pc}
_0223CDCA:
	bl GF_AssertFail
_0223CDCE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223C754

	thumb_func_start ov12_0223CDD0
ov12_0223CDD0: ; 0x0223CDD0
	push {r3, r4, r5, lr}
	mov r3, #0xff
	lsl r3, r3, #8
	add r4, r1, #0
	lsl r1, r2, #0x18
	and r2, r3
	add r5, r0, #0
	lsr r1, r1, #0x18
	asr r2, r2, #8
	bl ov12_0223A880
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200BF8C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223CDD0

	thumb_func_start ov12_0223CDF4
ov12_0223CDF4: ; 0x0223CDF4
	ldr r3, _0223CDFC ; =sub_0200BFF0
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0223CDFC: .word sub_0200BFF0
	thumb_func_end ov12_0223CDF4

	thumb_func_start ov12_0223CE00
ov12_0223CE00: ; 0x0223CE00
	ldr r3, _0223CE08 ; =sub_0200C0CC
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0223CE08: .word sub_0200C0CC
	thumb_func_end ov12_0223CE00

	thumb_func_start ov12_0223CE0C
ov12_0223CE0C: ; 0x0223CE0C
	push {r3, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r0, #0x14]
	mov r3, #5
	bl sub_0200BFCC
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov12_0223CE0C

	thumb_func_start ov12_0223CE24
ov12_0223CE24: ; 0x0223CE24
	push {r4, lr}
	sub sp, #8
	cmp r3, #0
	beq _0223CE3C
	mov r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r0, #0x14]
	bl sub_0200BFCC
	add sp, #8
	pop {r4, pc}
_0223CE3C:
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [r0, #0x14]
	mov r3, #5
	bl sub_0200BFCC
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0223CE24

	thumb_func_start ov12_0223CE50
ov12_0223CE50: ; 0x0223CE50
	ldr r3, _0223CE58 ; =sub_0200C19C
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0223CE58: .word sub_0200C19C
	thumb_func_end ov12_0223CE50

	thumb_func_start ov12_0223CE5C
ov12_0223CE5C: ; 0x0223CE5C
	ldr r3, _0223CE64 ; =sub_0200C060
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0223CE64: .word sub_0200C060
	thumb_func_end ov12_0223CE5C

	thumb_func_start ov12_0223CE68
ov12_0223CE68: ; 0x0223CE68
	ldr r3, _0223CE70 ; =sub_0200C1D4
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0223CE70: .word sub_0200C1D4
	thumb_func_end ov12_0223CE68

	thumb_func_start ov12_0223CE74
ov12_0223CE74: ; 0x0223CE74
	ldr r3, _0223CE7C ; =sub_0200C20C
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0223CE7C: .word sub_0200C20C
	thumb_func_end ov12_0223CE74

	thumb_func_start ov12_0223CE80
ov12_0223CE80: ; 0x0223CE80
	push {r3, r4, r5, lr}
	mov r3, #0xff
	lsl r3, r3, #8
	add r4, r1, #0
	lsl r1, r2, #0x18
	and r2, r3
	add r5, r0, #0
	lsr r1, r1, #0x18
	asr r2, r2, #8
	bl ov12_0223A880
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200BF1C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223CE80

	thumb_func_start ov12_0223CEA4
ov12_0223CEA4: ; 0x0223CEA4
	bx lr
	.align 2, 0
	thumb_func_end ov12_0223CEA4

	thumb_func_start ov12_0223CEA8
ov12_0223CEA8: ; 0x0223CEA8
	ldr r3, _0223CEB0 ; =sub_0200C240
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0223CEB0: .word sub_0200C240
	thumb_func_end ov12_0223CEA8

	thumb_func_start ov12_0223CEB4
ov12_0223CEB4: ; 0x0223CEB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ov12_0223A9F4
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200C344
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223CEB4

	thumb_func_start ov12_0223CECC
ov12_0223CECC: ; 0x0223CECC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ov12_0223A9F4
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200C3E8
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223CECC

	thumb_func_start ov12_0223CEE4
ov12_0223CEE4: ; 0x0223CEE4
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x64]
	bl sub_0200C490
	pop {r4, pc}
	thumb_func_end ov12_0223CEE4

	thumb_func_start ov12_0223CEF4
ov12_0223CEF4: ; 0x0223CEF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	ldrh r1, [r2, #2]
	bl sub_0200BBA0
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r4, #0
	bl sub_0200CBBC
	add r0, r4, #0
	bl sub_02026380
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223CEF4

	thumb_func_start ov12_0223CF14
ov12_0223CF14: ; 0x0223CF14
	push {r4, lr}
	mov r4, #0
	cmp r1, #5
	bhi _0223CF5C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223CF28: ; jump table
	.short _0223CF5C - _0223CF28 - 2 ; case 0
	.short _0223CF34 - _0223CF28 - 2 ; case 1
	.short _0223CF3C - _0223CF28 - 2 ; case 2
	.short _0223CF44 - _0223CF28 - 2 ; case 3
	.short _0223CF4C - _0223CF28 - 2 ; case 4
	.short _0223CF54 - _0223CF28 - 2 ; case 5
_0223CF34:
	bl sub_02006198
	add r4, r0, #0
	b _0223CF5C
_0223CF3C:
	bl sub_02006BCC
	add r4, r0, #0
	b _0223CF5C
_0223CF44:
	ldr r0, _0223CF60 ; =0x000004A3
	bl sub_02006B24
	b _0223CF5C
_0223CF4C:
	ldr r0, _0223CF64 ; =0x000005E6
	bl sub_0200604C
	b _0223CF5C
_0223CF54:
	mov r0, #0x4a
	lsl r0, r0, #4
	bl sub_02006B24
_0223CF5C:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0223CF60: .word 0x000004A3
_0223CF64: .word 0x000005E6
	thumb_func_end ov12_0223CF14

	thumb_func_start ov12_0223CF68
ov12_0223CF68: ; 0x0223CF68
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0223CFB0 ; =0x0226C6C8
	add r5, r0, #0
	add r4, r1, #0
_0223CF70:
	add r2, r4, #0
	add r2, #0xb4
	ldr r2, [r2]
	add r0, r5, #0
	lsl r2, r2, #2
	add r3, r4, r2
	mov r2, #0x27
	lsl r2, r2, #8
	ldr r2, [r3, r2]
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	blx r2
	add r6, r0, #0
	ldr r0, _0223CFB4 ; =0x00003154
	ldr r0, [r4, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _0223CFA2
	add r0, r5, #0
	bl ov12_0223A7E0
	mov r1, #4
	tst r0, r1
	beq _0223CF70
_0223CFA2:
	ldr r1, _0223CFB4 ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	str r2, [r4, r1]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223CFB0: .word 0x0226C6C8
_0223CFB4: .word 0x00003154
	thumb_func_end ov12_0223CF68

	thumb_func_start ov12_0223CFB8
ov12_0223CFB8: ; 0x0223CFB8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	mov r1, #0
	bl ov12_022622C8
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_0223CFB8

	thumb_func_start ov12_0223CFD0
ov12_0223CFD0: ; 0x0223CFD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	cmp r0, #0
	beq _0223CFF6
	cmp r0, #3
	beq _0223D042
	cmp r0, #4
	beq _0223D014
_0223CFF6:
	mov r5, #0
	cmp r6, #0
	ble _0223D042
_0223CFFC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022622F0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223C288
	add r5, r5, #1
	cmp r5, r6
	blt _0223CFFC
	b _0223D042
_0223D014:
	mov r5, #0
	cmp r6, #0
	ble _0223D042
	mov r7, #1
_0223D01C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D048 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _0223D03C
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022622F0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223C288
_0223D03C:
	add r5, r5, #1
	cmp r5, r6
	blt _0223D01C
_0223D042:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D048: .word 0x00000195
	thumb_func_end ov12_0223CFD0

	thumb_func_start ov12_0223D04C
ov12_0223D04C: ; 0x0223D04C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	cmp r0, #6
	bhi _0223D084
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D076: ; jump table
	.short _0223D084 - _0223D076 - 2 ; case 0
	.short _0223D128 - _0223D076 - 2 ; case 1
	.short _0223D172 - _0223D076 - 2 ; case 2
	.short _0223D0A2 - _0223D076 - 2 ; case 3
	.short _0223D0E6 - _0223D076 - 2 ; case 4
	.short _0223D084 - _0223D076 - 2 ; case 5
	.short _0223D1BC - _0223D076 - 2 ; case 6
_0223D084:
	mov r5, #0
	cmp r7, #0
	ble _0223D0A0
_0223D08A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022623F0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223C288
	add r5, r5, #1
	cmp r5, r7
	blt _0223D08A
_0223D0A0:
	b _0223D204
_0223D0A2:
	mov r5, #0
	cmp r7, #0
	ble _0223D0D0
_0223D0A8:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D208 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0223D0CA
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022623F0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223C288
_0223D0CA:
	add r5, r5, #1
	cmp r5, r7
	blt _0223D0A8
_0223D0D0:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_02250370
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_02250370
	b _0223D204
_0223D0E6:
	mov r5, #0
	cmp r7, #0
	ble _0223D126
_0223D0EC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D208 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0223D120
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02250360
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov12_02250370
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022623F0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223C288
_0223D120:
	add r5, r5, #1
	cmp r5, r7
	blt _0223D0EC
_0223D126:
	b _0223D204
_0223D128:
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov12_0223A7E8
	ldr r1, _0223D208 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _0223D14E
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_02250370
	b _0223D160
_0223D14E:
	ldr r1, [r6, #0x64]
	add r0, r6, #0
	bl ov12_02250360
	ldr r2, [r6, #0x64]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
_0223D160:
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov12_0223C288
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov12_022623F0
	b _0223D204
_0223D172:
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov12_0223A7E8
	ldr r1, _0223D208 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _0223D198
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_02250370
	b _0223D1AA
_0223D198:
	ldr r1, [r6, #0x6c]
	add r0, r6, #0
	bl ov12_02250360
	ldr r2, [r6, #0x6c]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
_0223D1AA:
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov12_0223C288
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov12_022623F0
	b _0223D204
_0223D1BC:
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov12_0223A7E8
	ldr r1, _0223D208 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _0223D1E2
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_02250370
	b _0223D1F4
_0223D1E2:
	ldr r1, [r6, #0x78]
	add r0, r6, #0
	bl ov12_02250360
	ldr r2, [r6, #0x78]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
_0223D1F4:
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov12_0223C288
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov12_022623F0
_0223D204:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D208: .word 0x00000195
	thumb_func_end ov12_0223D04C

	thumb_func_start ov12_0223D20C
ov12_0223D20C: ; 0x0223D20C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	cmp r0, #6
	bhi _0223D244
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D236: ; jump table
	.short _0223D244 - _0223D236 - 2 ; case 0
	.short _0223D2F6 - _0223D236 - 2 ; case 1
	.short _0223D344 - _0223D236 - 2 ; case 2
	.short _0223D268 - _0223D236 - 2 ; case 3
	.short _0223D2B0 - _0223D236 - 2 ; case 4
	.short _0223D244 - _0223D236 - 2 ; case 5
	.short _0223D392 - _0223D236 - 2 ; case 6
_0223D244:
	mov r5, #0
	cmp r7, #0
	ble _0223D266
	add r6, r5, #0
_0223D24C:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	add r3, r6, #0
	bl ov12_02262524
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223C288
	add r5, r5, #1
	cmp r5, r7
	blt _0223D24C
_0223D266:
	b _0223D3DE
_0223D268:
	mov r5, #0
	cmp r7, #0
	ble _0223D29A
_0223D26E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D3E4 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0223D294
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #0
	add r3, r2, #0
	bl ov12_02262524
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223C288
_0223D294:
	add r5, r5, #1
	cmp r5, r7
	blt _0223D26E
_0223D29A:
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_02250370
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_02250370
	b _0223D3DE
_0223D2B0:
	mov r5, #0
	cmp r7, #0
	ble _0223D2F4
_0223D2B6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D3E4 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0223D2EE
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02250360
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov12_02250370
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #0
	add r3, r2, #0
	bl ov12_02262524
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223C288
_0223D2EE:
	add r5, r5, #1
	cmp r5, r7
	blt _0223D2B6
_0223D2F4:
	b _0223D3DE
_0223D2F6:
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov12_0223A7E8
	ldr r1, _0223D3E4 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _0223D31C
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_02250370
	b _0223D32E
_0223D31C:
	ldr r1, [r6, #0x64]
	add r0, r6, #0
	bl ov12_02250360
	ldr r2, [r6, #0x64]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
_0223D32E:
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov12_0223C288
	mov r2, #0
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	add r3, r2, #0
	bl ov12_02262524
	b _0223D3DE
_0223D344:
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov12_0223A7E8
	ldr r1, _0223D3E4 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _0223D36A
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_02250370
	b _0223D37C
_0223D36A:
	ldr r1, [r6, #0x6c]
	add r0, r6, #0
	bl ov12_02250360
	ldr r2, [r6, #0x6c]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
_0223D37C:
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov12_0223C288
	mov r2, #0
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	add r3, r2, #0
	bl ov12_02262524
	b _0223D3DE
_0223D392:
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov12_0223A7E8
	ldr r1, _0223D3E4 ; =0x00000195
	mov r2, #1
	ldrb r0, [r0, r1]
	tst r0, r2
	bne _0223D3B8
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_02250370
	b _0223D3CA
_0223D3B8:
	ldr r1, [r6, #0x78]
	add r0, r6, #0
	bl ov12_02250360
	ldr r2, [r6, #0x78]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02250370
_0223D3CA:
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	bl ov12_0223C288
	mov r2, #0
	ldr r1, [r6, #0x78]
	add r0, r4, #0
	add r3, r2, #0
	bl ov12_02262524
_0223D3DE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D3E4: .word 0x00000195
	thumb_func_end ov12_0223D20C

	thumb_func_start ov12_0223D3E8
ov12_0223D3E8: ; 0x0223D3E8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	add r2, r0, #0
	beq _0223D410
	cmp r2, #3
	beq _0223D428
	cmp r2, #4
	beq _0223D452
	b _0223D48A
_0223D410:
	mov r4, #0
	cmp r7, #0
	ble _0223D49C
_0223D416:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov12_02262734
	add r4, r4, #1
	cmp r4, r7
	blt _0223D416
	b _0223D49C
_0223D428:
	mov r4, #0
	cmp r7, #0
	ble _0223D49C
_0223D42E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223A7E8
	ldr r1, _0223D4A0 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0223D44A
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov12_02262734
_0223D44A:
	add r4, r4, #1
	cmp r4, r7
	blt _0223D42E
	b _0223D49C
_0223D452:
	mov r4, #0
	cmp r7, #0
	ble _0223D49C
_0223D458:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223A7E8
	ldr r1, _0223D4A0 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0223D482
	add r0, r4, #0
	bl sub_020726C0
	ldr r1, _0223D4A4 ; =0x00003108
	ldrb r1, [r6, r1]
	tst r0, r1
	bne _0223D482
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov12_02262734
_0223D482:
	add r4, r4, #1
	cmp r4, r7
	blt _0223D458
	b _0223D49C
_0223D48A:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02262734
_0223D49C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D4A0: .word 0x00000195
_0223D4A4: .word 0x00003108
	thumb_func_end ov12_0223D3E8

	thumb_func_start ov12_0223D4A8
ov12_0223D4A8: ; 0x0223D4A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02262958
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223D4A8

	thumb_func_start ov12_0223D4D4
ov12_0223D4D4: ; 0x0223D4D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	cmp r0, #0
	beq _0223D4FA
	cmp r0, #3
	beq _0223D55E
	cmp r0, #4
	beq _0223D59E
_0223D4FA:
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #0x10
	tst r0, r1
	beq _0223D52C
	mov r5, #0
	cmp r6, #0
	ble _0223D5E8
	ldr r7, _0223D5EC ; =0x00000195
_0223D50E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldrb r0, [r0, r7]
	cmp r0, #4
	beq _0223D524
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02262974
_0223D524:
	add r5, r5, #1
	cmp r5, r6
	blt _0223D50E
	b _0223D5E8
_0223D52C:
	mov r5, #0
	cmp r6, #0
	ble _0223D5E8
	mov r7, #8
_0223D534:
	add r0, r4, #0
	bl ov12_0223A7E0
	tst r0, r7
	bne _0223D54E
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _0223D54E
	cmp r5, #1
	bgt _0223D5E8
_0223D54E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02262974
	add r5, r5, #1
	cmp r5, r6
	blt _0223D534
	b _0223D5E8
_0223D55E:
	mov r5, #0
	cmp r6, #0
	ble _0223D5E8
	mov r7, #1
_0223D566:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D5EC ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _0223D596
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02262974
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #8
	tst r0, r1
	bne _0223D596
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223D5E8
_0223D596:
	add r5, r5, #1
	cmp r5, r6
	blt _0223D566
	b _0223D5E8
_0223D59E:
	mov r5, #0
	cmp r6, #0
	ble _0223D5E8
	mov r7, #1
_0223D5A6:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D5EC ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _0223D5E2
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02262974
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #8
	tst r0, r1
	bne _0223D5E2
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #0x10
	tst r0, r1
	bne _0223D5E2
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223D5E8
_0223D5E2:
	add r5, r5, #1
	cmp r5, r6
	blt _0223D5A6
_0223D5E8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D5EC: .word 0x00000195
	thumb_func_end ov12_0223D4D4

	thumb_func_start ov12_0223D5F0
ov12_0223D5F0: ; 0x0223D5F0
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r4, r0, #0
	bl ov12_0223A7F0
	add r6, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl ov12_02245508
	ldr r0, [sp]
	bl ov12_022454E8
	add r5, r0, #0
	ldr r0, [sp]
	bl ov12_022454E8
	add r7, r0, #0
	cmp r5, #0
	beq _0223D620
	cmp r5, #3
	beq _0223D654
	cmp r5, #4
	beq _0223D696
_0223D620:
	mov r5, #0
	cmp r6, #0
	ble _0223D6E2
_0223D626:
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #8
	tst r0, r1
	bne _0223D642
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _0223D642
	cmp r5, #1
	bgt _0223D6E2
_0223D642:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_022629A4
	add r5, r5, #1
	cmp r5, r6
	blt _0223D626
	b _0223D6E2
_0223D654:
	mov r5, #0
	cmp r6, #0
	ble _0223D6E2
_0223D65A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D6F8 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0223D68E
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_022629A4
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #8
	tst r0, r1
	bne _0223D68E
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223D6E2
_0223D68E:
	add r5, r5, #1
	cmp r5, r6
	blt _0223D65A
	b _0223D6E2
_0223D696:
	mov r5, #0
	cmp r6, #0
	ble _0223D6E2
_0223D69C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223D6F8 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0223D6DC
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_022629A4
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #8
	tst r0, r1
	bne _0223D6DC
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #0x10
	tst r0, r1
	bne _0223D6DC
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223D6E2
_0223D6DC:
	add r5, r5, #1
	cmp r5, r6
	blt _0223D69C
_0223D6E2:
	ldr r1, _0223D6FC ; =0x00003154
	ldr r0, [sp]
	ldr r2, [r0, r1]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	orr r2, r0
	ldr r0, [sp]
	str r2, [r0, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D6F8: .word 0x00000195
_0223D6FC: .word 0x00003154
	thumb_func_end ov12_0223D5F0

	thumb_func_start ov12_0223D700
ov12_0223D700: ; 0x0223D700
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	cmp r0, #0xc
	bhi _0223D744
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D72A: ; jump table
	.short _0223D744 - _0223D72A - 2 ; case 0
	.short _0223D744 - _0223D72A - 2 ; case 1
	.short _0223D744 - _0223D72A - 2 ; case 2
	.short _0223D776 - _0223D72A - 2 ; case 3
	.short _0223D7B6 - _0223D72A - 2 ; case 4
	.short _0223D744 - _0223D72A - 2 ; case 5
	.short _0223D744 - _0223D72A - 2 ; case 6
	.short _0223D744 - _0223D72A - 2 ; case 7
	.short _0223D744 - _0223D72A - 2 ; case 8
	.short _0223D802 - _0223D72A - 2 ; case 9
	.short _0223D82E - _0223D72A - 2 ; case 10
	.short _0223D85A - _0223D72A - 2 ; case 11
	.short _0223D882 - _0223D72A - 2 ; case 12
_0223D744:
	mov r6, #0
	cmp r5, #0
	ble _0223D774
	mov r7, #8
_0223D74C:
	add r0, r4, #0
	bl ov12_0223A7E0
	tst r0, r7
	bne _0223D766
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _0223D766
	cmp r6, #1
	bgt _0223D774
_0223D766:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022629DC
	add r6, r6, #1
	cmp r6, r5
	blt _0223D74C
_0223D774:
	b _0223D8A8
_0223D776:
	mov r6, #0
	cmp r5, #0
	ble _0223D7B4
	mov r7, #1
_0223D77E:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223D8AC ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _0223D7AE
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022629DC
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #8
	tst r0, r1
	bne _0223D7AE
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223D8A8
_0223D7AE:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D77E
_0223D7B4:
	b _0223D8A8
_0223D7B6:
	mov r6, #0
	cmp r5, #0
	ble _0223D8A8
	mov r7, #1
_0223D7BE:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223D8AC ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _0223D7FA
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022629DC
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #8
	tst r0, r1
	bne _0223D7FA
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #0x10
	tst r0, r1
	bne _0223D7FA
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223D8A8
_0223D7FA:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D7BE
	b _0223D8A8
_0223D802:
	mov r6, #0
	cmp r5, #0
	ble _0223D8A8
	ldr r7, _0223D8AC ; =0x00000195
_0223D80A:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldrb r0, [r0, r7]
	cmp r0, #0
	beq _0223D81C
	cmp r0, #2
	bne _0223D826
_0223D81C:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022629DC
	b _0223D8A8
_0223D826:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D80A
	b _0223D8A8
_0223D82E:
	mov r6, #0
	cmp r5, #0
	ble _0223D8A8
	ldr r7, _0223D8AC ; =0x00000195
_0223D836:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldrb r0, [r0, r7]
	cmp r0, #1
	beq _0223D848
	cmp r0, #3
	bne _0223D852
_0223D848:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022629DC
	b _0223D8A8
_0223D852:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D836
	b _0223D8A8
_0223D85A:
	mov r6, #0
	cmp r5, #0
	ble _0223D8A8
	ldr r7, _0223D8AC ; =0x00000195
_0223D862:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldrb r0, [r0, r7]
	cmp r0, #4
	bne _0223D87A
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022629DC
	b _0223D8A8
_0223D87A:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D862
	b _0223D8A8
_0223D882:
	mov r6, #0
	cmp r5, #0
	ble _0223D8A8
	ldr r7, _0223D8AC ; =0x00000195
_0223D88A:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldrb r0, [r0, r7]
	cmp r0, #5
	bne _0223D8A2
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022629DC
	b _0223D8A8
_0223D8A2:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D88A
_0223D8A8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D8AC: .word 0x00000195
	thumb_func_end ov12_0223D700

	thumb_func_start ov12_0223D8B0
ov12_0223D8B0: ; 0x0223D8B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r7, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r7, #0
	bl ov12_022454E8
	add r7, r0, #0
	cmp r6, #0xc
	bhi _0223D8FE
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D8E4: ; jump table
	.short _0223D8FE - _0223D8E4 - 2 ; case 0
	.short _0223D8FE - _0223D8E4 - 2 ; case 1
	.short _0223D8FE - _0223D8E4 - 2 ; case 2
	.short _0223D926 - _0223D8E4 - 2 ; case 3
	.short _0223D95C - _0223D8E4 - 2 ; case 4
	.short _0223D8FE - _0223D8E4 - 2 ; case 5
	.short _0223D8FE - _0223D8E4 - 2 ; case 6
	.short _0223D8FE - _0223D8E4 - 2 ; case 7
	.short _0223D8FE - _0223D8E4 - 2 ; case 8
	.short _0223D992 - _0223D8E4 - 2 ; case 9
	.short _0223D9C0 - _0223D8E4 - 2 ; case 10
	.short _0223D9EE - _0223D8E4 - 2 ; case 11
	.short _0223DA18 - _0223D8E4 - 2 ; case 12
_0223D8FE:
	mov r6, #0
	cmp r5, #0
	ble _0223D924
_0223D904:
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _0223D914
	cmp r6, #1
	bgt _0223D924
_0223D914:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_022629F8
	add r6, r6, #1
	cmp r6, r5
	blt _0223D904
_0223D924:
	b _0223DA40
_0223D926:
	mov r6, #0
	cmp r5, #0
	ble _0223D95A
_0223D92C:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223DA44 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0223D954
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_022629F8
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223DA40
_0223D954:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D92C
_0223D95A:
	b _0223DA40
_0223D95C:
	mov r6, #0
	cmp r5, #0
	ble _0223DA40
_0223D962:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223DA44 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0223D98A
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_022629F8
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _0223DA40
_0223D98A:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D962
	b _0223DA40
_0223D992:
	mov r6, #0
	cmp r5, #0
	ble _0223DA40
_0223D998:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223DA44 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0223D9AC
	cmp r0, #2
	bne _0223D9B8
_0223D9AC:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_022629F8
	b _0223DA40
_0223D9B8:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D998
	b _0223DA40
_0223D9C0:
	mov r6, #0
	cmp r5, #0
	ble _0223DA40
_0223D9C6:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223DA44 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, #1
	beq _0223D9DA
	cmp r0, #3
	bne _0223D9E6
_0223D9DA:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_022629F8
	b _0223DA40
_0223D9E6:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D9C6
	b _0223DA40
_0223D9EE:
	mov r6, #0
	cmp r5, #0
	ble _0223DA40
_0223D9F4:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223DA44 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, #4
	bne _0223DA10
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_022629F8
	b _0223DA40
_0223DA10:
	add r6, r6, #1
	cmp r6, r5
	blt _0223D9F4
	b _0223DA40
_0223DA18:
	mov r6, #0
	cmp r5, #0
	ble _0223DA40
_0223DA1E:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223DA44 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, #5
	bne _0223DA3A
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_022629F8
	b _0223DA40
_0223DA3A:
	add r6, r6, #1
	cmp r6, r5
	blt _0223DA1E
_0223DA40:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223DA44: .word 0x00000195
	thumb_func_end ov12_0223D8B0

	thumb_func_start ov12_0223DA48
ov12_0223DA48: ; 0x0223DA48
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	bl ov12_0223A7F0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	mov r4, #0
	cmp r5, #0
	ble _0223DA70
_0223DA62:
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_02263CB0
	add r4, r4, #1
	cmp r4, r5
	blt _0223DA62
_0223DA70:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0223DA48

	thumb_func_start ov12_0223DA74
ov12_0223DA74: ; 0x0223DA74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r7, #0
	bl ov12_022454E8
	add r2, r0, #0
	beq _0223DA9C
	cmp r2, #3
	beq _0223DAB6
	cmp r2, #4
	beq _0223DAE2
	b _0223DB0E
_0223DA9C:
	mov r5, #0
	cmp r6, #0
	ble _0223DB22
_0223DAA2:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0
	bl ov12_02262A2C
	add r5, r5, #1
	cmp r5, r6
	blt _0223DAA2
	b _0223DB22
_0223DAB6:
	mov r5, #0
	cmp r6, #0
	ble _0223DB22
_0223DABC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223DB28 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0223DADA
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0
	bl ov12_02262A2C
_0223DADA:
	add r5, r5, #1
	cmp r5, r6
	blt _0223DABC
	b _0223DB22
_0223DAE2:
	mov r5, #0
	cmp r6, #0
	ble _0223DB22
_0223DAE8:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223DB28 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0223DB06
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #0
	bl ov12_02262A2C
_0223DB06:
	add r5, r5, #1
	cmp r5, r6
	blt _0223DAE8
	b _0223DB22
_0223DB0E:
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0
	bl ov12_02262A2C
_0223DB22:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DB28: .word 0x00000195
	thumb_func_end ov12_0223DA74

	thumb_func_start ov12_0223DB2C
ov12_0223DB2C: ; 0x0223DB2C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r5, r0, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #1
	bl ov12_02245508
	ldr r0, [sp]
	bl ov12_022454E8
	add r2, r0, #0
	ldr r4, _0223DBEC ; =0x00000000
	beq _0223DB56
	cmp r2, #3
	beq _0223DB70
	cmp r2, #4
	beq _0223DBA2
	b _0223DBD4
_0223DB56:
	cmp r7, #0
	ble _0223DBE8
	add r6, r4, #0
_0223DB5C:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov12_02262A2C
	add r4, r4, #1
	cmp r4, r7
	blt _0223DB5C
	b _0223DBE8
_0223DB70:
	add r6, r4, #0
	cmp r7, #0
	ble _0223DBE8
_0223DB76:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223DBF0 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0223DB9A
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov12_02262A2C
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0223DB9A:
	add r6, r6, #1
	cmp r6, r7
	blt _0223DB76
	b _0223DBE8
_0223DBA2:
	add r6, r4, #0
	cmp r7, #0
	ble _0223DBE8
_0223DBA8:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	ldr r1, _0223DBF0 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	beq _0223DBCC
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov12_02262A2C
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0223DBCC:
	add r6, r6, #1
	cmp r6, r7
	blt _0223DBA8
	b _0223DBE8
_0223DBD4:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_0224768C
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r3, r4, #0
	bl ov12_02262A2C
_0223DBE8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223DBEC: .word 0x00000000
_0223DBF0: .word 0x00000195
	thumb_func_end ov12_0223DB2C

	thumb_func_start ov12_0223DBF4
ov12_0223DBF4: ; 0x0223DBF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r7, #0
	bl ov12_022454E8
	add r2, r0, #0
	beq _0223DC1C
	cmp r2, #3
	beq _0223DC32
	cmp r2, #4
	beq _0223DC68
	b _0223DC90
_0223DC1C:
	mov r5, #0
	cmp r6, #0
	ble _0223DCA0
_0223DC22:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02262B64
	add r5, r5, #1
	cmp r5, r6
	blt _0223DC22
	b _0223DCA0
_0223DC32:
	mov r5, #0
	cmp r6, #0
	ble _0223DCA0
_0223DC38:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223DCA4 ; =0x00000195
	ldrb r1, [r0, r1]
	mov r0, #1
	tst r0, r1
	bne _0223DC60
	add r0, r5, #0
	bl sub_020726C0
	ldr r1, _0223DCA8 ; =0x00003108
	ldrb r1, [r7, r1]
	tst r0, r1
	bne _0223DC60
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02262B64
_0223DC60:
	add r5, r5, #1
	cmp r5, r6
	blt _0223DC38
	b _0223DCA0
_0223DC68:
	mov r5, #0
	cmp r6, #0
	ble _0223DCA0
	mov r7, #1
_0223DC70:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _0223DCA4 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _0223DC88
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02262B64
_0223DC88:
	add r5, r5, #1
	cmp r5, r6
	blt _0223DC70
	b _0223DCA0
_0223DC90:
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_02262B64
_0223DCA0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223DCA4: .word 0x00000195
_0223DCA8: .word 0x00003108
	thumb_func_end ov12_0223DBF4

	thumb_func_start ov12_0223DCAC
ov12_0223DCAC: ; 0x0223DCAC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov12_0224ED48
	cmp r0, #0
	beq _0223DCC4
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	b _0223DCCA
_0223DCC4:
	add r0, r4, #0
	bl ov12_0224ED9C
_0223DCCA:
	ldr r1, _0223DCDC ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0223DCDC: .word 0x00003154
	thumb_func_end ov12_0223DCAC

	thumb_func_start ov12_0223DCE0
ov12_0223DCE0: ; 0x0223DCE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x60
	bne _0223DCF8
	mov r4, #0
	b _0223DD0C
_0223DCF8:
	ldr r0, _0223DE2C ; =0x00002160
	ldr r4, [r5, r0]
	cmp r4, #0
	bne _0223DD0C
	ldr r0, _0223DE30 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0223DE34 ; =0x000003E2
	ldrb r4, [r1, r0]
_0223DD0C:
	ldr r0, [r5, #0x6c]
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl ov12_0223AB1C
	mov r3, #6
	lsl r3, r3, #6
	add r6, r0, #0
	ldr r0, [r5, r3]
	ldr r1, _0223DE38 ; =0x00002154
	str r0, [sp]
	ldr r0, [r5, r1]
	ldr r2, _0223DE30 ; =0x00003044
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x64]
	lsl r4, r6, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r4, r5, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	add r3, #0x3c
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r2, [r5, r2]
	ldr r3, [r4, r3]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02256FF8
	ldr r1, _0223DE3C ; =0x00002144
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	mul r0, r2
	str r0, [r5, r1]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_02255830
	cmp r0, #0x62
	bne _0223DD98
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	ldr r1, _0223DE3C ; =0x00002144
	add r0, #0x64
	ldr r1, [r5, r1]
	mul r0, r1
	mov r1, #0x64
	bl sub_020F2998
	ldr r1, _0223DE3C ; =0x00002144
	str r0, [r5, r1]
_0223DD98:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_02255830
	cmp r0, #0x69
	bne _0223DDC6
	ldr r0, _0223DE3C ; =0x00002144
	ldr r2, [r5, #0x64]
	ldr r1, [r5, r0]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _0223DE40 ; =0x00002DCC
	ldr r0, [r2, r0]
	lsl r0, r0, #5
	lsr r0, r0, #0x1c
	add r0, #0xa
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2BA4
	ldr r1, _0223DE3C ; =0x00002144
	str r0, [r5, r1]
_0223DDC6:
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	add r0, r2, #0
	mul r0, r1
	ldr r2, _0223DE40 ; =0x00002DCC
	add r3, r5, r0
	ldr r3, [r3, r2]
	lsl r3, r3, #1
	lsr r3, r3, #0x1f
	beq _0223DE26
	add r2, #0x10
	add r3, r5, r2
	add r1, #0xb4
	ldr r2, [r5, r1]
	ldr r1, [r3, r0]
	cmp r2, r1
	bne _0223DDEC
	sub r1, r1, #1
	str r1, [r3, r0]
_0223DDEC:
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	add r0, r2, #0
	mul r0, r1
	add r1, #0xb4
	ldr r3, [r5, r1]
	ldr r1, _0223DE44 ; =0x00002DDC
	add r2, r5, r0
	ldr r2, [r2, r1]
	sub r2, r3, r2
	cmp r2, #2
	bge _0223DE1A
	ldr r0, _0223DE3C ; =0x00002144
	ldr r1, [r5, r0]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2998
	ldr r1, _0223DE3C ; =0x00002144
	add sp, #0x1c
	str r0, [r5, r1]
	pop {r4, r5, r6, r7, pc}
_0223DE1A:
	sub r1, #0x10
	add r3, r5, r1
	ldr r2, [r3, r0]
	ldr r1, _0223DE48 ; =0xBFFFFFFF
	and r1, r2
	str r1, [r3, r0]
_0223DE26:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223DE2C: .word 0x00002160
_0223DE30: .word 0x00003044
_0223DE34: .word 0x000003E2
_0223DE38: .word 0x00002154
_0223DE3C: .word 0x00002144
_0223DE40: .word 0x00002DCC
_0223DE44: .word 0x00002DDC
_0223DE48: .word 0xBFFFFFFF
	thumb_func_end ov12_0223DCE0

	thumb_func_start ov12_0223DE4C
ov12_0223DE4C: ; 0x0223DE4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223DCE0
	ldr r2, _0223DE80 ; =0x00002144
	add r0, r5, #0
	ldr r2, [r4, r2]
	add r1, r4, #0
	bl ov12_02257C30
	ldr r1, _0223DE80 ; =0x00002144
	str r0, [r4, r1]
	mov r0, #0
	ldr r2, [r4, r1]
	mvn r0, r0
	mul r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223DE80: .word 0x00002144
	thumb_func_end ov12_0223DE4C

	thumb_func_start ov12_0223DE84
ov12_0223DE84: ; 0x0223DE84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0223DCE0
	ldr r1, _0223DEAC ; =0x00002144
	mov r0, #0
	ldr r2, [r4, r1]
	mvn r0, r0
	mul r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223DEAC: .word 0x00002144
	thumb_func_end ov12_0223DE84

	thumb_func_start ov12_0223DEB0
ov12_0223DEB0: ; 0x0223DEB0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, _0223DEEC ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	bne _0223DED0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022633B8
_0223DED0:
	ldr r1, _0223DEEC ; =0x0000213C
	mov r0, #1
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r2, [r4, r0]
	mov r0, #4
	orr r2, r0
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223DEEC: .word 0x0000213C
	thumb_func_end ov12_0223DEB0

	thumb_func_start ov12_0223DEF0
ov12_0223DEF0: ; 0x0223DEF0
	push {r4, r5, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	add r1, sp, #0x24
	bl ov12_022478F4
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x24
	add r3, sp, #0
	bl ov12_022479C0
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov12_022633F0
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, pc}
	thumb_func_end ov12_0223DEF0

	thumb_func_start ov12_0223DF24
ov12_0223DF24: ; 0x0223DF24
	push {r4, r5, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	add r1, sp, #0x24
	bl ov12_022478F4
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x24
	add r3, sp, #0
	bl ov12_022479C0
	add r1, sp, #0
	ldrb r2, [r1, #1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r1, #1]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov12_022633F0
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223DF24

	thumb_func_start ov12_0223DF64
ov12_0223DF64: ; 0x0223DF64
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r1, r4, #0
	add r4, #0xf4
	add r0, r5, #0
	add r2, r4, #0
	bl ov12_022633F0
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223DF64

	thumb_func_start ov12_0223DF84
ov12_0223DF84: ; 0x0223DF84
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	add r1, sp, #0
	bl ov12_022478F4
	add r1, r4, #0
	add r4, #0xf4
	add r0, r5, #0
	add r2, sp, #0
	add r3, r4, #0
	bl ov12_022479C0
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223DF84

	thumb_func_start ov12_0223DFB0
ov12_0223DFB0: ; 0x0223DFB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	add r1, sp, #0x24
	bl ov12_022478F4
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x24
	add r3, sp, #0
	bl ov12_022479C0
	add r1, sp, #0
	ldrb r2, [r1, #1]
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1, #1]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov12_022633F0
	mov r0, #0
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov12_0223DFB0

	thumb_func_start ov12_0223E004
ov12_0223E004: ; 0x0223E004
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	cmp r0, #0xff
	bne _0223E022
	mov r0, #0x49
	lsl r0, r0, #2
	b _0223E024
_0223E022:
	ldr r0, _0223E074 ; =0x00003044
_0223E024:
	ldr r0, [r5, r0]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _0223E078 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r1
	bne _0223E040
	add r0, r6, #0
	bl ov12_0223B6D4
	cmp r0, #1
	beq _0223E044
_0223E040:
	cmp r4, #0x90
	bne _0223E05A
_0223E044:
	ldr r1, _0223E078 ; =0x0000213C
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r5, r1]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0226340C
_0223E05A:
	add r0, r6, #0
	bl ov12_0223B6D4
	cmp r0, #0
	bne _0223E06E
	ldr r2, _0223E07C ; =0x00000123
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245520
_0223E06E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0223E074: .word 0x00003044
_0223E078: .word 0x0000213C
_0223E07C: .word 0x00000123
	thumb_func_end ov12_0223E004

	thumb_func_start ov12_0223E080
ov12_0223E080: ; 0x0223E080
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	cmp r6, #0xff
	bne _0223E0B2
	mov r0, #0x49
	lsl r0, r0, #2
	b _0223E0B4
_0223E0B2:
	ldr r0, _0223E120 ; =0x00003044
_0223E0B4:
	ldr r0, [r4, r0]
	add r1, r4, #0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	add r2, r7, #0
	bl ov12_0224768C
	str r0, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r7, r0, #0
	ldr r0, _0223E124 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r1
	bne _0223E0E8
	add r0, r5, #0
	bl ov12_0223B6D4
	cmp r0, #1
	beq _0223E0EC
_0223E0E8:
	cmp r6, #0x90
	bne _0223E106
_0223E0EC:
	ldr r1, _0223E124 ; =0x0000213C
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r4, r1]
	ldr r3, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	str r7, [sp]
	bl ov12_0226343C
_0223E106:
	add r0, r5, #0
	bl ov12_0223B6D4
	cmp r0, #0
	bne _0223E11A
	ldr r2, _0223E128 ; =0x00000123
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245520
_0223E11A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223E120: .word 0x00003044
_0223E124: .word 0x0000213C
_0223E128: .word 0x00000123
	thumb_func_end ov12_0223E080

	thumb_func_start ov12_0223E12C
ov12_0223E12C: ; 0x0223E12C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	ldr r2, _0223E15C ; =0x0000216C
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r5, #0
	bl ov12_0226346C
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223E15C: .word 0x0000216C
	thumb_func_end ov12_0223E12C

	thumb_func_start ov12_0223E160
ov12_0223E160: ; 0x0223E160
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	ldr r0, _0223E1F4 ; =0x00002D8C
	add r7, r2, #0
	add r5, r4, r0
	mov r0, #0xc0
	mul r7, r0
	ldr r0, _0223E1F8 ; =0x0000215C
	ldr r6, [r5, r7]
	ldr r3, [r4, r0]
	add r1, r3, r6
	cmp r1, #0
	bgt _0223E19E
	neg r1, r6
	sub r0, #0x14
	str r1, [r4, r0]
	b _0223E1A2
_0223E19E:
	sub r0, #0x14
	str r3, [r4, r0]
_0223E1A2:
	ldr r0, _0223E1FC ; =0x00002148
	ldr r6, [r4, r0]
	cmp r6, #0
	bge _0223E1B8
	mov r0, #0x59
	lsl r0, r0, #2
	add r3, r4, r0
	lsl r1, r2, #2
	ldr r0, [r3, r1]
	sub r0, r0, r6
	str r0, [r3, r1]
_0223E1B8:
	mov r0, #0xc0
	add r3, r2, #0
	mul r3, r0
	ldr r0, _0223E1F4 ; =0x00002D8C
	ldr r6, _0223E1F8 ; =0x0000215C
	add r1, r4, r0
	ldr r0, [r1, r3]
	ldr r6, [r4, r6]
	add r0, r0, r6
	str r0, [r1, r3]
	ldr r1, [r1, r3]
	cmp r1, #0
	bge _0223E1D8
	mov r0, #0
	str r0, [r5, r7]
	b _0223E1E6
_0223E1D8:
	add r0, r4, r3
	ldr r3, _0223E1F4 ; =0x00002D8C
	add r3, r3, #4
	ldr r0, [r0, r3]
	cmp r1, r0
	bls _0223E1E6
	str r0, [r5, r7]
_0223E1E6:
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_02250C40
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E1F4: .word 0x00002D8C
_0223E1F8: .word 0x0000215C
_0223E1FC: .word 0x00002148
	thumb_func_end ov12_0223E160

	thumb_func_start ov12_0223E200
ov12_0223E200: ; 0x0223E200
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02263488
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223E200

	thumb_func_start ov12_0223E22C
ov12_0223E22C: ; 0x0223E22C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0224768C
	add r4, r0, #0
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _0223E288 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _0223E282
	str r4, [r5, #0x74]
	bl sub_020726C0
	ldr r1, _0223E28C ; =0x0000213C
	lsl r0, r0, #0x18
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0x55
	lsl r0, r0, #2
	add r2, r5, r0
	lsl r1, r4, #2
	ldr r0, [r2, r1]
	add r0, r0, #1
	str r0, [r2, r1]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_02248558
_0223E282:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0223E288: .word 0x00002D8C
_0223E28C: .word 0x0000213C
	thumb_func_end ov12_0223E22C

	thumb_func_start ov12_0223E290
ov12_0223E290: ; 0x0223E290
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r2, [r4, #0x74]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022635E8
	ldr r0, [r4, #0x74]
	bl sub_020726C0
	ldr r2, _0223E2EC ; =0x0000213C
	lsl r3, r0, #0x18
	mov r0, #0
	mvn r0, r0
	ldr r1, [r4, r2]
	eor r0, r3
	and r0, r1
	str r0, [r4, r2]
	ldr r0, [r4, #0x74]
	bl sub_020726C0
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	lsl r0, r0, #0x1c
	orr r0, r2
	str r0, [r4, r1]
	ldr r0, [r4, #0x74]
	mov r2, #0x28
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, #0x68
	str r2, [r0, r1]
	ldr r2, [r4, #0x74]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022514C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223E2EC: .word 0x0000213C
	thumb_func_end ov12_0223E290

	thumb_func_start ov12_0223E2F0
ov12_0223E2F0: ; 0x0223E2F0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #4
	tst r0, r1
	bne _0223E32A
	ldr r0, _0223E37C ; =0x021D110C
	ldr r1, [r0, #0x48]
	ldr r0, _0223E380 ; =0x00000C03
	tst r0, r1
	bne _0223E324
	bl sub_02025358
	cmp r0, #0
	beq _0223E32A
_0223E324:
	add r0, r5, #0
	add r0, #0xf0
	str r6, [r0]
_0223E32A:
	ldr r1, [r4, #0x2c]
	mov r0, #4
	tst r0, r1
	beq _0223E340
	ldr r0, _0223E384 ; =0x0000240C
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0223E340
	mov r4, #2
	b _0223E342
_0223E340:
	mov r4, #1
_0223E342:
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	cmp r6, r0
	ble _0223E360
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl ov12_02245508
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r1, r0, r4
	b _0223E362
_0223E360:
	mov r1, #0
_0223E362:
	add r0, r5, #0
	add r0, #0xf0
	str r1, [r0]
	ldr r1, _0223E388 ; =0x00003154
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0223E37C: .word 0x021D110C
_0223E380: .word 0x00000C03
_0223E384: .word 0x0000240C
_0223E388: .word 0x00003154
	thumb_func_end ov12_0223E2F0

	thumb_func_start ov12_0223E38C
ov12_0223E38C: ; 0x0223E38C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_022636FC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223E38C

	thumb_func_start ov12_0223E3C4
ov12_0223E3C4: ; 0x0223E3C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r6, #0
	bl ov12_022454E8
	add r5, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl ov12_02245528
	cmp r7, #6
	bhi _0223E462
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E40E: ; jump table
	.short _0223E41C - _0223E40E - 2 ; case 0
	.short _0223E426 - _0223E40E - 2 ; case 1
	.short _0223E430 - _0223E40E - 2 ; case 2
	.short _0223E43A - _0223E40E - 2 ; case 3
	.short _0223E444 - _0223E40E - 2 ; case 4
	.short _0223E44E - _0223E40E - 2 ; case 5
	.short _0223E458 - _0223E40E - 2 ; case 6
_0223E41C:
	ldr r0, [r0]
	cmp r0, r4
	beq _0223E462
	mov r5, #0
	b _0223E462
_0223E426:
	ldr r0, [r0]
	cmp r0, r4
	bne _0223E462
	mov r5, #0
	b _0223E462
_0223E430:
	ldr r0, [r0]
	cmp r0, r4
	bgt _0223E462
	mov r5, #0
	b _0223E462
_0223E43A:
	ldr r0, [r0]
	cmp r0, r4
	ble _0223E462
	mov r5, #0
	b _0223E462
_0223E444:
	ldr r0, [r0]
	tst r0, r4
	bne _0223E462
	mov r5, #0
	b _0223E462
_0223E44E:
	ldr r0, [r0]
	tst r0, r4
	beq _0223E462
	mov r5, #0
	b _0223E462
_0223E458:
	ldr r0, [r0]
	and r0, r4
	cmp r4, r0
	beq _0223E462
	mov r5, #0
_0223E462:
	cmp r5, #0
	beq _0223E46E
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02245508
_0223E46E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223E3C4

	thumb_func_start ov12_0223E474
ov12_0223E474: ; 0x0223E474
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r6, #0
	bl ov12_022454E8
	add r5, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl ov12_0224768C
	add r1, r0, #0
	ldr r2, [sp, #8]
	add r0, r6, #0
	mov r3, #0
	bl ov12_0224EDE0
	cmp r7, #6
	bhi _0223E518
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E4D2: ; jump table
	.short _0223E4E0 - _0223E4D2 - 2 ; case 0
	.short _0223E4E8 - _0223E4D2 - 2 ; case 1
	.short _0223E4F0 - _0223E4D2 - 2 ; case 2
	.short _0223E4F8 - _0223E4D2 - 2 ; case 3
	.short _0223E500 - _0223E4D2 - 2 ; case 4
	.short _0223E508 - _0223E4D2 - 2 ; case 5
	.short _0223E510 - _0223E4D2 - 2 ; case 6
_0223E4E0:
	cmp r0, r4
	beq _0223E518
	mov r5, #0
	b _0223E518
_0223E4E8:
	cmp r0, r4
	bne _0223E518
	mov r5, #0
	b _0223E518
_0223E4F0:
	cmp r0, r4
	bgt _0223E518
	mov r5, #0
	b _0223E518
_0223E4F8:
	cmp r0, r4
	ble _0223E518
	mov r5, #0
	b _0223E518
_0223E500:
	tst r0, r4
	bne _0223E518
	mov r5, #0
	b _0223E518
_0223E508:
	tst r0, r4
	beq _0223E518
	mov r5, #0
	b _0223E518
_0223E510:
	and r0, r4
	cmp r4, r0
	beq _0223E518
	mov r5, #0
_0223E518:
	cmp r5, #0
	beq _0223E524
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02245508
_0223E524:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223E474

	thumb_func_start ov12_0223E52C
ov12_0223E52C: ; 0x0223E52C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0226371C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223E52C

	thumb_func_start ov12_0223E548
ov12_0223E548: ; 0x0223E548
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245518
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_0223E548

	thumb_func_start ov12_0223E568
ov12_0223E568: ; 0x0223E568
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r2, _0223E58C ; =0x00003044
	add r0, r4, #0
	ldr r2, [r4, r2]
	mov r1, #0x1e
	lsl r2, r2, #4
	add r3, r4, r2
	ldr r2, _0223E590 ; =0x000003DE
	ldrh r2, [r3, r2]
	bl ov12_02245518
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0223E58C: .word 0x00003044
_0223E590: .word 0x000003DE
	thumb_func_end ov12_0223E568

	thumb_func_start ov12_0223E594
ov12_0223E594: ; 0x0223E594
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	ldr r2, _0223E62C ; =0x0000213C
	mov r1, #1
	ldr r3, [r4, r2]
	bic r3, r1
	str r3, [r4, r2]
	ldr r3, [r4, r2]
	ldr r1, _0223E630 ; =0xFFFFBFFF
	and r1, r3
	mov r3, #0x49
	lsl r3, r3, #2
	str r1, [r4, r2]
	ldr r2, [r4, r3]
	ldr r1, _0223E634 ; =0x00003044
	cmp r0, #0
	str r2, [r4, r1]
	bne _0223E604
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [r4, r3]
	ldr r2, [r4, #0x64]
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov12_022506D4
	str r0, [r4, #0x6c]
	mov r3, #0x49
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	ldr r2, [r4, #0x64]
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov12_02250A18
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0223E638 ; =0x000021AC
	str r2, [r1, r0]
_0223E604:
	ldr r0, [r4, #0x6c]
	cmp r0, #0xff
	bne _0223E61A
	mov r2, #0x27
	str r2, [r4, #0xc]
	add r0, r4, #0
	mov r1, #1
	add r2, #0xf2
	bl ov12_02245518
	b _0223E626
_0223E61A:
	ldr r2, _0223E634 ; =0x00003044
	add r0, r4, #0
	ldr r2, [r4, r2]
	mov r1, #0
	bl ov12_02245518
_0223E626:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E62C: .word 0x0000213C
_0223E630: .word 0xFFFFBFFF
_0223E634: .word 0x00003044
_0223E638: .word 0x000021AC
	thumb_func_end ov12_0223E594

	thumb_func_start ov12_0223E63C
ov12_0223E63C: ; 0x0223E63C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_0223A7E0
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	bne _0223E666
	add r0, r5, #0
	bl ov12_0223B514
	mov r1, #1
	tst r0, r1
	beq _0223E66E
_0223E666:
	ldr r0, _0223E698 ; =0x00002150
	mov r1, #1
	str r1, [r4, r0]
	b _0223E692
_0223E66E:
	ldr r3, [r4, #0x6c]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov12_022581D4
	ldr r1, _0223E69C ; =0x0000214C
	ldr r1, [r4, r1]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, #0x64]
	ldr r3, [r4, #0x6c]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02257C5C
	ldr r1, _0223E698 ; =0x00002150
	str r0, [r4, r1]
_0223E692:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E698: .word 0x00002150
_0223E69C: .word 0x0000214C
	thumb_func_end ov12_0223E63C

	thumb_func_start ov12_0223E6A0
ov12_0223E6A0: ; 0x0223E6A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r0, #0
	bl ov12_0223A7E0
	add r4, r0, #0
	ldr r1, [r5, #0x74]
	add r0, r7, #0
	bl ov12_0223A7E8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r1, r0, #0
	ldr r0, _0223E814 ; =0x00000195
	ldrb r2, [r6, r0]
	mov r0, #1
	tst r0, r2
	beq _0223E6DA
	mov r0, #0xa9
	lsl r0, r0, #2
	tst r0, r4
	beq _0223E6DC
_0223E6DA:
	b _0223E808
_0223E6DC:
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r4, r0, #0
	add r0, r7, #0
	bl ov12_0223A7F4
	bl sub_02074640
	cmp r0, #0
	ble _0223E76A
_0223E6F4:
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	bl ov12_0223A880
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0223E758
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0223E758
	add r0, r4, #0
	bl sub_020726C0
	ldr r1, [r5, #0x74]
	asr r1, r1, #1
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	add r1, r5, r1
	add r1, #0xa4
	ldr r1, [r1]
	tst r0, r1
	beq _0223E738
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0223E738:
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r5, #0
	mov r2, #1
	bl ov12_02257E74
	cmp r0, #0x33
	bne _0223E758
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
_0223E758:
	add r0, r7, #0
	mov r1, #0
	add r4, r4, #1
	bl ov12_0223A7F4
	bl sub_02074640
	cmp r4, r0
	blt _0223E6F4
_0223E76A:
	ldr r1, [r5, #0x74]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	mov r1, #9
	bl sub_0206FBE8
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r2, [r5, #0x74]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _0223E818 ; =0x00002D74
	ldrb r0, [r2, r0]
	mul r0, r1
	mov r1, #7
	bl sub_020F2998
	lsl r0, r0, #0x10
	ldr r1, [sp]
	lsr r0, r0, #0x10
	cmp r1, #0
	beq _0223E7E2
	lsr r4, r0, #1
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_020F2998
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _0223E7C2
	add r0, r5, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0]
_0223E7C2:
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_020F2998
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	bne _0223E80E
	mov r0, #1
	add r5, #0xa0
	str r0, [r5]
	b _0223E80E
_0223E7E2:
	ldr r1, [sp, #4]
	bl sub_020F2998
	add r1, r5, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _0223E800
	add r0, r5, #0
	mov r1, #1
	add r0, #0x9c
	str r1, [r0]
_0223E800:
	mov r0, #0
	add r5, #0xa0
	str r0, [r5]
	b _0223E80E
_0223E808:
	add r0, r5, #0
	bl ov12_02245508
_0223E80E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223E814: .word 0x00000195
_0223E818: .word 0x00002D74
	thumb_func_end ov12_0223E6A0

	thumb_func_start ov12_0223E81C
ov12_0223E81C: ; 0x0223E81C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	mov r0, #5
	mov r1, #0x58
	bl sub_0201AA8C
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r2, #0
	str r5, [r0]
	ldr r0, [r4, r1]
	str r4, [r0, #4]
	ldr r0, [r4, r1]
	str r2, [r0, #0x28]
	ldr r0, [r4, r1]
	str r2, [r0, #0x48]
	ldr r0, _0223E858 ; =ov12_02245898
	ldr r1, [r4, r1]
	bl sub_0200E320
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223E858: .word ov12_02245898
	thumb_func_end ov12_0223E81C

	thumb_func_start ov12_0223E85C
ov12_0223E85C: ; 0x0223E85C
	push {r4, lr}
	mov r0, #0x5e
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223E872
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
_0223E872:
	ldr r1, _0223E884 ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0223E884: .word 0x00003154
	thumb_func_end ov12_0223E85C

	thumb_func_start ov12_0223E888
ov12_0223E888: ; 0x0223E888
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0223E888

	thumb_func_start ov12_0223E8A0
ov12_0223E8A0: ; 0x0223E8A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #8]
	add r6, r0, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	ldr r0, [sp, #8]
	mov r1, #1
	bl ov12_02245508
	mov r4, #0
	add r5, r4, #0
	cmp r7, #0
	ble _0223E8F8
	ldr r0, [sp, #8]
	str r0, [sp, #0xc]
_0223E8C2:
	mov r0, #0x4f
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _0223E8EC
	add r0, r5, #0
	bl sub_020726C0
	orr r4, r0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #1
	bl ov12_022632DC
_0223E8EC:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, r0, #4
	str r0, [sp, #0xc]
	cmp r5, r7
	blt _0223E8C2
_0223E8F8:
	mov r5, #0
	cmp r7, #0
	ble _0223E950
_0223E8FE:
	add r0, r6, #0
	bl ov12_0223A7E0
	cmp r0, #7
	bne _0223E938
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223AB6C
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl sub_020726C0
	tst r0, r4
	bne _0223E94A
	ldr r0, [sp, #0x10]
	bl sub_020726C0
	tst r0, r4
	bne _0223E94A
	add r0, r5, #0
	bl sub_020726C0
	orr r4, r0
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02263F30
	b _0223E94A
_0223E938:
	add r0, r5, #0
	bl sub_020726C0
	tst r0, r4
	bne _0223E94A
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02263F30
_0223E94A:
	add r5, r5, #1
	cmp r5, r7
	blt _0223E8FE
_0223E950:
	mov r0, #0
	cmp r7, #0
	ble _0223E972
	mov r1, #0x4f
	ldr r4, [sp, #8]
	lsl r1, r1, #2
	mov r2, #1
_0223E95E:
	ldr r3, [r4, r1]
	tst r3, r2
	beq _0223E96A
	ldr r1, [sp, #8]
	str r0, [r1, #0x78]
	b _0223E972
_0223E96A:
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, r7
	blt _0223E95E
_0223E972:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223E8A0

	thumb_func_start ov12_0223E978
ov12_0223E978: ; 0x0223E978
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	mov r6, #0
	add r0, r6, #0
	cmp r7, #0
	ble _0223E9A6
	mov r4, #0x4f
	add r1, r5, #0
	lsl r4, r4, #2
	mov r2, #1
_0223E996:
	ldr r3, [r1, r4]
	tst r3, r2
	beq _0223E99E
	add r6, r6, #1
_0223E99E:
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, r7
	blt _0223E996
_0223E9A6:
	mov r4, #0
	cmp r7, #0
	ble _0223EA22
	str r5, [sp, #8]
	str r5, [sp, #4]
_0223E9B0:
	mov r0, #0x4f
	ldr r1, [sp, #8]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _0223EA0C
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _0223EA0C
	mov r0, #0x23
	ldr r1, [sp, #4]
	lsl r0, r0, #8
	ldrb r0, [r1, r0]
	add r1, r5, r4
	sub r6, r6, #1
	sub r2, r0, #1
	ldr r0, _0223EA94 ; =0x000021A0
	strb r2, [r1, r0]
	add r0, r4, #0
	bl sub_020726C0
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	lsl r0, r0, #0x18
	tst r0, r1
	bne _0223EA0C
	add r0, r4, #0
	bl sub_020726C0
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	lsl r0, r0, #0x18
	orr r1, r0
	mov r0, #0x85
	lsl r0, r0, #6
	str r1, [r5, r0]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_02263F30
_0223EA0C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #8]
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	add r4, r4, #1
	str r0, [sp, #4]
	cmp r4, r7
	blt _0223E9B0
_0223EA22:
	cmp r6, #0
	bne _0223EA7E
	mov r4, #0
	cmp r7, #0
	ble _0223EA6A
	str r5, [sp, #0xc]
	add r6, r5, #0
_0223EA30:
	mov r0, #0x4f
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _0223EA58
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _0223EA58
	mov r2, #0x23
	lsl r2, r2, #8
	ldrb r2, [r6, r2]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223BDDC
_0223EA58:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	lsl r0, r0, #8
	add r6, r6, r0
	cmp r4, r7
	blt _0223EA30
_0223EA6A:
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	ldr r0, _0223EA98 ; =0xF0FFFFFF
	and r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
_0223EA7E:
	ldr r1, _0223EA9C ; =0x00003154
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EA94: .word 0x000021A0
_0223EA98: .word 0xF0FFFFFF
_0223EA9C: .word 0x00003154
	thumb_func_end ov12_0223E978

	thumb_func_start ov12_0223EAA0
ov12_0223EAA0: ; 0x0223EAA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	cmp r0, #1
	beq _0223EAC2
	cmp r0, #6
	beq _0223EAC6
	cmp r0, #0x12
	beq _0223EACA
	b _0223EACC
_0223EAC2:
	ldr r4, [r5, #0x64]
	b _0223EACC
_0223EAC6:
	ldr r4, [r5, #0x78]
	b _0223EACC
_0223EACA:
	ldr r4, [r5, #0x6c]
_0223EACC:
	mov r0, #0x4f
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r4, #2
	ldr r1, [r3, r2]
	mov r0, #1
	bic r1, r0
	add r0, r4, #0
	str r1, [r3, r2]
	bl sub_020726C0
	ldr r3, _0223EB30 ; =0x00003108
	mov r2, #0
	mvn r2, r2
	eor r0, r2
	ldrb r1, [r5, r3]
	add r2, r4, #0
	and r0, r1
	ldr r1, _0223EB34 ; =0x000021A0
	strb r0, [r5, r3]
	add r0, r5, r1
	sub r1, r1, #4
	add r6, r5, r1
	ldrb r1, [r0, r4]
	strb r1, [r6, r4]
	mov r1, #6
	strb r1, [r0, r4]
	ldrb r3, [r6, r4]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_0224E4FC
	ldrb r3, [r6, r4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_02256F78
	ldr r0, _0223EB38 ; =0x00002E4C
	add r2, r4, #0
	ldr r1, [r5, r0]
	ldr r0, _0223EB3C ; =0x00003122
	strh r1, [r5, r0]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_022510BC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EB30: .word 0x00003108
_0223EB34: .word 0x000021A0
_0223EB38: .word 0x00002E4C
_0223EB3C: .word 0x00003122
	thumb_func_end ov12_0223EAA0

	thumb_func_start ov12_0223EB40
ov12_0223EB40: ; 0x0223EB40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl ov12_0223A7F0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	mov r0, #0
	cmp r4, #0
	ble _0223EB82
	mov r2, #0x4f
	add r1, r5, #0
	lsl r2, r2, #2
	mov r3, #1
_0223EB68:
	ldr r6, [r1, r2]
	tst r6, r3
	beq _0223EB7A
	str r0, [r5, #0x78]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
	b _0223EB82
_0223EB7A:
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, r4
	blt _0223EB68
_0223EB82:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223EB40

	thumb_func_start ov12_0223EB88
ov12_0223EB88: ; 0x0223EB88
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	mov r0, #5
	mov r1, #0x58
	bl sub_0201AA8C
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r2, #0
	str r5, [r0]
	ldr r0, [r4, r1]
	str r4, [r0, #4]
	ldr r0, [r4, r1]
	str r2, [r0, #0x28]
	ldr r0, [r4, r1]
	sub r1, #0x50
	str r6, [r0, #0x24]
	ldr r0, [r4, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207809C
	mov r1, #0x5e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	str r0, [r2, #0x2c]
	ldr r0, _0223EBE0 ; =ov12_022465A8
	ldr r1, [r4, r1]
	mov r2, #0
	bl sub_0200E320
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223EBE0: .word ov12_022465A8
	thumb_func_end ov12_0223EB88

	thumb_func_start ov12_0223EBE4
ov12_0223EBE4: ; 0x0223EBE4
	push {r4, lr}
	mov r0, #0x5e
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223EBFA
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
_0223EBFA:
	ldr r1, _0223EC0C ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_0223EC0C: .word 0x00003154
	thumb_func_end ov12_0223EBE4

	thumb_func_start ov12_0223EC10
ov12_0223EC10: ; 0x0223EC10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	ldr r0, _0223EC7C ; =0x0000217D
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0223EC78
	cmp r4, #0
	bne _0223EC68
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x5c
	bne _0223EC4A
	mov r4, #5
	b _0223EC68
_0223EC4A:
	add r0, r6, #0
	bl ov12_0223BD98
	mov r1, #3
	and r0, r1
	cmp r0, #2
	bge _0223EC5C
	add r4, r0, #2
	b _0223EC68
_0223EC5C:
	add r0, r6, #0
	bl ov12_0223BD98
	mov r1, #3
	and r0, r1
	add r4, r0, #2
_0223EC68:
	lsl r0, r4, #0x18
	ldr r1, _0223EC80 ; =0x0000217C
	lsr r2, r0, #0x18
	strb r2, [r5, r1]
	add r0, r1, #1
	strb r2, [r5, r0]
	add r1, #0xc
	str r7, [r5, r1]
_0223EC78:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223EC7C: .word 0x0000217D
_0223EC80: .word 0x0000217C
	thumb_func_end ov12_0223EC10

	thumb_func_start ov12_0223EC84
ov12_0223EC84: ; 0x0223EC84
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r4, #0
	bl ov12_022454E8
	add r5, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02245528
	add r4, r0, #0
	cmp r6, #0x14
	bhi _0223ED6E
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223ECC6: ; jump table
	.short _0223ED6E - _0223ECC6 - 2 ; case 0
	.short _0223ED6E - _0223ECC6 - 2 ; case 1
	.short _0223ED6E - _0223ECC6 - 2 ; case 2
	.short _0223ED6E - _0223ECC6 - 2 ; case 3
	.short _0223ED6E - _0223ECC6 - 2 ; case 4
	.short _0223ED6E - _0223ECC6 - 2 ; case 5
	.short _0223ED6E - _0223ECC6 - 2 ; case 6
	.short _0223ECF0 - _0223ECC6 - 2 ; case 7
	.short _0223ECF4 - _0223ECC6 - 2 ; case 8
	.short _0223ECFC - _0223ECC6 - 2 ; case 9
	.short _0223ED04 - _0223ECC6 - 2 ; case 10
	.short _0223ED0C - _0223ECC6 - 2 ; case 11
	.short _0223ED1A - _0223ECC6 - 2 ; case 12
	.short _0223ED24 - _0223ECC6 - 2 ; case 13
	.short _0223ED30 - _0223ECC6 - 2 ; case 14
	.short _0223ED38 - _0223ECC6 - 2 ; case 15
	.short _0223ED40 - _0223ECC6 - 2 ; case 16
	.short _0223ED4A - _0223ECC6 - 2 ; case 17
	.short _0223ED50 - _0223ECC6 - 2 ; case 18
	.short _0223ED5E - _0223ECC6 - 2 ; case 19
	.short _0223ED66 - _0223ECC6 - 2 ; case 20
_0223ECF0:
	str r5, [r4]
	b _0223ED72
_0223ECF4:
	ldr r0, [r4]
	add r0, r0, r5
	str r0, [r4]
	b _0223ED72
_0223ECFC:
	ldr r0, [r4]
	sub r0, r0, r5
	str r0, [r4]
	b _0223ED72
_0223ED04:
	ldr r0, [r4]
	orr r0, r5
	str r0, [r4]
	b _0223ED72
_0223ED0C:
	mov r0, #0
	mvn r0, r0
	ldr r1, [r4]
	eor r0, r5
	and r0, r1
	str r0, [r4]
	b _0223ED72
_0223ED1A:
	ldr r0, [r4]
	add r1, r0, #0
	mul r1, r5
	str r1, [r4]
	b _0223ED72
_0223ED24:
	ldr r0, [r4]
	add r1, r5, #0
	bl sub_020F2998
	str r0, [r4]
	b _0223ED72
_0223ED30:
	ldr r0, [r4]
	lsl r0, r5
	str r0, [r4]
	b _0223ED72
_0223ED38:
	ldr r0, [r4]
	lsr r0, r5
	str r0, [r4]
	b _0223ED72
_0223ED40:
	add r0, r5, #0
	bl sub_020726C0
	str r0, [r4]
	b _0223ED72
_0223ED4A:
	bl GF_AssertFail
	b _0223ED72
_0223ED50:
	ldr r0, [r4]
	sub r0, r0, r5
	str r0, [r4]
	bpl _0223ED72
	mov r0, #0
	str r0, [r4]
	b _0223ED72
_0223ED5E:
	ldr r0, [r4]
	eor r0, r5
	str r0, [r4]
	b _0223ED72
_0223ED66:
	ldr r0, [r4]
	and r0, r5
	str r0, [r4]
	b _0223ED72
_0223ED6E:
	bl GF_AssertFail
_0223ED72:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223EC84

	thumb_func_start ov12_0223ED78
ov12_0223ED78: ; 0x0223ED78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	mov r0, #0xb5
	add r5, r1, #0
	lsl r0, r0, #6
	add r2, r5, r0
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r6, r2, r0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov12_022454E8
	ldr r1, _0223F0DC ; =0x0000213C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, r1]
	ldr r0, _0223F0E0 ; =0xFFFDFFFF
	and r2, r0
	str r2, [r5, r1]
	add r1, r5, #0
	add r1, #0x8c
	ldr r4, [r1]
	cmp r4, #0x2e
	blt _0223EDD8
	asr r7, r0, #0x11
	mov r0, #0x4e
	mov r1, #0xd
	lsl r0, r0, #2
	sub r4, #0x2e
	str r1, [r5, r0]
	b _0223EE08
_0223EDD8:
	cmp r4, #0x27
	blt _0223EDEA
	mov r0, #0x4e
	mov r1, #0xc
	lsl r0, r0, #2
	sub r4, #0x27
	mov r7, #2
	str r1, [r5, r0]
	b _0223EE08
_0223EDEA:
	cmp r4, #0x16
	blt _0223EDFC
	asr r7, r0, #0x12
	mov r0, #0x4e
	mov r1, #0xd
	lsl r0, r0, #2
	sub r4, #0x16
	str r1, [r5, r0]
	b _0223EE08
_0223EDFC:
	mov r0, #0x4e
	mov r1, #0xc
	lsl r0, r0, #2
	sub r4, #0xf
	mov r7, #1
	str r1, [r5, r0]
_0223EE08:
	cmp r7, #0
	bgt _0223EE0E
	b _0223EF46
_0223EE0E:
	add r1, r4, #1
	add r6, #0x18
	add r0, r6, r1
	str r0, [sp, #4]
	ldrsb r0, [r6, r1]
	cmp r0, #0xc
	bne _0223EE72
	ldr r1, _0223F0DC ; =0x0000213C
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x10
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _0223EE3E
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov12_02245508
	b _0223F36C
_0223EE3E:
	add r0, r5, #0
	mov r1, #0x8e
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r1, r4, #1
	add r0, #0xfc
	str r1, [r0]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov12_02245508
	b _0223F36C
_0223EE72:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	bne _0223EEBE
	add r0, r5, #0
	ldr r1, _0223F0E4 ; =0x0000026E
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x27
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0223F0E8 ; =0x00002D67
	add r2, r5, r2
	ldrb r2, [r2, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r2, [r0]
	add r0, r4, #1
	add r1, #0x40
	str r0, [r5, r1]
	b _0223EF2A
_0223EEBE:
	cmp r0, #5
	bne _0223EEFA
	mov r1, #0xbd
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x2d
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r0, r5, #0
	add r0, #0xfc
	str r2, [r0]
	add r0, r4, #1
	sub r1, #0x28
	str r0, [r5, r1]
	b _0223EF2A
_0223EEFA:
	cmp r7, #1
	bne _0223EF02
	ldr r1, _0223F0EC ; =0x000002EE
	b _0223EF04
_0223EF02:
	ldr r1, _0223F0F0 ; =0x000002F1
_0223EF04:
	add r0, r5, #0
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r4, #1
	add r5, #0xfc
	str r0, [r5]
_0223EF2A:
	ldr r0, [sp, #4]
	mov r1, #0
	ldrsb r0, [r0, r1]
	add r2, r0, r7
	ldr r0, [sp, #4]
	strb r2, [r0]
	ldrsb r0, [r0, r1]
	cmp r0, #0xc
	bgt _0223EF3E
	b _0223F36C
_0223EF3E:
	ldr r0, [sp, #4]
	mov r1, #0xc
	strb r1, [r0]
	b _0223F36C
_0223EF46:
	add r0, r5, #0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0x1a
	tst r1, r0
	beq _0223EF56
	b _0223F2D0
_0223EF56:
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	ldr r2, [r5, #0x64]
	cmp r2, r1
	bne _0223EF64
	b _0223F218
_0223EF64:
	ldr r0, [sp]
	bl ov12_0223AB1C
	lsl r0, r0, #3
	mov r1, #0x71
	add r0, r5, r0
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1d
	beq _0223EFA2
	add r0, r5, #0
	sub r1, #0xb3
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #2
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	mov r0, #1
	str r0, [sp, #8]
	b _0223F280
_0223EFA2:
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2]
	add r0, r5, #0
	mov r3, #0x1d
	bl ov12_02252834
	cmp r0, #1
	beq _0223EFCA
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2]
	add r0, r5, #0
	mov r3, #0x49
	bl ov12_02252834
	cmp r0, #1
	bne _0223F06C
_0223EFCA:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	bne _0223F02E
	add r0, r5, #0
	ldr r1, _0223F0F4 ; =0x000002D7
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x35
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0223F0E8 ; =0x00002D67
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022522E0
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0223F0E8 ; =0x00002D67
	add r2, r5, r2
	ldrb r0, [r2, r0]
	add r1, #0x44
	str r0, [r5, r1]
	b _0223F066
_0223F02E:
	add r0, r5, #0
	ldr r1, _0223F0F8 ; =0x0000029D
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xb
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0223F0E8 ; =0x00002D67
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0]
_0223F066:
	mov r0, #1
	str r0, [sp, #8]
	b _0223F280
_0223F06C:
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2]
	add r0, r5, #0
	mov r3, #0x33
	bl ov12_02252834
	cmp r0, #1
	bne _0223F086
	add r0, r4, #1
	cmp r0, #6
	beq _0223F09E
_0223F086:
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2]
	add r0, r5, #0
	mov r3, #0x34
	bl ov12_02252834
	cmp r0, #1
	bne _0223F16C
	cmp r4, #0
	bne _0223F16C
_0223F09E:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	bne _0223F124
	add r0, r5, #0
	ldr r1, _0223F0F4 ; =0x000002D7
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x35
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0223F0E8 ; =0x00002D67
	b _0223F0FC
	nop
_0223F0DC: .word 0x0000213C
_0223F0E0: .word 0xFFFDFFFF
_0223F0E4: .word 0x0000026E
_0223F0E8: .word 0x00002D67
_0223F0EC: .word 0x000002EE
_0223F0F0: .word 0x000002F1
_0223F0F4: .word 0x000002D7
_0223F0F8: .word 0x0000029D
_0223F0FC:
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022522E0
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0223F374 ; =0x00002D67
	add r2, r5, r2
	ldrb r0, [r2, r0]
	add r1, #0x44
	b _0223F164
_0223F124:
	mov r1, #0xb
	add r0, r5, #0
	lsl r1, r1, #6
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x27
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0223F374 ; =0x00002D67
	add r2, r5, r2
	ldrb r2, [r2, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r2, [r0]
	add r0, r4, #1
	add r1, #0x40
_0223F164:
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp, #8]
	b _0223F280
_0223F16C:
	add r0, r4, #1
	add r1, r6, r0
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0223F1D6
	ldr r1, _0223F378 ; =0x0000213C
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0x10
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _0223F19E
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223F19E:
	add r0, r5, #0
	mov r1, #0x91
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r1, r4, #1
	add r0, #0xfc
	str r1, [r0]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223F1D6:
	add r2, r5, #0
	add r2, #0x94
	ldr r1, [r5, #0x64]
	ldr r2, [r2]
	add r0, r5, #0
	mov r3, #0x13
	bl ov12_02252834
	cmp r0, #1
	bne _0223F1FA
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #2
	bne _0223F1FA
	mov r0, #1
	str r0, [sp, #8]
	b _0223F280
_0223F1FA:
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0223F37C ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r1
	beq _0223F280
	mov r0, #2
	str r0, [sp, #8]
	b _0223F280
_0223F218:
	add r1, r4, #1
	add r2, r6, r1
	mov r1, #0x18
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bne _0223F280
	ldr r1, _0223F378 ; =0x0000213C
	lsr r0, r0, #0xa
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _0223F248
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223F248:
	add r0, r5, #0
	mov r1, #0x91
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	add r1, r4, #1
	add r0, #0xfc
	str r1, [r0]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223F280:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0223F29E
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #1
	bne _0223F29E
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223F29E:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0223F2BC
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #2
	bne _0223F2BC
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223F2BC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0223F2D0
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223F2D0:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	bne _0223F324
	add r0, r5, #0
	ldr r1, _0223F380 ; =0x00000296
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x36
	add r0, #0xf5
	strb r1, [r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0223F374 ; =0x00002D67
	ldrb r1, [r1, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r5, r1]
	add r2, r4, #1
	add r0, r1, #4
	str r2, [r5, r0]
	b _0223F358
_0223F324:
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _0223F330
	ldr r1, _0223F384 ; =0x000002FA
	b _0223F332
_0223F330:
	ldr r1, _0223F388 ; =0x000002FD
_0223F332:
	add r0, r5, #0
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0xc
	add r0, #0xf5
	strb r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r4, #1
	add r5, #0xfc
	str r0, [r5]
_0223F358:
	add r6, #0x18
	add r1, r4, #1
	ldrsb r0, [r6, r1]
	add r0, r0, r7
	strb r0, [r6, r1]
	ldrsb r0, [r6, r1]
	cmp r0, #0
	bge _0223F36C
	mov r0, #0
	strb r0, [r6, r1]
_0223F36C:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F374: .word 0x00002D67
_0223F378: .word 0x0000213C
_0223F37C: .word 0x00002DB0
_0223F380: .word 0x00000296
_0223F384: .word 0x000002FA
_0223F388: .word 0x000002FD
	thumb_func_end ov12_0223ED78

	thumb_func_start ov12_0223F38C
ov12_0223F38C: ; 0x0223F38C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r5, #0
	bl ov12_0224768C
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_0224EDE0
	str r0, [sp, #0xc]
	cmp r7, #0x14
	bhi _0223F478
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223F3E6: ; jump table
	.short _0223F478 - _0223F3E6 - 2 ; case 0
	.short _0223F478 - _0223F3E6 - 2 ; case 1
	.short _0223F478 - _0223F3E6 - 2 ; case 2
	.short _0223F478 - _0223F3E6 - 2 ; case 3
	.short _0223F478 - _0223F3E6 - 2 ; case 4
	.short _0223F478 - _0223F3E6 - 2 ; case 5
	.short _0223F478 - _0223F3E6 - 2 ; case 6
	.short _0223F410 - _0223F3E6 - 2 ; case 7
	.short _0223F414 - _0223F3E6 - 2 ; case 8
	.short _0223F41A - _0223F3E6 - 2 ; case 9
	.short _0223F420 - _0223F3E6 - 2 ; case 10
	.short _0223F426 - _0223F3E6 - 2 ; case 11
	.short _0223F432 - _0223F3E6 - 2 ; case 12
	.short _0223F43A - _0223F3E6 - 2 ; case 13
	.short _0223F444 - _0223F3E6 - 2 ; case 14
	.short _0223F44A - _0223F3E6 - 2 ; case 15
	.short _0223F450 - _0223F3E6 - 2 ; case 16
	.short _0223F45A - _0223F3E6 - 2 ; case 17
	.short _0223F460 - _0223F3E6 - 2 ; case 18
	.short _0223F46C - _0223F3E6 - 2 ; case 19
	.short _0223F472 - _0223F3E6 - 2 ; case 20
_0223F410:
	str r4, [sp, #0xc]
	b _0223F47C
_0223F414:
	add r0, r0, r4
	str r0, [sp, #0xc]
	b _0223F47C
_0223F41A:
	sub r0, r0, r4
	str r0, [sp, #0xc]
	b _0223F47C
_0223F420:
	orr r0, r4
	str r0, [sp, #0xc]
	b _0223F47C
_0223F426:
	mov r1, #0
	mvn r1, r1
	eor r1, r4
	and r0, r1
	str r0, [sp, #0xc]
	b _0223F47C
_0223F432:
	add r1, r0, #0
	mul r1, r4
	str r1, [sp, #0xc]
	b _0223F47C
_0223F43A:
	add r1, r4, #0
	bl sub_020F2998
	str r0, [sp, #0xc]
	b _0223F47C
_0223F444:
	lsl r0, r4
	str r0, [sp, #0xc]
	b _0223F47C
_0223F44A:
	lsr r0, r4
	str r0, [sp, #0xc]
	b _0223F47C
_0223F450:
	add r0, r4, #0
	bl sub_020726C0
	str r0, [sp, #0xc]
	b _0223F47C
_0223F45A:
	bl GF_AssertFail
	b _0223F47C
_0223F460:
	sub r0, r0, r4
	str r0, [sp, #0xc]
	bpl _0223F47C
	mov r0, #0
	str r0, [sp, #0xc]
	b _0223F47C
_0223F46C:
	eor r0, r4
	str r0, [sp, #0xc]
	b _0223F47C
_0223F472:
	and r0, r4
	str r0, [sp, #0xc]
	b _0223F47C
_0223F478:
	bl GF_AssertFail
_0223F47C:
	cmp r6, #0x1a
	bne _0223F492
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov12_02248648
_0223F492:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r6, #0
	add r3, sp, #0xc
	bl ov12_0224F168
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	bl ov12_02250C40
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223F38C

	thumb_func_start ov12_0223F4B0
ov12_0223F4B0: ; 0x0223F4B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_0224768C
	ldr r1, _0223F4E8 ; =0x0000218C
	add r2, r5, r1
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	orr r0, r4
	str r0, [r2, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223F4E8: .word 0x0000218C
	thumb_func_end ov12_0223F4B0

	thumb_func_start ov12_0223F4EC
ov12_0223F4EC: ; 0x0223F4EC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov12_02263738
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223F4EC

	thumb_func_start ov12_0223F524
ov12_0223F524: ; 0x0223F524
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	cmp r4, #0
	bne _0223F59A
	ldr r0, [sp]
	bl ov12_0223A7F0
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0223F5DC
_0223F566:
	cmp r7, #0
	bne _0223F584
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _0223F590
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02245508
	add r5, #0x80
	str r4, [r5]
	b _0223F5DC
_0223F584:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r6, r0
	beq _0223F5DC
_0223F590:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0223F566
	b _0223F5DC
_0223F59A:
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0224768C
	add r4, r0, #0
	cmp r7, #0
	bne _0223F5C4
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _0223F5DC
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02245508
	add r5, #0x80
	str r4, [r5]
	b _0223F5DC
_0223F5C4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r6, r0
	beq _0223F5DC
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02245508
	add r5, #0x80
	str r4, [r5]
_0223F5DC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223F524

	thumb_func_start ov12_0223F5E4
ov12_0223F5E4: ; 0x0223F5E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r7, #0
	bl ov12_0223BD98
	add r1, r4, #1
	bl sub_020F2998
	mov r0, #0x4d
	add r1, r6, r1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223F5E4

	thumb_func_start ov12_0223F61C
ov12_0223F61C: ; 0x0223F61C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_02245528
	add r4, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02245528
	add r1, r0, #0
	cmp r6, #0x14
	bhi _0223F72A
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F66A: ; jump table
	.short _0223F72A - _0223F66A - 2 ; case 0
	.short _0223F72A - _0223F66A - 2 ; case 1
	.short _0223F72A - _0223F66A - 2 ; case 2
	.short _0223F72A - _0223F66A - 2 ; case 3
	.short _0223F72A - _0223F66A - 2 ; case 4
	.short _0223F72A - _0223F66A - 2 ; case 5
	.short _0223F72A - _0223F66A - 2 ; case 6
	.short _0223F694 - _0223F66A - 2 ; case 7
	.short _0223F69A - _0223F66A - 2 ; case 8
	.short _0223F6A4 - _0223F66A - 2 ; case 9
	.short _0223F6AE - _0223F66A - 2 ; case 10
	.short _0223F6B8 - _0223F66A - 2 ; case 11
	.short _0223F6C8 - _0223F66A - 2 ; case 12
	.short _0223F6D2 - _0223F66A - 2 ; case 13
	.short _0223F6DE - _0223F66A - 2 ; case 14
	.short _0223F6EA - _0223F66A - 2 ; case 15
	.short _0223F6F6 - _0223F66A - 2 ; case 16
	.short _0223F700 - _0223F66A - 2 ; case 17
	.short _0223F706 - _0223F66A - 2 ; case 18
	.short _0223F716 - _0223F66A - 2 ; case 19
	.short _0223F720 - _0223F66A - 2 ; case 20
_0223F694:
	ldr r0, [r1]
	str r0, [r4]
	b _0223F72E
_0223F69A:
	ldr r2, [r4]
	ldr r0, [r1]
	add r0, r2, r0
	str r0, [r4]
	b _0223F72E
_0223F6A4:
	ldr r2, [r4]
	ldr r0, [r1]
	sub r0, r2, r0
	str r0, [r4]
	b _0223F72E
_0223F6AE:
	ldr r2, [r4]
	ldr r0, [r1]
	orr r0, r2
	str r0, [r4]
	b _0223F72E
_0223F6B8:
	mov r0, #0
	ldr r1, [r1]
	mvn r0, r0
	ldr r2, [r4]
	eor r0, r1
	and r0, r2
	str r0, [r4]
	b _0223F72E
_0223F6C8:
	ldr r2, [r4]
	ldr r0, [r1]
	mul r0, r2
	str r0, [r4]
	b _0223F72E
_0223F6D2:
	ldr r0, [r4]
	ldr r1, [r1]
	bl sub_020F2998
	str r0, [r4]
	b _0223F72E
_0223F6DE:
	ldr r2, [r4]
	ldr r0, [r1]
	add r1, r2, #0
	lsl r1, r0
	str r1, [r4]
	b _0223F72E
_0223F6EA:
	ldr r2, [r4]
	ldr r0, [r1]
	add r1, r2, #0
	lsr r1, r0
	str r1, [r4]
	b _0223F72E
_0223F6F6:
	ldr r0, [r1]
	bl sub_020726C0
	str r0, [r4]
	b _0223F72E
_0223F700:
	ldr r0, [r4]
	str r0, [r1]
	b _0223F72E
_0223F706:
	ldr r2, [r4]
	ldr r0, [r1]
	sub r0, r2, r0
	str r0, [r4]
	bpl _0223F72E
	mov r0, #0
	str r0, [r4]
	b _0223F72E
_0223F716:
	ldr r2, [r4]
	ldr r0, [r1]
	eor r0, r2
	str r0, [r4]
	b _0223F72E
_0223F720:
	ldr r2, [r4]
	ldr r0, [r1]
	and r0, r2
	str r0, [r4]
	b _0223F72E
_0223F72A:
	bl GF_AssertFail
_0223F72E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223F61C

	thumb_func_start ov12_0223F734
ov12_0223F734: ; 0x0223F734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0224768C
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_0224EDE0
	str r0, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02245528
	add r1, r0, #0
	cmp r5, #0x14
	bhi _0223F85A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223F79A: ; jump table
	.short _0223F85A - _0223F79A - 2 ; case 0
	.short _0223F85A - _0223F79A - 2 ; case 1
	.short _0223F85A - _0223F79A - 2 ; case 2
	.short _0223F85A - _0223F79A - 2 ; case 3
	.short _0223F85A - _0223F79A - 2 ; case 4
	.short _0223F85A - _0223F79A - 2 ; case 5
	.short _0223F85A - _0223F79A - 2 ; case 6
	.short _0223F7C4 - _0223F79A - 2 ; case 7
	.short _0223F7CA - _0223F79A - 2 ; case 8
	.short _0223F7D4 - _0223F79A - 2 ; case 9
	.short _0223F7DE - _0223F79A - 2 ; case 10
	.short _0223F7E8 - _0223F79A - 2 ; case 11
	.short _0223F7F8 - _0223F79A - 2 ; case 12
	.short _0223F802 - _0223F79A - 2 ; case 13
	.short _0223F80E - _0223F79A - 2 ; case 14
	.short _0223F81A - _0223F79A - 2 ; case 15
	.short _0223F826 - _0223F79A - 2 ; case 16
	.short _0223F830 - _0223F79A - 2 ; case 17
	.short _0223F836 - _0223F79A - 2 ; case 18
	.short _0223F846 - _0223F79A - 2 ; case 19
	.short _0223F850 - _0223F79A - 2 ; case 20
_0223F7C4:
	ldr r0, [r1]
	str r0, [sp, #0xc]
	b _0223F85E
_0223F7CA:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	add r0, r2, r0
	str r0, [sp, #0xc]
	b _0223F85E
_0223F7D4:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	sub r0, r2, r0
	str r0, [sp, #0xc]
	b _0223F85E
_0223F7DE:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	orr r0, r2
	str r0, [sp, #0xc]
	b _0223F85E
_0223F7E8:
	ldr r2, [r1]
	mov r1, #0
	mvn r1, r1
	ldr r0, [sp, #0xc]
	eor r1, r2
	and r0, r1
	str r0, [sp, #0xc]
	b _0223F85E
_0223F7F8:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	mul r0, r2
	str r0, [sp, #0xc]
	b _0223F85E
_0223F802:
	ldr r0, [sp, #0xc]
	ldr r1, [r1]
	bl sub_020F2998
	str r0, [sp, #0xc]
	b _0223F85E
_0223F80E:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	add r1, r2, #0
	lsl r1, r0
	str r1, [sp, #0xc]
	b _0223F85E
_0223F81A:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	add r1, r2, #0
	lsr r1, r0
	str r1, [sp, #0xc]
	b _0223F85E
_0223F826:
	ldr r0, [r1]
	bl sub_020726C0
	str r0, [sp, #0xc]
	b _0223F85E
_0223F830:
	ldr r0, [sp, #0xc]
	str r0, [r1]
	b _0223F85E
_0223F836:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	sub r0, r2, r0
	str r0, [sp, #0xc]
	bpl _0223F85E
	mov r0, #0
	str r0, [sp, #0xc]
	b _0223F85E
_0223F846:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	eor r0, r2
	str r0, [sp, #0xc]
	b _0223F85E
_0223F850:
	ldr r2, [sp, #0xc]
	ldr r0, [r1]
	and r0, r2
	str r0, [sp, #0xc]
	b _0223F85E
_0223F85A:
	bl GF_AssertFail
_0223F85E:
	cmp r5, #0x11
	beq _0223F88E
	cmp r6, #0x1a
	bne _0223F878
	ldr r1, [sp]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov12_02248648
_0223F878:
	ldr r1, [sp]
	add r0, r4, #0
	add r2, r6, #0
	add r3, sp, #0xc
	bl ov12_0224F168
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02250C40
_0223F88E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0223F734

	thumb_func_start ov12_0223F894
ov12_0223F894: ; 0x0223F894
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_02245508
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0223F894

	thumb_func_start ov12_0223F8B4
ov12_0223F8B4: ; 0x0223F8B4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245520
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_0223F8B4

	thumb_func_start ov12_0223F8D4
ov12_0223F8D4: ; 0x0223F8D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245528
	add r2, r0, #0
	ldr r2, [r2]
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245520
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0223F8D4

	thumb_func_start ov12_0223F904
ov12_0223F904: ; 0x0223F904
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	mov r4, #0
	bl ov12_0223A7E0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r5, #0x64]
	lsl r0, r1, #1
	add r2, r5, r0
	ldr r0, _0223FA04 ; =0x00003084
	ldrh r2, [r2, r0]
	cmp r2, #0
	beq _0223F92E
	add r4, r2, #0
	b _0223F97A
_0223F92E:
	mov r2, #2
	tst r2, r7
	beq _0223F97A
	lsl r1, r1, #3
	add r4, r5, r1
	add r1, r0, #0
	add r1, #0xe
	ldrh r3, [r4, r1]
	add r1, r0, #0
	add r1, #0xc
	ldrh r2, [r4, r1]
	add r1, r0, #0
	add r1, #8
	add r0, #0xa
	ldrh r1, [r4, r1]
	ldrh r0, [r4, r0]
	add r0, r1, r0
	add r0, r2, r0
	add r4, r3, r0
	beq _0223F97A
	ldr r7, _0223FA08 ; =0x0000308C
_0223F958:
	add r0, r6, #0
	bl ov12_0223BD98
	ldr r1, [r5, #0x64]
	lsl r3, r0, #0x1e
	lsl r2, r1, #3
	lsr r1, r0, #0x1f
	sub r3, r3, r1
	mov r0, #0x1e
	ror r3, r0
	add r0, r1, r3
	lsl r1, r0, #1
	add r0, r5, r2
	add r0, r1, r0
	ldrh r4, [r0, r7]
	cmp r4, #0
	beq _0223F958
_0223F97A:
	cmp r4, #0
	beq _0223F9E4
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov12_02257DFC
	cmp r0, #1
	bne _0223F9E4
	ldr r1, _0223FA0C ; =0x0000213C
	lsl r3, r4, #0x10
	ldr r2, [r5, r1]
	mov r0, #1
	bic r2, r0
	str r2, [r5, r1]
	ldr r2, [r5, r1]
	ldr r0, _0223FA10 ; =0xFFFFBFFF
	lsr r3, r3, #0x10
	and r0, r2
	str r0, [r5, r1]
	ldr r0, _0223FA14 ; =0x00003044
	add r1, r5, #0
	str r4, [r5, r0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #0x64]
	add r0, r6, #0
	bl ov12_022506D4
	str r0, [r5, #0x6c]
	cmp r0, #0xff
	bne _0223F9CE
	mov r2, #0x27
	str r2, [r5, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, #0xf2
	bl ov12_02245518
	b _0223F9FE
_0223F9CE:
	ldr r1, [r5, #0x64]
	lsl r1, r1, #4
	add r2, r5, r1
	ldr r1, _0223FA18 ; =0x000021AC
	str r0, [r2, r1]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov12_02245518
	b _0223F9FE
_0223F9E4:
	ldr r2, [r5, #0x64]
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r2, #0
	mul r3, r1
	add r0, r5, r0
	ldr r2, [r0, r3]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, r3]
_0223F9FE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223FA04: .word 0x00003084
_0223FA08: .word 0x0000308C
_0223FA0C: .word 0x0000213C
_0223FA10: .word 0xFFFFBFFF
_0223FA14: .word 0x00003044
_0223FA18: .word 0x000021AC
	thumb_func_end ov12_0223F904

	thumb_func_start ov12_0223FA1C
ov12_0223FA1C: ; 0x0223FA1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_0223A7F0
	mov r2, #0
	cmp r0, #0
	ble _0223FA5C
	ldr r6, _0223FA60 ; =0x00002D58
	mov r1, #6
	add r5, r6, #0
	add r5, #0x58
_0223FA3E:
	mov r7, #0
_0223FA40:
	add r3, r4, r7
	add r7, r7, #1
	strb r1, [r3, r6]
	cmp r7, #8
	blt _0223FA40
	ldr r3, _0223FA64 ; =0x00002DB0
	add r2, r2, #1
	ldr r7, [r4, r3]
	ldr r3, _0223FA68 ; =0xFFEFFFFF
	and r3, r7
	str r3, [r4, r5]
	add r4, #0xc0
	cmp r2, r0
	blt _0223FA3E
_0223FA5C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223FA60: .word 0x00002D58
_0223FA64: .word 0x00002DB0
_0223FA68: .word 0xFFEFFFFF
	thumb_func_end ov12_0223FA1C

	thumb_func_start ov12_0223FA6C
ov12_0223FA6C: ; 0x0223FA6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02250C70
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223FA6C

	thumb_func_start ov12_0223FA98
ov12_0223FA98: ; 0x0223FA98
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02250CA0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223FA98

	thumb_func_start ov12_0223FAC4
ov12_0223FAC4: ; 0x0223FAC4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov12_02263808
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223FAC4

	thumb_func_start ov12_0223FAFC
ov12_0223FAFC: ; 0x0223FAFC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov12_02263828
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223FAFC

	thumb_func_start ov12_0223FB34
ov12_0223FB34: ; 0x0223FB34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	add r7, r1, #0
	mov r0, #5
	mov r1, #0x6c
	add r5, r2, #0
	bl sub_0201AA8C
	ldr r4, [sp]
	lsl r5, r5, #1
	add r4, #0xa0
	add r6, r0, #0
	ldrh r0, [r4, r5]
	add r1, sp, #4
	bl sub_020735D8
	ldrh r0, [r4, r5]
	add r1, r6, #0
	bl sub_020735E8
	add r0, sp, #4
	ldrb r1, [r0]
	cmp r1, #3
	bhi _0223FB7A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FB72: ; jump table
	.short _0223FB7A - _0223FB72 - 2 ; case 0
	.short _0223FB8C - _0223FB72 - 2 ; case 1
	.short _0223FB9C - _0223FB72 - 2 ; case 2
	.short _0223FBAE - _0223FB72 - 2 ; case 3
_0223FB7A:
	add r0, sp, #4
	ldrb r0, [r0, #3]
	sub r0, r0, #1
	lsl r0, r0, #3
	add r0, r6, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _0223FBBE
_0223FB8C:
	ldrb r0, [r0, #3]
	sub r0, r0, #1
	lsl r0, r0, #4
	add r0, r6, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _0223FBBE
_0223FB9C:
	ldrb r0, [r0, #3]
	sub r1, r0, #1
	mov r0, #0xa
	mul r0, r1
	add r0, r6, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _0223FBBE
_0223FBAE:
	ldrb r0, [r0, #3]
	sub r1, r0, #1
	mov r0, #0x12
	mul r0, r1
	add r0, r6, r0
	ldrh r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0223FBBE:
	add r0, sp, #4
	ldrb r2, [r0, #1]
	ldr r1, _0223FC40 ; =0x0226C4C4
	mov r4, #0
_0223FBC6:
	ldrh r0, [r1]
	cmp r2, r0
	beq _0223FBD4
	add r4, r4, #1
	add r1, r1, #4
	cmp r4, #0x81
	blt _0223FBC6
_0223FBD4:
	cmp r4, #0x81
	blt _0223FBDC
	bl GF_AssertFail
_0223FBDC:
	cmp r4, #0x81
	blt _0223FBE2
	mov r4, #2
_0223FBE2:
	ldr r0, [sp]
	mov r1, #0x10
	ldr r0, [r0, #0x2c]
	tst r1, r0
	bne _0223FBF0
	cmp r0, #0x4b
	bne _0223FC04
_0223FBF0:
	ldr r0, _0223FC44 ; =0x0226C4C6
	lsl r1, r4, #2
	ldrh r0, [r0, r1]
	ldr r1, _0223FC48 ; =0x00002168
	ldr r2, [r7, r1]
	lsl r1, r5, #2
	mul r1, r2
	add r4, r0, #0
	mul r4, r1
	b _0223FC32
_0223FC04:
	mov r1, #2
	tst r0, r1
	beq _0223FC20
	ldr r0, _0223FC44 ; =0x0226C4C6
	lsl r1, r4, #2
	ldrh r0, [r0, r1]
	ldr r1, _0223FC48 ; =0x00002168
	ldr r2, [r7, r1]
	lsl r1, r5, #2
	mul r1, r2
	lsl r1, r1, #1
	add r4, r0, #0
	mul r4, r1
	b _0223FC32
_0223FC20:
	ldr r0, _0223FC44 ; =0x0226C4C6
	lsl r1, r4, #2
	ldrh r0, [r0, r1]
	ldr r1, _0223FC48 ; =0x00002168
	ldr r2, [r7, r1]
	lsl r1, r5, #2
	mul r1, r2
	add r4, r0, #0
	mul r4, r1
_0223FC32:
	add r0, r6, #0
	bl sub_0201AB0C
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FC40: .word 0x0226C4C4
_0223FC44: .word 0x0226C4C6
_0223FC48: .word 0x00002168
	thumb_func_end ov12_0223FB34

	thumb_func_start ov12_0223FC4C
ov12_0223FC4C: ; 0x0223FC4C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, _0223FCD4 ; =0x00002420
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0223FC96
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov12_0223FB34
	add r4, r0, #0
	ldr r1, [r5, #0x2c]
	mov r0, #0x10
	tst r0, r1
	bne _0223FC7A
	cmp r1, #0x4b
	bne _0223FC86
_0223FC7A:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #3
	bl ov12_0223FB34
	add r4, r4, r0
_0223FC86:
	add r0, r5, #0
	mov r1, #0
	bl ov12_0223AA40
	add r1, r4, #0
	bl sub_02029044
	b _0223FCAE
_0223FC96:
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x48]
	bl ov12_0223C24C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_0223AA40
	add r1, r4, #0
	bl sub_02029068
_0223FCAE:
	cmp r4, #0
	beq _0223FCBA
	mov r0, #0x13
	lsl r0, r0, #4
	str r4, [r6, r0]
	b _0223FCC2
_0223FCBA:
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
_0223FCC2:
	ldr r0, _0223FCD8 ; =0x00002478
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r1, r0, #0x1f
	mov r0, #0x4e
	lsl r0, r0, #2
	str r1, [r6, r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223FCD4: .word 0x00002420
_0223FCD8: .word 0x00002478
	thumb_func_end ov12_0223FC4C

	thumb_func_start ov12_0223FCDC
ov12_0223FCDC: ; 0x0223FCDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r6, #0
	bl ov12_0223B6D4
	cmp r0, #1
	beq _0223FD14
	cmp r4, #0xf
	beq _0223FD14
	cmp r4, #0x10
	beq _0223FD14
	add r0, r4, #0
	sub r0, #0x19
	cmp r0, #1
	bhi _0223FD3A
_0223FD14:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_0224768C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov12_02257F54
	cmp r0, #1
	bne _0223FD3A
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov12_02263848
_0223FD3A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223FCDC

	thumb_func_start ov12_0223FD40
ov12_0223FD40: ; 0x0223FD40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r6, #0
	bl ov12_0223B6D4
	cmp r0, #1
	beq _0223FD82
	cmp r4, #0xf
	beq _0223FD82
	cmp r4, #0x10
	beq _0223FD82
	add r0, r4, #0
	sub r0, #0x19
	cmp r0, #1
	bhi _0223FDC4
_0223FD82:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_0224768C
	add r7, r0, #0
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0224768C
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov12_02257F54
	cmp r0, #1
	bne _0223FDC4
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	bl ov12_02257F54
	cmp r0, #1
	bne _0223FDC4
	ldr r3, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	str r4, [sp]
	bl ov12_02263878
_0223FDC4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223FD40

	thumb_func_start ov12_0223FDCC
ov12_0223FDCC: ; 0x0223FDCC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0224768C
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov12_02245528
	add r4, r0, #0
	add r0, r7, #0
	bl ov12_0223B6D4
	cmp r0, #1
	beq _0223FE1C
	cmp r6, #0xf
	beq _0223FE1C
	cmp r6, #0x10
	beq _0223FE1C
	ldr r0, [r4]
	sub r0, #0x19
	cmp r0, #1
	bhi _0223FE36
_0223FE1C:
	ldr r1, [sp]
	ldr r2, [r4]
	add r0, r5, #0
	bl ov12_02257F54
	cmp r0, #1
	bne _0223FE36
	ldr r2, [sp]
	ldr r3, [r4]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02263848
_0223FE36:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0223FDCC

	thumb_func_start ov12_0223FE3C
ov12_0223FE3C: ; 0x0223FE3C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r1, r4, #0
	ldr r3, _0223FE70 ; =0x0000219C
	add r4, r4, r2
	ldrb r3, [r4, r3]
	add r0, r5, #0
	bl ov12_022638A8
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223FE70: .word 0x0000219C
	thumb_func_end ov12_0223FE3C

	thumb_func_start ov12_0223FE74
ov12_0223FE74: ; 0x0223FE74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r1, r4, #0
	ldr r3, _0223FEA8 ; =0x0000219C
	add r4, r4, r2
	ldrb r3, [r4, r3]
	add r0, r5, #0
	bl ov12_022638EC
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223FEA8: .word 0x0000219C
	thumb_func_end ov12_0223FE74

	thumb_func_start ov12_0223FEAC
ov12_0223FEAC: ; 0x0223FEAC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02263938
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223FEAC

	thumb_func_start ov12_0223FED8
ov12_0223FED8: ; 0x0223FED8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02263950
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223FED8

	thumb_func_start ov12_0223FF04
ov12_0223FF04: ; 0x0223FF04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	mov r2, #0x13
	lsl r2, r2, #4
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r5, #0
	bl ov12_02263828
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0223FF04

	thumb_func_start ov12_0223FF34
ov12_0223FF34: ; 0x0223FF34
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x79
	bne _0223FF66
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov12_02245508
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223FF66:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _022400A4 ; =0x00002D4C
	mov r6, #0
_0223FF72:
	ldrh r1, [r2, r0]
	cmp r1, #0
	beq _0223FF80
	add r6, r6, #1
	add r2, r2, #2
	cmp r6, #4
	blt _0223FF72
_0223FF80:
	mov r0, #0
	str r0, [sp, #8]
	cmp r6, #0
	ble _0223FFF8
	add r7, r0, #0
_0223FF8A:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r0, r4, r0
	add r2, r7, r0
	ldr r0, _022400A4 ; =0x00002D4C
	ldrh r0, [r2, r0]
	cmp r0, #0xa0
	beq _0223FFEC
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r0, _022400A8 ; =0x000003E2
	ldrb r5, [r2, r0]
	cmp r5, #9
	bne _0223FFCC
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #7
	beq _0223FFC6
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #7
	bne _0223FFCA
_0223FFC6:
	mov r5, #7
	b _0223FFCC
_0223FFCA:
	mov r5, #0
_0223FFCC:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r5, r0
	beq _0223FFEC
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r5, r0
	bne _0223FFF8
_0223FFEC:
	ldr r0, [sp, #8]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r6
	blt _0223FF8A
_0223FFF8:
	ldr r0, [sp, #8]
	cmp r0, r6
	bne _02240008
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov12_02245508
	b _0224009C
_02240008:
	ldr r7, _022400A4 ; =0x00002D4C
_0224000A:
	ldr r0, [sp]
	bl ov12_0223BD98
	add r1, r6, #0
	bl sub_020F2998
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	lsl r1, r1, #1
	add r0, r4, r0
	add r0, r1, r0
	ldrh r0, [r0, r7]
	cmp r0, #0xa0
	beq _0224000A
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _022400A8 ; =0x000003E2
	ldrb r5, [r1, r0]
	cmp r5, #9
	bne _0224005A
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #7
	beq _02240054
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #7
	bne _02240058
_02240054:
	mov r5, #7
	b _0224005A
_02240058:
	mov r5, #0
_0224005A:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r5, r0
	beq _0224000A
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r5, r0
	beq _0224000A
	ldr r1, [r4, #0x64]
	lsl r0, r5, #0x18
	add r3, r1, #0
	mov r2, #0xc0
	mul r3, r2
	ldr r1, _022400AC ; =0x00002D64
	lsr r0, r0, #0x18
	add r3, r4, r3
	strb r0, [r3, r1]
	ldr r3, [r4, #0x64]
	add r1, r1, #1
	add r6, r3, #0
	mul r6, r2
	add r3, r4, r6
	strb r0, [r3, r1]
	add r2, #0x70
	str r5, [r4, r2]
_0224009C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022400A4: .word 0x00002D4C
_022400A8: .word 0x000003E2
_022400AC: .word 0x00002D64
	thumb_func_end ov12_0223FF34

	thumb_func_start ov12_022400B0
ov12_022400B0: ; 0x022400B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r6, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov12_022454E8
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r4, #0
	bl ov12_02245528
	add r4, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r6, #0
	bl ov12_02245528
	cmp r7, #6
	bhi _02240168
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02240106: ; jump table
	.short _02240114 - _02240106 - 2 ; case 0
	.short _02240120 - _02240106 - 2 ; case 1
	.short _0224012C - _02240106 - 2 ; case 2
	.short _02240138 - _02240106 - 2 ; case 3
	.short _02240144 - _02240106 - 2 ; case 4
	.short _02240150 - _02240106 - 2 ; case 5
	.short _0224015C - _02240106 - 2 ; case 6
_02240114:
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	beq _02240168
	mov r5, #0
	b _02240168
_02240120:
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bne _02240168
	mov r5, #0
	b _02240168
_0224012C:
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bhi _02240168
	mov r5, #0
	b _02240168
_02240138:
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bls _02240168
	mov r5, #0
	b _02240168
_02240144:
	ldr r1, [r4]
	ldr r0, [r0]
	tst r0, r1
	bne _02240168
	mov r5, #0
	b _02240168
_02240150:
	ldr r1, [r4]
	ldr r0, [r0]
	tst r0, r1
	beq _02240168
	mov r5, #0
	b _02240168
_0224015C:
	ldr r1, [r0]
	ldr r0, [r4]
	and r0, r1
	cmp r1, r0
	beq _02240168
	mov r5, #0
_02240168:
	cmp r5, #0
	beq _02240174
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02245508
_02240174:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_022400B0

	thumb_func_start ov12_0224017C
ov12_0224017C: ; 0x0224017C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r6, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov12_022454E8
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r3, #0
	bl ov12_0224EDE0
	add r4, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl ov12_02245528
	cmp r7, #6
	bhi _0224023C
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022401E6: ; jump table
	.short _022401F4 - _022401E6 - 2 ; case 0
	.short _022401FE - _022401E6 - 2 ; case 1
	.short _02240208 - _022401E6 - 2 ; case 2
	.short _02240212 - _022401E6 - 2 ; case 3
	.short _0224021C - _022401E6 - 2 ; case 4
	.short _02240226 - _022401E6 - 2 ; case 5
	.short _02240230 - _022401E6 - 2 ; case 6
_022401F4:
	ldr r0, [r0]
	cmp r4, r0
	beq _0224023C
	mov r5, #0
	b _0224023C
_022401FE:
	ldr r0, [r0]
	cmp r4, r0
	bne _0224023C
	mov r5, #0
	b _0224023C
_02240208:
	ldr r0, [r0]
	cmp r4, r0
	bhi _0224023C
	mov r5, #0
	b _0224023C
_02240212:
	ldr r0, [r0]
	cmp r4, r0
	bls _0224023C
	mov r5, #0
	b _0224023C
_0224021C:
	ldr r0, [r0]
	tst r0, r4
	bne _0224023C
	mov r5, #0
	b _0224023C
_02240226:
	ldr r0, [r0]
	tst r0, r4
	beq _0224023C
	mov r5, #0
	b _0224023C
_02240230:
	ldr r1, [r0]
	add r0, r1, #0
	and r0, r4
	cmp r1, r0
	beq _0224023C
	mov r5, #0
_0224023C:
	cmp r5, #0
	beq _02240248
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02245508
_02240248:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0224017C

	thumb_func_start ov12_02240250
ov12_02240250: ; 0x02240250
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, _02240298 ; =0x00002168
	ldr r2, [r4, r0]
	ldr r1, [r4, r1]
	add r3, r2, #0
	mul r3, r1
	add r1, r0, #0
	sub r1, #0x1c
	str r3, [r4, r1]
	add r1, r0, #0
	sub r1, #0x1c
	ldr r2, [r4, r1]
	ldr r1, _0224029C ; =0x0000FFFF
	cmp r2, r1
	ble _02240282
	sub r0, #0x1c
	str r1, [r4, r0]
_02240282:
	add r0, r5, #0
	mov r1, #0
	bl ov12_0223AA40
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_02029044
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02240298: .word 0x00002168
_0224029C: .word 0x0000FFFF
	thumb_func_end ov12_02240250

	thumb_func_start ov12_022402A0
ov12_022402A0: ; 0x022402A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp]
	ldr r1, [r5, #0x64]
	add r0, r7, #0
	bl ov12_0223AB1C
	add r6, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r6, #2
	ldr r1, [r3, r2]
	mov r4, #2
	tst r4, r1
	beq _022402E4
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02245508
	ldr r1, _02240374 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	b _02240370
_022402E4:
	mov r4, #2
	orr r1, r4
	str r1, [r3, r2]
	add r1, r0, #0
	add r1, #8
	add r4, r5, r1
	lsl r6, r6, #3
	ldr r2, [r4, r6]
	ldr r1, _02240378 ; =0xFFFFFC7F
	add r0, #0xc4
	and r1, r2
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	mov r1, #0x60
	bic r0, r1
	ldr r1, [r5, #0x64]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, r6]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_02255830
	cmp r0, #0x61
	bne _02240338
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	ldr r1, [r4, r6]
	ldr r2, _02240378 ; =0xFFFFFC7F
	and r2, r1
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1d
	add r0, r1, r0
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x16
	orr r0, r2
	str r0, [r4, r6]
_02240338:
	add r0, r5, #0
	mov r1, #0x14
	add r0, #0xf5
	strb r1, [r0]
	ldr r0, _0224037C ; =0x00003044
	mov r2, #1
	ldr r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xf8
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0xfc
	str r1, [r0]
	ldr r3, [r5, #0x64]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02252260
	cmp r0, #2
	bne _0224036A
	mov r0, #0xc0
	add r5, #0xf6
	strh r0, [r5]
	b _02240370
_0224036A:
	mov r0, #0xbe
	add r5, #0xf6
	strh r0, [r5]
_02240370:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02240374: .word 0x0000216C
_02240378: .word 0xFFFFFC7F
_0224037C: .word 0x00003044
	thumb_func_end ov12_022402A0

	thumb_func_start ov12_02240380
ov12_02240380: ; 0x02240380
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp]
	ldr r1, [r5, #0x64]
	add r0, r7, #0
	bl ov12_0223AB1C
	add r6, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r6, #2
	ldr r1, [r3, r2]
	mov r4, #1
	tst r4, r1
	beq _022403C4
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02245508
	ldr r1, _02240458 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	b _02240452
_022403C4:
	mov r4, #1
	orr r1, r4
	add r0, #8
	add r4, r5, r0
	lsl r6, r6, #3
	str r1, [r3, r2]
	ldr r1, [r4, r6]
	mov r0, #0x1c
	bic r1, r0
	mov r0, #0x14
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	mov r1, #3
	bic r0, r1
	ldr r2, [r5, #0x64]
	mov r1, #3
	and r1, r2
	orr r0, r1
	str r0, [r4, r6]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_02255830
	cmp r0, #0x61
	bne _0224041A
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	ldr r1, [r4, r6]
	add r3, r0, #0
	mov r0, #0x1c
	add r2, r1, #0
	bic r2, r0
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x1d
	add r0, r0, r3
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1b
	orr r0, r2
	str r0, [r4, r6]
_0224041A:
	add r0, r5, #0
	mov r1, #0x14
	add r0, #0xf5
	strb r1, [r0]
	ldr r0, _0224045C ; =0x00003044
	mov r2, #1
	ldr r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xf8
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r5, #0x64]
	add r0, #0xfc
	str r1, [r0]
	ldr r3, [r5, #0x64]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02252260
	cmp r0, #2
	bne _0224044C
	mov r0, #0xc4
	add r5, #0xf6
	strh r0, [r5]
	b _02240452
_0224044C:
	mov r0, #0xc2
	add r5, #0xf6
	strh r0, [r5]
_02240452:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240458: .word 0x0000216C
_0224045C: .word 0x00003044
	thumb_func_end ov12_02240380

	thumb_func_start ov12_02240460
ov12_02240460: ; 0x02240460
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB1C
	mov r5, #0x6f
	add r2, r0, #0
	lsl r5, r5, #2
	add r1, r4, r5
	lsl r0, r2, #2
	ldr r6, [r1, r0]
	mov r3, #0x40
	tst r3, r6
	beq _022404A4
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_02245508
	ldr r1, _022404D4 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	b _022404CE
_022404A4:
	mov r3, #0x40
	orr r3, r6
	str r3, [r1, r0]
	add r5, #8
	lsl r0, r2, #3
	add r1, r4, r5
	ldr r3, [r1, r0]
	ldr r2, _022404D8 ; =0xFFFF8FFF
	and r3, r2
	mov r2, #5
	lsl r2, r2, #0xc
	orr r2, r3
	str r2, [r1, r0]
	ldr r3, [r1, r0]
	ldr r2, _022404DC ; =0xFFFFF3FF
	and r3, r2
	ldr r2, [r4, #0x64]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x14
	orr r2, r3
	str r2, [r1, r0]
_022404CE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022404D4: .word 0x0000216C
_022404D8: .word 0xFFFF8FFF
_022404DC: .word 0xFFFFF3FF
	thumb_func_end ov12_02240460

	thumb_func_start ov12_022404E0
ov12_022404E0: ; 0x022404E0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, _022406B4 ; =0x0000213C
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	orr r0, r2
	str r0, [r4, r1]
	ldr r1, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	add r0, r4, #0
	mov r3, #5
	bl ov12_02252834
	cmp r0, #1
	bne _02240518
	ldr r1, _022406B8 ; =0x0000216C
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0x12
	orr r0, r2
	str r0, [r4, r1]
	b _022406B0
_02240518:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	mov r0, #0x18
	tst r0, r1
	bne _022405A0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x63
	beq _022405A0
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x63
	beq _022405A0
	ldr r0, _022406BC ; =0x00003044
	mov r2, #0xc0
	ldr r0, [r4, r0]
	ldr r5, [r4, #0x6c]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _022406C0 ; =0x000003E3
	ldrb r1, [r1, r0]
	ldr r0, [r4, #0x64]
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	ldr r3, _022406C4 ; =0x00002D74
	mul r2, r5
	add r2, r4, r2
	ldrb r0, [r0, r3]
	ldrb r2, [r2, r3]
	sub r0, r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r6, #0
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	cmp r1, r5
	bge _0224059C
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _022406C4 ; =0x00002D74
	add r2, r4, r2
	ldrb r3, [r2, r1]
	ldr r2, [r4, #0x6c]
	mul r0, r2
	add r0, r4, r0
	ldrb r0, [r0, r1]
	cmp r3, r0
	blo _0224059C
	mov r3, #1
	b _0224065A
_0224059C:
	mov r3, #0
	b _0224065A
_022405A0:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r3, r4, r0
	ldr r0, _022406C8 ; =0x00002DCC
	ldr r1, [r4, #0x64]
	ldr r2, [r3, r0]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	cmp r1, r2
	bne _022405C0
	sub r0, #0xc
	ldr r2, [r3, r0]
	mov r0, #0x18
	tst r0, r2
	bne _022405D6
_022405C0:
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x63
	beq _022405D6
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x63
	bne _022405F4
_022405D6:
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r3, [r4, #0x6c]
	add r0, r4, r2
	ldr r2, _022406C4 ; =0x00002D74
	mul r1, r3
	add r1, r4, r1
	ldrb r0, [r0, r2]
	ldrb r1, [r1, r2]
	cmp r0, r1
	blo _022405F4
	mov r3, #1
	b _0224064E
_022405F4:
	ldr r0, _022406BC ; =0x00003044
	mov r2, #0xc0
	ldr r0, [r4, r0]
	ldr r5, [r4, #0x6c]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _022406C0 ; =0x000003E3
	ldrb r1, [r1, r0]
	ldr r0, [r4, #0x64]
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	ldr r3, _022406C4 ; =0x00002D74
	mul r2, r5
	add r2, r4, r2
	ldrb r0, [r0, r3]
	ldrb r2, [r2, r3]
	sub r0, r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r6, #0
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	cmp r1, r5
	bge _0224064C
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _022406C4 ; =0x00002D74
	add r2, r4, r2
	ldrb r3, [r2, r1]
	ldr r2, [r4, #0x6c]
	mul r0, r2
	add r0, r4, r0
	ldrb r0, [r0, r1]
	cmp r3, r0
	blo _0224064C
	mov r3, #1
	b _0224064E
_0224064C:
	mov r3, #0
_0224064E:
	ldr r1, _022406B8 ; =0x0000216C
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	orr r0, r2
	str r0, [r4, r1]
_0224065A:
	cmp r3, #0
	beq _02240680
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _022406CC ; =0x00002D8C
	ldr r0, [r1, r0]
	ldr r1, _022406D0 ; =0x00002144
	neg r0, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x28
	ldr r2, [r4, r0]
	mov r0, #0x20
	orr r0, r2
	add r1, #0x28
	str r0, [r4, r1]
	b _022406B0
_02240680:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, _022406C4 ; =0x00002D74
	add r2, r4, r2
	ldrb r3, [r2, r1]
	ldr r2, [r4, #0x6c]
	mul r0, r2
	add r0, r4, r0
	ldrb r0, [r0, r1]
	cmp r3, r0
	ldr r1, _022406B8 ; =0x0000216C
	blo _022406A6
	ldr r2, [r4, r1]
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	b _022406B0
_022406A6:
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xc
	orr r0, r2
	str r0, [r4, r1]
_022406B0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022406B4: .word 0x0000213C
_022406B8: .word 0x0000216C
_022406BC: .word 0x00003044
_022406C0: .word 0x000003E3
_022406C4: .word 0x00002D74
_022406C8: .word 0x00002DCC
_022406CC: .word 0x00002D8C
_022406D0: .word 0x00002144
	thumb_func_end ov12_022404E0

	thumb_func_start ov12_022406D4
ov12_022406D4: ; 0x022406D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_02245528
	add r4, r0, #0
	ldr r0, [r4]
	add r1, r7, #0
	bl ov12_02253178
	str r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022406D4

	thumb_func_start ov12_0224070C
ov12_0224070C: ; 0x0224070C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_02245528
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_02245528
	add r1, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bge _0224074E
	mov r5, #0
	mvn r5, r5
	b _02240750
_0224074E:
	mov r5, #1
_02240750:
	ldr r0, [r4]
	ldr r1, [r1]
	bl sub_020F2998
	str r0, [r4]
	cmp r0, #0
	bne _02240760
	str r5, [r4]
_02240760:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224070C

	thumb_func_start ov12_02240764
ov12_02240764: ; 0x02240764
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	str r0, [sp]
	ldr r0, [r6, #0x6c]
	lsl r0, r0, #1
	add r1, r6, r0
	ldr r0, _02240888 ; =0x0000307C
	ldrh r0, [r1, r0]
	bl ov12_02257D6C
	cmp r0, #0
	beq _022407BE
	ldr r0, [r6, #0x64]
	mov r2, #2
	mov r3, #0xc0
	add r1, r0, #0
	mul r1, r3
	add r0, r6, r1
	ldr r1, _0224088C ; =0x00002DB0
	mov ip, r0
	ldr r0, [r0, r1]
	lsl r2, r2, #0x14
	tst r0, r2
	bne _022407BE
	ldr r0, [r6, #0x6c]
	add r4, r0, #0
	mul r4, r3
	add r4, r6, r4
	ldr r4, [r4, r1]
	lsl r1, r2, #3
	tst r1, r4
	bne _022407BE
	lsl r0, r0, #1
	add r1, r6, r0
	ldr r0, _02240888 ; =0x0000307C
	ldrh r7, [r1, r0]
	cmp r7, #0
	bne _022407C8
_022407BE:
	ldr r1, [sp]
	add r0, r6, #0
	bl ov12_02245508
	b _02240884
_022407C8:
	mov r2, #0
	sub r3, #0xc1
	mov r4, ip
	add r5, r2, #0
_022407D0:
	ldr r0, _02240890 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r7, r0
	beq _022407F8
	mov r0, ip
	add r1, r0, r5
	ldr r0, _02240890 ; =0x00002D4C
	ldrh r0, [r1, r0]
	cmp r0, #0x66
	bne _022407EE
	mov r0, #0
	mvn r0, r0
	cmp r3, r0
	bne _022407EE
	add r3, r2, #0
_022407EE:
	add r2, r2, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r2, #4
	blt _022407D0
_022407F8:
	cmp r2, #4
	bne _0224087C
	mov r4, #0x49
	lsl r4, r4, #2
	str r7, [r6, r4]
	ldr r2, [r6, #0x64]
	mov r1, #0xc0
	add r5, r2, #0
	mul r5, r1
	add r5, r6, r5
	lsl r2, r3, #1
	add r5, r5, r2
	ldr r0, [r6, r4]
	ldr r2, _02240890 ; =0x00002D4C
	strh r0, [r5, r2]
	ldr r0, [r6, r4]
	lsl r0, r0, #4
	add r4, r6, r0
	mov r0, #0xf9
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #5
	bhs _02240828
	b _0224082A
_02240828:
	mov r0, #5
_0224082A:
	ldr r4, [r6, #0x64]
	add r2, #0x20
	mul r1, r4
	add r1, r6, r1
	add r1, r1, r3
	strb r0, [r1, r2]
	add r0, r3, #0
	bl sub_020726C0
	ldr r1, _02240894 ; =0x00002DCC
	mov r4, #0xc0
	add r3, r6, r1
	ldr r1, [r6, #0x64]
	mov r5, #0x3c
	add r2, r1, #0
	mul r2, r4
	ldr r7, [r3, r2]
	add r1, r7, #0
	bic r1, r5
	lsl r5, r7, #0x1a
	lsr r5, r5, #0x1c
	orr r0, r5
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r3, r2]
	add r0, r4, #0
	add r0, #0x64
	ldr r1, [r6, r0]
	add r0, r4, #0
	add r0, #0xc3
	cmp r1, r0
	bne _02240884
	ldr r0, [r6, #0x64]
	add r2, r0, #0
	mul r2, r4
	ldr r1, [r3, r2]
	ldr r0, _02240898 ; =0xFFFFE3FF
	and r0, r1
	str r0, [r3, r2]
	b _02240884
_0224087C:
	ldr r1, [sp]
	add r0, r6, #0
	bl ov12_02245508
_02240884:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02240888: .word 0x0000307C
_0224088C: .word 0x00002DB0
_02240890: .word 0x00002D4C
_02240894: .word 0x00002DCC
_02240898: .word 0xFFFFE3FF
	thumb_func_end ov12_02240764

	thumb_func_start ov12_0224089C
ov12_0224089C: ; 0x0224089C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	ldr r4, _022408F4 ; =0x00002D4C
_022408AC:
	add r0, r7, #0
	bl ov12_0223BD98
	ldr r1, _022408F8 ; =0x000001D3
	bl sub_020F2998
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r3, [r6, #0x64]
	mov r0, #0xc0
	mul r0, r3
	mov r1, #0
	add r2, r6, r0
_022408C8:
	ldrh r0, [r2, r4]
	cmp r5, r0
	beq _022408D6
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #4
	blt _022408C8
_022408D6:
	cmp r1, #4
	bne _022408AC
	add r2, r3, #0
	add r0, r7, #0
	add r1, r6, #0
	add r3, r5, #0
	bl ov12_02257DA4
	cmp r0, #0
	beq _022408AC
	mov r0, #0x49
	lsl r0, r0, #2
	str r5, [r6, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022408F4: .word 0x00002D4C
_022408F8: .word 0x000001D3
	thumb_func_end ov12_0224089C

	thumb_func_start ov12_022408FC
ov12_022408FC: ; 0x022408FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	mov r0, #0xb5
	lsl r0, r0, #6
	add r2, r4, r0
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	lsl r1, r1, #1
	add r0, r2, r0
	add r2, r4, r1
	ldr r1, _022409B0 ; =0x0000307C
	ldrh r1, [r2, r1]
	bl ov12_02251C60
	add r3, r0, #0
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	ldr r7, _022409B4 ; =0x00002DE8
	add r1, r4, r0
	ldrh r0, [r1, r7]
	cmp r0, #0
	bne _022409A2
	cmp r3, #4
	beq _022409A2
	add r0, r7, #0
	add r1, r1, r3
	sub r0, #0x7c
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022409A2
	lsl r0, r2, #1
	add r1, r4, r0
	ldr r0, _022409B0 ; =0x0000307C
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _022409A2
	mov r0, #0xc0
	add r0, #0x64
	str r1, [r4, r0]
	mov r0, #0xc0
	add r0, #0x64
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	ldr r0, [r4, r0]
	add r1, r4, r1
	strh r0, [r1, r7]
	add r0, r5, #0
	bl ov12_0223BD98
	add r1, r7, #0
	sub r1, #0x20
	add r3, r4, r1
	ldr r4, [r4, #0x6c]
	mov r1, #0xc0
	add r2, r4, #0
	mul r2, r1
	ldr r1, [r3, r2]
	mov r4, #7
	bic r1, r4
	lsr r5, r0, #0x1f
	lsl r4, r0, #0x1e
	sub r4, r4, r5
	mov r0, #0x1e
	ror r4, r0
	add r0, r5, r4
	add r4, r0, #3
	mov r0, #7
	and r0, r4
	orr r0, r1
	str r0, [r3, r2]
	b _022409AA
_022409A2:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_022409AA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022409B0: .word 0x0000307C
_022409B4: .word 0x00002DE8
	thumb_func_end ov12_022408FC

	thumb_func_start ov12_022409B8
ov12_022409B8: ; 0x022409B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r5, #0x64]
	lsl r0, r1, #6
	add r2, r5, r0
	mov r0, #0x7a
	lsl r0, r0, #2
	ldr r4, [r2, r0]
	ldr r0, [sp]
	bl ov12_0223AB1C
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AB1C
	ldr r6, [r5, #0x64]
	add r3, r0, #0
	lsl r0, r6, #6
	add r1, r5, r0
	lsl r0, r4, #2
	add r0, r1, r0
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r7, [r0, r1]
	cmp r7, #0
	beq _02240A7E
	ldr r0, [sp, #4]
	cmp r0, r3
	beq _02240A7E
	mov r0, #0xc0
	mul r0, r4
	add r2, r5, r0
	ldr r0, _02240AA8 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02240A7E
	ldr r0, _02240AAC ; =0x00002144
	lsl r2, r7, #1
	sub r1, #0x14
	str r2, [r5, r0]
	add r1, r5, r1
	lsl r0, r3, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02240A38
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _02240AA8 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02240A38
	str r0, [r5, #0x6c]
	b _02240A3A
_02240A38:
	str r4, [r5, #0x6c]
_02240A3A:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02240AA8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02240A72
	ldr r0, [sp]
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	bl ov12_02253DA0
	mov r1, #0xc0
	mul r1, r0
	str r0, [r5, #0x6c]
	ldr r0, _02240AA8 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02240A72
	mov r2, #0x27
	str r2, [r5, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, #0xf2
	bl ov12_02245518
_02240A72:
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	add r0, r5, #0
	bl ov12_02258180
	b _02240AA0
_02240A7E:
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r6, #0
	mul r3, r1
	add r0, r5, r0
	ldr r2, [r0, r3]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, r3]
	ldr r1, _02240AB0 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
_02240AA0:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240AA8: .word 0x00002D8C
_02240AAC: .word 0x00002144
_02240AB0: .word 0x0000216C
	thumb_func_end ov12_022409B8

	thumb_func_start ov12_02240AB4
ov12_02240AB4: ; 0x02240AB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r5, #0x64]
	lsl r0, r1, #6
	add r2, r5, r0
	mov r0, #2
	lsl r0, r0, #8
	ldr r4, [r2, r0]
	ldr r0, [sp]
	bl ov12_0223AB1C
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AB1C
	ldr r6, [r5, #0x64]
	add r3, r0, #0
	lsl r0, r6, #6
	add r1, r5, r0
	lsl r0, r4, #2
	add r0, r1, r0
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r7, [r0, r1]
	cmp r7, #0
	beq _02240B7A
	ldr r0, [sp, #4]
	cmp r0, r3
	beq _02240B7A
	mov r0, #0xc0
	mul r0, r4
	add r2, r5, r0
	ldr r0, _02240BA4 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02240B7A
	ldr r0, _02240BA8 ; =0x00002144
	lsl r2, r7, #1
	sub r1, #0x2c
	str r2, [r5, r0]
	add r1, r5, r1
	lsl r0, r3, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02240B34
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _02240BA4 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02240B34
	str r0, [r5, #0x6c]
	b _02240B36
_02240B34:
	str r4, [r5, #0x6c]
_02240B36:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02240BA4 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02240B6E
	ldr r0, [sp]
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	bl ov12_02253DA0
	mov r1, #0xc0
	mul r1, r0
	str r0, [r5, #0x6c]
	ldr r0, _02240BA4 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02240B6E
	mov r2, #0x27
	str r2, [r5, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, #0xf2
	bl ov12_02245518
_02240B6E:
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	add r0, r5, #0
	bl ov12_02258180
	b _02240B9C
_02240B7A:
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r6, #0
	mul r3, r1
	add r0, r5, r0
	ldr r2, [r0, r3]
	mov r1, #1
	bic r2, r1
	mov r1, #1
	orr r1, r2
	str r1, [r0, r3]
	ldr r1, _02240BAC ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
_02240B9C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240BA4: .word 0x00002D8C
_02240BA8: .word 0x00002144
_02240BAC: .word 0x0000216C
	thumb_func_end ov12_02240AB4

	thumb_func_start ov12_02240BB0
ov12_02240BB0: ; 0x02240BB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	mov r0, #0xb5
	lsl r0, r0, #6
	add r2, r5, r0
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	lsl r1, r1, #1
	add r0, r2, r0
	add r2, r5, r1
	ldr r1, _02240C88 ; =0x0000307C
	ldrh r1, [r2, r1]
	bl ov12_02251C60
	ldr r1, [r5, #0x6c]
	add r4, r0, #0
	lsl r1, r1, #1
	add r2, r5, r1
	ldr r1, _02240C88 ; =0x0000307C
	add r0, r5, #0
	ldrh r1, [r2, r1]
	bl ov12_02257DFC
	cmp r0, #0
	bne _02240BF8
	mov r4, #4
_02240BF8:
	ldr r0, [r5, #0x6c]
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	ldr r3, _02240C8C ; =0x00002DEC
	add r6, r5, r1
	ldrh r1, [r6, r3]
	cmp r1, #0
	bne _02240C72
	cmp r4, #4
	beq _02240C72
	add r1, r3, #0
	add r6, r6, r4
	sub r1, #0x80
	ldrb r1, [r6, r1]
	cmp r1, #0
	beq _02240C72
	lsl r0, r0, #1
	add r1, r5, r0
	ldr r0, _02240C88 ; =0x0000307C
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _02240C72
	add r0, r2, #0
	add r0, #0x64
	str r1, [r5, r0]
	ldr r1, [r5, #0x6c]
	add r0, r2, #0
	add r0, #0x64
	add r6, r1, #0
	mul r6, r2
	ldr r0, [r5, r0]
	add r1, r5, r6
	strh r0, [r1, r3]
	ldr r0, [r5, #0x6c]
	add r1, r0, #0
	mul r1, r2
	add r1, r5, r1
	add r0, r3, #2
	strh r4, [r1, r0]
	ldr r0, [sp]
	bl ov12_0223BD98
	ldr r1, _02240C90 ; =0x00002DC8
	ldr r2, [r5, #0x6c]
	add r4, r5, r1
	mov r1, #0xc0
	add r5, r2, #0
	mul r5, r1
	mov r1, #5
	bl sub_020F2998
	ldr r2, [r4, r5]
	mov r0, #0x38
	bic r2, r0
	add r0, r1, #3
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r2
	str r0, [r4, r5]
	b _02240C84
_02240C72:
	ldr r1, _02240C94 ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
_02240C84:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02240C88: .word 0x0000307C
_02240C8C: .word 0x00002DEC
_02240C90: .word 0x00002DC8
_02240C94: .word 0x0000216C
	thumb_func_end ov12_02240BB0

	thumb_func_start ov12_02240C98
ov12_02240C98: ; 0x02240C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x79
	bne _02240CCA
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02240CCA:
	ldr r0, [r5, #0x64]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _02240E40 ; =0x000030C4
	ldrh r1, [r2, r0]
	cmp r1, #0
	beq _02240CE0
	add r0, #8
	ldrh r0, [r2, r0]
	cmp r0, #0xff
	bne _02240CE2
_02240CE0:
	b _02240E30
_02240CE2:
	add r0, r5, #0
	bl ov12_022525AC
	cmp r0, #0
	beq _02240D16
	ldr r0, [r5, #0x64]
	lsl r0, r0, #1
	add r1, r5, r0
	ldr r0, _02240E44 ; =0x000030CC
	ldrh r1, [r1, r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02240E48 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02240D16
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02245508
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02240D16:
	ldr r0, [r5, #0x64]
	mov r6, #0
	lsl r0, r0, #1
	add r1, r5, r0
	ldr r0, _02240E4C ; =0x000030D4
	ldrh r7, [r1, r0]
_02240D22:
	add r0, sp, #0xc
	str r0, [sp]
	add r2, sp, #0xc
	add r3, sp, #0xc
	ldr r0, [sp, #4]
	ldr r1, _02240E50 ; =0x0000FFFF
	add r2, #2
	add r3, #1
	bl ov12_0225260C
	add r0, sp, #0xc
	ldrb r0, [r0, #2]
	cmp r0, r7
	bne _02240D94
	add r0, sp, #0xc
	ldrb r0, [r0]
	cmp r0, #5
	bhi _02240D94
	add r0, sp, #0xc
	ldrb r4, [r0, #1]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r4, r0
	beq _02240D94
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r4, r0
	beq _02240D94
	ldr r0, [r5, #0x64]
	add r3, sp, #0xc
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	add r0, r5, r1
	ldr r1, _02240E54 ; =0x00002D64
	add sp, #0x10
	strb r4, [r0, r1]
	ldr r4, [r5, #0x64]
	ldrb r0, [r3, #1]
	add r6, r4, #0
	mul r6, r2
	add r4, r5, r6
	add r1, r1, #1
	strb r0, [r4, r1]
	ldrb r0, [r3, #1]
	add r2, #0x70
	str r0, [r5, r2]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02240D94:
	mov r0, #0xfa
	add r6, r6, #1
	lsl r0, r0, #2
	cmp r6, r0
	blt _02240D22
	add r0, sp, #0xc
	mov r6, #0
	str r0, [sp]
	add r2, sp, #0xc
	add r3, sp, #0xc
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, #2
	add r3, #1
	bl ov12_0225260C
	cmp r0, #1
	bne _02240E30
_02240DB8:
	add r0, sp, #0xc
	ldrb r0, [r0, #2]
	cmp r0, r7
	bne _02240E16
	add r0, sp, #0xc
	ldrb r0, [r0]
	cmp r0, #5
	bhi _02240E16
	add r0, sp, #0xc
	ldrb r4, [r0, #1]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r4, r0
	beq _02240E16
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r4, r0
	beq _02240E16
	ldr r0, [r5, #0x64]
	add r3, sp, #0xc
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	add r0, r5, r1
	ldr r1, _02240E54 ; =0x00002D64
	add sp, #0x10
	strb r4, [r0, r1]
	ldr r4, [r5, #0x64]
	ldrb r0, [r3, #1]
	add r6, r4, #0
	mul r6, r2
	add r4, r5, r6
	add r1, r1, #1
	strb r0, [r4, r1]
	ldrb r0, [r3, #1]
	add r2, #0x70
	str r0, [r5, r2]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02240E16:
	add r0, sp, #0xc
	add r6, r6, #1
	str r0, [sp]
	add r2, sp, #0xc
	add r3, sp, #0xc
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, #2
	add r3, #1
	bl ov12_0225260C
	cmp r0, #1
	beq _02240DB8
_02240E30:
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02245508
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240E40: .word 0x000030C4
_02240E44: .word 0x000030CC
_02240E48: .word 0x00002DB0
_02240E4C: .word 0x000030D4
_02240E50: .word 0x0000FFFF
_02240E54: .word 0x00002D64
	thumb_func_end ov12_02240C98

	thumb_func_start ov12_02240E58
ov12_02240E58: ; 0x02240E58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	add r6, r1, #0
	mvn r0, r0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	mov ip, r0
	ldr r1, [r6, #0x64]
	mov r0, #0xc0
	mul r0, r1
	str r0, [sp, #4]
	add r3, r6, r0
	ldr r0, _02240F68 ; =0x00002DB0
	ldr r1, [r3, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	bne _02240EAA
	ldr r0, [r6, #0x6c]
	lsl r0, r0, #1
	add r1, r6, r0
	ldr r0, _02240F6C ; =0x000030AC
	ldrh r7, [r1, r0]
	cmp r7, #0xa5
	beq _02240EAA
	cmp r7, #0xa6
	beq _02240EAA
	mov r0, #7
	lsl r0, r0, #6
	cmp r7, r0
	beq _02240EAA
	cmp r7, #0
	bne _02240EB4
_02240EAA:
	add r0, r6, #0
	mov r1, ip
	bl ov12_02245508
	b _02240F62
_02240EB4:
	mov r0, #0
	add r1, r3, #0
	add r2, r0, #0
_02240EBA:
	ldr r4, _02240F70 ; =0x00002D4C
	ldrh r4, [r1, r4]
	cmp r4, #0xa6
	beq _02240ECC
	ldr r4, _02240F70 ; =0x00002D4C
	add r5, r3, r2
	ldrh r4, [r5, r4]
	cmp r7, r4
	beq _02240EEC
_02240ECC:
	ldr r4, _02240F70 ; =0x00002D4C
	add r5, r3, r2
	ldrh r4, [r5, r4]
	cmp r4, #0xa6
	bne _02240EE2
	mov r5, #0
	ldr r4, [sp, #8]
	mvn r5, r5
	cmp r4, r5
	bne _02240EE2
	str r0, [sp, #8]
_02240EE2:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _02240EBA
_02240EEC:
	cmp r0, #4
	bne _02240F5A
	ldr r0, [sp, #4]
	add r1, r6, r0
	ldr r0, [sp, #8]
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r0, _02240F70 ; =0x00002D4C
	strh r7, [r1, r0]
	ldr r1, [r6, #0x6c]
	ldr r3, [r6, #0x64]
	lsl r1, r1, #1
	add r2, r6, r1
	ldr r1, _02240F6C ; =0x000030AC
	add r0, #0x20
	ldrh r1, [r2, r1]
	lsl r1, r1, #4
	add r2, r6, r1
	mov r1, #0xf9
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	mov r2, #0xc0
	mul r2, r3
	add r3, r6, r2
	ldr r2, [sp, #8]
	add r2, r3, r2
	strb r1, [r2, r0]
	ldr r0, [sp]
	ldr r2, [r6, #0x64]
	add r1, r6, #0
	bl ov12_02263B4C
	ldr r0, [r6, #0x6c]
	lsl r0, r0, #1
	add r1, r6, r0
	ldr r0, _02240F6C ; =0x000030AC
	ldrh r1, [r1, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r1, [r6, r0]
	add r0, #0x5f
	cmp r1, r0
	bne _02240F62
	ldr r0, _02240F74 ; =0x00002DCC
	ldr r1, [r6, #0x64]
	add r3, r6, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	ldr r0, _02240F78 ; =0xFFFFE3FF
	and r0, r1
	str r0, [r3, r2]
	b _02240F62
_02240F5A:
	add r0, r6, #0
	mov r1, ip
	bl ov12_02245508
_02240F62:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02240F68: .word 0x00002DB0
_02240F6C: .word 0x000030AC
_02240F70: .word 0x00002D4C
_02240F74: .word 0x00002DCC
_02240F78: .word 0xFFFFE3FF
	thumb_func_end ov12_02240E58

	thumb_func_start ov12_02240F7C
ov12_02240F7C: ; 0x02240F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	mov r7, #0
	str r0, [sp, #8]
	add r6, r7, #0
	add r4, r7, #0
_02240F9A:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r0, r5, r0
	add r1, r4, r0
	ldr r0, _02241044 ; =0x00002D4C
	ldrh r0, [r1, r0]
	bl ov12_02252698
	cmp r0, #0
	bne _02240FDA
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r0, r5, r0
	add r1, r4, r0
	ldr r0, _02241044 ; =0x00002D4C
	ldrh r1, [r1, r0]
	mov r0, #0x42
	lsl r0, r0, #2
	cmp r1, r0
	beq _02240FDA
	cmp r1, #0xfd
	beq _02240FDA
	add r0, #0xb8
	cmp r1, r0
	beq _02240FDA
	add r0, r5, #0
	bl ov12_022525AC
	cmp r0, #0
	beq _02240FE2
_02240FDA:
	add r0, r6, #0
	bl sub_020726C0
	orr r7, r0
_02240FE2:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #4
	blt _02240F9A
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	add r3, r7, #0
	bl ov12_022517EC
	add r4, r0, #0
	cmp r4, #0xf
	bne _0224100C
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02245508
	b _0224103E
_0224100C:
	mov r7, #0x1e
_0224100E:
	ldr r0, [sp, #4]
	bl ov12_0223BD98
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1e
	sub r0, r0, r1
	ror r0, r7
	add r6, r1, r0
	add r0, r6, #0
	bl sub_020726C0
	tst r0, r4
	bne _0224100E
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r2, r5, r2
	lsl r0, r6, #1
	add r2, r2, r0
	ldr r0, _02241044 ; =0x00002D4C
	add r1, #0x64
	ldrh r0, [r2, r0]
	str r0, [r5, r1]
_0224103E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02241044: .word 0x00002D4C
	thumb_func_end ov12_02240F7C

	thumb_func_start ov12_02241048
ov12_02241048: ; 0x02241048
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _0224108C ; =0x00002D8C
	add r2, r4, r0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	mov r2, #0x40
	bl sub_02088068
	ldr r3, _02241090 ; =0x0226C300
	mov r2, #0
_0224106E:
	ldrb r1, [r3]
	cmp r0, r1
	ble _0224107C
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #6
	blo _0224106E
_0224107C:
	ldr r0, _02241094 ; =0x0226C301
	lsl r1, r2, #1
	ldrb r1, [r0, r1]
	ldr r0, _02241098 ; =0x00002154
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	nop
_0224108C: .word 0x00002D8C
_02241090: .word 0x0226C300
_02241094: .word 0x0226C301
_02241098: .word 0x00002154
	thumb_func_end ov12_02241048

	thumb_func_start ov12_0224109C
ov12_0224109C: ; 0x0224109C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	ldr r2, [r5, #0x6c]
	add r4, r0, #0
	lsl r0, r2, #1
	add r1, r5, r0
	ldr r0, _02241138 ; =0x0000307C
	ldrh r1, [r1, r0]
	cmp r1, #0
	beq _0224112A
	mov r0, #0xb5
	lsl r0, r0, #6
	mov r3, #0xc0
	add r0, r5, r0
	mul r3, r2
	add r0, r0, r3
	bl ov12_02251C60
	add r2, r0, #0
	cmp r2, #4
	beq _022410E8
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	mul r1, r0
	add r1, r5, r1
	add r3, r1, r2
	ldr r1, _0224113C ; =0x00002D6C
	ldrb r3, [r3, r1]
	cmp r3, #0
	bne _022410F2
_022410E8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
	b _02241132
_022410F2:
	mov r1, #4
	cmp r3, #4
	bge _022410FA
	add r1, r3, #0
_022410FA:
	lsl r0, r0, #1
	add r3, r5, r0
	ldr r0, _02241138 ; =0x0000307C
	ldrh r3, [r3, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r3, [r5, r0]
	add r0, #0xc
	str r1, [r5, r0]
	ldr r0, _0224113C ; =0x00002D6C
	ldr r4, [r5, #0x6c]
	mov r3, #0xc0
	add r0, r5, r0
	mul r3, r4
	add r3, r0, r3
	ldrb r0, [r3, r2]
	sub r0, r0, r1
	strb r0, [r3, r2]
	ldr r2, [r5, #0x6c]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02250C40
	b _02241132
_0224112A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
_02241132:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02241138: .word 0x0000307C
_0224113C: .word 0x00002D6C
	thumb_func_end ov12_0224109C

	thumb_func_start ov12_02241140
ov12_02241140: ; 0x02241140
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl ov12_0223A7E0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	mov r1, #0x4d
	mov r0, #0
	lsl r1, r1, #2
	ldr r2, _02241280 ; =0x00003044
	str r0, [r5, r1]
	ldr r2, [r5, r2]
	cmp r2, #0xd7
	bne _0224120E
	sub r1, #0x10
	str r2, [r5, r1]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x2b
	beq _02241196
	ldr r2, [r5, #0x64]
	mov r0, #0xc0
	add r3, r2, #0
	mul r3, r0
	ldr r2, _02241284 ; =0x00002DAC
	mov r1, #0
	add r3, r5, r3
	str r1, [r3, r2]
	add r1, r2, #4
	ldr r2, [r5, #0x64]
	add r1, r5, r1
	mul r0, r2
	ldr r3, [r1, r0]
	ldr r2, _02241288 ; =0xF7FFFFFF
	and r2, r3
	str r2, [r1, r0]
	b _022411A2
_02241196:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #5
	orr r0, r2
	str r0, [r5, r1]
_022411A2:
	mov r0, #2
	tst r0, r4
	beq _02241200
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x10
	bl ov12_0224768C
	add r4, r0, #0
	bl sub_020726C0
	ldr r1, _0224128C ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _0224126E
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x2b
	bl ov12_02252834
	cmp r0, #0
	bne _022411EA
	mov r0, #0xc0
	mul r0, r4
	ldr r1, _02241284 ; =0x00002DAC
	mov r3, #0
	add r2, r5, r0
	str r3, [r2, r1]
	add r1, r1, #4
	add r3, r5, r1
	ldr r2, [r3, r0]
	ldr r1, _02241288 ; =0xF7FFFFFF
	and r1, r2
	str r1, [r3, r0]
	b _0224126E
_022411EA:
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r1, #0
	str r4, [r5, r1]
	add r0, #0x1c
	ldr r2, [r5, r0]
	mov r0, #0xa
	orr r0, r2
	add r1, #0x1c
	str r0, [r5, r1]
	b _0224126E
_02241200:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r5, r1]
	b _0224126E
_0224120E:
	ldr r3, [r5, #0x64]
	mov r2, #0xc0
	mul r2, r3
	add r3, r5, r2
	ldr r2, _02241284 ; =0x00002DAC
	str r0, [r3, r2]
	add r0, r2, #4
	add r6, r5, r0
	ldr r0, [r5, #0x64]
	mov r2, #0xc0
	add r3, r0, #0
	mul r3, r2
	ldr r2, [r6, r3]
	ldr r0, _02241288 ; =0xF7FFFFFF
	and r0, r2
	str r0, [r6, r3]
	mov r0, #2
	tst r0, r4
	beq _02241266
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x10
	bl ov12_0224768C
	add r4, r0, #0
	bl sub_020726C0
	ldr r1, _0224128C ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _0224126E
	mov r0, #0xc0
	mul r0, r4
	ldr r1, _02241284 ; =0x00002DAC
	mov r3, #0
	add r2, r5, r0
	str r3, [r2, r1]
	add r1, r1, #4
	add r3, r5, r1
	ldr r2, [r3, r0]
	ldr r1, _02241288 ; =0xF7FFFFFF
	and r1, r2
	str r1, [r3, r0]
	b _0224126E
_02241266:
	ldr r2, [r5, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r5, r1]
_0224126E:
	ldr r3, _02241280 ; =0x00003044
	ldr r2, [r5, #0x64]
	ldr r3, [r5, r3]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02263CE8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02241280: .word 0x00003044
_02241284: .word 0x00002DAC
_02241288: .word 0xF7FFFFFF
_0224128C: .word 0x00003108
	thumb_func_end ov12_02241140

	thumb_func_start ov12_02241290
ov12_02241290: ; 0x02241290
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r6, #0
	bl ov12_0223A7E0
	str r0, [sp, #4]
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov12_0223AB1C
	add r7, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov12_0223AB1C
	cmp r0, #0
	beq _022412E0
	ldr r0, [sp, #4]
	mov r1, #0x84
	tst r0, r1
	bne _022412E0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
	b _022413A4
_022412E0:
	ldr r0, [r5, #0x64]
	add r1, r5, r0
	ldr r0, _022413AC ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020726C0
	lsl r1, r7, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	beq _02241308
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
	b _022413A4
_02241308:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x79
	beq _02241320
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x79
	bne _0224132A
_02241320:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
	b _022413A4
_0224132A:
	ldr r2, [r5, #0x6c]
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r3, _022413B0 ; =0x00002DB8
	add r0, r5, r1
	ldrh r0, [r0, r3]
	cmp r0, #0x70
	bne _02241346
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
	b _022413A4
_02241346:
	add r3, #0x14
	add r3, r5, r3
	ldr r1, [r3, r1]
	lsl r3, r1, #3
	lsr r3, r3, #0x1f
	bne _02241358
	lsl r1, r1, #2
	lsr r1, r1, #0x1f
	beq _02241362
_02241358:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
	b _022413A4
_02241362:
	cmp r0, #0
	beq _0224137E
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r3, #0x3c
	bl ov12_02252834
	cmp r0, #1
	bne _0224137E
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02245508
	b _022413A4
_0224137E:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022413B0 ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _0224139C
	ldr r2, [r5, #0x6c]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02252700
	cmp r0, #0
	bne _022413A4
_0224139C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
_022413A4:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022413AC: .word 0x0000219C
_022413B0: .word 0x00002DB8
	thumb_func_end ov12_02241290

	thumb_func_start ov12_022413B4
ov12_022413B4: ; 0x022413B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	ldr r1, [r5, #0x64]
	str r0, [sp, #8]
	lsl r0, r1, #1
	add r2, r5, r0
	ldr r0, _022414D4 ; =0x0000305C
	ldrh r0, [r2, r0]
	cmp r0, #0xb6
	beq _022413F4
	cmp r0, #0xc5
	beq _022413F4
	cmp r0, #0xcb
	beq _022413F4
	ldr r0, _022414D8 ; =0x00002DC8
	add r3, r1, #0
	mov r2, #0xc0
	add r0, r5, r0
	mul r3, r2
	ldr r2, [r0, r3]
	ldr r1, _022414DC ; =0xFFFFE7FF
	and r1, r2
	str r1, [r0, r3]
_022413F4:
	ldr r0, _022414E0 ; =0x00003150
	ldr r0, [r5, r0]
	cmp r0, #1
	beq _02241402
	mov r0, #1
	str r0, [sp, #4]
	b _02241406
_02241402:
	mov r0, #0
	str r0, [sp, #4]
_02241406:
	ldr r6, [r5, #0x64]
	ldr r0, _022414D8 ; =0x00002DC8
	add r7, r6, #0
	add r4, r5, r0
	mov r0, #0xc0
	mul r7, r0
	ldr r0, [sp]
	bl ov12_0223BD98
	ldr r1, [r4, r7]
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1e
	lsl r2, r1, #1
	ldr r1, _022414E4 ; =0x0226C2F8
	ldrh r1, [r1, r2]
	cmp r1, r0
	blo _022414BE
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _022414BE
	ldr r0, _022414E8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022414EC ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x6f
	bne _02241456
	mov r2, #0x75
	lsl r2, r2, #2
	add r0, r5, r2
	lsl r4, r6, #6
	ldr r3, [r0, r4]
	mov r1, #4
	orr r1, r3
	str r1, [r0, r4]
	add r0, r5, #0
	sub r2, #0xba
	add r0, #0xf6
	strh r2, [r0]
_02241456:
	ldr r0, _022414E8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022414EC ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x74
	bne _02241482
	mov r2, #0x75
	ldr r1, [r5, #0x64]
	lsl r2, r2, #2
	lsl r4, r1, #6
	add r0, r5, r2
	add r1, r2, #0
	ldr r3, [r0, r4]
	add r1, #0x2c
	orr r1, r3
	str r1, [r0, r4]
	add r0, r5, #0
	sub r2, #0x1a
	add r0, #0xf6
	strh r2, [r0]
_02241482:
	add r0, r5, #0
	mov r1, #2
	add r0, #0xf5
	strb r1, [r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	ldr r2, [r5, #0x64]
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r0, _022414D8 ; =0x00002DC8
	add r0, r5, r0
	ldr r3, [r0, r1]
	lsl r2, r3, #0x13
	lsr r4, r2, #0x1e
	cmp r4, #3
	bhs _022414CE
	ldr r2, _022414DC ; =0xFFFFE7FF
	and r3, r2
	add r2, r4, #1
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x13
	orr r2, r3
	str r2, [r0, r1]
	b _022414CE
_022414BE:
	ldr r1, [r4, r7]
	ldr r0, _022414DC ; =0xFFFFE7FF
	and r0, r1
	str r0, [r4, r7]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02245508
_022414CE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022414D4: .word 0x0000305C
_022414D8: .word 0x00002DC8
_022414DC: .word 0xFFFFE7FF
_022414E0: .word 0x00003150
_022414E4: .word 0x0226C2F8
_022414E8: .word 0x00003044
_022414EC: .word 0x000003DE
	thumb_func_end ov12_022413B4

	thumb_func_start ov12_022414F0
ov12_022414F0: ; 0x022414F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0224155C ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov12_02253178
	ldr r1, [r5, #0x64]
	mov r2, #0xc0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	ldr r3, _02241560 ; =0x00002D8C
	ldr r1, [r1, r3]
	cmp r1, r0
	bgt _02241532
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
	b _02241556
_02241532:
	ldr r1, _02241564 ; =0x0000215C
	neg r4, r0
	str r4, [r5, r1]
	ldr r1, [r5, #0x64]
	add r4, r1, #0
	add r1, r3, #0
	mul r4, r2
	add r3, #0x24
	add r4, r5, r4
	add r1, #0x54
	str r0, [r4, r1]
	ldr r0, [r5, #0x64]
	add r3, r5, r3
	mul r2, r0
	ldr r1, [r3, r2]
	ldr r0, _02241568 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r3, r2]
_02241556:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224155C: .word 0x00002D90
_02241560: .word 0x00002D8C
_02241564: .word 0x0000215C
_02241568: .word 0xFFFF1FFF
	thumb_func_end ov12_022414F0

	thumb_func_start ov12_0224156C
ov12_0224156C: ; 0x0224156C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, [sp, #4]
	bl ov12_022454E8
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	bl ov12_0223A7E0
	add r4, r0, #0
	mov r0, #1
	tst r0, r4
	bne _02241594
	b _022416E6
_02241594:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r1, #0x6c]
	mov r7, #0
	bl ov12_0223A7F4
	ldr r1, [sp, #4]
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r1, [r1, #0x6c]
	bl ov12_0223A834
	add r6, r0, #0
	mov r0, #8
	tst r0, r4
	bne _022415C8
	mov r0, #0x10
	tst r0, r4
	beq _022415E0
	ldr r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [r1, #0x6c]
	bl ov12_0223AB1C
	cmp r0, #0
	beq _022415E0
_022415C8:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x6c]
	add r1, r0, r1
	ldr r0, _02241700 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	b _02241620
_022415E0:
	mov r0, #2
	str r0, [sp, #0x14]
	tst r0, r4
	beq _0224160A
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x6c]
	add r2, r0, r1
	ldr r0, _02241700 ; =0x0000219C
	ldrb r0, [r2, r0]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov12_0223AB6C
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r0, _02241700 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #8]
	b _02241620
_0224160A:
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x6c]
	add r1, r0, r1
	ldr r0, _02241700 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_02241620:
	ldr r5, [sp, #0x10]
	add r0, r5, #0
	cmp r0, r6
	bge _02241662
_02241628:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_02074644
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224165C
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _0224165C
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224165C
	add r7, r7, #1
_0224165C:
	add r5, r5, #1
	cmp r5, r6
	blt _02241628
_02241662:
	ldr r0, [sp, #0x14]
	cmp r7, r0
	bgt _02241672
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	bl ov12_02245508
	b _022416FA
_02241672:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov12_0225277C
	cmp r0, #0
	beq _022416DC
	mov r7, #5
_02241680:
	ldr r0, [sp]
	bl ov12_0223BD98
	add r1, r6, #0
	bl sub_020F2998
	ldr r0, [sp, #0x10]
	add r5, r1, #0
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	cmp r5, r0
	beq _02241680
	ldr r0, [sp, #8]
	cmp r5, r0
	beq _02241680
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_02074644
	add r1, r7, #0
	mov r2, #0
	add r4, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02241680
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #1
	beq _02241680
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02241680
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x6c]
	add r1, r0, r1
	ldr r0, _02241704 ; =0x000021A0
	strb r5, [r1, r0]
	b _022416FA
_022416DC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	bl ov12_02245508
	b _022416FA
_022416E6:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov12_0225277C
	cmp r0, #0
	bne _022416FA
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	bl ov12_02245508
_022416FA:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02241700: .word 0x0000219C
_02241704: .word 0x000021A0
	thumb_func_end ov12_0224156C

	thumb_func_start ov12_02241708
ov12_02241708: ; 0x02241708
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r5, [r4, #0x64]
	ldr r1, _022418D8 ; =0x00002DB0
	add r0, r5, #0
	mov r2, #0xc0
	mov r5, #2
	add r3, r4, r1
	mul r0, r2
	ldr r6, [r3, r0]
	lsl r5, r5, #0x14
	orr r5, r6
	str r5, [r3, r0]
	ldr r3, [r4, #0x64]
	mov r0, #0
	add r5, r3, #0
	mul r5, r2
	add r3, r1, #0
	add r5, r4, r5
	add r3, #0x38
	strh r0, [r5, r3]
	add r3, r1, #0
	add r3, #0x18
	ldr r6, [r4, #0x64]
	add r5, r4, r3
	add r3, r6, #0
	mul r3, r2
	ldr r7, [r5, r3]
	mov r6, #7
	bic r7, r6
	str r7, [r5, r3]
	ldr r3, [r4, #0x6c]
	add r5, r3, #0
	mul r5, r2
	add r3, r1, #0
	add r5, r4, r5
	sub r3, #8
	ldr r3, [r5, r3]
	ldr r5, [r4, #0x64]
	add r6, r5, #0
	mul r6, r2
	add r5, r1, #0
	add r6, r4, r6
	add r5, #0x34
	str r3, [r6, r5]
	ldr r3, [r4, #0x6c]
	add r5, r3, #0
	mul r5, r2
	add r3, r1, #0
	add r5, r4, r5
	add r3, #0xe
	ldrb r3, [r5, r3]
	ldr r5, [r4, #0x64]
	add r6, r5, #0
	lsl r3, r3, #0x1c
	mul r6, r2
	add r5, r1, #0
	lsr r3, r3, #0x1c
	add r6, r4, r6
	add r5, #0x4a
	strh r3, [r6, r5]
	add r3, r1, #0
	add r3, #0x1c
	ldr r6, [r4, #0x64]
	add r5, r4, r3
	add r3, r6, #0
	mul r3, r2
	ldr r7, [r5, r3]
	mov r6, #0x3c
	bic r7, r6
	str r7, [r5, r3]
	ldr r6, [r4, #0x64]
	sub r1, #0x70
	add r3, r6, #0
	mul r3, r2
	ldr r7, [r5, r3]
	ldr r6, _022418DC ; =0xFFFFE3FF
	and r6, r7
	str r6, [r5, r3]
	add r5, r4, r1
	ldr r1, [r4, #0x64]
	add r3, r1, #0
	mul r3, r2
	ldr r1, [r4, #0x6c]
	add r3, r5, r3
	mul r2, r1
	add r2, r5, r2
_022417BE:
	ldrb r1, [r2, r0]
	strb r1, [r3, r0]
	add r0, r0, #1
	cmp r0, #0x28
	blo _022417BE
	ldr r3, [r4, #0x64]
	ldr r1, _022418E0 ; =0x00002D68
	add r6, r3, #0
	mov r2, #0xc0
	add r0, r4, r1
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #1
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #2
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #4
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #8
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #0x10
	bic r5, r3
	str r5, [r0, r6]
	ldr r3, [r4, #0x64]
	add r6, r3, #0
	mul r6, r2
	ldr r5, [r0, r6]
	mov r3, #0x20
	bic r5, r3
	str r5, [r0, r6]
	ldr r5, [r4, #0x64]
	add r3, r5, #0
	mul r3, r2
	ldr r6, [r0, r3]
	ldr r5, _022418E4 ; =0xFFFFFEFF
	and r5, r6
	str r5, [r0, r3]
	ldr r5, [r4, #0x64]
	add r3, r5, #0
	mul r3, r2
	ldr r6, [r0, r3]
	ldr r5, _022418E8 ; =0xFFFFFDFF
	and r5, r6
	str r5, [r0, r3]
	ldr r5, [r4, #0x64]
	add r3, r5, #0
	mul r3, r2
	ldr r6, [r0, r3]
	ldr r5, _022418EC ; =0xFFFFFBFF
	and r5, r6
	str r5, [r0, r3]
	add r3, r1, #0
	add r3, #0x60
	add r6, r4, r3
	ldr r3, [r4, #0x64]
	add r1, #0x70
	add r5, r3, #0
	mul r5, r2
	ldr r7, [r6, r5]
	ldr r3, _022418F0 ; =0xBFFFFFFF
	and r3, r7
	add r7, r2, #0
	add r7, #0x90
	ldr r7, [r4, r7]
	lsl r7, r7, #0x1f
	lsr r7, r7, #1
	orr r3, r7
	str r3, [r6, r5]
	add r3, r2, #0
	add r3, #0x90
	ldr r3, [r4, r3]
	add r6, r3, #1
	ldr r3, [r4, #0x64]
	add r5, r3, #0
	mul r5, r2
	add r3, r4, r5
	str r6, [r3, r1]
	ldr r1, [r4, #0x64]
	add r5, r1, #0
	mul r5, r2
	ldr r3, [r0, r5]
	mov r1, #0x40
	bic r3, r1
	str r3, [r0, r5]
	ldr r1, [r4, #0x64]
	mov r6, #0
	add r3, r1, #0
	mul r3, r2
	ldr r2, [r0, r3]
	mov r1, #0x80
	bic r2, r1
	str r2, [r0, r3]
	mov r0, #0xf9
	add r5, r6, #0
	mov r1, #5
	lsl r0, r0, #2
_022418A6:
	ldr r3, [r4, #0x64]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	ldr r2, _022418F4 ; =0x00002D4C
	add r7, r3, r5
	ldrh r2, [r7, r2]
	lsl r2, r2, #4
	add r2, r4, r2
	ldrb r2, [r2, r0]
	cmp r2, #5
	bhs _022418C6
	add r7, r3, r6
	ldr r3, _022418F8 ; =0x00002D6C
	strb r2, [r7, r3]
	b _022418CC
_022418C6:
	ldr r2, _022418F8 ; =0x00002D6C
	add r3, r3, r6
	strb r1, [r3, r2]
_022418CC:
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #4
	blt _022418A6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022418D8: .word 0x00002DB0
_022418DC: .word 0xFFFFE3FF
_022418E0: .word 0x00002D68
_022418E4: .word 0xFFFFFEFF
_022418E8: .word 0xFFFFFDFF
_022418EC: .word 0xFFFFFBFF
_022418F0: .word 0xBFFFFFFF
_022418F4: .word 0x00002D4C
_022418F8: .word 0x00002D6C
	thumb_func_end ov12_02241708

	thumb_func_start ov12_022418FC
ov12_022418FC: ; 0x022418FC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB1C
	mov r2, #0x72
	mov r1, #1
	add r3, r0, #0
	eor r3, r1
	lsl r0, r3, #3
	add r5, r4, r0
	lsl r2, r2, #2
	ldr r5, [r5, r2]
	lsl r5, r5, #0x1e
	lsr r5, r5, #0x1e
	cmp r5, #3
	bne _02241952
	mov r0, #0xb5
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r3, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r3
	ldr r5, [r2, r0]
	mov r3, #1
	bic r5, r3
	orr r1, r5
	str r1, [r2, r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
	b _0224197A
_02241952:
	add r1, r2, #0
	sub r1, #0xc
	lsl r6, r3, #2
	add r1, r4, r1
	ldr r5, [r1, r6]
	mov r3, #4
	orr r3, r5
	str r3, [r1, r6]
	add r2, r4, r2
	ldr r4, [r2, r0]
	mov r3, #3
	add r1, r4, #0
	bic r1, r3
	lsl r3, r4, #0x1e
	lsr r3, r3, #0x1e
	add r4, r3, #1
	mov r3, #3
	and r3, r4
	orr r1, r3
	str r1, [r2, r0]
_0224197A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov12_022418FC

	thumb_func_start ov12_02241980
ov12_02241980: ; 0x02241980
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0224768C
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0223AB1C
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1e
	lsr r1, r0, #0x1e
	beq _022419EE
	mov r0, #0xc0
	mul r0, r4
	ldr r4, _022419FC ; =0x00002D8C
	add r0, r5, r0
	ldr r2, [r0, r4]
	cmp r2, #0
	beq _022419EE
	mov r2, #5
	sub r1, r2, r1
	ldr r3, _02241A00 ; =0x0000215C
	lsl r1, r1, #1
	str r1, [r5, r3]
	add r1, r4, #4
	ldr r1, [r0, r1]
	sub r0, r2, #6
	mul r0, r1
	ldr r1, [r5, r3]
	bl ov12_02253178
	ldr r1, _02241A00 ; =0x0000215C
	str r0, [r5, r1]
	b _022419F6
_022419EE:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
_022419F6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022419FC: .word 0x00002D8C
_02241A00: .word 0x0000215C
	thumb_func_end ov12_02241980

	thumb_func_start ov12_02241A04
ov12_02241A04: ; 0x02241A04
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, [sp]
	bl ov12_022454E8
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov12_0223A7F0
	mov r2, #0x4d
	mov r7, #0
	str r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp]
	lsl r2, r2, #2
	str r1, [r0, r2]
	ldr r0, [sp, #4]
	add r6, r7, #0
	cmp r0, #0
	ble _02241A94
	ldr r4, [sp]
	ldr r1, _02241AA8 ; =0x00002DC8
	add r0, r4, #0
	add r5, r0, r1
_02241A40:
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02241A66
	ldr r0, _02241AAC ; =0x00002D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02241A66
	ldr r0, [sp]
	add r2, r6, #0
	add r1, r0, #0
	ldr r1, [r1, #0x64]
	mov r3, #0x2b
	bl ov12_02252834
	cmp r0, #1
	bne _02241A6A
_02241A66:
	add r7, r7, #1
	b _02241A88
_02241A6A:
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x20
	orr r1, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	str r1, [r4, r0]
	ldr r1, [r5]
	ldr r0, _02241AB0 ; =0xFFFF9FFF
	and r1, r0
	mov r0, #6
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r5]
_02241A88:
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r4, #0xc0
	add r5, #0xc0
	cmp r6, r0
	blt _02241A40
_02241A94:
	ldr r0, [sp, #4]
	cmp r7, r0
	bne _02241AA2
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov12_02245508
_02241AA2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02241AA8: .word 0x00002DC8
_02241AAC: .word 0x00002D8C
_02241AB0: .word 0xFFFF9FFF
	thumb_func_end ov12_02241A04

	thumb_func_start ov12_02241AB4
ov12_02241AB4: ; 0x02241AB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245528
	ldr r1, _02241AE4 ; =0x00003104
	ldr r1, [r4, r1]
	add r2, r4, r1
	ldr r1, _02241AE8 ; =0x000021EC
	ldrb r1, [r2, r1]
	str r1, [r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02241AE4: .word 0x00003104
_02241AE8: .word 0x000021EC
	thumb_func_end ov12_02241AB4

	thumb_func_start ov12_02241AEC
ov12_02241AEC: ; 0x02241AEC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_02245528
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0223A7F0
	ldr r1, [r6]
	cmp r1, r0
	bhs _02241B2A
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_02245508
_02241B2A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_02241AEC

	thumb_func_start ov12_02241B30
ov12_02241B30: ; 0x02241B30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0224768C
	add r4, r0, #0
	mov r0, #0x4e
	mov r3, #0
	lsl r0, r0, #2
	str r3, [r5, r0]
	ldr r0, _02241DD8 ; =0x0000215C
	add r1, r4, #0
	str r3, [r5, r0]
	add r0, r5, #0
	mov r2, #0x1b
	bl ov12_0224EDE0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	add r7, r0, #0
	mov r0, #0xd
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _02241BA0
	mov r0, #0x4c
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	beq _02241BA2
_02241BA0:
	b _02241DD0
_02241BA2:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0xc
	tst r0, r1
	beq _02241C0C
	ldr r0, [sp, #4]
	cmp r0, #5
	beq _02241C0C
	cmp r7, #5
	beq _02241C0C
	cmp r0, #8
	beq _02241C0C
	cmp r7, #8
	beq _02241C0C
	cmp r0, #4
	beq _02241C0C
	cmp r7, #4
	beq _02241C0C
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r0, _02241DDC ; =0x00002D8C
	add r1, r5, r6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02241C0C
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #8
	beq _02241C0C
	mov r3, #0xb7
	add r1, r5, r6
	lsl r3, r3, #6
	ldr r2, [r1, r3]
	ldr r0, _02241DE0 ; =0x00040080
	tst r0, r2
	bne _02241C0C
	mov r0, #0xc9
	add r2, r0, #0
	add r2, #0x5b
	str r0, [r5, r2]
	sub r3, #0x30
	ldr r1, [r1, r3]
	sub r0, #0xca
	mul r0, r1
	mov r1, #0x10
	bl ov12_02253178
	ldr r1, _02241DD8 ; =0x0000215C
	str r0, [r5, r1]
_02241C0C:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _02241C74
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r0, _02241DDC ; =0x00002D8C
	add r2, r5, r6
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _02241C74
	add r0, #0x34
	ldr r1, [r2, r0]
	ldr r0, _02241DE0 ; =0x00040080
	tst r0, r1
	bne _02241C74
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x57
	beq _02241C4A
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x5e
	bne _02241C60
_02241C4A:
	ldr r0, _02241DE4 ; =0x00002D90
	add r1, r5, r6
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	mov r1, #8
	bl ov12_02253178
	ldr r1, _02241DD8 ; =0x0000215C
	str r0, [r5, r1]
_02241C60:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x5e
	bne _02241C74
	mov r0, #0x4e
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
_02241C74:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0xc0
	tst r1, r0
	beq _02241CF6
	ldr r1, _02241DDC ; =0x00002D8C
	add r6, r4, #0
	mul r6, r0
	add r0, r5, r1
	str r0, [sp, #8]
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _02241CF6
	add r0, r5, r6
	add r1, #0x34
	ldr r1, [r0, r1]
	ldr r0, _02241DE0 ; =0x00040080
	tst r0, r1
	bne _02241CF6
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x73
	bne _02241CC2
	ldr r0, _02241DE4 ; =0x00002D90
	add r1, r5, r6
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	ldr r1, [r1, r6]
	cmp r1, r0
	bhs _02241CF6
	mov r1, #0x10
	bl ov12_02253178
	ldr r1, _02241DD8 ; =0x0000215C
	str r0, [r5, r1]
	b _02241CF6
_02241CC2:
	ldr r0, [sp, #4]
	cmp r0, #0xf
	beq _02241CF6
	cmp r7, #0xf
	beq _02241CF6
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x51
	beq _02241CF6
	ldr r1, _02241DE8 ; =0x00000102
	add r0, r1, #0
	add r0, #0x22
	str r1, [r5, r0]
	ldr r0, _02241DE4 ; =0x00002D90
	add r1, r5, r6
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	mov r1, #0x10
	bl ov12_02253178
	ldr r1, _02241DD8 ; =0x0000215C
	str r0, [r5, r1]
_02241CF6:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	beq _02241DD0
	ldr r1, _02241DDC ; =0x00002D8C
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	add r7, r5, r1
	ldr r0, [r7, r6]
	cmp r0, #0
	beq _02241D38
	add r1, r1, #4
	add r1, r5, r1
	str r1, [sp, #0xc]
	ldr r1, [r1, r6]
	cmp r0, r1
	bhs _02241D38
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x2c
	bne _02241D38
	ldr r0, [sp, #0xc]
	mov r1, #0x10
	ldr r0, [r0, r6]
	bl ov12_02253178
	ldr r1, _02241DD8 ; =0x0000215C
	str r0, [r5, r1]
_02241D38:
	ldr r0, [r7, r6]
	cmp r0, #0
	beq _02241D64
	ldr r1, _02241DE4 ; =0x00002D90
	add r1, r5, r1
	str r1, [sp, #0x10]
	ldr r1, [r1, r6]
	cmp r0, r1
	bhs _02241D64
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x57
	bne _02241D64
	ldr r0, [sp, #0x10]
	mov r1, #8
	ldr r0, [r0, r6]
	bl ov12_02253178
	ldr r1, _02241DD8 ; =0x0000215C
	str r0, [r5, r1]
_02241D64:
	ldr r0, [r7, r6]
	cmp r0, #0
	beq _02241DD0
	ldr r0, _02241DEC ; =0x00002DAC
	add r7, r5, r0
	ldr r0, [r7, r6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _02241DD0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x5d
	bne _02241DD0
	ldr r0, [r7, r6]
	mov r1, #7
	tst r1, r0
	beq _02241D94
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02241DC8
_02241D94:
	ldr r1, _02241DF0 ; =0x00000F88
	tst r1, r0
	beq _02241DA4
	mov r0, #0x13
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02241DC8
_02241DA4:
	mov r1, #0x10
	tst r1, r0
	beq _02241DB4
	mov r0, #0x13
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _02241DC8
_02241DB4:
	mov r1, #0x40
	tst r0, r1
	beq _02241DC2
	mov r0, #3
	add r1, #0xf0
	str r0, [r5, r1]
	b _02241DC8
_02241DC2:
	mov r0, #4
	add r1, #0xf0
	str r0, [r5, r1]
_02241DC8:
	mov r0, #0x4e
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
_02241DD0:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02241DD8: .word 0x0000215C
_02241DDC: .word 0x00002D8C
_02241DE0: .word 0x00040080
_02241DE4: .word 0x00002D90
_02241DE8: .word 0x00000102
_02241DEC: .word 0x00002DAC
_02241DF0: .word 0x00000F88
	thumb_func_end ov12_02241B30

	thumb_func_start ov12_02241DF4
ov12_02241DF4: ; 0x02241DF4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r6, [r4, #0x64]
	mov r0, #0xb5
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x1c
	add r1, r6, #0
	mul r1, r0
	ldr r3, [r2, r1]
	ldr r0, _02241EF4 ; =0xFFFFFE3F
	mov r7, #0xc0
	and r0, r3
	add r3, r6, #0
	mul r3, r7
	add r6, r4, r3
	ldr r3, _02241EF8 ; =0x00002DC8
	ldr r6, [r6, r3]
	sub r3, #0x18
	lsl r6, r6, #0xe
	lsr r6, r6, #0x1d
	lsl r6, r6, #0x1d
	lsr r6, r6, #0x17
	orr r0, r6
	str r0, [r2, r1]
	ldr r2, [r4, #0x64]
	add r0, r2, #0
	mul r0, r7
	add r0, r4, r0
	ldr r1, [r0, r3]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	bne _02241E62
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02250C70
	ldr r0, _02241EF8 ; =0x00002DC8
	ldr r2, [r4, #0x64]
	add r1, r4, r0
	add r0, r7, #0
	mul r0, r2
	ldr r3, [r1, r0]
	ldr r2, _02241EFC ; =0xFFFC7FFF
	and r3, r2
	mov r2, #0xa
	lsl r2, r2, #0xe
	orr r2, r3
	str r2, [r1, r0]
_02241E62:
	ldr r1, [r4, #0x64]
	ldr r0, _02241EF8 ; =0x00002DC8
	mov r7, #0xc0
	add r3, r1, #0
	add r6, r4, r0
	mul r3, r7
	ldr r1, [r6, r3]
	ldr r2, _02241EFC ; =0xFFFC7FFF
	and r2, r1
	lsl r1, r1, #0xe
	lsr r1, r1, #0x1d
	sub r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xe
	orr r1, r2
	str r1, [r6, r3]
	ldr r2, [r4, #0x64]
	add r1, r2, #0
	mul r1, r7
	add r1, r4, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #0xe
	lsr r0, r0, #0x1d
	bne _02241E9A
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02250CA0
_02241E9A:
	ldr r0, _02241F00 ; =0x00003044
	mov r2, #1
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02241F04 ; =0x000003E1
	ldrb r1, [r1, r0]
	ldr r0, _02241F08 ; =0x00002154
	str r1, [r4, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02241EF8 ; =0x00002DC8
	ldr r0, [r1, r0]
	lsl r0, r0, #0xe
	lsr r1, r0, #0x1d
	mov r0, #5
	sub r3, r0, r1
	cmp r3, #1
	ble _02241ED2
	ldr r0, _02241F08 ; =0x00002154
_02241EC6:
	ldr r1, [r4, r0]
	add r2, r2, #1
	lsl r1, r1, #1
	str r1, [r4, r0]
	cmp r2, r3
	blt _02241EC6
_02241ED2:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02241F0C ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _02241EEE
	ldr r0, _02241F08 ; =0x00002154
	ldr r1, [r4, r0]
	lsl r1, r1, #1
	str r1, [r4, r0]
_02241EEE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241EF4: .word 0xFFFFFE3F
_02241EF8: .word 0x00002DC8
_02241EFC: .word 0xFFFC7FFF
_02241F00: .word 0x00003044
_02241F04: .word 0x000003E1
_02241F08: .word 0x00002154
_02241F0C: .word 0x00002DB0
	thumb_func_end ov12_02241DF4

	thumb_func_start ov12_02241F10
ov12_02241F10: ; 0x02241F10
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	add r1, r2, #0
	mul r1, r0
	ldr r0, _02241F8C ; =0x00002DC8
	add r0, r4, r0
	ldr r3, [r0, r1]
	lsl r2, r3, #0xb
	lsr r5, r2, #0x1d
	cmp r5, #5
	bhs _02241F40
	ldr r2, _02241F90 ; =0xFFE3FFFF
	and r3, r2
	add r2, r5, #1
	lsl r2, r2, #0x1d
	lsr r2, r2, #0xb
	orr r2, r3
	str r2, [r0, r1]
_02241F40:
	ldr r0, _02241F94 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02241F98 ; =0x000003E1
	ldrb r1, [r1, r0]
	ldr r0, _02241F9C ; =0x00002154
	str r1, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02241F8C ; =0x00002DC8
	mov r0, #1
	ldr r1, [r2, r1]
	lsl r1, r1, #0xb
	lsr r1, r1, #0x1d
	cmp r1, #1
	bls _02241F86
	ldr r3, _02241F9C ; =0x00002154
	ldr r2, _02241F8C ; =0x00002DC8
	mov r1, #0xc0
_02241F6C:
	ldr r5, [r4, r3]
	add r0, r0, #1
	lsl r5, r5, #1
	str r5, [r4, r3]
	ldr r5, [r4, #0x64]
	add r6, r5, #0
	mul r6, r1
	add r5, r4, r6
	ldr r5, [r5, r2]
	lsl r5, r5, #0xb
	lsr r5, r5, #0x1d
	cmp r0, r5
	blo _02241F6C
_02241F86:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02241F8C: .word 0x00002DC8
_02241F90: .word 0xFFE3FFFF
_02241F94: .word 0x00003044
_02241F98: .word 0x000003E1
_02241F9C: .word 0x00002154
	thumb_func_end ov12_02241F10

	thumb_func_start ov12_02241FA0
ov12_02241FA0: ; 0x02241FA0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r3, r0, #0
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r5, #0xc0
	add r1, r0, #0
	mul r1, r5
	ldr r6, _0224201C ; =0x00002DBE
	add r1, r4, r1
	ldrb r0, [r1, r6]
	lsl r0, r0, #0x1c
	lsr r2, r0, #0x1c
	add r0, r5, #0
	add r0, #0x58
	ldr r0, [r4, r0]
	mul r5, r0
	add r5, r4, r5
	ldrb r5, [r5, r6]
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x1c
	cmp r5, r2
	beq _02241FF2
	sub r6, #0xe
	ldr r6, [r1, r6]
	mov r1, #0xf
	lsl r1, r1, #0x10
	tst r1, r6
	bne _02241FF2
	cmp r5, #2
	beq _02241FF2
	cmp r2, #2
	bne _02241FFC
_02241FF2:
	add r0, r4, #0
	add r1, r3, #0
	bl ov12_02245508
	b _02242016
_02241FFC:
	bl sub_020726C0
	ldr r1, _02242020 ; =0x00002DB0
	mov r2, #0xc0
	add r1, r4, r1
	add r4, #0x94
	ldr r3, [r4]
	lsl r0, r0, #0x10
	add r4, r3, #0
	mul r4, r2
	ldr r2, [r1, r4]
	orr r0, r2
	str r0, [r1, r4]
_02242016:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224201C: .word 0x00002DBE
_02242020: .word 0x00002DB0
	thumb_func_end ov12_02241FA0

	thumb_func_start ov12_02242024
ov12_02242024: ; 0x02242024
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB1C
	mov r5, #0x6f
	add r2, r0, #0
	lsl r5, r5, #2
	add r1, r4, r5
	lsl r0, r2, #2
	ldr r6, [r1, r0]
	mov r3, #8
	tst r3, r6
	beq _02242068
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_02245508
	ldr r1, _022420AC ; =0x0000216C
	mov r0, #0x40
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	b _022420A8
_02242068:
	mov r3, #8
	orr r3, r6
	str r3, [r1, r0]
	add r5, #8
	lsl r0, r2, #3
	add r1, r4, r5
	ldr r3, [r1, r0]
	ldr r2, _022420B0 ; =0xFFF1FFFF
	and r3, r2
	mov r2, #0xa
	lsl r2, r2, #0x10
	orr r2, r3
	str r2, [r1, r0]
	ldr r3, [r1, r0]
	ldr r2, _022420B4 ; =0xFFFE7FFF
	and r3, r2
	ldr r2, [r4, #0x64]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0xf
	orr r2, r3
	str r2, [r1, r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r4, #0x64]
	add r0, #0xf8
	str r1, [r0]
	mov r0, #0xc6
	add r4, #0xf6
	strh r0, [r4]
_022420A8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022420AC: .word 0x0000216C
_022420B0: .word 0xFFF1FFFF
_022420B4: .word 0xFFFE7FFF
	thumb_func_end ov12_02242024

	thumb_func_start ov12_022420B8
ov12_022420B8: ; 0x022420B8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0223BD98
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x66
	bge _022420E4
	ldr r0, _02242120 ; =0x00002154
	mov r1, #0x28
	str r1, [r4, r0]
	b _0224211A
_022420E4:
	cmp r0, #0xb2
	bge _022420F0
	ldr r0, _02242120 ; =0x00002154
	mov r1, #0x50
	str r1, [r4, r0]
	b _0224211A
_022420F0:
	cmp r0, #0xcc
	bge _022420FC
	ldr r0, _02242120 ; =0x00002154
	mov r1, #0x78
	str r1, [r4, r0]
	b _0224211A
_022420FC:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02242124 ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov12_02253178
	ldr r1, _02242128 ; =0x0000215C
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_0224211A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02242120: .word 0x00002154
_02242124: .word 0x00002D90
_02242128: .word 0x0000215C
	thumb_func_end ov12_022420B8

	thumb_func_start ov12_0224212C
ov12_0224212C: ; 0x0224212C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, _022421CC ; =0x00003120
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022421BC
	add r0, r5, #0
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	ldr r0, _022421CC ; =0x00003120
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	cmp r1, #5
	bhs _02242164
	ldr r1, _022421D0 ; =0x00002154
	mov r2, #0xa
	str r2, [r4, r1]
	mov r1, #4
	strb r1, [r4, r0]
	b _022421BC
_02242164:
	cmp r1, #0xf
	bhs _02242174
	ldr r1, _022421D0 ; =0x00002154
	mov r2, #0x1e
	str r2, [r4, r1]
	mov r1, #5
	strb r1, [r4, r0]
	b _022421BC
_02242174:
	cmp r1, #0x23
	bhs _02242184
	ldr r1, _022421D0 ; =0x00002154
	mov r2, #0x32
	str r2, [r4, r1]
	mov r1, #6
	strb r1, [r4, r0]
	b _022421BC
_02242184:
	cmp r1, #0x41
	bhs _02242194
	ldr r1, _022421D0 ; =0x00002154
	mov r2, #0x46
	str r2, [r4, r1]
	mov r1, #7
	strb r1, [r4, r0]
	b _022421BC
_02242194:
	cmp r1, #0x55
	bhs _022421A4
	ldr r1, _022421D0 ; =0x00002154
	mov r2, #0x5a
	str r2, [r4, r1]
	mov r1, #8
	strb r1, [r4, r0]
	b _022421BC
_022421A4:
	cmp r1, #0x5f
	ldr r1, _022421D0 ; =0x00002154
	bhs _022421B4
	mov r2, #0x6e
	str r2, [r4, r1]
	mov r1, #9
	strb r1, [r4, r0]
	b _022421BC
_022421B4:
	mov r2, #0x96
	str r2, [r4, r1]
	mov r1, #0xa
	strb r1, [r4, r0]
_022421BC:
	ldr r0, _022421CC ; =0x00003120
	ldrb r1, [r4, r0]
	mov r0, #0x13
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022421CC: .word 0x00003120
_022421D0: .word 0x00002154
	thumb_func_end ov12_0224212C

	thumb_func_start ov12_022421D4
ov12_022421D4: ; 0x022421D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0224768C
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_02252890
	cmp r0, #0
	bne _0224221E
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02245508
	b _02242232
_0224221E:
	cmp r7, #1
	bne _02242232
	mov r0, #0x4f
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r4, #2
	ldr r1, [r3, r2]
	mov r0, #1
	orr r0, r1
	str r0, [r3, r2]
_02242232:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_022421D4

	thumb_func_start ov12_02242238
ov12_02242238: ; 0x02242238
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x64]
	bl ov12_0223AB1C
	ldr r1, [r4, #0x64]
	mov r6, #0xe
	ldr r5, _02242374 ; =0x00002DB0
	add r2, r1, #0
	mov r3, #0xc0
	mul r2, r3
	add r1, r4, r5
	ldr r7, [r1, r2]
	lsl r6, r6, #0xc
	tst r6, r7
	beq _02242294
	ldr r0, _02242378 ; =0xFFFF1FFF
	and r0, r7
	str r0, [r1, r2]
	ldr r0, [r4, #0x64]
	mov r2, #0x74
	add r1, r0, #0
	add r0, r5, #0
	mul r1, r3
	add r1, r4, r1
	add r0, #0x1c
	ldr r0, [r1, r0]
	add r5, #0x3a
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1e
	add r0, r3, #0
	add r0, #0x58
	str r1, [r4, r0]
	ldr r0, [r4, #0x64]
	add r1, r0, #0
	mul r1, r3
	add r0, r4, r1
	ldrh r0, [r0, r5]
	add r3, #0x64
	mov r1, #1
	str r0, [r4, r3]
	add r0, r4, #0
	bl ov12_02245520
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242294:
	add r5, #0x10
	add r5, r4, r5
	ldr r1, [r5, r2]
	mov r6, #4
	tst r6, r1
	beq _022422CA
	mov r0, #4
	bic r1, r0
	str r1, [r5, r2]
	ldr r0, [r4, #0x64]
	add r2, r0, #0
	mul r2, r3
	ldr r1, [r5, r2]
	mov r0, #3
	bic r1, r0
	str r1, [r5, r2]
	mov r1, #0x49
	add r0, r1, #0
	add r0, #0xdb
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x75
	bl ov12_02245520
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022422CA:
	mov r1, #0x72
	lsl r1, r1, #2
	add r6, r4, r1
	lsl r5, r0, #3
	ldr r2, [r6, r5]
	lsl r3, r2, #0x1e
	lsr r3, r3, #0x1e
	beq _02242306
	sub r1, #0xc
	lsl r3, r0, #2
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #4
	bic r2, r0
	str r2, [r1, r3]
	ldr r1, [r6, r5]
	mov r0, #3
	bic r1, r0
	str r1, [r6, r5]
	mov r1, #0xbf
	add r0, r1, #0
	add r0, #0x65
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x75
	bl ov12_02245520
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242306:
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1e
	beq _0224233A
	add r2, r1, #0
	sub r2, #0xc
	lsl r7, r0, #2
	add r3, r4, r2
	ldr r2, [r3, r7]
	ldr r0, _0224237C ; =0xFFFFFBFF
	and r0, r2
	str r0, [r3, r7]
	ldr r2, [r6, r5]
	mov r0, #0xc
	bic r2, r0
	add r0, r1, #0
	str r2, [r6, r5]
	sub r0, #0x42
	sub r1, #0xa4
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x75
	bl ov12_02245520
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224233A:
	add r2, r1, #0
	sub r2, #0xc
	add r2, r4, r2
	lsl r0, r0, #2
	ldr r6, [r2, r0]
	mov r5, #0x80
	add r3, r6, #0
	tst r3, r5
	beq _02242366
	mov r3, #0x80
	bic r6, r3
	str r6, [r2, r0]
	sub r1, #0xa
	add r5, #0xa4
	str r1, [r4, r5]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x75
	bl ov12_02245520
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02242366:
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242374: .word 0x00002DB0
_02242378: .word 0xFFFF1FFF
_0224237C: .word 0xFFFFFBFF
	thumb_func_end ov12_02242238

	thumb_func_start ov12_02242380
ov12_02242380: ; 0x02242380
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	ldr r0, _02242418 ; =0x000080FF
	tst r0, r1
	beq _022423C2
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _022423C2
	mov r0, #0x4c
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	beq _022423D6
_022423C2:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224241C ; =0x00002D90
	ldr r0, [r1, r0]
	lsr r1, r0, #1
	ldr r0, _02242420 ; =0x0000215C
	str r1, [r4, r0]
	b _02242412
_022423D6:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x30
	tst r0, r1
	ldr r1, [r4, #0x64]
	beq _022423FE
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224241C ; =0x00002D90
	ldr r1, [r1, r0]
	mov r0, #0x14
	mul r0, r1
	mov r1, #0x1e
	bl ov12_02253178
	ldr r1, _02242420 ; =0x0000215C
	str r0, [r4, r1]
	b _02242412
_022423FE:
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224241C ; =0x00002D90
	ldr r0, [r1, r0]
	mov r1, #4
	bl ov12_02253178
	ldr r1, _02242420 ; =0x0000215C
	str r0, [r4, r1]
_02242412:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02242418: .word 0x000080FF
_0224241C: .word 0x00002D90
_02242420: .word 0x0000215C
	thumb_func_end ov12_02242380

	thumb_func_start ov12_02242424
ov12_02242424: ; 0x02242424
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, _02242504 ; =0x00002D54
	ldr r1, [r4, #0x64]
	add r3, r4, r0
	mov r0, #0xc0
	mul r0, r1
	ldr r1, [r3, r0]
	mov r5, #2
	lsl r0, r1, #2
	lsr r0, r0, #0x1b
	and r0, r5
	lsl r2, r0, #4
	lsl r0, r1, #7
	lsr r0, r0, #0x1b
	and r0, r5
	lsl r7, r0, #3
	lsl r0, r1, #0xc
	lsr r0, r0, #0x1b
	and r0, r5
	lsl r0, r0, #2
	mov ip, r0
	lsl r0, r1, #0x11
	lsr r0, r0, #0x1b
	and r0, r5
	lsl r6, r0, #1
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x1b
	lsl r1, r1, #0x16
	and r0, r5
	lsr r1, r1, #0x1b
	lsr r0, r0, #1
	and r1, r5
	orr r0, r1
	add r1, r6, #0
	orr r1, r0
	mov r0, ip
	orr r0, r1
	orr r0, r7
	add r1, r2, #0
	orr r1, r0
	ldr r0, _02242508 ; =0x00002154
	str r1, [r4, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r5, [r3, r0]
	lsl r0, r5, #2
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r6, r0, #0x1a
	lsl r0, r5, #7
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r3, r0, #0x1b
	lsl r0, r5, #0xc
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1c
	lsl r0, r5, #0x11
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r7, r0, #0x1d
	lsl r0, r5, #0x1b
	lsr r1, r0, #0x1b
	mov r0, #1
	and r0, r1
	lsl r1, r5, #0x16
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1e
	orr r0, r1
	orr r0, r7
	orr r0, r2
	orr r0, r3
	add r1, r6, #0
	orr r1, r0
	ldr r0, _02242508 ; =0x00002154
	add r0, #0xc
	str r1, [r4, r0]
	ldr r0, _02242508 ; =0x00002154
	ldr r1, [r4, r0]
	mov r0, #0x28
	mul r0, r1
	mov r1, #0x3f
	bl sub_020F2998
	ldr r1, _02242508 ; =0x00002154
	add r0, #0x1e
	str r0, [r4, r1]
	add r1, #0xc
	ldr r1, [r4, r1]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	bl sub_020F2998
	add r1, r0, #1
	ldr r0, _0224250C ; =0x00002160
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #9
	blt _022424FE
	add r1, r1, #1
	str r1, [r4, r0]
_022424FE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242504: .word 0x00002D54
_02242508: .word 0x00002154
_0224250C: .word 0x00002160
	thumb_func_end ov12_02242424

	thumb_func_start ov12_02242510
ov12_02242510: ; 0x02242510
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r2, _02242568 ; =0x00002D58
	mov r1, #0
	mov r3, #0xc0
	add r5, r2, #0
_02242524:
	ldr r6, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r6
	ldr r6, [r4, #0x64]
	add r0, r4, r0
	add r0, r1, r0
	add r7, r6, #0
	mul r7, r3
	add r6, r4, r7
	add r6, r1, r6
	ldrsb r0, [r0, r2]
	add r1, r1, #1
	cmp r1, #8
	strb r0, [r6, r5]
	blt _02242524
	ldr r0, [r4, #0x64]
	ldr r6, [r4, #0x6c]
	mov r3, #0xc0
	add r1, r0, #0
	ldr r5, _0224256C ; =0x00002DB0
	mul r1, r3
	mul r3, r6
	add r2, r4, r5
	add r3, r4, r3
	ldr r4, [r3, r5]
	mov r3, #1
	lsl r3, r3, #0x14
	ldr r0, [r2, r1]
	and r3, r4
	orr r0, r3
	str r0, [r2, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242568: .word 0x00002D58
_0224256C: .word 0x00002DB0
	thumb_func_end ov12_02242510

	thumb_func_start ov12_02242570
ov12_02242570: ; 0x02242570
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	ldr r1, [r4, #0x6c]
	add r2, r0, #0
	mov r0, #0x62
	add r3, r4, r1
	lsl r0, r0, #2
	ldrb r0, [r3, r0]
	cmp r0, #0
	bne _02242648
	add r0, r7, #0
	bl ov12_0223AB1C
	mov r1, #0x6f
	lsl r1, r1, #2
	lsl r3, r0, #2
	add r5, r4, r1
	ldr r2, [r5, r3]
	mov r0, #0x10
	orr r0, r2
	str r0, [r5, r3]
	ldr r0, [r4, #0x6c]
	add r2, r1, #0
	add r6, r4, r0
	sub r2, #0x34
	mov r0, #3
	strb r0, [r6, r2]
	ldr r0, _02242658 ; =0x00003044
	ldr r6, [r4, r0]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #1
	add r2, r4, r0
	add r0, r1, #0
	sub r0, #0x2c
	strh r6, [r2, r0]
	ldr r2, [r4, #0x6c]
	ldr r0, [r4, #0x64]
	lsl r2, r2, #2
	add r2, r4, r2
	sub r1, #0x24
	str r0, [r2, r1]
	mov r0, #3
	lsl r0, r0, #7
	ldr r0, [r4, r0]
	ldr r2, _02242658 ; =0x00003044
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x64]
	add r1, r4, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r2, [r4, r2]
	ldr r3, [r5, r3]
	add r0, r7, #0
	bl ov12_02256FF8
	mov r1, #0
	add r2, r0, #0
	mvn r1, r1
	mul r2, r1
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02257C30
	ldr r1, [r4, #0x6c]
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0x64]
	lsl r0, r0, #6
	add r2, r4, r0
	add r0, r1, #0
	add r0, #0x2c
	ldr r0, [r2, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02242650
	ldr r0, [r4, #0x6c]
	add r5, r4, r1
	lsl r4, r0, #2
	ldr r1, [r5, r4]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2998
	str r0, [r5, r4]
	b _02242650
_02242648:
	add r0, r4, #0
	add r1, r2, #0
	bl ov12_02245508
_02242650:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242658: .word 0x00003044
	thumb_func_end ov12_02242570

	thumb_func_start ov12_0224265C
ov12_0224265C: ; 0x0224265C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_0224768C
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov12_022480F0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl ov12_02248714
	ldr r0, _022426D4 ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _022426D8 ; =0x001FD849
	tst r0, r1
	beq _022426CC
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov12_02245508
_022426CC:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022426D4: .word 0x0000216C
_022426D8: .word 0x001FD849
	thumb_func_end ov12_0224265C

	thumb_func_start ov12_022426DC
ov12_022426DC: ; 0x022426DC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov12_02252980
	cmp r0, #0
	beq _0224270A
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_0224270A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov12_022426DC

	thumb_func_start ov12_02242710
ov12_02242710: ; 0x02242710
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r5, #0x64]
	add r0, r7, #0
	bl ov12_0223A834
	ldr r1, _02242948 ; =0x0000217D
	str r0, [sp]
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _022427A4
	mov r0, #2
	strb r0, [r5, r1]
	add r0, r1, #0
	mov r2, #0xfd
	add r0, #0xb
	str r2, [r5, r0]
	mov r2, #0
	add r0, r1, #2
	strb r2, [r5, r0]
	add r6, r1, #2
_02242746:
	ldr r2, _0224294C ; =0x0000217F
	ldr r1, [r5, #0x64]
	ldrb r2, [r5, r2]
	add r0, r7, #0
	bl ov12_0223A880
	ldr r1, _0224294C ; =0x0000217F
	add r4, r0, #0
	ldrb r3, [r5, r1]
	ldr r1, [r5, #0x64]
	add r2, r5, r1
	ldr r1, _02242950 ; =0x0000219C
	ldrb r1, [r2, r1]
	cmp r3, r1
	beq _022427A4
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224279C
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224279C
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _02242954 ; =0x000001EE
	cmp r0, r1
	beq _0224279C
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _022427A4
_0224279C:
	ldrb r0, [r5, r6]
	add r0, r0, #1
	strb r0, [r5, r6]
	b _02242746
_022427A4:
	ldr r2, _0224294C ; =0x0000217F
	ldr r1, [r5, #0x64]
	ldrb r2, [r5, r2]
	add r0, r7, #0
	bl ov12_0223A880
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_0206E540
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_0206E540
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0206E540
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r6, #0
	mov r2, #1
	bl sub_0206FBC4
	ldr r1, _02242958 ; =0x00002144
	ldr r2, _0224295C ; =0x00003044
	str r0, [r5, r1]
	ldr r2, [r5, r2]
	ldr r0, [r5, r1]
	lsl r2, r2, #4
	add r3, r5, r2
	ldr r2, _02242960 ; =0x000003E1
	ldrb r2, [r3, r2]
	mul r2, r0
	str r2, [r5, r1]
	lsl r0, r4, #1
	mov r1, #5
	bl sub_020F2998
	ldr r1, _02242958 ; =0x00002144
	add r0, r0, #2
	ldr r2, [r5, r1]
	mul r0, r2
	str r0, [r5, r1]
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	mov r1, #0xb5
	add r2, r5, r0
	lsl r1, r1, #6
	ldrh r0, [r2, r1]
	add r1, #0x26
	ldrb r1, [r2, r1]
	mov r2, #2
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	bl sub_0206FBC4
	add r1, r0, #0
	ldr r0, _02242958 ; =0x00002144
	ldr r0, [r5, r0]
	bl sub_020F2BA4
	ldr r1, _02242958 ; =0x00002144
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0x32
	bl sub_020F2998
	ldr r1, _02242958 ; =0x00002144
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	add r0, r0, #2
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	ldr r2, [r5, r1]
	ldr r0, [r5, r0]
	mul r0, r2
	str r0, [r5, r1]
	ldr r0, [r5, #0x64]
	lsl r0, r0, #6
	add r2, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02242870
	ldr r1, [r5, r1]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2998
	ldr r1, _02242958 ; =0x00002144
	str r0, [r5, r1]
_02242870:
	ldr r2, _02242958 ; =0x00002144
	add r0, r7, #0
	ldr r2, [r5, r2]
	add r1, r5, #0
	bl ov12_02257C30
	ldr r1, _02242958 ; =0x00002144
	str r0, [r5, r1]
	mov r0, #0
	ldr r2, [r5, r1]
	mvn r0, r0
	mul r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	add r3, r1, #0
	ldr r2, _02242964 ; =0x000001E1
	add r0, #0xf6
	strh r2, [r0]
	add r0, r5, #0
	mov r2, #2
	add r0, #0xf5
	strb r2, [r0]
	add r3, #0x3b
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0x64]
	add r6, r1, #0
	lsl r3, r3, #8
	orr r3, r0
	add r0, r5, #0
	add r0, #0xf8
	str r3, [r0]
	add r0, r1, #0
	add r0, #0x3b
	ldrb r0, [r5, r0]
	add r6, #0x3b
	add r3, r0, #1
	add r0, r1, #0
	add r0, #0x3b
	strb r3, [r5, r0]
	add r0, r1, #0
	add r0, #0x38
	strb r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x3b
	ldrb r2, [r5, r0]
	ldr r0, [sp]
	cmp r2, r0
	bge _0224293A
_022428D0:
	ldr r1, [r5, #0x64]
	add r0, r7, #0
	bl ov12_0223A880
	ldr r1, _0224294C ; =0x0000217F
	add r4, r0, #0
	ldrb r3, [r5, r1]
	ldr r1, [r5, #0x64]
	add r2, r5, r1
	ldr r1, _02242950 ; =0x0000219C
	ldrb r1, [r2, r1]
	cmp r3, r1
	beq _02242940
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02242922
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02242922
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _02242954 ; =0x000001EE
	cmp r0, r1
	beq _02242922
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02242940
_02242922:
	ldrb r0, [r5, r6]
	add r0, r0, #1
	strb r0, [r5, r6]
	ldr r0, _0224294C ; =0x0000217F
	ldrb r2, [r5, r0]
	ldr r0, [sp]
	cmp r2, r0
	blt _022428D0
	ldr r0, _02242968 ; =0x0000217C
	mov r1, #1
	strb r1, [r5, r0]
	b _02242940
_0224293A:
	mov r0, #1
	add r1, #0x38
	strb r0, [r5, r1]
_02242940:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242948: .word 0x0000217D
_0224294C: .word 0x0000217F
_02242950: .word 0x0000219C
_02242954: .word 0x000001EE
_02242958: .word 0x00002144
_0224295C: .word 0x00003044
_02242960: .word 0x000003E1
_02242964: .word 0x000001E1
_02242968: .word 0x0000217C
	thumb_func_end ov12_02242710

	thumb_func_start ov12_0224296C
ov12_0224296C: ; 0x0224296C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB1C
	mov r1, #0x71
	lsl r1, r1, #2
	mov r2, #1
	add r1, r4, r1
	lsl r0, r0, #3
	ldr r3, [r1, r0]
	lsl r2, r2, #0x14
	orr r2, r3
	str r2, [r1, r0]
	ldr r3, [r1, r0]
	ldr r2, _022429A8 ; =0xFF9FFFFF
	and r3, r2
	ldr r2, [r4, #0x64]
	lsl r2, r2, #0x1e
	lsr r2, r2, #9
	orr r2, r3
	str r2, [r1, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022429A8: .word 0xFF9FFFFF
	thumb_func_end ov12_0224296C

	thumb_func_start ov12_022429AC
ov12_022429AC: ; 0x022429AC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _02242A36
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x10
	bl ov12_0224768C
	add r4, r0, #0
	bl sub_020726C0
	ldr r1, _02242A44 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _02242A2C
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _02242A48 ; =0x000021A8
	ldr r0, [r1, r0]
	cmp r0, #0x28
	beq _02242A2C
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02242A4C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02242A2C
	ldr r0, [r5, #0x64]
	mov r2, #0x75
	lsl r0, r0, #6
	add r0, r5, r0
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _02242A2C
	add r1, r5, r2
	lsl r0, r4, #6
	ldr r3, [r1, r0]
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1f
	bne _02242A2C
	sub r2, #0xbc
	str r4, [r5, r2]
	ldr r3, [r1, r0]
	mov r2, #8
	orr r2, r3
	str r2, [r1, r0]
	b _02242A3E
_02242A2C:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02245508
	b _02242A3E
_02242A36:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02245508
_02242A3E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02242A44: .word 0x00003108
_02242A48: .word 0x000021A8
_02242A4C: .word 0x00002D8C
	thumb_func_end ov12_022429AC

	thumb_func_start ov12_02242A50
ov12_02242A50: ; 0x02242A50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov12_0223A7E0
	str r0, [sp, #8]
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB1C
	str r0, [sp]
	ldr r1, [r4, #0x6c]
	add r0, r5, #0
	bl ov12_0223AB1C
	add r7, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB1C
	cmp r0, #0
	beq _02242AAA
	ldr r0, [sp, #8]
	mov r1, #0x84
	tst r0, r1
	bne _02242AAA
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
	b _02242B48
_02242AAA:
	ldr r0, [r4, #0x64]
	add r1, r4, r0
	ldr r0, _02242B50 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020726C0
	ldr r1, [sp]
	lsl r1, r1, #3
	add r2, r4, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	bne _02242AE8
	ldr r0, [r4, #0x6c]
	add r1, r4, r0
	ldr r0, _02242B50 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020726C0
	lsl r1, r7, #3
	add r2, r4, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	beq _02242AF2
_02242AE8:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
	b _02242B48
_02242AF2:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	add r3, r4, r2
	ldr r2, _02242B54 ; =0x00002DB8
	ldrh r3, [r3, r2]
	cmp r3, #0
	bne _02242B10
	ldr r3, [r4, #0x6c]
	mul r0, r3
	add r0, r4, r0
	ldrh r0, [r0, r2]
	cmp r0, #0
	beq _02242B26
_02242B10:
	add r0, r4, #0
	bl ov12_0225275C
	cmp r0, #0
	beq _02242B26
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov12_0225275C
	cmp r0, #0
	bne _02242B30
_02242B26:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
	b _02242B48
_02242B30:
	ldr r1, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	add r0, r4, #0
	mov r3, #0x3c
	bl ov12_02252834
	cmp r0, #1
	bne _02242B48
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov12_02245508
_02242B48:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02242B50: .word 0x0000219C
_02242B54: .word 0x00002DB8
	thumb_func_end ov12_02242A50

	thumb_func_start ov12_02242B58
ov12_02242B58: ; 0x02242B58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	mov r2, #0x63
	lsl r2, r2, #2
	ldr r3, [r4, #0x64]
	add r5, r4, r2
	add r1, r0, #0
	ldrb r0, [r5, r3]
	cmp r0, #0
	beq _02242B82
	add r0, r4, #0
	bl ov12_02245508
	b _02242B92
_02242B82:
	mov r0, #2
	strb r0, [r5, r3]
	ldr r0, [r4, #0x64]
	add r2, #0x2c
	add r1, r4, r0
	ldr r0, _02242B98 ; =0x0000219C
	ldrb r0, [r1, r0]
	strb r0, [r1, r2]
_02242B92:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02242B98: .word 0x0000219C
	thumb_func_end ov12_02242B58

	thumb_func_start ov12_02242B9C
ov12_02242B9C: ; 0x02242B9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, [sp, #4]
	bl ov12_022454E8
	ldr r1, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [r1, #0x64]
	mov r7, #0
	bl ov12_0223A834
	str r0, [sp, #0xc]
	add r0, r7, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _02242C4A
	add r5, sp, #0x18
_02242BCE:
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x64]
	add r2, r0, r1
	ldr r0, _02242C78 ; =0x0000219C
	ldrb r2, [r2, r0]
	ldr r0, [sp, #0x10]
	cmp r0, r2
	beq _02242C3E
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	bl ov12_0223A880
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #8]
	bl sub_0206E540
	cmp r0, #0
	beq _02242C3E
	ldr r0, [sp, #8]
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _02242C7C ; =0x000001EE
	cmp r0, r1
	beq _02242C3E
	mov r4, #0
_02242C06:
	add r1, r4, #0
	ldr r0, [sp, #8]
	add r1, #0x36
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	bl ov12_02252698
	cmp r0, #0
	bne _02242C38
	ldr r1, [sp, #4]
	ldr r0, [sp]
	add r2, r1, #0
	ldr r2, [r2, #0x64]
	add r3, r6, #0
	bl ov12_02257DA4
	cmp r0, #1
	bne _02242C38
	strh r6, [r5]
	add r5, r5, #2
	add r7, r7, #1
_02242C38:
	add r4, r4, #1
	cmp r4, #4
	blt _02242C06
_02242C3E:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02242BCE
_02242C4A:
	cmp r7, #0
	beq _02242C6A
	ldr r0, [sp]
	bl ov12_0223BD98
	add r1, r7, #0
	bl sub_020F2998
	lsl r1, r1, #1
	add r0, sp, #0x18
	ldrh r2, [r0, r1]
	mov r1, #0x49
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	str r2, [r0, r1]
	b _02242C72
_02242C6A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	bl ov12_02245508
_02242C72:
	mov r0, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02242C78: .word 0x0000219C
_02242C7C: .word 0x000001EE
	thumb_func_end ov12_02242B9C

	thumb_func_start ov12_02242C80
ov12_02242C80: ; 0x02242C80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	mov r4, #0
	bl ov12_0223A7F0
	cmp r0, #0
	ble _02242CAE
_02242CA2:
	add r0, r5, #0
	add r4, r4, #1
	bl ov12_0223A7F0
	cmp r4, r0
	blt _02242CA2
_02242CAE:
	ldr r0, _02242CD8 ; =0x00003150
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _02242CC0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_02245508
	b _02242CD2
_02242CC0:
	mov r0, #0x75
	lsl r0, r0, #2
	add r3, r6, r0
	ldr r0, [r6, #0x64]
	lsl r2, r0, #6
	ldr r1, [r3, r2]
	mov r0, #0x10
	orr r0, r1
	str r0, [r3, r2]
_02242CD2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242CD8: .word 0x00003150
	thumb_func_end ov12_02242C80

	thumb_func_start ov12_02242CDC
ov12_02242CDC: ; 0x02242CDC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov12_0223AB1C
	add r1, r5, #0
	ldr r4, [r5, #0x64]
	add r1, #0x84
	str r4, [r1]
	ldr r1, [r5, #0x6c]
	lsl r0, r0, #3
	str r1, [r5, #0x64]
	mov r1, #0x71
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02242D26
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _02242D84 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02242D26
	str r0, [r5, #0x6c]
	b _02242D72
_02242D26:
	ldr r0, _02242D88 ; =0x00003044
	ldr r3, [r5, r0]
	lsl r0, r3, #4
	add r1, r5, r0
	ldr r0, _02242D8C ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #4
	beq _02242D3A
	cmp r0, #8
	bne _02242D3E
_02242D3A:
	str r4, [r5, #0x6c]
	b _02242D72
_02242D3E:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r3, r3, #0x10
	ldr r2, [r5, #0x64]
	add r0, r6, #0
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl ov12_022506D4
	mov r1, #0xb5
	lsl r1, r1, #2
	add r2, r5, r1
	mov r1, #0x1c
	mul r1, r0
	ldr r1, [r2, r1]
	lsl r2, r1, #0x1e
	lsr r2, r2, #0x1f
	bne _02242D6C
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	beq _02242D70
_02242D6C:
	str r0, [r5, #0x6c]
	b _02242D72
_02242D70:
	str r4, [r5, #0x6c]
_02242D72:
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #8
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02242D84: .word 0x00002D8C
_02242D88: .word 0x00003044
_02242D8C: .word 0x000003E6
	thumb_func_end ov12_02242CDC

	thumb_func_start ov12_02242D90
ov12_02242D90: ; 0x02242D90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r5, #0x64]
	ldr r0, [r5, #0x6c]
	lsl r4, r1, #6
	add r2, r5, r4
	lsl r1, r0, #2
	add r2, r2, r1
	mov r1, #0x76
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02242DC2
	bl sub_020726C0
	mov r1, #0x7b
	add r2, r5, r4
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	tst r0, r1
	bne _02242DE8
_02242DC2:
	ldr r0, [r5, #0x6c]
	add r2, r5, r4
	lsl r1, r0, #2
	add r2, r2, r1
	mov r1, #0x1f
	lsl r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02242DF0
	bl sub_020726C0
	ldr r1, [r5, #0x64]
	lsl r1, r1, #6
	add r2, r5, r1
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	tst r0, r1
	beq _02242DF0
_02242DE8:
	ldr r0, _02242DFC ; =0x00002158
	mov r1, #0x14
	str r1, [r5, r0]
	b _02242DF6
_02242DF0:
	ldr r0, _02242DFC ; =0x00002158
	mov r1, #0xa
	str r1, [r5, r0]
_02242DF6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02242DFC: .word 0x00002158
	thumb_func_end ov12_02242D90

	thumb_func_start ov12_02242E00
ov12_02242E00: ; 0x02242E00
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r1, [r4, #0x6c]
	add r0, r5, #0
	bl ov12_0223AB1C
	lsl r1, r0, #2
	add r2, r4, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r2, [r2, r1]
	mov r1, #1
	tst r1, r2
	bne _02242E34
	mov r1, #2
	tst r1, r2
	beq _02242E64
_02242E34:
	mov r5, #0x6f
	lsl r5, r5, #2
	add r2, r4, r5
	lsl r1, r0, #2
	ldr r6, [r2, r1]
	mov r3, #1
	bic r6, r3
	str r6, [r2, r1]
	ldr r6, [r2, r1]
	mov r3, #2
	bic r6, r3
	add r5, #8
	str r6, [r2, r1]
	lsl r2, r0, #3
	add r3, r4, r5
	ldr r1, [r3, r2]
	mov r0, #0x1c
	bic r1, r0
	str r1, [r3, r2]
	ldr r1, [r3, r2]
	ldr r0, _02242E70 ; =0xFFFFFC7F
	and r0, r1
	str r0, [r3, r2]
	b _02242E6C
_02242E64:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02242E6C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02242E70: .word 0xFFFFFC7F
	thumb_func_end ov12_02242E00

	thumb_func_start ov12_02242E74
ov12_02242E74: ; 0x02242E74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r1, r0, #0
	mov r0, #0xb7
	lsl r0, r0, #6
	add r3, r4, r0
	ldr r0, [r4, #0x6c]
	mov r5, #0xc0
	add r2, r0, #0
	mul r2, r5
	ldr r0, [r3, r2]
	lsl r5, r5, #5
	tst r5, r0
	beq _02242EA6
	add r0, r4, #0
	bl ov12_02245508
	b _02242EAE
_02242EA6:
	mov r1, #1
	lsl r1, r1, #0xc
	orr r0, r1
	str r0, [r3, r2]
_02242EAE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_02242E74

	thumb_func_start ov12_02242EB4
ov12_02242EB4: ; 0x02242EB4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r1, [r5, #0x6c]
	add r0, r4, #0
	bl ov12_0223AB1C
	add r4, r0, #0
	ldr r2, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r1, r5, r0
	ldr r0, _02242FC0 ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02242F2E
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r3, #0x3c
	bl ov12_02252834
	cmp r0, #1
	bne _02242F2E
	add r0, r5, #0
	ldr r1, _02242FC4 ; =0x000002CA
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x25
	add r0, #0xf5
	strb r1, [r0]
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02242FC8 ; =0x00002D67
	add r2, r5, r2
	ldrb r2, [r2, r0]
	add r0, r5, #0
	add r0, #0xfc
	str r2, [r0]
	ldr r0, _02242FCC ; =0x00003044
	add r1, #0x40
	ldr r0, [r5, r0]
	str r0, [r5, r1]
	b _02242FBC
_02242F2E:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02242FC0 ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02242FB4
	mov r1, #0x8a
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0xf6
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0x21
	add r0, #0xf5
	strb r1, [r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	ldr r1, [r5, #0x6c]
	add r0, r5, #0
	bl ov12_022522E0
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r5, r2
	ldr r2, _02242FC0 ; =0x00002DB8
	ldrh r3, [r0, r2]
	add r0, r1, #0
	add r0, #0x40
	str r3, [r5, r0]
	ldr r3, [r5, #0x6c]
	mov r0, #0
	mul r1, r3
	add r1, r5, r1
	strh r0, [r1, r2]
	ldr r0, [r5, #0x6c]
	add r1, r5, r0
	ldr r0, _02242FD0 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020726C0
	mov r1, #0x71
	lsl r1, r1, #2
	add r3, r5, r1
	lsl r2, r4, #3
	ldr r4, [r3, r2]
	ldr r1, _02242FD4 ; =0xE07FFFFF
	and r1, r4
	lsl r4, r4, #3
	lsr r4, r4, #0x1a
	orr r0, r4
	lsl r0, r0, #0x1a
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r3, r2]
	b _02242FBC
_02242FB4:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02245508
_02242FBC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02242FC0: .word 0x00002DB8
_02242FC4: .word 0x000002CA
_02242FC8: .word 0x00002D67
_02242FCC: .word 0x00003044
_02242FD0: .word 0x0000219C
_02242FD4: .word 0xE07FFFFF
	thumb_func_end ov12_02242EB4

	thumb_func_start ov12_02242FD8
ov12_02242FD8: ; 0x02242FD8
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, _02243020 ; =0x00002154
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0224301C
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _02243024 ; =0x00003044
	ldr r1, [r4, r1]
	lsl r1, r1, #4
	add r2, r4, r1
	ldr r1, _02243028 ; =0x000003E1
	ldrb r3, [r2, r1]
	ldr r1, _0224302C ; =0x00002D8C
	add r2, r4, r0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	mul r0, r3
	bl sub_020F2BA4
	ldr r1, _02243020 ; =0x00002154
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0224301C
	mov r0, #1
	str r0, [r4, r1]
_0224301C:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02243020: .word 0x00002154
_02243024: .word 0x00003044
_02243028: .word 0x000003E1
_0224302C: .word 0x00002D8C
	thumb_func_end ov12_02242FD8

	thumb_func_start ov12_02243030
ov12_02243030: ; 0x02243030
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r1, #0
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r7, #0
	bl ov12_022454E8
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [r7, #0x64]
	mov r2, #0
	bl ov12_0223ABB8
	add r4, r0, #0
	ldr r0, [sp]
	ldr r1, [r7, #0x64]
	mov r2, #2
	bl ov12_0223ABB8
	mov r6, #0xb7
	add r3, r0, #0
	lsl r6, r6, #6
	add r1, r4, #0
	mov r0, #0xc0
	mov r4, #1
	add r2, r7, r6
	mul r1, r0
	ldr r5, [r2, r1]
	lsl r4, r4, #0x1e
	orr r5, r4
	str r5, [r2, r1]
	add r1, r3, #0
	mul r1, r0
	ldr r3, [r2, r1]
	orr r3, r4
	str r3, [r2, r1]
	ldr r1, [r7, #0x64]
	mul r0, r1
	add r0, r7, r0
	ldr r2, [r0, r6]
	lsr r0, r4, #0x11
	tst r0, r2
	beq _02243098
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov12_02245508
	b _0224313C
_02243098:
	ldr r0, [sp]
	bl ov12_0223AB1C
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov12_0223A7F0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _02243112
	str r7, [sp, #4]
_022430B4:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov12_0223AB1C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _02243100
	mov r2, #0
	ldr r0, _02243144 ; =0x00002D4C
	add r4, r2, #0
_022430C8:
	ldr r1, [r7, #0x64]
	mov r6, #0xc0
	mul r6, r1
	add r1, r7, r6
	add r6, r1, r4
	ldr r1, _02243144 ; =0x00002D4C
	ldr r5, [sp, #4]
	ldrh r6, [r6, r1]
	mov r3, #0
_022430DA:
	ldrh r1, [r5, r0]
	cmp r6, r1
	bne _022430E8
	cmp r6, #0
	beq _022430E8
	cmp r1, #0
	bne _022430F0
_022430E8:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #4
	blt _022430DA
_022430F0:
	cmp r3, #4
	bne _022430FC
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #4
	blt _022430C8
_022430FC:
	cmp r3, #4
	bne _02243112
_02243100:
	ldr r0, [sp, #4]
	add r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _022430B4
_02243112:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _02243124
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov12_02245508
	b _0224313C
_02243124:
	mov r0, #0xb7
	ldr r1, [r7, #0x64]
	lsl r0, r0, #6
	add r3, r7, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	mov r0, #2
	ldr r1, [r3, r2]
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r3, r2]
_0224313C:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243144: .word 0x00002D4C
	thumb_func_end ov12_02243030

	thumb_func_start ov12_02243148
ov12_02243148: ; 0x02243148
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	ldr r1, [r4, #0x6c]
	add r0, r7, #0
	bl ov12_0223AB1C
	ldr r5, [r4, #0x74]
	mov r0, #0xc0
	mul r0, r5
	add r1, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r1
	beq _022431E0
	ldr r1, [r4, #0x64]
	add r0, r7, #0
	bl ov12_0223AB1C
	add r6, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_0223AB1C
	cmp r6, r0
	beq _022431E0
	ldr r6, [r4, #0x64]
	mov r1, #0xc0
	add r0, r6, #0
	mul r0, r1
	ldr r2, _022431EC ; =0x00002D8C
	add r5, r4, r0
	ldr r0, [r5, r2]
	cmp r0, #0
	beq _022431E0
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	cmp r3, #0xa5
	beq _022431E0
	lsl r3, r6, #1
	add r3, r4, r3
	add r0, #0x7c
	ldrh r0, [r3, r0]
	add r3, r2, #0
	mov r6, #0
	add r5, r5, r0
	sub r3, #0x20
	strb r6, [r5, r3]
	ldr r3, [r4, #0x64]
	lsl r0, r0, #1
	add r5, r3, #0
	mul r5, r1
	add r3, r4, r5
	add r0, r3, r0
	sub r2, #0x40
	ldrh r0, [r0, r2]
	add r1, #0x64
	str r0, [r4, r1]
	ldr r2, [r4, #0x64]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02250C40
	b _022431E8
_022431E0:
	ldr r1, [sp]
	add r0, r4, #0
	bl ov12_02245508
_022431E8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022431EC: .word 0x00002D8C
	thumb_func_end ov12_02243148

	thumb_func_start ov12_022431F0
ov12_022431F0: ; 0x022431F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	mov r4, #0
	bl ov12_0223A7F0
	cmp r0, #0
	ble _0224321E
_02243212:
	add r0, r5, #0
	add r4, r4, #1
	bl ov12_0223A7F0
	cmp r4, r0
	blt _02243212
_0224321E:
	ldr r0, _02243248 ; =0x00003150
	ldr r0, [r6, r0]
	cmp r0, #1
	bne _02243230
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_02245508
	b _02243242
_02243230:
	mov r0, #0x75
	lsl r0, r0, #2
	add r3, r6, r0
	ldr r0, [r6, #0x64]
	lsl r2, r0, #6
	ldr r1, [r3, r2]
	mov r0, #0x20
	orr r0, r1
	str r0, [r3, r2]
_02243242:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243248: .word 0x00003150
	thumb_func_end ov12_022431F0

	thumb_func_start ov12_0224324C
ov12_0224324C: ; 0x0224324C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02243298 ; =0x00002D60
	ldr r5, _0224329C ; =0x0226C39C
	ldr r3, [r2, r1]
	ldr r1, _022432A0 ; =0x0000FFFF
	mov r0, #0
_0224326A:
	ldrh r2, [r5]
	cmp r2, r3
	bge _0224327A
	add r5, r5, #4
	ldrh r2, [r5]
	add r0, r0, #1
	cmp r2, r1
	bne _0224326A
_0224327A:
	lsl r2, r0, #2
	ldr r0, _0224329C ; =0x0226C39C
	ldrh r1, [r0, r2]
	ldr r0, _022432A0 ; =0x0000FFFF
	cmp r1, r0
	beq _0224328C
	ldr r0, _022432A4 ; =0x0226C39E
	ldrh r1, [r0, r2]
	b _0224328E
_0224328C:
	mov r1, #0x78
_0224328E:
	ldr r0, _022432A8 ; =0x00002154
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02243298: .word 0x00002D60
_0224329C: .word 0x0226C39C
_022432A0: .word 0x0000FFFF
_022432A4: .word 0x0226C39E
_022432A8: .word 0x00002154
	thumb_func_end ov12_0224324C

	thumb_func_start ov12_022432AC
ov12_022432AC: ; 0x022432AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _02243354
	mov r0, #0x4c
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _02243354
	mov r1, #6
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	ldr r0, _02243358 ; =0x000080FF
	tst r0, r2
	ldr r0, _0224335C ; =0x00003044
	beq _02243346
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r0, _02243360 ; =0x000003E1
	ldrb r0, [r2, r0]
	lsl r2, r0, #1
	ldr r0, _02243364 ; =0x00002154
	str r2, [r4, r0]
	ldr r2, [r4, r1]
	mov r1, #3
	tst r1, r2
	beq _0224330E
	mov r1, #0xb
	add r0, #0xc
	str r1, [r4, r0]
_0224330E:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0xc
	tst r0, r1
	beq _02243320
	ldr r0, _02243368 ; =0x00002160
	mov r1, #5
	str r1, [r4, r0]
_02243320:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x30
	tst r0, r1
	beq _02243332
	ldr r0, _02243368 ; =0x00002160
	mov r1, #0xa
	str r1, [r4, r0]
_02243332:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0xc0
	tst r0, r1
	beq _02243354
	ldr r0, _02243368 ; =0x00002160
	mov r1, #0xf
	str r1, [r4, r0]
	b _02243354
_02243346:
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _02243360 ; =0x000003E1
	ldrb r1, [r1, r0]
	ldr r0, _02243364 ; =0x00002154
	str r1, [r4, r0]
_02243354:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243358: .word 0x000080FF
_0224335C: .word 0x00003044
_02243360: .word 0x000003E1
_02243364: .word 0x00002154
_02243368: .word 0x00002160
	thumb_func_end ov12_022432AC

	thumb_func_start ov12_0224336C
ov12_0224336C: ; 0x0224336C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov12_0223A7F0
	mov r7, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	bgt _02243394
	b _022434A6
_02243394:
	mov r0, #0xb5
	lsl r0, r0, #6
	add r0, r5, r0
	str r5, [sp, #8]
	add r4, r5, #0
	str r0, [sp, #4]
_022433A0:
	ldr r1, [sp, #8]
	ldr r0, _022434E8 ; =0x000021A8
	ldr r0, [r1, r0]
	cmp r0, #0x28
	beq _0224348E
	ldr r0, _022434EC ; =0x00002D8C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224348E
	ldr r0, _022434F0 ; =0x00002DAC
	ldr r1, [r4, r0]
	mov r0, #0x27
	tst r0, r1
	bne _0224348E
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02252C40
	cmp r0, #0
	bne _0224348E
	ldr r0, [sp]
	add r1, r7, #0
	bl ov12_0223AB1C
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [r5, #0x78]
	bl ov12_0223AB1C
	ldr r1, [sp, #0x14]
	cmp r1, r0
	beq _0224348E
	ldr r0, _022434F4 ; =0x00002DEC
	ldrh r6, [r4, r0]
	cmp r6, #0
	beq _022433F8
	add r0, r0, #2
	ldrh r0, [r4, r0]
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _022434F8 ; =0x00002D4C
	ldrh r0, [r1, r0]
	cmp r6, r0
	beq _02243402
_022433F8:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022522F0
	add r6, r0, #0
_02243402:
	cmp r6, #0
	beq _0224348E
	lsl r1, r6, #0x10
	ldr r0, [sp, #4]
	lsr r1, r1, #0x10
	bl ov12_02251C60
	str r0, [sp, #0x18]
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _022434FC ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x80
	bne _0224348E
	ldr r0, [sp, #0x18]
	add r1, r4, r0
	ldr r0, _02243500 ; =0x00002D6C
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0224348E
	ldr r0, _02243500 ; =0x00002D6C
	add r1, r5, r0
	mov r0, #0xc0
	mul r0, r7
	add r4, r1, r0
	ldr r0, [sp, #0x18]
	ldrb r0, [r4, r0]
	sub r1, r0, #1
	ldr r0, [sp, #0x18]
	strb r1, [r4, r0]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x2e
	bne _02243458
	ldr r0, [sp, #0x18]
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _02243458
	sub r1, r0, #1
	ldr r0, [sp, #0x18]
	strb r1, [r4, r0]
_02243458:
	ldr r0, [sp]
	add r1, r5, #0
	bl ov12_02252D14
	str r7, [r5, #0x64]
	ldr r0, [r5, #0x78]
	lsl r2, r7, #1
	str r0, [r5, #0x6c]
	ldr r1, _02243504 ; =0x00002158
	mov r0, #0x14
	str r0, [r5, r1]
	ldr r0, _02243508 ; =0x00003044
	add r2, r5, r2
	str r6, [r5, r0]
	add r0, #0x38
	strh r6, [r2, r0]
	lsl r0, r7, #4
	mov r2, #0x28
	add r0, r5, r0
	add r1, #0x50
	str r2, [r0, r1]
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_02250C40
	b _022434A6
_0224348E:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, #0xc0
	add r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge _022434A6
	b _022433A0
_022434A6:
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bne _022434B6
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov12_02245508
	b _022434E2
_022434B6:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_02255830
	add r4, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	cmp r4, #0x37
	beq _022434D6
	cmp r4, #0x73
	beq _022434D6
	cmp r4, #0x7d
	bne _022434E2
_022434D6:
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0224350C ; =0x00002DF8
	strh r6, [r1, r0]
_022434E2:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022434E8: .word 0x000021A8
_022434EC: .word 0x00002D8C
_022434F0: .word 0x00002DAC
_022434F4: .word 0x00002DEC
_022434F8: .word 0x00002D4C
_022434FC: .word 0x000003DE
_02243500: .word 0x00002D6C
_02243504: .word 0x00002158
_02243508: .word 0x00003044
_0224350C: .word 0x00002DF8
	thumb_func_end ov12_0224336C

	thumb_func_start ov12_02243510
ov12_02243510: ; 0x02243510
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, [r4, #0x64]
	ldr r3, _02243550 ; =0x00002144
	str r0, [sp]
	ldr r0, [r4, #0x6c]
	ldr r2, _02243554 ; =0x00003044
	str r0, [sp, #4]
	ldr r0, [r4, r3]
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r3, #0
	add r0, #0x28
	add r0, r4, r0
	str r0, [sp, #0xc]
	add r3, #0x1c
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl ov12_02251D28
	ldr r1, _02243550 ; =0x00002144
	str r0, [r4, r1]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243550: .word 0x00002144
_02243554: .word 0x00003044
	thumb_func_end ov12_02243510

	thumb_func_start ov12_02243558
ov12_02243558: ; 0x02243558
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r6, #0
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl ov12_0224768C
	cmp r7, #6
	bhi _0224364A
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022435A4: ; jump table
	.short _022435B2 - _022435A4 - 2 ; case 0
	.short _022435C8 - _022435A4 - 2 ; case 1
	.short _022435DE - _022435A4 - 2 ; case 2
	.short _022435F4 - _022435A4 - 2 ; case 3
	.short _0224360A - _022435A4 - 2 ; case 4
	.short _02243620 - _022435A4 - 2 ; case 5
	.short _02243636 - _022435A4 - 2 ; case 6
_022435B2:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _0224364A
	mov r6, #1
	b _0224364A
_022435C8:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _0224364A
	mov r6, #1
	b _0224364A
_022435DE:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _0224364A
	mov r6, #1
	b _0224364A
_022435F4:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _0224364A
	mov r6, #1
	b _0224364A
_0224360A:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _0224364A
	mov r6, #1
	b _0224364A
_02243620:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _0224364A
	mov r6, #1
	b _0224364A
_02243636:
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	cmp r5, r0
	bne _0224364A
	mov r6, #1
_0224364A:
	cmp r6, #0
	beq _02243656
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov12_02245508
_02243656:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02243558

	thumb_func_start ov12_0224365C
ov12_0224365C: ; 0x0224365C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r5, r0, #0
	ldr r2, [sp]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0224768C
	cmp r6, #6
	bhi _02243750
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224369C: ; jump table
	.short _022436AA - _0224369C - 2 ; case 0
	.short _022436C2 - _0224369C - 2 ; case 1
	.short _022436DA - _0224369C - 2 ; case 2
	.short _022436F2 - _0224369C - 2 ; case 3
	.short _0224370A - _0224369C - 2 ; case 4
	.short _02243722 - _0224369C - 2 ; case 5
	.short _0224373A - _0224369C - 2 ; case 6
_022436AA:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #1
	bic r2, r0
	mov r0, #1
	and r0, r5
	orr r0, r2
	str r0, [r1, r3]
	b _02243750
_022436C2:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #2
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r2
	str r0, [r1, r3]
	b _02243750
_022436DA:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #4
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1d
	orr r0, r2
	str r0, [r1, r3]
	b _02243750
_022436F2:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #8
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1c
	orr r0, r2
	str r0, [r1, r3]
	b _02243750
_0224370A:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #0x10
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r2
	str r0, [r1, r3]
	b _02243750
_02243722:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #0x20
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x1a
	orr r0, r2
	str r0, [r1, r3]
	b _02243750
_0224373A:
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r3, r0, #6
	add r1, r4, r1
	ldr r2, [r1, r3]
	mov r0, #0x40
	bic r2, r0
	lsl r0, r5, #0x1f
	lsr r0, r0, #0x19
	orr r0, r2
	str r0, [r1, r3]
_02243750:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224365C

	thumb_func_start ov12_02243754
ov12_02243754: ; 0x02243754
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, [r4, #0x6c]
	ldr r1, _02243790 ; =0x000021F0
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, r1]
	mov r0, #0x19
	mul r0, r2
	ldr r2, [r4, #0x64]
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r1, [r2, r1]
	bl sub_020F2BA4
	add r1, r0, #1
	ldr r0, _02243794 ; =0x00002154
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x96
	ble _0224378A
	mov r1, #0x96
	str r1, [r4, r0]
_0224378A:
	mov r0, #0
	pop {r4, pc}
	nop
_02243790: .word 0x000021F0
_02243794: .word 0x00002154
	thumb_func_end ov12_02243754

	thumb_func_start ov12_02243798
ov12_02243798: ; 0x02243798
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp]
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov12_0223AB1C
	ldr r1, [r5, #0x64]
	add r7, r0, #0
	lsl r1, r1, #6
	add r2, r5, r1
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r6, #0
	bl ov12_0223AB1C
	add r4, r0, #0
	ldr r0, [r5, #0x64]
	mov r2, #0x82
	lsl r0, r0, #6
	add r0, r5, r0
	lsl r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02243878
	cmp r7, r4
	beq _02243878
	add r2, r2, #4
	ldr r2, [r0, r2]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _02243884 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02243878
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2998
	ldr r1, _02243888 ; =0x00002144
	str r0, [r5, r1]
	mov r0, #0x71
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r4, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02243826
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _02243884 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02243826
	str r0, [r5, #0x6c]
	b _02243834
_02243826:
	ldr r0, [r5, #0x64]
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r5, #0x6c]
_02243834:
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02243884 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224386C
	ldr r2, [r5, #0x64]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_02253DA0
	mov r1, #0xc0
	mul r1, r0
	str r0, [r5, #0x6c]
	ldr r0, _02243884 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224386C
	mov r2, #0x27
	str r2, [r5, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, #0xf2
	bl ov12_02245518
_0224386C:
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	add r0, r5, #0
	bl ov12_02258180
	b _02243880
_02243878:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02245508
_02243880:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02243884: .word 0x00002D8C
_02243888: .word 0x00002144
	thumb_func_end ov12_02243798

	thumb_func_start ov12_0224388C
ov12_0224388C: ; 0x0224388C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r0, [r4, #0x6c]
	ldr r1, _022438C8 ; =0x000021A8
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, r1]
	cmp r0, #0x28
	ldr r0, _022438CC ; =0x00003044
	bne _022438B6
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r0, _022438D0 ; =0x000003E1
	ldrb r0, [r2, r0]
	lsl r0, r0, #1
	b _022438C0
_022438B6:
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r0, _022438D0 ; =0x000003E1
	ldrb r0, [r2, r0]
_022438C0:
	sub r1, #0x54
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_022438C8: .word 0x000021A8
_022438CC: .word 0x00003044
_022438D0: .word 0x000003E1
	thumb_func_end ov12_0224388C

	thumb_func_start ov12_022438D4
ov12_022438D4: ; 0x022438D4
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	lsl r0, r1, #1
	add r1, r4, r0
	ldr r0, _02243908 ; =0x000030BC
	ldrh r0, [r1, r0]
	add r1, r2, r0
	ldr r0, _0224390C ; =0x00002D6C
	ldrb r1, [r1, r0]
	cmp r1, #4
	bls _022438FC
	mov r1, #4
_022438FC:
	ldr r0, _02243910 ; =0x0226C2F0
	ldrb r1, [r0, r1]
	ldr r0, _02243914 ; =0x00002154
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02243908: .word 0x000030BC
_0224390C: .word 0x00002D6C
_02243910: .word 0x0226C2F0
_02243914: .word 0x00002154
	thumb_func_end ov12_022438D4

	thumb_func_start ov12_02243918
ov12_02243918: ; 0x02243918
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r3, r4, r0
	ldr r1, _02243948 ; =0x00002D8C
	mov r0, #0x78
	ldr r2, [r3, r1]
	add r1, r1, #4
	ldr r1, [r3, r1]
	mul r0, r2
	bl sub_020F2BA4
	add r1, r0, #1
	ldr r0, _0224394C ; =0x00002154
	str r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	nop
_02243948: .word 0x00002D8C
_0224394C: .word 0x00002154
	thumb_func_end ov12_02243918

	thumb_func_start ov12_02243950
ov12_02243950: ; 0x02243950
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	ldr r3, _022439FC ; =0x00002DEC
	add r0, r5, r0
	ldrh r4, [r0, r3]
	cmp r4, #0
	beq _02243984
	add r2, r3, #2
	ldrh r2, [r0, r2]
	sub r3, #0xa0
	lsl r2, r2, #1
	add r0, r0, r2
	ldrh r0, [r0, r3]
	cmp r4, r0
	beq _0224398C
_02243984:
	add r0, r5, #0
	bl ov12_022522F0
	add r4, r0, #0
_0224398C:
	ldr r0, [r5, #0x6c]
	lsl r1, r0, #4
	add r2, r5, r1
	ldr r1, _02243A00 ; =0x000021A8
	ldr r1, [r2, r1]
	cmp r1, #0x28
	beq _022439F0
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _022439F0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02257E38
	cmp r0, #1
	bne _022439F0
	lsl r0, r4, #4
	add r1, r5, r0
	ldr r0, _02243A04 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _022439F0
	ldr r2, [r5, #0x64]
	ldr r3, _02243A08 ; =0x00002DCC
	add r0, r2, #0
	mov r6, #0xc0
	add r1, r5, r3
	mul r0, r6
	mov r2, #1
	ldr r7, [r1, r0]
	lsl r2, r2, #0x1e
	orr r2, r7
	str r2, [r1, r0]
	add r0, r6, #0
	add r0, #0xb4
	ldr r2, [r5, r0]
	ldr r0, [r5, #0x64]
	add r3, #0x10
	add r1, r0, #0
	mul r1, r6
	add r0, r5, r1
	str r2, [r0, r3]
	add r6, #0x64
	str r4, [r5, r6]
	b _022439F8
_022439F0:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02245508
_022439F8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022439FC: .word 0x00002DEC
_02243A00: .word 0x000021A8
_02243A04: .word 0x000003E1
_02243A08: .word 0x00002DCC
	thumb_func_end ov12_02243950

	thumb_func_start ov12_02243A0C
ov12_02243A0C: ; 0x02243A0C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r0, _02243A64 ; =0x00003048
	ldr r0, [r4, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov12_02252698
	cmp r0, #0
	bne _02243A58
	ldr r0, _02243A64 ; =0x00003048
	ldr r3, [r4, r0]
	cmp r3, #0
	beq _02243A58
	lsl r3, r3, #0x10
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov12_02257DA4
	cmp r0, #1
	bne _02243A58
	ldr r0, _02243A64 ; =0x00003048
	ldr r1, [r4, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _02243A60
_02243A58:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02243A60:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02243A64: .word 0x00003048
	thumb_func_end ov12_02243A0C

	thumb_func_start ov12_02243A68
ov12_02243A68: ; 0x02243A68
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	ldr r5, _02243AB8 ; =0x00002D58
	mov r1, #0
	ldr r3, [r4, #0x6c]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	add r0, r1, #0
	add r2, r3, #0
	add r6, r5, #0
_02243A86:
	ldrsb r7, [r2, r6]
	cmp r7, #6
	ble _02243A94
	add r7, r3, r0
	ldrsb r7, [r7, r5]
	sub r7, r7, #6
	add r1, r1, r7
_02243A94:
	add r0, r0, #1
	add r2, r2, #1
	cmp r0, #8
	blt _02243A86
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	ldr r0, _02243ABC ; =0x00002154
	add r2, #0x3c
	str r2, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0xc8
	ble _02243AB2
	mov r1, #0xc8
	str r1, [r4, r0]
_02243AB2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243AB8: .word 0x00002D58
_02243ABC: .word 0x00002154
	thumb_func_end ov12_02243A68

	thumb_func_start ov12_02243AC0
ov12_02243AC0: ; 0x02243AC0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	ldr r6, _02243B30 ; =0x00002DEC
	add r2, r5, r0
	ldrh r0, [r2, r6]
	cmp r0, #0
	beq _02243AF4
	add r3, r6, #2
	ldrh r3, [r2, r3]
	sub r6, #0xa0
	lsl r3, r3, #1
	add r2, r2, r3
	ldrh r2, [r2, r6]
	cmp r0, r2
	beq _02243AFA
_02243AF4:
	add r0, r5, #0
	bl ov12_022522F0
_02243AFA:
	ldr r1, [r5, #0x6c]
	lsl r2, r1, #4
	add r3, r5, r2
	ldr r2, _02243B34 ; =0x000021A8
	ldr r2, [r3, r2]
	cmp r2, #0x28
	beq _02243B24
	lsl r0, r0, #4
	add r2, r5, r0
	ldr r0, _02243B38 ; =0x000003E1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _02243B2C
	lsl r0, r1, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02243B2C
_02243B24:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245508
_02243B2C:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02243B30: .word 0x00002DEC
_02243B34: .word 0x000021A8
_02243B38: .word 0x000003E1
	thumb_func_end ov12_02243AC0

	thumb_func_start ov12_02243B3C
ov12_02243B3C: ; 0x02243B3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_0223AB1C
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _02243B8E
	cmp r1, #1
	beq _02243B8E
	cmp r1, #2
	beq _02243C0C
	b _02243CE6
_02243B8E:
	cmp r6, #5
	bls _02243B94
	b _02243CE6
_02243B94:
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243BA0: ; jump table
	.short _02243BAC - _02243BA0 - 2 ; case 0
	.short _02243BBC - _02243BA0 - 2 ; case 1
	.short _02243BCC - _02243BA0 - 2 ; case 2
	.short _02243BDC - _02243BA0 - 2 ; case 3
	.short _02243BEC - _02243BA0 - 2 ; case 4
	.short _02243BFC - _02243BA0 - 2 ; case 5
_02243BAC:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r5, r0, #0x1d
	b _02243CE6
_02243BBC:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x16
	lsr r5, r0, #0x1d
	b _02243CE6
_02243BCC:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r5, r0, #0x1d
	b _02243CE6
_02243BDC:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0xc
	lsr r5, r0, #0x1d
	b _02243CE6
_02243BEC:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1e
	lsr r5, r0, #0x1e
	b _02243CE6
_02243BFC:
	lsl r0, r0, #3
	add r1, r4, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r5, r0, #0x1e
	b _02243CE6
_02243C0C:
	cmp r6, #5
	bhi _02243CE6
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243C1C: ; jump table
	.short _02243C28 - _02243C1C - 2 ; case 0
	.short _02243C48 - _02243C1C - 2 ; case 1
	.short _02243C68 - _02243C1C - 2 ; case 2
	.short _02243C88 - _02243C1C - 2 ; case 3
	.short _02243CA8 - _02243C1C - 2 ; case 4
	.short _02243CC8 - _02243C1C - 2 ; case 5
_02243C28:
	mov r2, #0x71
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r3, r0, #3
	ldr r7, [r6, r3]
	mov r1, #0x1c
	bic r7, r1
	sub r2, #8
	str r7, [r6, r3]
	add r3, r4, r2
	lsl r2, r0, #2
	ldr r1, [r3, r2]
	mov r0, #1
	bic r1, r0
	str r1, [r3, r2]
	b _02243CE6
_02243C48:
	mov r2, #0x71
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r7, r0, #3
	ldr r3, [r6, r7]
	ldr r1, _02243D10 ; =0xFFFFFC7F
	sub r2, #8
	and r1, r3
	add r3, r4, r2
	lsl r2, r0, #2
	str r1, [r6, r7]
	ldr r1, [r3, r2]
	mov r0, #2
	bic r1, r0
	str r1, [r3, r2]
	b _02243CE6
_02243C68:
	mov r2, #0x71
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r7, r0, #3
	ldr r3, [r6, r7]
	ldr r1, _02243D14 ; =0xFFFF8FFF
	sub r2, #8
	and r1, r3
	add r3, r4, r2
	lsl r2, r0, #2
	str r1, [r6, r7]
	ldr r1, [r3, r2]
	mov r0, #0x40
	bic r1, r0
	str r1, [r3, r2]
	b _02243CE6
_02243C88:
	mov r2, #0x71
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r7, r0, #3
	ldr r3, [r6, r7]
	ldr r1, _02243D18 ; =0xFFF1FFFF
	sub r2, #8
	and r1, r3
	add r3, r4, r2
	lsl r2, r0, #2
	str r1, [r6, r7]
	ldr r1, [r3, r2]
	mov r0, #8
	bic r1, r0
	str r1, [r3, r2]
	b _02243CE6
_02243CA8:
	mov r2, #0x72
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r3, r0, #3
	ldr r7, [r6, r3]
	mov r1, #3
	bic r7, r1
	sub r2, #0xc
	str r7, [r6, r3]
	add r3, r4, r2
	lsl r2, r0, #2
	ldr r1, [r3, r2]
	mov r0, #4
	bic r1, r0
	str r1, [r3, r2]
	b _02243CE6
_02243CC8:
	mov r2, #0x72
	lsl r2, r2, #2
	add r6, r4, r2
	lsl r3, r0, #3
	ldr r7, [r6, r3]
	mov r1, #0xc
	bic r7, r1
	sub r2, #0xc
	str r7, [r6, r3]
	lsl r3, r0, #2
	add r1, r4, r2
	ldr r2, [r1, r3]
	ldr r0, _02243D1C ; =0xFFFFFBFF
	and r0, r2
	str r0, [r1, r3]
_02243CE6:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02243CF8
	cmp r5, #0
	bne _02243CF8
	ldr r1, [sp]
	add r0, r4, #0
	bl ov12_02245508
_02243CF8:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02243D0A
	cmp r5, #0
	beq _02243D0A
	ldr r1, [sp]
	add r0, r4, #0
	bl ov12_02245508
_02243D0A:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02243D10: .word 0xFFFFFC7F
_02243D14: .word 0xFFFF8FFF
_02243D18: .word 0xFFF1FFFF
_02243D1C: .word 0xFFFFFBFF
	thumb_func_end ov12_02243B3C

	thumb_func_start ov12_02243D20
ov12_02243D20: ; 0x02243D20
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r1, r0, #0
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #6
	add r2, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _02243D4C
	add r0, r4, #0
	bl ov12_02245508
_02243D4C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_02243D20

	thumb_func_start ov12_02243D50
ov12_02243D50: ; 0x02243D50
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r1, r0, #0
	ldr r0, [r4, #0x6c]
	mov r2, #0xc0
	add r3, r0, #0
	mul r3, r2
	add r5, r4, r3
	ldr r3, _02243D98 ; =0x00002DAC
	ldr r0, [r5, r3]
	cmp r0, #0
	bne _02243D8E
	add r0, r3, #4
	ldr r5, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r5
	bne _02243D8E
	ldr r0, [r4, #0x64]
	mul r2, r0
	add r0, r4, r2
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _02243D94
_02243D8E:
	add r0, r4, #0
	bl ov12_02245508
_02243D94:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02243D98: .word 0x00002DAC
	thumb_func_end ov12_02243D50

	thumb_func_start ov12_02243D9C
ov12_02243D9C: ; 0x02243D9C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252EA8
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _02243DE4 ; =0x00002DCC
	ldr r1, [r2, r1]
	lsl r1, r1, #0x13
	lsr r2, r1, #0x1d
	sub r1, r0, #1
	cmp r2, r1
	blo _02243DD6
	cmp r0, #2
	bge _02243DDE
_02243DD6:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02243DDE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02243DE4: .word 0x00002DCC
	thumb_func_end ov12_02243D9C

	thumb_func_start ov12_02243DE8
ov12_02243DE8: ; 0x02243DE8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB1C
	mov r2, #0x72
	mov r1, #1
	add r3, r0, #0
	eor r3, r1
	lsl r0, r3, #3
	add r5, r4, r0
	lsl r2, r2, #2
	ldr r5, [r5, r2]
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x1e
	cmp r5, #2
	bne _02243E3E
	mov r0, #0xb5
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r3, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r3
	ldr r5, [r2, r0]
	mov r3, #1
	bic r5, r3
	orr r1, r5
	str r1, [r2, r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
	b _02243E66
_02243E3E:
	add r5, r2, #0
	sub r5, #0xc
	add r5, r4, r5
	lsl r3, r3, #2
	ldr r6, [r5, r3]
	lsl r1, r1, #0xa
	orr r1, r6
	str r1, [r5, r3]
	add r2, r4, r2
	ldr r4, [r2, r0]
	mov r3, #0xc
	add r1, r4, #0
	bic r1, r3
	lsl r3, r4, #0x1c
	lsr r3, r3, #0x1e
	add r3, r3, #1
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1c
	orr r1, r3
	str r1, [r2, r0]
_02243E66:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov12_02243DE8

	thumb_func_start ov12_02243E6C
ov12_02243E6C: ; 0x02243E6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0223AB1C
	mov r1, #0x72
	lsl r1, r1, #2
	add r4, r5, r1
	lsl r6, r0, #3
	str r0, [sp]
	ldr r0, [r4, r6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	beq _02243F06
	sub r1, #0x94
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #6
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	add r0, #0x94
	str r7, [r0]
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #3
	beq _02243EE4
	ldr r1, [r5, #0x78]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #3
	bne _02243F0E
_02243EE4:
	mov r0, #0x6f
	ldr r1, [sp]
	lsl r0, r0, #2
	add r2, r5, r0
	lsl r1, r1, #2
	ldr r7, [r2, r1]
	ldr r3, _02243F14 ; =0xFFFFFBFF
	sub r0, #0x88
	and r3, r7
	str r3, [r2, r1]
	ldr r2, [r4, r6]
	mov r1, #0xc
	bic r2, r1
	str r2, [r4, r6]
	mov r1, #0
	str r1, [r5, r0]
	b _02243F0E
_02243F06:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov12_02245508
_02243F0E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02243F14: .word 0xFFFFFBFF
	thumb_func_end ov12_02243E6C

	thumb_func_start ov12_02243F18
ov12_02243F18: ; 0x02243F18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	cmp r4, #0
	bne _02243FC8
	add r0, r6, #0
	bl ov12_0223A7F0
	mov r6, #0
	str r0, [sp]
	cmp r0, #0
	ble _02244030
_02243F5A:
	ldr r0, _02244038 ; =0x000021EC
	add r1, r5, r6
	ldrb r4, [r1, r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02243F92
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov12_02252834
	cmp r0, #1
	bne _02243FBE
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0224403C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02243FBE
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov12_02245508
	add r5, #0x80
	str r4, [r5]
	b _02244030
_02243F92:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov12_02252834
	cmp r0, #0
	beq _02243FB0
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0224403C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02243FBE
_02243FB0:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov12_02245508
	add r5, #0x80
	str r4, [r5]
	b _02244030
_02243FBE:
	ldr r0, [sp]
	add r6, r6, #1
	cmp r6, r0
	blt _02243F5A
	b _02244030
_02243FC8:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0224768C
	add r4, r0, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02244006
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov12_02252834
	cmp r0, #1
	bne _02244030
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0224403C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02244030
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov12_02245508
	add r5, #0x80
	str r4, [r5]
	b _02244030
_02244006:
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov12_02252834
	cmp r0, #0
	beq _02244024
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _0224403C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02244030
_02244024:
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov12_02245508
	add r5, #0x80
	str r4, [r5]
_02244030:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02244038: .word 0x000021EC
_0224403C: .word 0x00002D8C
	thumb_func_end ov12_02243F18

	thumb_func_start ov12_02244040
ov12_02244040: ; 0x02244040
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_0224768C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223AB1C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_0223AB1C
	cmp r6, r0
	bne _0224409C
	ldr r1, [sp]
	add r0, r4, #0
	bl ov12_02245508
_0224409C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02244040

	thumb_func_start ov12_022440A0
ov12_022440A0: ; 0x022440A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl ov12_0223A834
	cmp r0, #0
	bgt _022440C0
	b _0224420A
_022440C0:
	ldr r2, [sp, #8]
	add r0, r7, #0
	mov r1, #0
	bl ov12_0223A880
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	cmp r0, #0x35
	bne _0224418E
	cmp r6, #0
	beq _0224418E
	ldr r0, _02244210 ; =0x000001EE
	cmp r6, r0
	beq _0224418E
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224418E
	add r0, r7, #0
	bl ov12_0223BD98
	mov r1, #0xa
	bl sub_020F2998
	cmp r1, #0
	bne _0224418E
	add r0, r7, #0
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0206E540
	sub r0, r0, #1
	mov r1, #0xa
	bl sub_020F2BA4
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0xa
	blo _02244146
	mov r3, #9
_02244146:
	mov r1, #0
	ldr r2, _02244214 ; =0x0226CA4C
	str r1, [sp, #0xc]
_0224414C:
	ldrb r0, [r2]
	cmp r0, r5
	ble _02244166
	ldr r2, [sp, #0xc]
	ldr r5, _02244218 ; =0x0226C404
	add r2, r3, r2
	lsl r2, r2, #1
	add r0, r4, #0
	mov r1, #6
	add r2, r5, r2
	bl sub_0206EC40
	b _0224418E
_02244166:
	cmp r5, #0x62
	blt _02244184
	cmp r5, #0x63
	bgt _02244184
	mov r2, #0x63
	sub r2, r2, r5
	add r2, r3, r2
	lsl r3, r2, #1
	ldr r2, _0224421C ; =0x0226C30C
	add r0, r4, #0
	mov r1, #6
	add r2, r2, r3
	bl sub_0206EC40
	b _0224418E
_02244184:
	add r1, r1, #1
	add r2, r2, #1
	str r1, [sp, #0xc]
	cmp r1, #9
	blt _0224414C
_0224418E:
	ldr r0, [sp]
	cmp r0, #0x76
	bne _022441F4
	cmp r6, #0
	beq _022441F4
	ldr r0, _02244210 ; =0x000001EE
	cmp r6, r0
	beq _022441F4
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _022441F4
	mov r2, #0
	add r0, r4, #0
	mov r1, #0xa1
	str r2, [sp, #0xc]
	mov r5, #0xa
	bl sub_0206E540
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #0xa
	ble _022441C6
	ldr r0, [sp, #0xc]
_022441BC:
	add r5, #0xa
	add r0, r0, #1
	cmp r5, r1
	blt _022441BC
	str r0, [sp, #0xc]
_022441C6:
	ldr r0, [sp, #0xc]
	cmp r0, #0xa
	blt _022441D0
	bl GF_AssertFail
_022441D0:
	add r0, r7, #0
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	ldr r2, [sp, #0xc]
	ldr r0, _02244220 ; =0x0226CA58
	ldrb r0, [r0, r2]
	cmp r1, r0
	bge _022441F4
	mov r0, #0x5e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0xc
	bl sub_0206EC40
_022441F4:
	ldr r0, [sp, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov12_0223A834
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _0224420A
	b _022440C0
_0224420A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02244210: .word 0x000001EE
_02244214: .word 0x0226CA4C
_02244218: .word 0x0226C404
_0224421C: .word 0x0226C30C
_02244220: .word 0x0226CA58
	thumb_func_end ov12_022440A0

	thumb_func_start ov12_02244224
ov12_02244224: ; 0x02244224
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	mov r0, #0xb5
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	add r3, r4, r0
	mov r0, #0x1c
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #0x10
	orr r0, r1
	str r0, [r3, r2]
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_02244224

	thumb_func_start ov12_0224424C
ov12_0224424C: ; 0x0224424C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_0225561C
	cmp r0, #1
	bne _02244288
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_02245508
_02244288:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224424C

	thumb_func_start ov12_0224428C
ov12_0224428C: ; 0x0224428C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	bl ov12_0224768C
	add r1, r0, #0
	cmp r6, #0
	bne _022442E0
	add r0, r5, #0
	bl ov12_02255830
	cmp r4, r0
	bne _022442F2
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
	b _022442F2
_022442E0:
	add r0, r5, #0
	bl ov12_02255830
	cmp r4, r0
	beq _022442F2
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
_022442F2:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224428C

	thumb_func_start ov12_022442F8
ov12_022442F8: ; 0x022442F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245528
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_022555EC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov12_02257E74
	str r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_022442F8

	thumb_func_start ov12_02244344
ov12_02244344: ; 0x02244344
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02245528
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_022555EC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	bl ov12_02257E74
	str r0, [r6]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_02244344

	thumb_func_start ov12_02244390
ov12_02244390: ; 0x02244390
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x79
	bne _022443BE
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02245508
	mov r0, #0
	pop {r4, r5, r6, pc}
_022443BE:
	add r0, r4, #0
	bl ov12_0223AB40
	cmp r0, #0xc
	ble _022443CA
	mov r0, #0xc
_022443CA:
	ldr r1, _02244420 ; =0x0226CA64
	mov r2, #0x1b
	ldrb r4, [r1, r0]
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r3, #0
	bl ov12_0224EDE0
	cmp r4, r0
	beq _02244412
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r4, r0
	beq _02244412
	ldr r1, [r5, #0x64]
	lsl r0, r4, #0x18
	add r3, r1, #0
	mov r2, #0xc0
	mul r3, r2
	ldr r1, _02244424 ; =0x00002D64
	lsr r0, r0, #0x18
	add r3, r5, r3
	strb r0, [r3, r1]
	ldr r3, [r5, #0x64]
	add r1, r1, #1
	add r6, r3, #0
	mul r6, r2
	add r3, r5, r6
	strb r0, [r3, r1]
	add r2, #0x70
	str r4, [r5, r2]
	b _0224441A
_02244412:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02245508
_0224441A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02244420: .word 0x0226CA64
_02244424: .word 0x00002D64
	thumb_func_end ov12_02244390

	thumb_func_start ov12_02244428
ov12_02244428: ; 0x02244428
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_0223AB40
	cmp r0, #0xc
	ble _02244442
	mov r0, #0xc
_02244442:
	lsl r1, r0, #1
	ldr r0, _02244454 ; =0x0226C3B4
	ldrh r1, [r0, r1]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02244454: .word 0x0226C3B4
	thumb_func_end ov12_02244428

	thumb_func_start ov12_02244458
ov12_02244458: ; 0x02244458
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_0223AB40
	cmp r0, #0xc
	ble _02244472
	mov r0, #0xc
_02244472:
	lsl r1, r0, #2
	ldr r0, _02244480 ; =0x0226C490
	ldr r1, [r0, r1]
	ldr r0, _02244484 ; =0x00002174
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02244480: .word 0x0226C490
_02244484: .word 0x00002174
	thumb_func_end ov12_02244458

	thumb_func_start ov12_02244488
ov12_02244488: ; 0x02244488
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r5, r0, #0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_02255890
	cmp r0, #0
	beq _022444BA
	ldr r1, _022444C8 ; =0x00002154
	str r0, [r4, r1]
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_022558A4
	ldr r1, _022444CC ; =0x00002160
	str r0, [r4, r1]
	b _022444C2
_022444BA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02245508
_022444C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022444C8: .word 0x00002154
_022444CC: .word 0x00002160
	thumb_func_end ov12_02244488

	thumb_func_start ov12_022444D0
ov12_022444D0: ; 0x022444D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _02244548 ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02244516
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	mov r3, #0x3c
	bl ov12_02252834
	cmp r0, #1
	bne _02244516
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_02245508
	b _02244544
_02244516:
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r2
	add r3, r4, r0
	ldr r0, _02244548 ; =0x00002DB8
	ldrh r1, [r3, r0]
	cmp r1, #0
	beq _02244530
	add r0, #0x14
	ldr r0, [r3, r0]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	bne _0224453C
_02244530:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02255A2C
	cmp r0, #1
	beq _02244544
_0224453C:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02244544:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02244548: .word 0x00002DB8
	thumb_func_end ov12_022444D0

	thumb_func_start ov12_0224454C
ov12_0224454C: ; 0x0224454C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02255F7C
	cmp r0, #1
	beq _02244578
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02244578:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0224454C

	thumb_func_start ov12_0224457C
ov12_0224457C: ; 0x0224457C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	str r2, [sp, #8]
	bl ov12_0226337C
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0224457C

	thumb_func_start ov12_022445AC
ov12_022445AC: ; 0x022445AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_0225682C
	add r4, r0, #0
	beq _022445F4
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r1, r0, #0
	cmp r4, #0xff
	bne _022445E2
	add r0, r5, #0
	bl ov12_02245508
	b _022445EA
_022445E2:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
_022445EA:
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl ov12_0223BDDC
_022445F4:
	ldr r1, _02244608 ; =0x00003154
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244608: .word 0x00003154
	thumb_func_end ov12_022445AC

	thumb_func_start ov12_0224460C
ov12_0224460C: ; 0x0224460C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	bl ov12_0223A7F0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	mov r2, #0
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov12_022632DC
	mov r0, #0
	str r0, [r4, #0x78]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0224460C

	thumb_func_start ov12_0224463C
ov12_0224463C: ; 0x0224463C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl ov12_0225682C
	add r5, r0, #0
	beq _0224466E
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r1, r0, #0
	cmp r5, #0xff
	bne _02244668
	add r0, r4, #0
	bl ov12_02245508
	b _0224466E
_02244668:
	ldr r0, _02244680 ; =0x000021A0
	sub r1, r5, #1
	strb r1, [r4, r0]
_0224466E:
	ldr r1, _02244684 ; =0x00003154
	mov r0, #1
	ldr r2, [r4, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02244680: .word 0x000021A0
_02244684: .word 0x00003154
	thumb_func_end ov12_0224463C

	thumb_func_start ov12_02244688
ov12_02244688: ; 0x02244688
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_0223A7E0
	mov r1, #4
	tst r0, r1
	beq _022446A6
	add r0, r4, #0
	bl ov12_02264288
_022446A6:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_02244688

	thumb_func_start ov12_022446AC
ov12_022446AC: ; 0x022446AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0224768C
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0223AB1C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	add r2, r0, #0
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #0x80
	tst r0, r1
	beq _022447A0
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r0, _022447AC ; =0x00002D8C
	add r1, r5, r6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022447A0
	lsl r1, r7, #0x18
	lsl r2, r2, #0x18
	mov r0, #5
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov12_0225264C
	cmp r0, #0x14
	bgt _0224473E
	bge _02244766
	cmp r0, #0
	bgt _02244738
	beq _02244776
	b _02244782
_02244738:
	cmp r0, #0xa
	beq _0224476E
	b _02244782
_0224473E:
	cmp r0, #0x50
	bgt _0224474A
	bge _02244756
	cmp r0, #0x28
	beq _0224475E
	b _02244782
_0224474A:
	cmp r0, #0xa0
	bne _02244782
	ldr r0, _022447B0 ; =0x0000215C
	mov r1, #2
	str r1, [r5, r0]
	b _02244786
_02244756:
	ldr r0, _022447B0 ; =0x0000215C
	mov r1, #4
	str r1, [r5, r0]
	b _02244786
_0224475E:
	ldr r0, _022447B0 ; =0x0000215C
	mov r1, #8
	str r1, [r5, r0]
	b _02244786
_02244766:
	ldr r0, _022447B0 ; =0x0000215C
	mov r1, #0x10
	str r1, [r5, r0]
	b _02244786
_0224476E:
	ldr r0, _022447B0 ; =0x0000215C
	mov r1, #0x20
	str r1, [r5, r0]
	b _02244786
_02244776:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02245508
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02244782:
	bl GF_AssertFail
_02244786:
	ldr r0, _022447B4 ; =0x00002D90
	add r1, r5, r6
	ldr r1, [r1, r0]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	ldr r1, _022447B0 ; =0x0000215C
	ldr r1, [r5, r1]
	bl ov12_02253178
	ldr r1, _022447B0 ; =0x0000215C
	str r0, [r5, r1]
	b _022447A8
_022447A0:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_02245508
_022447A8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022447AC: .word 0x00002D8C
_022447B0: .word 0x0000215C
_022447B4: .word 0x00002D90
	thumb_func_end ov12_022446AC

	thumb_func_start ov12_022447B8
ov12_022447B8: ; 0x022447B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x20
	ldr r0, _02244834 ; =0x00003044
	bne _022447EC
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02244838 ; =0x000003E5
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x10
	b _022447F6
_022447EC:
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02244838 ; =0x000003E5
	ldrb r4, [r1, r0]
_022447F6:
	cmp r4, #0
	bne _022447FE
	bl GF_AssertFail
_022447FE:
	add r0, r6, #0
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	cmp r1, r4
	bge _02244826
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0224483C ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02244826
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02244826:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244834: .word 0x00003044
_02244838: .word 0x000003E5
_0224483C: .word 0x00002D8C
	thumb_func_end ov12_022447B8

	thumb_func_start ov12_02244840
ov12_02244840: ; 0x02244840
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	ldr r0, [r5, #0x64]
	mov r4, #0xc0
	add r1, r0, #0
	mul r1, r4
	mov r0, #0xb5
	add r3, r5, r1
	lsl r0, r0, #6
	add r1, r4, #0
	ldrh r2, [r3, r0]
	add r1, #0xf9
	cmp r2, r1
	bne _022448DE
	ldr r1, [r5, #0x6c]
	add r2, r1, #0
	mul r2, r4
	add r1, r0, #0
	add r2, r5, r2
	add r1, #0x4c
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _022448DE
	add r0, #0x70
	ldr r1, [r3, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	bne _022448DE
	add r0, r6, #0
	bl ov12_0223B514
	mov r1, #0x10
	tst r0, r1
	bne _022448A6
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov12_0223B758
	bl sub_02006EFC
	b _022448AE
_022448A6:
	ldr r1, [r5, #0x64]
	add r0, r6, #0
	bl ov12_0223C0EC
_022448AE:
	cmp r0, #0
	beq _022448BA
	cmp r0, #1
	beq _022448BE
	cmp r0, #2
	beq _022448C2
_022448BA:
	mov r4, #0
	b _022448C4
_022448BE:
	mov r4, #0xa
	b _022448C4
_022448C2:
	mov r4, #0x1e
_022448C4:
	add r0, r6, #0
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	cmp r1, r4
	ble _022448E6
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
	b _022448E6
_022448DE:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
_022448E6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_02244840

	thumb_func_start ov12_022448EC
ov12_022448EC: ; 0x022448EC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r1, r0, #0
	ldr r0, _0224491C ; =0x000003DE
	add r2, r4, r0
	ldr r0, _02244920 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r0, r2, r0
	bl sub_02073354
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	nop
_0224491C: .word 0x000003DE
_02244920: .word 0x00003044
	thumb_func_end ov12_022448EC

	thumb_func_start ov12_02244924
ov12_02244924: ; 0x02244924
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r1, r0, #0
	ldr r3, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl ov12_02263D48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02244924

	thumb_func_start ov12_02244964
ov12_02244964: ; 0x02244964
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02263D6C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_02244964

	thumb_func_start ov12_02244990
ov12_02244990: ; 0x02244990
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	mov r1, #0
	bl ov12_02263DFC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov12_02244990

	thumb_func_start ov12_022449A8
ov12_022449A8: ; 0x022449A8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, _022449E4 ; =0x0000219C
	str r0, [sp]
	add r3, r4, r1
	ldrb r2, [r3, r2]
	add r0, r5, #0
	mov r3, #0
	bl ov12_0223AC20
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022449E4: .word 0x0000219C
	thumb_func_end ov12_022449A8

	thumb_func_start ov12_022449E8
ov12_022449E8: ; 0x022449E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252B68
	cmp r0, #0
	beq _02244A26
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_02245508
_02244A26:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_022449E8

	thumb_func_start ov12_02244A2C
ov12_02244A2C: ; 0x02244A2C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02263E34
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_02244A2C

	thumb_func_start ov12_02244A58
ov12_02244A58: ; 0x02244A58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02263E5C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_02244A58

	thumb_func_start ov12_02244A84
ov12_02244A84: ; 0x02244A84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02263E84
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_02244A84

	thumb_func_start ov12_02244AB0
ov12_02244AB0: ; 0x02244AB0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	bl ov12_02263EAC
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_02244AB0

	thumb_func_start ov12_02244ADC
ov12_02244ADC: ; 0x02244ADC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_02263ED4
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_02244ADC

	thumb_func_start ov12_02244AF4
ov12_02244AF4: ; 0x02244AF4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_02263EF0
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_02244AF4

	thumb_func_start ov12_02244B0C
ov12_02244B0C: ; 0x02244B0C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r1, r0, #0
	ldr r3, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl ov12_02263F0C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02244B0C

	thumb_func_start ov12_02244B4C
ov12_02244B4C: ; 0x02244B4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02263F8C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02244B4C

	thumb_func_start ov12_02244B78
ov12_02244B78: ; 0x02244B78
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	mov r2, #0x4e
	lsl r2, r2, #2
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl ov12_02253E04
	cmp r0, #0
	bne _02244BA8
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02244BA8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02244B78

	thumb_func_start ov12_02244BAC
ov12_02244BAC: ; 0x02244BAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r2, r0, #0
	cmp r2, #3
	beq _02244BD2
	cmp r2, #4
	beq _02244BFA
	b _02244C22
_02244BD2:
	mov r5, #0
	cmp r6, #0
	ble _02244C32
	mov r7, #1
_02244BDA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _02244C38 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _02244BF2
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02264038
_02244BF2:
	add r5, r5, #1
	cmp r5, r6
	blt _02244BDA
	b _02244C32
_02244BFA:
	mov r5, #0
	cmp r6, #0
	ble _02244C32
	mov r7, #1
_02244C02:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _02244C38 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _02244C1A
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02264038
_02244C1A:
	add r5, r5, #1
	cmp r5, r6
	blt _02244C02
	b _02244C32
_02244C22:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_02264038
_02244C32:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244C38: .word 0x00000195
	thumb_func_end ov12_02244BAC

	thumb_func_start ov12_02244C3C
ov12_02244C3C: ; 0x02244C3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl ov12_0223A7F0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r2, r0, #0
	cmp r2, #3
	beq _02244C62
	cmp r2, #4
	beq _02244C8A
	b _02244CB2
_02244C62:
	mov r5, #0
	cmp r6, #0
	ble _02244CC2
	mov r7, #1
_02244C6A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _02244CC8 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _02244C82
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02264054
_02244C82:
	add r5, r5, #1
	cmp r5, r6
	blt _02244C6A
	b _02244CC2
_02244C8A:
	mov r5, #0
	cmp r6, #0
	ble _02244CC2
	mov r7, #1
_02244C92:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _02244CC8 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _02244CAA
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02264054
_02244CAA:
	add r5, r5, #1
	cmp r5, r6
	blt _02244C92
	b _02244CC2
_02244CB2:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_02264054
_02244CC2:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244CC8: .word 0x00000195
	thumb_func_end ov12_02244C3C

	thumb_func_start ov12_02244CCC
ov12_02244CCC: ; 0x02244CCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #1
	mov r5, #0
	bl ov12_02245508
	ldr r0, [sp, #4]
	bl ov12_022454E8
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov12_022454E8
	str r0, [sp, #0x14]
	ldr r0, [sp]
	bl ov12_0223A7E0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov12_0224768C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mov r1, #8
	tst r0, r1
	bne _02244D1E
	ldr r0, [sp, #0xc]
	mov r1, #0x10
	tst r0, r1
	beq _02244E06
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223AB1C
	cmp r0, #0
	beq _02244E06
_02244D1E:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223A7F4
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223AB6C
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_0223A7F4
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223A7E8
	add r0, r7, #0
	mov r4, #0
	bl sub_02074640
	cmp r0, #0
	ble _02244D8C
_02244D4E:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02244D80
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _02244E74 ; =0x000001EE
	cmp r0, r1
	beq _02244D80
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r5, r5, r0
_02244D80:
	add r0, r7, #0
	add r4, r4, #1
	bl sub_02074640
	cmp r4, r0
	blt _02244D4E
_02244D8C:
	ldr r0, [sp, #0xc]
	sub r0, #0x4a
	str r0, [sp, #0xc]
	cmp r0, #1
	bhi _02244DAE
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223AB1C
	cmp r0, #0
	bne _02244DAE
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223AB0C
	cmp r0, #2
	beq _02244DF8
_02244DAE:
	ldr r0, [sp, #8]
	mov r4, #0
	bl sub_02074640
	cmp r0, #0
	ble _02244DF8
	ldr r7, _02244E74 ; =0x000001EE
_02244DBC:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02244DEC
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	cmp r0, r7
	beq _02244DEC
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r5, r5, r0
_02244DEC:
	ldr r0, [sp, #8]
	add r4, r4, #1
	bl sub_02074640
	cmp r4, r0
	blt _02244DBC
_02244DF8:
	cmp r5, #0
	bne _02244E6E
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	bl ov12_02245508
	b _02244E6E
_02244E06:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223A7F4
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223A7E8
	add r0, r7, #0
	mov r4, #0
	bl sub_02074640
	cmp r0, #0
	ble _02244E62
_02244E24:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02244E56
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _02244E74 ; =0x000001EE
	cmp r0, r1
	beq _02244E56
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r5, r5, r0
_02244E56:
	add r0, r7, #0
	add r4, r4, #1
	bl sub_02074640
	cmp r4, r0
	blt _02244E24
_02244E62:
	cmp r5, #0
	bne _02244E6E
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	bl ov12_02245508
_02244E6E:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02244E74: .word 0x000001EE
	thumb_func_end ov12_02244CCC

	thumb_func_start ov12_02244E78
ov12_02244E78: ; 0x02244E78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r6, #0
	bl ov12_022454E8
	mov ip, r0
	ldr r1, [r6, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r0, r6, r0
	add r5, r0, #1
	ldr r7, _02244EF0 ; =0x00002D58
	mov r4, #0
	mov r3, #1
	add r0, sp, #4
_02244EA2:
	ldrsb r1, [r5, r7]
	cmp r1, #0xc
	bge _02244EB0
	lsl r1, r4, #2
	sub r2, r3, #1
	add r4, r4, #1
	str r2, [r0, r1]
_02244EB0:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #8
	blt _02244EA2
	cmp r4, #0
	beq _02244EE0
	ldr r0, [sp]
	bl ov12_0223BD98
	add r1, r4, #0
	bl sub_020F2998
	lsl r1, r1, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	ldr r1, _02244EF4 ; =0x00002170
	add r0, #0x27
	str r0, [r6, r1]
	mov r0, #2
	ldr r2, [r6, r1]
	lsl r0, r0, #0x1e
	orr r0, r2
	str r0, [r6, r1]
	b _02244EE8
_02244EE0:
	add r0, r6, #0
	mov r1, ip
	bl ov12_02245508
_02244EE8:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02244EF0: .word 0x00002D58
_02244EF4: .word 0x00002170
	thumb_func_end ov12_02244E78

	thumb_func_start ov12_02244EF8
ov12_02244EF8: ; 0x02244EF8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	ldr r0, _02244F3C ; =0x00002DB8
	add r5, r2, #0
	add r6, r4, r0
	mov r0, #0xc0
	mul r5, r0
	lsl r0, r2, #1
	add r1, r4, r0
	ldrh r3, [r6, r5]
	ldr r0, _02244F40 ; =0x00003124
	strh r3, [r1, r0]
	mov r0, #0
	strh r0, [r6, r5]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02250C40
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02244F3C: .word 0x00002DB8
_02244F40: .word 0x00003124
	thumb_func_end ov12_02244EF8

	thumb_func_start ov12_02244F44
ov12_02244F44: ; 0x02244F44
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r1, r0, #0
	ldr r0, [r4, #0x64]
	ldr r2, _02244F84 ; =0x00003124
	lsl r0, r0, #1
	add r0, r4, r0
	ldrh r3, [r0, r2]
	cmp r3, #0
	beq _02244F78
	mov r0, #0x4a
	lsl r0, r0, #2
	str r3, [r4, r0]
	ldr r0, [r4, #0x64]
	mov r1, #0
	lsl r0, r0, #1
	add r0, r4, r0
	strh r1, [r0, r2]
	b _02244F7E
_02244F78:
	add r0, r4, #0
	bl ov12_02245508
_02244F7E:
	mov r0, #0
	pop {r4, pc}
	nop
_02244F84: .word 0x00003124
	thumb_func_end ov12_02244F44

	thumb_func_start ov12_02244F88
ov12_02244F88: ; 0x02244F88
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	mov r2, #0x4e
	lsl r2, r2, #2
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl ov12_02255634
	cmp r0, #0
	bne _02244FB8
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02244FB8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02244F88

	thumb_func_start ov12_02244FBC
ov12_02244FBC: ; 0x02244FBC
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_02264070
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_02244FBC

	thumb_func_start ov12_02244FD4
ov12_02244FD4: ; 0x02244FD4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0226408C
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_02244FD4

	thumb_func_start ov12_02244FF0
ov12_02244FF0: ; 0x02244FF0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_02264120
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_02244FF0

	thumb_func_start ov12_02245008
ov12_02245008: ; 0x02245008
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	mov r4, #0
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r5, #0
	bl ov12_0224768C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02255830
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov12_02255844
	str r0, [sp, #4]
	cmp r6, #0x41
	bne _0224505A
	ldr r0, [sp]
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	ldr r0, [sp, #4]
	cmp r1, r0
	bge _0224505A
	mov r4, #1
_0224505A:
	cmp r6, #0x67
	bne _02245072
	mov r0, #0xc0
	mul r0, r7
	add r2, r5, r0
	ldr r0, _022450A8 ; =0x00002D8C
	ldr r1, [r2, r0]
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r1, r0
	bne _02245072
	mov r4, #1
_02245072:
	cmp r4, #0
	beq _022450A0
	mov r1, #0xc0
	add r0, r7, #0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022450A8 ; =0x00002D8C
	ldr r3, [r2, r0]
	ldr r2, _022450AC ; =0x0000215C
	ldr r0, [r5, r2]
	add r0, r0, r3
	cmp r0, #0
	bgt _022450A0
	sub r0, r3, #1
	neg r0, r0
	str r0, [r5, r2]
	add r0, r2, #0
	add r0, #0x10
	ldr r0, [r5, r0]
	add r1, #0x40
	orr r0, r1
	add r2, #0x10
	str r0, [r5, r2]
_022450A0:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022450A8: .word 0x00002D8C
_022450AC: .word 0x0000215C
	thumb_func_end ov12_02245008

	thumb_func_start ov12_022450B0
ov12_022450B0: ; 0x022450B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0224768C
	add r1, r0, #0
	mov r0, #0xc0
	add r4, r1, #0
	mul r4, r0
	ldr r0, _02245140 ; =0x00002D8C
	add r2, r5, r4
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02245132
	ldr r0, _02245144 ; =0x0000219C
	add r2, r5, r1
	ldrb r2, [r2, r0]
	cmp r2, #6
	beq _02245132
	add r0, r6, #0
	bl ov12_0223A880
	add r6, r0, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_0206E540
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	add r2, r0, #0
	ldr r0, _02245148 ; =0x00002D67
	add r1, r5, r4
	ldrb r0, [r1, r0]
	cmp r0, #0x1e
	beq _0224513A
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_0225451C
	cmp r0, #0
	bne _0224513A
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
	b _0224513A
_02245132:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02245508
_0224513A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245140: .word 0x00002D8C
_02245144: .word 0x0000219C
_02245148: .word 0x00002D67
	thumb_func_end ov12_022450B0

	thumb_func_start ov12_0224514C
ov12_0224514C: ; 0x0224514C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_0224768C
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _022451A4 ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	bne _02245198
	mov r1, #0x1c
	mul r1, r0
	mov r0, #0xba
	add r1, r4, r1
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #8
	tst r0, r1
	beq _022451A0
_02245198:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_022451A0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022451A4: .word 0x00002DB0
	thumb_func_end ov12_0224514C

	thumb_func_start ov12_022451A8
ov12_022451A8: ; 0x022451A8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _022451E8
	mov r0, #0x4c
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	beq _022451F0
_022451E8:
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_022451F0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov12_022451A8

	thumb_func_start ov12_022451F8
ov12_022451F8: ; 0x022451F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02253DA0
	str r0, [r4, #0x6c]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_022451F8

	thumb_func_start ov12_02245228
ov12_02245228: ; 0x02245228
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	mov r2, #0x4e
	lsl r2, r2, #2
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r4, r2
	bl ov12_02257FA0
	cmp r0, #0
	bne _02245258
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02245258:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02245228

	thumb_func_start ov12_0224525C
ov12_0224525C: ; 0x0224525C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0226417C
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0224525C

	thumb_func_start ov12_02245288
ov12_02245288: ; 0x02245288
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02264228
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02245288

	thumb_func_start ov12_022452B4
ov12_022452B4: ; 0x022452B4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r7, #0
	bl ov12_02264268
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_022452B4

	thumb_func_start ov12_022452EC
ov12_022452EC: ; 0x022452EC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_0223A834
	cmp r0, #6
	bne _02245320
	ldr r0, [r5, #0x64]
	bl sub_02073D54
	cmp r0, #0x12
	bne _02245320
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02245508
_02245320:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_022452EC

	thumb_func_start ov12_02245324
ov12_02245324: ; 0x02245324
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	ldr r2, [r4, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _0224534E
	ldr r1, _02245388 ; =0x0000240C
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0224534E
	mov r4, #2
	b _02245350
_0224534E:
	mov r4, #1
_02245350:
	add r1, r5, #0
	add r1, #0xf0
	ldr r1, [r1]
	cmp r0, r1
	ble _0224536E
	mov r1, #1
	add r0, r5, #0
	mvn r1, r1
	bl ov12_02245508
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r1, r0, r4
	b _02245370
_0224536E:
	mov r1, #0
_02245370:
	add r0, r5, #0
	add r0, #0xf0
	str r1, [r0]
	ldr r1, _0224538C ; =0x00003154
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02245388: .word 0x0000240C
_0224538C: .word 0x00003154
	thumb_func_end ov12_02245324

	thumb_func_start ov12_02245390
ov12_02245390: ; 0x02245390
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r1, r0, #0
	ldr r0, _022453C8 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r2, r5, r0
	ldr r0, _022453CC ; =0x000003E2
	ldrb r0, [r2, r0]
	cmp r4, r0
	bne _022453C2
	add r0, r5, #0
	bl ov12_02245508
_022453C2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022453C8: .word 0x00003044
_022453CC: .word 0x000003E2
	thumb_func_end ov12_02245390

	thumb_func_start ov12_022453D0
ov12_022453D0: ; 0x022453D0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_022454E8
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_02245528
	add r1, r0, #0
	ldr r1, [r1]
	ldr r2, [sp]
	add r0, r6, #0
	bl sub_0206FBC4
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_022453D0

	thumb_func_start ov12_02245418
ov12_02245418: ; 0x02245418
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224768C
	add r2, r0, #0
	add r1, r4, #0
	ldr r3, _0224544C ; =0x0000219C
	add r4, r4, r2
	ldrb r3, [r4, r3]
	add r0, r5, #0
	bl ov12_0224EA14
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224544C: .word 0x0000219C
	thumb_func_end ov12_02245418

	thumb_func_start ov12_02245450
ov12_02245450: ; 0x02245450
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r5, #0
	bl ov12_022454E8
	add r7, r0, #0
	add r0, r5, #0
	bl ov12_022454E8
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_0224768C
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_0223A9AC
	add r1, r4, #0
	mov r2, #5
	bl sub_020734D0
	cmp r0, #0
	beq _02245494
	mov r0, #0x13
	lsl r0, r0, #4
	str r4, [r5, r0]
	b _0224549C
_02245494:
	mov r0, #0x13
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_0224549C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02245450

	thumb_func_start ov12_022454A0
ov12_022454A0: ; 0x022454A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_02245508
	add r0, r4, #0
	bl ov12_022454E8
	add r3, r0, #0
	mov r2, #1
	and r2, r3
	lsl r2, r2, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl ov12_022645C8
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_022454A0

	thumb_func_start ov12_022454CC
ov12_022454CC: ; 0x022454CC
	ldr r2, _022454E0 ; =0x00003154
	mov r0, #1
	ldr r3, [r1, r2]
	bic r3, r0
	mov r0, #1
	orr r0, r3
	str r0, [r1, r2]
	ldr r3, _022454E4 ; =ov12_0224EC74
	add r0, r1, #0
	bx r3
	.align 2, 0
_022454E0: .word 0x00003154
_022454E4: .word ov12_0224EC74
	thumb_func_end ov12_022454CC

	thumb_func_start ov12_022454E8
ov12_022454E8: ; 0x022454E8
	add r1, r0, #0
	add r1, #0xb4
	ldr r1, [r1]
	lsl r1, r1, #2
	add r2, r0, r1
	mov r1, #0x27
	lsl r1, r1, #8
	ldr r2, [r2, r1]
	add r1, r0, #0
	add r1, #0xb4
	ldr r1, [r1]
	add r0, #0xb4
	add r1, r1, #1
	str r1, [r0]
	add r0, r2, #0
	bx lr
	thumb_func_end ov12_022454E8

	thumb_func_start ov12_02245508
ov12_02245508: ; 0x02245508
	add r2, r0, #0
	add r2, #0xb4
	ldr r2, [r2]
	add r0, #0xb4
	add r1, r2, r1
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov12_02245508

	thumb_func_start ov12_02245518
ov12_02245518: ; 0x02245518
	ldr r3, _0224551C ; =ov12_0224EB9C
	bx r3
	.align 2, 0
_0224551C: .word ov12_0224EB9C
	thumb_func_end ov12_02245518

	thumb_func_start ov12_02245520
ov12_02245520: ; 0x02245520
	ldr r3, _02245524 ; =ov12_0224EBDC
	bx r3
	.align 2, 0
_02245524: .word ov12_0224EBDC
	thumb_func_end ov12_02245520

	thumb_func_start ov12_02245528
ov12_02245528: ; 0x02245528
	push {r4, lr}
	add r4, r1, #0
	cmp r2, #0x46
	bls _02245532
	b _0224582C
_02245532:
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224553E: ; jump table
	.short _022455CC - _0224553E - 2 ; case 0
	.short _022455D0 - _0224553E - 2 ; case 1
	.short _022455D6 - _0224553E - 2 ; case 2
	.short _022455DC - _0224553E - 2 ; case 3
	.short _022455E2 - _0224553E - 2 ; case 4
	.short _022455E8 - _0224553E - 2 ; case 5
	.short _022455EE - _0224553E - 2 ; case 6
	.short _022455F4 - _0224553E - 2 ; case 7
	.short _022455FC - _0224553E - 2 ; case 8
	.short _02245602 - _0224553E - 2 ; case 9
	.short _0224560A - _0224553E - 2 ; case 10
	.short _02245610 - _0224553E - 2 ; case 11
	.short _02245622 - _0224553E - 2 ; case 12
	.short _02245634 - _0224553E - 2 ; case 13
	.short _0224564A - _0224553E - 2 ; case 14
	.short _02245650 - _0224553E - 2 ; case 15
	.short _02245656 - _0224553E - 2 ; case 16
	.short _0224565C - _0224553E - 2 ; case 17
	.short _02245662 - _0224553E - 2 ; case 18
	.short _02245668 - _0224553E - 2 ; case 19
	.short _0224566E - _0224553E - 2 ; case 20
	.short _02245676 - _0224553E - 2 ; case 21
	.short _02245682 - _0224553E - 2 ; case 22
	.short _0224568A - _0224553E - 2 ; case 23
	.short _02245692 - _0224553E - 2 ; case 24
	.short _02245698 - _0224553E - 2 ; case 25
	.short _022456A0 - _0224553E - 2 ; case 26
	.short _022456A8 - _0224553E - 2 ; case 27
	.short _022456B0 - _0224553E - 2 ; case 28
	.short _022456B8 - _0224553E - 2 ; case 29
	.short _022456BE - _0224553E - 2 ; case 30
	.short _022456C4 - _0224553E - 2 ; case 31
	.short _022456CA - _0224553E - 2 ; case 32
	.short _022456D0 - _0224553E - 2 ; case 33
	.short _022456D6 - _0224553E - 2 ; case 34
	.short _022456DC - _0224553E - 2 ; case 35
	.short _022456E4 - _0224553E - 2 ; case 36
	.short _022456EC - _0224553E - 2 ; case 37
	.short _022456F4 - _0224553E - 2 ; case 38
	.short _022456FC - _0224553E - 2 ; case 39
	.short _02245702 - _0224553E - 2 ; case 40
	.short _0224570A - _0224553E - 2 ; case 41
	.short _02245718 - _0224553E - 2 ; case 42
	.short _02245726 - _0224553E - 2 ; case 43
	.short _0224572E - _0224553E - 2 ; case 44
	.short _02245734 - _0224553E - 2 ; case 45
	.short _02245742 - _0224553E - 2 ; case 46
	.short _02245750 - _0224553E - 2 ; case 47
	.short _02245760 - _0224553E - 2 ; case 48
	.short _02245770 - _0224553E - 2 ; case 49
	.short _02245782 - _0224553E - 2 ; case 50
	.short _02245788 - _0224553E - 2 ; case 51
	.short _0224578E - _0224553E - 2 ; case 52
	.short _02245794 - _0224553E - 2 ; case 53
	.short _022457A0 - _0224553E - 2 ; case 54
	.short _022457A6 - _0224553E - 2 ; case 55
	.short _022457AC - _0224553E - 2 ; case 56
	.short _022457B2 - _0224553E - 2 ; case 57
	.short _022457B8 - _0224553E - 2 ; case 58
	.short _022457BE - _0224553E - 2 ; case 59
	.short _022457C4 - _0224553E - 2 ; case 60
	.short _022457CC - _0224553E - 2 ; case 61
	.short _022457D2 - _0224553E - 2 ; case 62
	.short _022457D6 - _0224553E - 2 ; case 63
	.short _022457DC - _0224553E - 2 ; case 64
	.short _022457E2 - _0224553E - 2 ; case 65
	.short _022457F2 - _0224553E - 2 ; case 66
	.short _02245802 - _0224553E - 2 ; case 67
	.short _02245810 - _0224553E - 2 ; case 68
	.short _02245820 - _0224553E - 2 ; case 69
	.short _02245826 - _0224553E - 2 ; case 70
_022455CC:
	add r0, #0x2c
	pop {r4, pc}
_022455D0:
	ldr r0, _02245830 ; =0x0000214C
	add r0, r4, r0
	pop {r4, pc}
_022455D6:
	ldr r0, _02245834 ; =0x00002170
	add r0, r4, r0
	pop {r4, pc}
_022455DC:
	ldr r0, _02245838 ; =0x00002174
	add r0, r4, r0
	pop {r4, pc}
_022455E2:
	ldr r0, _0224583C ; =0x00002178
	add r0, r4, r0
	pop {r4, pc}
_022455E8:
	add r4, #0x88
	add r0, r4, #0
	pop {r4, pc}
_022455EE:
	ldr r0, _02245840 ; =0x0000213C
	add r0, r4, r0
	pop {r4, pc}
_022455F4:
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	pop {r4, pc}
_022455FC:
	ldr r0, _02245844 ; =0x00002158
	add r0, r4, r0
	pop {r4, pc}
_02245602:
	mov r0, #0x4d
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_0224560A:
	ldr r0, _02245848 ; =0x0000216C
	add r0, r4, r0
	pop {r4, pc}
_02245610:
	ldr r1, [r4, #0x64]
	bl ov12_0223AB1C
	mov r1, #0x6f
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_02245622:
	ldr r1, [r4, #0x6c]
	bl ov12_0223AB1C
	mov r1, #0x6f
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_02245634:
	add r1, r4, #0
	add r1, #0x94
	ldr r1, [r1]
	bl ov12_0223AB1C
	mov r1, #0x6f
	lsl r1, r1, #2
	add r1, r4, r1
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_0224564A:
	ldr r0, _0224584C ; =0x00002144
	add r0, r4, r0
	pop {r4, pc}
_02245650:
	add r4, #0x64
	add r0, r4, #0
	pop {r4, pc}
_02245656:
	add r4, #0x6c
	add r0, r4, #0
	pop {r4, pc}
_0224565C:
	add r4, #0x94
	add r0, r4, #0
	pop {r4, pc}
_02245662:
	add r4, #0x74
	add r0, r4, #0
	pop {r4, pc}
_02245668:
	add r4, #0x78
	add r0, r4, #0
	pop {r4, pc}
_0224566E:
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02245676:
	ldr r0, _02245850 ; =0x000030E4
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_02245682:
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	pop {r4, pc}
_0224568A:
	mov r0, #0x53
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_02245692:
	ldr r0, _02245854 ; =0x00003044
	add r0, r4, r0
	pop {r4, pc}
_02245698:
	mov r0, #0x15
	lsl r0, r0, #4
	add r0, r4, r0
	pop {r4, pc}
_022456A0:
	mov r0, #0x47
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_022456A8:
	mov r0, #0x12
	lsl r0, r0, #4
	add r0, r4, r0
	pop {r4, pc}
_022456B0:
	mov r0, #0xc1
	lsl r0, r0, #6
	add r0, r4, r0
	pop {r4, pc}
_022456B8:
	add r4, #0x98
	add r0, r4, #0
	pop {r4, pc}
_022456BE:
	ldr r0, _02245858 ; =0x00002154
	add r0, r4, r0
	pop {r4, pc}
_022456C4:
	add r4, #0x38
	add r0, r4, #0
	pop {r4, pc}
_022456CA:
	ldr r0, _0224585C ; =0x0000215C
	add r0, r4, r0
	pop {r4, pc}
_022456D0:
	ldr r1, _02245860 ; =0x00002420
	add r0, r0, r1
	pop {r4, pc}
_022456D6:
	add r4, #0x8c
	add r0, r4, #0
	pop {r4, pc}
_022456DC:
	mov r0, #0x49
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_022456E4:
	mov r0, #0x4a
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_022456EC:
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_022456F4:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_022456FC:
	ldr r0, _02245864 ; =0x00003104
	add r0, r4, r0
	pop {r4, pc}
_02245702:
	mov r0, #0x86
	lsl r0, r0, #6
	add r0, r4, r0
	pop {r4, pc}
_0224570A:
	mov r0, #0x7b
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02245718:
	mov r0, #0x81
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02245726:
	mov r0, #0x4e
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r4, pc}
_0224572E:
	ldr r0, _02245868 ; =0x00002150
	add r0, r4, r0
	pop {r4, pc}
_02245734:
	mov r0, #0x82
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02245742:
	mov r0, #0x82
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02245750:
	mov r0, #0xba
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r1, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02245760:
	mov r0, #0xba
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r1, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02245770:
	mov r0, #0xba
	lsl r0, r0, #2
	add r2, r4, r0
	add r4, #0x94
	ldr r1, [r4]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02245782:
	ldr r0, _0224586C ; =0x00003114
	add r0, r4, r0
	pop {r4, pc}
_02245788:
	ldr r0, _02245870 ; =0x00003118
	add r0, r4, r0
	pop {r4, pc}
_0224578E:
	ldr r1, _02245874 ; =0x0000240C
	add r0, r0, r1
	pop {r4, pc}
_02245794:
	ldr r0, _02245878 ; =0x0000304C
	add r1, r4, r0
	ldr r0, [r4, #0x64]
	lsl r0, r0, #2
	add r0, r1, r0
	pop {r4, pc}
_022457A0:
	ldr r0, _0224587C ; =0x00002148
	add r0, r4, r0
	pop {r4, pc}
_022457A6:
	ldr r1, _02245880 ; =0x00002414
	add r0, r0, r1
	pop {r4, pc}
_022457AC:
	add r4, #0x7c
	add r0, r4, #0
	pop {r4, pc}
_022457B2:
	ldr r0, _02245884 ; =0x00002160
	add r0, r4, r0
	pop {r4, pc}
_022457B8:
	ldr r0, _02245888 ; =0x00002164
	add r0, r4, r0
	pop {r4, pc}
_022457BE:
	ldr r1, _0224588C ; =0x0000241C
	add r0, r0, r1
	pop {r4, pc}
_022457C4:
	mov r0, #0x85
	lsl r0, r0, #6
	add r0, r4, r0
	pop {r4, pc}
_022457CC:
	add r4, #0xec
	add r0, r4, #0
	pop {r4, pc}
_022457D2:
	add r0, #0x44
	pop {r4, pc}
_022457D6:
	add r4, #0x68
	add r0, r4, #0
	pop {r4, pc}
_022457DC:
	add r4, #0x70
	add r0, r4, #0
	pop {r4, pc}
_022457E2:
	mov r0, #0xb6
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r1, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_022457F2:
	mov r0, #0x21
	lsl r0, r0, #4
	add r1, r4, r0
	sub r0, #0xf8
	ldr r0, [r4, r0]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02245802:
	mov r0, #0x21
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #6
	add r0, r1, r0
	pop {r4, pc}
_02245810:
	mov r0, #0xbb
	lsl r0, r0, #2
	add r2, r4, r0
	ldr r1, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	pop {r4, pc}
_02245820:
	ldr r0, _02245890 ; =0x00003150
	add r0, r4, r0
	pop {r4, pc}
_02245826:
	ldr r1, _02245894 ; =0x0000247C
	add r0, r0, r1
	pop {r4, pc}
_0224582C:
	mov r0, #0
	pop {r4, pc}
	.align 2, 0
_02245830: .word 0x0000214C
_02245834: .word 0x00002170
_02245838: .word 0x00002174
_0224583C: .word 0x00002178
_02245840: .word 0x0000213C
_02245844: .word 0x00002158
_02245848: .word 0x0000216C
_0224584C: .word 0x00002144
_02245850: .word 0x000030E4
_02245854: .word 0x00003044
_02245858: .word 0x00002154
_0224585C: .word 0x0000215C
_02245860: .word 0x00002420
_02245864: .word 0x00003104
_02245868: .word 0x00002150
_0224586C: .word 0x00003114
_02245870: .word 0x00003118
_02245874: .word 0x0000240C
_02245878: .word 0x0000304C
_0224587C: .word 0x00002148
_02245880: .word 0x00002414
_02245884: .word 0x00002160
_02245888: .word 0x00002164
_0224588C: .word 0x0000241C
_02245890: .word 0x00003150
_02245894: .word 0x0000247C
	thumb_func_end ov12_02245528

	thumb_func_start ov12_02245898
ov12_02245898: ; 0x02245898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd8
	add r4, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl ov12_0223A930
	str r0, [sp, #0x40]
	ldr r0, [r4]
	bl ov12_0223A7E0
	str r0, [sp, #0x3c]
	ldr r0, [r4, #4]
	mov r7, #0
	ldr r0, [r0, #0x74]
	ldr r5, [r4, #0x48]
	asr r1, r0, #1
	mov r0, #1
	and r0, r1
	str r0, [sp, #0x44]
	ldr r0, [r4]
	add r1, r7, #0
	bl ov12_0223A834
	cmp r5, r0
	bge _0224591A
	ldr r0, [sp, #0x44]
	lsl r0, r0, #2
	str r0, [sp, #0x28]
_022458D2:
	ldr r0, [r4]
	mov r1, #0
	add r2, r5, #0
	bl ov12_0223A880
	mov r1, #6
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #5
	bl sub_02077D88
	cmp r0, #0x33
	beq _0224591A
	add r0, r5, #0
	bl sub_020726C0
	add r2, r0, #0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	add r0, #0xa4
	ldr r0, [r0]
	tst r0, r2
	bne _0224591A
	ldr r0, [r4]
	mov r1, #0
	add r5, r5, #1
	bl ov12_0223A834
	cmp r5, r0
	blt _022458D2
_0224591A:
	ldr r0, [r4]
	mov r1, #0
	bl ov12_0223A834
	cmp r5, r0
	bne _0224592C
	mov r0, #0x26
	str r0, [r4, #0x28]
	b _02245948
_0224592C:
	ldr r0, [sp, #0x3c]
	mov r2, #2
	tst r0, r2
	beq _02245948
	ldr r0, [sp, #0x3c]
	mov r1, #0x40
	tst r0, r1
	bne _02245948
	ldr r1, [r4, #4]
	ldr r0, _02245C30 ; =0x0000219E
	ldrb r0, [r1, r0]
	cmp r0, r5
	bne _02245948
	add r7, r2, #0
_02245948:
	ldr r0, [r4, #0x28]
	cmp r0, #0x26
	bls _02245952
	bl _022463B6
_02245952:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224595E: ; jump table
	.short _022459AC - _0224595E - 2 ; case 0
	.short _02245B7E - _0224595E - 2 ; case 1
	.short _02245B96 - _0224595E - 2 ; case 2
	.short _02245BA8 - _0224595E - 2 ; case 3
	.short _02245BD4 - _0224595E - 2 ; case 4
	.short _02245BE8 - _0224595E - 2 ; case 5
	.short _02245C20 - _0224595E - 2 ; case 6
	.short _02245D28 - _0224595E - 2 ; case 7
	.short _02245D44 - _0224595E - 2 ; case 8
	.short _02245D62 - _0224595E - 2 ; case 9
	.short _02245E0A - _0224595E - 2 ; case 10
	.short _02245F4A - _0224595E - 2 ; case 11
	.short _02245EC8 - _0224595E - 2 ; case 12
	.short _02245F4A - _0224595E - 2 ; case 13
	.short _02245F6C - _0224595E - 2 ; case 14
	.short _02245FCE - _0224595E - 2 ; case 15
	.short _02246082 - _0224595E - 2 ; case 16
	.short _022460E2 - _0224595E - 2 ; case 17
	.short _022460B4 - _0224595E - 2 ; case 18
	.short _022460E2 - _0224595E - 2 ; case 19
	.short _022460FA - _0224595E - 2 ; case 20
	.short _0224611A - _0224595E - 2 ; case 21
	.short _02246162 - _0224595E - 2 ; case 22
	.short _02246186 - _0224595E - 2 ; case 23
	.short _02246272 - _0224595E - 2 ; case 24
	.short _022460E2 - _0224595E - 2 ; case 25
	.short _0224629A - _0224595E - 2 ; case 26
	.short _022460E2 - _0224595E - 2 ; case 27
	.short _022462D6 - _0224595E - 2 ; case 28
	.short _022460E2 - _0224595E - 2 ; case 29
	.short _022462FE - _0224595E - 2 ; case 30
	.short _022461BE - _0224595E - 2 ; case 31
	.short _022460E2 - _0224595E - 2 ; case 32
	.short _022461E8 - _0224595E - 2 ; case 33
	.short _0224620A - _0224595E - 2 ; case 34
	.short _0224625A - _0224595E - 2 ; case 35
	.short _02246364 - _0224595E - 2 ; case 36
	.short _0224637A - _0224595E - 2 ; case 37
	.short _022463A0 - _0224595E - 2 ; case 38
_022459AC:
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	mov r2, #5
	bl sub_02077D88
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x20]
	bne _02245A0A
	ldr r1, [r4, #4]
	ldr r0, _02245C34 ; =0x00002E4C
	ldr r2, _02245C38 ; =0x00002FCC
	ldr r0, [r1, r0]
	ldr r1, [r1, r2]
	add r0, r0, r1
	bne _02245A0A
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02245A0A
	ldr r1, [r4, #4]
	ldr r0, _02245C3C ; =0x00003144
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02245A0A
	ldr r0, _02245C40 ; =0x00000469
	bl sub_02005D48
	ldr r1, [r4, #4]
	ldr r0, _02245C3C ; =0x00003144
	mov r2, #1
	str r2, [r1, r0]
	ldr r0, [r4]
	mov r1, #2
	bl ov12_0223BD3C
_02245A0A:
	mov r0, #0
	str r0, [sp, #0x38]
	mov r1, #1
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	mov r1, #0xa3
	bl sub_0206E540
	cmp r0, #0
	beq _02245A30
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0x64
	bne _02245A32
_02245A30:
	b _02245B3E
_02245A32:
	ldr r0, [r4, #4]
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl sub_020726C0
	ldr r1, [sp, #0x44]
	lsl r2, r1, #2
	ldr r1, [sp, #0x24]
	add r1, r1, r2
	add r1, #0xa4
	ldr r1, [r1]
	tst r0, r1
	beq _02245A54
	ldr r0, [sp, #0x24]
	add r0, #0x9c
	ldr r0, [r0]
	str r0, [sp, #0x38]
_02245A54:
	ldr r0, [sp, #0x18]
	cmp r0, #0x33
	bne _02245A68
	ldr r0, [sp, #0x24]
	add r0, #0xa0
	str r0, [sp, #0x24]
	ldr r1, [r0]
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	str r0, [sp, #0x38]
_02245A68:
	ldr r0, [sp, #0x18]
	cmp r0, #0x42
	bne _02245A7C
	ldr r1, [sp, #0x38]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl sub_020F2BA4
	str r0, [sp, #0x38]
_02245A7C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02245A90
	ldr r1, [sp, #0x38]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl sub_020F2BA4
	str r0, [sp, #0x38]
_02245A90:
	ldr r0, [r4]
	add r1, r6, #0
	bl ov12_022568B0
	cmp r0, #0
	bne _02245AD2
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_0206E540
	ldr r1, _02245C44 ; =0x020F5670
	ldrb r1, [r1]
	cmp r1, r0
	beq _02245ABE
	ldr r1, [sp, #0x38]
	mov r0, #0xaa
	mul r0, r1
	mov r1, #0x64
	bl sub_020F2BA4
	str r0, [sp, #0x38]
	b _02245ACC
_02245ABE:
	ldr r1, [sp, #0x38]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl sub_020F2BA4
	str r0, [sp, #0x38]
_02245ACC:
	mov r1, #2
	add r0, sp, #0xb4
	strh r1, [r0, #2]
_02245AD2:
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_0206E540
	str r0, [sp, #0x4c]
	add r0, r6, #0
	bl sub_0206FCDC
	ldr r1, [sp, #0x4c]
	sub r0, r1, r0
	str r0, [r4, #0x3c]
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x38]
	add r2, r1, r0
	str r2, [sp, #0x4c]
	ldr r3, [r4, #4]
	ldr r0, _02245C48 ; =0x0000219C
	add r1, r3, r7
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _02245B08
	mov r0, #0xc0
	mul r0, r7
	add r1, r3, r0
	ldr r0, _02245C4C ; =0x00002DA4
	str r2, [r1, r0]
_02245B08:
	add r0, r6, #0
	mov r1, #8
	add r2, sp, #0x4c
	bl sub_0206EC40
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x74]
	str r0, [sp, #0x1c]
	add r6, r1, #0
	mov r0, #0xc0
	mul r6, r0
	ldr r0, [r4]
	add r1, r7, #0
	bl ov12_0223A7F4
	ldr r2, [sp, #0x1c]
	mov r3, #0xb5
	add r6, r2, r6
	lsl r3, r3, #6
	ldrh r2, [r6, r3]
	add r3, #0x26
	ldrb r3, [r6, r3]
	add r1, r5, #0
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1b
	bl ov12_022463E8
_02245B3E:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _02245B76
	mov r1, #0x11
	add r0, sp, #0xb4
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xbc]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #7
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245B76:
	mov r0, #0x25
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245B7E:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _02245C2A
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245B96:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02245C2A
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245BA8:
	ldr r1, [r4, #4]
	ldr r0, _02245C48 ; =0x0000219C
	add r2, r1, r7
	ldrb r0, [r2, r0]
	cmp r5, r0
	bne _02245BCC
	ldr r0, [r4]
	ldr r3, [r4, #0x3c]
	add r2, r7, #0
	bl ov12_02263564
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245BCC:
	mov r0, #5
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245BD4:
	ldr r0, [r4, #4]
	bl ov12_0224ED48
	cmp r0, #0
	beq _02245C2A
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245BE8:
	add r0, r6, #0
	bl sub_02070DB4
	cmp r0, #0
	beq _02245C18
	ldr r1, [r4, #4]
	ldr r0, _02245C48 ; =0x0000219C
	add r2, r1, r7
	ldrb r0, [r2, r0]
	cmp r5, r0
	bne _02245C10
	ldr r0, [r4]
	add r2, r7, #0
	mov r3, #8
	bl ov12_02263848
	ldr r0, [r4]
	add r1, r7, #0
	bl ov12_0226399C
_02245C10:
	mov r0, #6
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245C18:
	mov r0, #0x25
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245C20:
	ldr r0, [r4, #4]
	bl ov12_0224ED48
	cmp r0, #0
	bne _02245C2C
_02245C2A:
	b _022463B6
_02245C2C:
	ldr r2, _02245C50 ; =0x0226C354
	b _02245C54
	.align 2, 0
_02245C30: .word 0x0000219E
_02245C34: .word 0x00002E4C
_02245C38: .word 0x00002FCC
_02245C3C: .word 0x00003144
_02245C40: .word 0x00000469
_02245C44: .word 0x020F5670
_02245C48: .word 0x0000219C
_02245C4C: .word 0x00002DA4
_02245C50: .word 0x0226C354
_02245C54:
	add r3, sp, #0x9c
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0206E540
	str r0, [sp, #0x34]
	mov r0, #5
	mov r1, #0x18
	bl sub_0201AA8C
	mov r1, #0x5f
	ldr r2, [r4, #4]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #4]
	ldr r0, [r0, r1]
	mov r1, #0
	str r0, [sp, #0x30]
	str r1, [sp, #0x50]
_02245C88:
	lsl r2, r1, #2
	add r1, sp, #0x9c
	ldr r1, [r1, r2]
	add r0, r6, #0
	mov r2, #0
	bl sub_0206E540
	ldr r1, [sp, #0x50]
	lsl r2, r1, #2
	ldr r1, [sp, #0x30]
	str r0, [r1, r2]
	ldr r0, [sp, #0x50]
	add r1, r0, #1
	str r1, [sp, #0x50]
	cmp r1, #6
	blt _02245C88
	ldr r0, [r4]
	bl ov12_0223AB60
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	bl sub_0206FE90
	add r0, r6, #0
	mov r1, #0
	bl sub_02097F0C
	add r0, r6, #0
	bl sub_0206E27C
	ldr r1, [r4, #4]
	ldr r0, _02246010 ; =0x0000219C
	add r2, r1, r7
	ldrb r3, [r2, r0]
	cmp r5, r3
	bne _02245CDE
	ldr r0, [r4]
	add r2, r7, #0
	bl ov12_0224EA14
_02245CDE:
	add r0, r5, #0
	bl sub_020726C0
	ldr r1, [r4, #4]
	ldr r2, _02246014 ; =0x00003109
	ldrb r3, [r1, r2]
	orr r0, r3
	strb r0, [r1, r2]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r7, #0
	bl ov12_02263A1C
	mov r1, #3
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0x11
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xbc]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #7
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245D28:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	beq _02245D38
	b _022463B6
_02245D38:
	mov r0, #8
	str r0, [r4, #0x28]
	mov r0, #0
	add sp, #0xd8
	str r0, [r4, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
_02245D44:
	ldr r0, [r4, #4]
	add r1, r0, r7
	ldr r0, _02246010 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _02245D5A
	ldr r0, [r4]
	add r1, r4, #0
	add r2, r6, #0
	bl ov12_02248228
_02245D5A:
	mov r0, #9
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245D62:
	ldr r0, [r4]
	bl ov12_0223A7D4
	add r6, r0, #0
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223A7D8
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223A938
	add r7, r0, #0
	ldr r0, _02246018 ; =0x04000008
	mov r2, #3
	ldrh r1, [r0]
	bic r1, r2
	mov r2, #2
	orr r1, r2
	strh r1, [r0]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201BB68
	mov r0, #2
	mov r1, #0
	bl sub_0201BB68
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223C224
	mov r0, #5
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	mov r3, #0
	bl sub_0200E398
	bl sub_0200E3D8
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #0x26
	mov r3, #5
	bl sub_02003200
	mov r0, #7
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #0x11
	bl sub_0201D40C
	add r0, r5, #0
	mov r1, #0xff
	bl sub_0201D978
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #8
	bl sub_0200E580
	mov r0, #0xa
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245E0A:
	ldr r3, _0224601C ; =0x0226C36C
	add r2, sp, #0x84
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _02246020 ; =0x0226C384
	add r2, sp, #0x6c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223A7D8
	add r7, r0, #0
	mov r0, #0x5f
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x50]
_02245E42:
	ldr r2, _02246024 ; =0x000003B3
	add r1, sp, #0xb4
	strh r2, [r1, #2]
	mov r2, #4
	strb r2, [r1, #1]
	lsl r2, r0, #2
	add r1, sp, #0x84
	ldr r1, [r1, r2]
	lsl r0, r0, #4
	str r1, [sp, #0xb8]
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r1, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldr r2, [sp, #0x40]
	add r1, r7, #0
	add r3, sp, #0xb4
	bl ov12_0223C4E8
	mov r1, #0xed
	ldr r5, [sp, #0x50]
	lsl r1, r1, #2
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #7
	strb r1, [r0, #1]
	lsl r2, r5, #2
	add r1, sp, #0x6c
	ldr r1, [r1, r2]
	add r0, r6, #0
	mov r2, #0
	bl sub_0206E540
	ldr r1, [sp, #0x2c]
	lsl r2, r5, #2
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x40]
	sub r0, r0, r1
	str r0, [sp, #0xb8]
	mov r0, #2
	str r0, [sp, #0xd0]
	mov r0, #0x50
	str r0, [sp]
	lsl r0, r5, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, r7, #0
	add r3, sp, #0xb4
	bl ov12_0223C4E8
	ldr r0, [sp, #0x50]
	add r0, r0, #1
	str r0, [sp, #0x50]
	cmp r0, #6
	blt _02245E42
	mov r0, #0xb
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245EC8:
	ldr r3, _02246028 ; =0x0226C33C
	add r2, sp, #0x54
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223A7D8
	mov r1, #0x24
	str r1, [sp]
	mov r1, #0x60
	str r1, [sp, #4]
	mov r1, #0xf
	mov r2, #0x50
	mov r3, #0
	add r7, r0, #0
	bl sub_0201DA74
	mov r1, #0
	str r1, [sp, #0x50]
	add r5, sp, #0xb4
_02245EFA:
	ldr r0, _0224602C ; =0x000003B5
	lsl r2, r1, #2
	add r1, sp, #0x54
	strh r0, [r5, #2]
	mov r0, #7
	ldr r1, [r1, r2]
	strb r0, [r5, #1]
	add r0, r6, #0
	mov r2, #0
	bl sub_0206E540
	str r0, [sp, #0xb8]
	mov r0, #3
	str r0, [sp, #0xd0]
	mov r0, #0x48
	str r0, [sp]
	ldr r0, [sp, #0x50]
	ldr r2, [sp, #0x40]
	lsl r0, r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0x24
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r1, r7, #0
	add r3, r5, #0
	bl ov12_0223C4E8
	ldr r0, [sp, #0x50]
	add r1, r0, #1
	str r1, [sp, #0x50]
	cmp r1, #6
	blt _02245EFA
	mov r0, #0xd
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245F4A:
	ldr r0, _02246030 ; =0x021D110C
	ldr r1, [r0, #0x48]
	ldr r0, _02246034 ; =0x00000C03
	tst r0, r1
	bne _02245F5C
	bl sub_02025358
	cmp r0, #0
	beq _02245FEA
_02245F5C:
	ldr r0, _02246038 ; =0x000005DC
	bl sub_0200604C
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245F6C:
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223A7D8
	add r6, r0, #0
	mov r1, #0
	bl sub_0200E5D4
	add r0, r6, #0
	bl sub_0201D520
	ldr r1, _02246018 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	mov r1, #0
	bl sub_0201BB68
	mov r0, #2
	mov r1, #1
	bl sub_0201BB68
	ldr r0, [r4]
	mov r1, #0
	bl ov12_0223C224
	ldr r0, [r4, #4]
	add r1, r0, r7
	ldr r0, _02246010 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _02245FBA
	ldr r0, [r4]
	add r1, r4, #0
	bl ov12_022484D4
_02245FBA:
	mov r0, #0x5f
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0201AB0C
	mov r0, #0xf
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245FCE:
	ldr r0, [r4]
	bl ov12_0223A7D4
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x38
	add r2, sp, #0x48
	bl sub_02071534
	cmp r0, #0
	beq _02245FF4
	ldr r1, _0224603C ; =0x0000FFFE
	cmp r0, r1
	bne _02245FEC
_02245FEA:
	b _022463B6
_02245FEC:
	add r1, r1, #1
	cmp r0, r1
	beq _02245FFC
	b _0224600A
_02245FF4:
	mov r0, #3
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02245FFC:
	add r0, sp, #0x48
	ldrh r0, [r0]
	add sp, #0xd8
	str r0, [r4, #0x40]
	mov r0, #0x10
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224600A:
	ldr r1, [r4, #4]
	ldr r0, _02246010 ; =0x0000219C
	b _02246040
	.align 2, 0
_02246010: .word 0x0000219C
_02246014: .word 0x00003109
_02246018: .word 0x04000008
_0224601C: .word 0x0226C36C
_02246020: .word 0x0226C384
_02246024: .word 0x000003B3
_02246028: .word 0x0226C33C
_0224602C: .word 0x000003B5
_02246030: .word 0x021D110C
_02246034: .word 0x00000C03
_02246038: .word 0x000005DC
_0224603C: .word 0x0000FFFE
_02246040:
	add r2, r1, r7
	ldrb r3, [r2, r0]
	cmp r5, r3
	bne _02246050
	ldr r0, [r4]
	add r2, r7, #0
	bl ov12_0224EA14
_02246050:
	mov r1, #4
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	add r0, sp, #0x48
	ldrh r0, [r0]
	str r0, [sp, #0xbc]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x24
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246082:
	ldr r1, _022463BC ; =0x0000049A
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0x40]
	str r0, [sp, #0xbc]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022460B4:
	ldr r1, _022463C0 ; =0x0000049B
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #2
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022460E2:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _02246126
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022460FA:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r3, _022463C4 ; =0x0000049C
	add r2, r7, #0
	bl ov12_0226337C
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224611A:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov12_0225682C
	cmp r0, #0
	bne _02246128
_02246126:
	b _022463B6
_02246128:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _0224613C
	mov r0, #0x1f
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224613C:
	ldr r1, _022463C8 ; =0x0000049F
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x16
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246162:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _02246268
	ldr r0, [r4]
	ldr r2, [r4, #0x40]
	add r1, r7, #0
	add r3, r5, #0
	bl ov12_02263D14
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246186:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _0224619A
	mov r0, #0x1f
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224619A:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _02246268
	ldr r1, [r4, #4]
	lsl r0, r7, #8
	add r1, r1, r0
	mov r0, #0x23
	lsl r0, r0, #8
	ldrb r0, [r1, r0]
	add sp, #0xd8
	sub r0, r0, #1
	str r0, [r4, #0x44]
	mov r0, #0x18
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022461BE:
	mov r1, #0x4a
	lsl r1, r1, #4
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022461E8:
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #0x40]
	ldr r3, _022463CC ; =0x000004A1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r7, #0
	bl ov12_0226337C
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224620A:
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _02246268
	ldr r0, [r4, #4]
	add r1, r7, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _0224622A
	mov r0, #0x10
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224622A:
	ldr r1, _022463D0 ; =0x000004A4
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0x40]
	str r0, [sp, #0xbc]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x23
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224625A:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	beq _0224626A
_02246268:
	b _022463B6
_0224626A:
	mov r0, #0xf
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246272:
	ldr r1, _022463D4 ; =0x000004A5
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224629A:
	ldr r1, _022463D8 ; =0x000004A6
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r1, [r4, #0x44]
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0206E540
	str r0, [sp, #0xbc]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022462D6:
	ldr r1, _022463DC ; =0x000004A7
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x28]
	add sp, #0xd8
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022462FE:
	ldr r1, _022463E0 ; =0x000004A8
	add r0, sp, #0xb4
	strh r1, [r0, #2]
	mov r1, #0xa
	strb r1, [r0, #1]
	lsl r0, r5, #8
	orr r0, r7
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0x40]
	str r0, [sp, #0xbc]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	add r2, sp, #0xb4
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0
	str r0, [sp, #0x50]
	ldr r1, [r4, #0x44]
	add r0, r6, #0
	add r1, #0x3e
	add r2, sp, #0x50
	bl sub_0206EC40
	ldr r1, [r4, #0x40]
	ldr r2, [r4, #0x44]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	bl sub_020714E8
	ldr r1, [r4, #4]
	ldr r0, _022463E4 ; =0x0000219C
	add r2, r1, r7
	ldrb r3, [r2, r0]
	cmp r5, r3
	bne _0224635C
	ldr r0, [r4]
	add r2, r7, #0
	bl ov12_0224EA14
_0224635C:
	mov r0, #0x24
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246364:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _022463B6
	mov r0, #0xf
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224637A:
	add r0, r5, #0
	bl sub_020726C0
	ldr r1, [sp, #0x44]
	ldr r2, [r4, #4]
	mov r3, #0
	mvn r3, r3
	add r2, #0xa4
	lsl r1, r1, #2
	ldr r6, [r2, r1]
	eor r0, r3
	and r0, r6
	str r0, [r2, r1]
	add r0, r5, #1
	str r0, [r4, #0x48]
	mov r0, #0
	add sp, #0xd8
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022463A0:
	mov r0, #0x5e
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_0201AB0C
	ldr r0, [sp, #0x14]
	bl sub_0200E390
_022463B6:
	add sp, #0xd8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022463BC: .word 0x0000049A
_022463C0: .word 0x0000049B
_022463C4: .word 0x0000049C
_022463C8: .word 0x0000049F
_022463CC: .word 0x000004A1
_022463D0: .word 0x000004A4
_022463D4: .word 0x000004A5
_022463D8: .word 0x000004A6
_022463DC: .word 0x000004A7
_022463E0: .word 0x000004A8
_022463E4: .word 0x0000219C
	thumb_func_end ov12_02245898

	thumb_func_start ov12_022463E8
ov12_022463E8: ; 0x022463E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r2, #0
	add r1, r3, #0
	mov r2, #5
	mov r4, #0
	bl sub_0206FA6C
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02074644
	mov r1, #6
	add r2, r4, #0
	str r0, [sp, #0x14]
	bl sub_0206E540
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	mov r1, #1
	mov r2, #5
	bl sub_02077D88
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #2
	mov r2, #5
	bl sub_02077D88
	add r6, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, sp, #0x20
	str r0, [sp, #0xc]
_02246436:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	add r1, #0xd
	mov r2, #0
	bl sub_0206E540
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	add r0, r1, #0
	ldrb r1, [r0]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #6
	blt _02246436
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x20
	str r0, [sp, #0x10]
_0224646C:
	ldr r1, [sp, #0x18]
	ldr r0, _022465A4 ; =0x000001FE
	cmp r1, r0
	blo _02246476
	b _0224659A
_02246476:
	ldr r0, [sp, #8]
	cmp r0, #5
	bhi _02246522
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02246488: ; jump table
	.short _02246494 - _02246488 - 2 ; case 0
	.short _022464AC - _02246488 - 2 ; case 1
	.short _022464C4 - _02246488 - 2 ; case 2
	.short _022464DC - _02246488 - 2 ; case 3
	.short _022464F4 - _02246488 - 2 ; case 4
	.short _0224650C - _02246488 - 2 ; case 5
_02246494:
	add r0, r7, #0
	mov r1, #0xa
	bl sub_0206FAA8
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x7a
	bne _02246522
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02246522
_022464AC:
	add r0, r7, #0
	mov r1, #0xb
	bl sub_0206FAA8
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x75
	bne _02246522
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02246522
_022464C4:
	add r0, r7, #0
	mov r1, #0xc
	bl sub_0206FAA8
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x76
	bne _02246522
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02246522
_022464DC:
	add r0, r7, #0
	mov r1, #0xd
	bl sub_0206FAA8
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x79
	bne _02246522
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02246522
_022464F4:
	add r0, r7, #0
	mov r1, #0xe
	bl sub_0206FAA8
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x77
	bne _02246522
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _02246522
_0224650C:
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0206FAA8
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r5, #0x78
	bne _02246522
	add r0, r4, r6
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_02246522:
	ldr r0, [sp, #4]
	bl sub_020726C0
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl sub_020719F8
	cmp r0, #0
	beq _0224653C
	lsl r0, r4, #0x11
	asr r4, r0, #0x10
_0224653C:
	cmp r5, #0x32
	bne _02246544
	lsl r0, r4, #0x11
	asr r4, r0, #0x10
_02246544:
	ldr r0, [sp, #0x18]
	ldr r1, _022465A4 ; =0x000001FE
	add r0, r0, r4
	cmp r0, r1
	ble _02246556
	sub r0, r0, r1
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_02246556:
	ldr r0, [sp, #0x10]
	ldrb r0, [r0]
	add r0, r0, r4
	cmp r0, #0xff
	ble _02246568
	sub r0, #0xff
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
_02246568:
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x10]
	ldrb r0, [r0]
	add r1, r0, r4
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #8]
	add r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r1, #0xd
	bl sub_0206EC40
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #6
	bge _0224659A
	b _0224646C
_0224659A:
	add r0, r7, #0
	bl sub_0206FBB0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022465A4: .word 0x000001FE
	thumb_func_end ov12_022463E8

	thumb_func_start ov12_022465A8
ov12_022465A8: ; 0x022465A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x158
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	bl ov12_0223A930
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl ov12_0223A938
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223A8D4
	mov r7, #1
	str r0, [sp, #0x24]
	add r0, r7, #0
	ldr r6, [r4, #4]
	bl sub_020726C0
	ldr r1, _02246900 ; =0x00003108
	ldrb r1, [r6, r1]
	tst r0, r1
	beq _022465DC
	mov r7, #3
_022465DC:
	ldr r0, [r4, #0x28]
	cmp r0, #0x21
	bls _022465E6
	bl _02247216
_022465E6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022465F2: ; jump table
	.short _02246636 - _022465F2 - 2 ; case 0
	.short _022466F8 - _022465F2 - 2 ; case 1
	.short _02246744 - _022465F2 - 2 ; case 2
	.short _02246772 - _022465F2 - 2 ; case 3
	.short _0224679C - _022465F2 - 2 ; case 4
	.short _022467B0 - _022465F2 - 2 ; case 5
	.short _022467E4 - _022465F2 - 2 ; case 6
	.short _02246806 - _022465F2 - 2 ; case 7
	.short _02246826 - _022465F2 - 2 ; case 8
	.short _0224686C - _022465F2 - 2 ; case 9
	.short _0224688A - _022465F2 - 2 ; case 10
	.short _02246A18 - _022465F2 - 2 ; case 11
	.short _02246A66 - _022465F2 - 2 ; case 12
	.short _02246AFA - _022465F2 - 2 ; case 13
	.short _02246B7A - _022465F2 - 2 ; case 14
	.short _02246BC4 - _022465F2 - 2 ; case 15
	.short _02246BF4 - _022465F2 - 2 ; case 16
	.short _02246C84 - _022465F2 - 2 ; case 17
	.short _02246CAA - _022465F2 - 2 ; case 18
	.short _02246CEA - _022465F2 - 2 ; case 19
	.short _02246D42 - _022465F2 - 2 ; case 20
	.short _02246E2A - _022465F2 - 2 ; case 21
	.short _02246E78 - _022465F2 - 2 ; case 22
	.short _02246E78 - _022465F2 - 2 ; case 23
	.short _02246E78 - _022465F2 - 2 ; case 24
	.short _0224702E - _022465F2 - 2 ; case 25
	.short _02247094 - _022465F2 - 2 ; case 26
	.short _022470D0 - _022465F2 - 2 ; case 27
	.short _02247116 - _022465F2 - 2 ; case 28
	.short _02247146 - _022465F2 - 2 ; case 29
	.short _0224715E - _022465F2 - 2 ; case 30
	.short _02247174 - _022465F2 - 2 ; case 31
	.short _022471AC - _022465F2 - 2 ; case 32
	.short _022471DC - _022465F2 - 2 ; case 33
_02246636:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _022466B0
	mov r0, #3
	str r0, [sp, #0x138]
	mov r0, #5
	str r0, [sp, #0x134]
	ldr r0, _02246904 ; =0x00004E20
	add r0, r7, r0
	str r0, [sp, #0x13c]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x140]
	ldr r0, [r4]
	bl ov12_0223A8E4
	str r0, [sp, #0x14c]
	ldr r0, [r4]
	bl ov12_0223A938
	str r0, [sp, #0x150]
	mov r0, #1
	str r0, [sp, #0x144]
	mov r0, #0
	str r0, [sp, #0x148]
	ldr r0, [r4]
	str r0, [sp, #0x154]
	ldr r0, [r4]
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _02246686
	cmp r7, #1
	bne _02246680
	mov r0, #0x10
	str r0, [sp, #0x130]
	b _0224668A
_02246680:
	mov r0, #0x11
	str r0, [sp, #0x130]
	b _0224668A
_02246686:
	mov r0, #0xf
	str r0, [sp, #0x130]
_0224668A:
	add r0, sp, #0x130
	bl ov07_02233DB8
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0x28]
	ldr r0, _02246908 ; =0x0000070A
	bl sub_0200604C
	ldr r2, [r4]
	ldr r0, _0224690C ; =0x00002422
	ldrh r1, [r2, r0]
	add r1, r1, #1
	strh r1, [r2, r0]
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov07_02232F58
	b _022466F0
_022466B0:
	ldr r0, [r4]
	mov r1, #0
	bl ov12_0223A7E8
	add r5, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	bl sub_02233F20
	cmp r0, #4
	beq _022466F0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0]
	add r5, #0x88
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	str r0, [r4, #0x28]
	ldr r0, _02246908 ; =0x0000070A
	bl sub_0200604C
	ldr r2, [r4]
	ldr r0, _0224690C ; =0x00002422
	ldrh r1, [r2, r0]
	add r1, r1, #1
	strh r1, [r2, r0]
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov07_02232F58
_022466F0:
	mov r0, #0
	add sp, #0x158
	str r0, [r4, #0x40]
	pop {r3, r4, r5, r6, r7, pc}
_022466F8:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02232F60
	cmp r0, #0
	bne _02246788
	ldr r0, [r4]
	bl ov12_0223A7E0
	mov r1, #1
	tst r0, r1
	beq _02246728
	ldr r0, _02246910 ; =0x000005E6
	mov r1, #0x75
	bl sub_0200602C
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov07_02232F58
	mov r0, #0x1a
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246728:
	ldr r0, _02246914 ; =0x00000708
	mov r1, #0x75
	bl sub_0200602C
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov07_02232F58
	mov r0, #2
	str r0, [r4, #0x28]
	mov r0, #0x17
	add sp, #0x158
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_02246744:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02246788
	ldr r0, [r4]
	ldr r2, [r4, #0x2c]
	add r1, r7, #0
	bl ov12_022628A0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov12_02247228
	str r0, [r4, #0x38]
	cmp r0, #4
	bge _02246766
	b _02246768
_02246766:
	mov r0, #3
_02246768:
	str r0, [r4, #0x3c]
	mov r0, #3
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246772:
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02232F60
	cmp r0, #0
	bne _02246788
	ldr r0, [r4, #4]
	bl ov12_0224ED48
	cmp r0, #0
	bne _0224678C
_02246788:
	bl _02247216
_0224678C:
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov07_02232F58
	mov r0, #4
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224679C:
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02232F60
	cmp r0, #0
	bne _0224689E
	mov r0, #5
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022467B0:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _022467D0
	ldr r0, [r4, #0x38]
	cmp r0, #4
	bne _022467C8
	mov r0, #7
	str r0, [r4, #0x28]
	mov r0, #0xc
	add sp, #0x158
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_022467C8:
	mov r0, #0x1d
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022467D0:
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov07_02232F58
	mov r0, #6
	str r0, [r4, #0x28]
	mov r0, #0xc
	add sp, #0x158
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_022467E4:
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_02232F60
	cmp r0, #0
	bne _0224689E
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _0224689E
	ldr r0, [r4, #0x3c]
	add sp, #0x158
	sub r0, r0, #1
	str r0, [r4, #0x3c]
	mov r0, #5
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246806:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _0224689E
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov07_02232F58
	ldr r0, _02246918 ; =0x00000709
	mov r1, #0x75
	bl sub_0200602C
	mov r0, #8
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246826:
	ldr r0, [r4, #8]
	mov r1, #6
	bl sub_02232F60
	cmp r0, #0
	bne _0224689E
	ldr r1, _0224691C ; =0x00000363
	add r0, sp, #0x10c
	strh r1, [r0, #2]
	mov r1, #0x82
	strb r1, [r0, #1]
	str r7, [sp, #0x110]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x10c
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #9
	str r0, [r4, #0x28]
	ldr r0, _02246920 ; =0x00000469
	bl sub_02005D48
	ldr r0, [r4]
	mov r1, #2
	bl ov12_0223BD3C
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_0224686C:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _0224689E
	mov r0, #0xa
	str r0, [r4, #0x28]
	ldr r0, [r4, #8]
	mov r1, #7
	bl ov07_02232F58
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_0224688A:
	ldr r0, [r4, #8]
	mov r1, #7
	bl sub_02232F60
	cmp r0, #0
	bne _0224689E
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	beq _022468A2
_0224689E:
	bl _02247216
_022468A2:
	ldr r0, [r4]
	add r1, r7, #0
	bl ov12_0223BD8C
	ldr r2, [r4, #4]
	ldr r0, [r4]
	add r3, r2, r7
	ldr r2, _02246924 ; =0x0000219C
	add r1, r7, #0
	ldrb r2, [r3, r2]
	bl ov12_0223A880
	add r6, r0, #0
	ldr r0, [r4]
	bl ov12_0223A7E0
	mov r1, #6
	lsl r1, r1, #8
	tst r0, r1
	beq _02246950
	ldr r2, [r4, #4]
	ldr r0, [r4]
	add r3, r2, r7
	ldr r2, _02246924 ; =0x0000219C
	add r1, r7, #0
	ldrb r2, [r3, r2]
	bl ov12_0223A880
	add r2, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov12_022567D4
	ldr r0, [r4]
	bl ov12_0223AB34
	mov r1, #1
	bl sub_0201649C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02246928 ; =0x0000FFFF
	b _0224692C
	nop
_02246900: .word 0x00003108
_02246904: .word 0x00004E20
_02246908: .word 0x0000070A
_0224690C: .word 0x00002422
_02246910: .word 0x000005E6
_02246914: .word 0x00000708
_02246918: .word 0x00000709
_0224691C: .word 0x00000363
_02246920: .word 0x00000469
_02246924: .word 0x0000219C
_02246928: .word 0x0000FFFF
_0224692C:
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003370
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_020090E4
	mov r0, #0x21
	str r0, [r4, #0x28]
	mov r0, #1
	add sp, #0x158
	str r0, [r4, #0x40]
	pop {r3, r4, r5, r6, r7, pc}
_02246950:
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_0206E540
	add r1, r0, #0
	ldr r0, [r4]
	bl ov12_0223C330
	cmp r0, #0
	beq _022469E6
	ldr r0, [r4]
	bl ov12_0223A7E0
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	ldr r0, [r4]
	beq _022469B0
	bl ov12_0223AB34
	mov r1, #1
	bl sub_0201649C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02246CB8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003370
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_020090E4
	mov r0, #0x16
	str r0, [r4, #0x28]
	mov r0, #1
	add sp, #0x158
	str r0, [r4, #0x40]
	pop {r3, r4, r5, r6, r7, pc}
_022469B0:
	bl ov12_0223AB34
	mov r1, #1
	bl sub_0201649C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02246CB8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003370
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_020090E4
	mov r0, #0x10
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022469E6:
	ldr r1, _02246CBC ; =0x00000367
	add r0, sp, #0xe8
	strh r1, [r0, #2]
	mov r1, #0x82
	strb r1, [r0, #1]
	str r7, [sp, #0xec]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r2, sp, #0xe8
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0xb
	str r0, [r4, #0x28]
	ldr r0, [r4]
	bl ov12_0223BB44
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02246A18:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _02246A70
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02246A70
	mov r0, #0xc
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02246CB8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003370
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp]
	mov r2, #0x10
	add r3, r1, #0
	bl sub_020090E4
	ldr r0, [r4]
	bl ov12_0223AB34
	mov r1, #1
	bl sub_0201649C
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02246A66:
	add r0, r5, #0
	bl sub_02003B44
	cmp r0, #0
	beq _02246A72
_02246A70:
	b _02247216
_02246A72:
	ldr r0, [r4, #8]
	bl ov07_02233ECC
	ldr r0, [sp, #0x24]
	bl sub_0200878C
	ldr r0, [r4]
	bl ov12_02237CC4
	ldr r0, [r4]
	mov r1, #0
	bl ov12_0223A8F4
	mov r1, #0
	bl ov12_02265FC4
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223A8F4
	mov r1, #0
	bl ov12_02265FC4
	ldr r0, [r4]
	mov r1, #0
	bl ov12_0223A7E8
	mov r1, #0
	bl ov12_02261294
	ldr r0, [r4]
	bl ov12_0223A7D4
	str r0, [sp, #0xd0]
	ldr r0, [r4]
	bl ov12_0223A938
	str r0, [sp, #0xd4]
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	str r0, [sp, #0xd8]
	mov r0, #5
	str r0, [sp, #0xe4]
	ldr r2, [r4, #4]
	ldr r0, [r4]
	add r3, r2, r7
	ldr r2, _02246CC0 ; =0x0000219C
	ldrb r2, [r3, r2]
	bl ov12_0223A880
	str r0, [sp, #0xdc]
	ldr r0, [r4]
	bl ov12_0223A93C
	bl sub_0207491C
	str r0, [sp, #0xe0]
	bl sub_02021BD0
	str r0, [r4, #0x54]
	add r0, sp, #0xd0
	bl ov18_021F8974
	str r0, [r4, #0x50]
	mov r0, #0xd
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246AFA:
	ldr r0, [r4, #0x50]
	bl ov18_021F89C8
	cmp r0, #1
	bne _02246BFE
	ldr r0, _02246CC4 ; =0x021D110C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02246B14
	mov r0, #0xe
	str r0, [r4, #0x28]
	b _02246B26
_02246B14:
	bl sub_02025358
	cmp r0, #0
	beq _02246B26
	ldr r0, _02246CC8 ; =0x000005DC
	bl sub_0200604C
	mov r0, #0xe
	str r0, [r4, #0x28]
_02246B26:
	ldr r0, [r4, #0x28]
	cmp r0, #0xe
	bne _02246BFE
	ldr r0, [r4]
	bl ov12_0223A7E0
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	ldr r2, _02246CB8 ; =0x0000FFFF
	beq _02246B62
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003370
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_020090E4
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02246B62:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003370
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02246B7A:
	ldr r0, [r4]
	bl ov12_0223A7E0
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq _02246B90
	mov r0, #0x17
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246B90:
	ldr r0, [r4, #0x50]
	bl ov18_021F95F8
	add r5, r0, #0
	mov r1, #0
	mov r2, #4
	bl sub_02008C2C
	add r0, r5, #0
	mov r1, #0
	bl sub_02008A78
	cmp r0, #0x80
	blt _02246BFE
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020087A4
	ldr r0, [r4, #0x50]
	bl ov18_021F95AC
	mov r0, #0xf
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246BC4:
	ldr r0, [r4, #0x50]
	bl ov00_021F89D0
	ldr r0, [r4, #0x54]
	bl sub_02021BEC
	ldr r0, [r4]
	bl ov12_02237D00
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _02246CB8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003370
	mov r0, #0x11
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246BF4:
	add r0, r5, #0
	bl sub_02003B44
	cmp r0, #0
	beq _02246C00
_02246BFE:
	b _02247216
_02246C00:
	ldr r2, [r4, #4]
	ldr r0, [r4]
	add r3, r2, r7
	ldr r2, _02246CC0 ; =0x0000219C
	add r1, r7, #0
	ldrb r2, [r3, r2]
	bl ov12_0223A880
	add r6, r0, #0
	ldr r0, [r4, #8]
	bl ov07_02233ECC
	ldr r0, [sp, #0x24]
	bl sub_0200878C
	ldr r0, [r4]
	mov r1, #0
	bl ov12_0223A7E8
	mov r1, #0
	bl ov12_02261294
	ldr r0, [r4]
	bl ov12_02237CC4
	ldr r0, [r4]
	bl ov12_02237D00
	add r0, sp, #0xc0
	add r1, r6, #0
	mov r2, #2
	bl sub_02070124
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	add r1, sp, #0xc0
	mov r2, #0x80
	mov r3, #0x48
	bl sub_020085EC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _02246CB8 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #5
	mov r3, #1
	bl sub_02003370
	mov r2, #0
	ldr r0, [sp, #0x24]
	mov r1, #0x10
	add r3, r2, #0
	str r2, [sp]
	bl sub_020090E4
	mov r0, #0x11
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246C84:
	add r0, r5, #0
	bl sub_02003B44
	cmp r0, #0
	bne _02246D4C
	mov r0, #0x12
	str r0, [r4, #0x28]
	ldr r0, [r4]
	bl ov12_0223AB34
	mov r1, #0
	bl sub_0201649C
	add r0, r5, #0
	mov r1, #1
	bl sub_02003B50
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02246CAA:
	ldr r1, [r4, #4]
	mov r0, #5
	str r0, [sp]
	mov r2, #0
	ldr r0, _02246CC0 ; =0x0000219C
	b _02246CCC
	nop
_02246CB8: .word 0x0000FFFF
_02246CBC: .word 0x00000367
_02246CC0: .word 0x0000219C
_02246CC4: .word 0x021D110C
_02246CC8: .word 0x000005DC
_02246CCC:
	str r2, [sp, #4]
	add r3, r1, r7
	ldrb r0, [r3, r0]
	mov r3, #0xd9
	lsl r3, r3, #2
	orr r0, r7
	str r0, [sp, #8]
	ldr r0, [r4]
	bl ov12_0226337C
	ldr r0, [r4, #0x28]
	add sp, #0x158
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246CEA:
	add r0, r6, #0
	mov r1, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _02246D4C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _02246D0A
	mov r0, #0x16
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246D0A:
	ldr r0, [r4]
	bl ov12_0223AB34
	mov r1, #1
	bl sub_0201649C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02247060 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003370
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_020090E4
	mov r0, #0x14
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246D42:
	add r0, r5, #0
	bl sub_02003B44
	cmp r0, #0
	beq _02246D4E
_02246D4C:
	b _02247216
_02246D4E:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	mov r0, #1
	mov r1, #0
	bl sub_0200FBF4
	ldr r2, [r4, #4]
	ldr r0, [r4]
	add r3, r2, r7
	ldr r2, _02247064 ; =0x0000219C
	add r1, r7, #0
	ldrb r2, [r3, r2]
	bl ov12_0223A880
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	add r5, r0, #0
	ldr r0, [r4]
	bl ov12_0223B6CC
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #1
	add r2, r5, #0
	mov r3, #0xa
	bl sub_020830D8
	add r5, r0, #0
	str r5, [r4, #0x54]
	ldr r0, [r4]
	mov r1, #0
	bl ov12_0223A834
	cmp r0, #6
	bge _02246DA6
	mov r0, #0
	b _02246DB0
_02246DA6:
	ldr r0, [r4]
	bl ov12_0223BB1C
	ldr r1, _02247068 ; =0x00000496
	add r0, r0, r1
_02246DB0:
	str r0, [r5, #0x44]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_0206E540
	str r0, [r5, #8]
	ldr r0, [r4]
	bl ov12_0223AB3C
	str r0, [r5, #0x48]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_0206E540
	str r0, [r5, #0x10]
	ldr r0, _0224706C ; =0x02102610
	add r1, r5, #0
	mov r2, #5
	bl OverlayManager_new
	str r0, [r4, #0x50]
	mov r0, #0x15
	str r0, [r4, #0x28]
	ldr r0, [r4]
	bl ov12_0223BCF0
	ldr r0, [r4]
	mov r5, #0
	bl ov12_0223A7F0
	cmp r0, #0
	ble _02246E18
	add r7, r5, #0
_02246DF6:
	ldr r0, [r4]
	add r1, r5, #0
	bl ov12_0223A7E8
	add r6, r0, #0
	ldr r0, [r6, #0x18]
	cmp r0, #0
	beq _02246E0C
	bl sub_0200D9DC
	str r7, [r6, #0x18]
_02246E0C:
	ldr r0, [r4]
	add r5, r5, #1
	bl ov12_0223A7F0
	cmp r5, r0
	blt _02246DF6
_02246E18:
	ldr r0, [r4]
	bl ov12_02237B6C
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223BBF0
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02246E2A:
	ldr r0, [r4, #0x50]
	bl OverlayManager_run
	cmp r0, #0
	beq _02246E82
	ldr r2, [r4, #4]
	ldr r5, [r4, #0x54]
	add r3, r2, r7
	ldr r2, _02247064 ; =0x0000219C
	ldr r0, [r4]
	ldrb r2, [r3, r2]
	add r1, r7, #0
	bl ov12_0223A880
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _02246E5C
	ldr r2, [r5, #0x18]
	mov r1, #0x78
	bl sub_0206EC40
	ldr r0, [r4]
	mov r1, #0x32
	bl ov12_0223BB28
_02246E5C:
	add r0, r5, #0
	bl sub_0208311C
	ldr r0, [r4, #0x50]
	bl OverlayManager_delete
	ldr r0, [r4]
	mov r1, #2
	bl ov12_0223BBF0
	mov r0, #0x18
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246E78:
	add r0, r5, #0
	bl sub_02003B44
	cmp r0, #0
	beq _02246E84
_02246E82:
	b _02247216
_02246E84:
	ldr r0, [r4]
	mov r1, #0
	bl ov12_0223A7F4
	ldr r2, [r4, #4]
	str r0, [sp, #0x28]
	add r3, r2, r7
	ldr r2, _02247064 ; =0x0000219C
	ldr r0, [r4]
	ldrb r2, [r3, r2]
	add r1, r7, #0
	bl ov12_0223A880
	add r6, r0, #0
	ldr r0, [r4]
	add r1, r7, #0
	bl ov12_0223C2F0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r6, #0
	bl ov12_022567D4
	ldr r0, [r4]
	add r1, r6, #0
	bl ov12_0223B870
	mov r1, #0
	ldr r0, [r4]
	add r2, r1, #0
	mov r3, #0xa
	bl ov12_02263F0C
	ldr r0, [r4]
	bl ov12_0223A7E0
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq _02246F14
	ldr r0, [r4, #0x28]
	cmp r0, #0x17
	bne _02246EEC
	ldr r0, [r4, #0x50]
	bl ov00_021F89D0
	ldr r0, [r4, #0x54]
	bl sub_02021BEC
	ldr r0, [r4]
	bl ov12_02237D00
_02246EEC:
	ldr r0, [r4]
	bl ov12_0223C134
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0207188C
	ldr r0, [r4, #0x28]
	cmp r0, #0x16
	bne _02246F0C
	ldr r0, [r4]
	bl ov12_0223AB34
	mov r1, #1
	bl sub_0201649C
_02246F0C:
	mov r0, #0x21
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246F14:
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	bl sub_02074524
	cmp r0, #1
	bne _02246F5E
	ldr r0, [r4, #0x28]
	cmp r0, #0x16
	bne _02246F56
	ldr r0, [r4]
	bl ov12_0223AB34
	mov r1, #1
	bl sub_0201649C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02247060 ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003370
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_020090E4
_02246F56:
	mov r0, #0x21
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02246F5E:
	ldr r0, [r4]
	bl ov12_0223AB3C
	str r0, [sp, #0x1c]
	bl sub_02073D4C
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl sub_02073D54
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	bl sub_02073E84
	mov r5, #0
_02246F7E:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x42
	mov r2, #0
	bl sub_0206E540
	add r1, r5, #0
	str r0, [sp, #0x2c]
	add r0, r6, #0
	add r1, #0x3a
	add r2, sp, #0x2c
	bl sub_0206EC40
	add r5, r5, #1
	cmp r5, #4
	blt _02246F7E
	add r0, r6, #0
	bl sub_02071CA0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02246FB4
	ldr r0, [r4]
	add r1, r7, #0
	bl ov12_0223C2F0
_02246FB4:
	add r0, r6, #0
	bl sub_02070DB0
	add r2, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	bl sub_02073BFC
	ldr r0, [r4, #0x28]
	cmp r0, #0x16
	bne _02247026
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	ldr r0, [r4]
	bne _02246FEC
	bl ov12_0223BB1C
	ldr r1, _02247068 ; =0x00000496
	add r1, r0, r1
	add r0, sp, #0x9c
	strh r1, [r0, #2]
	mov r1, #0x93
	strb r1, [r0, #1]
	ldr r0, [sp, #0x18]
	str r7, [sp, #0xa0]
	str r0, [sp, #0xa4]
	b _02247006
_02246FEC:
	bl ov12_0223BB1C
	ldr r1, _02247070 ; =0x00000498
	add r1, r0, r1
	add r0, sp, #0x9c
	strh r1, [r0, #2]
	mov r1, #0xaf
	strb r1, [r0, #1]
	ldr r0, [sp, #0x18]
	str r7, [sp, #0xa0]
	str r0, [sp, #0xa4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xa8]
_02247006:
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x9c
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0x19
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02247026:
	mov r0, #0x21
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_0224702E:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _022470E6
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _022470E6
	ldr r0, [r4]
	bl ov12_0223AB34
	mov r1, #1
	bl sub_0201649C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02247060 ; =0x0000FFFF
	b _02247074
	nop
_02247060: .word 0x0000FFFF
_02247064: .word 0x0000219C
_02247068: .word 0x00000496
_0224706C: .word 0x02102610
_02247070: .word 0x00000498
_02247074:
	add r0, r5, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003370
	mov r1, #0
	ldr r0, [sp, #0x24]
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_020090E4
	mov r0, #0x21
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02247094:
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_02232F60
	cmp r0, #0
	bne _022470E6
	ldr r0, [r4, #8]
	bl ov07_02233ECC
	ldr r1, _0224721C ; =0x0000035B
	add r0, sp, #0x78
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x78
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0x1b
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022470D0:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _022470E6
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	beq _022470E8
_022470E6:
	b _02247216
_022470E8:
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, sp, #0x2c
	strh r1, [r0, #0x2a]
	mov r1, #0
	add r0, sp, #0x54
	strb r1, [r0, #1]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x54
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0x1c
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02247116:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _02247216
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02247216
	mov r0, #0x5e
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_0201AB0C
	ldr r0, [sp, #0x10]
	bl sub_0200E390
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_02247146:
	ldr r0, [r4]
	ldr r2, [r4, #0x2c]
	add r1, r7, #0
	mov r3, #1
	bl ov12_02262524
	mov r0, #0x1e
	str r0, [r4, #0x28]
	mov r0, #2
	add sp, #0x158
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_0224715E:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02247216
	ldr r0, [r4, #8]
	bl ov07_02233ECC
	mov r0, #0x1f
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_02247174:
	add r0, r6, #0
	bl ov12_0224ED48
	cmp r0, #0
	beq _02247216
	ldr r1, [r4, #0x38]
	ldr r0, _02247220 ; =0x0000035F
	add r1, r1, r0
	add r0, sp, #0x2c
	strh r1, [r0, #6]
	mov r1, #0
	strb r1, [r0, #5]
	ldr r0, [r4]
	bl ov12_0223B718
	add r3, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	add r2, sp, #0x30
	bl ov12_0223C494
	str r0, [r4, #0x30]
	mov r0, #0x1e
	str r0, [r4, #0x34]
	mov r0, #0x20
	add sp, #0x158
	str r0, [r4, #0x28]
	pop {r3, r4, r5, r6, r7, pc}
_022471AC:
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02020094
	cmp r0, #0
	bne _02247216
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bne _02247216
	mov r0, #0x5e
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_0201AB0C
	ldr r0, [sp, #0x10]
	bl sub_0200E390
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
_022471DC:
	add r0, r5, #0
	bl sub_02003B44
	cmp r0, #0
	bne _02247216
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _022471F8
	ldr r0, [r4, #8]
	bl ov07_02233ECC
	ldr r0, [sp, #0x24]
	bl sub_0200878C
_022471F8:
	ldr r1, [r4]
	ldr r0, _02247224 ; =0x00002420
	mov r2, #4
	strb r2, [r1, r0]
	mov r0, #0x5e
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r1, r0]
	add r0, r4, #0
	bl sub_0201AB0C
	ldr r0, [sp, #0x10]
	bl sub_0200E390
_02247216:
	add sp, #0x158
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224721C: .word 0x0000035B
_02247220: .word 0x0000035F
_02247224: .word 0x00002420
	thumb_func_end ov12_022465A8

	thumb_func_start ov12_02247228
ov12_02247228: ; 0x02247228
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r4, r1, #0
	bl ov12_0223A7E0
	mov r1, #6
	lsl r1, r1, #8
	tst r0, r1
	beq _02247242
	add sp, #0xc
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_02247242:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, #0x6c]
	cmp r0, #5
	bne _02247278
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	mov r1, #8
	bl sub_0206FBE8
	ldr r1, _02247528 ; =0x0000311C
	ldr r2, _0224752C ; =0x0226C3CE
	ldrb r1, [r4, r1]
	lsl r1, r1, #1
	ldrb r2, [r2, r1]
	mul r2, r0
	add r0, r2, #0
	ldr r2, _02247530 ; =0x0226C3CF
	ldrb r1, [r2, r1]
	bl sub_020F2998
	b _0224728A
_02247278:
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	mov r1, #8
	bl sub_0206FBE8
_0224728A:
	add r5, r0, #0
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	add r6, r0, #0
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	add r3, r0, #0
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #5
	bgt _022472B8
	b _02247522
_022472B8:
	add r2, r0, #0
	add r2, #0xc6
	cmp r1, r2
	bgt _02247316
	add r2, r0, #0
	add r2, #0xc6
	cmp r1, r2
	blt _022472CA
	b _0224745E
_022472CA:
	add r2, r0, #0
	add r2, #0xc4
	cmp r1, r2
	bgt _0224730C
	add r2, r0, #0
	add r2, #0xc4
	cmp r1, r2
	blt _022472DC
	b _02247410
_022472DC:
	cmp r1, #0xf
	bhi _02247314
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022472EC: ; jump table
	.short _0224750E - _022472EC - 2 ; case 0
	.short _0224750E - _022472EC - 2 ; case 1
	.short _0224750E - _022472EC - 2 ; case 2
	.short _0224750E - _022472EC - 2 ; case 3
	.short _0224750E - _022472EC - 2 ; case 4
	.short _0224750E - _022472EC - 2 ; case 5
	.short _02247364 - _022472EC - 2 ; case 6
	.short _0224737A - _022472EC - 2 ; case 7
	.short _0224738A - _022472EC - 2 ; case 8
	.short _022473AA - _022472EC - 2 ; case 9
	.short _022473C8 - _022472EC - 2 ; case 10
	.short _0224750E - _022472EC - 2 ; case 11
	.short _0224750E - _022472EC - 2 ; case 12
	.short _022473DC - _022472EC - 2 ; case 13
	.short _0224750E - _022472EC - 2 ; case 14
	.short _02247402 - _022472EC - 2 ; case 15
_0224730C:
	ldr r0, _02247534 ; =0x000001ED
	cmp r1, r0
	bne _02247314
	b _0224742C
_02247314:
	b _0224750E
_02247316:
	add r2, r0, #0
	add r2, #0xc8
	cmp r1, r2
	bgt _02247332
	add r2, r0, #0
	add r2, #0xc8
	cmp r1, r2
	blt _02247328
	b _022474AC
_02247328:
	add r0, #0xc7
	cmp r1, r0
	bne _02247330
	b _0224746E
_02247330:
	b _0224750E
_02247332:
	add r2, r0, #0
	add r2, #0xc9
	cmp r1, r2
	bgt _02247340
	add r0, #0xc9
	cmp r1, r0
	b _0224750E
_02247340:
	add r2, r0, #0
	add r2, #0xcb
	cmp r1, r2
	bgt _02247362
	add r2, r0, #0
	add r2, #0xca
	cmp r1, r2
	blt _02247362
	add r2, r0, #0
	add r2, #0xca
	cmp r1, r2
	bne _0224735A
	b _022474E2
_0224735A:
	add r0, #0xcb
	cmp r1, r0
	bne _02247362
	b _02247508
_02247362:
	b _0224750E
_02247364:
	cmp r6, #0xb
	beq _02247374
	cmp r3, #0xb
	beq _02247374
	cmp r6, #6
	beq _02247374
	cmp r3, #6
	bne _022473FA
_02247374:
	mov r0, #0x1e
	str r0, [sp, #4]
	b _02247512
_0224737A:
	add r0, r7, #0
	bl ov12_0223AB40
	cmp r0, #7
	bne _022473FA
	mov r0, #0x23
	str r0, [sp, #4]
	b _02247512
_0224738A:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _02247538 ; =0x00002D74
	ldrb r1, [r1, r0]
	cmp r1, #0x28
	bhs _022473FA
	mov r0, #0x28
	sub r0, r0, r1
	str r0, [sp, #4]
	cmp r0, #0xa
	bhs _022473FA
	mov r0, #0xa
	str r0, [sp, #4]
	b _02247512
_022473AA:
	ldr r2, [r4, #0x6c]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r1, [r2, r1]
	add r0, r7, #0
	bl ov12_0223C330
	cmp r0, #1
	bne _022473FA
	mov r0, #0x1e
	str r0, [sp, #4]
	b _02247512
_022473C8:
	add r0, #0x28
	ldr r0, [r4, r0]
	str r0, [sp, #4]
	add r0, #0xa
	str r0, [sp, #4]
	cmp r0, #0x28
	bls _022473FA
	mov r0, #0x28
	str r0, [sp, #4]
	b _02247512
_022473DC:
	add r0, r7, #0
	bl ov12_0223B520
	cmp r0, #3
	beq _022473FC
	add r0, r7, #0
	bl ov12_0223B520
	cmp r0, #4
	beq _022473FC
	add r0, r7, #0
	bl ov12_0223AB40
	cmp r0, #5
	beq _022473FC
_022473FA:
	b _02247512
_022473FC:
	mov r0, #0x23
	str r0, [sp, #4]
	b _02247512
_02247402:
	add r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #1
	bge _02247506
	mov r0, #0x28
	str r0, [sp, #4]
	b _02247512
_02247410:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	mov r1, #3
	bl sub_0206FBE8
	cmp r0, #0x64
	blo _02247512
	lsl r5, r5, #2
	b _02247512
_0224742C:
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r3, [r4, #0x6c]
	add r0, r4, r2
	ldr r2, _02247538 ; =0x00002D74
	mul r1, r3
	add r1, r4, r1
	ldrb r0, [r0, r2]
	ldrb r2, [r1, r2]
	cmp r0, r2
	bls _02247512
	lsr r1, r0, #1
	cmp r1, r2
	bgt _02247450
	lsl r5, r5, #1
	b _02247512
_02247450:
	lsr r0, r0, #2
	cmp r0, r2
	bgt _0224745A
	lsl r5, r5, #2
	b _02247512
_0224745A:
	lsl r5, r5, #3
	b _02247512
_0224745E:
	add r0, r7, #0
	bl ov12_0223AAB8
	cmp r0, #0
	beq _02247512
	lsl r0, r5, #1
	add r5, r5, r0
	b _02247512
_0224746E:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	bl ov12_02247668
	mov r2, #1
	lsl r2, r2, #0xc
	cmp r0, r2
	blt _0224748C
	add r5, #0x28
	b _02247512
_0224748C:
	mov r1, #3
	lsl r1, r1, #0xa
	cmp r0, r1
	blt _02247498
	add r5, #0x1e
	b _02247512
_02247498:
	lsr r1, r2, #1
	cmp r0, r1
	blt _022474A2
	add r5, #0x14
	b _02247512
_022474A2:
	lsr r0, r2, #2
	cmp r5, r0
	bge _02247512
	sub r5, #0x14
	b _02247512
_022474AC:
	ldr r2, [r4, #0x6c]
	mov r0, #0xc0
	add r1, r2, #0
	ldr r2, [r4, #0x64]
	mul r1, r0
	mul r0, r2
	add r3, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	add r6, r4, r1
	ldrh r2, [r3, r0]
	ldrh r1, [r6, r0]
	cmp r2, r1
	bne _02247512
	add r1, r0, #0
	add r1, #0x7e
	add r0, #0x7e
	ldrb r1, [r3, r1]
	ldrb r0, [r6, r0]
	lsl r1, r1, #0x1c
	lsl r0, r0, #0x1c
	lsr r1, r1, #0x1c
	lsr r0, r0, #0x1c
	cmp r1, r0
	beq _02247512
	lsl r5, r5, #3
	b _02247512
_022474E2:
	ldr r3, [r4, #0x6c]
	mov r2, #0xc0
	mul r2, r3
	add r3, r4, r2
	mov r2, #0xb5
	lsl r2, r2, #6
	ldrh r3, [r3, r2]
	ldr r1, _0224753C ; =0x0226C3E8
	mov r0, #0
_022474F4:
	ldrh r2, [r1]
	cmp r2, r3
	bne _022474FE
	lsl r5, r5, #2
	b _02247512
_022474FE:
	add r0, r0, #1
	add r1, r1, #2
	cmp r0, #0xe
	blo _022474F4
_02247506:
	b _02247512
_02247508:
	mov r0, #0xf
	str r0, [sp, #4]
	b _02247512
_0224750E:
	mov r0, #0xa
	str r0, [sp, #4]
_02247512:
	cmp r5, #0xff
	ble _0224751A
	mov r5, #0xff
	b _0224754A
_0224751A:
	cmp r5, #0
	bge _0224754A
	mov r5, #1
	b _0224754A
_02247522:
	ldr r0, _02247540 ; =0x0226C2EC
	b _02247544
	nop
_02247528: .word 0x0000311C
_0224752C: .word 0x0226C3CE
_02247530: .word 0x0226C3CF
_02247534: .word 0x000001ED
_02247538: .word 0x00002D74
_0224753C: .word 0x0226C3E8
_02247540: .word 0x0226C2EC
_02247544:
	sub r1, r1, #2
	ldrb r0, [r0, r1]
	str r0, [sp, #4]
_0224754A:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	add r6, r1, #0
	mul r6, r0
	ldr r0, _0224764C ; =0x00002D90
	add r1, r4, r6
	ldr r1, [r1, r0]
	lsl r0, r1, #1
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0xa
	mul r0, r5
	bl sub_020F2BA4
	ldr r1, _02247650 ; =0x00002D8C
	add r2, r4, r6
	ldr r1, [r2, r1]
	lsl r2, r1, #1
	ldr r1, [sp]
	sub r1, r1, r2
	mul r1, r0
	add r0, r1, #0
	ldr r1, [sp]
	bl sub_020F2BA4
	add r1, r0, #0
	ldr r0, _02247654 ; =0x00002DAC
	add r2, r4, r6
	ldr r2, [r2, r0]
	mov r0, #0x27
	tst r0, r2
	beq _0224758E
	lsl r1, r1, #1
_0224758E:
	mov r0, #0xd8
	tst r0, r2
	beq _022475A0
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2BA4
	add r1, r0, #0
_022475A0:
	cmp r1, #0xff
	blo _022475A8
	mov r5, #4
	b _02247618
_022475A8:
	ldr r0, _02247658 ; =0x040002B0
	mov r2, #0
	strh r2, [r0]
	mov r0, #0xff
	lsl r0, r0, #0x10
	bl sub_020F2BA4
	ldr r1, _0224765C ; =0x040002B8
	add r2, r1, #0
	str r0, [r1]
	sub r2, #8
	lsr r0, r1, #0xb
_022475C0:
	ldrh r1, [r2]
	tst r1, r0
	bne _022475C0
	ldr r0, _02247658 ; =0x040002B0
	lsr r1, r0, #0xb
_022475CA:
	ldrh r2, [r0]
	tst r2, r1
	bne _022475CA
	ldr r3, _02247660 ; =0x040002B4
	mov r1, #0
	ldr r2, [r3]
	strh r1, [r0]
	str r2, [r3, #4]
	sub r2, r3, #4
	lsr r0, r3, #0xb
_022475DE:
	ldrh r1, [r2]
	tst r1, r0
	bne _022475DE
	ldr r2, _02247658 ; =0x040002B0
	lsr r0, r2, #0xb
_022475E8:
	ldrh r1, [r2]
	tst r1, r0
	bne _022475E8
	ldr r1, _02247660 ; =0x040002B4
	ldr r0, _02247664 ; =0x000FFFF0
	ldr r1, [r1]
	bl sub_020F2BA4
	add r6, r0, #0
	mov r5, #0
_022475FC:
	add r0, r7, #0
	bl ov12_0223BD98
	cmp r0, r6
	bhs _0224760C
	add r5, r5, #1
	cmp r5, #4
	blt _022475FC
_0224760C:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02247618
	mov r5, #4
_02247618:
	cmp r5, #4
	bge _02247622
	add sp, #0xc
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02247622:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, #0xc9
	cmp r1, r0
	bne _02247646
	mov r1, #0xc8
	add r0, sp, #8
	strb r1, [r0]
	ldr r1, [r4, #0x6c]
	add r0, r7, #0
	mov r2, #0
	bl ov12_0223A880
	mov r1, #9
	add r2, sp, #8
	bl sub_0206EC40
_02247646:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224764C: .word 0x00002D90
_02247650: .word 0x00002D8C
_02247654: .word 0x00002DAC
_02247658: .word 0x040002B0
_0224765C: .word 0x040002B8
_02247660: .word 0x040002B4
_02247664: .word 0x000FFFF0
	thumb_func_end ov12_02247228

	thumb_func_start ov12_02247668
ov12_02247668: ; 0x02247668
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r1, #1
	mov r0, #0x4a
	mov r2, #0
	mov r3, #3
	str r1, [sp]
	bl sub_02007A44
	lsl r1, r4, #2
	ldr r4, [r0, r1]
	bl sub_0201AB0C
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov12_02247668

	thumb_func_start ov12_0224768C
ov12_0224768C: ; 0x0224768C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r1, #0
	cmp r2, #0x16
	bgt _022476D6
	cmp r2, #0
	blt _022476DC
	add r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022476A8: ; jump table
	.short _022476DC - _022476A8 - 2 ; case 0
	.short _022476DC - _022476A8 - 2 ; case 1
	.short _022476E0 - _022476A8 - 2 ; case 2
	.short _0224777C - _022476A8 - 2 ; case 3
	.short _022476F8 - _022476A8 - 2 ; case 4
	.short _022476E4 - _022476A8 - 2 ; case 5
	.short _022476E8 - _022476A8 - 2 ; case 6
	.short _022476EC - _022476A8 - 2 ; case 7
	.short _022476F2 - _022476A8 - 2 ; case 8
	.short _022477A2 - _022476A8 - 2 ; case 9
	.short _0224771E - _022476A8 - 2 ; case 10
	.short _022477CA - _022476A8 - 2 ; case 11
	.short _02247746 - _022476A8 - 2 ; case 12
	.short _022476DC - _022476A8 - 2 ; case 13
	.short _02247800 - _022476A8 - 2 ; case 14
	.short _02247808 - _022476A8 - 2 ; case 15
	.short _02247810 - _022476A8 - 2 ; case 16
	.short _0224784C - _022476A8 - 2 ; case 17
	.short _022476DC - _022476A8 - 2 ; case 18
	.short _02247888 - _022476A8 - 2 ; case 19
	.short _022478B2 - _022476A8 - 2 ; case 20
	.short _022478DC - _022476A8 - 2 ; case 21
	.short _022476E8 - _022476A8 - 2 ; case 22
_022476D6:
	cmp r2, #0xff
	bne _022476DC
	b _022478DC
_022476DC:
	ldr r5, [r6, #0x64]
	b _022478E2
_022476E0:
	ldr r5, [r6, #0x6c]
	b _022478E2
_022476E4:
	ldr r5, [r6, #0x74]
	b _022478E2
_022476E8:
	ldr r5, [r6, #0x78]
	b _022478E2
_022476EC:
	add r6, #0x94
	ldr r5, [r6]
	b _022478E2
_022476F2:
	add r6, #0x80
	ldr r5, [r6]
	b _022478E2
_022476F8:
	bl ov12_0223A7F0
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _0224771C
	mov r7, #1
_02247706:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _022478F0 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	bne _0224771C
	add r5, r5, #1
	cmp r5, r6
	blt _02247706
_0224771C:
	b _022478E2
_0224771E:
	bl ov12_0223A7F0
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _02247744
	ldr r7, _022478F0 ; =0x00000195
_0224772C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldrb r0, [r0, r7]
	cmp r0, #3
	beq _02247744
	cmp r0, #1
	beq _02247744
	add r5, r5, #1
	cmp r5, r6
	blt _0224772C
_02247744:
	b _022478E2
_02247746:
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _02247754
	mov r6, #5
	b _02247756
_02247754:
	mov r6, #1
_02247756:
	add r0, r4, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _0224777A
_02247764:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _022478F0 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, r6
	beq _0224777A
	add r5, r5, #1
	cmp r5, r7
	blt _02247764
_0224777A:
	b _022478E2
_0224777C:
	bl ov12_0223A7F0
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _022477A0
	mov r7, #1
_0224778A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _022478F0 ; =0x00000195
	ldrb r0, [r0, r1]
	tst r0, r7
	beq _022477A0
	add r5, r5, #1
	cmp r5, r6
	blt _0224778A
_022477A0:
	b _022478E2
_022477A2:
	bl ov12_0223A7F0
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _022477C8
	ldr r7, _022478F0 ; =0x00000195
_022477B0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldrb r0, [r0, r7]
	cmp r0, #2
	beq _022477C8
	cmp r0, #0
	beq _022477C8
	add r5, r5, #1
	cmp r5, r6
	blt _022477B0
_022477C8:
	b _022478E2
_022477CA:
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _022477D8
	mov r6, #4
	b _022477DA
_022477D8:
	mov r6, #0
_022477DA:
	add r0, r4, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _022478E2
_022477E8:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	ldr r1, _022478F0 ; =0x00000195
	ldrb r0, [r0, r1]
	cmp r0, r6
	beq _022478E2
	add r5, r5, #1
	cmp r5, r7
	blt _022477E8
	b _022478E2
_02247800:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r5, [r6, r0]
	b _022478E2
_02247808:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r5, [r6, r0]
	b _022478E2
_02247810:
	bl ov12_0223A7F0
	mov r5, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02247842
_0224781C:
	ldr r7, [r6, #0x64]
	cmp r5, r7
	beq _0224783A
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223AB1C
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0223AB1C
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02247842
_0224783A:
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _0224781C
_02247842:
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _022478E2
	mov r5, #0
	b _022478E2
_0224784C:
	bl ov12_0223A7F0
	mov r5, #0
	str r0, [sp]
	cmp r0, #0
	ble _0224787E
_02247858:
	ldr r7, [r6, #0x6c]
	cmp r5, r7
	beq _02247876
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223AB1C
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_0223AB1C
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _0224787E
_02247876:
	ldr r0, [sp]
	add r5, r5, #1
	cmp r5, r0
	blt _02247858
_0224787E:
	ldr r0, [sp]
	cmp r5, r0
	bne _022478E2
	mov r5, #0
	b _022478E2
_02247888:
	bl ov12_0223A7F0
	add r7, r0, #0
	ldr r1, [r6, #0x64]
	add r0, r4, #0
	bl ov12_0223AB1C
	add r6, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _022478E2
_0224789E:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223AB1C
	cmp r6, r0
	bne _022478E2
	add r5, r5, #1
	cmp r5, r7
	blt _0224789E
	b _022478E2
_022478B2:
	bl ov12_0223A7F0
	add r7, r0, #0
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl ov12_0223AB1C
	add r6, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _022478E2
_022478C8:
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_0223AB1C
	cmp r6, r0
	bne _022478E2
	add r5, r5, #1
	cmp r5, r7
	blt _022478C8
	b _022478E2
_022478DC:
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r5, [r6, r0]
_022478E2:
	cmp r5, #0xff
	bne _022478EA
	bl GF_AssertFail
_022478EA:
	add r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022478F0: .word 0x00000195
	thumb_func_end ov12_0224768C

	thumb_func_start ov12_022478F4
ov12_022478F4: ; 0x022478F4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	mov r6, #0
	bl ov12_022454E8
	str r0, [r4]
	add r0, r7, #0
	bl ov12_022454E8
	str r0, [r4, #4]
	cmp r0, #0x3c
	bhi _022479A8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224791A: ; jump table
	.short _02247994 - _0224791A - 2 ; case 0
	.short _02247996 - _0224791A - 2 ; case 1
	.short _02247996 - _0224791A - 2 ; case 2
	.short _02247996 - _0224791A - 2 ; case 3
	.short _02247996 - _0224791A - 2 ; case 4
	.short _02247996 - _0224791A - 2 ; case 5
	.short _02247996 - _0224791A - 2 ; case 6
	.short _02247996 - _0224791A - 2 ; case 7
	.short _02247996 - _0224791A - 2 ; case 8
	.short _0224799A - _0224791A - 2 ; case 9
	.short _0224799A - _0224791A - 2 ; case 10
	.short _0224799A - _0224791A - 2 ; case 11
	.short _0224799A - _0224791A - 2 ; case 12
	.short _0224799A - _0224791A - 2 ; case 13
	.short _0224799A - _0224791A - 2 ; case 14
	.short _0224799A - _0224791A - 2 ; case 15
	.short _0224799A - _0224791A - 2 ; case 16
	.short _0224799A - _0224791A - 2 ; case 17
	.short _0224799A - _0224791A - 2 ; case 18
	.short _0224799A - _0224791A - 2 ; case 19
	.short _0224799A - _0224791A - 2 ; case 20
	.short _0224799A - _0224791A - 2 ; case 21
	.short _0224799A - _0224791A - 2 ; case 22
	.short _0224799A - _0224791A - 2 ; case 23
	.short _0224799A - _0224791A - 2 ; case 24
	.short _0224799A - _0224791A - 2 ; case 25
	.short _0224799A - _0224791A - 2 ; case 26
	.short _0224799A - _0224791A - 2 ; case 27
	.short _0224799A - _0224791A - 2 ; case 28
	.short _0224799A - _0224791A - 2 ; case 29
	.short _0224799A - _0224791A - 2 ; case 30
	.short _0224799E - _0224791A - 2 ; case 31
	.short _0224799E - _0224791A - 2 ; case 32
	.short _0224799E - _0224791A - 2 ; case 33
	.short _0224799E - _0224791A - 2 ; case 34
	.short _0224799E - _0224791A - 2 ; case 35
	.short _0224799E - _0224791A - 2 ; case 36
	.short _0224799E - _0224791A - 2 ; case 37
	.short _0224799E - _0224791A - 2 ; case 38
	.short _0224799E - _0224791A - 2 ; case 39
	.short _0224799E - _0224791A - 2 ; case 40
	.short _0224799E - _0224791A - 2 ; case 41
	.short _0224799E - _0224791A - 2 ; case 42
	.short _0224799E - _0224791A - 2 ; case 43
	.short _0224799E - _0224791A - 2 ; case 44
	.short _0224799E - _0224791A - 2 ; case 45
	.short _0224799E - _0224791A - 2 ; case 46
	.short _0224799E - _0224791A - 2 ; case 47
	.short _0224799E - _0224791A - 2 ; case 48
	.short _0224799E - _0224791A - 2 ; case 49
	.short _0224799E - _0224791A - 2 ; case 50
	.short _0224799E - _0224791A - 2 ; case 51
	.short _022479A2 - _0224791A - 2 ; case 52
	.short _022479A2 - _0224791A - 2 ; case 53
	.short _022479A2 - _0224791A - 2 ; case 54
	.short _022479A2 - _0224791A - 2 ; case 55
	.short _022479A2 - _0224791A - 2 ; case 56
	.short _022479A2 - _0224791A - 2 ; case 57
	.short _022479A2 - _0224791A - 2 ; case 58
	.short _022479A2 - _0224791A - 2 ; case 59
	.short _022479A6 - _0224791A - 2 ; case 60
_02247994:
	b _022479A8
_02247996:
	mov r6, #1
	b _022479A8
_0224799A:
	mov r6, #2
	b _022479A8
_0224799E:
	mov r6, #3
	b _022479A8
_022479A2:
	mov r6, #4
	b _022479A8
_022479A6:
	mov r6, #6
_022479A8:
	mov r5, #0
	cmp r6, #0
	ble _022479BE
_022479AE:
	add r0, r7, #0
	bl ov12_022454E8
	str r0, [r4, #8]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _022479AE
_022479BE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022478F4

	thumb_func_start ov12_022479C0
ov12_022479C0: ; 0x022479C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	ldr r2, [r4]
	add r5, r3, #0
	strh r2, [r5, #2]
	ldr r2, [r4, #4]
	add r7, r0, #0
	strb r2, [r5, #1]
	ldrb r2, [r5, #1]
	add r6, r1, #0
	cmp r2, #0x3c
	bls _022479DA
	b _022480BC
_022479DA:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022479E6: ; jump table
	.short _022480BC - _022479E6 - 2 ; case 0
	.short _02247A60 - _022479E6 - 2 ; case 1
	.short _02247A6A - _022479E6 - 2 ; case 2
	.short _02247A74 - _022479E6 - 2 ; case 3
	.short _02247A80 - _022479E6 - 2 ; case 4
	.short _02247A8C - _022479E6 - 2 ; case 5
	.short _02247A98 - _022479E6 - 2 ; case 6
	.short _02247A98 - _022479E6 - 2 ; case 7
	.short _02247AA4 - _022479E6 - 2 ; case 8
	.short _02247AAE - _022479E6 - 2 ; case 9
	.short _02247AC4 - _022479E6 - 2 ; case 10
	.short _02247AD8 - _022479E6 - 2 ; case 11
	.short _02247AEE - _022479E6 - 2 ; case 12
	.short _02247B02 - _022479E6 - 2 ; case 13
	.short _02247B16 - _022479E6 - 2 ; case 14
	.short _02247B2C - _022479E6 - 2 ; case 15
	.short _02247B40 - _022479E6 - 2 ; case 16
	.short _02247B54 - _022479E6 - 2 ; case 17
	.short _02247B68 - _022479E6 - 2 ; case 18
	.short _02247B7E - _022479E6 - 2 ; case 19
	.short _02247B8C - _022479E6 - 2 ; case 20
	.short _02247BA4 - _022479E6 - 2 ; case 21
	.short _02247BBC - _022479E6 - 2 ; case 22
	.short _02247BD2 - _022479E6 - 2 ; case 23
	.short _02247BE8 - _022479E6 - 2 ; case 24
	.short _02247BFE - _022479E6 - 2 ; case 25
	.short _02247C14 - _022479E6 - 2 ; case 26
	.short _02247C2A - _022479E6 - 2 ; case 27
	.short _02247C40 - _022479E6 - 2 ; case 28
	.short _02247C54 - _022479E6 - 2 ; case 29
	.short _02247C68 - _022479E6 - 2 ; case 30
	.short _02247C7E - _022479E6 - 2 ; case 31
	.short _02247C9E - _022479E6 - 2 ; case 32
	.short _02247CC0 - _022479E6 - 2 ; case 33
	.short _02247CE0 - _022479E6 - 2 ; case 34
	.short _02247CFE - _022479E6 - 2 ; case 35
	.short _02247D1C - _022479E6 - 2 ; case 36
	.short _02247D3E - _022479E6 - 2 ; case 37
	.short _02247D5E - _022479E6 - 2 ; case 38
	.short _02247D7E - _022479E6 - 2 ; case 39
	.short _02247D9E - _022479E6 - 2 ; case 40
	.short _02247DBE - _022479E6 - 2 ; case 41
	.short _02247DDE - _022479E6 - 2 ; case 42
	.short _02247DFE - _022479E6 - 2 ; case 43
	.short _02247E1E - _022479E6 - 2 ; case 44
	.short _02247E3C - _022479E6 - 2 ; case 45
	.short _02247E5A - _022479E6 - 2 ; case 46
	.short _02247E78 - _022479E6 - 2 ; case 47
	.short _02247E8A - _022479E6 - 2 ; case 48
	.short _02247EAC - _022479E6 - 2 ; case 49
	.short _02247ECE - _022479E6 - 2 ; case 50
	.short _02247EF0 - _022479E6 - 2 ; case 51
	.short _02247F10 - _022479E6 - 2 ; case 52
	.short _02247F3C - _022479E6 - 2 ; case 53
	.short _02247F6A - _022479E6 - 2 ; case 54
	.short _02247F96 - _022479E6 - 2 ; case 55
	.short _02247FC0 - _022479E6 - 2 ; case 56
	.short _02247FEE - _022479E6 - 2 ; case 57
	.short _0224801C - _022479E6 - 2 ; case 58
	.short _0224804A - _022479E6 - 2 ; case 59
	.short _02248078 - _022479E6 - 2 ; case 60
_02247A60:
	ldr r2, [r4, #8]
	bl ov12_0224768C
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02247A6A:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02247A74:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02247A80:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_022481D0
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02247A8C:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02247A98:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_02248184
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02247AA4:
	ldr r2, [r4, #8]
	bl ov12_02248220
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02247AAE:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247AC4:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247AD8:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247AEE:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_022481D0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247B02:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_02248190
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247B16:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022481E8
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247B2C:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247B40:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_02248200
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247B54:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_02248184
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247B68:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247B7E:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247B8C:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224768C
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247BA4:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247BBC:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247BD2:
	ldr r2, [r4, #8]
	bl ov12_0224819C
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247BE8:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247BFE:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_02248184
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_02248184
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247C14:
	ldr r2, [r4, #8]
	bl ov12_02248220
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247C2A:
	ldr r2, [r4, #8]
	bl ov12_02248220
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247C40:
	ldr r2, [r4, #8]
	bl ov12_02248220
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247C54:
	ldr r2, [r4, #8]
	bl ov12_02248220
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_02248184
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247C68:
	ldr r2, [r4, #8]
	bl ov12_02248218
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02247C7E:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247C9E:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247CC0:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247CE0:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247CFE:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_02248184
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247D1C:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247D3E:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247D5E:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247D7E:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_022481D0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247D9E:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_02248190
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247DBE:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_022481DC
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247DDE:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_02248184
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247DFE:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247E1E:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247E3C:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_022481D0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247E5A:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_022481DC
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247E78:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	ldr r0, [r4, #0x10]
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247E8A:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_0224820C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247EAC:
	ldr r2, [r4, #8]
	bl ov12_02248220
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247ECE:
	ldr r2, [r4, #8]
	bl ov12_02248218
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247EF0:
	ldr r2, [r4, #8]
	bl ov12_02248218
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02247F10:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl ov12_022480F0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02247F3C:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02247F6A:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0224819C
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl ov12_022481D0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02247F96:
	ldr r2, [r4, #8]
	bl ov12_022480C0
	str r0, [r5, #4]
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl ov12_0224810C
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02247FC0:
	ldr r2, [r4, #8]
	bl ov12_02248220
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02247FEE:
	ldr r2, [r4, #8]
	bl ov12_02248218
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224801C:
	ldr r2, [r4, #8]
	bl ov12_02248218
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224804A:
	ldr r2, [r4, #8]
	bl ov12_02248218
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248218
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02248078:
	ldr r2, [r4, #8]
	bl ov12_02248218
	str r0, [r5, #4]
	ldr r2, [r4, #0xc]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #8]
	ldr r2, [r4, #0x10]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0xc]
	ldr r2, [r4, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248218
	str r0, [r5, #0x10]
	ldr r2, [r4, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_02248220
	str r0, [r5, #0x14]
	ldr r2, [r4, #0x1c]
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_022480C0
	str r0, [r5, #0x18]
_022480BC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_022479C0

	thumb_func_start ov12_022480C0
ov12_022480C0: ; 0x022480C0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov12_0224768C
	cmp r4, #0x16
	bne _022480DA
	ldr r1, _022480E8 ; =0x000021A0
	add r2, r5, r0
	ldrb r1, [r2, r1]
	lsl r1, r1, #8
	orr r0, r1
	pop {r3, r4, r5, pc}
_022480DA:
	ldr r1, _022480EC ; =0x0000219C
	add r2, r5, r0
	ldrb r1, [r2, r1]
	lsl r1, r1, #8
	orr r0, r1
	pop {r3, r4, r5, pc}
	nop
_022480E8: .word 0x000021A0
_022480EC: .word 0x0000219C
	thumb_func_end ov12_022480C0

	thumb_func_start ov12_022480F0
ov12_022480F0: ; 0x022480F0
	cmp r1, #1
	beq _022480FA
	cmp r1, #0xff
	beq _02248100
	bx lr
_022480FA:
	ldr r1, _02248108 ; =0x00003044
	ldr r0, [r0, r1]
	bx lr
_02248100:
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_02248108: .word 0x00003044
	thumb_func_end ov12_022480F0

	thumb_func_start ov12_0224810C
ov12_0224810C: ; 0x0224810C
	push {r4, lr}
	cmp r1, #0x15
	bgt _02248124
	bge _0224815A
	cmp r1, #2
	bgt _0224817C
	cmp r1, #1
	blt _0224817C
	beq _0224812A
	cmp r1, #2
	beq _02248142
	b _0224817C
_02248124:
	cmp r1, #0xff
	beq _02248176
	b _0224817C
_0224812A:
	ldr r3, [r0, #0x64]
	mov r1, #0xc0
	mul r1, r3
	add r2, r0, r1
	ldr r1, _02248180 ; =0x00002DB8
	ldrh r4, [r2, r1]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl ov12_02248654
	b _0224817C
_02248142:
	ldr r3, [r0, #0x6c]
	mov r1, #0xc0
	mul r1, r3
	add r2, r0, r1
	ldr r1, _02248180 ; =0x00002DB8
	ldrh r4, [r2, r1]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl ov12_02248654
	b _0224817C
_0224815A:
	mov r1, #0x46
	lsl r1, r1, #2
	ldr r3, [r0, r1]
	mov r1, #0xc0
	mul r1, r3
	add r2, r0, r1
	ldr r1, _02248180 ; =0x00002DB8
	ldrh r4, [r2, r1]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl ov12_02248654
	b _0224817C
_02248176:
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r4, [r0, r1]
_0224817C:
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_02248180: .word 0x00002DB8
	thumb_func_end ov12_0224810C

	thumb_func_start ov12_02248184
ov12_02248184: ; 0x02248184
	cmp r1, #0xff
	bne _0224818E
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224818E:
	bx lr
	thumb_func_end ov12_02248184

	thumb_func_start ov12_02248190
ov12_02248190: ; 0x02248190
	cmp r1, #0xff
	bne _0224819A
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224819A:
	bx lr
	thumb_func_end ov12_02248190

	thumb_func_start ov12_0224819C
ov12_0224819C: ; 0x0224819C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	cmp r2, #0xff
	bne _022481AC
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	b _022481C8
_022481AC:
	bl ov12_0224768C
	add r1, r0, #0
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022481CC ; =0x00002D67
	lsl r1, r1, #0x18
	ldrb r4, [r2, r0]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r4, #0
	bl ov12_02248648
_022481C8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022481CC: .word 0x00002D67
	thumb_func_end ov12_0224819C

	thumb_func_start ov12_022481D0
ov12_022481D0: ; 0x022481D0
	cmp r1, #0xff
	bne _022481DA
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_022481DA:
	bx lr
	thumb_func_end ov12_022481D0

	thumb_func_start ov12_022481DC
ov12_022481DC: ; 0x022481DC
	cmp r1, #0xff
	bne _022481E6
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_022481E6:
	bx lr
	thumb_func_end ov12_022481DC

	thumb_func_start ov12_022481E8
ov12_022481E8: ; 0x022481E8
	push {r4, lr}
	add r4, r1, #0
	bl ov12_0224768C
	ldr r1, _022481FC ; =0x0000219C
	add r2, r4, r0
	ldrb r1, [r2, r1]
	lsl r1, r1, #8
	orr r0, r1
	pop {r4, pc}
	.align 2, 0
_022481FC: .word 0x0000219C
	thumb_func_end ov12_022481E8

	thumb_func_start ov12_02248200
ov12_02248200: ; 0x02248200
	cmp r1, #0xff
	bne _0224820A
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_0224820A:
	bx lr
	thumb_func_end ov12_02248200

	thumb_func_start ov12_0224820C
ov12_0224820C: ; 0x0224820C
	cmp r1, #0xff
	bne _02248216
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r0, [r0, r1]
_02248216:
	bx lr
	thumb_func_end ov12_0224820C

	thumb_func_start ov12_02248218
ov12_02248218: ; 0x02248218
	ldr r3, _0224821C ; =ov12_0224768C
	bx r3
	.align 2, 0
_0224821C: .word ov12_0224768C
	thumb_func_end ov12_02248218

	thumb_func_start ov12_02248220
ov12_02248220: ; 0x02248220
	ldr r3, _02248224 ; =ov12_0224768C
	bx r3
	.align 2, 0
_02248224: .word ov12_0224768C
	thumb_func_end ov12_02248220

	thumb_func_start ov12_02248228
ov12_02248228: ; 0x02248228
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp, #0x18]
	bl ov12_0223A930
	str r0, [sp, #0x28]
	add r0, r7, #0
	bl ov12_0223A9A8
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl ov12_0223A9A4
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl ov12_0223A7D4
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl ov12_0223A8E4
	add r6, r0, #0
	add r0, r7, #0
	bl ov12_0223A8EC
	add r4, r0, #0
	add r0, r7, #0
	bl ov12_0223A938
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022484A8 ; =0x00004E35
	mov r3, #8
	str r0, [sp, #8]
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0xf8
	bl sub_0200D4A4
	mov r0, #8
	str r0, [sp]
	mov r0, #0x52
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022484AC ; =0x00004E30
	add r2, r6, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_0200D644
	mov r0, #1
	str r0, [sp]
	ldr r0, _022484B0 ; =0x00004E2D
	mov r3, #8
	str r0, [sp, #4]
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0xf9
	bl sub_0200D6D4
	mov r0, #1
	str r0, [sp]
	ldr r0, _022484B0 ; =0x00004E2D
	mov r3, #8
	str r0, [sp, #4]
	add r2, r3, #0
	add r0, r6, #0
	add r1, r4, #0
	add r3, #0xfa
	bl sub_0200D704
	ldr r2, _022484B4 ; =0x0226C428
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200D734
	str r0, [r5, #0xc]
	bl sub_0200DC18
	ldr r0, [sp, #0x18]
	bl sub_020741B0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022484B8 ; =0x00004E36
	add r1, r4, #0
	str r0, [sp, #8]
	add r0, r6, #0
	mov r2, #0x14
	bl sub_0200E188
	bl sub_02074490
	mov r1, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022484BC ; =0x00004E31
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_0200D644
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _022484C0 ; =0x00004E2E
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x14
	bl sub_0200D6D4
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _022484C0 ; =0x00004E2E
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x14
	bl sub_0200D704
	ldr r2, _022484C4 ; =0x0226C45C
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200D734
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x18]
	bl sub_02074484
	add r1, r0, #0
	ldr r0, [r5, #0x10]
	ldr r0, [r0]
	bl sub_02024AA8
	ldr r0, [r5, #0x10]
	bl sub_0200DC18
	mov r0, #1
	mov r1, #5
	bl sub_02013534
	str r0, [r5, #0x50]
	ldr r0, [sp, #0x18]
	mov r1, #0xb0
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02248390
	mov r0, #2
	b _0224839A
_02248390:
	ldr r0, [sp, #0x18]
	mov r1, #0x6f
	mov r2, #0
	bl sub_0206E540
_0224839A:
	cmp r0, #0
	bne _022483AC
	mov r1, #0x3b
	ldr r0, [sp, #0x28]
	lsl r1, r1, #4
	bl sub_0200BBA0
	add r6, r0, #0
	b _022483C6
_022483AC:
	cmp r0, #1
	bne _022483BC
	ldr r0, [sp, #0x28]
	ldr r1, _022484C8 ; =0x000003B1
	bl sub_0200BBA0
	add r6, r0, #0
	b _022483C6
_022483BC:
	ldr r0, [sp, #0x28]
	ldr r1, _022484CC ; =0x000003B2
	bl sub_0200BBA0
	add r6, r0, #0
_022483C6:
	ldr r0, [sp, #0x18]
	bl sub_02070DB0
	add r2, r0, #0
	ldr r0, [sp, #0x24]
	mov r1, #0
	bl sub_0200BF8C
	ldr r0, [sp, #0x18]
	mov r1, #0xa1
	mov r2, #0
	bl sub_0206E540
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r0, [sp, #0x24]
	mov r3, #3
	str r1, [sp, #4]
	bl sub_0200BFCC
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r2, r6, #0
	bl sub_0200CBBC
	add r0, r6, #0
	bl sub_02026380
	add r0, sp, #0x68
	bl sub_0201D3C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x68
	mov r2, #0xc
	mov r3, #4
	bl sub_0201D494
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022484D0 ; =0x00010200
	ldr r2, [sp, #0x20]
	str r0, [sp, #8]
	add r0, sp, #0x68
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_020200FC
	add r0, sp, #0x68
	mov r1, #1
	mov r2, #5
	bl sub_02013688
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x5c
	bl sub_02021AC8
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x2c]
	add r0, sp, #0x68
	str r0, [sp, #0x30]
	add r0, r4, #0
	bl sub_0200E2B0
	str r0, [sp, #0x34]
	ldr r1, _022484AC ; =0x00004E30
	add r0, r4, #0
	bl sub_0200D934
	mov r1, #0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	mov r0, #0xb0
	str r0, [sp, #0x44]
	mov r0, #8
	str r0, [sp, #0x48]
	mov r0, #0x64
	str r0, [sp, #0x50]
	mov r0, #1
	str r0, [sp, #0x54]
	mov r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x2c
	str r1, [sp, #0x4c]
	bl sub_020135D8
	add r2, r5, #0
	add r3, sp, #0x5c
	str r0, [r5, #0x14]
	ldmia r3!, {r0, r1}
	add r2, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #1
	str r0, [r2]
	ldr r0, [r5, #0x14]
	bl sub_020138E0
	add r0, sp, #0x68
	bl sub_0201D520
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022484A8: .word 0x00004E35
_022484AC: .word 0x00004E30
_022484B0: .word 0x00004E2D
_022484B4: .word 0x0226C428
_022484B8: .word 0x00004E36
_022484BC: .word 0x00004E31
_022484C0: .word 0x00004E2E
_022484C4: .word 0x0226C45C
_022484C8: .word 0x000003B1
_022484CC: .word 0x000003B2
_022484D0: .word 0x00010200
	thumb_func_end ov12_02248228

	thumb_func_start ov12_022484D4
ov12_022484D4: ; 0x022484D4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl ov12_0223A8EC
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0200D9DC
	ldr r0, [r5, #0x10]
	bl sub_0200D9DC
	ldr r0, [r5, #0x14]
	bl sub_02013660
	add r0, r5, #0
	add r0, #0x18
	bl sub_02021B5C
	ldr r1, _02248540 ; =0x00004E35
	add r0, r4, #0
	bl sub_0200D958
	ldr r1, _02248544 ; =0x00004E30
	add r0, r4, #0
	bl sub_0200D968
	ldr r1, _02248548 ; =0x00004E2D
	add r0, r4, #0
	bl sub_0200D978
	ldr r1, _02248548 ; =0x00004E2D
	add r0, r4, #0
	bl sub_0200D988
	ldr r1, _0224854C ; =0x00004E36
	add r0, r4, #0
	bl sub_0200D958
	ldr r1, _02248550 ; =0x00004E31
	add r0, r4, #0
	bl sub_0200D968
	ldr r1, _02248554 ; =0x00004E2E
	add r0, r4, #0
	bl sub_0200D978
	ldr r1, _02248554 ; =0x00004E2E
	add r0, r4, #0
	bl sub_0200D988
	ldr r0, [r5, #0x50]
	bl sub_020135AC
	pop {r3, r4, r5, pc}
	.align 2, 0
_02248540: .word 0x00004E35
_02248544: .word 0x00004E30
_02248548: .word 0x00004E2D
_0224854C: .word 0x00004E36
_02248550: .word 0x00004E31
_02248554: .word 0x00004E2E
	thumb_func_end ov12_022484D4

	thumb_func_start ov12_02248558
ov12_02248558: ; 0x02248558
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r5, r0, #0
	str r2, [sp]
	bl ov12_0223AB1C
	cmp r0, #0
	bne _0224863C
	add r0, r5, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _022485A8
	add r0, r5, #0
	mov r1, #3
	bl ov12_0223AAD8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	mov r1, #5
	bl ov12_0223AAD8
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r2, #0xc0
	add r0, r1, #0
	mul r0, r2
	mul r2, r6
	ldr r3, _02248640 ; =0x00002D74
	add r0, r4, r0
	add r2, r4, r2
	ldrb r0, [r0, r3]
	ldrb r2, [r2, r3]
	cmp r0, r2
	bls _022485B4
	add r6, r1, #0
	b _022485B4
_022485A8:
	add r0, r5, #0
	mov r1, #1
	bl ov12_0223AAD8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_022485B4:
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r4, r2
	ldr r2, _02248644 ; =0x0000219C
	ldrb r2, [r3, r2]
	bl ov12_0223A880
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	ldr r2, _02248640 ; =0x00002D74
	mul r1, r6
	add r1, r4, r1
	ldrb r0, [r0, r2]
	ldrb r1, [r1, r2]
	cmp r1, r0
	bls _02248620
	sub r0, r1, r0
	cmp r0, #0x1e
	blt _02248602
	add r0, r5, #0
	bl ov12_0223AB60
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r7, #0
	mov r1, #8
	lsr r2, r2, #0x10
	bl sub_0206FE90
	add r0, r7, #0
	mov r1, #6
	bl sub_02097F0C
	pop {r3, r4, r5, r6, r7, pc}
_02248602:
	add r0, r5, #0
	bl ov12_0223AB60
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r7, #0
	mov r1, #6
	lsr r2, r2, #0x10
	bl sub_0206FE90
	add r0, r7, #0
	mov r1, #4
	bl sub_02097F0C
	pop {r3, r4, r5, r6, r7, pc}
_02248620:
	add r0, r5, #0
	bl ov12_0223AB60
	add r2, r0, #0
	lsl r2, r2, #0x10
	add r0, r7, #0
	mov r1, #6
	lsr r2, r2, #0x10
	bl sub_0206FE90
	add r0, r7, #0
	mov r1, #4
	bl sub_02097F0C
_0224863C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248640: .word 0x00002D74
_02248644: .word 0x0000219C
	thumb_func_end ov12_02248558

	thumb_func_start ov12_02248648
ov12_02248648: ; 0x02248648
	add r1, r0, r1
	mov r0, #0x39
	lsl r0, r0, #4
	strb r2, [r1, r0]
	bx lr
	.align 2, 0
	thumb_func_end ov12_02248648

	thumb_func_start ov12_02248654
ov12_02248654: ; 0x02248654
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0xe5
	lsl r0, r0, #2
	strh r2, [r1, r0]
	bx lr
	thumb_func_end ov12_02248654

	thumb_func_start ov12_02248660
ov12_02248660: ; 0x02248660
	push {r3, r4, r5, lr}
	ldr r1, _022486A4 ; =0x00003158
	add r5, r0, #0
	mov r0, #5
	bl sub_0201AA8C
	add r4, r0, #0
	ldr r2, _022486A4 ; =0x00003158
	mov r0, #0
	add r1, r4, #0
	bl sub_020D4858
	add r0, r4, #0
	bl ov12_02250F44
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02251038
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224E384
	ldr r0, _022486A8 ; =0x000003DE
	add r0, r4, r0
	bl sub_02073300
	mov r0, #5
	bl sub_02078138
	ldr r1, _022486AC ; =0x00002120
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022486A4: .word 0x00003158
_022486A8: .word 0x000003DE
_022486AC: .word 0x00002120
	thumb_func_end ov12_02248660

	thumb_func_start ov12_022486B0
ov12_022486B0: ; 0x022486B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, _022486F4 ; =0x0000311F
	add r5, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _022486D6
	bl ov12_0223BD14
	cmp r0, #0
	beq _022486D6
	add r0, r5, #0
	bl ov12_0223BD14
	mov r1, #0x40
	tst r0, r1
	bne _022486D6
	mov r0, #0x2a
	str r0, [r4, #8]
_022486D6:
	ldr r2, [r4, #8]
	add r0, r5, #0
	lsl r3, r2, #2
	ldr r2, _022486F8 ; =0x0226CA90
	add r1, r4, #0
	ldr r2, [r2, r3]
	blx r2
	ldr r0, [r4, #8]
	cmp r0, #0x2d
	bne _022486EE
	mov r0, #1
	pop {r3, r4, r5, pc}
_022486EE:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_022486F4: .word 0x0000311F
_022486F8: .word 0x0226CA90
	thumb_func_end ov12_022486B0

	thumb_func_start ov12_022486FC
ov12_022486FC: ; 0x022486FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02248710 ; =0x00002120
	ldr r0, [r4, r0]
	bl sub_0201AB0C
	add r0, r4, #0
	bl sub_0201AB0C
	pop {r4, pc}
	.align 2, 0
_02248710: .word 0x00002120
	thumb_func_end ov12_022486FC

	thumb_func_start ov12_02248714
ov12_02248714: ; 0x02248714
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r6, [sp, #0x20]
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	str r6, [sp]
	bl ov12_0224BCC4
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_0224C018
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02248714

	thumb_func_start ov12_0224873C
ov12_0224873C: ; 0x0224873C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _02248764
_0224874E:
	ldr r3, _02248774 ; =0x0000219C
	add r6, r5, r4
	ldrb r3, [r6, r3]
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_0224E4FC
	add r4, r4, #1
	cmp r4, r7
	blt _0224874E
_02248764:
	ldr r0, _02248778 ; =0x00002E4C
	ldr r1, [r5, r0]
	ldr r0, _0224877C ; =0x00003122
	strh r1, [r5, r0]
	mov r0, #1
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248774: .word 0x0000219C
_02248778: .word 0x00002E4C
_0224877C: .word 0x00003122
	thumb_func_end ov12_0224873C

	thumb_func_start ov12_02248780
ov12_02248780: ; 0x02248780
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov12_02248780

	thumb_func_start ov12_02248798
ov12_02248798: ; 0x02248798
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02250D4C
	cmp r0, #0
	beq _022487BA
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x29
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #3
	str r0, [r4, #0xc]
	b _022487BE
_022487BA:
	mov r0, #3
	str r0, [r4, #8]
_022487BE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252D3C
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02248798

	thumb_func_start ov12_022487C8
ov12_022487C8: ; 0x022487C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_02253194
	add r2, r0, #0
	beq _022487E8
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_022487E8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252D3C
	add r0, r5, #0
	bl ov12_0223C0C4
	mov r0, #4
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022487C8

	thumb_func_start ov12_022487FC
ov12_022487FC: ; 0x022487FC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r7, r1, #0
	bl ov12_0223A7F0
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _0224882C
	add r6, r7, #0
	add r2, r4, #0
_02248812:
	mov r0, #0xb7
	strb r2, [r7, r4]
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
	add r3, r7, r4
	ldr r0, _02248844 ; =0x0000314C
	add r4, r4, #1
	strb r2, [r3, r0]
	add r6, #0xc0
	cmp r4, r5
	blt _02248812
_0224882C:
	ldr r0, [sp]
	mov r1, #0
	bl ov12_0223BB64
	ldr r0, [sp]
	mov r1, #1
	bl ov12_02237ED0
	mov r0, #5
	str r0, [r7, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248844: .word 0x0000314C
	thumb_func_end ov12_022487FC

	thumb_func_start ov12_02248848
ov12_02248848: ; 0x02248848
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r7, r0, #0
	str r1, [sp, #0x1c]
	bl ov12_0223A7F0
	str r0, [sp, #0x64]
	add r0, r7, #0
	bl ov12_0223A7E0
	str r0, [sp, #0x28]
	mov r4, #0
	ldr r0, [sp, #0x64]
	str r4, [sp, #0x60]
	cmp r0, #0
	bgt _0224886C
	bl _0224912A
_0224886C:
	ldr r0, [sp, #0x1c]
	mov r1, #0x75
	lsl r1, r1, #2
	str r0, [sp, #0x58]
	add r0, r0, r1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x1c]
	ldr r1, _02248B84 ; =0x000021AC
	str r0, [sp, #0x50]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	add r0, r0, r1
	str r0, [sp, #0x44]
	mov r1, #0x23
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #8
	add r0, r0, r1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x28]
	mov r1, #2
	and r0, r1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x28]
	mov r1, #8
	and r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x28]
	lsl r1, r1, #6
	and r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x28]
	mov r1, #0x20
	and r0, r1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x28]
	mov r1, #4
	and r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r1, #0x80
	and r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x20]
	thumb_func_end ov12_02248848

	thumb_func_start ov12_022488C8
ov12_022488C8: ; 0x022488C8
	ldr r0, [sp, #0x1c]
	add r5, r0, r4
	ldrb r0, [r0, r4]
	cmp r0, #0x11
	bls _022488D6
	bl _022490F0
_022488D6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022488E2: ; jump table
	.short _02248906 - _022488E2 - 2 ; case 0
	.short _022489E6 - _022488E2 - 2 ; case 1
	.short _022489A2 - _022488E2 - 2 ; case 2
	.short _02248C86 - _022488E2 - 2 ; case 3
	.short _02248C94 - _022488E2 - 2 ; case 4
	.short _02248D7A - _022488E2 - 2 ; case 5
	.short _02248DB4 - _022488E2 - 2 ; case 6
	.short _02248DF4 - _022488E2 - 2 ; case 7
	.short _02248E02 - _022488E2 - 2 ; case 8
	.short _02248E30 - _022488E2 - 2 ; case 9
	.short _02248EA4 - _022488E2 - 2 ; case 10
	.short _02248F02 - _022488E2 - 2 ; case 11
	.short _02248FFA - _022488E2 - 2 ; case 12
	.short _0224904A - _022488E2 - 2 ; case 13
	.short _0224907E - _022488E2 - 2 ; case 14
	.short _02249086 - _022488E2 - 2 ; case 15
	.short _022490A0 - _022488E2 - 2 ; case 16
	.short _022490E4 - _022488E2 - 2 ; case 17
_02248906:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0224892A
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _0224892A
	cmp r4, #2
	bne _0224891E
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _02248A16
_0224891E:
	cmp r4, #3
	bne _0224892A
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, #1]
	cmp r0, #0xe
	bne _02248A16
_0224892A:
	add r0, r4, #0
	bl sub_020726C0
	ldr r2, _02248B88 ; =0x00003108
	ldr r1, [sp, #0x1c]
	ldrb r1, [r1, r2]
	tst r0, r1
	beq _02248948
	mov r0, #0xd
	strb r0, [r5]
	ldr r1, _02248B8C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x28
	str r2, [r0, r1]
	b _022490F0
_02248948:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_022567A0
	cmp r0, #0
	bne _0224896C
	ldr r0, [sp, #0x54]
	mov r2, #0xd
	ldr r1, [r0]
	mov r0, #2
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	ldr r1, _02248B8C ; =0x000021A8
	ldr r0, [sp, #0x58]
	strb r2, [r5]
	str r2, [r0, r1]
	b _022490F0
_0224896C:
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223A7E8
	bl ov12_02261264
	cmp r0, #1
	beq _02248988
	mov r1, #0x15
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0224899C
_02248988:
	ldr r3, _02248B90 ; =0x0000219C
	ldr r1, [sp, #0x1c]
	ldrb r3, [r5, r3]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02262B80
	mov r0, #1
	strb r0, [r5]
	b _022490F0
_0224899C:
	mov r0, #2
	strb r0, [r5]
	b _022490F0
_022489A2:
	ldr r0, [sp, #0x64]
	mov r6, #0
	cmp r0, #0
	ble _022489CE
_022489AA:
	cmp r6, r4
	beq _022489C6
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	bl ov12_02261264
	cmp r0, #1
	bne _022489C6
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r6]
	cmp r0, #0xe
	bne _022489CE
_022489C6:
	ldr r0, [sp, #0x64]
	add r6, r6, #1
	cmp r6, r0
	blt _022489AA
_022489CE:
	ldr r0, [sp, #0x64]
	cmp r6, r0
	bne _02248A16
	ldr r3, _02248B90 ; =0x0000219C
	ldr r1, [sp, #0x1c]
	ldrb r3, [r5, r3]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02262B80
	mov r0, #1
	strb r0, [r5]
_022489E6:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _02248A16
	mov r1, #0x23
	ldr r0, [sp, #0x50]
	lsl r1, r1, #8
	ldrb r2, [r0, r1]
	ldr r1, _02248B94 ; =0x000021B4
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02248A3A
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #1
	beq _02248A18
	cmp r0, #4
	beq _02248A28
_02248A16:
	b _022490F0
_02248A18:
	mov r0, #0x11
	strb r0, [r5]
	mov r1, #0xd
	strb r1, [r5, #4]
	ldr r2, _02248B8C ; =0x000021A8
	ldr r1, [sp, #0x58]
	str r0, [r1, r2]
	b _022490F0
_02248A28:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _02248B8C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x10
	str r2, [r0, r1]
	b _022490F0
_02248A3A:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _02248ABC
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #5
	bhi _02248AFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248A58: ; jump table
	.short _022490F0 - _02248A58 - 2 ; case 0
	.short _02248A64 - _02248A58 - 2 ; case 1
	.short _02248A74 - _02248A58 - 2 ; case 2
	.short _02248A86 - _02248A58 - 2 ; case 3
	.short _02248A98 - _02248A58 - 2 ; case 4
	.short _02248AAA - _02248A58 - 2 ; case 5
_02248A64:
	mov r0, #0x11
	strb r0, [r5]
	mov r1, #0xd
	strb r1, [r5, #4]
	ldr r2, _02248B8C ; =0x000021A8
	ldr r1, [sp, #0x58]
	str r0, [r1, r2]
	b _022490F0
_02248A74:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _02248B8C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x12
	str r2, [r0, r1]
	b _022490F0
_02248A86:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _02248B8C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x13
	str r2, [r0, r1]
	b _022490F0
_02248A98:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _02248B8C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x10
	str r2, [r0, r1]
	b _022490F0
_02248AAA:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5]
	ldr r1, _02248B8C ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x14
	str r2, [r0, r1]
	b _022490F0
_02248ABC:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0xff
	beq _02248AD2
	ldr r1, _02248B98 ; =0x0000314C
	mov r0, #1
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
_02248AD2:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #4
	bgt _02248AF8
	cmp r0, #0
	blt _02248AFE
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02248AEE: ; jump table
	.short _022490F0 - _02248AEE - 2 ; case 0
	.short _02248B00 - _02248AEE - 2 ; case 1
	.short _02248BB6 - _02248AEE - 2 ; case 2
	.short _02248C2C - _02248AEE - 2 ; case 3
	.short _02248C3A - _02248AEE - 2 ; case 4
_02248AF8:
	cmp r0, #0xff
	bne _02248AFE
	b _02248C48
_02248AFE:
	b _022490F0
_02248B00:
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0
	bl ov12_022517EC
	cmp r0, #0xf
	bne _02248B40
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	add r0, r7, #0
	bl ov12_0223B514
	mov r1, #0x10
	tst r0, r1
	beq _02248B38
	mov r0, #0xd
	strb r0, [r5]
	b _02248BAC
_02248B38:
	mov r0, #0x11
	strb r0, [r5]
	strb r1, [r5, #4]
	b _02248BAC
_02248B40:
	ldr r3, _02248B9C ; =0x00002DEC
	ldr r0, [sp, #0x4c]
	ldrh r0, [r0, r3]
	cmp r0, #0
	beq _02248BA8
	ldr r0, [sp, #0x4c]
	add r1, r3, #2
	ldrh r2, [r0, r1]
	ldr r1, _02248BA0 ; =0x000030BC
	ldr r0, [sp, #0x48]
	strh r2, [r0, r1]
	ldr r0, [sp, #0x4c]
	sub r1, #8
	ldrh r2, [r0, r3]
	ldr r0, [sp, #0x48]
	strh r2, [r0, r1]
	ldr r1, _02248BA4 ; =0x000021B0
	ldr r0, [sp, #0x58]
	mov r2, #0
	str r2, [r0, r1]
	add r0, r7, #0
	bl ov12_0223B514
	mov r1, #0x10
	tst r0, r1
	beq _02248B7A
	mov r0, #0xd
	strb r0, [r5]
	b _02248BAC
_02248B7A:
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	b _02248BAC
	.align 2, 0
_02248B84: .word 0x000021AC
_02248B88: .word 0x00003108
_02248B8C: .word 0x000021A8
_02248B90: .word 0x0000219C
_02248B94: .word 0x000021B4
_02248B98: .word 0x0000314C
_02248B9C: .word 0x00002DEC
_02248BA0: .word 0x000030BC
_02248BA4: .word 0x000021B0
_02248BA8:
	mov r0, #3
	strb r0, [r5]
_02248BAC:
	ldr r1, _02248EB8 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0xd
	str r2, [r0, r1]
	b _022490F0
_02248BB6:
	add r0, r7, #0
	bl ov12_0223A7E0
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq _02248BD6
	mov r0, #0x11
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	ldr r1, _02248EB8 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x15
	str r2, [r0, r1]
	b _022490F0
_02248BD6:
	add r0, r7, #0
	bl ov12_0223A7E0
	mov r1, #0x84
	tst r0, r1
	beq _02248C1E
	ldr r1, _02248EBC ; =0x00000251
	add r0, sp, #0x78
	strh r1, [r0, #6]
	mov r1, #0
	strb r1, [r0, #5]
	mov r0, sp
	str r0, [sp, #0x68]
	sub r0, #8
	str r0, [sp, #0x68]
	add r2, sp, #0x7c
	add r3, r0, #0
	mov r6, #4
_02248BFA:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _02248BFA
	ldr r0, [r2]
	add r1, r4, #0
	str r0, [r3]
	ldr r0, [sp, #0x68]
	ldmia r0!, {r2, r3}
	str r0, [sp, #0x68]
	add r0, r7, #0
	bl ov12_022639B8
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5, #4]
	b _022490F0
_02248C1E:
	ldr r1, _02248EB8 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0xe
	str r2, [r0, r1]
	mov r0, #7
	strb r0, [r5]
	b _022490F0
_02248C2C:
	ldr r1, _02248EB8 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0xf
	str r2, [r0, r1]
	mov r0, #9
	strb r0, [r5]
	b _022490F0
_02248C3A:
	ldr r1, _02248EB8 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x10
	str r2, [r0, r1]
	mov r0, #0xb
	strb r0, [r5]
	b _022490F0
_02248C48:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02248C6A
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02263CCC
	mov r0, #0
	strb r0, [r5]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223AB6C
	ldr r1, [sp, #0x1c]
	mov r2, #0
	strb r2, [r1, r0]
	b _022490F0
_02248C6A:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02248CB2
	cmp r4, #2
	bne _02248CB2
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02263CCC
	ldr r0, [sp, #0x1c]
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	b _022490F0
_02248C86:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02262F40
	mov r0, #4
	strb r0, [r5]
_02248C94:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _02248CA6
	mov r0, #0
	strb r0, [r5]
	b _022490F0
_02248CA6:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	bne _02248CB4
_02248CB2:
	b _022490F0
_02248CB4:
	mov r1, #0x23
	ldr r0, [sp, #0x50]
	lsl r1, r1, #8
	ldrb r0, [r0, r1]
	sub r3, r0, #1
	cmp r3, #4
	bne _02248CD0
	ldr r1, _02248EB8 ; =0x000021A8
	ldr r0, [sp, #0x58]
	mov r2, #0x10
	str r2, [r0, r1]
	mov r0, #0xb
	strb r0, [r5]
	b _022490F0
_02248CD0:
	add r0, sp, #0x7c
	str r0, [sp]
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02251A28
	cmp r0, #0
	bne _02248D38
	add r0, r7, #0
	bl ov12_0223B514
	mov r1, #0x10
	tst r0, r1
	beq _02248D06
	add r0, r7, #0
	mov r1, #1
	bl ov12_0223BFFC
	add r0, r7, #0
	bl ov12_0223A7E4
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_022581BC
	b _022490F0
_02248D06:
	mov r0, sp
	str r0, [sp, #0x6c]
	sub r0, #8
	str r0, [sp, #0x6c]
	add r2, sp, #0x7c
	add r3, r0, #0
	mov r6, #4
_02248D14:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _02248D14
	ldr r0, [r2]
	add r1, r4, #0
	str r0, [r3]
	ldr r0, [sp, #0x6c]
	ldmia r0!, {r2, r3}
	str r0, [sp, #0x6c]
	add r0, r7, #0
	bl ov12_022639B8
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #3
	strb r0, [r5, #4]
	b _022490F0
_02248D38:
	mov r3, #0x23
	ldr r0, [sp, #0x50]
	lsl r3, r3, #8
	ldrb r2, [r0, r3]
	ldr r1, _02248EC0 ; =0x000021B0
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	ldr r0, [sp, #0x50]
	ldrb r0, [r0, r3]
	ldr r3, _02248EC4 ; =0x000030BC
	sub r1, r0, #1
	ldr r0, [sp, #0x48]
	strh r1, [r0, r3]
	ldrh r0, [r0, r3]
	lsl r1, r0, #1
	ldr r0, [sp, #0x4c]
	add r1, r0, r1
	ldr r0, _02248EC8 ; =0x00002D4C
	ldrh r2, [r1, r0]
	add r1, r3, #0
	ldr r0, [sp, #0x48]
	sub r1, #8
	strh r2, [r0, r1]
	mov r0, #5
	strb r0, [r5]
	add r0, r3, #0
	add r0, #0x90
	ldrb r1, [r5, r0]
	mov r0, #2
	add r3, #0x90
	orr r0, r1
	strb r0, [r5, r3]
	b _022490F0
_02248D7A:
	add r0, sp, #0x78
	str r0, [sp]
	ldr r1, _02248EC4 ; =0x000030BC
	ldr r0, [sp, #0x48]
	lsl r2, r4, #0x18
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x28]
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	lsr r2, r2, #0x18
	str r0, [sp, #8]
	add r0, r7, #0
	bl ov12_0224DB64
	cmp r0, #0
	beq _02248DAE
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x78]
	add r0, r7, #0
	add r3, r4, #0
	bl ov12_02262FFC
	mov r0, #6
	strb r0, [r5]
	b _022490F0
_02248DAE:
	mov r0, #0xd
	strb r0, [r5]
	b _022490F0
_02248DB4:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _02248DC6
	mov r0, #3
	strb r0, [r5]
	b _022490F0
_02248DC6:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	bne _02248DD4
	b _022490F0
_02248DD4:
	mov r1, #0x23
	ldr r0, [sp, #0x50]
	lsl r1, r1, #8
	ldrb r0, [r0, r1]
	ldr r1, _02248ECC ; =0x000021AC
	sub r2, r0, #1
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	mov r0, #0xd
	strb r0, [r5]
	ldr r1, _02248ED0 ; =0x0000314C
	mov r0, #4
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
	b _022490F0
_02248DF4:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02263138
	mov r0, #8
	strb r0, [r5]
_02248E02:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _02248E14
	mov r0, #0
	strb r0, [r5]
	b _022490F0
_02248E14:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _02248EE0
	ldr r0, [sp, #0x40]
	ldr r1, _02248EC0 ; =0x000021B0
	ldr r2, [r0]
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	mov r0, #0xd
	strb r0, [r5]
	b _022490F0
_02248E30:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	mov r6, #6
	bl ov12_02255920
	str r0, [sp, #0x5c]
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223AB0C
	cmp r0, #4
	beq _02248E56
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223AB0C
	cmp r0, #5
	bne _02248E8E
_02248E56:
	ldr r0, [sp, #0x28]
	cmp r0, #3
	beq _02248E74
	cmp r0, #7
	beq _02248E74
	cmp r0, #0x83
	beq _02248E74
	cmp r0, #0x13
	bne _02248E8E
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223AB0C
	cmp r0, #4
	bne _02248E8E
_02248E74:
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223AB6C
	lsl r1, r0, #4
	ldr r0, [sp, #0x1c]
	add r2, r0, r1
	ldr r0, _02248EB8 ; =0x000021A8
	ldr r1, [r2, r0]
	cmp r1, #0xf
	bne _02248E8E
	add r0, #8
	ldr r6, [r2, r0]
_02248E8E:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x1c]
	str r0, [sp]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0
	str r6, [sp, #4]
	bl ov12_022632DC
	mov r0, #0xa
	strb r0, [r5]
_02248EA4:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _02248ED4
	mov r0, #0
	strb r0, [r5]
	b _022490F0
	nop
_02248EB8: .word 0x000021A8
_02248EBC: .word 0x00000251
_02248EC0: .word 0x000021B0
_02248EC4: .word 0x000030BC
_02248EC8: .word 0x00002D4C
_02248ECC: .word 0x000021AC
_02248ED0: .word 0x0000314C
_02248ED4:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	bne _02248EE2
_02248EE0:
	b _022490F0
_02248EE2:
	mov r3, #0x23
	ldr r0, [sp, #0x50]
	lsl r3, r3, #8
	ldrb r0, [r0, r3]
	ldr r1, _0224917C ; =0x000021B0
	sub r2, r0, #1
	ldr r0, [sp, #0x58]
	str r2, [r0, r1]
	ldr r0, [sp, #0x50]
	sub r1, #0x10
	ldrb r0, [r0, r3]
	sub r0, r0, #1
	strb r0, [r5, r1]
	mov r0, #0xd
	strb r0, [r5]
	b _022490F0
_02248F02:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02248F22
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r3, _02249180 ; =0x000003BB
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_0226337C
	mov r0, #0xc
	strb r0, [r5]
	b _022490F0
_02248F22:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02248F8E
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02248F8E
	add r0, r7, #0
	bl ov12_0223B514
	mov r1, #0x10
	tst r0, r1
	beq _02248F52
	add r0, r7, #0
	mov r1, #1
	bl ov12_0223BFFC
	add r0, r7, #0
	bl ov12_0223A7E4
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_022581BC
	b _022490F0
_02248F52:
	mov r1, #0
	add r0, sp, #0x78
	strb r1, [r0, #5]
	ldr r1, _02249184 ; =0x00000319
	add r2, sp, #0x7c
	strh r1, [r0, #6]
	mov r0, sp
	str r0, [sp, #0x70]
	sub r0, #8
	str r0, [sp, #0x70]
	add r3, r0, #0
	mov r6, #4
_02248F6A:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _02248F6A
	ldr r0, [r2]
	add r1, r4, #0
	str r0, [r3]
	ldr r0, [sp, #0x70]
	ldmia r0!, {r2, r3}
	str r0, [sp, #0x70]
	add r0, r7, #0
	bl ov12_022639B8
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5, #4]
	b _022490F0
_02248F8E:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	add r3, sp, #0x7c
	bl ov12_02252980
	cmp r0, #0
	beq _02248FF4
	add r0, r7, #0
	bl ov12_0223B514
	mov r1, #0x10
	tst r0, r1
	beq _02248FC2
	add r0, r7, #0
	mov r1, #1
	bl ov12_0223BFFC
	add r0, r7, #0
	bl ov12_0223A7E4
	add r1, r0, #0
	add r0, r7, #0
	bl ov12_022581BC
	b _022490F0
_02248FC2:
	mov r0, sp
	str r0, [sp, #0x74]
	sub r0, #8
	str r0, [sp, #0x74]
	add r2, sp, #0x7c
	add r3, r0, #0
	mov r6, #4
_02248FD0:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _02248FD0
	ldr r0, [r2]
	add r1, r4, #0
	str r0, [r3]
	ldr r0, [sp, #0x74]
	ldmia r0!, {r2, r3}
	str r0, [sp, #0x74]
	add r0, r7, #0
	bl ov12_022639B8
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #0
	strb r0, [r5, #4]
	b _022490F0
_02248FF4:
	mov r0, #0xc
	strb r0, [r5]
	b _022490F0
_02248FFA:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02249024
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _02249028
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0xff
	bne _0224901E
	mov r0, #0
	strb r0, [r5]
	b _02249028
_0224901E:
	mov r0, #0xd
	strb r0, [r5]
	b _02249028
_02249024:
	mov r0, #0xd
	strb r0, [r5]
_02249028:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _022490F0
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _022490F0
	ldrb r0, [r5]
	cmp r0, #0xd
	bne _022490F0
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223AB6C
	ldr r1, [sp, #0x1c]
	mov r2, #0xd
	strb r2, [r1, r0]
	b _022490F0
_0224904A:
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02263CCC
	ldr r0, [sp, #0x28]
	cmp r0, #7
	bne _02249072
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_0223AB6C
	ldr r1, [sp, #0x1c]
	ldrb r0, [r1, r0]
	cmp r0, #0xe
	bne _0224907A
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02263F30
	b _0224907A
_02249072:
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02263F30
_0224907A:
	mov r0, #0xe
	strb r0, [r5]
_0224907E:
	ldr r0, [sp, #0x60]
	add r0, r0, #1
	str r0, [sp, #0x60]
	b _022490F0
_02249086:
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0225682C
	cmp r0, #0
	beq _022490F0
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_0224EDC0
	ldrb r0, [r5, #4]
	strb r0, [r5]
	b _022490F0
_022490A0:
	mov r1, #2
	add r0, sp, #0x78
	strb r1, [r0, #5]
	mov r1, #0x26
	lsl r1, r1, #4
	strh r1, [r0, #6]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	bl ov12_022522E0
	str r0, [sp, #0x80]
	mov r0, sp
	sub r0, #8
	mov ip, r0
	add r2, sp, #0x7c
	add r3, r0, #0
	mov r6, #4
_022490C2:
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r6, r6, #1
	bne _022490C2
	ldr r0, [r2]
	add r1, r4, #0
	str r0, [r3]
	mov r0, ip
	ldmia r0!, {r2, r3}
	add r0, r7, #0
	bl ov12_022639B8
	mov r0, #0xf
	strb r0, [r5]
	mov r0, #0xd
	strb r0, [r5, #4]
	b _022490F0
_022490E4:
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02263E18
	ldrb r0, [r5, #4]
	strb r0, [r5]
_022490F0:
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x50]
	add r0, #0x10
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x54]
	add r4, r4, #1
	add r0, #0x40
	str r0, [sp, #0x54]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	add r1, #0xc0
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	add r1, r1, #2
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x44]
	add r1, #0x10
	str r1, [sp, #0x44]
	ldr r1, [sp, #0x40]
	add r0, r1, r0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x64]
	cmp r4, r0
	bge _0224912A
	bl ov12_022488C8
_0224912A:
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r1, r0
	bne _02249176
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl ov12_0224E414
	add r0, r7, #0
	mov r1, #0
	bl ov12_02237ED0
	ldr r0, [sp, #0x1c]
	mov r1, #6
	str r1, [r0, #8]
	ldr r0, [sp, #0x64]
	mov r6, #0
	cmp r0, #0
	ble _02249176
	ldr r4, [sp, #0x1c]
_02249152:
	ldr r0, _02249188 ; =0x000021A8
	ldr r0, [r4, r0]
	cmp r0, #0xf
	bne _0224916C
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	add r3, r1, #0
	add r5, r3, r6
	ldr r3, _0224918C ; =0x000021A0
	add r2, r6, #0
	ldrb r3, [r5, r3]
	bl ov12_02256F78
_0224916C:
	ldr r0, [sp, #0x64]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _02249152
_02249176:
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224917C: .word 0x000021B0
_02249180: .word 0x000003BB
_02249184: .word 0x00000319
_02249188: .word 0x000021A8
_0224918C: .word 0x000021A0
	thumb_func_end ov12_022488C8

	thumb_func_start ov12_02249190
ov12_02249190: ; 0x02249190
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	add r5, r1, #0
	bl ov12_0223A7F0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	bl ov12_0223A7E0
	mov r2, #0x22
	lsl r2, r2, #4
	mov r1, #0
	tst r2, r0
	beq _022491C6
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	cmp r0, #0
	ble _022491C4
	ldr r1, _02249300 ; =0x000021E8
_022491B8:
	add r0, r5, r4
	strb r4, [r0, r1]
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _022491B8
_022491C4:
	b _022492F8
_022491C6:
	mov r2, #4
	tst r0, r2
	beq _022491EE
	ldr r0, [sp, #0x14]
	add r4, r1, #0
	cmp r0, #0
	ble _02249206
	ldr r2, _02249304 ; =0x000021B4
	add r3, r5, #0
_022491D8:
	ldr r0, [r3, r2]
	cmp r0, #4
	bne _022491E2
	mov r1, #5
	b _02249206
_022491E2:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r3, #0x10
	cmp r4, r0
	blt _022491D8
	b _02249206
_022491EE:
	ldr r0, _02249304 ; =0x000021B4
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _022491FA
	add r4, r1, #0
	mov r1, #5
_022491FA:
	ldr r0, _02249308 ; =0x000021D4
	ldr r0, [r5, r0]
	cmp r0, #4
	bne _02249206
	mov r4, #2
	mov r1, #5
_02249206:
	cmp r1, #5
	bne _0224922E
	ldr r0, _02249300 ; =0x000021E8
	ldr r2, [sp, #0x14]
	strb r4, [r5, r0]
	mov r1, #1
	mov r0, #0
	cmp r2, #0
	ble _022492F8
	ldr r3, _02249300 ; =0x000021E8
_0224921A:
	cmp r0, r4
	beq _02249224
	add r2, r5, r1
	strb r0, [r2, r3]
	add r1, r1, #1
_02249224:
	ldr r2, [sp, #0x14]
	add r0, r0, #1
	cmp r0, r2
	blt _0224921A
	b _022492F8
_0224922E:
	ldr r0, [sp, #0x14]
	mov r2, #0
	cmp r0, #0
	ble _02249256
	ldr r4, _02249300 ; =0x000021E8
	add r0, r5, #0
	add r6, r4, #0
	sub r6, #0x34
_0224923E:
	ldr r3, [r0, r6]
	sub r3, r3, #2
	cmp r3, #1
	bhi _0224924C
	add r3, r5, r1
	strb r2, [r3, r4]
	add r1, r1, #1
_0224924C:
	ldr r3, [sp, #0x14]
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r3
	blt _0224923E
_02249256:
	ldr r0, [sp, #0x14]
	mov r2, #0
	cmp r0, #0
	ble _02249280
	ldr r4, _02249300 ; =0x000021E8
	add r0, r5, #0
	add r6, r4, #0
	sub r6, #0x34
_02249266:
	ldr r3, [r0, r6]
	cmp r3, #2
	beq _02249276
	cmp r3, #3
	beq _02249276
	add r3, r5, r1
	strb r2, [r3, r4]
	add r1, r1, #1
_02249276:
	ldr r3, [sp, #0x14]
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r3
	blt _02249266
_02249280:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _022492F8
_0224928E:
	ldr r0, [sp, #8]
	add r7, r0, #1
	ldr r0, [sp, #0x14]
	cmp r7, r0
	bge _022492EC
	ldr r0, [sp, #8]
	add r0, r5, r0
	str r0, [sp, #0x10]
_0224929E:
	ldr r1, [sp, #0x10]
	ldr r0, _02249300 ; =0x000021E8
	ldrb r6, [r1, r0]
	add r1, r5, r7
	ldrb r4, [r1, r0]
	lsl r0, r6, #4
	str r1, [sp, #0xc]
	add r1, r5, r0
	ldr r0, _02249304 ; =0x000021B4
	ldr r0, [r1, r0]
	lsl r1, r4, #4
	add r2, r5, r1
	ldr r1, _02249304 ; =0x000021B4
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _022492E4
	cmp r0, #1
	beq _022492C6
	mov r0, #1
	b _022492C8
_022492C6:
	mov r0, #0
_022492C8:
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov12_0224FC48
	cmp r0, #0
	beq _022492E4
	ldr r1, [sp, #0x10]
	ldr r0, _02249300 ; =0x000021E8
	strb r4, [r1, r0]
	ldr r1, [sp, #0xc]
	strb r6, [r1, r0]
_022492E4:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	cmp r7, r0
	blt _0224929E
_022492EC:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #8]
	cmp r1, r0
	blt _0224928E
_022492F8:
	mov r0, #7
	str r0, [r5, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02249300: .word 0x000021E8
_02249304: .word 0x000021B4
_02249308: .word 0x000021D4
	thumb_func_end ov12_02249190

	thumb_func_start ov12_0224930C
ov12_0224930C: ; 0x0224930C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	bl ov12_0223A7F0
	add r7, r0, #0
_0224931E:
	ldr r0, [r4, #0x28]
	cmp r0, #3
	bls _02249326
	b _02249438
_02249326:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249332: ; jump table
	.short _0224933A - _02249332 - 2 ; case 0
	.short _022493D4 - _02249332 - 2 ; case 1
	.short _02249412 - _02249332 - 2 ; case 2
	.short _02249430 - _02249332 - 2 ; case 3
_0224933A:
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bge _022493C8
	add r6, r4, #0
	add r6, #0x2c
_02249344:
	add r1, r4, r0
	ldr r0, _0224944C ; =0x000021E8
	ldrb r5, [r1, r0]
	add r0, r5, #0
	bl sub_020726C0
	ldr r1, _02249450 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	ldr r0, [r6]
	beq _02249360
	add r0, r0, #1
	str r0, [r6]
	b _022493C2
_02249360:
	add r0, r0, #1
	str r0, [r6]
	mov r0, #0xc0
	mul r0, r5
	add r1, r4, r0
	ldr r0, _02249454 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	bne _022493C2
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022522F0
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	bne _022493C2
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02252C40
	cmp r0, #0
	bne _022493C2
	lsl r0, r5, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _022493C2
	ldr r0, [sp]
	bl ov12_022642F0
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe8
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #8
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022493C2:
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	blt _02249344
_022493C8:
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _02249438
_022493D4:
	mov r6, #0
	cmp r7, #0
	ble _0224940A
	add r5, r4, #0
_022493DC:
	ldr r0, _02249458 ; =0x00002DB0
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x16
	tst r0, r1
	beq _02249402
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022522F0
	cmp r0, #0x63
	beq _02249402
	ldr r0, _02249458 ; =0x00002DB0
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x16
	and r1, r0
	ldr r0, _02249458 ; =0x00002DB0
	str r1, [r5, r0]
_02249402:
	add r6, r6, #1
	add r5, #0xc0
	cmp r6, r7
	blt _022493DC
_0224940A:
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _02249438
_02249412:
	mov r6, #0
	add r5, r4, #0
_02249416:
	ldr r0, [sp]
	bl ov12_0223BD98
	ldr r1, _0224945C ; =0x0000310C
	add r6, r6, #1
	strh r0, [r5, r1]
	add r5, r5, #2
	cmp r6, #4
	blt _02249416
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	b _02249438
_02249430:
	mov r0, #0
	str r0, [r4, #0x28]
	mov r0, #2
	str r0, [sp, #4]
_02249438:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02249440
	b _0224931E
_02249440:
	cmp r0, #2
	bne _02249448
	mov r0, #8
	str r0, [r4, #8]
_02249448:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224944C: .word 0x000021E8
_02249450: .word 0x00003108
_02249454: .word 0x00002DAC
_02249458: .word 0x00002DB0
_0224945C: .word 0x0000310C
	thumb_func_end ov12_0224930C

	thumb_func_start ov12_02249460
ov12_02249460: ; 0x02249460
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	bl ov12_0223A7F0
	add r5, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_022581BC
	cmp r0, #0
	bne _022494CC
	ldr r1, _022494D0 ; =0x00003150
	mov r0, #0
	str r0, [r4, r1]
	cmp r5, #0
	ble _0224949C
	ldr r3, _022494D0 ; =0x00003150
	ldr r2, _022494D4 ; =0x000021A8
	add r1, r4, #0
_02249488:
	ldr r6, [r1, r2]
	cmp r6, #0x28
	beq _02249494
	ldr r6, [r4, r3]
	add r6, r6, #1
	str r6, [r4, r3]
_02249494:
	add r0, r0, #1
	add r1, #0x10
	cmp r0, r5
	blt _02249488
_0224949C:
	add r0, r7, #0
	add r1, r4, #0
	bl ov12_02252D3C
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, r5
	bne _022494BC
	add r0, r4, #0
	mov r1, #0
	add r0, #0xec
	str r1, [r0]
	mov r0, #9
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022494BC:
	add r1, r4, r0
	ldr r0, _022494D8 ; =0x000021E8
	ldrb r1, [r1, r0]
	sub r0, #0x40
	lsl r1, r1, #4
	add r1, r4, r1
	ldr r0, [r1, r0]
	str r0, [r4, #8]
_022494CC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022494D0: .word 0x00003150
_022494D4: .word 0x000021A8
_022494D8: .word 0x000021E8
	thumb_func_end ov12_02249460

	thumb_func_start ov12_022494DC
ov12_022494DC: ; 0x022494DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp]
	add r4, r1, #0
	mov r5, #0
	bl ov12_0223A7F0
	str r0, [sp, #4]
_022494EC:
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov12_0224DC74
	cmp r0, #1
	beq _02249516
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	bl ov12_0224DD18
	cmp r0, #1
	beq _02249516
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0224D7EC
	cmp r0, #1
	bne _02249518
_02249516:
	b _02249CBE
_02249518:
	ldr r0, [r4, #0x10]
	cmp r0, #0xd
	bhi _022495F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224952A: ; jump table
	.short _02249546 - _0224952A - 2 ; case 0
	.short _02249600 - _0224952A - 2 ; case 1
	.short _022496AA - _0224952A - 2 ; case 2
	.short _02249756 - _0224952A - 2 ; case 3
	.short _02249804 - _0224952A - 2 ; case 4
	.short _02249880 - _0224952A - 2 ; case 5
	.short _022498FC - _0224952A - 2 ; case 6
	.short _022499BC - _0224952A - 2 ; case 7
	.short _02249A4C - _0224952A - 2 ; case 8
	.short _02249ADC - _0224952A - 2 ; case 9
	.short _02249B70 - _0224952A - 2 ; case 10
	.short _02249C06 - _0224952A - 2 ; case 11
	.short _02249C48 - _0224952A - 2 ; case 12
	.short _02249CA0 - _0224952A - 2 ; case 13
_02249546:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _022495EE
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x38]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0x14
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0x1c
	str r0, [sp, #0x18]
_02249564:
	lsl r0, r6, #2
	mov r1, #0x6f
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #1
	tst r1, r2
	beq _022495DA
	ldr r1, [sp, #0x38]
	lsl r3, r6, #3
	ldr r7, [r1, r3]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	str r7, [sp, #0x2c]
	bic r1, r2
	str r1, [sp, #0x2c]
	lsl r1, r7, #0x1b
	lsr r1, r1, #0x1d
	sub r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r2, r1, #0x1b
	ldr r1, [sp, #0x2c]
	orr r2, r1
	ldr r1, [sp, #0x38]
	str r2, [r1, r3]
	ldr r1, [r1, r3]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1d
	bne _022495DA
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	ldr r1, [sp, #0x1c]
	bic r2, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r2, [r0, r1]
	mov r1, #0x73
	add r0, r1, #0
	add r0, #0xb1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x32
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov12_02257E98
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_022495DA:
	ldr r0, [sp, #8]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #8]
	cmp r5, #0
	str r1, [r0]
	bne _022495EE
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _02249564
_022495EE:
	cmp r5, #0
	beq _022495F4
_022495F2:
	b _02249CA2
_022495F4:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02249CA2
_02249600:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _0224969A
	mov r0, #0x71
	lsl r0, r0, #2
	add r7, r4, r0
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x14
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x20]
_02249618:
	lsl r0, r6, #2
	add r3, r4, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #2
	tst r0, r1
	beq _02249686
	lsl r2, r6, #3
	ldr r1, [r7, r2]
	ldr r0, _02249938 ; =0xFFFFFC7F
	and r0, r1
	str r0, [sp, #0x30]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1d
	sub r0, r0, #1
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x16
	ldr r0, [sp, #0x30]
	orr r0, r1
	str r0, [r7, r2]
	ldr r0, [r7, r2]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1d
	bne _02249686
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r1, [sp, #0x20]
	mov r2, #0x32
	bic r0, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r1, #0x71
	add r0, r1, #0
	add r0, #0xb3
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov12_02257E98
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_02249686:
	ldr r0, [sp, #0xc]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	cmp r5, #0
	str r1, [r0]
	bne _0224969A
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _02249618
_0224969A:
	cmp r5, #0
	bne _02249748
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02249CA2
_022496AA:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _02249744
	mov r0, #0x71
	lsl r0, r0, #2
	add r7, r4, r0
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0x14
	str r0, [sp, #0x10]
	mov r0, #0x40
	str r0, [sp, #0x24]
_022496C2:
	lsl r0, r6, #2
	add r3, r4, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02249730
	lsl r2, r6, #3
	ldr r1, [r7, r2]
	ldr r0, _0224993C ; =0xFFFF8FFF
	and r0, r1
	str r0, [sp, #0x34]
	lsl r0, r1, #0x11
	lsr r0, r0, #0x1d
	sub r0, r0, #1
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x11
	ldr r0, [sp, #0x34]
	orr r0, r1
	str r0, [r7, r2]
	ldr r0, [r7, r2]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1d
	bne _02249730
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	ldr r1, [sp, #0x24]
	mov r2, #0x32
	bic r0, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r3, r1]
	mov r1, #0x36
	add r0, r1, #0
	add r0, #0xee
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov12_02257E98
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_02249730:
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	cmp r5, #0
	str r1, [r0]
	bne _02249744
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _022496C2
_02249744:
	cmp r5, #0
	beq _0224974A
_02249748:
	b _02249CA2
_0224974A:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02249CA2
_02249756:
	ldr r7, [r4, #0x14]
	cmp r7, #2
	bge _022497F4
	mov r0, #0x71
	lsl r0, r0, #2
	add r6, r4, r0
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0x14
	str r0, [sp, #0x14]
	mov r0, #8
	str r0, [sp, #0x28]
_0224976E:
	lsl r0, r7, #2
	add r3, r4, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #8
	tst r0, r1
	beq _022497E0
	lsl r0, r7, #3
	ldr r2, [r6, r0]
	ldr r1, _02249940 ; =0xFFF1FFFF
	and r1, r2
	mov ip, r1
	lsl r1, r2, #0xc
	lsr r1, r1, #0x1d
	sub r1, r1, #1
	lsl r1, r1, #0x1d
	lsr r2, r1, #0xc
	mov r1, ip
	orr r1, r2
	str r1, [r6, r0]
	ldr r1, [r6, r0]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1d
	bne _022497E0
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	ldr r2, [sp, #0x28]
	bic r1, r2
	mov r2, #0x6f
	lsl r2, r2, #2
	str r1, [r3, r2]
	ldr r0, [r6, r0]
	lsl r0, r0, #0xf
	lsr r1, r0, #0x1e
	add r0, r2, #0
	sub r0, #0xa4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x6e
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r7, #0
	bl ov12_02257E98
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_022497E0:
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	cmp r5, #0
	str r1, [r0]
	bne _022497F4
	ldr r7, [r4, #0x14]
	cmp r7, #2
	blt _0224976E
_022497F4:
	cmp r5, #0
	bne _02249872
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02249CA2
_02249804:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _0224986E
	add r7, r4, #0
	add r7, #0x14
_0224980E:
	lsl r0, r6, #2
	mov r1, #0x6f
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #3
	lsl r1, r1, #8
	tst r1, r2
	beq _0224985E
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	sub r1, #0xbc
	sub r2, r2, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	bne _0224985E
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe9
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov12_02257E98
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_0224985E:
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	cmp r5, #0
	bne _0224986E
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _0224980E
_0224986E:
	cmp r5, #0
	beq _02249874
_02249872:
	b _02249CA2
_02249874:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02249CA2
_02249880:
	ldr r6, [r4, #0x14]
	cmp r6, #2
	bge _022498EC
	add r7, r4, #0
	add r7, #0x14
_0224988A:
	lsl r0, r6, #2
	mov r1, #0x6f
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #7
	lsl r1, r1, #0xc
	tst r1, r2
	beq _022498DC
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	sub r2, r2, r1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	bne _022498DC
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xfa
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add r1, r4, #0
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r0, [sp]
	add r2, r6, #0
	bl ov12_02257E98
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r5, #1
_022498DC:
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	cmp r5, #0
	bne _022498EC
	ldr r6, [r4, #0x14]
	cmp r6, #2
	blt _0224988A
_022498EC:
	cmp r5, #0
	bne _022499AE
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02249CA2
_022498FC:
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #4]
	cmp r0, r1
	bge _022499AA
	add r6, r4, #0
	mov r7, #2
	add r6, #0x14
_0224990A:
	add r1, r4, r0
	ldr r0, _02249944 ; =0x000021EC
	ldrb r2, [r1, r0]
	mov r0, #0x63
	lsl r0, r0, #2
	add r1, r4, r2
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02249998
	mov r0, #0x63
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	sub r3, r0, #1
	mov r0, #0x63
	lsl r0, r0, #2
	strb r3, [r1, r0]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02249998
	mov r0, #0xc0
	mul r0, r2
	ldr r3, _02249948 ; =0x00002D8C
	b _0224994C
	.align 2, 0
_02249938: .word 0xFFFFFC7F
_0224993C: .word 0xFFFF8FFF
_02249940: .word 0xFFF1FFFF
_02249944: .word 0x000021EC
_02249948: .word 0x00002D8C
_0224994C:
	add r0, r4, r0
	ldr r3, [r0, r3]
	cmp r3, #0
	beq _02249998
	mov r3, #0x46
	lsl r3, r3, #2
	str r2, [r4, r3]
	add r3, r4, #0
	add r3, #0xf5
	strb r7, [r3]
	add r5, r4, #0
	ldr r3, _02249C84 ; =0x00000215
	add r5, #0xf6
	strh r3, [r5]
	sub r3, #0x5d
	ldrb r1, [r1, r3]
	lsl r1, r1, #8
	orr r2, r1
	add r1, r4, #0
	add r1, #0xf8
	str r2, [r1]
	ldr r1, _02249C88 ; =0x00002D90
	ldr r0, [r0, r1]
	add r1, r7, #0
	bl ov12_02253178
	ldr r1, _02249C8C ; =0x0000215C
	mov r2, #0x88
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r5, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02249998:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	cmp r5, #0
	bne _022499AA
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #4]
	cmp r0, r1
	blt _0224990A
_022499AA:
	cmp r5, #0
	beq _022499B0
_022499AE:
	b _02249CA2
_022499B0:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x14]
	b _02249CA2
_022499BC:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #3
	tst r2, r1
	beq _02249A44
	mov r2, #2
	tst r1, r2
	beq _022499F2
	add r0, r4, #0
	ldr r1, _02249C90 ; =0x00000321
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02249A3A
_022499F2:
	add r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02249A18
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xea
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02249A3A
_02249A18:
	add r0, r4, #0
	ldr r1, _02249C90 ; =0x00000321
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02249A3A:
	mov r0, #0x4e
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_02249A44:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _02249CA2
_02249A4C:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #0xc
	tst r2, r1
	beq _02249AD4
	mov r2, #8
	tst r1, r2
	beq _02249A82
	add r0, r4, #0
	ldr r1, _02249C94 ; =0x00000325
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02249ACA
_02249A82:
	add r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02249AA8
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xeb
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02249ACA
_02249AA8:
	add r0, r4, #0
	ldr r1, _02249C94 ; =0x00000325
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02249ACA:
	mov r0, #0x4e
	mov r1, #0x15
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_02249AD4:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _02249CA2
_02249ADC:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #0x30
	tst r2, r1
	beq _02249B68
	mov r2, #0x20
	tst r1, r2
	beq _02249B14
	mov r1, #0xca
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02249B5E
_02249B14:
	add r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r1, #1
	add r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02249B3A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xec
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02249B5E
_02249B3A:
	mov r1, #0xca
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02249B5E:
	mov r0, #0x4e
	mov r1, #0x16
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_02249B68:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _02249CA2
_02249B70:
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	mov r1, #0xc0
	add r0, r2, #0
	tst r0, r1
	beq _02249BFE
	mov r0, #0x80
	tst r0, r2
	beq _02249BA8
	add r0, r4, #0
	ldr r1, _02249C98 ; =0x0000032B
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02249BF4
_02249BA8:
	add r0, r1, #0
	add r0, #0xc4
	ldr r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #0
	add r0, #0xc4
	add r1, #0xc4
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _02249BD2
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xed
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _02249BF4
_02249BD2:
	add r0, r4, #0
	ldr r1, _02249C98 ; =0x0000032B
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02249BF4:
	mov r0, #0x4e
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_02249BFE:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _02249CA2
_02249C06:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r1
	beq _02249C40
	add r0, r4, #0
	ldr r1, _02249C9C ; =0x0000032D
	add r0, #0xf6
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x68
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r1, #0x12
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r5, #1
_02249C40:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _02249CA2
_02249C48:
	mov r1, #6
	lsl r1, r1, #6
	ldr r3, [r4, r1]
	mov r2, #7
	lsl r2, r2, #0xc
	add r0, r3, #0
	tst r0, r2
	beq _02249C7A
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r3, r0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	tst r0, r2
	bne _02249C7A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xee
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r5, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02249C7A:
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _02249CA2
	nop
_02249C84: .word 0x00000215
_02249C88: .word 0x00002D90
_02249C8C: .word 0x0000215C
_02249C90: .word 0x00000321
_02249C94: .word 0x00000325
_02249C98: .word 0x0000032B
_02249C9C: .word 0x0000032D
_02249CA0:
	mov r5, #2
_02249CA2:
	cmp r5, #0
	bne _02249CA8
	b _022494EC
_02249CA8:
	cmp r5, #1
	bne _02249CB2
	ldr r0, [sp]
	bl ov12_022642F0
_02249CB2:
	cmp r5, #2
	bne _02249CBE
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #0xa
	str r0, [r4, #8]
_02249CBE:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_022494DC

	thumb_func_start ov12_02249CC4
ov12_02249CC4: ; 0x02249CC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	mov r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #4]
	bl ov12_0223A7F0
	ldr r1, [r4, #8]
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov12_0224DC74
	cmp r0, #1
	beq _02249D00
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	bl ov12_0224DD18
	cmp r0, #1
	beq _02249D00
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl ov12_0224D7EC
	cmp r0, #1
	bne _02249D04
_02249D00:
	bl ov12_0224A6E0
_02249D04:
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	blt _02249D10
	bl _0224A6D6
_02249D10:
	ldr r0, _0224A040 ; =0x000021EC
	add r1, r4, r1
	ldrb r5, [r1, r0]
	add r0, r5, #0
	bl sub_020726C0
	ldr r1, _0224A044 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	beq _02249D2E
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	bl _0224A6CA
_02249D2E:
	ldr r0, [r4, #0x18]
	cmp r0, #0x1a
	bls _02249D38
	bl _0224A6BA
_02249D38:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02249D44: ; jump table
	.short _02249D7A - _02249D44 - 2 ; case 0
	.short _02249DE2 - _02249D44 - 2 ; case 1
	.short _02249E64 - _02249D44 - 2 ; case 2
	.short _02249E80 - _02249D44 - 2 ; case 3
	.short _02249E9C - _02249D44 - 2 ; case 4
	.short _02249EB8 - _02249D44 - 2 ; case 5
	.short _02249F22 - _02249D44 - 2 ; case 6
	.short _02249F74 - _02249D44 - 2 ; case 7
	.short _02249FF4 - _02249D44 - 2 ; case 8
	.short _0224A030 - _02249D44 - 2 ; case 9
	.short _0224A09E - _02249D44 - 2 ; case 10
	.short _0224A0DC - _02249D44 - 2 ; case 11
	.short _0224A154 - _02249D44 - 2 ; case 12
	.short _0224A1D8 - _02249D44 - 2 ; case 13
	.short _0224A2D8 - _02249D44 - 2 ; case 14
	.short _0224A340 - _02249D44 - 2 ; case 15
	.short _0224A3F4 - _02249D44 - 2 ; case 16
	.short _0224A484 - _02249D44 - 2 ; case 17
	.short _0224A4A2 - _02249D44 - 2 ; case 18
	.short _0224A4E8 - _02249D44 - 2 ; case 19
	.short _0224A534 - _02249D44 - 2 ; case 20
	.short _0224A57E - _02249D44 - 2 ; case 21
	.short _0224A5C8 - _02249D44 - 2 ; case 22
	.short _0224A612 - _02249D44 - 2 ; case 23
	.short _0224A662 - _02249D44 - 2 ; case 24
	.short _0224A696 - _02249D44 - 2 ; case 25
	.short _0224A6B0 - _02249D44 - 2 ; case 26
_02249D7A:
	mov r6, #0xc0
	add r0, r5, #0
	mul r0, r6
	add r3, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	mov r1, #1
	ldr r2, [r3, r0]
	lsl r1, r1, #0xa
	tst r1, r2
	beq _02249DD8
	add r1, r0, #0
	sub r1, #0x34
	ldr r2, [r3, r1]
	add r1, r0, #0
	sub r1, #0x30
	ldr r1, [r3, r1]
	cmp r2, r1
	beq _02249DD8
	cmp r2, #0
	beq _02249DD8
	add r0, #0xc
	ldr r0, [r3, r0]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	beq _02249DBE
	add r6, #0x58
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xef
	str r5, [r4, r6]
	bl ov12_0224EB9C
	b _02249DCC
_02249DBE:
	add r6, #0x58
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x89
	str r5, [r4, r6]
	bl ov12_0224EB9C
_02249DCC:
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_02249DD8:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224A6BA
_02249DE2:
	mov r6, #0xc0
	add r0, r5, #0
	mul r0, r6
	add r3, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	mov r1, #1
	ldr r2, [r3, r0]
	lsl r1, r1, #0x18
	tst r1, r2
	beq _02249E5A
	add r1, r0, #0
	sub r1, #0x34
	ldr r2, [r3, r1]
	add r1, r0, #0
	sub r1, #0x30
	ldr r1, [r3, r1]
	cmp r2, r1
	beq _02249E5A
	cmp r2, #0
	beq _02249E5A
	add r1, r0, #0
	add r1, #0xc
	ldr r1, [r3, r1]
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	beq _02249E28
	add r6, #0x58
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xef
	str r5, [r4, r6]
	bl ov12_0224EB9C
	b _02249E4E
_02249E28:
	add r1, r6, #0
	add r1, #0x58
	str r5, [r4, r1]
	add r1, r6, #0
	add r1, #0xc8
	add r6, #0x64
	str r1, [r4, r6]
	sub r0, #0x30
	ldr r0, [r3, r0]
	mov r1, #0x10
	bl ov12_02253178
	ldr r1, _0224A048 ; =0x0000215C
	mov r2, #0xa9
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
_02249E4E:
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_02249E5A:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224A6BA
_02249E64:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_02253068
	cmp r0, #1
	bne _02249E76
	mov r0, #1
	str r0, [sp, #0x10]
_02249E76:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224A6BA
_02249E80:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_0225471C
	cmp r0, #1
	bne _02249E92
	mov r0, #1
	str r0, [sp, #0x10]
_02249E92:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224A6BA
_02249E9C:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_02254D80
	cmp r0, #1
	bne _02249EAE
	mov r0, #1
	str r0, [sp, #0x10]
_02249EAE:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl _0224A6BA
_02249EB8:
	mov r3, #0xc0
	add r0, r5, #0
	mul r0, r3
	mov r2, #0xb7
	add r6, r4, r0
	lsl r2, r2, #6
	ldr r0, [r6, r2]
	mov r1, #4
	tst r1, r0
	beq _02249F1A
	mov r1, #3
	and r0, r1
	add r1, r0, #0
	mul r1, r3
	add r0, r4, r1
	sub r2, #0x34
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02249F1A
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022527CC
	cmp r0, #0x62
	beq _02249F1A
	ldr r0, _0224A04C ; =0x00002D8C
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02249F1A
	add r0, #0x34
	ldr r1, [r6, r0]
	mov r0, #3
	and r1, r0
	mov r0, #0x47
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x45
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_02249F1A:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_02249F22:
	mov r2, #0xc0
	add r0, r5, #0
	mul r0, r2
	ldr r3, _0224A050 ; =0x00002DAC
	add r0, r4, r0
	ldr r1, [r0, r3]
	mov r6, #8
	tst r1, r6
	beq _02249F6C
	add r1, r3, #0
	sub r1, #0x20
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02249F6C
	add r2, #0x58
	str r5, [r4, r2]
	sub r3, #0x1c
	ldr r1, [r0, r3]
	add r0, r6, #0
	sub r0, #9
	mul r0, r1
	add r1, r6, #0
	bl ov12_02253178
	ldr r1, _0224A048 ; =0x0000215C
	mov r2, #0x17
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_02249F6C:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_02249F74:
	mov r0, #0xc0
	mul r0, r5
	ldr r1, _0224A050 ; =0x00002DAC
	add r6, r4, r0
	ldr r0, [r6, r1]
	mov r2, #0x80
	tst r0, r2
	beq _02249FEC
	add r0, r1, #0
	sub r0, #0x20
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02249FEC
	add r2, #0x98
	str r5, [r4, r2]
	sub r1, #0x1c
	ldr r0, [r6, r1]
	mov r1, #0x10
	bl ov12_02253178
	ldr r1, _0224A048 ; =0x0000215C
	str r0, [r4, r1]
	ldr r1, _0224A050 ; =0x00002DAC
	mov r0, #0xf
	ldr r2, [r6, r1]
	lsl r0, r0, #8
	add r3, r2, #0
	and r3, r0
	cmp r3, r0
	beq _02249FB8
	mov r0, #1
	lsl r0, r0, #8
	add r0, r2, r0
	str r0, [r6, r1]
_02249FB8:
	ldr r2, _0224A050 ; =0x00002DAC
	ldr r0, _0224A048 ; =0x0000215C
	ldr r3, [r6, r2]
	mov r2, #0xf
	lsl r2, r2, #8
	and r2, r3
	ldr r1, [r4, r0]
	lsr r2, r2, #8
	mul r2, r1
	str r2, [r4, r0]
	mov r1, #0
	ldr r2, [r4, r0]
	mvn r1, r1
	mul r1, r2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x17
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_02249FEC:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_02249FF4:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r6, r4, r1
	ldr r1, _0224A050 ; =0x00002DAC
	mov r2, #0x10
	ldr r3, [r6, r1]
	tst r2, r3
	beq _0224A028
	sub r1, #0x20
	ldr r1, [r6, r1]
	cmp r1, #0
	beq _0224A028
	add r0, #0x58
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1a
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A028:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A030:
	mov r6, #0xc0
	add r0, r5, #0
	mul r0, r6
	add r3, r4, r0
	ldr r7, _0224A054 ; =0x00002DB0
	ldr r0, _0224A044 ; =0x00003108
	b _0224A058
	nop
_0224A040: .word 0x000021EC
_0224A044: .word 0x00003108
_0224A048: .word 0x0000215C
_0224A04C: .word 0x00002D8C
_0224A050: .word 0x00002DAC
_0224A054: .word 0x00002DB0
_0224A058:
	ldr r2, [r3, r7]
	lsl r0, r0, #0x18
	tst r0, r2
	beq _0224A096
	add r0, r7, #0
	sub r0, #0x24
	ldr r0, [r3, r0]
	cmp r0, #0
	beq _0224A096
	sub r0, r7, #4
	ldr r1, [r3, r0]
	mov r0, #7
	tst r0, r1
	beq _0224A090
	add r6, #0x58
	str r5, [r4, r6]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x5e
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
	b _0224A096
_0224A090:
	ldr r0, _0224A398 ; =0xF7FFFFFF
	and r0, r2
	str r0, [r3, r7]
_0224A096:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A09E:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r6, r4, r1
	ldr r1, _0224A39C ; =0x00002DB0
	mov r2, #1
	ldr r3, [r6, r1]
	lsl r2, r2, #0x1c
	tst r2, r3
	beq _0224A0D4
	sub r1, #0x24
	ldr r1, [r6, r1]
	cmp r1, #0
	beq _0224A0D4
	add r0, #0x58
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x62
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A0D4:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A0DC:
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	add r6, r4, r1
	ldr r1, _0224A39C ; =0x00002DB0
	mov r7, #0xe
	ldr r3, [r6, r1]
	lsl r7, r7, #0xc
	add r2, r3, #0
	tst r2, r7
	beq _0224A14C
	add r2, r1, #0
	sub r2, #0x24
	ldr r2, [r6, r2]
	cmp r2, #0
	beq _0224A14C
	mov r2, #2
	lsl r2, r2, #0xc
	sub r2, r3, r2
	str r2, [r6, r1]
	ldr r2, [r6, r1]
	tst r2, r7
	beq _0224A128
	sub r1, #0x20
	ldr r1, [r6, r1]
	sub r0, #0xc1
	mul r0, r1
	mov r1, #0x10
	bl ov12_02253178
	ldr r1, _0224A3A0 ; =0x0000215C
	mov r2, #0x3b
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	b _0224A132
_0224A128:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x3c
	bl ov12_0224EB9C
_0224A132:
	ldr r0, _0224A3A4 ; =0x00002DEA
	ldrh r1, [r6, r0]
	mov r0, #0x49
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #0xc
	str r5, [r4, r0]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A14C:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A154:
	mov r0, #0x7b
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r4, #0
	mov r2, #4
	add r3, r5, #0
	bl ov12_02252324
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xc0
	mul r0, r5
	add r6, r4, r0
	ldr r0, _0224A3A8 ; =0x00002DAC
	ldr r1, [r6, r0]
	mov r0, #7
	tst r0, r1
	beq _0224A1D0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_022527CC
	cmp r0, #0x62
	beq _0224A1D0
	ldr r1, _0224A3AC ; =0x00002D8C
	ldr r0, [r6, r1]
	cmp r0, #0
	beq _0224A1D0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224A1D0
	add r0, r1, #4
	ldr r1, [r6, r0]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	mov r1, #8
	bl ov12_02253178
	ldr r1, _0224A3A0 ; =0x0000215C
	ldr r2, _0224A3B0 ; =0x00000107
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, _0224A3B4 ; =0x0000213C
	mov r1, #0x40
	ldr r2, [r4, r0]
	orr r2, r1
	str r2, [r4, r0]
	add r1, #0xd8
	str r5, [r4, r1]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A1D0:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A1D8:
	mov r0, #0xc0
	mul r0, r5
	add r7, r4, r0
	ldr r0, _0224A39C ; =0x00002DB0
	ldr r1, [r7, r0]
	mov r0, #0x70
	tst r0, r1
	beq _0224A2C8
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0224A23A
_0224A1F0:
	mov r0, #0xc0
	mul r0, r6
	add r2, r4, r0
	ldr r0, _0224A3A8 ; =0x00002DAC
	ldr r1, [r2, r0]
	mov r0, #7
	tst r0, r1
	beq _0224A22E
	ldr r0, _0224A3AC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0224A22E
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0x2b
	beq _0224A22E
	mov r0, #0x46
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _0224A23A
_0224A22E:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0xc]
	cmp r6, r0
	blt _0224A1F0
_0224A23A:
	ldr r0, [sp, #0xc]
	cmp r6, r0
	beq _0224A246
	mov r0, #2
	str r0, [sp, #0x10]
	b _0224A6BA
_0224A246:
	ldr r0, _0224A39C ; =0x00002DB0
	ldr r1, [r7, r0]
	sub r1, #0x10
	str r1, [r7, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02252218
	cmp r0, #0
	ldr r2, _0224A39C ; =0x00002DB0
	beq _0224A280
	ldr r1, [r7, r2]
	mov r0, #0x70
	bic r1, r0
	mov r6, #0xf1
	add r0, r5, #0
	str r1, [r7, r2]
	bl sub_020726C0
	add r3, r6, #0
	add r3, #0x8f
	lsl r2, r0, #8
	add r0, r6, #0
	sub r0, #0xf2
	ldr r1, [r4, r3]
	eor r0, r2
	and r0, r1
	str r0, [r4, r3]
	b _0224A2AC
_0224A280:
	ldr r1, [r7, r2]
	mov r0, #0x70
	tst r0, r1
	beq _0224A28C
	mov r6, #0xf0
	b _0224A2AC
_0224A28C:
	mov r0, #0x70
	bic r1, r0
	mov r6, #0xf1
	add r0, r5, #0
	str r1, [r7, r2]
	bl sub_020726C0
	add r3, r6, #0
	add r3, #0x8f
	lsl r2, r0, #8
	add r0, r6, #0
	sub r0, #0xf2
	ldr r1, [r4, r3]
	eor r0, r2
	and r0, r1
	str r0, [r4, r3]
_0224A2AC:
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A2C8:
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bne _0224A2D0
	b _0224A6BA
_0224A2D0:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A2D8:
	mov r2, #0xc0
	add r0, r5, #0
	mul r0, r2
	add r6, r4, r0
	ldr r0, _0224A39C ; =0x00002DB0
	lsl r2, r2, #4
	ldr r1, [r6, r0]
	tst r2, r1
	beq _0224A338
	mov r2, #1
	lsl r2, r2, #0xa
	sub r1, r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02252218
	cmp r0, #0
	beq _0224A30A
	ldr r1, _0224A39C ; =0x00002DB0
	ldr r0, _0224A3B8 ; =0xFFFFF3FF
	ldr r2, [r6, r1]
	and r0, r2
	str r0, [r6, r1]
	b _0224A338
_0224A30A:
	ldr r0, _0224A39C ; =0x00002DB0
	ldr r1, [r6, r0]
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r1
	bne _0224A338
	mov r0, #7
	tst r0, r1
	bne _0224A338
	add r0, r4, #0
	add r0, #0x94
	str r5, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x33
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A338:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A340:
	mov r0, #0xc0
	add r6, r5, #0
	mul r6, r0
	add r0, r4, r6
	ldr r1, _0224A3BC ; =0x00002DE8
	mov ip, r0
	ldrh r3, [r0, r1]
	cmp r3, #0
	beq _0224A3EC
	ldr r7, _0224A3C0 ; =0x00002D4C
	mov r2, #0
	mov r1, ip
_0224A358:
	ldrh r0, [r1, r7]
	cmp r3, r0
	beq _0224A366
	add r2, r2, #1
	add r1, r1, #2
	cmp r2, #4
	blt _0224A358
_0224A366:
	cmp r2, #4
	bne _0224A376
	ldr r0, _0224A3C4 ; =0x00002DC8
	add r1, r4, r0
	ldr r2, [r1, r6]
	mov r0, #7
	bic r2, r0
	str r2, [r1, r6]
_0224A376:
	ldr r1, _0224A3C4 ; =0x00002DC8
	add r0, r4, r6
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	beq _0224A3C8
	add r2, r4, r1
	ldr r1, [r2, r6]
	mov r3, #7
	bic r1, r3
	sub r3, r0, #1
	mov r0, #7
	and r0, r3
	orr r0, r1
	str r0, [r2, r6]
	b _0224A3EC
	nop
_0224A398: .word 0xF7FFFFFF
_0224A39C: .word 0x00002DB0
_0224A3A0: .word 0x0000215C
_0224A3A4: .word 0x00002DEA
_0224A3A8: .word 0x00002DAC
_0224A3AC: .word 0x00002D8C
_0224A3B0: .word 0x00000107
_0224A3B4: .word 0x0000213C
_0224A3B8: .word 0xFFFFF3FF
_0224A3BC: .word 0x00002DE8
_0224A3C0: .word 0x00002D4C
_0224A3C4: .word 0x00002DC8
_0224A3C8:
	mov r2, #0
	add r1, #0x20
	mov r0, ip
	strh r2, [r0, r1]
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x48
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A3EC:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A3F4:
	mov r0, #0xc0
	add r6, r5, #0
	mul r6, r0
	add r0, r4, r6
	ldr r1, _0224A6E4 ; =0x00002DEC
	str r0, [sp, #8]
	ldrh r2, [r0, r1]
	cmp r2, #0
	beq _0224A47C
	ldr r7, _0224A6E8 ; =0x00002D4C
	mov r3, #0
	add r1, r0, #0
_0224A40C:
	ldrh r0, [r1, r7]
	cmp r2, r0
	beq _0224A41A
	add r3, r3, #1
	add r1, r1, #2
	cmp r3, #4
	blt _0224A40C
_0224A41A:
	cmp r3, #4
	beq _0224A42C
	beq _0224A438
	ldr r0, [sp, #8]
	add r1, r0, r3
	ldr r0, _0224A6EC ; =0x00002D6C
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224A438
_0224A42C:
	ldr r0, _0224A6F0 ; =0x00002DC8
	add r2, r4, r0
	ldr r1, [r2, r6]
	mov r0, #0x38
	bic r1, r0
	str r1, [r2, r6]
_0224A438:
	ldr r1, _0224A6F0 ; =0x00002DC8
	add r0, r4, r6
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1a
	lsr r2, r0, #0x1d
	beq _0224A458
	add r1, r4, r1
	sub r2, r2, #1
	lsl r2, r2, #0x1d
	ldr r0, [r1, r6]
	mov r3, #0x38
	bic r0, r3
	lsr r2, r2, #0x1a
	orr r0, r2
	str r0, [r1, r6]
	b _0224A47C
_0224A458:
	ldr r0, [sp, #8]
	mov r2, #0
	add r1, #0x24
	strh r2, [r0, r1]
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4a
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A47C:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A484:
	mov r0, #0xc0
	mul r0, r5
	add r3, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r3, r0]
	mov r1, #0x18
	tst r1, r2
	beq _0224A49A
	sub r2, #8
	str r2, [r3, r0]
_0224A49A:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A4A2:
	mov r0, #0xc0
	mul r0, r5
	ldr r2, _0224A6F0 ; =0x00002DC8
	add r5, r4, r0
	ldr r1, [r5, r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1e
	beq _0224A4E0
	add r3, r4, r2
	ldr r6, [r3, r0]
	mov r1, #0xc0
	add r7, r6, #0
	bic r7, r1
	lsl r1, r6, #0x18
	lsr r1, r1, #0x1e
	sub r1, r1, #1
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x18
	orr r1, r7
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	bne _0224A4E0
	add r0, r2, #0
	sub r0, #8
	ldr r1, [r5, r0]
	ldr r0, _0224A6F4 ; =0xFFFFFDFF
	sub r2, #8
	and r0, r1
	str r0, [r5, r2]
_0224A4E0:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A4E8:
	ldr r0, _0224A6F0 ; =0x00002DC8
	mov r2, #0xc0
	add r3, r5, #0
	mul r3, r2
	add r1, r4, r0
	ldr r7, [r1, r3]
	lsl r0, r7, #0x15
	lsr r6, r0, #0x1d
	beq _0224A52C
	ldr r0, _0224A6F8 ; =0xFFFFF8FF
	and r7, r0
	sub r0, r6, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x15
	orr r0, r7
	str r0, [r1, r3]
	ldr r0, [r1, r3]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	bne _0224A52C
	add r0, r2, #0
	add r0, #0x58
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	add r2, #0x60
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A52C:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A534:
	ldr r0, _0224A6FC ; =0x00002DCC
	mov r1, #0xc0
	add r3, r5, #0
	mul r3, r1
	add r2, r4, r0
	ldr r7, [r2, r3]
	lsl r0, r7, #0x10
	lsr r6, r0, #0x1d
	beq _0224A576
	ldr r0, _0224A700 ; =0xFFFF1FFF
	and r7, r0
	sub r0, r6, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x10
	orr r0, r7
	str r0, [r2, r3]
	ldr r0, [r2, r3]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bne _0224A576
	add r1, #0x58
	str r5, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf2
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A576:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A57E:
	ldr r0, _0224A6FC ; =0x00002DCC
	mov r1, #0xc0
	add r3, r5, #0
	mul r3, r1
	add r2, r4, r0
	ldr r7, [r2, r3]
	lsl r0, r7, #0xd
	lsr r6, r0, #0x1d
	beq _0224A5C0
	ldr r0, _0224A704 ; =0xFFF8FFFF
	and r7, r0
	sub r0, r6, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xd
	orr r0, r7
	str r0, [r2, r3]
	ldr r0, [r2, r3]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	bne _0224A5C0
	add r1, #0x58
	str r5, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf3
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A5C0:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A5C8:
	ldr r0, _0224A6FC ; =0x00002DCC
	mov r1, #0xc0
	add r3, r5, #0
	mul r3, r1
	add r2, r4, r0
	ldr r7, [r2, r3]
	lsl r0, r7, #0xa
	lsr r6, r0, #0x1d
	beq _0224A60A
	ldr r0, _0224A708 ; =0xFFC7FFFF
	and r7, r0
	sub r0, r6, #1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xa
	orr r0, r7
	str r0, [r2, r3]
	ldr r0, [r2, r3]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	bne _0224A60A
	add r1, #0x58
	str r5, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf4
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A60A:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A612:
	mov r6, #0xc0
	add r0, r5, #0
	mul r0, r6
	mov r3, #0xb7
	add r1, r4, r0
	lsl r3, r3, #6
	ldr r0, [r1, r3]
	lsl r2, r6, #5
	tst r2, r0
	beq _0224A65A
	mov r2, #2
	lsl r2, r2, #0xa
	sub r0, r0, r2
	str r0, [r1, r3]
	ldr r1, [r1, r3]
	lsl r0, r6, #5
	tst r0, r1
	bne _0224A65A
	add r0, r4, #0
	add r0, #0x94
	str r5, [r0]
	add r0, r4, #0
	mov r1, #4
	add r0, #0x88
	str r1, [r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A65A:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A662:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	add r3, sp, #0x14
	bl ov12_02254E7C
	cmp r0, #1
	bne _0224A68E
	mov r0, #0x46
	lsl r0, r0, #2
	str r5, [r4, r0]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #0x10]
_0224A68E:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A696:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_0225551C
	cmp r0, #1
	bne _0224A6A8
	mov r0, #1
	str r0, [sp, #0x10]
_0224A6A8:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	b _0224A6BA
_0224A6B0:
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
_0224A6BA:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0224A6CA
	ldr r0, [sp, #4]
	bl ov12_022642F0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0224A6CA:
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0224A6D6
	bl _02249D10
_0224A6D6:
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #0xb
	str r0, [r4, #8]
	thumb_func_end ov12_02249CC4

	thumb_func_start ov12_0224A6E0
ov12_0224A6E0: ; 0x0224A6E0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224A6E4: .word 0x00002DEC
_0224A6E8: .word 0x00002D4C
_0224A6EC: .word 0x00002D6C
_0224A6F0: .word 0x00002DC8
_0224A6F4: .word 0xFFFFFDFF
_0224A6F8: .word 0xFFFFF8FF
_0224A6FC: .word 0x00002DCC
_0224A700: .word 0xFFFF1FFF
_0224A704: .word 0xFFF8FFFF
_0224A708: .word 0xFFC7FFFF
	thumb_func_end ov12_0224A6E0

	thumb_func_start ov12_0224A70C
ov12_0224A70C: ; 0x0224A70C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	str r0, [sp]
	bl ov12_0223A7F0
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov12_0224DC74
	cmp r0, #1
	bne _0224A72C
	b _0224A93C
_0224A72C:
	ldr r0, [sp]
	bl ov12_022642F0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0224A744
	cmp r0, #1
	beq _0224A82E
	cmp r0, #2
	bne _0224A742
	b _0224A8F4
_0224A742:
	b _0224A932
_0224A744:
	ldr r0, [r4, #0x24]
	cmp r0, r7
	bge _0224A824
	add r5, r4, #0
	add r5, #0x24
_0224A74E:
	add r1, r4, r0
	ldr r0, _0224A940 ; =0x000021EC
	ldrb r6, [r1, r0]
	add r0, r6, #0
	bl sub_020726C0
	ldr r1, _0224A944 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	ldr r0, [r5]
	beq _0224A76A
	add r0, r0, #1
	str r0, [r5]
	b _0224A81E
_0224A76A:
	add r0, r0, #1
	mov r1, #0x62
	str r0, [r5]
	add r0, r4, r6
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0224A81E
	mov r1, #0x62
	lsl r1, r1, #2
	ldrb r1, [r0, r1]
	sub r2, r1, #1
	mov r1, #0x62
	lsl r1, r1, #2
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0224A81E
	mov r0, #0xc0
	mul r0, r6
	add r1, r4, r0
	ldr r0, _0224A948 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224A81E
	ldr r0, [sp]
	add r1, r6, #0
	bl ov12_0223AB1C
	mov r2, #0x6f
	lsl r2, r2, #2
	add r1, r4, r2
	lsl r5, r0, #2
	ldr r3, [r1, r5]
	mov r0, #0x10
	bic r3, r0
	add r0, r4, #0
	str r3, [r1, r5]
	add r2, #0x1f
	add r0, #0xf6
	strh r2, [r0]
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0xf5
	strb r1, [r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_022522E0
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	mov r0, #0x19
	lsl r0, r0, #4
	add r1, r4, #0
	add r3, r4, r0
	lsl r2, r6, #1
	ldrh r5, [r3, r2]
	add r1, #0xfc
	str r5, [r1]
	add r1, r0, #0
	sub r1, #0x78
	str r6, [r4, r1]
	lsl r1, r6, #2
	add r5, r0, #0
	add r1, r4, r1
	add r5, #8
	ldr r6, [r1, r5]
	add r5, r0, #0
	sub r5, #0x74
	str r6, [r4, r5]
	ldrh r3, [r3, r2]
	add r2, r0, #0
	sub r2, #0x6c
	str r3, [r4, r2]
	add r0, #0x18
	ldr r1, [r1, r0]
	ldr r0, _0224A94C ; =0x0000215C
	mov r2, #0x79
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #8
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224A81E:
	ldr r0, [r4, #0x24]
	cmp r0, r7
	blt _0224A74E
_0224A824:
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
_0224A82E:
	ldr r0, [r4, #0x24]
	cmp r0, r7
	bge _0224A8EA
	add r5, r4, #0
	add r5, #0x24
_0224A838:
	add r1, r4, r0
	ldr r0, _0224A940 ; =0x000021EC
	ldrb r6, [r1, r0]
	add r0, r6, #0
	bl sub_020726C0
	ldr r1, _0224A944 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	ldr r0, [r5]
	beq _0224A854
	add r0, r0, #1
	str r0, [r5]
	b _0224A8E4
_0224A854:
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0xc0
	mul r0, r6
	mov r1, #0xb7
	add r3, r4, r0
	lsl r1, r1, #6
	ldr r2, [r3, r1]
	mov r1, #0x20
	tst r1, r2
	beq _0224A8E4
	ldr r7, _0224A950 ; =0x00002DC8
	add r2, r4, r7
	ldr r1, [r2, r0]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1e
	bne _0224A8AE
	add r1, r7, #0
	sub r1, #8
	add r1, r4, r1
	str r1, [sp, #4]
	ldr r1, [r1, r0]
	mov r5, #0x20
	bic r1, r5
	ldr r5, [sp, #4]
	sub r7, #0x3c
	str r1, [r5, r0]
	ldr r0, [r2, r0]
	lsl r0, r0, #0x11
	lsr r1, r0, #0x1e
	mov r0, #0x13
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r3, r7]
	ldr r1, _0224A94C ; =0x0000215C
	neg r0, r0
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0x20
	ldr r2, [r4, r0]
	mov r0, #0x40
	orr r0, r2
	sub r1, #0x20
	str r0, [r4, r1]
	b _0224A8C8
_0224A8AE:
	mov r3, #0x13
	lsl r3, r3, #4
	str r1, [r4, r3]
	ldr r3, [r2, r0]
	ldr r1, _0224A954 ; =0xFFFF9FFF
	and r1, r3
	lsl r3, r3, #0x11
	lsr r3, r3, #0x1e
	sub r3, r3, #1
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x11
	orr r1, r3
	str r1, [r2, r0]
_0224A8C8:
	mov r0, #0x46
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x66
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #8
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224A8E4:
	ldr r0, [r4, #0x24]
	cmp r0, r7
	blt _0224A838
_0224A8EA:
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
_0224A8F4:
	mov r1, #6
	lsl r1, r1, #6
	ldr r3, [r4, r1]
	mov r2, #7
	lsl r2, r2, #0x10
	add r0, r3, #0
	tst r0, r2
	beq _0224A928
	mov r0, #1
	lsl r0, r0, #0x10
	sub r0, r3, r0
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	tst r0, r2
	bne _0224A928
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xfb
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #8
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224A928:
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
_0224A932:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	mov r0, #0xc
	str r0, [r4, #8]
_0224A93C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224A940: .word 0x000021EC
_0224A944: .word 0x00003108
_0224A948: .word 0x00002D8C
_0224A94C: .word 0x0000215C
_0224A950: .word 0x00002DC8
_0224A954: .word 0xFFFF9FFF
	thumb_func_end ov12_0224A70C

	thumb_func_start ov12_0224A958
ov12_0224A958: ; 0x0224A958
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #8]
	add r5, r0, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov12_0224DD18
	cmp r0, #1
	beq _0224A9AC
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224D7EC
	cmp r0, #1
	beq _0224A9AC
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224D540
	cmp r0, #1
	beq _0224A9AC
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x24
	ldr r0, [r4, r0]
	add r1, #0x24
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov12_02250F44
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02251710
	mov r0, #2
	str r0, [r4, #8]
_0224A9AC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0224A958

	thumb_func_start ov12_0224A9B0
ov12_0224A9B0: ; 0x0224A9B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xec
	ldr r0, [r0]
	mov r4, #0
	add r1, r5, r0
	ldr r0, _0224AAD8 ; =0x000021E8
	ldrb r2, [r1, r0]
	lsl r0, r2, #6
	add r1, r5, r0
	mov r0, #0x75
	str r2, [r5, #0x64]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0224A9E4
	mov r0, #0xc1
	mov r1, #0xa5
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r4, #1
	b _0224AAA8
_0224A9E4:
	mov r0, #0xc0
	mul r0, r2
	ldr r6, _0224AADC ; =0x00002DEC
	add r0, r5, r0
	ldrh r1, [r0, r6]
	cmp r1, #0
	beq _0224AA0C
	add r3, r6, #2
	ldrh r3, [r0, r3]
	sub r6, #0xa0
	lsl r3, r3, #1
	add r0, r0, r3
	ldrh r0, [r0, r6]
	cmp r1, r0
	bne _0224AA0C
	mov r0, #0xc1
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r4, #1
	b _0224AAA8
_0224AA0C:
	cmp r1, #0
	beq _0224AA5E
	mov r7, #0xc0
	add r0, r2, #0
	mul r0, r7
	ldr r3, _0224AAE0 ; =0x00002DEE
	add r0, r5, r0
	ldrh r6, [r0, r3]
	lsl r6, r6, #1
	add r6, r0, r6
	add r0, r3, #0
	sub r0, #0xa2
	ldrh r0, [r6, r0]
	cmp r1, r0
	beq _0224AA5E
	mov r1, #0xc1
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r1, [r5, #0x64]
	mov r0, #0
	add r2, r1, #0
	mul r2, r7
	add r2, r5, r2
	sub r1, r3, #2
	strh r0, [r2, r1]
	ldr r1, [r5, #0x64]
	mov r4, #1
	add r2, r1, #0
	mul r2, r7
	add r1, r5, r2
	strh r0, [r1, r3]
	ldr r0, [r5, #0x64]
	sub r3, #0x26
	add r2, r0, #0
	add r3, r5, r3
	mul r2, r7
	ldr r1, [r3, r2]
	mov r0, #0x38
	bic r1, r0
	str r1, [r3, r2]
	b _0224AAA8
_0224AA5E:
	add r0, r5, #0
	add r1, r2, #0
	bl ov12_022567A0
	cmp r0, #0
	bne _0224AA7A
	ldr r0, [r5, #0x64]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0224AAE4 ; =0x0000304C
	ldr r1, [r1, r0]
	sub r0, #0xc
	str r1, [r5, r0]
	b _0224AAA8
_0224AA7A:
	ldr r2, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r2
	lsl r1, r2, #1
	add r3, r5, r0
	add r0, r5, r1
	ldr r1, _0224AAE8 ; =0x000030BC
	ldrh r2, [r0, r1]
	lsl r2, r2, #1
	add r3, r3, r2
	ldr r2, _0224AAEC ; =0x00002D4C
	ldrh r3, [r3, r2]
	add r2, r1, #0
	sub r2, #8
	ldrh r0, [r0, r2]
	cmp r0, r3
	beq _0224AAA4
	sub r1, #0x7c
	str r3, [r5, r1]
	mov r4, #1
	b _0224AAA8
_0224AAA4:
	sub r1, #0x7c
	str r3, [r5, r1]
_0224AAA8:
	mov r3, #0xc1
	lsl r3, r3, #6
	ldr r1, [r5, r3]
	add r0, r3, #4
	str r1, [r5, r0]
	mov r0, #0x17
	str r0, [r5, #8]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [r5, r3]
	ldr r0, [sp, #8]
	lsl r3, r3, #0x10
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl ov12_022506D4
	str r0, [r5, #0x6c]
	ldr r0, [sp, #8]
	bl ov12_022642F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224AAD8: .word 0x000021E8
_0224AADC: .word 0x00002DEC
_0224AAE0: .word 0x00002DEE
_0224AAE4: .word 0x0000304C
_0224AAE8: .word 0x000030BC
_0224AAEC: .word 0x00002D4C
	thumb_func_end ov12_0224A9B0

	thumb_func_start ov12_0224AAF0
ov12_0224AAF0: ; 0x0224AAF0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r2, r4, #0
	add r2, #0xec
	ldr r2, [r2]
	add r7, r0, #0
	add r3, r4, r2
	ldr r2, _0224AC2C ; =0x000021E8
	ldrb r2, [r3, r2]
	str r2, [r4, #0x64]
	bl ov12_02253DA0
	str r0, [r4, #0x6c]
	ldr r0, _0224AC30 ; =0x000021B0
	ldr r1, [r4, #0x64]
	add r2, r4, r0
	lsl r0, r1, #4
	add r6, r2, r0
	add r0, r7, #0
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0224AB98
	ldr r0, [r4, #0x64]
	asr r0, r0, #1
	add r1, r4, r0
	ldr r0, _0224AC34 ; =0x000003D1
	ldrb r2, [r1, r0]
	cmp r2, #4
	bhi _0224AB84
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224AB38: ; jump table
	.short _0224AB42 - _0224AB38 - 2 ; case 0
	.short _0224AB46 - _0224AB38 - 2 ; case 1
	.short _0224AB4A - _0224AB38 - 2 ; case 2
	.short _0224AB74 - _0224AB38 - 2 ; case 3
	.short _0224AB82 - _0224AB38 - 2 ; case 4
_0224AB42:
	ldr r5, _0224AC38 ; =0x00000121
	b _0224AB84
_0224AB46:
	ldr r5, _0224AC3C ; =0x0000010B
	b _0224AB84
_0224AB4A:
	add r0, r0, #2
	ldrb r0, [r1, r0]
	mov r1, #1
	tst r1, r0
	beq _0224AB64
	mov r1, #0x3e
	add r2, r0, #0
	tst r2, r1
	beq _0224AB64
	mov r0, #6
	add r1, #0xf2
	str r0, [r4, r1]
	b _0224AB6E
_0224AB64:
	bl sub_020726E0
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
_0224AB6E:
	mov r5, #0x43
	lsl r5, r5, #2
	b _0224AB84
_0224AB74:
	add r0, r0, #2
	ldrb r0, [r1, r0]
	mov r5, #0x13
	lsl r5, r5, #4
	str r0, [r4, r5]
	sub r5, #0x23
	b _0224AB84
_0224AB82:
	ldr r5, _0224AC40 ; =0x0000010E
_0224AB84:
	ldr r1, [r4, #0x64]
	mov r0, #1
	bic r1, r0
	ldr r0, _0224AC44 ; =0x000003D6
	add r1, r4, r1
	ldrh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0224AC0A
_0224AB98:
	ldrb r0, [r6, #2]
	cmp r0, #3
	bhi _0224AC02
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224ABAA: ; jump table
	.short _0224ABB2 - _0224ABAA - 2 ; case 0
	.short _0224ABB2 - _0224ABAA - 2 ; case 1
	.short _0224ABC8 - _0224ABAA - 2 ; case 2
	.short _0224ABB2 - _0224ABAA - 2 ; case 3
_0224ABB2:
	ldrh r1, [r6]
	ldr r0, _0224AC48 ; =0x0000FFC1
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0224ABC4
	mov r5, #0xde
	b _0224AC02
_0224ABC4:
	mov r5, #0xdf
	b _0224AC02
_0224ABC8:
	add r0, r7, #0
	mov r5, #0xb
	bl ov12_0223A7E0
	mov r1, #1
	tst r0, r1
	bne _0224AC02
	add r0, r7, #0
	bl ov12_0223A7E0
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	bne _0224AC02
	add r0, r7, #0
	bl ov12_0223AA80
	ldrh r1, [r6]
	mov r2, #1
	mov r3, #5
	bl sub_02078434
	add r0, r7, #0
	bl ov12_0223AA84
	ldrh r1, [r6]
	ldrb r2, [r6, #2]
	bl sub_02078828
_0224AC02:
	ldrh r1, [r6]
	mov r0, #0x4a
	lsl r0, r0, #2
	str r1, [r4, r0]
_0224AC0A:
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x28
	str r0, [r4, #0xc]
	ldr r1, _0224AC4C ; =0x0000216C
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0x1e
	orr r0, r2
	str r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224AC2C: .word 0x000021E8
_0224AC30: .word 0x000021B0
_0224AC34: .word 0x000003D1
_0224AC38: .word 0x00000121
_0224AC3C: .word 0x0000010B
_0224AC40: .word 0x0000010E
_0224AC44: .word 0x000003D6
_0224AC48: .word 0x0000FFC1
_0224AC4C: .word 0x0000216C
	thumb_func_end ov12_0224AAF0

	thumb_func_start ov12_0224AC50
ov12_0224AC50: ; 0x0224AC50
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	bl ov12_0224EB9C
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	ldr r1, _0224AC90 ; =0x000021E8
	add r0, r4, r0
	ldrb r0, [r0, r1]
	mov r2, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x78]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x29
	str r0, [r4, #0xc]
	mov r0, #0x4e
	lsl r0, r0, #2
	str r2, [r4, r0]
	add r0, r1, #0
	sub r0, #0x7c
	ldr r2, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r0, r2
	sub r1, #0x7c
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_0224AC90: .word 0x000021E8
	thumb_func_end ov12_0224AC50

	thumb_func_start ov12_0224AC94
ov12_0224AC94: ; 0x0224AC94
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, #0xec
	ldr r1, [r1]
	add r5, r0, #0
	add r2, r4, r1
	ldr r1, _0224AD4C ; =0x000021E8
	ldrb r1, [r2, r1]
	str r1, [r4, #0x64]
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0224AD06
	add r0, r5, #0
	bl ov12_0223A7E0
	mov r1, #4
	tst r0, r1
	bne _0224AD06
	ldr r0, [r4, #0x64]
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	ldr r0, _0224AD50 ; =0x00002DB0
	add r1, r4, r1
	ldr r1, [r1, r0]
	ldr r0, _0224AD54 ; =0x0400E000
	tst r0, r1
	beq _0224ACEA
	add r0, r4, #0
	mov r1, #1
	add r2, #0x5e
	bl ov12_0224EB9C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x28
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224ACEA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe6
	bl ov12_0224EB9C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x2c
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224AD06:
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252B68
	cmp r0, #0
	beq _0224AD30
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov12_0224EB9C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x2c
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_0224AD30:
	add r0, r4, #0
	mov r1, #1
	mov r2, #8
	bl ov12_0224EB9C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x28
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224AD4C: .word 0x000021E8
_0224AD50: .word 0x00002DB0
_0224AD54: .word 0x0400E000
	thumb_func_end ov12_0224AC94

	thumb_func_start ov12_0224AD58
ov12_0224AD58: ; 0x0224AD58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0224AD9C ; =0x00000113
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x28
	str r0, [r4, #0xc]
	mov r0, #0x4a
	mov r1, #5
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov12_0223B6B4
	sub r1, r0, #1
	add r0, r5, #0
	bl ov12_0223B6C0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov12_02263A1C
	pop {r3, r4, r5, pc}
	nop
_0224AD9C: .word 0x00000113
	thumb_func_end ov12_0224AD58

	thumb_func_start ov12_0224ADA0
ov12_0224ADA0: ; 0x0224ADA0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe3
	bl ov12_0224EB9C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x28
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov12_0223BD98
	mov r1, #0xa
	bl sub_020F2998
	mov r0, #0x4e
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0224ADFC ; =0x0000311D
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0224ADDE
	sub r1, r1, #1
	strb r1, [r4, r0]
_0224ADDE:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0224ADFA
	mov r1, #1
	sub r0, #8
	str r1, [r4, r0]
	ldr r0, _0224AE00 ; =0x0000311C
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0224ADFA
	sub r1, r1, #1
	strb r1, [r4, r0]
_0224ADFA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224ADFC: .word 0x0000311D
_0224AE00: .word 0x0000311C
	thumb_func_end ov12_0224ADA0

	thumb_func_start ov12_0224AE04
ov12_0224AE04: ; 0x0224AE04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe4
	bl ov12_0224EB9C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x28
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov12_0223BD98
	mov r1, #0xa
	bl sub_020F2998
	mov r0, #0x4e
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0224AE5C ; =0x0000311C
	ldrb r1, [r4, r0]
	cmp r1, #0xc
	bhs _0224AE42
	add r1, r1, #1
	strb r1, [r4, r0]
_0224AE42:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224AE58
	ldr r0, _0224AE60 ; =0x0000311D
	ldrb r1, [r4, r0]
	cmp r1, #0xc
	bhs _0224AE58
	add r1, r1, #1
	strb r1, [r4, r0]
_0224AE58:
	pop {r3, r4, r5, pc}
	nop
_0224AE5C: .word 0x0000311C
_0224AE60: .word 0x0000311D
	thumb_func_end ov12_0224AE04

	thumb_func_start ov12_0224AE64
ov12_0224AE64: ; 0x0224AE64
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe5
	bl ov12_0224EB9C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x28
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov12_0224AE64

	thumb_func_start ov12_0224AE84
ov12_0224AE84: ; 0x0224AE84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb
	bl ov12_0224EB9C
	mov r0, #0
	str r0, [r4, #0x64]
	mov r0, #1
	str r0, [r4, #0x6c]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x28
	ldr r1, _0224AEC8 ; =0x000001F3
	str r0, [r4, #0xc]
	add r0, r1, #0
	sub r0, #0xcb
	str r1, [r4, r0]
	add r0, r5, #0
	bl ov12_0223B6B4
	sub r1, r0, #1
	add r0, r5, #0
	bl ov12_0223B6C0
	ldr r1, _0224AECC ; =0x0000216C
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0x1e
	orr r0, r2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224AEC8: .word 0x000001F3
_0224AECC: .word 0x0000216C
	thumb_func_end ov12_0224AE84

	thumb_func_start ov12_0224AED0
ov12_0224AED0: ; 0x0224AED0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl ov12_0223A7E0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_0223AA40
	str r0, [sp, #0x28]
	mov r0, #0x84
	tst r0, r6
	beq _0224AEF6
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AEF6:
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0224AF08
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AF08:
	mov r0, #0x40
	tst r0, r6
	beq _0224AF20
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223AB0C
	cmp r0, #4
	bne _0224AF20
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AF20:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02256854
	cmp r0, #1
	bne _0224AF32
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AF32:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_022567A0
	cmp r0, #0
	bne _0224AF44
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AF44:
	ldr r0, _0224B1D0 ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0x75
	bne _0224AF5E
	ldr r0, _0224B1D4 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r1
	beq _0224AF5E
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AF5E:
	ldr r0, [sp, #0x28]
	bl sub_02028FF0
	cmp r0, #8
	blt _0224AF6E
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AF6E:
	ldr r0, [sp, #0x28]
	mov r6, #0xa
	bl sub_02028FF0
	cmp r0, #1
	blt _0224AF7C
	mov r6, #0x14
_0224AF7C:
	ldr r0, [sp, #0x28]
	bl sub_02028FF0
	cmp r0, #2
	blt _0224AF88
	mov r6, #0x1e
_0224AF88:
	ldr r0, [sp, #0x28]
	mov r1, #3
	bl sub_02028F98
	cmp r0, #0
	beq _0224AF96
	mov r6, #0x32
_0224AF96:
	ldr r0, [sp, #0x28]
	mov r1, #5
	bl sub_02028F98
	cmp r0, #0
	beq _0224AFA4
	mov r6, #0x46
_0224AFA4:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	str r0, [sp, #0x20]
	add r1, r4, r0
	ldr r0, _0224B1D8 ; =0x00002D74
	ldrb r0, [r1, r0]
	cmp r0, r6
	bhi _0224AFBC
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AFBC:
	add r0, r5, #0
	bl ov12_0223BD98
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x18
	add r2, r4, r1
	ldr r1, _0224B1D8 ; =0x00002D74
	lsr r0, r0, #0x18
	ldrb r2, [r2, r1]
	add r2, r6, r2
	mul r0, r2
	asr r0, r0, #8
	cmp r0, r6
	bge _0224AFDE
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224AFDE:
	ldr r0, _0224B1D0 ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0x63
	bne _0224AFF6
	add r1, #0x3c
	add r0, r4, r1
	ldr r1, [sp, #0x20]
	ldr r2, [r0, r1]
	ldr r1, _0224B1DC ; =0xFF7FFFFF
	and r2, r1
	ldr r1, [sp, #0x20]
	str r2, [r0, r1]
_0224AFF6:
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r0
	str r0, [sp, #0x1c]
	ldr r0, _0224B1E0 ; =0x00002DAC
	add r1, r4, r1
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224B020
	ldr r0, _0224B1D0 ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0xad
	beq _0224B016
	cmp r0, #0xd6
	bne _0224B020
_0224B016:
	mov r0, #0xfe
	str r0, [r7]
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B020:
	ldr r0, [sp, #0x1c]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0224B1D8 ; =0x00002D74
	add r1, r4, r1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov12_0223BD98
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x18
	add r1, r6, r1
	lsr r0, r0, #0x18
	mul r0, r1
	asr r0, r0, #8
	cmp r0, r6
	bge _0224B108
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _0224B1E4 ; =0x000030BC
	ldrh r0, [r1, r0]
	bl sub_020726C0
	add r3, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022517EC
	add r6, r0, #0
	cmp r6, #0xf
	bne _0224B074
	mov r0, #0xff
	str r0, [r7]
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B074:
	add r0, r5, #0
	bl ov12_0223BD98
	mov r1, #3
	and r0, r1
	str r0, [sp, #0x2c]
	bl sub_020726C0
	tst r0, r6
	bne _0224B074
	ldr r0, [r4, #0x64]
	ldr r3, _0224B1E4 ; =0x000030BC
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, [sp, #0x2c]
	strh r0, [r1, r3]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, r3]
	add r0, r4, r0
	lsl r1, r1, #1
	add r1, r0, r1
	ldr r0, _0224B1E8 ; =0x00002D4C
	ldrh r1, [r1, r0]
	add r0, r3, #0
	sub r0, #0x7c
	str r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x7c
	ldr r1, [r4, r0]
	add r0, r3, #0
	sub r0, #0x78
	str r1, [r4, r0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	sub r3, #0x7c
	ldr r3, [r4, r3]
	ldr r2, [r4, #0x64]
	lsl r3, r3, #0x10
	add r0, r5, #0
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov12_022506D4
	str r0, [r4, #0x6c]
	cmp r0, #0xff
	bne _0224B0E8
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02253DA0
	b _0224B0E8
_0224B0E8:
	ldr r1, [r4, #0x64]
	add sp, #0x30
	lsl r1, r1, #4
	add r2, r4, r1
	ldr r1, _0224B1EC ; =0x000021AC
	str r0, [r2, r1]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [r7]
	ldr r1, _0224B1F0 ; =0x00002184
	mov r0, #1
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0224B108:
	ldr r0, [sp, #0x24]
	sub r0, r0, r6
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r5, #0
	bl ov12_0223BD98
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	cmp r0, r6
	bge _0224B160
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224B1E0 ; =0x00002DAC
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bne _0224B160
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x48
	beq _0224B160
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0xf
	beq _0224B160
	mov r1, #6
	lsl r1, r1, #6
	mov r0, #0xf
	ldr r2, [r4, r1]
	lsl r0, r0, #8
	tst r0, r2
	bne _0224B160
	sub r1, #0x7f
	add sp, #0x30
	str r1, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B160:
	ldr r0, [sp, #0x18]
	sub r0, r0, r6
	cmp r0, r6
	bge _0224B1C6
	ldr r1, [r4, #0x64]
	mov r0, #0x46
	str r1, [r4, #0x6c]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r4, #0x64]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	lsl r0, r1, #0x18
	str r3, [sp, #8]
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	str r2, [sp, #0x14]
	bl ov12_02256FF8
	ldr r2, _0224B1F4 ; =0x0000215C
	add r1, r4, #0
	str r0, [r4, r2]
	ldr r2, [r4, r2]
	add r0, r5, #0
	bl ov12_02257C30
	ldr r1, _0224B1F4 ; =0x0000215C
	add sp, #0x30
	str r0, [r4, r1]
	mov r0, #0
	ldr r2, [r4, r1]
	mvn r0, r0
	mul r0, r2
	str r0, [r4, r1]
	ldr r0, _0224B1F8 ; =0x00000102
	str r0, [r7]
	add r0, r1, #0
	sub r0, #0x20
	ldr r2, [r4, r0]
	mov r0, #2
	orr r0, r2
	sub r1, #0x20
	str r0, [r4, r1]
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0224B1C6:
	mov r0, #0xff
	str r0, [r7]
	mov r0, #1
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224B1D0: .word 0x00003044
_0224B1D4: .word 0x0000213C
_0224B1D8: .word 0x00002D74
_0224B1DC: .word 0xFF7FFFFF
_0224B1E0: .word 0x00002DAC
_0224B1E4: .word 0x000030BC
_0224B1E8: .word 0x00002D4C
_0224B1EC: .word 0x000021AC
_0224B1F0: .word 0x00002184
_0224B1F4: .word 0x0000215C
_0224B1F8: .word 0x00000102
	thumb_func_end ov12_0224AED0

	thumb_func_start ov12_0224B1FC
ov12_0224B1FC: ; 0x0224B1FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r3, [r5, #0x64]
	mov r2, #0x1c
	mul r2, r3
	add r6, r5, r2
	mov r2, #0xb5
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	str r0, [sp, #4]
	lsl r2, r2, #0x1f
	mov r4, #1
	lsr r2, r2, #0x1f
	bne _0224B2B6
	ldr r6, [r5, #0x6c]
	cmp r6, #0xff
	beq _0224B2B6
	mov r2, #0xc1
	lsl r2, r2, #6
	ldr r7, [r5, r2]
	ldr r2, _0224B384 ; =0x0000011E
	cmp r7, r2
	bne _0224B23A
	mov r2, #0x2e
	str r2, [sp]
	mov r2, #3
	bl ov12_02252324
	add r4, r4, r0
	b _0224B2B6
_0224B23A:
	lsl r0, r7, #4
	add r1, r5, r0
	ldr r0, _0224B388 ; =0x000003E6
	ldrh r1, [r1, r0]
	cmp r1, #0x40
	bgt _0224B264
	bge _0224B280
	cmp r1, #0x10
	bgt _0224B25E
	bge _0224B2B6
	cmp r1, #8
	bgt _0224B2A4
	cmp r1, #4
	blt _0224B2A4
	beq _0224B292
	cmp r1, #8
	beq _0224B280
	b _0224B2A4
_0224B25E:
	cmp r1, #0x20
	beq _0224B2B6
	b _0224B2A4
_0224B264:
	add r0, r2, #0
	sub r0, #0x1e
	cmp r1, r0
	bgt _0224B278
	sub r2, #0x1e
	cmp r1, r2
	bge _0224B2B6
	cmp r1, #0x80
	beq _0224B292
	b _0224B2A4
_0224B278:
	add r2, #0xe2
	cmp r1, r2
	beq _0224B2B6
	b _0224B2A4
_0224B280:
	mov r0, #0x2e
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	bl ov12_02252324
	add r4, r4, r0
	b _0224B2B6
_0224B292:
	mov r0, #0x2e
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl ov12_02252324
	add r4, r4, r0
	b _0224B2B6
_0224B2A4:
	cmp r3, r6
	beq _0224B2B6
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0x2e
	bne _0224B2B6
	add r4, r4, #1
_0224B2B6:
	mov r0, #0xb5
	lsl r0, r0, #6
	add r2, r5, r0
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	mov r1, #0xc1
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r2, r0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov12_02251C60
	add r6, r0, #0
	ldr r1, [r5, #0x64]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r7, r1, #6
	ldr r3, [r0, r7]
	lsl r2, r3, #0x1e
	lsr r2, r2, #0x1f
	bne _0224B32E
	lsl r2, r3, #0x1f
	lsr r2, r2, #0x1f
	bne _0224B32E
	mov r1, #2
	orr r1, r3
	str r1, [r0, r7]
	ldr r0, _0224B38C ; =0x00002D6C
	ldr r1, [r5, #0x64]
	add r2, r5, r0
	mov r0, #0xc0
	mul r0, r1
	add r1, r2, r0
	ldrb r0, [r1, r6]
	cmp r0, #0
	beq _0224B320
	cmp r6, #4
	bge _0224B320
	cmp r0, r4
	ble _0224B310
	sub r0, r0, r4
	b _0224B312
_0224B310:
	mov r0, #0
_0224B312:
	strb r0, [r1, r6]
	ldr r0, [sp, #4]
	ldr r2, [r5, #0x64]
	add r1, r5, #0
	bl ov12_02250C40
	b _0224B37C
_0224B320:
	ldr r1, _0224B390 ; =0x0000216C
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #8
	orr r0, r2
	str r0, [r5, r1]
	b _0224B37C
_0224B32E:
	mov r2, #0xc0
	add r0, r1, #0
	mul r0, r2
	add r0, r5, r0
	ldr r3, _0224B38C ; =0x00002D6C
	add r4, r0, r6
	ldrb r4, [r4, r3]
	cmp r4, #0
	bne _0224B37C
	ldr r4, _0224B394 ; =0x0000213C
	mov r7, #2
	ldr r4, [r5, r4]
	lsl r7, r7, #8
	tst r4, r7
	bne _0224B37C
	add r3, #0x44
	ldr r0, [r0, r3]
	lsl r3, r7, #3
	tst r3, r0
	bne _0224B37C
	lsl r2, r2, #4
	tst r0, r2
	bne _0224B37C
	add r0, r1, #0
	bl sub_020726C0
	add r1, r7, #0
	sub r1, #0x80
	ldr r2, [r5, r1]
	lsl r0, r0, #8
	tst r0, r2
	bne _0224B37C
	cmp r6, #4
	bge _0224B37C
	ldr r0, _0224B390 ; =0x0000216C
	add r1, #0x80
	ldr r2, [r5, r0]
	orr r1, r2
	str r1, [r5, r0]
_0224B37C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B384: .word 0x0000011E
_0224B388: .word 0x000003E6
_0224B38C: .word 0x00002D6C
_0224B390: .word 0x0000216C
_0224B394: .word 0x0000213C
	thumb_func_end ov12_0224B1FC

	thumb_func_start ov12_0224B398
ov12_0224B398: ; 0x0224B398
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	mov r4, #0
	ldr r0, [r5, #0x6c]
	add r6, r4, #0
	cmp r0, #0xff
	bne _0224B3B6
	ldr r1, _0224B484 ; =0x00003044
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov12_022525AC
	cmp r0, #0
	beq _0224B3E8
_0224B3B6:
	ldr r0, [r5, #0x6c]
	cmp r0, #0xff
	bne _0224B3FC
	ldr r1, _0224B484 ; =0x00003044
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov12_022525AC
	cmp r0, #1
	bne _0224B3FC
	ldr r1, [r5, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0224B488 ; =0x00002DB0
	ldr r0, [r1, r0]
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	bne _0224B3E8
	ldr r0, _0224B48C ; =0x0000213C
	ldr r2, [r5, r0]
	lsr r0, r1, #3
	tst r0, r2
	beq _0224B3FC
_0224B3E8:
	ldr r2, _0224B490 ; =0x00000119
	add r0, r5, #0
	mov r1, #1
	bl ov12_0224EB9C
	mov r0, #0x27
	str r0, [r5, #0xc]
	mov r0, #0x16
	str r0, [r5, #8]
	mov r4, #1
_0224B3FC:
	mov r0, #0xd
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224B442
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224B442
	ldr r0, _0224B484 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0224B494 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x97
	bne _0224B442
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224B442
	mov r6, #1
_0224B442:
	ldr r0, [r5, #0x6c]
	cmp r0, #0xff
	bne _0224B480
	ldr r1, _0224B484 ; =0x00003044
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov12_022525AC
	cmp r0, #1
	bne _0224B480
	cmp r4, #0
	bne _0224B480
	cmp r6, #0
	bne _0224B480
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_02255830
	cmp r0, #0x63
	beq _0224B480
	ldr r0, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _0224B488 ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	tst r1, r2
	bne _0224B480
	str r0, [r5, #0x6c]
_0224B480:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224B484: .word 0x00003044
_0224B488: .word 0x00002DB0
_0224B48C: .word 0x0000213C
_0224B490: .word 0x00000119
_0224B494: .word 0x000003DE
	thumb_func_end ov12_0224B398

	thumb_func_start ov12_0224B498
ov12_0224B498: ; 0x0224B498
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _0224B518 ; =0x00003044
	ldr r2, [r4, r1]
	lsl r1, r2, #4
	add r5, r4, r1
	ldr r1, _0224B51C ; =0x000003E6
	ldrh r3, [r5, r1]
	cmp r3, #0x10
	beq _0224B4CC
	cmp r3, #0x20
	beq _0224B4CC
	sub r1, r1, #5
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _0224B4CC
	ldr r1, _0224B520 ; =0x0000213C
	ldr r3, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0xe
	tst r1, r3
	bne _0224B4CC
	mov r1, #0x20
	tst r1, r3
	beq _0224B4D0
_0224B4CC:
	cmp r2, #0x56
	bne _0224B510
_0224B4D0:
	ldr r1, [r4, #0x64]
	ldr r3, _0224B524 ; =0x00002144
	str r1, [sp]
	ldr r1, [r4, #0x6c]
	str r1, [sp, #4]
	ldr r1, [r4, r3]
	str r1, [sp, #8]
	add r1, r3, #0
	add r1, #0x28
	add r1, r4, r1
	str r1, [sp, #0xc]
	add r3, #0x1c
	ldr r3, [r4, r3]
	add r1, r4, #0
	bl ov12_02251D28
	ldr r1, _0224B524 ; =0x00002144
	str r0, [r4, r1]
	add r1, #0x28
	ldr r1, [r4, r1]
	mov r0, #8
	tst r0, r1
	beq _0224B510
	mov r0, #0xd1
	lsl r0, r0, #2
	add r3, r4, r0
	ldr r0, [r4, #0x64]
	lsl r2, r0, #2
	ldr r1, [r3, r2]
	mov r0, #2
	orr r0, r1
	str r0, [r3, r2]
_0224B510:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224B518: .word 0x00003044
_0224B51C: .word 0x000003E6
_0224B520: .word 0x0000213C
_0224B524: .word 0x00002144
	thumb_func_end ov12_0224B498

	thumb_func_start ov12_0224B528
ov12_0224B528: ; 0x0224B528
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #0x18]
	add r4, r1, #0
	ldr r0, _0224B854 ; =0x00003044
	add r5, r4, #0
	ldr r0, [r4, r0]
	mov r7, #0
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224B858 ; =0x000003DE
	add r5, #0x50
	ldrh r0, [r1, r0]
	str r0, [sp, #0x1c]
	mov r0, #0xd1
	lsl r0, r0, #2
	add r6, r4, r0
	mov r0, #7
	str r0, [sp, #0x20]
	mov r0, #8
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0x28]
_0224B556:
	ldr r0, [r4, #0x50]
	cmp r0, #0x10
	bls _0224B55E
	b _0224BBC2
_0224B55E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224B56A: ; jump table
	.short _0224B58C - _0224B56A - 2 ; case 0
	.short _0224B5C0 - _0224B56A - 2 ; case 1
	.short _0224B6BA - _0224B56A - 2 ; case 2
	.short _0224B720 - _0224B56A - 2 ; case 3
	.short _0224B748 - _0224B56A - 2 ; case 4
	.short _0224B784 - _0224B56A - 2 ; case 5
	.short _0224B7CA - _0224B56A - 2 ; case 6
	.short _0224B806 - _0224B56A - 2 ; case 7
	.short _0224B84E - _0224B56A - 2 ; case 8
	.short _0224B8B4 - _0224B56A - 2 ; case 9
	.short _0224B8F0 - _0224B56A - 2 ; case 10
	.short _0224B92C - _0224B56A - 2 ; case 11
	.short _0224BA0E - _0224B56A - 2 ; case 12
	.short _0224BA6C - _0224B56A - 2 ; case 13
	.short _0224BAD4 - _0224B56A - 2 ; case 14
	.short _0224BB84 - _0224B56A - 2 ; case 15
	.short _0224BBBC - _0224B56A - 2 ; case 16
_0224B58C:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224B85C ; =0x00002DB0
	ldr r1, [r2, r0]
	ldr r0, _0224B860 ; =0xFDFFFFFF
	and r1, r0
	ldr r0, _0224B85C ; =0x00002DB0
	str r1, [r2, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r2, r0]
	ldr r0, _0224B864 ; =0xFFFFBFFF
	and r1, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	str r1, [r2, r0]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B5C0:
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224B868 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224B6B2
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0xf
	lsl r0, r0, #8
	tst r0, r1
	beq _0224B60A
	add r0, r4, #0
	add r1, r2, #0
	bl ov12_022527CC
	cmp r0, #0x2b
	beq _0224B60A
	mov r0, #0x46
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _0224B6B2
_0224B60A:
	ldr r0, _0224B854 ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0xd6
	beq _0224B620
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0xd6
	bne _0224B620
	mov r0, #1
	b _0224B622
_0224B620:
	mov r0, #0
_0224B622:
	cmp r0, #0
	bne _0224B6B2
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x30
	bne _0224B636
	mov r3, #2
	b _0224B638
_0224B636:
	mov r3, #1
_0224B638:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224B868 ; =0x00002DAC
	ldr r1, [r2, r0]
	mov r0, #7
	and r0, r1
	cmp r0, r3
	ldr r0, _0224B868 ; =0x00002DAC
	bhs _0224B656
	ldr r1, [r2, r0]
	ldr r0, [sp, #0x20]
	bic r1, r0
	b _0224B65A
_0224B656:
	ldr r0, [r2, r0]
	sub r1, r0, r3
_0224B65A:
	ldr r0, _0224B868 ; =0x00002DAC
	str r1, [r2, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224B868 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224B698
	ldr r0, _0224B854 ; =0x00003044
	ldr r0, [r4, r0]
	cmp r0, #0xad
	beq _0224B6B2
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0xd6
	beq _0224B6B2
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #2
	b _0224B6B2
_0224B698:
	mov r0, #0x46
	lsl r0, r0, #2
	str r2, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_0224B6B2:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B6BA:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224B868 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _0224B718
	ldr r0, [sp, #0x18]
	bl ov12_0223BD98
	mov r1, #5
	bl sub_020F2998
	cmp r1, #0
	beq _0224B6FC
	ldr r0, [sp, #0x1c]
	cmp r0, #0x7d
	beq _0224B718
	cmp r0, #0xfd
	beq _0224B718
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1c
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
	b _0224B718
_0224B6FC:
	mov r0, #0x46
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1d
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_0224B718:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B720:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_02252C40
	cmp r0, #1
	bne _0224B740
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xbf
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224B740:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B748:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224B85C ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #1
	lsl r0, r0, #0x16
	tst r0, r1
	beq _0224B77C
	ldr r0, _0224B85C ; =0x00002DB0
	ldr r1, [r2, r0]
	ldr r0, _0224B86C ; =0xFFBFFFFF
	and r1, r0
	ldr r0, _0224B85C ; =0x00002DB0
	str r1, [r2, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x41
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224B77C:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B784:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224B85C ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #8
	tst r0, r1
	beq _0224B7C2
	ldr r0, _0224B85C ; =0x00002DB0
	ldr r1, [sp, #0x24]
	ldr r0, [r2, r0]
	bic r0, r1
	ldr r1, _0224B85C ; =0x00002DB0
	str r0, [r2, r1]
	ldr r0, [r4, #0x64]
	mov r1, #0x40
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224B7C2:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B7CA:
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224B870 ; =0x00002DE8
	ldrh r0, [r1, r0]
	cmp r3, r0
	bne _0224B7FE
	lsl r0, r2, #2
	ldr r2, [r6, r0]
	mov r1, #0x10
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x47
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224B7FE:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B806:
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224B874 ; =0x00002DC8
	ldr r0, [r1, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	beq _0224B846
	ldr r0, _0224B854 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224B878 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224B846
	lsl r0, r2, #2
	ldr r2, [r6, r0]
	mov r1, #0x20
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x85
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224B846:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B84E:
	ldr r3, _0224B854 ; =0x00003044
	b _0224B87C
	nop
_0224B854: .word 0x00003044
_0224B858: .word 0x000003DE
_0224B85C: .word 0x00002DB0
_0224B860: .word 0xFDFFFFFF
_0224B864: .word 0xFFFFBFFF
_0224B868: .word 0x00002DAC
_0224B86C: .word 0xFFBFFFFF
_0224B870: .word 0x00002DE8
_0224B874: .word 0x00002DC8
_0224B878: .word 0x000003E1
_0224B87C:
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0x64]
	ldr r3, [r4, r3]
	add r1, r4, #0
	bl ov12_02252C74
	cmp r0, #0
	beq _0224B8AC
	ldr r0, [r4, #0x64]
	mov r1, #4
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x90
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224B8AC:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B8B4:
	ldr r3, _0224BBDC ; =0x00003044
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0x64]
	ldr r3, [r4, r3]
	add r1, r4, #0
	bl ov12_02252DC4
	cmp r0, #0
	beq _0224B8E8
	ldr r0, [r4, #0x64]
	mov r1, #1
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x9d
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224B8E8:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B8F0:
	ldr r3, _0224BBDC ; =0x00003044
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0x64]
	ldr r3, [r4, r3]
	add r1, r4, #0
	bl ov12_02252DF8
	cmp r0, #0
	beq _0224B924
	ldr r0, [r4, #0x64]
	mov r1, #2
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xae
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224B924:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224B92C:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224BBE0 ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #7
	tst r0, r1
	bne _0224B946
	b _0224BBC2
_0224B946:
	ldr r0, _0224BBE0 ; =0x00002DB0
	ldr r0, [r2, r0]
	sub r1, r0, #1
	ldr r0, _0224BBE0 ; =0x00002DB0
	str r1, [r2, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224BBE0 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224B9F8
	ldr r0, [sp, #0x18]
	bl ov12_0223BD98
	mov r1, #1
	tst r0, r1
	beq _0224B982
	add r0, r4, #0
	mov r2, #0x26
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _0224BBC2
_0224B982:
	ldr r0, [r4, #0x64]
	mov r1, #0x80
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	mov r3, #0
	orr r1, r2
	str r1, [r6, r0]
	ldr r1, [r4, #0x64]
	mov r0, #0x46
	str r1, [r4, #0x6c]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #0x64]
	mov r1, #0
	str r1, [sp]
	mov r1, #0x28
	str r1, [sp, #4]
	mov r1, #0
	lsl r0, r0, #0x18
	str r1, [sp, #8]
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	mov r2, #0xa5
	bl ov12_02256FF8
	ldr r1, _0224BBE4 ; =0x0000215C
	ldr r2, _0224BBE4 ; =0x0000215C
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	ldr r2, [r4, r2]
	add r1, r4, #0
	bl ov12_02257C30
	ldr r1, _0224BBE4 ; =0x0000215C
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r1, [r4, r0]
	mov r0, #0
	add r2, r1, #0
	mvn r0, r0
	mul r2, r0
	ldr r0, _0224BBE4 ; =0x0000215C
	mov r1, #1
	str r2, [r4, r0]
	add r0, r4, #0
	mov r2, #0x27
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x22
	str r0, [r4, #0xc]
	mov r7, #1
	b _0224BBC2
_0224B9F8:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x28
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _0224BBC2
_0224BA0E:
	ldr r2, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224BBE8 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0224BA64
	add r0, r4, #0
	add r1, r2, #0
	bl ov12_022527CC
	cmp r0, #0x62
	beq _0224BA64
	ldr r0, [sp, #0x18]
	bl ov12_0223BD98
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r1
	mov r0, #0x1e
	ror r2, r0
	add r0, r1, r2
	bne _0224BA64
	ldr r0, [r4, #0x64]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #2
	ldr r0, [r6, r1]
	bic r0, r2
	mov r2, #1
	orr r0, r2
	str r0, [r6, r1]
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #0x20
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224BA64:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224BA6C:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224BBE0 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #0xf
	lsl r0, r0, #0x10
	and r0, r1
	beq _0224BACC
	lsr r0, r0, #0x10
	bl sub_020726E0
	mov r1, #0x46
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	bl ov12_0223BD98
	mov r1, #1
	tst r0, r1
	beq _0224BAAC
	add r0, r4, #0
	mov r2, #0x6b
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _0224BACC
_0224BAAC:
	ldr r0, [r4, #0x64]
	mov r1, #8
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	orr r1, r2
	str r1, [r6, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x6c
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r7, #1
_0224BACC:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224BAD4:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r2, r4, r0
	ldr r0, _0224BBE0 ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	beq _0224BBC2
	ldr r0, _0224BBE0 ; =0x00002DB0
	ldr r1, [r2, r0]
	mov r0, #1
	lsl r0, r0, #8
	sub r1, r1, r0
	ldr r0, _0224BBE0 ; =0x00002DB0
	str r1, [r2, r0]
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _0224BBE0 ; =0x00002DB0
	ldr r2, [r2, r1]
	mov r1, #3
	lsl r1, r1, #8
	tst r1, r2
	bne _0224BB6E
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0224BBEC ; =0x000030E4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224BB6E
	lsl r1, r0, #1
	ldr r0, _0224BBF0 ; =0x00002144
	str r1, [r4, r0]
	ldr r3, [r4, #0x64]
	lsl r0, r3, #2
	add r1, r4, r0
	ldr r0, _0224BBF4 ; =0x000030F4
	ldr r2, [r1, r0]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _0224BBF8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224BB3E
	str r2, [r4, #0x6c]
	b _0224BB6E
_0224BB3E:
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, r3, #0
	bl ov12_02253DA0
	mov r1, #0xc0
	mul r1, r0
	str r0, [r4, #0x6c]
	ldr r0, _0224BBF8 ; =0x00002D8C
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224BB6E
	ldr r2, _0224BBFC ; =0x0000011A
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	mov r0, #0x27
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r7, #2
	b _0224BBC2
_0224BB6E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x24
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	b _0224BBC2
_0224BB84:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224BBE8 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _0224BBB4
	ldr r0, [sp, #0x1c]
	cmp r0, #0x7d
	beq _0224BBA0
	cmp r0, #0xfd
	bne _0224BBB4
_0224BBA0:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1e
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r7, #2
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_0224BBB4:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224BBC2
_0224BBBC:
	mov r0, #0
	str r0, [r4, #0x50]
	mov r7, #3
_0224BBC2:
	cmp r7, #0
	bne _0224BBC8
	b _0224B556
_0224BBC8:
	ldr r0, [sp, #0x18]
	ldr r2, [r4, #0x64]
	add r1, r4, #0
	bl ov12_02250C40
	cmp r7, #1
	bne _0224BC1C
	ldr r1, _0224BC00 ; =0x0000213C
	b _0224BC04
	nop
_0224BBDC: .word 0x00003044
_0224BBE0: .word 0x00002DB0
_0224BBE4: .word 0x0000215C
_0224BBE8: .word 0x00002DAC
_0224BBEC: .word 0x000030E4
_0224BBF0: .word 0x00002144
_0224BBF4: .word 0x000030F4
_0224BBF8: .word 0x00002D8C
_0224BBFC: .word 0x0000011A
_0224BC00: .word 0x0000213C
_0224BC04:
	mov r0, #2
	ldr r2, [r4, r1]
	orr r0, r2
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x30
	ldr r2, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x1e
	orr r0, r2
	add r1, #0x30
	str r0, [r4, r1]
_0224BC1C:
	cmp r7, #3
	beq _0224BC26
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224BC26:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224B528

	thumb_func_start ov12_0224BC2C
ov12_0224BC2C: ; 0x0224BC2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r5, #0
	ldr r7, _0224BC9C ; =0x0000216C
	mov r4, #0
	add r6, #0x54
_0224BC38:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _0224BC44
	cmp r0, #1
	beq _0224BC84
	b _0224BC8A
_0224BC44:
	ldr r1, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	add r0, r5, #0
	bl ov12_02252EC8
	add r2, r0, #0
	beq _0224BC5C
	ldr r0, _0224BC9C ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _0224BCA0 ; =0x001FD849
	tst r0, r1
	beq _0224BC60
_0224BC5C:
	cmp r2, #0xb5
	bne _0224BC7C
_0224BC60:
	add r0, r5, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r5, #8]
	mov r4, #1
	str r0, [r5, #0xc]
	mov r0, #0x16
	str r0, [r5, #8]
	mov r0, #2
	ldr r1, [r5, r7]
	lsl r0, r0, #0x1e
	orr r0, r1
	str r0, [r5, r7]
_0224BC7C:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _0224BC8A
_0224BC84:
	mov r0, #0
	str r0, [r5, #0x54]
	mov r4, #2
_0224BC8A:
	cmp r4, #0
	beq _0224BC38
	cmp r4, #2
	beq _0224BC96
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224BC96:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224BC9C: .word 0x0000216C
_0224BCA0: .word 0x001FD849
	thumb_func_end ov12_0224BC2C

	thumb_func_start ov12_0224BCA4
ov12_0224BCA4: ; 0x0224BCA4
	push {r4, lr}
	add r4, r1, #0
	ldr r2, _0224BCC0 ; =0x00000116
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	nop
_0224BCC0: .word 0x00000116
	thumb_func_end ov12_0224BCA4

	thumb_func_start ov12_0224BCC4
ov12_0224BCC4: ; 0x0224BCC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #8]
	bl ov12_0223A7E0
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _0224BCE2
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224BCE2:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	ldr r0, [sp, #0x38]
	ldr r2, _0224BFF0 ; =0x00002D5E
	lsl r0, r0, #4
	str r0, [sp, #0x10]
	add r1, r5, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	add r1, r6, #0
	str r0, [sp, #0x18]
	mov r0, #0xc0
	mul r1, r0
	str r1, [sp, #0xc]
	add r1, r5, r1
	ldrsb r1, [r1, r2]
	sub r1, r1, #6
	lsl r1, r1, #0x18
	asr r7, r1, #0x18
	ldr r1, [sp, #8]
	mul r0, r1
	str r0, [sp, #0x14]
	add r1, r5, r0
	add r0, r2, #1
	ldrsb r1, [r1, r0]
	mov r0, #6
	sub r0, r0, r1
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0x56
	bne _0224BD32
	lsl r0, r7, #0x19
	asr r7, r0, #0x18
_0224BD32:
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0x56
	bl ov12_02252834
	cmp r0, #1
	bne _0224BD46
	lsl r0, r4, #0x19
	asr r4, r0, #0x18
_0224BD46:
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0x6d
	bl ov12_02252834
	cmp r0, #1
	bne _0224BD58
	mov r7, #0
_0224BD58:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0x6d
	bne _0224BD66
	mov r4, #0
_0224BD66:
	ldr r0, _0224BFF4 ; =0x00002DB0
	ldr r1, [sp, #0x14]
	add r2, r5, r0
	str r2, [sp, #0x1c]
	ldr r1, [r2, r1]
	mov r2, #2
	lsl r2, r2, #0x1c
	tst r1, r2
	bne _0224BD86
	ldr r1, [sp, #0x14]
	add r0, #0x10
	add r1, r5, r1
	ldr r1, [r1, r0]
	lsr r0, r2, #7
	tst r0, r1
	beq _0224BD8C
_0224BD86:
	cmp r4, #0
	bge _0224BD8C
	mov r4, #0
_0224BD8C:
	add r0, r4, #6
	add r0, r0, r7
	lsl r0, r0, #0x18
	asr r7, r0, #0x18
	bpl _0224BD98
	mov r7, #0
_0224BD98:
	cmp r7, #0xc
	ble _0224BD9E
	mov r7, #0xc
_0224BD9E:
	ldr r0, _0224BFF8 ; =0x000003E3
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	ldrb r4, [r1, r0]
	cmp r4, #0
	bne _0224BDB0
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224BDB0:
	ldr r0, _0224BFFC ; =0x0000213C
	mov r1, #0x20
	ldr r0, [r5, r0]
	add r2, r0, #0
	tst r2, r1
	beq _0224BDC2
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224BDC2:
	lsl r1, r1, #5
	tst r0, r1
	beq _0224BDCE
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224BDCE:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224BE10
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224BE10
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224BE10
	ldr r0, [sp, #0x10]
	add r1, r5, r0
	ldr r0, _0224C000 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x98
	bne _0224BE10
	mov r4, #0x32
_0224BE10:
	ldr r0, _0224C004 ; =0x0226CA74
	lsl r1, r7, #1
	ldrb r0, [r0, r1]
	ldr r2, _0224C008 ; =0x0226CA75
	ldrb r1, [r2, r1]
	mul r0, r4
	bl sub_020F2BA4
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0xe
	bne _0224BE3E
	mov r0, #0x82
	mul r0, r4
	mov r1, #0x64
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BE3E:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224BED6
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224BED6
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0xc
	tst r0, r1
	beq _0224BE90
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #8
	bl ov12_02252834
	cmp r0, #1
	bne _0224BE90
	mov r0, #0x50
	mul r0, r4
	mov r1, #0x64
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BE90:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0xc0
	tst r0, r1
	beq _0224BEBA
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0x51
	bl ov12_02252834
	cmp r0, #1
	bne _0224BEBA
	mov r0, #0x50
	mul r0, r4
	mov r1, #0x64
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BEBA:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r1
	beq _0224BED6
	mov r0, #6
	mul r0, r4
	mov r1, #0xa
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BED6:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0x37
	bne _0224BEF6
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0224BEF6
	mov r0, #0x50
	mul r0, r4
	mov r1, #0x64
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BEF6:
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0x4d
	bl ov12_02252834
	cmp r0, #1
	bne _0224BF20
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _0224BF20
	mov r0, #0x32
	mul r0, r4
	mov r1, #0x64
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BF20:
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02255830
	add r7, r0, #0
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	cmp r7, #0x30
	bne _0224BF46
	mov r1, #0x64
	sub r0, r1, r0
	mul r0, r4
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BF46:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02255830
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_02255844
	add r6, r0, #0
	cmp r7, #0x5d
	bne _0224BF6E
	add r0, #0x64
	mul r0, r4
	mov r1, #0x64
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BF6E:
	cmp r7, #0x68
	bne _0224BF8E
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_0225561C
	cmp r0, #1
	bne _0224BF8E
	add r6, #0x64
	add r0, r4, #0
	mul r0, r6
	mov r1, #0x64
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BF8E:
	ldr r0, _0224C00C ; =0x00002DCC
	ldr r1, [sp, #0xc]
	add r0, r5, r0
	ldr r2, [r0, r1]
	lsl r1, r2, #4
	lsr r1, r1, #0x1f
	beq _0224BFB2
	ldr r1, _0224C010 ; =0xF7FFFFFF
	and r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	mov r0, #0x78
	mul r0, r4
	mov r1, #0x64
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BFB2:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0224BFCE
	mov r0, #0xa
	mul r0, r4
	mov r1, #6
	bl sub_020F2998
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0224BFCE:
	ldr r0, [sp, #4]
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	add r0, r1, #1
	cmp r0, r4
	ble _0224BFEA
	ldr r1, _0224C014 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	orr r0, r2
	str r0, [r5, r1]
_0224BFEA:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224BFF0: .word 0x00002D5E
_0224BFF4: .word 0x00002DB0
_0224BFF8: .word 0x000003E3
_0224BFFC: .word 0x0000213C
_0224C000: .word 0x000003DE
_0224C004: .word 0x0226CA74
_0224C008: .word 0x0226CA75
_0224C00C: .word 0x00002DCC
_0224C010: .word 0xF7FFFFFF
_0224C014: .word 0x0000216C
	thumb_func_end ov12_0224BCC4

	thumb_func_start ov12_0224C018
ov12_0224C018: ; 0x0224C018
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _0224C1F0 ; =0x0000213C
	add r5, r1, #0
	ldr r1, [r5, r0]
	mov r0, #0x20
	add r7, r2, #0
	add r4, r3, #0
	ldr r6, [sp, #0x20]
	tst r0, r1
	beq _0224C036
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C036:
	lsl r0, r4, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0224C09A
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _0224C1F4 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #2
	tst r0, r1
	beq _0224C09A
	cmp r6, #0xae
	bne _0224C066
	lsl r1, r6, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl ov12_022526D0
	cmp r0, #1
	bne _0224C09A
_0224C066:
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022525AC
	cmp r0, #0
	beq _0224C07E
	ldr r0, _0224C1F0 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r1
	beq _0224C09A
_0224C07E:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	bl ov12_02250CA0
	ldr r1, _0224C1F8 ; =0x0000216C
	mov r0, #2
	ldr r2, [r5, r1]
	lsl r0, r0, #0xe
	orr r0, r2
	str r0, [r5, r1]
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C09A:
	ldr r0, _0224C1F0 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	bne _0224C0EC
	mov r0, #0xc0
	mul r0, r4
	add r3, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r3, r0]
	mov r1, #0x18
	tst r1, r2
	beq _0224C0C4
	add r0, #0xc
	ldr r0, [r3, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r7, r0
	beq _0224C0DC
_0224C0C4:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022527CC
	cmp r0, #0x63
	beq _0224C0DC
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x63
	bne _0224C0EC
_0224C0DC:
	ldr r1, _0224C1F8 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	add sp, #8
	bic r2, r0
	str r2, [r5, r1]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C0EC:
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224C15A
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224C15A
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	beq _0224C136
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _0224C1FC ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x98
	bne _0224C136
	ldr r1, _0224C1F8 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	str r2, [r5, r1]
_0224C136:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0xc0
	tst r0, r1
	beq _0224C15A
	lsl r0, r6, #4
	add r2, r5, r0
	ldr r0, _0224C1FC ; =0x000003DE
	add r1, #0x44
	ldrh r0, [r2, r0]
	cmp r0, r1
	bne _0224C15A
	ldr r1, _0224C1F8 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	str r2, [r5, r1]
_0224C15A:
	ldr r1, _0224C1F8 ; =0x0000216C
	mov r2, #1
	ldr r0, [r5, r1]
	lsl r2, r2, #0xa
	tst r0, r2
	bne _0224C1EA
	ldr r0, _0224C200 ; =0x00003044
	sub r2, #0x1a
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r0, r5, r0
	ldrh r0, [r0, r2]
	cmp r0, #0x80
	beq _0224C1EA
	sub r1, #0x30
	ldr r0, [r5, r1]
	mov r1, #4
	tst r1, r0
	bne _0224C192
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	mov r1, #0x40
	tst r1, r2
	bne _0224C1DE
_0224C192:
	mov r2, #2
	lsl r2, r2, #0x12
	add r1, r0, #0
	tst r1, r2
	bne _0224C1AE
	mov r1, #0xc0
	mul r1, r4
	add r3, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r3, [r3, r1]
	lsl r1, r2, #0xa
	tst r1, r3
	bne _0224C1DE
_0224C1AE:
	mov r1, #8
	tst r1, r0
	bne _0224C1C6
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	mov r1, #0xb7
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	mov r1, #0x80
	tst r1, r2
	bne _0224C1DE
_0224C1C6:
	mov r1, #0x10
	tst r0, r1
	bne _0224C1EA
	mov r0, #0xc0
	mul r0, r4
	add r2, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r2, r0]
	lsl r0, r1, #0xe
	tst r0, r2
	beq _0224C1EA
_0224C1DE:
	ldr r1, _0224C1F8 ; =0x0000216C
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x10
	orr r0, r2
	str r0, [r5, r1]
_0224C1EA:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224C1F0: .word 0x0000213C
_0224C1F4: .word 0x000003E9
_0224C1F8: .word 0x0000216C
_0224C1FC: .word 0x000003DE
_0224C200: .word 0x00003044
	thumb_func_end ov12_0224C018

	thumb_func_start ov12_0224C204
ov12_0224C204: ; 0x0224C204
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	bl ov12_0223A7F0
	add r2, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0xff
	bne _0224C218
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C218:
	ldr r6, _0224C354 ; =0x0000216C
	ldr r1, _0224C358 ; =0x801FDA49
	ldr r3, [r4, r6]
	add r7, r3, #0
	and r7, r1
	bne _0224C2AA
	mov r1, #0x75
	lsl r1, r1, #2
	lsl r0, r0, #6
	add r5, r4, r1
	ldr r3, [r5, r0]
	mov ip, r0
	lsl r0, r3, #0x1b
	lsr r0, r0, #0x1f
	beq _0224C2AA
	ldr r0, _0224C35C ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224C360 ; =0x000003E9
	ldrb r0, [r1, r0]
	mov r1, #4
	tst r0, r1
	beq _0224C2AA
	mov r0, #0x10
	bic r3, r0
	mov r0, ip
	str r3, [r5, r0]
	ldr r2, [r4, #0x64]
	mov r0, #0
	lsl r2, r2, #1
	add r3, r4, r2
	ldr r2, _0224C35C ; =0x00003044
	add r2, #0x18
	strh r0, [r3, r2]
	ldr r2, [r4, #0x64]
	ldr r0, _0224C35C ; =0x00003044
	lsl r2, r2, #1
	sub r0, r0, #4
	add r3, r4, r2
	ldr r2, _0224C35C ; =0x00003044
	ldr r0, [r4, r0]
	add r2, #0x38
	strh r0, [r3, r2]
	ldr r0, _0224C35C ; =0x00003044
	sub r0, r0, #4
	ldr r2, [r4, r0]
	ldr r0, _0224C35C ; =0x00003044
	add r0, r0, #4
	str r2, [r4, r0]
	add r0, r6, #0
	sub r0, #0x30
	ldr r2, [r4, r0]
	lsl r0, r1, #0x12
	orr r0, r2
	sub r6, #0x30
	str r0, [r4, r6]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x8b
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4, #0x64]
	add r0, r4, #0
	bl ov12_02258180
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224C2AA:
	mov r1, #0
	cmp r2, #0
	ble _0224C350
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
_0224C2B6:
	ldr r3, _0224C364 ; =0x000021EC
	add r5, r4, r1
	ldrb r5, [r5, r3]
	cmp r7, #0
	bne _0224C34A
	lsl r3, r5, #6
	str r3, [sp]
	ldr r3, [r0, r3]
	lsl r3, r3, #0x1a
	lsr r3, r3, #0x1f
	beq _0224C34A
	ldr r3, _0224C35C ; =0x00003044
	ldr r3, [r4, r3]
	lsl r3, r3, #4
	add r6, r4, r3
	ldr r3, _0224C360 ; =0x000003E9
	ldrb r6, [r6, r3]
	mov r3, #8
	tst r3, r6
	beq _0224C34A
	mov r1, #0x46
	lsl r1, r1, #2
	str r5, [r4, r1]
	ldr r1, [sp]
	mov r7, #1
	ldr r2, [r0, r1]
	mov r1, #0x20
	bic r2, r1
	ldr r1, [sp]
	lsl r7, r7, #0x14
	str r2, [r0, r1]
	ldr r2, _0224C368 ; =0x0000213C
	ldr r0, [r4, r2]
	tst r0, r7
	bne _0224C32A
	ldr r1, [r4, #0x64]
	mov r0, #0
	lsl r1, r1, #1
	add r3, r4, r1
	ldr r1, _0224C36C ; =0x0000305C
	strh r0, [r3, r1]
	add r0, r1, #0
	sub r0, #0x1c
	ldr r6, [r4, r0]
	ldr r0, [r4, #0x64]
	lsl r0, r0, #1
	add r3, r4, r0
	add r0, r1, #0
	add r0, #0x20
	strh r6, [r3, r0]
	add r0, r1, #0
	sub r0, #0x1c
	ldr r0, [r4, r0]
	sub r1, #0x14
	str r0, [r4, r1]
	ldr r0, [r4, r2]
	orr r0, r7
	str r0, [r4, r2]
_0224C32A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x92
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add r1, r5, #0
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r2, [r4, #0x64]
	add r0, r4, #0
	bl ov12_02258180
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224C34A:
	add r1, r1, #1
	cmp r1, r2
	blt _0224C2B6
_0224C350:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224C354: .word 0x0000216C
_0224C358: .word 0x801FDA49
_0224C35C: .word 0x00003044
_0224C360: .word 0x000003E9
_0224C364: .word 0x000021EC
_0224C368: .word 0x0000213C
_0224C36C: .word 0x0000305C
	thumb_func_end ov12_0224C204

	thumb_func_start ov12_0224C370
ov12_0224C370: ; 0x0224C370
	push {r4, lr}
	add r4, r1, #0
	bl ov12_0223CF68
	cmp r0, #1
	bne _0224C388
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0224C388:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0224C370

	thumb_func_start ov12_0224C38C
ov12_0224C38C: ; 0x0224C38C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x48]
	add r5, r0, #0
	cmp r2, #6
	bhi _0224C482
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224C3A4: ; jump table
	.short _0224C3B2 - _0224C3A4 - 2 ; case 0
	.short _0224C3BE - _0224C3A4 - 2 ; case 1
	.short _0224C3D6 - _0224C3A4 - 2 ; case 2
	.short _0224C422 - _0224C3A4 - 2 ; case 3
	.short _0224C43E - _0224C3A4 - 2 ; case 4
	.short _0224C450 - _0224C3A4 - 2 ; case 5
	.short _0224C46C - _0224C3A4 - 2 ; case 6
_0224C3B2:
	bl ov12_0224BCA4
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_0224C3BE:
	ldr r2, _0224C4C8 ; =0x00002184
	ldr r3, [r4, r2]
	mov r2, #4
	tst r2, r3
	bne _0224C3D0
	bl ov12_0224B528
	cmp r0, #1
	beq _0224C4C4
_0224C3D0:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224C3D6:
	ldr r0, _0224C4C8 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	bne _0224C41C
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0
	bl ov12_0224AED0
	cmp r0, #0
	beq _0224C41C
	cmp r0, #1
	beq _0224C3FC
	cmp r0, #2
	beq _0224C402
	cmp r0, #3
	beq _0224C408
	b _0224C40C
_0224C3FC:
	mov r0, #0x27
	str r0, [r4, #0xc]
	b _0224C40C
_0224C402:
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	b _0224C40C
_0224C408:
	mov r0, #0x22
	str r0, [r4, #0xc]
_0224C40C:
	mov r0, #0x16
	str r0, [r4, #8]
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	pop {r3, r4, r5, pc}
_0224C41C:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224C422:
	ldr r0, _0224C4C8 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #8
	tst r0, r1
	bne _0224C438
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224B1FC
	cmp r0, #1
	beq _0224C4C4
_0224C438:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224C43E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224B398
	cmp r0, #1
	beq _0224C4C4
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224C450:
	ldr r0, _0224C4C8 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #0x80
	tst r0, r1
	bne _0224C466
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224C204
	cmp r0, #1
	beq _0224C4C4
_0224C466:
	ldr r0, [r4, #0x48]
	add r0, r0, #1
	str r0, [r4, #0x48]
_0224C46C:
	ldr r3, _0224C4CC ; =0x00003044
	ldr r2, [r4, #0x64]
	ldr r3, [r4, r3]
	add r0, r5, #0
	lsl r3, r3, #0x10
	add r1, r4, #0
	lsr r3, r3, #0x10
	bl ov12_02250A18
	mov r0, #0
	str r0, [r4, #0x48]
_0224C482:
	ldr r1, _0224C4D0 ; =0x0000216C
	ldr r0, _0224C4D4 ; =0x801FDA49
	ldr r2, [r4, r1]
	tst r0, r2
	beq _0224C492
	mov r0, #0x1a
	str r0, [r4, #8]
	b _0224C4BC
_0224C492:
	add r0, r1, #0
	sub r0, #0x2c
	ldr r2, [r4, r0]
	mov r0, #0x40
	orr r0, r2
	sub r1, #0x2c
	str r0, [r4, r1]
	ldr r2, _0224C4CC ; =0x00003044
	add r0, r4, #0
	ldr r2, [r4, r2]
	mov r1, #0
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x18
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252E30
_0224C4BC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022565E0
_0224C4C4:
	pop {r3, r4, r5, pc}
	nop
_0224C4C8: .word 0x00002184
_0224C4CC: .word 0x00003044
_0224C4D0: .word 0x0000216C
_0224C4D4: .word 0x801FDA49
	thumb_func_end ov12_0224C38C

	thumb_func_start ov12_0224C4D8
ov12_0224C4D8: ; 0x0224C4D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x4c]
	add r5, r0, #0
	cmp r2, #6
	bhi _0224C5B8
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0224C4F0: ; jump table
	.short _0224C4FE - _0224C4F0 - 2 ; case 0
	.short _0224C50A - _0224C4F0 - 2 ; case 1
	.short _0224C51C - _0224C4F0 - 2 ; case 2
	.short _0224C546 - _0224C4F0 - 2 ; case 3
	.short _0224C570 - _0224C4F0 - 2 ; case 4
	.short _0224C592 - _0224C4F0 - 2 ; case 5
	.short _0224C5B4 - _0224C4F0 - 2 ; case 6
_0224C4FE:
	add r2, r2, #1
	str r2, [r4, #0x4c]
	bl ov12_0224B398
	cmp r0, #1
	beq _0224C5BC
_0224C50A:
	ldr r0, [r4, #0x4c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x4c]
	add r0, r5, #0
	bl ov12_02250BBC
	cmp r0, #1
	beq _0224C5BC
_0224C51C:
	ldr r0, _0224C5C0 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #0x20
	tst r0, r1
	bne _0224C540
	ldr r3, [r4, #0x6c]
	cmp r3, #0xff
	beq _0224C540
	ldr r0, _0224C5C4 ; =0x00003044
	add r1, r4, #0
	ldr r0, [r4, r0]
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0224BCC4
	cmp r0, #1
	beq _0224C5BC
_0224C540:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
_0224C546:
	ldr r0, _0224C5C0 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #0x40
	tst r0, r1
	bne _0224C56A
	ldr r3, [r4, #0x6c]
	cmp r3, #0xff
	beq _0224C56A
	ldr r0, _0224C5C4 ; =0x00003044
	add r1, r4, #0
	ldr r0, [r4, r0]
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0224C018
	cmp r0, #1
	beq _0224C5BC
_0224C56A:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
_0224C570:
	ldr r0, _0224C5C0 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	bne _0224C58C
	ldr r0, [r4, #0x6c]
	cmp r0, #0xff
	beq _0224C58C
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224B498
	cmp r0, #1
	beq _0224C5BC
_0224C58C:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
_0224C592:
	ldr r0, _0224C5C0 ; =0x00002184
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0224C5AE
	ldr r0, [r4, #0x6c]
	cmp r0, #0xff
	beq _0224C5AE
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224BC2C
	cmp r0, #1
	beq _0224C5BC
_0224C5AE:
	ldr r0, [r4, #0x4c]
	add r0, r0, #1
	str r0, [r4, #0x4c]
_0224C5B4:
	mov r0, #0
	str r0, [r4, #0x4c]
_0224C5B8:
	mov r0, #0x19
	str r0, [r4, #8]
_0224C5BC:
	pop {r3, r4, r5, pc}
	nop
_0224C5C0: .word 0x00002184
_0224C5C4: .word 0x00003044
	thumb_func_end ov12_0224C4D8

	thumb_func_start ov12_0224C5C8
ov12_0224C5C8: ; 0x0224C5C8
	push {r3, r4, lr}
	sub sp, #4
	add r2, sp, #0
	add r4, r1, #0
	bl ov12_022503EC
	cmp r0, #1
	bne _0224C5EE
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x1a
	add sp, #4
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_0224C5EE:
	mov r0, #0x1a
	str r0, [r4, #8]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov12_0224C5C8

	thumb_func_start ov12_0224C5F8
ov12_0224C5F8: ; 0x0224C5F8
	push {r4, lr}
	ldr r0, _0224C670 ; =0x0000216C
	add r4, r1, #0
	ldr r1, [r4, r0]
	mov r2, #2
	lsl r2, r2, #0x1e
	add r3, r1, #0
	tst r3, r2
	beq _0224C610
	mov r0, #0x23
	str r0, [r4, #8]
	pop {r4, pc}
_0224C610:
	lsr r2, r2, #0x16
	tst r2, r1
	beq _0224C62A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x2a
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x27
	str r0, [r4, #0xc]
	pop {r4, pc}
_0224C62A:
	add r2, r0, #0
	add r2, #0x14
	ldr r2, [r4, r2]
	cmp r2, #0
	beq _0224C650
	mov r3, #1
	add r2, r1, #0
	tst r2, r3
	beq _0224C650
	mov r2, #1
	bic r1, r2
	str r1, [r4, r0]
	ldr r2, [r4, r0]
	lsl r1, r3, #0xe
	orr r1, r2
	str r1, [r4, r0]
	mov r0, #0x1d
	str r0, [r4, #8]
	pop {r4, pc}
_0224C650:
	ldr r0, _0224C674 ; =0x001FD849
	tst r0, r1
	beq _0224C66A
	add r0, r4, #0
	mov r1, #1
	mov r2, #7
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x22
	str r0, [r4, #0xc]
	pop {r4, pc}
_0224C66A:
	mov r0, #0x1b
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
_0224C670: .word 0x0000216C
_0224C674: .word 0x001FD849
	thumb_func_end ov12_0224C5F8

	thumb_func_start ov12_0224C678
ov12_0224C678: ; 0x0224C678
	push {r4, lr}
	add r4, r1, #0
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x1c
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end ov12_0224C678

	thumb_func_start ov12_0224C690
ov12_0224C690: ; 0x0224C690
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r2, _0224C9BC ; =0x0000216C
	add r4, r1, #0
	ldr r1, [r4, r2]
	add r7, r0, #0
	mov r0, #0x20
	tst r0, r1
	beq _0224C6B8
	ldr r0, [r4, #0x6c]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldr r0, _0224C9C0 ; =0x00002D90
	add r3, r4, r3
	ldr r0, [r3, r0]
	sub r1, #0xc1
	mul r1, r0
	sub r2, #0x28
	str r1, [r4, r2]
_0224C6B8:
	ldr r0, _0224C9C4 ; =0x00002144
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0224C6C2
	b _0224CA90
_0224C6C2:
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	bl ov12_02255830
	str r0, [sp, #4]
	ldr r1, [r4, #0x6c]
	add r0, r4, #0
	mov r2, #0
	bl ov12_02255844
	str r0, [sp]
	ldr r0, _0224C9C4 ; =0x00002144
	ldr r0, [r4, r0]
	cmp r0, #0
	blt _0224C6E4
	bl GF_AssertFail
_0224C6E4:
	ldr r1, [r4, #0x64]
	add r0, r7, #0
	bl ov12_0223AB1C
	add r5, r0, #0
	ldr r1, [r4, #0x6c]
	add r0, r7, #0
	bl ov12_0223AB1C
	cmp r5, r0
	bne _0224C706
	ldr r1, [r4, #0x64]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0x62
	bl ov12_02263F0C
_0224C706:
	ldr r0, [r4, #0x6c]
	ldr r2, [r4, #0x64]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0224C9C8 ; =0x000030F4
	str r2, [r1, r0]
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	add r6, r1, #0
	mul r6, r0
	mov r2, #1
	ldr r1, _0224C9CC ; =0x00002DB0
	add r5, r4, r6
	ldr r3, [r5, r1]
	lsl r2, r2, #0x18
	tst r2, r3
	beq _0224C7E0
	ldr r2, _0224C9C4 ; =0x00002144
	ldr r2, [r4, r2]
	cmp r2, #0
	bge _0224C7E0
	add r3, r1, #0
	add r3, #0x30
	ldr r3, [r5, r3]
	add r5, r2, r3
	cmp r5, #0
	bgt _0224C782
	mov r2, #0xbb
	lsl r2, r2, #2
	add r6, r4, r2
	ldr r2, [r4, #0x64]
	mov r5, #0x1c
	mul r5, r2
	ldr r2, [r6, r5]
	sub r2, r2, r3
	str r2, [r6, r5]
	ldr r5, [r4, #0x6c]
	add r3, r4, r1
	add r2, r5, #0
	mul r2, r0
	ldr r6, [r3, r2]
	ldr r5, _0224C9D0 ; =0xFEFFFFFF
	and r5, r6
	str r5, [r3, r2]
	ldr r2, [r4, #0x6c]
	add r3, r2, #0
	add r2, r1, #0
	mul r3, r0
	add r3, r4, r3
	add r2, #0x30
	ldr r2, [r3, r2]
	add r1, #0x30
	neg r3, r2
	ldr r2, _0224C9C4 ; =0x00002144
	add r2, r2, #4
	str r3, [r4, r2]
	ldr r2, [r4, #0x6c]
	mov r3, #0
	mul r0, r2
	add r0, r4, r0
	str r3, [r0, r1]
	b _0224C7AE
_0224C782:
	mov r3, #0xbb
	lsl r3, r3, #2
	add r6, r4, r3
	ldr r3, [r4, #0x64]
	mov r5, #0x1c
	mul r5, r3
	ldr r3, [r6, r5]
	add r1, #0x30
	add r2, r3, r2
	str r2, [r6, r5]
	ldr r2, [r4, #0x6c]
	add r1, r4, r1
	mul r0, r2
	ldr r2, _0224C9C4 ; =0x00002144
	ldr r3, [r1, r0]
	ldr r2, [r4, r2]
	add r2, r3, r2
	str r2, [r1, r0]
	ldr r0, _0224C9C4 ; =0x00002144
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_0224C7AE:
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r2, [r4, #0x6c]
	add r1, r4, r0
	add r0, r2, #0
	mov r3, #0x1c
	mul r0, r3
	ldr r5, [r1, r0]
	mov r2, #8
	orr r2, r5
	str r2, [r1, r0]
	ldr r0, [r4, #0x6c]
	add r3, #0xfc
	str r0, [r4, r3]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x5a
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x1d
	add sp, #8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_0224C7E0:
	ldr r0, _0224C9D4 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224C9D8 ; =0x000003DE
	ldrh r0, [r1, r0]
	cmp r0, #0x65
	bne _0224C806
	ldr r0, _0224C9DC ; =0x00002D8C
	add r1, r4, r6
	ldr r2, [r1, r0]
	ldr r0, _0224C9C4 ; =0x00002144
	ldr r1, [r4, r0]
	add r1, r1, r2
	cmp r1, #0
	bgt _0224C806
	sub r1, r2, #1
	neg r1, r1
	str r1, [r4, r0]
_0224C806:
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	bne _0224C874
	ldr r0, [sp, #4]
	cmp r0, #0x41
	bne _0224C846
	add r0, r7, #0
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	ldr r0, [sp]
	cmp r1, r0
	bge _0224C846
	ldr r2, [r4, #0x6c]
	mov r0, #0xb5
	lsl r0, r0, #2
	mov r1, #0x1c
	add r3, r2, #0
	mul r3, r1
	add r0, r4, r0
	ldr r2, [r0, r3]
	mov r1, #0x20
	orr r1, r2
	str r1, [r0, r3]
_0224C846:
	ldr r0, [sp, #4]
	cmp r0, #0x67
	bne _0224C874
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r3, r4, r0
	ldr r0, _0224C9DC ; =0x00002D8C
	ldr r2, [r3, r0]
	add r0, r0, #4
	ldr r0, [r3, r0]
	cmp r2, r0
	bne _0224C874
	mov r0, #0xb5
	lsl r0, r0, #2
	add r3, r1, #0
	mov r2, #0x1c
	add r0, r4, r0
	mul r3, r2
	ldr r2, [r0, r3]
	mov r1, #0x20
	orr r1, r2
	str r1, [r0, r3]
_0224C874:
	ldr r0, [r4, #0x6c]
	lsl r1, r0, #6
	add r2, r4, r1
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1f
	bne _0224C898
	mov r1, #0x1c
	mul r1, r0
	add r2, r4, r1
	mov r1, #0xb5
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _0224C8E2
_0224C898:
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0224C9DC ; =0x00002D8C
	add r1, r4, r1
	ldr r2, _0224C9C4 ; =0x00002144
	ldr r1, [r1, r0]
	ldr r0, [r4, r2]
	add r0, r0, r1
	cmp r0, #0
	bgt _0224C8E2
	sub r0, r1, #1
	neg r0, r0
	str r0, [r4, r2]
	ldr r0, [r4, #0x6c]
	mov r1, #0x75
	lsl r0, r0, #6
	add r0, r4, r0
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	beq _0224C8D4
	add r0, r2, #0
	add r0, #0x28
	ldr r1, [r4, r0]
	mov r0, #0x80
	orr r0, r1
	add r2, #0x28
	str r0, [r4, r2]
	b _0224C8E2
_0224C8D4:
	add r0, r2, #0
	add r0, #0x28
	ldr r0, [r4, r0]
	sub r1, #0xd4
	orr r0, r1
	add r2, #0x28
	str r0, [r4, r2]
_0224C8E2:
	ldr r1, [r4, #0x6c]
	ldr r0, _0224C9E0 ; =0x000030E4
	lsl r3, r1, #2
	ldr r1, _0224C9C4 ; =0x00002144
	add r0, r4, r0
	ldr r2, [r0, r3]
	ldr r1, [r4, r1]
	add r1, r2, r1
	str r1, [r0, r3]
	ldr r0, _0224C9E4 ; =0x00002DBC
	ldr r1, [r4, #0x6c]
	add r3, r4, r0
	mov r0, #0xc0
	add r2, r1, #0
	mul r2, r0
	ldrb r0, [r3, r2]
	cmp r0, #0xff
	bhs _0224C90A
	add r0, r0, #1
	strb r0, [r3, r2]
_0224C90A:
	ldr r0, _0224C9D4 ; =0x00003044
	mov r1, #0x3e
	ldr r0, [r4, r0]
	lsl r1, r1, #4
	lsl r0, r0, #4
	add r0, r4, r0
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0224C978
	ldr r1, [r4, #0x6c]
	ldr r0, _0224C9C4 ; =0x00002144
	lsl r1, r1, #6
	add r2, r4, r1
	ldr r1, [r4, #0x64]
	ldr r0, [r4, r0]
	lsl r1, r1, #2
	add r2, r2, r1
	mov r1, #0x76
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0x6c]
	ldr r2, [r4, #0x64]
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, #0x10
	str r2, [r0, r1]
	ldr r0, [r4, #0x64]
	bl sub_020726C0
	mov r1, #0x7b
	ldr r3, [r4, #0x6c]
	lsl r1, r1, #2
	add r2, r4, r1
	lsl r5, r3, #6
	ldr r3, [r2, r5]
	orr r0, r3
	str r0, [r2, r5]
	ldr r2, [r4, #0x6c]
	ldr r0, _0224C9C4 ; =0x00002144
	add r5, r2, #0
	add r2, r1, #0
	mov r3, #0x1c
	mul r5, r3
	ldr r0, [r4, r0]
	add r5, r4, r5
	add r2, #0xec
	str r0, [r5, r2]
	ldr r0, [r4, #0x6c]
	ldr r5, [r4, #0x64]
	add r2, r0, #0
	mul r2, r3
	add r0, r4, r2
	add r1, #0xf0
	str r5, [r0, r1]
	b _0224CA06
_0224C978:
	cmp r0, #1
	bne _0224CA06
	ldr r2, [r4, #0x6c]
	ldr r0, _0224C9C4 ; =0x00002144
	lsl r2, r2, #6
	add r3, r4, r2
	ldr r2, [r4, #0x64]
	ldr r0, [r4, r0]
	lsl r2, r2, #2
	add r2, r3, r2
	lsr r1, r1, #1
	str r0, [r2, r1]
	ldr r0, [r4, #0x6c]
	ldr r2, [r4, #0x64]
	lsl r0, r0, #6
	add r1, r4, r0
	mov r0, #2
	lsl r0, r0, #8
	str r2, [r1, r0]
	ldr r0, [r4, #0x64]
	bl sub_020726C0
	mov r1, #0x81
	ldr r3, [r4, #0x6c]
	lsl r1, r1, #2
	add r2, r4, r1
	lsl r5, r3, #6
	ldr r3, [r2, r5]
	orr r0, r3
	str r0, [r2, r5]
	ldr r2, [r4, #0x6c]
	ldr r0, _0224C9C4 ; =0x00002144
	b _0224C9E8
	nop
_0224C9BC: .word 0x0000216C
_0224C9C0: .word 0x00002D90
_0224C9C4: .word 0x00002144
_0224C9C8: .word 0x000030F4
_0224C9CC: .word 0x00002DB0
_0224C9D0: .word 0xFEFFFFFF
_0224C9D4: .word 0x00003044
_0224C9D8: .word 0x000003DE
_0224C9DC: .word 0x00002D8C
_0224C9E0: .word 0x000030E4
_0224C9E4: .word 0x00002DBC
_0224C9E8:
	add r5, r2, #0
	add r2, r1, #0
	mov r3, #0x1c
	mul r5, r3
	ldr r0, [r4, r0]
	add r5, r4, r5
	add r2, #0xdc
	str r0, [r5, r2]
	ldr r0, [r4, #0x6c]
	ldr r5, [r4, #0x64]
	add r2, r0, #0
	mul r2, r3
	add r0, r4, r2
	add r1, #0xe0
	str r5, [r0, r1]
_0224CA06:
	ldr r1, [r4, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0224CA98 ; =0x00002D8C
	ldr r2, [r1, r0]
	ldr r0, _0224CA9C ; =0x00002144
	ldr r1, [r4, r0]
	add r0, r1, r2
	cmp r0, #0
	bgt _0224CA32
	mov r0, #0xbb
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r3
	ldr r3, [r1, r0]
	neg r2, r2
	add r2, r3, r2
	str r2, [r1, r0]
	b _0224CA46
_0224CA32:
	ldr r3, [r4, #0x64]
	mov r0, #0xbb
	lsl r0, r0, #2
	mov r2, #0x1c
	add r5, r3, #0
	add r0, r4, r0
	mul r5, r2
	ldr r2, [r0, r5]
	add r1, r2, r1
	str r1, [r0, r5]
_0224CA46:
	ldr r3, _0224CA9C ; =0x00002144
	ldr r0, [r4, #0x6c]
	mov r2, #0x82
	lsl r0, r0, #6
	ldr r1, [r4, r3]
	add r0, r4, r0
	lsl r2, r2, #2
	str r1, [r0, r2]
	ldr r1, [r4, #0x6c]
	ldr r0, [r4, #0x64]
	lsl r1, r1, #6
	add r5, r4, r1
	add r1, r2, #4
	str r0, [r5, r1]
	ldr r0, [r4, #0x6c]
	sub r2, #0xf0
	str r0, [r4, r2]
	ldr r0, [r4, r3]
	add r3, #0x18
	str r0, [r4, r3]
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x1d
	str r0, [r4, #0xc]
	ldr r1, _0224CAA0 ; =0x0000213C
	mov r0, #2
	ldr r2, [r4, r1]
	lsl r0, r0, #0xc
	orr r0, r2
	add sp, #8
	str r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0224CA90:
	mov r0, #0x1d
	str r0, [r4, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224CA98: .word 0x00002D8C
_0224CA9C: .word 0x00002144
_0224CAA0: .word 0x0000213C
	thumb_func_end ov12_0224C690

	thumb_func_start ov12_0224CAA4
ov12_0224CAA4: ; 0x0224CAA4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r2, [r4, #0x38]
	add r5, r0, #0
	cmp r2, #0
	beq _0224CAB8
	cmp r2, #1
	beq _0224CB96
	b _0224CC6C
_0224CAB8:
	ldr r2, [r4, #0x3c]
	cmp r2, #6
	bls _0224CAC0
	b _0224CC6C
_0224CAC0:
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0224CACC: ; jump table
	.short _0224CADA - _0224CACC - 2 ; case 0
	.short _0224CAE6 - _0224CACC - 2 ; case 1
	.short _0224CAF8 - _0224CACC - 2 ; case 2
	.short _0224CB2C - _0224CACC - 2 ; case 3
	.short _0224CB48 - _0224CACC - 2 ; case 4
	.short _0224CB56 - _0224CACC - 2 ; case 5
	.short _0224CB80 - _0224CACC - 2 ; case 6
_0224CADA:
	add r2, r2, #1
	str r2, [r4, #0x3c]
	bl ov12_0224DF7C
	cmp r0, #1
	beq _0224CB54
_0224CAE6:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov12_0224DF98
	cmp r0, #1
	beq _0224CB54
_0224CAF8:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	add r2, sp, #0xc
	bl ov12_02250490
	cmp r0, #1
	bne _0224CB2C
	ldr r0, _0224CC78 ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _0224CC7C ; =0x001FD849
	tst r0, r1
	bne _0224CB2C
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224CB2C:
	ldr r0, [r4, #0x3c]
	ldr r2, _0224CC80 ; =0x00000125
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224CB48:
	add r2, r2, #1
	str r2, [r4, #0x3c]
	bl ov12_0224DFEC
	cmp r0, #1
	bne _0224CB56
_0224CB54:
	b _0224CC74
_0224CB56:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	add r2, sp, #8
	bl ov12_02253E04
	cmp r0, #1
	bne _0224CB80
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224CB80:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov12_0224E078
	cmp r0, #1
	bne _0224CC6C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0224CB96:
	ldr r2, [r4, #0x3c]
	cmp r2, #6
	bhi _0224CC6C
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0224CBA8: ; jump table
	.short _0224CBB6 - _0224CBA8 - 2 ; case 0
	.short _0224CBC2 - _0224CBA8 - 2 ; case 1
	.short _0224CBF6 - _0224CBA8 - 2 ; case 2
	.short _0224CC12 - _0224CBA8 - 2 ; case 3
	.short _0224CC1E - _0224CBA8 - 2 ; case 4
	.short _0224CC48 - _0224CBA8 - 2 ; case 5
	.short _0224CC5A - _0224CBA8 - 2 ; case 6
_0224CBB6:
	add r2, r2, #1
	str r2, [r4, #0x3c]
	bl ov12_0224DF7C
	cmp r0, #1
	beq _0224CC74
_0224CBC2:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	add r2, sp, #4
	bl ov12_02250490
	cmp r0, #1
	bne _0224CBF6
	ldr r0, _0224CC78 ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _0224CC7C ; =0x001FD849
	tst r0, r1
	bne _0224CBF6
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224CBF6:
	ldr r0, [r4, #0x3c]
	ldr r2, _0224CC80 ; =0x00000125
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224CC12:
	add r2, r2, #1
	str r2, [r4, #0x3c]
	bl ov12_0224DFEC
	cmp r0, #1
	beq _0224CC74
_0224CC1E:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	add r2, sp, #0
	bl ov12_02253E04
	cmp r0, #1
	bne _0224CC48
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224CC48:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov12_0224DF98
	cmp r0, #1
	beq _0224CC74
_0224CC5A:
	ldr r0, [r4, #0x3c]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl ov12_0224E078
	cmp r0, #1
	beq _0224CC74
_0224CC6C:
	mov r0, #0
	str r0, [r4, #0x3c]
	mov r0, #0x1f
	str r0, [r4, #8]
_0224CC74:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224CC78: .word 0x0000216C
_0224CC7C: .word 0x001FD849
_0224CC80: .word 0x00000125
	thumb_func_end ov12_0224CAA4

	thumb_func_start ov12_0224CC84
ov12_0224CC84: ; 0x0224CC84
	bx lr
	.align 2, 0
	thumb_func_end ov12_0224CC84

	thumb_func_start ov12_0224CC88
ov12_0224CC88: ; 0x0224CC88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, [r4, #0x40]
	add r6, r0, #0
	cmp r1, #7
	bls _0224CC98
	b _0224CED2
_0224CC98:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224CCA4: ; jump table
	.short _0224CCB4 - _0224CCA4 - 2 ; case 0
	.short _0224CD2E - _0224CCA4 - 2 ; case 1
	.short _0224CD42 - _0224CCA4 - 2 ; case 2
	.short _0224CD68 - _0224CCA4 - 2 ; case 3
	.short _0224CD7C - _0224CCA4 - 2 ; case 4
	.short _0224CD96 - _0224CCA4 - 2 ; case 5
	.short _0224CDC0 - _0224CCA4 - 2 ; case 6
	.short _0224CE54 - _0224CCA4 - 2 ; case 7
_0224CCB4:
	mov r1, #0
	ldr r7, [r4, #0x44]
	str r1, [sp, #4]
	bl ov12_0223A7F0
	cmp r7, r0
	bge _0224CD24
	add r5, r4, #0
	add r5, #0x44
_0224CCC6:
	mov r0, #0xc0
	mul r0, r7
	mov r1, #0xb7
	add r0, r4, r0
	lsl r1, r1, #6
	ldr r2, [r0, r1]
	ldr r1, _0224CEE0 ; =0x200400C0
	tst r1, r2
	bne _0224CD0C
	ldr r1, _0224CEE4 ; =0x00002DC4
	ldr r2, [r0, r1]
	ldr r1, _0224CEE0 ; =0x200400C0
	tst r1, r2
	beq _0224CD0C
	ldr r1, _0224CEE4 ; =0x00002DC4
	ldr r2, [r0, r1]
	ldr r1, _0224CEE8 ; =0xDFFBFF3F
	and r2, r1
	ldr r1, _0224CEE4 ; =0x00002DC4
	str r2, [r0, r1]
	ldr r2, _0224CEEC ; =0x0000011F
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	mov r0, #0x46
	ldr r1, [r4, #0x44]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp, #4]
_0224CD0C:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224CD94
	ldr r7, [r4, #0x44]
	add r0, r6, #0
	bl ov12_0223A7F0
	cmp r7, r0
	blt _0224CCC6
_0224CD24:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x44]
_0224CD2E:
	ldr r0, [r4, #0x40]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x40]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl ov12_02254580
	cmp r0, #1
	beq _0224CD94
_0224CD42:
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_02253194
	add r2, r0, #0
	beq _0224CD62
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224CD62:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
_0224CD68:
	ldr r0, [r4, #0x40]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x40]
	ldr r2, [r4, #0x64]
	add r0, r6, #0
	bl ov12_0225471C
	cmp r0, #1
	beq _0224CD94
_0224CD7C:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	ldr r2, [r4, #0x6c]
	cmp r2, #0xff
	beq _0224CD96
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0225471C
	cmp r0, #1
	bne _0224CD96
_0224CD94:
	b _0224CEDC
_0224CD96:
	ldr r0, [r4, #0x40]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x40]
	add r0, r6, #0
	add r2, sp, #0xc
	bl ov12_02255634
	cmp r0, #1
	bne _0224CDC0
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224CDC0:
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x60
	bne _0224CDD0
	mov r2, #0
	b _0224CDE4
_0224CDD0:
	ldr r0, _0224CEF0 ; =0x00002160
	ldr r2, [r4, r0]
	cmp r2, #0
	bne _0224CDE4
	ldr r0, _0224CEF4 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224CEF8 ; =0x000003E2
	ldrb r2, [r1, r0]
_0224CDE4:
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	ldr r3, [r4, #0x6c]
	cmp r3, #0xff
	beq _0224CE54
	mov r0, #0xc0
	add r5, r3, #0
	mul r5, r0
	ldr r0, _0224CEFC ; =0x00002DAC
	add r1, r4, r5
	ldr r1, [r1, r0]
	mov r0, #0x20
	tst r1, r0
	beq _0224CE54
	ldr r1, _0224CF00 ; =0x0000216C
	lsl r0, r0, #9
	ldr r1, [r4, r1]
	tst r0, r1
	bne _0224CE54
	ldr r0, [r4, #0x64]
	cmp r3, r0
	beq _0224CE54
	mov r0, #0x1c
	mul r0, r3
	add r7, r4, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #0
	bne _0224CE2A
	add r0, #8
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0224CE54
_0224CE2A:
	ldr r0, _0224CF04 ; =0x00002D8C
	add r1, r4, r5
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224CE54
	cmp r2, #0xa
	bne _0224CE54
	mov r0, #0x46
	lsl r0, r0, #2
	str r3, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1d
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	add sp, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0224CE54:
	mov r0, #0
	str r0, [sp]
	ldr r7, [r4, #0x44]
	add r0, r6, #0
	bl ov12_0223A7F0
	cmp r7, r0
	bge _0224CEC2
	add r5, r4, #0
	add r5, #0x44
_0224CE68:
	ldr r0, _0224CF08 ; =0x000021EC
	add r1, r4, r7
	ldrb r7, [r1, r0]
	add r0, r7, #0
	bl sub_020726C0
	ldr r1, _0224CF0C ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	ldr r0, [r5]
	beq _0224CE84
	add r0, r0, #1
	str r0, [r5]
	b _0224CEB6
_0224CE84:
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, sp, #8
	bl ov12_02254E7C
	cmp r0, #1
	bne _0224CEB6
	mov r0, #0x46
	lsl r0, r0, #2
	str r7, [r4, r0]
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	str r0, [sp]
	b _0224CEC2
_0224CEB6:
	ldr r7, [r4, #0x44]
	add r0, r6, #0
	bl ov12_0223A7F0
	cmp r7, r0
	blt _0224CE68
_0224CEC2:
	ldr r0, [sp]
	cmp r0, #0
	bne _0224CED2
	ldr r0, [r4, #0x40]
	add r0, r0, #1
	str r0, [r4, #0x40]
	mov r0, #0
	str r0, [r4, #0x44]
_0224CED2:
	mov r0, #0
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	mov r0, #0x20
	str r0, [r4, #8]
_0224CEDC:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224CEE0: .word 0x200400C0
_0224CEE4: .word 0x00002DC4
_0224CEE8: .word 0xDFFBFF3F
_0224CEEC: .word 0x0000011F
_0224CEF0: .word 0x00002160
_0224CEF4: .word 0x00003044
_0224CEF8: .word 0x000003E2
_0224CEFC: .word 0x00002DAC
_0224CF00: .word 0x0000216C
_0224CF04: .word 0x00002D8C
_0224CF08: .word 0x000021EC
_0224CF0C: .word 0x00003108
	thumb_func_end ov12_0224CC88

	thumb_func_start ov12_0224CF10
ov12_0224CF10: ; 0x0224CF10
	bx lr
	.align 2, 0
	thumb_func_end ov12_0224CF10

	thumb_func_start ov12_0224CF14
ov12_0224CF14: ; 0x0224CF14
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0224D000 ; =0x0000217D
	add r4, r1, #0
	ldrb r2, [r4, r6]
	str r0, [sp]
	cmp r2, #0
	beq _0224CFFA
	ldr r3, [r4, #0x74]
	mov ip, r3
	cmp r3, #0xff
	bne _0224CFAC
	ldr r3, [r4, #0x64]
	mov r7, #0xc0
	add r5, r3, #0
	mul r5, r7
	ldr r3, _0224D004 ; =0x00002DAC
	add r5, r4, r5
	ldr r5, [r5, r3]
	mov r3, #7
	tst r3, r5
	bne _0224CFAC
	add r3, r6, #0
	sub r3, #0x11
	ldr r5, [r4, r3]
	mov r3, #1
	lsl r3, r3, #0xe
	tst r3, r5
	bne _0224CFAC
	sub r2, r6, #1
	ldrb r2, [r4, r2]
	sub r3, r2, #1
	sub r2, r6, #1
	strb r3, [r4, r2]
	ldrb r2, [r4, r2]
	cmp r2, #0
	beq _0224CF92
	mov r3, #1
	add r2, r6, #3
	str r3, [r4, r2]
	bl ov12_02252D14
	add r1, r6, #0
	sub r1, #0x41
	ldr r2, [r4, r1]
	ldr r0, _0224D008 ; =0xFFFFBFFF
	and r0, r2
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x4c
	ldr r0, [r4, r0]
	add r1, #0x48
	str r0, [r4, r1]
	ldr r2, _0224D00C ; =0x00003044
	add r0, r4, #0
	ldr r2, [r4, r2]
	mov r1, #0
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x18
	str r0, [r4, #0xc]
	b _0224CFF2
_0224CF92:
	ldrb r0, [r4, r6]
	add r7, #0x70
	mov r1, #1
	str r0, [r4, r7]
	add r0, r4, #0
	mov r2, #0x11
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x22
	str r0, [r4, #0xc]
	b _0224CFF2
_0224CFAC:
	mov r0, ip
	cmp r0, #0xff
	bne _0224CFC6
	ldr r0, [r4, #0x64]
	mov r1, #0xc0
	add r3, r0, #0
	mul r3, r1
	ldr r0, _0224D004 ; =0x00002DAC
	add r3, r4, r3
	ldr r3, [r3, r0]
	mov r0, #7
	tst r0, r3
	beq _0224CFD6
_0224CFC6:
	ldr r0, _0224D010 ; =0x0000217C
	ldrb r0, [r4, r0]
	sub r0, r2, r0
	add r1, r0, #1
	mov r0, #0x13
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0224CFE0
_0224CFD6:
	ldr r0, _0224D010 ; =0x0000217C
	add r1, #0x70
	ldrb r0, [r4, r0]
	sub r0, r2, r0
	str r0, [r4, r1]
_0224CFE0:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x11
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x22
	str r0, [r4, #0xc]
_0224CFF2:
	ldr r0, [sp]
	bl ov12_022642F0
	pop {r3, r4, r5, r6, r7, pc}
_0224CFFA:
	mov r0, #0x22
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224D000: .word 0x0000217D
_0224D004: .word 0x00002DAC
_0224D008: .word 0xFFFFBFFF
_0224D00C: .word 0x00003044
_0224D010: .word 0x0000217C
	thumb_func_end ov12_0224CF14

	thumb_func_start ov12_0224D014
ov12_0224D014: ; 0x0224D014
	push {r3, lr}
	ldr r0, _0224D038 ; =0x0000213C
	ldr r2, [r1, r0]
	mov r0, #0xf
	lsl r0, r0, #0x18
	tst r0, r2
	beq _0224D030
	add r0, r1, #0
	mov r1, #0x22
	add r2, r1, #0
	mov r3, #0
	bl ov12_0224DC74
	pop {r3, pc}
_0224D030:
	mov r0, #0x23
	str r0, [r1, #8]
	pop {r3, pc}
	nop
_0224D038: .word 0x0000213C
	thumb_func_end ov12_0224D014

	thumb_func_start ov12_0224D03C
ov12_0224D03C: ; 0x0224D03C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0x85
	lsl r1, r1, #6
	add r5, r0, #0
	ldr r2, [r4, r1]
	mov r0, #8
	tst r0, r2
	beq _0224D060
	mov r0, #8
	bic r2, r0
	str r2, [r4, r1]
	ldr r0, [r4, #0x64]
	str r0, [r4, #0x6c]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	str r0, [r4, #0x64]
_0224D060:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224DD74
	ldr r0, _0224D1C0 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224D1C4 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #4
	bne _0224D12C
	ldr r0, _0224D1C8 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	bne _0224D12C
	add r0, r5, #0
	bl ov12_0223A7F0
	ldr r1, _0224D1CC ; =0x0000217E
	ldrb r2, [r4, r1]
	cmp r2, r0
	bge _0224D12C
	mov r2, #0xd
	add r0, r1, #6
	str r2, [r4, r0]
	add r0, r5, #0
	bl ov12_0223A7F0
	ldr r1, [r4, #0x64]
	add r0, r5, #0
	bl ov12_0223A7E8
	bl ov12_02261258
	mov r1, #1
	add r7, r0, #0
	and r7, r1
_0224D0AE:
	ldr r1, _0224D1CC ; =0x0000217E
	ldr r0, _0224D1CC ; =0x0000217E
	ldrb r1, [r4, r1]
	ldrb r0, [r4, r0]
	add r2, r1, #1
	ldr r1, _0224D1CC ; =0x0000217E
	strb r2, [r4, r1]
	add r1, r4, r0
	ldr r0, _0224D1D0 ; =0x000021EC
	ldrb r6, [r1, r0]
	add r0, r6, #0
	bl sub_020726C0
	ldr r1, _0224D1D4 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _0224D116
	mov r0, #0xc0
	mul r0, r6
	add r1, r4, r0
	ldr r0, _0224D1D8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224D116
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_0223A7E8
	str r0, [sp]
	cmp r7, #0
	beq _0224D0F6
	bl ov12_02261258
	mov r1, #1
	tst r0, r1
	beq _0224D106
_0224D0F6:
	cmp r7, #0
	bne _0224D116
	ldr r0, [sp]
	bl ov12_02261258
	mov r1, #1
	tst r0, r1
	beq _0224D116
_0224D106:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252D14
	str r6, [r4, #0x6c]
	mov r0, #0x17
	str r0, [r4, #8]
	b _0224D124
_0224D116:
	add r0, r5, #0
	bl ov12_0223A7F0
	ldr r1, _0224D1CC ; =0x0000217E
	ldrb r1, [r4, r1]
	cmp r1, r0
	blt _0224D0AE
_0224D124:
	add r0, r5, #0
	bl ov12_022642F0
	pop {r3, r4, r5, r6, r7, pc}
_0224D12C:
	ldr r0, _0224D1C0 ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _0224D1C4 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #8
	bne _0224D1BA
	ldr r0, _0224D1C8 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	bne _0224D1BA
	add r0, r5, #0
	bl ov12_0223A7F0
	ldr r1, _0224D1CC ; =0x0000217E
	ldrb r2, [r4, r1]
	cmp r2, r0
	bge _0224D1BA
	mov r2, #0xd
	add r0, r1, #6
	str r2, [r4, r0]
	add r0, r5, #0
	bl ov12_0223A7F0
	ldr r7, _0224D1CC ; =0x0000217E
_0224D162:
	ldr r0, _0224D1CC ; =0x0000217E
	ldrb r1, [r4, r0]
	ldrb r0, [r4, r7]
	add r1, r4, r1
	add r0, r0, #1
	strb r0, [r4, r7]
	ldr r0, _0224D1D0 ; =0x000021EC
	ldrb r6, [r1, r0]
	add r0, r6, #0
	bl sub_020726C0
	ldr r1, _0224D1D4 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _0224D1A4
	mov r0, #0xc0
	mul r0, r6
	add r1, r4, r0
	ldr r0, _0224D1D8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224D1A4
	ldr r0, [r4, #0x64]
	cmp r6, r0
	beq _0224D1A4
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252D14
	str r6, [r4, #0x6c]
	mov r0, #0x17
	str r0, [r4, #8]
	b _0224D1B2
_0224D1A4:
	add r0, r5, #0
	bl ov12_0223A7F0
	ldr r1, _0224D1CC ; =0x0000217E
	ldrb r1, [r4, r1]
	cmp r1, r0
	blt _0224D162
_0224D1B2:
	add r0, r5, #0
	bl ov12_022642F0
	pop {r3, r4, r5, r6, r7, pc}
_0224D1BA:
	mov r0, #0x24
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224D1C0: .word 0x00003044
_0224D1C4: .word 0x000003E6
_0224D1C8: .word 0x0000213C
_0224D1CC: .word 0x0000217E
_0224D1D0: .word 0x000021EC
_0224D1D4: .word 0x00003108
_0224D1D8: .word 0x00002D8C
	thumb_func_end ov12_0224D03C

	thumb_func_start ov12_0224D1DC
ov12_0224D1DC: ; 0x0224D1DC
	push {r4, lr}
	ldr r0, _0224D218 ; =0x0000213C
	add r4, r1, #0
	ldr r1, [r4, r0]
	mov r0, #0xf
	lsl r0, r0, #0x1c
	and r0, r1
	beq _0224D212
	lsr r0, r0, #0x1c
	bl sub_020726E0
	str r0, [r4, #0x74]
	ldr r1, _0224D218 ; =0x0000213C
	ldr r0, _0224D21C ; =0x0FFFFFFF
	ldr r2, [r4, r1]
	and r0, r2
	str r0, [r4, r1]
	ldr r2, _0224D220 ; =0x00000115
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x25
	str r0, [r4, #0xc]
	pop {r4, pc}
_0224D212:
	mov r0, #0x25
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
_0224D218: .word 0x0000213C
_0224D21C: .word 0x0FFFFFFF
_0224D220: .word 0x00000115
	thumb_func_end ov12_0224D1DC

	thumb_func_start ov12_0224D224
ov12_0224D224: ; 0x0224D224
	push {r4, lr}
	add r4, r1, #0
	bl ov12_0224E1BC
	cmp r0, #1
	beq _0224D234
	mov r0, #0x27
	str r0, [r4, #8]
_0224D234:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0224D224

	thumb_func_start ov12_0224D238
ov12_0224D238: ; 0x0224D238
	bx lr
	.align 2, 0
	thumb_func_end ov12_0224D238

	thumb_func_start ov12_0224D23C
ov12_0224D23C: ; 0x0224D23C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x64]
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_02255830
	ldr r1, _0224D350 ; =0x0000213C
	lsl r0, r0, #0x18
	ldr r3, [r4, r1]
	mov r2, #0x20
	lsr r0, r0, #0x18
	tst r2, r3
	bne _0224D262
	add r1, r1, #4
	ldr r2, [r4, r1]
	mov r1, #4
	tst r1, r2
	beq _0224D2B6
_0224D262:
	cmp r0, #0x37
	beq _0224D26E
	cmp r0, #0x73
	beq _0224D26E
	cmp r0, #0x7d
	bne _0224D2A8
_0224D26E:
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0xa5
	beq _0224D2B6
	ldr r1, _0224D354 ; =0x00000171
	cmp r0, r1
	bne _0224D28A
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0224D2B6
_0224D28A:
	cmp r0, #0xe2
	bne _0224D29A
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	mov r1, #0x40
	tst r1, r2
	bne _0224D2B6
_0224D29A:
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _0224D358 ; =0x00002DF8
	strh r0, [r2, r1]
	b _0224D2B6
_0224D2A8:
	ldr r2, [r4, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r4, r1
	ldr r1, _0224D358 ; =0x00002DF8
	mov r0, #0
	strh r0, [r2, r1]
_0224D2B6:
	ldr r0, _0224D350 ; =0x0000213C
	mov r1, #1
	ldr r2, [r4, r0]
	lsl r1, r1, #0x14
	tst r1, r2
	bne _0224D31E
	add r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #4
	tst r0, r1
	beq _0224D2E4
	ldr r2, [r4, #0x64]
	ldr r1, _0224D35C ; =0x00003044
	lsl r2, r2, #1
	add r3, r4, r2
	add r2, r1, #0
	ldr r0, [r4, r1]
	add r2, #0x18
	strh r0, [r3, r2]
	sub r0, r1, #4
	ldr r2, [r4, r0]
	add r0, r1, #4
	b _0224D2F2
_0224D2E4:
	ldr r0, [r4, #0x64]
	mov r2, #0
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _0224D360 ; =0x0000305C
	strh r2, [r1, r0]
	sub r0, #0x14
_0224D2F2:
	str r2, [r4, r0]
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0224D312
	mov r0, #0xc1
	ldr r1, [r4, #0x64]
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	lsl r1, r1, #1
	add r1, r4, r1
	add r0, #0x3c
	strh r2, [r1, r0]
	b _0224D31E
_0224D312:
	ldr r0, [r4, #0x64]
	mov r2, #0
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _0224D364 ; =0x0000307C
	strh r2, [r1, r0]
_0224D31E:
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #4
	tst r0, r1
	beq _0224D33A
	mov r0, #0xc1
	ldr r1, [r4, #0x64]
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	lsl r1, r1, #1
	add r1, r4, r1
	add r0, #0x6c
	strh r2, [r1, r0]
_0224D33A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224DD74
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02256694
	mov r0, #0x28
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224D350: .word 0x0000213C
_0224D354: .word 0x00000171
_0224D358: .word 0x00002DF8
_0224D35C: .word 0x00003044
_0224D360: .word 0x0000305C
_0224D364: .word 0x0000307C
	thumb_func_end ov12_0224D23C

	thumb_func_start ov12_0224D368
ov12_0224D368: ; 0x0224D368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_0223A7E0
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _0224D3EA
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov12_022543A0
	cmp r0, #1
	beq _0224D440
	ldr r2, [r4, #0x6c]
	cmp r2, #0xff
	beq _0224D39E
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl ov12_022543A0
	cmp r0, #1
	beq _0224D440
_0224D39E:
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	bl ov12_0224DD18
	cmp r0, #1
	beq _0224D440
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224D7EC
	cmp r0, #1
	beq _0224D440
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02253194
	add r2, r0, #0
	beq _0224D3D6
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224D3D6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224E130
	cmp r0, #1
	beq _0224D440
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_0224DC0C
_0224D3EA:
	add r1, r4, #0
	add r1, #0xec
	ldr r1, [r1]
	mov r0, #0x28
	add r2, r4, r1
	ldr r1, _0224D444 ; =0x000021E8
	ldrb r2, [r2, r1]
	sub r1, #0x40
	lsl r2, r2, #4
	add r2, r4, r2
	str r0, [r2, r1]
	ldr r1, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r1
	add r1, r4, r0
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _0224D428
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02257EC0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02252D3C
	mov r1, #0
	b _0224D430
_0224D428:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	add r1, r0, #1
_0224D430:
	add r0, r4, #0
	add r0, #0xec
	str r1, [r0]
	add r0, r4, #0
	bl ov12_02250F44
	mov r0, #8
	str r0, [r4, #8]
_0224D440:
	pop {r3, r4, r5, pc}
	nop
_0224D444: .word 0x000021E8
	thumb_func_end ov12_0224D368

	thumb_func_start ov12_0224D448
ov12_0224D448: ; 0x0224D448
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov12_0224DC74
	cmp r0, #1
	beq _0224D460
	mov r0, #0x28
	str r0, [r4, #8]
_0224D460:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0224D448

	thumb_func_start ov12_0224D464
ov12_0224D464: ; 0x0224D464
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_0223BD14
	mov r1, #0x80
	tst r0, r1
	beq _0224D47A
	mov r0, #0x2c
	str r0, [r4, #8]
	b _0224D4E2
_0224D47A:
	add r0, r5, #0
	bl ov12_0223BD14
	cmp r0, #2
	beq _0224D48E
	add r0, r5, #0
	bl ov12_0223BD14
	cmp r0, #3
	bne _0224D4A2
_0224D48E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #5
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x2c
	str r0, [r4, #0xc]
	b _0224D4E2
_0224D4A2:
	add r0, r5, #0
	bl ov12_0223BD14
	cmp r0, #1
	bne _0224D4C0
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x2c
	str r0, [r4, #0xc]
	b _0224D4E2
_0224D4C0:
	add r0, r5, #0
	bl ov12_0223BD14
	cmp r0, #4
	bne _0224D4D4
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #0x2c
	str r0, [r4, #0xc]
	b _0224D4E2
_0224D4D4:
	add r0, r5, #0
	bl ov12_0223BD14
	cmp r0, #5
	bne _0224D4E2
	mov r0, #0x2c
	str r0, [r4, #8]
_0224D4E2:
	ldr r0, _0224D4EC ; =0x0000311F
	mov r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0224D4EC: .word 0x0000311F
	thumb_func_end ov12_0224D464

	thumb_func_start ov12_0224D4F0
ov12_0224D4F0: ; 0x0224D4F0
	push {r4, lr}
	add r4, r1, #0
	bl sub_0200FB5C
	cmp r0, #1
	bne _0224D500
	mov r0, #0x2c
	str r0, [r4, #8]
_0224D500:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0224D4F0

	thumb_func_start ov12_0224D504
ov12_0224D504: ; 0x0224D504
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov12_0223A7E0
	mov r1, #4
	add r4, r0, #0
	and r4, r1
	bne _0224D52A
	add r0, r6, #0
	mov r1, #0
	bl ov12_0223A7F4
	add r6, r0, #0
	bl sub_02071950
	add r0, r6, #0
	bl sub_02071ACC
_0224D52A:
	cmp r4, #0
	beq _0224D534
	mov r0, #0x16
	bl sub_020376EC
_0224D534:
	mov r0, #0x2d
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov12_0224D504

	thumb_func_start ov12_0224D53C
ov12_0224D53C: ; 0x0224D53C
	bx lr
	.align 2, 0
	thumb_func_end ov12_0224D53C

	thumb_func_start ov12_0224D540
ov12_0224D540: ; 0x0224D540
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #0x30]
	bl ov12_0223A7F0
	str r0, [sp, #0x28]
	ldr r0, [sp]
	bl ov12_0223A7E0
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bgt _0224D56C
	b _0224D75E
_0224D56C:
	ldr r0, [sp, #4]
	mov r1, #2
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	and r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	mov r1, #0x18
	and r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x24]
	mov r1, #0x10
	and r0, r1
	str r0, [sp, #0xc]
_0224D58A:
	mov r1, #0x4f
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r0, #1
	bic r2, r0
	ldr r0, [sp, #0x1c]
	str r2, [r0, r1]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0224D5A6
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0224D5B8
_0224D5A6:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0224D69E
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	bl ov12_0223AB1C
	cmp r0, #0
	bne _0224D69E
_0224D5B8:
	ldr r3, _0224D7DC ; =0x00002D8C
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _0224D5E0
	ldr r1, [sp, #0x2c]
	mov r2, #2
	add r4, r1, #0
	eor r4, r2
	mov r1, #0xc0
	add r5, r4, #0
	mul r5, r1
	ldr r1, [sp, #4]
	add r1, r1, r5
	ldr r1, [r1, r3]
	cmp r1, #0
	bne _0224D5E0
	ldr r1, [sp, #0x2c]
	tst r1, r2
	bne _0224D5E4
_0224D5E0:
	cmp r0, #0
	beq _0224D5E6
_0224D5E4:
	b _0224D744
_0224D5E6:
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	mov r7, #0
	bl ov12_0223A7F4
	add r6, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	bl ov12_0223A7E8
	add r0, r6, #0
	add r5, r7, #0
	bl sub_02074640
	cmp r0, #0
	ble _0224D65E
	ldr r0, [sp, #0x2c]
	mov r1, #2
	eor r1, r0
	ldr r0, [sp, #4]
	add r0, r0, r1
	str r0, [sp, #8]
_0224D612:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224D652
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224D7E0 ; =0x000001EE
	cmp r0, r1
	beq _0224D652
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224D652
	ldr r2, [sp, #8]
	ldr r1, _0224D7E4 ; =0x0000219C
	ldrb r1, [r2, r1]
	cmp r5, r1
	beq _0224D652
	add r7, r7, r0
_0224D652:
	add r0, r6, #0
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _0224D612
_0224D65E:
	cmp r7, #0
	bne _0224D682
	ldr r0, [sp, #0x2c]
	bl sub_020726C0
	ldr r2, _0224D7E8 ; =0x00003108
	ldr r1, [sp, #4]
	ldrb r1, [r1, r2]
	orr r1, r0
	ldr r0, [sp, #4]
	strb r1, [r0, r2]
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #6
	add r1, r1, r0
	ldr r0, _0224D7E4 ; =0x0000219C
	strb r2, [r1, r0]
	b _0224D744
_0224D682:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	str r1, [r0, #0xc]
	mov r1, #0x16
	str r1, [r0, #8]
	mov r1, #0x4f
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r0, #1
	orr r2, r0
	ldr r0, [sp, #0x1c]
	str r2, [r0, r1]
	b _0224D744
_0224D69E:
	ldr r1, _0224D7DC ; =0x00002D8C
	ldr r0, [sp, #0x18]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0224D744
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	mov r7, #0
	bl ov12_0223A7F4
	add r6, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x2c]
	bl ov12_0223A7E8
	add r0, r6, #0
	add r5, r7, #0
	bl sub_02074640
	cmp r0, #0
	ble _0224D706
_0224D6C8:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r4, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224D6FA
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224D7E0 ; =0x000001EE
	cmp r0, r1
	beq _0224D6FA
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r7, r7, r0
_0224D6FA:
	add r0, r6, #0
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _0224D6C8
_0224D706:
	cmp r7, #0
	bne _0224D72A
	ldr r0, [sp, #0x2c]
	bl sub_020726C0
	ldr r2, _0224D7E8 ; =0x00003108
	ldr r1, [sp, #4]
	ldrb r1, [r1, r2]
	orr r1, r0
	ldr r0, [sp, #4]
	strb r1, [r0, r2]
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #6
	add r1, r1, r0
	ldr r0, _0224D7E4 ; =0x0000219C
	strb r2, [r1, r0]
	b _0224D744
_0224D72A:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #4]
	str r1, [r0, #0xc]
	mov r1, #0x16
	str r1, [r0, #8]
	mov r1, #0x4f
	ldr r0, [sp, #0x1c]
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r0, #1
	orr r2, r0
	ldr r0, [sp, #0x1c]
	str r2, [r0, r1]
_0224D744:
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0xc0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	add r1, r0, #1
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	cmp r1, r0
	bge _0224D75E
	b _0224D58A
_0224D75E:
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	cmp r0, #0x16
	bne _0224D7D4
	ldr r0, [sp, #0x24]
	mov r1, #0x86
	tst r0, r1
	bne _0224D7C6
	ldr r0, [sp]
	bl ov12_0223B740
	cmp r0, #0
	bne _0224D7C6
	mov r1, #0x4f
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #1
	tst r0, r2
	beq _0224D790
	ldr r0, [sp, #4]
	add r1, r1, #4
	ldr r0, [r0, r1]
	tst r0, r2
	bne _0224D7C6
_0224D790:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, #0
	bl ov12_02252890
	cmp r0, #0
	beq _0224D7C6
	mov r1, #0x4f
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #1
	tst r0, r2
	beq _0224D7B4
	mov r2, #0
	sub r1, r1, #4
	ldr r0, [sp, #4]
	b _0224D7B8
_0224D7B4:
	ldr r0, [sp, #4]
	sub r1, r1, #4
_0224D7B8:
	str r2, [r0, r1]
	ldr r0, [sp, #4]
	mov r1, #1
	mov r2, #0xe7
	bl ov12_0224EB9C
	b _0224D7D0
_0224D7C6:
	ldr r0, [sp, #4]
	mov r1, #1
	mov r2, #0xa
	bl ov12_0224EB9C
_0224D7D0:
	mov r0, #1
	str r0, [sp, #0x30]
_0224D7D4:
	ldr r0, [sp, #0x30]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0224D7DC: .word 0x00002D8C
_0224D7E0: .word 0x000001EE
_0224D7E4: .word 0x0000219C
_0224D7E8: .word 0x00003108
	thumb_func_end ov12_0224D540

	thumb_func_start ov12_0224D7EC
ov12_0224D7EC: ; 0x0224D7EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	str r1, [sp, #4]
	bl ov12_0223A7F0
	str r0, [sp, #0x24]
	ldr r0, [sp]
	bl ov12_0223A7E0
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bgt _0224D810
	b _0224DA6A
_0224D810:
	ldr r0, [sp, #0x20]
	mov r1, #8
	and r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	mov r1, #0x10
	and r0, r1
	str r0, [sp, #8]
_0224D820:
	ldr r0, [sp, #0x20]
	sub r0, #0x4a
	cmp r0, #1
	bhi _0224D8BA
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov12_0223AB1C
	cmp r0, #0
	bne _0224D8BA
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov12_0223AB0C
	cmp r0, #2
	bne _0224D8DC
	ldr r1, _0224DB24 ; =0x00002D8C
	ldr r0, [sp, #4]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0224D8DC
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	mov r7, #0
	bl ov12_0223A7F4
	add r6, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov12_0223A7E8
	add r0, r6, #0
	add r4, r7, #0
	bl sub_02074640
	cmp r0, #0
	ble _0224D8A8
_0224D86A:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r5, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224D89C
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224DB28 ; =0x000001EE
	cmp r0, r1
	beq _0224D89C
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r7, r7, r0
_0224D89C:
	add r0, r6, #0
	add r4, r4, #1
	bl sub_02074640
	cmp r4, r0
	blt _0224D86A
_0224D8A8:
	cmp r7, #0
	bne _0224D8DC
	ldr r0, [sp, #0x1c]
	mov r1, #2
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _0224DA56
_0224D8BA:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0224D8D2
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0224D9C4
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov12_0223AB1C
	cmp r0, #0
	beq _0224D9C4
_0224D8D2:
	ldr r1, _0224DB24 ; =0x00002D8C
	ldr r0, [sp, #4]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0224D8DE
_0224D8DC:
	b _0224DA56
_0224D8DE:
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	mov r4, #0
	bl ov12_0223A7F4
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov12_0223AB6C
	add r1, r0, #0
	ldr r0, [sp]
	bl ov12_0223A7F4
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov12_0223A7E8
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r5, r4, #0
	bl sub_02074640
	cmp r0, #0
	ble _0224D950
_0224D912:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224D944
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224DB28 ; =0x000001EE
	cmp r0, r1
	beq _0224D944
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r4, r4, r0
_0224D944:
	add r0, r7, #0
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _0224D912
_0224D950:
	ldr r0, [sp, #0x18]
	mov r5, #0
	bl sub_02074640
	cmp r0, #0
	ble _0224D99A
	ldr r7, _0224DB28 ; =0x000001EE
_0224D95E:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224D98E
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	cmp r0, r7
	beq _0224D98E
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r4, r4, r0
_0224D98E:
	ldr r0, [sp, #0x18]
	add r5, r5, #1
	bl sub_02074640
	cmp r5, r0
	blt _0224D95E
_0224D99A:
	cmp r4, #0
	bne _0224DA56
	ldr r0, [sp, #0x14]
	bl ov12_02261258
	mov r1, #1
	tst r0, r1
	beq _0224D9B6
	ldr r0, [sp, #0x1c]
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _0224DA56
_0224D9B6:
	ldr r0, [sp, #0x1c]
	mov r1, #2
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _0224DA56
_0224D9C4:
	ldr r1, _0224DB24 ; =0x00002D8C
	ldr r0, [sp, #4]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0224DA56
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	mov r7, #0
	bl ov12_0223A7F4
	add r6, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	bl ov12_0223A7E8
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r4, r7, #0
	bl sub_02074640
	cmp r0, #0
	ble _0224DA2E
_0224D9F0:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02074644
	mov r1, #0xae
	mov r2, #0
	add r5, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _0224DA22
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224DB28 ; =0x000001EE
	cmp r0, r1
	beq _0224DA22
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	add r7, r7, r0
_0224DA22:
	add r0, r6, #0
	add r4, r4, #1
	bl sub_02074640
	cmp r4, r0
	blt _0224D9F0
_0224DA2E:
	cmp r7, #0
	bne _0224DA56
	ldr r0, [sp, #0x10]
	bl ov12_02261258
	mov r1, #1
	tst r0, r1
	beq _0224DA4A
	ldr r0, [sp, #0x1c]
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _0224DA56
_0224DA4A:
	ldr r0, [sp, #0x1c]
	mov r1, #2
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
_0224DA56:
	ldr r0, [sp, #4]
	add r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r0, #1
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x28]
	cmp r1, r0
	bge _0224DA6A
	b _0224D820
_0224DA6A:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0224DA80
	ldr r0, [sp, #0x20]
	mov r1, #1
	tst r0, r1
	beq _0224DA80
	ldr r0, [sp, #0x20]
	mov r1, #4
	tst r0, r1
	beq _0224DA96
_0224DA80:
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _0224DB44
	ldr r0, [sp, #0x20]
	mov r1, #0x80
	tst r0, r1
	beq _0224DB44
	ldr r0, [sp, #0x20]
	mov r1, #4
	tst r0, r1
	bne _0224DB44
_0224DA96:
	ldr r0, [sp]
	mov r1, #1
	bl ov12_0223A9F4
	ldrb r0, [r0, #1]
	sub r0, #0x42
	cmp r0, #0x2e
	bhi _0224DB20
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224DAB2: ; jump table
	.short _0224DB10 - _0224DAB2 - 2 ; case 0
	.short _0224DB10 - _0224DAB2 - 2 ; case 1
	.short _0224DB20 - _0224DAB2 - 2 ; case 2
	.short _0224DB20 - _0224DAB2 - 2 ; case 3
	.short _0224DB10 - _0224DAB2 - 2 ; case 4
	.short _0224DB20 - _0224DAB2 - 2 ; case 5
	.short _0224DB10 - _0224DAB2 - 2 ; case 6
	.short _0224DB10 - _0224DAB2 - 2 ; case 7
	.short _0224DB10 - _0224DAB2 - 2 ; case 8
	.short _0224DB10 - _0224DAB2 - 2 ; case 9
	.short _0224DB10 - _0224DAB2 - 2 ; case 10
	.short _0224DB20 - _0224DAB2 - 2 ; case 11
	.short _0224DB20 - _0224DAB2 - 2 ; case 12
	.short _0224DB20 - _0224DAB2 - 2 ; case 13
	.short _0224DB20 - _0224DAB2 - 2 ; case 14
	.short _0224DB20 - _0224DAB2 - 2 ; case 15
	.short _0224DB20 - _0224DAB2 - 2 ; case 16
	.short _0224DB20 - _0224DAB2 - 2 ; case 17
	.short _0224DB20 - _0224DAB2 - 2 ; case 18
	.short _0224DB20 - _0224DAB2 - 2 ; case 19
	.short _0224DB10 - _0224DAB2 - 2 ; case 20
	.short _0224DB10 - _0224DAB2 - 2 ; case 21
	.short _0224DB10 - _0224DAB2 - 2 ; case 22
	.short _0224DB10 - _0224DAB2 - 2 ; case 23
	.short _0224DB20 - _0224DAB2 - 2 ; case 24
	.short _0224DB20 - _0224DAB2 - 2 ; case 25
	.short _0224DB20 - _0224DAB2 - 2 ; case 26
	.short _0224DB20 - _0224DAB2 - 2 ; case 27
	.short _0224DB20 - _0224DAB2 - 2 ; case 28
	.short _0224DB20 - _0224DAB2 - 2 ; case 29
	.short _0224DB20 - _0224DAB2 - 2 ; case 30
	.short _0224DB18 - _0224DAB2 - 2 ; case 31
	.short _0224DB10 - _0224DAB2 - 2 ; case 32
	.short _0224DB18 - _0224DAB2 - 2 ; case 33
	.short _0224DB18 - _0224DAB2 - 2 ; case 34
	.short _0224DB18 - _0224DAB2 - 2 ; case 35
	.short _0224DB18 - _0224DAB2 - 2 ; case 36
	.short _0224DB10 - _0224DAB2 - 2 ; case 37
	.short _0224DB10 - _0224DAB2 - 2 ; case 38
	.short _0224DB10 - _0224DAB2 - 2 ; case 39
	.short _0224DB10 - _0224DAB2 - 2 ; case 40
	.short _0224DB10 - _0224DAB2 - 2 ; case 41
	.short _0224DB10 - _0224DAB2 - 2 ; case 42
	.short _0224DB20 - _0224DAB2 - 2 ; case 43
	.short _0224DB10 - _0224DAB2 - 2 ; case 44
	.short _0224DB20 - _0224DAB2 - 2 ; case 45
	.short _0224DB10 - _0224DAB2 - 2 ; case 46
_0224DB10:
	ldr r0, _0224DB2C ; =0x0000046B
	bl sub_02005D48
	b _0224DB3C
_0224DB18:
	ldr r0, _0224DB30 ; =0x0000047C
	bl sub_02005D48
	b _0224DB3C
_0224DB20:
	ldr r0, _0224DB34 ; =0x00000468
	b _0224DB38
	.align 2, 0
_0224DB24: .word 0x00002D8C
_0224DB28: .word 0x000001EE
_0224DB2C: .word 0x0000046B
_0224DB30: .word 0x0000047C
_0224DB34: .word 0x00000468
_0224DB38:
	bl sub_02005D48
_0224DB3C:
	ldr r0, [sp]
	mov r1, #2
	bl ov12_0223BD3C
_0224DB44:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0224DB52
	ldr r0, [sp]
	ldr r1, [sp, #0x1c]
	bl ov12_0223BD20
_0224DB52:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0224DB5E
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224DB5E:
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224D7EC

	thumb_func_start ov12_0224DB64
ov12_0224DB64: ; 0x0224DB64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _0224DBFC ; =0x00002D4C
	add r6, r2, #0
	mov r1, #0xc0
	add r0, r5, r0
	mul r1, r6
	add r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #8]
	lsl r0, r0, #1
	ldrh r1, [r1, r0]
	str r3, [sp, #4]
	ldr r4, [sp, #0x28]
	ldr r7, [sp, #0x30]
	str r0, [sp, #0xc]
	cmp r1, #0xae
	bne _0224DB9E
	add r0, r5, #0
	bl ov12_022526D0
	cmp r0, #0
	bne _0224DB9E
	mov r0, #0x10
	str r0, [r4]
	b _0224DBAE
_0224DB9E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldrh r0, [r1, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0224DC00 ; =0x000003E6
	ldrh r0, [r1, r0]
	str r0, [r4]
_0224DBAE:
	ldr r0, [sp, #4]
	mov r1, #2
	tst r0, r1
	beq _0224DBE4
	ldr r0, [r4]
	add r1, #0xfe
	cmp r0, r1
	bne _0224DBDE
	ldr r0, [sp]
	add r1, r6, #0
	bl ov12_0223AB6C
	bl sub_020726C0
	ldr r1, _0224DC04 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _0224DBD8
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224DBD8:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224DBDE:
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224DBE4:
	ldr r1, [r4]
	ldr r0, _0224DC08 ; =0x00000251
	tst r0, r1
	beq _0224DBF0
	str r6, [r7]
	b _0224DBF6
_0224DBF0:
	mov r0, #1
	eor r0, r6
	str r0, [r7]
_0224DBF6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224DBFC: .word 0x00002D4C
_0224DC00: .word 0x000003E6
_0224DC04: .word 0x00003108
_0224DC08: .word 0x00000251
	thumb_func_end ov12_0224DB64

	thumb_func_start ov12_0224DC0C
ov12_0224DC0C: ; 0x0224DC0C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	bl ov12_0223A7F0
	add r4, r0, #0
	mov r3, #0
	cmp r4, #0
	ble _0224DC46
	ldr r5, [sp]
	add r7, r3, #0
	add r6, r5, #0
_0224DC22:
	ldr r0, _0224DC68 ; =0x00002DB0
	add r3, r3, #1
	ldr r2, [r6, r0]
	ldr r0, _0224DC6C ; =0x0000218C
	ldr r1, [r5, r0]
	mov r0, #0
	mvn r0, r0
	eor r0, r1
	add r1, r2, #0
	and r1, r0
	ldr r0, _0224DC68 ; =0x00002DB0
	str r1, [r6, r0]
	ldr r0, _0224DC6C ; =0x0000218C
	add r6, #0xc0
	str r7, [r5, r0]
	add r5, r5, #4
	cmp r3, r4
	blt _0224DC22
_0224DC46:
	ldr r1, [sp]
	mov r0, #0
	ldr r1, [r1, #0x64]
	lsl r2, r1, #1
	ldr r1, [sp]
	add r1, r1, r2
	ldr r2, _0224DC70 ; =0x00003064
	strh r0, [r1, r2]
	ldr r1, [sp]
	add r2, #0x60
	ldr r1, [r1, #0x64]
	lsl r3, r1, #1
	ldr r1, [sp]
	add r1, r1, r3
	strh r0, [r1, r2]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DC68: .word 0x00002DB0
_0224DC6C: .word 0x0000218C
_0224DC70: .word 0x00003064
	thumb_func_end ov12_0224DC0C

	thumb_func_start ov12_0224DC74
ov12_0224DC74: ; 0x0224DC74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0224DD0C ; =0x000021EC
	str r1, [sp]
	ldrb r0, [r5, r0]
	add r6, r2, #0
	str r3, [sp, #4]
	mov r4, #0
	bl sub_020726C0
	ldr r1, _0224DD10 ; =0x0000213C
	lsl r0, r0, #0x18
	ldr r2, [r5, r1]
	mov r1, #0xf
	lsl r1, r1, #0x18
	tst r1, r2
	beq _0224DD02
	add r1, r2, #0
	tst r1, r0
	bne _0224DCB6
	ldr r7, _0224DD0C ; =0x000021EC
	add r6, r7, #0
	sub r6, #0xb0
_0224DCA4:
	add r4, r4, #1
	add r0, r5, r4
	ldrb r0, [r0, r7]
	bl sub_020726C0
	ldr r1, [r5, r6]
	lsl r0, r0, #0x18
	tst r1, r0
	beq _0224DCA4
_0224DCB6:
	ldr r2, _0224DD10 ; =0x0000213C
	mov r1, #0
	mvn r1, r1
	eor r1, r0
	ldr r3, [r5, r2]
	asr r0, r0, #0x18
	and r1, r3
	str r1, [r5, r2]
	bl sub_020726E0
	str r0, [r5, #0x74]
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0224DCDE
	add r0, r5, #0
	mov r1, #1
	mov r2, #6
	bl ov12_0224EB9C
	b _0224DCE8
_0224DCDE:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x53
	bl ov12_0224EB9C
_0224DCE8:
	mov r0, #0x16
	str r0, [r5, #8]
	ldr r0, [sp]
	mov r2, #0x28
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x74]
	add sp, #8
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0224DD14 ; =0x000021A8
	str r2, [r1, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224DD02:
	str r6, [r5, #8]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DD0C: .word 0x000021EC
_0224DD10: .word 0x0000213C
_0224DD14: .word 0x000021A8
	thumb_func_end ov12_0224DC74

	thumb_func_start ov12_0224DD18
ov12_0224DD18: ; 0x0224DD18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x85
	lsl r0, r0, #6
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r0, #0xf
	lsl r0, r0, #0x1c
	tst r0, r1
	beq _0224DD6C
	mov r0, #1
	lsl r0, r0, #0x1c
	add r2, r1, #0
	tst r2, r0
	bne _0224DD3E
_0224DD36:
	lsl r0, r0, #1
	add r2, r1, #0
	tst r2, r0
	beq _0224DD36
_0224DD3E:
	mov r2, #0x85
	lsl r2, r2, #6
	mov r1, #0
	mvn r1, r1
	eor r1, r0
	ldr r3, [r5, r2]
	asr r0, r0, #0x1c
	and r1, r3
	str r1, [r5, r2]
	bl sub_020726E0
	mov r2, #0x45
	str r0, [r5, #0x74]
	add r0, r5, #0
	mov r1, #1
	lsl r2, r2, #2
	bl ov12_0224EB9C
	mov r0, #0x16
	str r0, [r5, #8]
	str r4, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224DD6C:
	str r2, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov12_0224DD18

	thumb_func_start ov12_0224DD74
ov12_0224DD74: ; 0x0224DD74
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x60
	bne _0224DD88
	mov r4, #0
	b _0224DD9C
_0224DD88:
	ldr r0, _0224DF54 ; =0x00002160
	ldr r4, [r5, r0]
	cmp r4, #0
	bne _0224DD9C
	ldr r0, _0224DF58 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0224DF5C ; =0x000003E2
	ldrb r4, [r1, r0]
_0224DD9C:
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r6, #0x10
	lsl r1, r2, #4
	add r3, r5, r1
	ldr r1, _0224DF60 ; =0x000003E9
	ldrb r1, [r3, r1]
	tst r1, r6
	beq _0224DDE6
	ldr r3, _0224DF64 ; =0x0000213C
	lsl r6, r6, #0x10
	ldr r1, [r5, r3]
	tst r1, r6
	bne _0224DDE6
	ldr r1, [r5, #0x6c]
	cmp r1, #0xff
	beq _0224DDE6
	add r3, r3, #4
	ldr r6, [r5, r3]
	mov r3, #4
	tst r3, r6
	beq _0224DDE6
	lsl r1, r1, #1
	add r3, r5, r1
	add r1, r0, #0
	add r1, #0x44
	strh r2, [r3, r1]
	ldr r2, [r5, #0x6c]
	ldr r1, [r5, r0]
	lsl r2, r2, #3
	add r3, r5, r2
	ldr r2, [r5, #0x64]
	add r0, #0x4c
	lsl r2, r2, #1
	add r2, r3, r2
	strh r1, [r2, r0]
_0224DDE6:
	ldr r1, [r5, #0x6c]
	cmp r1, #0xff
	beq _0224DE30
	add r0, r5, #0
	bl ov12_02255830
	ldr r1, _0224DF64 ; =0x0000213C
	lsl r0, r0, #0x18
	ldr r3, [r5, r1]
	mov r2, #0x20
	lsr r0, r0, #0x18
	tst r2, r3
	bne _0224DE0A
	add r1, r1, #4
	ldr r2, [r5, r1]
	mov r1, #4
	tst r1, r2
	beq _0224DE24
_0224DE0A:
	cmp r0, #0x37
	beq _0224DE24
	cmp r0, #0x73
	beq _0224DE24
	cmp r0, #0x7d
	beq _0224DE24
	ldr r1, [r5, #0x6c]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _0224DF68 ; =0x00002DF8
	mov r2, #0
	strh r2, [r1, r0]
_0224DE24:
	ldr r0, _0224DF64 ; =0x0000213C
	mov r1, #1
	ldr r2, [r5, r0]
	lsl r1, r1, #0x14
	tst r1, r2
	beq _0224DE32
_0224DE30:
	b _0224DF52
_0224DE32:
	add r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #4
	tst r0, r1
	beq _0224DE70
	ldr r1, [r5, #0x6c]
	ldr r0, _0224DF58 ; =0x00003044
	lsl r1, r1, #1
	add r2, r5, r1
	add r1, r0, #0
	ldr r3, [r5, r0]
	add r1, #0x20
	strh r3, [r2, r1]
	ldr r1, [r5, #0x6c]
	ldr r3, [r5, #0x64]
	lsl r1, r1, #1
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0x28
	strh r3, [r2, r1]
	ldr r1, [r5, #0x6c]
	lsl r1, r1, #1
	add r2, r5, r1
	add r1, r0, #0
	add r1, #0x30
	strh r4, [r2, r1]
	sub r1, r0, #4
	ldr r1, [r5, r1]
	add r0, r0, #4
	str r1, [r5, r0]
	b _0224DE9A
_0224DE70:
	ldr r0, [r5, #0x6c]
	ldr r3, _0224DF6C ; =0x00003064
	lsl r0, r0, #1
	mov r1, #0
	add r0, r5, r0
	strh r1, [r0, r3]
	ldr r2, [r5, #0x6c]
	mov r0, #0xff
	lsl r2, r2, #1
	add r6, r5, r2
	add r2, r3, #0
	add r2, #8
	strh r0, [r6, r2]
	ldr r0, [r5, #0x6c]
	lsl r0, r0, #1
	add r2, r5, r0
	add r0, r3, #0
	add r0, #0x10
	strh r1, [r2, r0]
	sub r3, #0x1c
	str r1, [r5, r3]
_0224DE9A:
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r1, #0x40
	tst r1, r2
	beq _0224DF2E
	add r0, #0x2c
	ldr r0, [r5, r0]
	ldr r2, _0224DF70 ; =0x801FDA49
	tst r0, r2
	bne _0224DF2E
	ldr r0, _0224DF58 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r1, r0, #4
	add r3, r5, r1
	ldr r1, _0224DF74 ; =0x000003E6
	ldrh r3, [r3, r1]
	cmp r3, #0x40
	bgt _0224DED0
	bge _0224DEE4
	cmp r3, #0x10
	bgt _0224DECA
	beq _0224DEE4
	b _0224DF0A
_0224DECA:
	cmp r3, #0x20
	beq _0224DEE4
	b _0224DF0A
_0224DED0:
	lsr r1, r2, #0x17
	cmp r3, r1
	bgt _0224DEDE
	bge _0224DEE4
	cmp r3, #0x80
	beq _0224DEE4
	b _0224DF0A
_0224DEDE:
	lsr r1, r2, #0x16
	cmp r3, r1
	bne _0224DF0A
_0224DEE4:
	ldr r1, [r5, #0x6c]
	ldr r2, _0224DF78 ; =0x000030C4
	lsl r1, r1, #1
	mov r0, #0
	add r1, r5, r1
	strh r0, [r1, r2]
	ldr r1, [r5, #0x6c]
	mov r4, #0xff
	lsl r1, r1, #1
	add r3, r5, r1
	add r1, r2, #0
	add r1, #8
	strh r4, [r3, r1]
	ldr r1, [r5, #0x6c]
	add r2, #0x10
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, r2]
	pop {r4, r5, r6, pc}
_0224DF0A:
	ldr r1, [r5, #0x6c]
	lsl r1, r1, #1
	add r2, r5, r1
	ldr r1, _0224DF78 ; =0x000030C4
	strh r0, [r2, r1]
	ldr r0, [r5, #0x6c]
	ldr r3, [r5, #0x64]
	lsl r0, r0, #1
	add r2, r5, r0
	add r0, r1, #0
	add r0, #8
	strh r3, [r2, r0]
	ldr r0, [r5, #0x6c]
	add r1, #0x10
	lsl r0, r0, #1
	add r0, r5, r0
	strh r4, [r0, r1]
	pop {r4, r5, r6, pc}
_0224DF2E:
	ldr r1, [r5, #0x6c]
	ldr r2, _0224DF78 ; =0x000030C4
	lsl r1, r1, #1
	mov r0, #0
	add r1, r5, r1
	strh r0, [r1, r2]
	ldr r1, [r5, #0x6c]
	mov r4, #0xff
	lsl r1, r1, #1
	add r3, r5, r1
	add r1, r2, #0
	add r1, #8
	strh r4, [r3, r1]
	ldr r1, [r5, #0x6c]
	add r2, #0x10
	lsl r1, r1, #1
	add r1, r5, r1
	strh r0, [r1, r2]
_0224DF52:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224DF54: .word 0x00002160
_0224DF58: .word 0x00003044
_0224DF5C: .word 0x000003E2
_0224DF60: .word 0x000003E9
_0224DF64: .word 0x0000213C
_0224DF68: .word 0x00002DF8
_0224DF6C: .word 0x00003064
_0224DF70: .word 0x801FDA49
_0224DF74: .word 0x000003E6
_0224DF78: .word 0x000030C4
	thumb_func_end ov12_0224DD74

	thumb_func_start ov12_0224DF7C
ov12_0224DF7C: ; 0x0224DF7C
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x10
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0224DF7C

	thumb_func_start ov12_0224DF98
ov12_0224DF98: ; 0x0224DF98
	push {r3, r4, r5, lr}
	ldr r2, _0224DFE8 ; =0x0000216C
	add r5, r1, #0
	ldr r0, [r5, r2]
	mov r4, #0
	cmp r0, #0
	beq _0224DFCC
	add r1, r2, #0
	add r1, #0x11
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _0224DFCA
	ldr r1, [r5, #0x74]
	cmp r1, #0xff
	bne _0224DFC6
	add r2, #0x10
	ldrb r1, [r5, r2]
	cmp r1, #1
	beq _0224DFC6
	mov r1, #1
	lsl r1, r1, #0xe
	tst r0, r1
	beq _0224DFCC
_0224DFC6:
	mov r4, #1
	b _0224DFCC
_0224DFCA:
	mov r4, #1
_0224DFCC:
	cmp r4, #1
	bne _0224DFE2
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x15
	bl ov12_0224EB9C
	ldr r0, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0x16
	str r0, [r5, #8]
_0224DFE2:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0224DFE8: .word 0x0000216C
	thumb_func_end ov12_0224DF98

	thumb_func_start ov12_0224DFEC
ov12_0224DFEC: ; 0x0224DFEC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x6c]
	mov r3, #0
	cmp r2, #0xff
	bne _0224DFFC
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224DFFC:
	mov r0, #0xc0
	add r5, r2, #0
	mul r5, r0
	mov r1, #2
	ldr r0, _0224E06C ; =0x00002DB0
	add r7, r4, r5
	ldr r6, [r7, r0]
	lsl r1, r1, #0x16
	tst r1, r6
	beq _0224E066
	ldr r1, _0224E070 ; =0x0000216C
	mov r6, #2
	lsl r6, r6, #0x16
	ldr r1, [r4, r1]
	lsr r6, r6, #9
	tst r1, r6
	bne _0224E066
	ldr r1, [r4, #0x64]
	cmp r2, r1
	beq _0224E066
	sub r0, #0x24
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0224E066
	mov r0, #0x1c
	mul r0, r2
	add r2, r4, r0
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0224E044
	add r0, #8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0224E066
_0224E044:
	ldr r0, _0224E074 ; =0x00002D59
	add r1, r4, r0
	ldrsb r0, [r1, r5]
	cmp r0, #0xc
	bge _0224E066
	add r0, r0, #1
	strb r0, [r1, r5]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf5
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r3, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_0224E066:
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E06C: .word 0x00002DB0
_0224E070: .word 0x0000216C
_0224E074: .word 0x00002D59
	thumb_func_end ov12_0224DFEC

	thumb_func_start ov12_0224E078
ov12_0224E078: ; 0x0224E078
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #0x64]
	str r0, [sp]
	add r0, r5, #0
	mov r4, #0
	bl ov12_02255830
	add r7, r0, #0
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	add r2, r4, #0
	bl ov12_02255844
	add r6, r0, #0
	ldr r0, [r5, #0x6c]
	cmp r0, #0xff
	beq _0224E116
	cmp r7, #0x38
	bne _0224E116
	ldr r1, _0224E11C ; =0x0000216C
	ldr r2, [r5, r1]
	ldr r1, _0224E120 ; =0x801FDA49
	tst r1, r2
	bne _0224E116
	mov r1, #0x1c
	mul r1, r0
	mov r0, #0xb6
	add r2, r5, r1
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0224E0C2
	add r0, #8
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _0224E116
_0224E0C2:
	ldr r0, [sp]
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	cmp r1, r6
	bge _0224E116
	ldr r0, _0224E124 ; =0x00003044
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0224E128 ; =0x000003E9
	ldrb r1, [r1, r0]
	mov r0, #0x20
	tst r0, r1
	beq _0224E116
	ldr r0, [r5, #0x6c]
	mov r1, #0xc0
	mul r1, r0
	add r2, r5, r1
	ldr r1, _0224E12C ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _0224E116
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r5, #0
	mov r1, #2
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xe
	bl ov12_0224EB9C
	ldr r0, [r5, #8]
	mov r4, #1
	str r0, [r5, #0xc]
	mov r0, #0x16
	str r0, [r5, #8]
_0224E116:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E11C: .word 0x0000216C
_0224E120: .word 0x801FDA49
_0224E124: .word 0x00003044
_0224E128: .word 0x000003E9
_0224E12C: .word 0x00002D8C
	thumb_func_end ov12_0224E078

	thumb_func_start ov12_0224E130
ov12_0224E130: ; 0x0224E130
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r7, [r5, #0x5c]
	str r0, [sp]
	mov r6, #0
	bl ov12_0223A7F0
	cmp r7, r0
	bge _0224E1A0
	add r4, r5, #0
	add r4, #0x5c
_0224E146:
	mov r0, #0xc0
	mul r0, r7
	mov r1, #0xb7
	add r0, r5, r0
	lsl r1, r1, #6
	ldr r2, [r0, r1]
	ldr r1, _0224E1AC ; =0x200400C0
	tst r1, r2
	bne _0224E18A
	ldr r1, _0224E1B0 ; =0x00002DC4
	ldr r2, [r0, r1]
	ldr r1, _0224E1AC ; =0x200400C0
	tst r1, r2
	beq _0224E18A
	ldr r1, _0224E1B0 ; =0x00002DC4
	ldr r2, [r0, r1]
	ldr r1, _0224E1B4 ; =0xDFFBFF3F
	and r2, r1
	ldr r1, _0224E1B0 ; =0x00002DC4
	str r2, [r0, r1]
	ldr r2, _0224E1B8 ; =0x0000011F
	add r0, r5, #0
	mov r1, #1
	bl ov12_0224EB9C
	mov r0, #0x46
	ldr r1, [r5, #0x5c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #8]
	mov r6, #1
	str r0, [r5, #0xc]
	mov r0, #0x16
	str r0, [r5, #8]
_0224E18A:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	cmp r6, #1
	beq _0224E1A0
	ldr r0, [sp]
	ldr r7, [r5, #0x5c]
	bl ov12_0223A7F0
	cmp r7, r0
	blt _0224E146
_0224E1A0:
	cmp r6, #0
	bne _0224E1A8
	mov r0, #0
	str r0, [r5, #0x5c]
_0224E1A8:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E1AC: .word 0x200400C0
_0224E1B0: .word 0x00002DC4
_0224E1B4: .word 0xDFFBFF3F
_0224E1B8: .word 0x0000011F
	thumb_func_end ov12_0224E130

	thumb_func_start ov12_0224E1BC
ov12_0224E1BC: ; 0x0224E1BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	mov r6, #0
	bl ov12_0223A7F0
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_02255830
	str r0, [sp, #4]
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	add r2, r6, #0
	bl ov12_02255844
	ldr r1, [r4, #8]
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #1
	bl ov12_0224DC74
	cmp r0, #1
	bne _0224E1F4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224E1F4:
	add r5, r4, #0
	add r5, #0x30
_0224E1F8:
	ldr r0, [r4, #0x30]
	cmp r0, #3
	bls _0224E200
	b _0224E350
_0224E200:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E20C: ; jump table
	.short _0224E214 - _0224E20C - 2 ; case 0
	.short _0224E244 - _0224E20C - 2 ; case 1
	.short _0224E2C4 - _0224E20C - 2 ; case 2
	.short _0224E348 - _0224E20C - 2 ; case 3
_0224E214:
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _0224E368 ; =0x00002DB0
	add r0, r4, r0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x16
	tst r1, r2
	beq _0224E23C
	ldr r1, _0224E36C ; =0x00003044
	ldr r1, [r4, r1]
	cmp r1, #0x63
	beq _0224E23C
	ldr r1, _0224E368 ; =0x00002DB0
	ldr r2, [r0, r1]
	ldr r1, _0224E370 ; =0xFF7FFFFF
	and r2, r1
	ldr r1, _0224E368 ; =0x00002DB0
	str r2, [r0, r1]
_0224E23C:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224E350
_0224E244:
	ldr r3, [r4, #0x6c]
	cmp r3, #0xff
	beq _0224E2BC
	ldr r0, [sp, #4]
	cmp r0, #0x58
	bne _0224E2BC
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0224E2BC
	ldr r0, _0224E374 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0224E2BC
	ldr r2, [r4, #0x64]
	mov r0, #0x1c
	mul r0, r2
	add r1, r4, r0
	mov r0, #0xbb
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r7, #0
	beq _0224E2BC
	cmp r2, r3
	beq _0224E2BC
	mov r0, #0xc0
	mul r0, r2
	add r2, r4, r0
	ldr r0, _0224E378 ; =0x00002D8C
	ldr r1, [r2, r0]
	add r0, r0, #4
	ldr r0, [r2, r0]
	cmp r1, r0
	bhs _0224E2BC
	cmp r1, #0
	beq _0224E2BC
	ldr r1, [sp]
	neg r0, r7
	bl ov12_02253178
	ldr r1, _0224E37C ; =0x0000215C
	mov r2, #0xd5
	str r0, [r4, r1]
	mov r0, #0x46
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r6, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_0224E2BC:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224E350
_0224E2C4:
	ldr r0, [sp, #4]
	cmp r0, #0x62
	bne _0224E340
	ldr r1, [r4, #0x64]
	add r0, r4, #0
	bl ov12_022527CC
	cmp r0, #0x62
	beq _0224E340
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0224E340
	ldr r0, _0224E374 ; =0x0000213C
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0224E340
	ldr r0, _0224E36C ; =0x00003044
	ldr r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r4, r0
	mov r0, #0x3e
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #2
	beq _0224E340
	ldr r1, [r4, #0x64]
	mov r0, #0xc0
	mul r0, r1
	ldr r1, _0224E378 ; =0x00002D8C
	add r0, r4, r0
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _0224E340
	ldr r1, _0224E380 ; =0x00002D90
	ldr r1, [r0, r1]
	mov r0, #0
	mvn r0, r0
	mul r0, r1
	mov r1, #0xa
	bl ov12_02253178
	ldr r1, _0224E37C ; =0x0000215C
	mov r2, #0xd6
	str r0, [r4, r1]
	mov r0, #0x46
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r6, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_0224E340:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224E350
_0224E348:
	mov r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	mov r6, #2
_0224E350:
	cmp r6, #0
	bne _0224E356
	b _0224E1F8
_0224E356:
	cmp r6, #1
	bne _0224E360
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224E360:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E368: .word 0x00002DB0
_0224E36C: .word 0x00003044
_0224E370: .word 0xFF7FFFFF
_0224E374: .word 0x0000213C
_0224E378: .word 0x00002D8C
_0224E37C: .word 0x0000215C
_0224E380: .word 0x00002D90
	thumb_func_end ov12_0224E1BC

	thumb_func_start ov12_0224E384
ov12_0224E384: ; 0x0224E384
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	str r0, [sp]
	bl ov12_0223A7E0
	mov r2, #0xd5
	add r4, r0, #0
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r2, _0224E404 ; =0x00001DE0
	mov r0, #0
	bl sub_020D47EC
	mov r0, #1
	tst r0, r4
	beq _0224E3F8
	mov r0, #0xb9
	lsl r0, r0, #2
	tst r0, r4
	bne _0224E3F8
	mov r6, #0
_0224E3B2:
	mov r0, #1
	tst r0, r6
	beq _0224E3F2
	asr r2, r6, #1
	ldr r0, [sp, #4]
	lsl r1, r2, #3
	mov r4, #0
	add r7, r0, r1
	add r5, r0, r2
_0224E3C4:
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r4, #0
	bl ov12_0223BFDC
	cmp r0, #0
	beq _0224E3EC
	ldr r1, _0224E408 ; =0x000003CD
	ldrb r1, [r5, r1]
	lsl r1, r1, #1
	add r2, r7, r1
	mov r1, #0xe7
	lsl r1, r1, #2
	strh r0, [r2, r1]
	add r0, r1, #0
	add r0, #0x31
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _0224E408 ; =0x000003CD
	strb r1, [r5, r0]
_0224E3EC:
	add r4, r4, #1
	cmp r4, #4
	blt _0224E3C4
_0224E3F2:
	add r6, r6, #1
	cmp r6, #4
	blt _0224E3B2
_0224E3F8:
	ldr r2, _0224E40C ; =0x02220AAC
	ldr r1, _0224E410 ; =0x00002134
	ldr r0, [sp, #4]
	str r2, [r0, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E404: .word 0x00001DE0
_0224E408: .word 0x000003CD
_0224E40C: .word 0x02220AAC
_0224E410: .word 0x00002134
	thumb_func_end ov12_0224E384

	thumb_func_start ov12_0224E414
ov12_0224E414: ; 0x0224E414
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	bl ov12_0223A7F0
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _0224E4E8
	ldr r5, [sp]
_0224E42A:
	ldr r0, _0224E4EC ; =0x000021A8
	ldr r2, [r5, r0]
	cmp r2, #0x28
	beq _0224E4DE
	ldr r0, [sp]
	add r7, r0, r4
	ldr r0, _0224E4F0 ; =0x0000314C
	ldrb r1, [r7, r0]
	mov r0, #1
	tst r0, r1
	beq _0224E44E
	sub r2, #0xc
	lsl r2, r2, #0x18
	add r0, r6, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl ov12_0223BDDC
_0224E44E:
	ldr r0, _0224E4EC ; =0x000021A8
	ldr r0, [r5, r0]
	sub r0, #0xd
	cmp r0, #3
	bhi _0224E4DE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224E464: ; jump table
	.short _0224E46C - _0224E464 - 2 ; case 0
	.short _0224E4A4 - _0224E464 - 2 ; case 1
	.short _0224E4C0 - _0224E464 - 2 ; case 2
	.short _0224E4D4 - _0224E464 - 2 ; case 3
_0224E46C:
	ldr r0, _0224E4F0 ; =0x0000314C
	ldrb r1, [r7, r0]
	mov r0, #2
	tst r0, r1
	beq _0224E486
	ldr r2, _0224E4F4 ; =0x000021B0
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov12_0223BDDC
_0224E486:
	ldr r0, _0224E4F0 ; =0x0000314C
	ldrb r1, [r7, r0]
	mov r0, #4
	tst r0, r1
	beq _0224E4DE
	ldr r2, _0224E4F8 ; =0x000021AC
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov12_0223BDDC
	b _0224E4DE
_0224E4A4:
	ldr r2, _0224E4F4 ; =0x000021B0
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov12_0223BDDC
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov12_0223BDDC
	b _0224E4DE
_0224E4C0:
	ldr r2, _0224E4F4 ; =0x000021B0
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl ov12_0223BDDC
	b _0224E4DE
_0224E4D4:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ov12_0223BDDC
_0224E4DE:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0224E42A
_0224E4E8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E4EC: .word 0x000021A8
_0224E4F0: .word 0x0000314C
_0224E4F4: .word 0x000021B0
_0224E4F8: .word 0x000021AC
	thumb_func_end ov12_0224E414

	thumb_func_start ov12_0224E4FC
ov12_0224E4FC: ; 0x0224E4FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r1, #0
	str r2, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	str r0, [sp]
	bl ov12_0223A880
	ldr r1, [sp, #4]
	mov r2, #0xc0
	add r5, r1, #0
	mov r1, #0xb5
	lsl r1, r1, #6
	add r1, r7, r1
	mul r5, r2
	str r1, [sp, #0x18]
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_0206E540
	ldr r1, [sp, #0x18]
	mov r2, #0
	strh r0, [r1, r5]
	add r0, r4, #0
	mov r1, #0xa5
	bl sub_0206E540
	ldr r1, _0224E8B4 ; =0x00002D42
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E8B8 ; =0x00002D44
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E8BC ; =0x00002D46
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E8C0 ; =0x00002D48
	add r2, r7, r5
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_0206E540
	add r1, r7, r5
	ldr r2, _0224E8C4 ; =0x00002D4A
	str r1, [sp, #0xc]
	strh r0, [r1, r2]
	add r0, r1, #0
	mov r6, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
_0224E586:
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp, #0x14]
	ldr r1, _0224E8C8 ; =0x00002D4C
	strh r0, [r2, r1]
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp, #0x10]
	ldr r1, _0224E8CC ; =0x00002D6C
	strb r0, [r2, r1]
	add r1, r6, #0
	add r0, r4, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp, #0x10]
	ldr r1, _0224E8D0 ; =0x00002D70
	add r6, r6, #1
	strb r0, [r2, r1]
	ldr r0, [sp, #0x14]
	add r0, r0, #2
	str r0, [sp, #0x14]
	add r0, r2, #0
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r6, #4
	blt _0224E586
	add r0, r1, #0
	sub r0, #0x1c
	add r6, r7, r0
	add r0, r4, #0
	mov r1, #0x46
	mov r2, #0
	bl sub_0206E540
	ldr r1, [r6, r5]
	mov r2, #0x1f
	bic r1, r2
	mov r2, #0x1f
	and r0, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x47
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8D4 ; =0xFFFFFC1F
	lsr r0, r0, #0x16
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x48
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8D8 ; =0xFFFF83FF
	lsr r0, r0, #0x11
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x49
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8DC ; =0xFFF07FFF
	lsr r0, r0, #0xc
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4a
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8E0 ; =0xFE0FFFFF
	lsr r0, r0, #7
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4b
	mov r2, #0
	bl sub_0206E540
	lsl r0, r0, #0x1b
	ldr r2, [r6, r5]
	ldr r1, _0224E8E4 ; =0xC1FFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	ldr r2, [r6, r5]
	ldr r1, _0224E8E8 ; =0xBFFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r6, r5]
	add r0, r4, #0
	mov r1, #0x4d
	mov r2, #0
	bl sub_0206E540
	ldr r2, [r6, r5]
	ldr r1, _0224E8EC ; =0x7FFFFFFF
	lsl r0, r0, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r6, r5]
	ldr r0, _0224E8F0 ; =0x0000213C
	ldr r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	bne _0224E6B2
	ldr r0, _0224E8F4 ; =0x00002D58
	mov r2, #0
	mov r1, #6
_0224E6A4:
	ldr r3, [sp, #0xc]
	add r2, r2, #1
	strb r1, [r3, r0]
	add r3, r3, #1
	str r3, [sp, #0xc]
	cmp r2, #8
	blt _0224E6A4
_0224E6B2:
	ldr r0, _0224E8F8 ; =0x00002D68
	mov r1, #1
	add r0, r7, r0
	ldr r2, [r0, r5]
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #2
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #4
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #8
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x10
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x20
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x40
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	mov r1, #0x80
	bic r2, r1
	str r2, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _0224E8FC ; =0xFFFFFEFF
	and r1, r2
	str r1, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _0224E900 ; =0xFFFFFDFF
	and r1, r2
	str r1, [r0, r5]
	ldr r2, [r0, r5]
	ldr r1, _0224E904 ; =0xFFFFFBFF
	and r1, r2
	str r1, [r0, r5]
	add r0, r4, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E908 ; =0x00002D64
	add r2, r7, r5
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E90C ; =0x00002D65
	add r2, r7, r5
	strb r0, [r2, r1]
	add r1, #0x59
	add r0, r7, r1
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0206FF88
	ldr r1, [sp, #0x1c]
	mov r2, #0xf
	ldrb r1, [r1, r5]
	bic r1, r2
	mov r2, #0xf
	and r0, r2
	orr r1, r0
	ldr r0, [sp, #0x1c]
	strb r1, [r0, r5]
	ldr r0, _0224E910 ; =0x00002D66
	add r0, r7, r0
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl sub_0207003C
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x1f
	ldrb r1, [r1, r5]
	mov r2, #0x20
	lsr r0, r0, #0x1a
	bic r1, r2
	orr r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
	ldr r0, [sp]
	bl ov12_0223A7E0
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _0224E792
	ldr r2, _0224E914 ; =0x00002D67
	mov r0, #0
	add r3, r7, r5
	add r1, r2, #0
	strb r0, [r3, r2]
	add r2, #0x51
	add r1, #0x45
	add r2, r7, r2
	str r0, [r3, r1]
	add r1, r2, r5
	str r1, [sp, #8]
	strh r0, [r2, r5]
	b _0224E7C6
_0224E792:
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E914 ; =0x00002D67
	add r2, r7, r5
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E918 ; =0x00002DAC
	add r2, r7, r5
	str r0, [r2, r1]
	add r1, #0xc
	add r6, r7, r1
	add r0, r6, r5
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_0206E540
	strh r0, [r6, r5]
_0224E7C6:
	ldr r0, [sp]
	bl ov12_0223A7E0
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _0224E7EE
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov12_0223AB1C
	cmp r0, #0
	bne _0224E7EE
	ldr r0, [sp, #0x20]
	ldrb r1, [r0, r5]
	mov r0, #0x1f
	bic r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
	b _0224E80E
_0224E7EE:
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_0206E540
	ldr r1, [sp, #0x20]
	mov r2, #0x1f
	ldrb r1, [r1, r5]
	lsl r0, r0, #0x18
	bic r1, r2
	lsr r2, r0, #0x18
	mov r0, #0x1f
	and r0, r2
	orr r1, r0
	ldr r0, [sp, #0x20]
	strb r1, [r0, r5]
_0224E80E:
	ldr r0, [sp, #4]
	mov r1, #0xc0
	add r6, r0, #0
	mul r6, r1
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E91C ; =0x00002D74
	add r2, r7, r6
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E920 ; =0x00002D75
	add r2, r7, r6
	strb r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E924 ; =0x00002D8C
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E928 ; =0x00002D90
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E92C ; =0x00002DA4
	add r2, r7, r6
	str r0, [r2, r1]
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl sub_0206E540
	ldr r1, _0224E930 ; =0x00002DA8
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224E934 ; =0x00002DB4
	add r2, r7, r6
	str r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0x9d
	mov r2, #0
	bl sub_0206E540
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1c
	ldrb r1, [r1, r5]
	mov r2, #0xf0
	lsr r0, r0, #0x18
	bic r1, r2
	orr r1, r0
	ldr r0, [sp, #0x1c]
	strb r1, [r0, r5]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AA88
	ldr r1, _0224E938 ; =0x00002DBF
	b _0224E93C
	nop
_0224E8B4: .word 0x00002D42
_0224E8B8: .word 0x00002D44
_0224E8BC: .word 0x00002D46
_0224E8C0: .word 0x00002D48
_0224E8C4: .word 0x00002D4A
_0224E8C8: .word 0x00002D4C
_0224E8CC: .word 0x00002D6C
_0224E8D0: .word 0x00002D70
_0224E8D4: .word 0xFFFFFC1F
_0224E8D8: .word 0xFFFF83FF
_0224E8DC: .word 0xFFF07FFF
_0224E8E0: .word 0xFE0FFFFF
_0224E8E4: .word 0xC1FFFFFF
_0224E8E8: .word 0xBFFFFFFF
_0224E8EC: .word 0x7FFFFFFF
_0224E8F0: .word 0x0000213C
_0224E8F4: .word 0x00002D58
_0224E8F8: .word 0x00002D68
_0224E8FC: .word 0xFFFFFEFF
_0224E900: .word 0xFFFFFDFF
_0224E904: .word 0xFFFFFBFF
_0224E908: .word 0x00002D64
_0224E90C: .word 0x00002D65
_0224E910: .word 0x00002D66
_0224E914: .word 0x00002D67
_0224E918: .word 0x00002DAC
_0224E91C: .word 0x00002D74
_0224E920: .word 0x00002D75
_0224E924: .word 0x00002D8C
_0224E928: .word 0x00002D90
_0224E92C: .word 0x00002DA4
_0224E930: .word 0x00002DA8
_0224E934: .word 0x00002DB4
_0224E938: .word 0x00002DBF
_0224E93C:
	add r2, r7, r6
	strb r0, [r2, r1]
	ldr r0, [sp, #0x20]
	ldrb r0, [r0, r5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	bl sub_02091510
	mov r0, #5
	bl sub_02091308
	mov r1, #0
	mov r2, #5
	str r0, [sp, #0x24]
	bl sub_02091334
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x24]
	ldrh r1, [r1, r5]
	bl sub_02091430
	ldr r1, _0224E9F8 ; =0x00002D60
	add r2, r7, r6
	str r0, [r2, r1]
	ldr r0, [sp, #0x24]
	bl sub_020913C4
	ldr r0, [sp, #0x24]
	bl sub_02091320
	ldr r2, _0224E9FC ; =0x00002D76
	add r0, r4, #0
	add r2, r7, r2
	mov r1, #0x75
	add r2, r2, r6
	bl sub_0206E540
	ldr r2, _0224EA00 ; =0x00002D94
	add r0, r4, #0
	add r2, r7, r2
	mov r1, #0x90
	add r2, r2, r6
	bl sub_0206E540
	ldr r0, _0224EA04 ; =0x00002DBC
	mov r2, #0
	add r1, r7, r6
	strb r2, [r1, r0]
	add r0, r0, #1
	strb r2, [r1, r0]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov12_0223AB1C
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r7, r0
	ldr r0, _0224EA08 ; =0x0000219C
	ldrb r0, [r1, r0]
	bl sub_020726C0
	lsl r1, r4, #3
	add r2, r7, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	beq _0224E9DE
	ldr r0, [sp, #8]
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0224EA0C ; =0x00002DCC
	add sp, #0x28
	add r2, r7, r0
	ldr r1, [r2, r5]
	ldr r0, _0224EA10 ; =0xFFBFFFFF
	and r0, r1
	str r0, [r2, r5]
	pop {r3, r4, r5, r6, r7, pc}
_0224E9DE:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0224E9F4
	ldr r0, _0224EA0C ; =0x00002DCC
	add r2, r7, r0
	mov r0, #1
	ldr r1, [r2, r5]
	lsl r0, r0, #0x16
	orr r0, r1
	str r0, [r2, r5]
_0224E9F4:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E9F8: .word 0x00002D60
_0224E9FC: .word 0x00002D76
_0224EA00: .word 0x00002D94
_0224EA04: .word 0x00002DBC
_0224EA08: .word 0x0000219C
_0224EA0C: .word 0x00002DCC
_0224EA10: .word 0xFFBFFFFF
	thumb_func_end ov12_0224E4FC

	thumb_func_start ov12_0224EA14
ov12_0224EA14: ; 0x0224EA14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	str r1, [sp]
	add r1, r5, #0
	add r2, r3, #0
	bl ov12_0223A880
	mov r1, #0xc0
	mul r1, r5
	str r1, [sp, #4]
	mov r1, #0xa5
	mov r2, #0
	add r6, r0, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB68 ; =0x00002D42
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB6C ; =0x00002D44
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB70 ; =0x00002D46
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB74 ; =0x00002D48
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB78 ; =0x00002D4A
	strh r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB7C ; =0x00002D74
	strb r0, [r2, r1]
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB80 ; =0x00002D75
	strb r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB84 ; =0x00002D8C
	str r0, [r2, r1]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB88 ; =0x00002D90
	str r0, [r2, r1]
	add r0, r1, #0
	add r0, #0x20
	ldr r2, [r2, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r2
	bne _0224EB64
	mov r0, #0xc0
	mul r0, r5
	ldr r2, [sp]
	str r0, [sp, #8]
	add r7, r2, r0
	add r1, #0x3c
	add r0, r2, #0
	add r0, r0, r1
	mov r4, #0
	add r5, r7, #0
	str r0, [sp, #0xc]
_0224EB02:
	add r0, r4, #0
	bl sub_020726C0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r1, [r2, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1c
	tst r0, r1
	bne _0224EB46
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_0206E540
	ldr r1, _0224EB8C ; =0x00002D4C
	mov r2, #0
	strh r0, [r7, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	bl sub_0206E540
	ldr r1, _0224EB90 ; =0x00002D6C
	mov r2, #0
	strb r0, [r5, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	bl sub_0206E540
	ldr r1, _0224EB94 ; =0x00002D70
	strb r0, [r5, r1]
_0224EB46:
	add r4, r4, #1
	add r7, r7, #2
	add r5, r5, #1
	cmp r4, #4
	blt _0224EB02
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl sub_0206E540
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r2, r2, r1
	ldr r1, _0224EB98 ; =0x00002DA4
	str r0, [r2, r1]
_0224EB64:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224EB68: .word 0x00002D42
_0224EB6C: .word 0x00002D44
_0224EB70: .word 0x00002D46
_0224EB74: .word 0x00002D48
_0224EB78: .word 0x00002D4A
_0224EB7C: .word 0x00002D74
_0224EB80: .word 0x00002D75
_0224EB84: .word 0x00002D8C
_0224EB88: .word 0x00002D90
_0224EB8C: .word 0x00002D4C
_0224EB90: .word 0x00002D6C
_0224EB94: .word 0x00002D70
_0224EB98: .word 0x00002DA4
	thumb_func_end ov12_0224EA14

	thumb_func_start ov12_0224EB9C
ov12_0224EB9C: ; 0x0224EB9C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020075BC
	mov r1, #0x19
	lsl r1, r1, #6
	cmp r0, r1
	blo _0224EBB8
	bl GF_AssertFail
_0224EBB8:
	add r0, r5, #0
	add r0, #0xac
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xb0
	str r6, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x27
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02007508
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0224EB9C

	thumb_func_start ov12_0224EBDC
ov12_0224EBDC: ; 0x0224EBDC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020075BC
	mov r1, #0x19
	lsl r1, r1, #6
	cmp r0, r1
	blo _0224EBF8
	bl GF_AssertFail
_0224EBF8:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #4
	blt _0224EC06
	bl GF_AssertFail
_0224EC06:
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r0, r5, #0
	add r0, #0xac
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	add r1, #0xbc
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r0, r5, #0
	add r0, #0xb0
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	add r1, #0xcc
	str r0, [r1]
	add r1, r5, #0
	add r1, #0xb8
	ldr r1, [r1]
	add r0, r5, #0
	add r0, #0xb4
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	add r1, #0xdc
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	add r2, r6, #0
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r5, #0
	add r0, #0xac
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xb0
	str r6, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x27
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #0
	bl sub_02007508
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0224EBDC

	thumb_func_start ov12_0224EC74
ov12_0224EC74: ; 0x0224EC74
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1]
	cmp r1, #0
	beq _0224ECBE
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1]
	sub r2, r1, #1
	add r1, r4, #0
	add r1, #0xb8
	str r2, [r1]
	add r1, r4, #0
	add r1, #0xb8
	ldr r1, [r1]
	lsl r2, r1, #2
	add r1, r4, r2
	add r2, r4, r2
	add r1, #0xbc
	add r2, #0xcc
	ldr r1, [r1]
	ldr r2, [r2]
	bl ov12_0224EB9C
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xdc
	ldr r0, [r0]
	add r4, #0xb4
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_0224ECBE:
	mov r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov12_0224EC74

	thumb_func_start ov12_0224ECC4
ov12_0224ECC4: ; 0x0224ECC4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	lsl r0, r1, #6
	lsl r6, r2, #4
	add r1, r4, r0
	add r5, r1, r6
	mov r1, #0x22
	add r7, r3, #0
	mov r3, #0
	lsl r1, r1, #8
_0224ECD8:
	ldrb r2, [r5, r1]
	cmp r2, #0
	bne _0224ECEC
	add r0, r4, r0
	add r0, r0, r6
	add r1, r0, r3
	mov r0, #0x22
	lsl r0, r0, #8
	strb r7, [r1, r0]
	b _0224ECF4
_0224ECEC:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #0x10
	blt _0224ECD8
_0224ECF4:
	cmp r3, #0x10
	blt _0224ECFC
	bl GF_AssertFail
_0224ECFC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov12_0224ECC4

	thumb_func_start ov12_0224ED00
ov12_0224ED00: ; 0x0224ED00
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp]
	add r4, r3, #0
	bne _0224ED10
	bl GF_AssertFail
_0224ED10:
	ldr r0, [sp]
	lsl r6, r5, #6
	lsl r5, r0, #4
	add r0, r7, r6
	add r3, r0, r5
	mov r0, #0x22
	mov r2, #0
	lsl r0, r0, #8
_0224ED20:
	ldrb r1, [r3, r0]
	cmp r4, r1
	bne _0224ED36
	add r1, r7, r6
	add r1, r1, r5
	add r3, r1, r2
	mov r1, #0x22
	mov r0, #0
	lsl r1, r1, #8
	strb r0, [r3, r1]
	b _0224ED3E
_0224ED36:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x10
	blt _0224ED20
_0224ED3E:
	cmp r2, #0x10
	blt _0224ED46
	bl GF_AssertFail
_0224ED46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224ED00

	thumb_func_start ov12_0224ED48
ov12_0224ED48: ; 0x0224ED48
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0
	mov r4, #0x22
	mov lr, r0
	mov ip, r2
	add r7, r0, #0
	add r6, r2, #0
	lsl r4, r4, #8
_0224ED58:
	mov r0, #0
	add r3, r7, #0
_0224ED5C:
	add r1, r6, #0
_0224ED5E:
	add r5, r3, r1
	ldrb r5, [r5, r4]
	add r1, r1, #1
	add r2, r2, r5
	cmp r1, #0x10
	blt _0224ED5E
	add r0, r0, #1
	add r3, #0x10
	cmp r0, #4
	blt _0224ED5C
	mov r0, ip
	add r0, r0, #1
	add r7, #0x40
	mov ip, r0
	cmp r0, #4
	blt _0224ED58
	cmp r2, #0
	bne _0224ED8A
	ldr r1, _0224ED98 ; =0x00003148
	mov r3, #0
	mov r0, lr
	str r3, [r0, r1]
_0224ED8A:
	cmp r2, #0
	bne _0224ED92
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224ED92:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224ED98: .word 0x00003148
	thumb_func_end ov12_0224ED48

	thumb_func_start ov12_0224ED9C
ov12_0224ED9C: ; 0x0224ED9C
	push {r3, lr}
	ldr r1, _0224EDB8 ; =0x00003148
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	ldr r1, [r0, r1]
	ldr r0, _0224EDBC ; =0x00000708
	cmp r1, r0
	ble _0224EDB4
	mov r0, #1
	bl sub_02039AD8
_0224EDB4:
	pop {r3, pc}
	nop
_0224EDB8: .word 0x00003148
_0224EDBC: .word 0x00000708
	thumb_func_end ov12_0224ED9C

	thumb_func_start ov12_0224EDC0
ov12_0224EDC0: ; 0x0224EDC0
	push {r3, r4}
	lsl r1, r1, #8
	add r4, r0, r1
	mov r3, #0
	mov r0, #0x23
	mov r1, #1
	add r2, r3, #0
	lsl r0, r0, #8
	lsl r1, r1, #8
_0224EDD2:
	add r3, r3, #1
	strb r2, [r4, r0]
	add r4, r4, #1
	cmp r3, r1
	blt _0224EDD2
	pop {r3, r4}
	bx lr
	thumb_func_end ov12_0224EDC0

	thumb_func_start ov12_0224EDE0
ov12_0224EDE0: ; 0x0224EDE0
	push {r4, r5, r6, lr}
	mov r4, #0xb5
	lsl r4, r4, #6
	add r5, r0, r4
	mov r6, #0xc0
	add r4, r1, #0
	mul r4, r6
	add r4, r5, r4
	cmp r2, #0x64
	bls _0224EDF6
	b _0224F15E
_0224EDF6:
	add r5, r2, r2
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0224EE02: ; jump table
	.short _0224EECC - _0224EE02 - 2 ; case 0
	.short _0224EED0 - _0224EE02 - 2 ; case 1
	.short _0224EED4 - _0224EE02 - 2 ; case 2
	.short _0224EED8 - _0224EE02 - 2 ; case 3
	.short _0224EEDC - _0224EE02 - 2 ; case 4
	.short _0224EEE0 - _0224EE02 - 2 ; case 5
	.short _0224EEE4 - _0224EE02 - 2 ; case 6
	.short _0224EEE4 - _0224EE02 - 2 ; case 7
	.short _0224EEE4 - _0224EE02 - 2 ; case 8
	.short _0224EEE4 - _0224EE02 - 2 ; case 9
	.short _0224EEEE - _0224EE02 - 2 ; case 10
	.short _0224EEF6 - _0224EE02 - 2 ; case 11
	.short _0224EEFE - _0224EE02 - 2 ; case 12
	.short _0224EF06 - _0224EE02 - 2 ; case 13
	.short _0224EF0E - _0224EE02 - 2 ; case 14
	.short _0224EF16 - _0224EE02 - 2 ; case 15
	.short _0224EF1E - _0224EE02 - 2 ; case 16
	.short _0224EF26 - _0224EE02 - 2 ; case 17
	.short _0224EF2C - _0224EE02 - 2 ; case 18
	.short _0224EF2C - _0224EE02 - 2 ; case 19
	.short _0224EF2C - _0224EE02 - 2 ; case 20
	.short _0224EF2C - _0224EE02 - 2 ; case 21
	.short _0224EF2C - _0224EE02 - 2 ; case 22
	.short _0224EF2C - _0224EE02 - 2 ; case 23
	.short _0224EF2C - _0224EE02 - 2 ; case 24
	.short _0224EF2C - _0224EE02 - 2 ; case 25
	.short _0224EF36 - _0224EE02 - 2 ; case 26
	.short _0224EF3C - _0224EE02 - 2 ; case 27
	.short _0224EF3C - _0224EE02 - 2 ; case 28
	.short _0224EF42 - _0224EE02 - 2 ; case 29
	.short _0224EF4C - _0224EE02 - 2 ; case 30
	.short _0224EF56 - _0224EE02 - 2 ; case 31
	.short _0224EF56 - _0224EE02 - 2 ; case 32
	.short _0224EF56 - _0224EE02 - 2 ; case 33
	.short _0224EF56 - _0224EE02 - 2 ; case 34
	.short _0224EF60 - _0224EE02 - 2 ; case 35
	.short _0224EF60 - _0224EE02 - 2 ; case 36
	.short _0224EF60 - _0224EE02 - 2 ; case 37
	.short _0224EF60 - _0224EE02 - 2 ; case 38
	.short _0224EF6A - _0224EE02 - 2 ; case 39
	.short _0224EF6A - _0224EE02 - 2 ; case 40
	.short _0224EF6A - _0224EE02 - 2 ; case 41
	.short _0224EF6A - _0224EE02 - 2 ; case 42
	.short _0224EF7E - _0224EE02 - 2 ; case 43
	.short _0224EF84 - _0224EE02 - 2 ; case 44
	.short _0224EF8A - _0224EE02 - 2 ; case 45
	.short _0224EF9C - _0224EE02 - 2 ; case 46
	.short _0224EFA8 - _0224EE02 - 2 ; case 47
	.short _0224EFAC - _0224EE02 - 2 ; case 48
	.short _0224EFB0 - _0224EE02 - 2 ; case 49
	.short _0224EFC6 - _0224EE02 - 2 ; case 50
	.short _0224EFCA - _0224EE02 - 2 ; case 51
	.short _0224EFCE - _0224EE02 - 2 ; case 52
	.short _0224EFD2 - _0224EE02 - 2 ; case 53
	.short _0224EFD6 - _0224EE02 - 2 ; case 54
	.short _0224EFDA - _0224EE02 - 2 ; case 55
	.short _0224EFE0 - _0224EE02 - 2 ; case 56
	.short _0224EFE6 - _0224EE02 - 2 ; case 57
	.short _0224EFEC - _0224EE02 - 2 ; case 58
	.short _0224EFF6 - _0224EE02 - 2 ; case 59
	.short _0224EFFC - _0224EE02 - 2 ; case 60
	.short _0224F002 - _0224EE02 - 2 ; case 61
	.short _0224F00C - _0224EE02 - 2 ; case 62
	.short _0224F016 - _0224EE02 - 2 ; case 63
	.short _0224F020 - _0224EE02 - 2 ; case 64
	.short _0224F02A - _0224EE02 - 2 ; case 65
	.short _0224F034 - _0224EE02 - 2 ; case 66
	.short _0224F03E - _0224EE02 - 2 ; case 67
	.short _0224F048 - _0224EE02 - 2 ; case 68
	.short _0224F052 - _0224EE02 - 2 ; case 69
	.short _0224F05C - _0224EE02 - 2 ; case 70
	.short _0224F066 - _0224EE02 - 2 ; case 71
	.short _0224F070 - _0224EE02 - 2 ; case 72
	.short _0224F07A - _0224EE02 - 2 ; case 73
	.short _0224F082 - _0224EE02 - 2 ; case 74
	.short _0224F08C - _0224EE02 - 2 ; case 75
	.short _0224F096 - _0224EE02 - 2 ; case 76
	.short _0224F0A0 - _0224EE02 - 2 ; case 77
	.short _0224F0AA - _0224EE02 - 2 ; case 78
	.short _0224F0B4 - _0224EE02 - 2 ; case 79
	.short _0224F0BE - _0224EE02 - 2 ; case 80
	.short _0224F0C8 - _0224EE02 - 2 ; case 81
	.short _0224F0D2 - _0224EE02 - 2 ; case 82
	.short _0224F0DC - _0224EE02 - 2 ; case 83
	.short _0224F0E6 - _0224EE02 - 2 ; case 84
	.short _0224F0F0 - _0224EE02 - 2 ; case 85
	.short _0224F0FA - _0224EE02 - 2 ; case 86
	.short _0224F104 - _0224EE02 - 2 ; case 87
	.short _0224F10A - _0224EE02 - 2 ; case 88
	.short _0224F110 - _0224EE02 - 2 ; case 89
	.short _0224F116 - _0224EE02 - 2 ; case 90
	.short _0224F11C - _0224EE02 - 2 ; case 91
	.short _0224F122 - _0224EE02 - 2 ; case 92
	.short _0224F128 - _0224EE02 - 2 ; case 93
	.short _0224F12E - _0224EE02 - 2 ; case 94
	.short _0224F134 - _0224EE02 - 2 ; case 95
	.short _0224F13A - _0224EE02 - 2 ; case 96
	.short _0224F142 - _0224EE02 - 2 ; case 97
	.short _0224F14A - _0224EE02 - 2 ; case 98
	.short _0224F15E - _0224EE02 - 2 ; case 99
	.short _0224F154 - _0224EE02 - 2 ; case 100
_0224EECC:
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224EED0:
	ldrh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0224EED4:
	ldrh r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0224EED8:
	ldrh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_0224EEDC:
	ldrh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0224EEE0:
	ldrh r0, [r4, #0xa]
	pop {r4, r5, r6, pc}
_0224EEE4:
	sub r0, r2, #6
	lsl r0, r0, #1
	add r0, r4, r0
	ldrh r0, [r0, #0xc]
	pop {r4, r5, r6, pc}
_0224EEEE:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EEF6:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EEFE:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EF06:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EF0E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #7
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EF16:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #2
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224EF1E:
	ldr r0, [r4, #0x14]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224EF26:
	ldr r0, [r4, #0x14]
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224EF2C:
	sub r2, #0x12
	add r1, r4, r2
	mov r0, #0x18
	ldrsb r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0224EF36:
	add r4, #0x27
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EF3C:
	bl ov12_022584AC
	pop {r4, r5, r6, pc}
_0224EF42:
	add r4, #0x7e
	ldrb r0, [r4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_0224EF4C:
	add r4, #0x26
	ldrb r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224EF56:
	sub r2, #0x1f
	add r0, r4, r2
	add r0, #0x2c
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_0224EF60:
	sub r2, #0x23
	add r0, r4, r2
	add r0, #0x30
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_0224EF6A:
	sub r2, #0x27
	lsl r0, r2, #1
	add r1, r4, r2
	add r0, r4, r0
	add r1, #0x30
	ldrh r0, [r0, #0xc]
	ldrb r1, [r1]
	bl sub_0207332C
	pop {r4, r5, r6, pc}
_0224EF7E:
	add r4, #0x34
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EF84:
	add r4, #0x35
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EF8A:
	mov r1, #0
_0224EF8C:
	ldrh r0, [r4, #0x36]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	cmp r1, #0xb
	blt _0224EF8C
	b _0224F162
_0224EF9C:
	add r4, #0x36
	add r0, r3, #0
	add r1, r4, #0
	bl sub_020269A0
	b _0224F162
_0224EFA8:
	ldr r0, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_0224EFAC:
	ldr r0, [r4, #0x50]
	pop {r4, r5, r6, pc}
_0224EFB0:
	mov r1, #0
_0224EFB2:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
	add r1, r1, #1
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	cmp r1, #0xb
	blt _0224EFB2
	b _0224F162
_0224EFC6:
	ldr r0, [r4, #0x64]
	pop {r4, r5, r6, pc}
_0224EFCA:
	ldr r0, [r4, #0x68]
	pop {r4, r5, r6, pc}
_0224EFCE:
	ldr r0, [r4, #0x6c]
	pop {r4, r5, r6, pc}
_0224EFD2:
	ldr r0, [r4, #0x70]
	pop {r4, r5, r6, pc}
_0224EFD6:
	ldr r0, [r4, #0x74]
	pop {r4, r5, r6, pc}
_0224EFDA:
	add r4, #0x78
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224EFE0:
	add r4, #0x7c
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EFE6:
	add r4, #0x7d
	ldrb r0, [r4]
	pop {r4, r5, r6, pc}
_0224EFEC:
	add r4, #0x7e
	ldrb r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_0224EFF6:
	add r4, #0x80
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224EFFC:
	add r4, #0x84
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F002:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F00C:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F016:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F020:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F02A:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F034:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F03E:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0xe
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F048:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #0xb
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F052:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #8
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F05C:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #5
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F066:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #2
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F070:
	add r4, #0x88
	ldr r0, [r4]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F07A:
	add r4, #0x88
	ldr r0, [r4]
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F082:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F08C:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_0224F096:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F0A0:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	pop {r4, r5, r6, pc}
_0224F0AA:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F0B4:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F0BE:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0xd
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F0C8:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	pop {r4, r5, r6, pc}
_0224F0D2:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #9
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F0DC:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #5
	lsr r0, r0, #0x1c
	pop {r4, r5, r6, pc}
_0224F0E6:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #4
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F0F0:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #3
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F0FA:
	add r4, #0x8c
	ldr r0, [r4]
	lsl r0, r0, #2
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F104:
	add r4, #0x90
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F10A:
	add r4, #0x94
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F110:
	add r4, #0x98
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F116:
	add r4, #0xa0
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F11C:
	add r4, #0xa4
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F122:
	add r4, #0xa8
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224F128:
	add r4, #0xac
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224F12E:
	add r4, #0xaa
	ldrh r0, [r4]
	pop {r4, r5, r6, pc}
_0224F134:
	add r4, #0xbc
	ldr r0, [r4]
	pop {r4, r5, r6, pc}
_0224F13A:
	ldr r0, [r4, #0x28]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F142:
	ldr r0, [r4, #0x28]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	pop {r4, r5, r6, pc}
_0224F14A:
	add r4, #0x26
	ldrb r0, [r4]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r4, r5, r6, pc}
_0224F154:
	add r6, #0x78
	ldr r2, [r0, r6]
	bl ov12_0224EDE0
	pop {r4, r5, r6, pc}
_0224F15E:
	bl GF_AssertFail
_0224F162:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov12_0224EDE0

	thumb_func_start ov12_0224F168
ov12_0224F168: ; 0x0224F168
	push {r4, r5, r6, lr}
	add r5, r2, #0
	mov r2, #0xb5
	lsl r2, r2, #6
	add r4, r0, r2
	mov r6, #0xc0
	add r2, r1, #0
	mul r2, r6
	add r2, r4, r2
	cmp r5, #0x64
	bls _0224F180
	b _0224F77E
_0224F180:
	add r4, r5, r5
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_0224F18C: ; jump table
	.short _0224F256 - _0224F18C - 2 ; case 0
	.short _0224F25C - _0224F18C - 2 ; case 1
	.short _0224F262 - _0224F18C - 2 ; case 2
	.short _0224F268 - _0224F18C - 2 ; case 3
	.short _0224F26E - _0224F18C - 2 ; case 4
	.short _0224F274 - _0224F18C - 2 ; case 5
	.short _0224F27A - _0224F18C - 2 ; case 6
	.short _0224F27A - _0224F18C - 2 ; case 7
	.short _0224F27A - _0224F18C - 2 ; case 8
	.short _0224F27A - _0224F18C - 2 ; case 9
	.short _0224F286 - _0224F18C - 2 ; case 10
	.short _0224F298 - _0224F18C - 2 ; case 11
	.short _0224F2AA - _0224F18C - 2 ; case 12
	.short _0224F2BC - _0224F18C - 2 ; case 13
	.short _0224F2CE - _0224F18C - 2 ; case 14
	.short _0224F2E0 - _0224F18C - 2 ; case 15
	.short _0224F2F2 - _0224F18C - 2 ; case 16
	.short _0224F304 - _0224F18C - 2 ; case 17
	.short _0224F314 - _0224F18C - 2 ; case 18
	.short _0224F314 - _0224F18C - 2 ; case 19
	.short _0224F314 - _0224F18C - 2 ; case 20
	.short _0224F314 - _0224F18C - 2 ; case 21
	.short _0224F314 - _0224F18C - 2 ; case 22
	.short _0224F314 - _0224F18C - 2 ; case 23
	.short _0224F314 - _0224F18C - 2 ; case 24
	.short _0224F314 - _0224F18C - 2 ; case 25
	.short _0224F320 - _0224F18C - 2 ; case 26
	.short _0224F328 - _0224F18C - 2 ; case 27
	.short _0224F330 - _0224F18C - 2 ; case 28
	.short _0224F338 - _0224F18C - 2 ; case 29
	.short _0224F350 - _0224F18C - 2 ; case 30
	.short _0224F368 - _0224F18C - 2 ; case 31
	.short _0224F368 - _0224F18C - 2 ; case 32
	.short _0224F368 - _0224F18C - 2 ; case 33
	.short _0224F368 - _0224F18C - 2 ; case 34
	.short _0224F374 - _0224F18C - 2 ; case 35
	.short _0224F374 - _0224F18C - 2 ; case 36
	.short _0224F374 - _0224F18C - 2 ; case 37
	.short _0224F374 - _0224F18C - 2 ; case 38
	.short _0224F380 - _0224F18C - 2 ; case 39
	.short _0224F380 - _0224F18C - 2 ; case 40
	.short _0224F380 - _0224F18C - 2 ; case 41
	.short _0224F380 - _0224F18C - 2 ; case 42
	.short _0224F386 - _0224F18C - 2 ; case 43
	.short _0224F38E - _0224F18C - 2 ; case 44
	.short _0224F396 - _0224F18C - 2 ; case 45
	.short _0224F77E - _0224F18C - 2 ; case 46
	.short _0224F3A8 - _0224F18C - 2 ; case 47
	.short _0224F3B0 - _0224F18C - 2 ; case 48
	.short _0224F3B6 - _0224F18C - 2 ; case 49
	.short _0224F3CC - _0224F18C - 2 ; case 50
	.short _0224F3D2 - _0224F18C - 2 ; case 51
	.short _0224F3D8 - _0224F18C - 2 ; case 52
	.short _0224F3DE - _0224F18C - 2 ; case 53
	.short _0224F3E4 - _0224F18C - 2 ; case 54
	.short _0224F3EA - _0224F18C - 2 ; case 55
	.short _0224F3F2 - _0224F18C - 2 ; case 56
	.short _0224F3FA - _0224F18C - 2 ; case 57
	.short _0224F402 - _0224F18C - 2 ; case 58
	.short _0224F41A - _0224F18C - 2 ; case 59
	.short _0224F422 - _0224F18C - 2 ; case 60
	.short _0224F42A - _0224F18C - 2 ; case 61
	.short _0224F442 - _0224F18C - 2 ; case 62
	.short _0224F45A - _0224F18C - 2 ; case 63
	.short _0224F472 - _0224F18C - 2 ; case 64
	.short _0224F48A - _0224F18C - 2 ; case 65
	.short _0224F4A2 - _0224F18C - 2 ; case 66
	.short _0224F4BA - _0224F18C - 2 ; case 67
	.short _0224F4D2 - _0224F18C - 2 ; case 68
	.short _0224F4EA - _0224F18C - 2 ; case 69
	.short _0224F502 - _0224F18C - 2 ; case 70
	.short _0224F51A - _0224F18C - 2 ; case 71
	.short _0224F532 - _0224F18C - 2 ; case 72
	.short _0224F54A - _0224F18C - 2 ; case 73
	.short _0224F560 - _0224F18C - 2 ; case 74
	.short _0224F578 - _0224F18C - 2 ; case 75
	.short _0224F590 - _0224F18C - 2 ; case 76
	.short _0224F5A8 - _0224F18C - 2 ; case 77
	.short _0224F5C0 - _0224F18C - 2 ; case 78
	.short _0224F5D8 - _0224F18C - 2 ; case 79
	.short _0224F5F0 - _0224F18C - 2 ; case 80
	.short _0224F608 - _0224F18C - 2 ; case 81
	.short _0224F620 - _0224F18C - 2 ; case 82
	.short _0224F690 - _0224F18C - 2 ; case 83
	.short _0224F6A8 - _0224F18C - 2 ; case 84
	.short _0224F6C0 - _0224F18C - 2 ; case 85
	.short _0224F6D8 - _0224F18C - 2 ; case 86
	.short _0224F6F0 - _0224F18C - 2 ; case 87
	.short _0224F6F8 - _0224F18C - 2 ; case 88
	.short _0224F700 - _0224F18C - 2 ; case 89
	.short _0224F708 - _0224F18C - 2 ; case 90
	.short _0224F710 - _0224F18C - 2 ; case 91
	.short _0224F718 - _0224F18C - 2 ; case 92
	.short _0224F720 - _0224F18C - 2 ; case 93
	.short _0224F728 - _0224F18C - 2 ; case 94
	.short _0224F730 - _0224F18C - 2 ; case 95
	.short _0224F738 - _0224F18C - 2 ; case 96
	.short _0224F74A - _0224F18C - 2 ; case 97
	.short _0224F75C - _0224F18C - 2 ; case 98
	.short _0224F77E - _0224F18C - 2 ; case 99
	.short _0224F774 - _0224F18C - 2 ; case 100
_0224F256:
	ldrh r0, [r3]
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F25C:
	ldrh r0, [r3]
	strh r0, [r2, #2]
	pop {r4, r5, r6, pc}
_0224F262:
	ldrh r0, [r3]
	strh r0, [r2, #4]
	pop {r4, r5, r6, pc}
_0224F268:
	ldrh r0, [r3]
	strh r0, [r2, #6]
	pop {r4, r5, r6, pc}
_0224F26E:
	ldrh r0, [r3]
	strh r0, [r2, #8]
	pop {r4, r5, r6, pc}
_0224F274:
	ldrh r0, [r3]
	strh r0, [r2, #0xa]
	pop {r4, r5, r6, pc}
_0224F27A:
	sub r0, r5, #6
	lsl r0, r0, #1
	ldrh r1, [r3]
	add r0, r2, r0
	strh r1, [r0, #0xc]
	pop {r4, r5, r6, pc}
_0224F286:
	ldr r4, [r2, #0x14]
	mov r0, #0x1f
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #0x1f
	and r0, r1
	orr r0, r4
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F298:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F62C ; =0xFFFFFC1F
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2AA:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F630 ; =0xFFFF83FF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2BC:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F634 ; =0xFFF07FFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2CE:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F638 ; =0xFE0FFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #7
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2E0:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F63C ; =0xC1FFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1b
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F2F2:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F640 ; =0xBFFFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F304:
	ldr r1, [r2, #0x14]
	ldr r0, _0224F644 ; =0x7FFFFFFF
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	orr r0, r1
	str r0, [r2, #0x14]
	pop {r4, r5, r6, pc}
_0224F314:
	mov r0, #0
	ldrsb r1, [r3, r0]
	sub r5, #0x12
	add r0, r2, r5
	strb r1, [r0, #0x18]
	pop {r4, r5, r6, pc}
_0224F320:
	ldrb r0, [r3]
	add r2, #0x27
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F328:
	ldrb r0, [r3]
	add r2, #0x24
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F330:
	ldrb r0, [r3]
	add r2, #0x25
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F338:
	add r0, r2, #0
	add r0, #0x7e
	ldrb r4, [r0]
	ldrb r1, [r3]
	mov r0, #0xf
	bic r4, r0
	mov r0, #0xf
	and r0, r1
	orr r0, r4
	add r2, #0x7e
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F350:
	add r0, r2, #0
	add r0, #0x26
	ldrb r1, [r0]
	mov r0, #0x20
	add r2, #0x26
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1a
	orr r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F368:
	sub r5, #0x1f
	add r0, r2, r5
	ldrb r1, [r3]
	add r0, #0x2c
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_0224F374:
	sub r5, #0x23
	add r0, r2, r5
	ldrb r1, [r3]
	add r0, #0x30
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_0224F380:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_0224F386:
	ldrb r0, [r3]
	add r2, #0x34
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F38E:
	ldrb r0, [r3]
	add r2, #0x35
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F396:
	mov r1, #0
_0224F398:
	ldrh r0, [r3]
	add r1, r1, #1
	add r3, r3, #2
	strh r0, [r2, #0x36]
	add r2, r2, #2
	cmp r1, #0xb
	blt _0224F398
	pop {r4, r5, r6, pc}
_0224F3A8:
	mov r0, #0
	ldrsh r0, [r3, r0]
	str r0, [r2, #0x4c]
	pop {r4, r5, r6, pc}
_0224F3B0:
	ldrh r0, [r3]
	str r0, [r2, #0x50]
	pop {r4, r5, r6, pc}
_0224F3B6:
	mov r4, #0
_0224F3B8:
	ldrh r1, [r3]
	add r0, r2, #0
	add r0, #0x54
	add r4, r4, #1
	strh r1, [r0]
	add r3, r3, #2
	add r2, r2, #2
	cmp r4, #0xb
	blt _0224F3B8
	pop {r4, r5, r6, pc}
_0224F3CC:
	ldr r0, [r3]
	str r0, [r2, #0x64]
	pop {r4, r5, r6, pc}
_0224F3D2:
	ldr r0, [r3]
	str r0, [r2, #0x68]
	pop {r4, r5, r6, pc}
_0224F3D8:
	ldr r0, [r3]
	str r0, [r2, #0x6c]
	pop {r4, r5, r6, pc}
_0224F3DE:
	ldr r0, [r3]
	str r0, [r2, #0x70]
	pop {r4, r5, r6, pc}
_0224F3E4:
	ldr r0, [r3]
	str r0, [r2, #0x74]
	pop {r4, r5, r6, pc}
_0224F3EA:
	ldrh r0, [r3]
	add r2, #0x78
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F3F2:
	ldrb r0, [r3]
	add r2, #0x7c
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F3FA:
	ldrb r0, [r3]
	add r2, #0x7d
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F402:
	add r0, r2, #0
	add r0, #0x7e
	ldrb r1, [r0]
	mov r0, #0xf0
	add r2, #0x7e
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x18
	orr r0, r1
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F41A:
	ldr r0, [r3]
	add r2, #0x80
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F422:
	ldr r0, [r3]
	add r2, #0x84
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F42A:
	add r0, r2, #0
	add r0, #0x88
	ldr r4, [r0]
	mov r0, #7
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #7
	add r2, #0x88
	and r0, r1
	orr r0, r4
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F442:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	mov r0, #0x38
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x88
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F45A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	mov r0, #0xc0
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x88
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F472:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F648 ; =0xFFFFF8FF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x15
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F48A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F64C ; =0xFFFFE7FF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F4A2:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F650 ; =0xFFFF9FFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F4BA:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F654 ; =0xFFFC7FFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xe
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F4D2:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F658 ; =0xFFE3FFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xb
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F4EA:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F65C ; =0xFF1FFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #8
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F502:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F660 ; =0xF8FFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F51A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F664 ; =0xC7FFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F532:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F640 ; =0xBFFFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F54A:
	add r0, r2, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224F644 ; =0x7FFFFFFF
	add r2, #0x88
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F560:
	add r0, r2, #0
	add r0, #0x8c
	ldr r4, [r0]
	mov r0, #3
	bic r4, r0
	ldrb r1, [r3]
	mov r0, #3
	add r2, #0x8c
	and r0, r1
	orr r0, r4
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F578:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0x3c
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x8c
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1a
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F590:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0xc0
	bic r1, r0
	ldrb r0, [r3]
	add r2, #0x8c
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F5A8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F668 ; =0xFFFFFCFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F5C0:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F66C ; =0xFFFFE3FF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F5D8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F670 ; =0xFFFF1FFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x10
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F5F0:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F674 ; =0xFFF8FFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xd
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F608:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F678 ; =0xFFC7FFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0xa
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F620:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F67C ; =0xFFBFFFFF
	b _0224F680
	nop
_0224F62C: .word 0xFFFFFC1F
_0224F630: .word 0xFFFF83FF
_0224F634: .word 0xFFF07FFF
_0224F638: .word 0xFE0FFFFF
_0224F63C: .word 0xC1FFFFFF
_0224F640: .word 0xBFFFFFFF
_0224F644: .word 0x7FFFFFFF
_0224F648: .word 0xFFFFF8FF
_0224F64C: .word 0xFFFFE7FF
_0224F650: .word 0xFFFF9FFF
_0224F654: .word 0xFFFC7FFF
_0224F658: .word 0xFFE3FFFF
_0224F65C: .word 0xFF1FFFFF
_0224F660: .word 0xF8FFFFFF
_0224F664: .word 0xC7FFFFFF
_0224F668: .word 0xFFFFFCFF
_0224F66C: .word 0xFFFFE3FF
_0224F670: .word 0xFFFF1FFF
_0224F674: .word 0xFFF8FFFF
_0224F678: .word 0xFFC7FFFF
_0224F67C: .word 0xFFBFFFFF
_0224F680:
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #9
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F690:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F784 ; =0xF87FFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #5
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6A8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F788 ; =0xF7FFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #4
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6C0:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F78C ; =0xEFFFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #3
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6D8:
	add r0, r2, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224F790 ; =0xDFFFFFFF
	add r2, #0x8c
	and r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #2
	orr r0, r1
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6F0:
	ldr r0, [r3]
	add r2, #0x90
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F6F8:
	ldr r0, [r3]
	add r2, #0x94
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F700:
	ldr r0, [r3]
	add r2, #0x98
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F708:
	ldr r0, [r3]
	add r2, #0xa0
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F710:
	ldr r0, [r3]
	add r2, #0xa4
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F718:
	ldrh r0, [r3]
	add r2, #0xa8
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F720:
	ldrh r0, [r3]
	add r2, #0xac
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F728:
	ldrh r0, [r3]
	add r2, #0xaa
	strh r0, [r2]
	pop {r4, r5, r6, pc}
_0224F730:
	ldr r0, [r3]
	add r2, #0xbc
	str r0, [r2]
	pop {r4, r5, r6, pc}
_0224F738:
	ldr r1, [r2, #0x28]
	mov r0, #0x40
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x19
	orr r0, r1
	str r0, [r2, #0x28]
	pop {r4, r5, r6, pc}
_0224F74A:
	ldr r1, [r2, #0x28]
	mov r0, #0x80
	bic r1, r0
	ldrb r0, [r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r2, #0x28]
	pop {r4, r5, r6, pc}
_0224F75C:
	add r0, r2, #0
	add r0, #0x26
	ldrb r4, [r0]
	ldrb r1, [r3]
	mov r0, #0x1f
	bic r4, r0
	mov r0, #0x1f
	and r0, r1
	orr r0, r4
	add r2, #0x26
	strb r0, [r2]
	pop {r4, r5, r6, pc}
_0224F774:
	add r6, #0x78
	ldr r2, [r0, r6]
	bl ov12_0224F168
	pop {r4, r5, r6, pc}
_0224F77E:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224F784: .word 0xF87FFFFF
_0224F788: .word 0xF7FFFFFF
_0224F78C: .word 0xEFFFFFFF
_0224F790: .word 0xDFFFFFFF
	thumb_func_end ov12_0224F168

	thumb_func_start ov12_0224F794
ov12_0224F794: ; 0x0224F794
	push {r4, lr}
	mov r4, #0xb5
	lsl r4, r4, #6
	add r4, r0, r4
	mov r0, #0xc0
	mul r0, r1
	add r1, r2, #0
	add r0, r4, r0
	add r2, r3, #0
	bl ov12_0224F7AC
	pop {r4, pc}
	thumb_func_end ov12_0224F794

	thumb_func_start ov12_0224F7AC
ov12_0224F7AC: ; 0x0224F7AC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0x62
	bls _0224F7B8
	b _0224FC02
_0224F7B8:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224F7C4: ; jump table
	.short _0224FC02 - _0224F7C4 - 2 ; case 0
	.short _0224F88A - _0224F7C4 - 2 ; case 1
	.short _0224F892 - _0224F7C4 - 2 ; case 2
	.short _0224F89A - _0224F7C4 - 2 ; case 3
	.short _0224F8A2 - _0224F7C4 - 2 ; case 4
	.short _0224F8AA - _0224F7C4 - 2 ; case 5
	.short _0224FC02 - _0224F7C4 - 2 ; case 6
	.short _0224FC02 - _0224F7C4 - 2 ; case 7
	.short _0224FC02 - _0224F7C4 - 2 ; case 8
	.short _0224FC02 - _0224F7C4 - 2 ; case 9
	.short _0224F8B2 - _0224F7C4 - 2 ; case 10
	.short _0224F8CA - _0224F7C4 - 2 ; case 11
	.short _0224F8E0 - _0224F7C4 - 2 ; case 12
	.short _0224F8F6 - _0224F7C4 - 2 ; case 13
	.short _0224F90C - _0224F7C4 - 2 ; case 14
	.short _0224F922 - _0224F7C4 - 2 ; case 15
	.short _0224FC02 - _0224F7C4 - 2 ; case 16
	.short _0224FC02 - _0224F7C4 - 2 ; case 17
	.short _0224F938 - _0224F7C4 - 2 ; case 18
	.short _0224F938 - _0224F7C4 - 2 ; case 19
	.short _0224F938 - _0224F7C4 - 2 ; case 20
	.short _0224F938 - _0224F7C4 - 2 ; case 21
	.short _0224F938 - _0224F7C4 - 2 ; case 22
	.short _0224F938 - _0224F7C4 - 2 ; case 23
	.short _0224F938 - _0224F7C4 - 2 ; case 24
	.short _0224F938 - _0224F7C4 - 2 ; case 25
	.short _0224FC02 - _0224F7C4 - 2 ; case 26
	.short _0224FC02 - _0224F7C4 - 2 ; case 27
	.short _0224FC02 - _0224F7C4 - 2 ; case 28
	.short _0224FC02 - _0224F7C4 - 2 ; case 29
	.short _0224FC02 - _0224F7C4 - 2 ; case 30
	.short _0224F956 - _0224F7C4 - 2 ; case 31
	.short _0224F956 - _0224F7C4 - 2 ; case 32
	.short _0224F956 - _0224F7C4 - 2 ; case 33
	.short _0224F956 - _0224F7C4 - 2 ; case 34
	.short _0224F97C - _0224F7C4 - 2 ; case 35
	.short _0224F97C - _0224F7C4 - 2 ; case 36
	.short _0224F97C - _0224F7C4 - 2 ; case 37
	.short _0224F97C - _0224F7C4 - 2 ; case 38
	.short _0224FC02 - _0224F7C4 - 2 ; case 39
	.short _0224FC02 - _0224F7C4 - 2 ; case 40
	.short _0224FC02 - _0224F7C4 - 2 ; case 41
	.short _0224FC02 - _0224F7C4 - 2 ; case 42
	.short _0224F988 - _0224F7C4 - 2 ; case 43
	.short _0224F996 - _0224F7C4 - 2 ; case 44
	.short _0224FC02 - _0224F7C4 - 2 ; case 45
	.short _0224FC02 - _0224F7C4 - 2 ; case 46
	.short _0224F9B2 - _0224F7C4 - 2 ; case 47
	.short _0224F9C4 - _0224F7C4 - 2 ; case 48
	.short _0224FC02 - _0224F7C4 - 2 ; case 49
	.short _0224F9CC - _0224F7C4 - 2 ; case 50
	.short _0224F9D4 - _0224F7C4 - 2 ; case 51
	.short _0224FC02 - _0224F7C4 - 2 ; case 52
	.short _0224FC02 - _0224F7C4 - 2 ; case 53
	.short _0224FC02 - _0224F7C4 - 2 ; case 54
	.short _0224FC02 - _0224F7C4 - 2 ; case 55
	.short _0224FC02 - _0224F7C4 - 2 ; case 56
	.short _0224FC02 - _0224F7C4 - 2 ; case 57
	.short _0224FC02 - _0224F7C4 - 2 ; case 58
	.short _0224FC02 - _0224F7C4 - 2 ; case 59
	.short _0224FC02 - _0224F7C4 - 2 ; case 60
	.short _0224F9DC - _0224F7C4 - 2 ; case 61
	.short _0224F9FA - _0224F7C4 - 2 ; case 62
	.short _0224FA18 - _0224F7C4 - 2 ; case 63
	.short _0224FA36 - _0224F7C4 - 2 ; case 64
	.short _0224FA52 - _0224F7C4 - 2 ; case 65
	.short _0224FA6E - _0224F7C4 - 2 ; case 66
	.short _0224FA8A - _0224F7C4 - 2 ; case 67
	.short _0224FAA6 - _0224F7C4 - 2 ; case 68
	.short _0224FAC2 - _0224F7C4 - 2 ; case 69
	.short _0224FADE - _0224F7C4 - 2 ; case 70
	.short _0224FAFA - _0224F7C4 - 2 ; case 71
	.short _0224FC02 - _0224F7C4 - 2 ; case 72
	.short _0224FC02 - _0224F7C4 - 2 ; case 73
	.short _0224FC02 - _0224F7C4 - 2 ; case 74
	.short _0224FC02 - _0224F7C4 - 2 ; case 75
	.short _0224FC02 - _0224F7C4 - 2 ; case 76
	.short _0224FC02 - _0224F7C4 - 2 ; case 77
	.short _0224FB16 - _0224F7C4 - 2 ; case 78
	.short _0224FB32 - _0224F7C4 - 2 ; case 79
	.short _0224FB4E - _0224F7C4 - 2 ; case 80
	.short _0224FC02 - _0224F7C4 - 2 ; case 81
	.short _0224FC02 - _0224F7C4 - 2 ; case 82
	.short _0224FC02 - _0224F7C4 - 2 ; case 83
	.short _0224FC02 - _0224F7C4 - 2 ; case 84
	.short _0224FC02 - _0224F7C4 - 2 ; case 85
	.short _0224FC02 - _0224F7C4 - 2 ; case 86
	.short _0224FB6A - _0224F7C4 - 2 ; case 87
	.short _0224FB78 - _0224F7C4 - 2 ; case 88
	.short _0224FB86 - _0224F7C4 - 2 ; case 89
	.short _0224FB94 - _0224F7C4 - 2 ; case 90
	.short _0224FC02 - _0224F7C4 - 2 ; case 91
	.short _0224FC02 - _0224F7C4 - 2 ; case 92
	.short _0224FC02 - _0224F7C4 - 2 ; case 93
	.short _0224FC02 - _0224F7C4 - 2 ; case 94
	.short _0224FBA2 - _0224F7C4 - 2 ; case 95
	.short _0224FBB0 - _0224F7C4 - 2 ; case 96
	.short _0224FBC8 - _0224F7C4 - 2 ; case 97
	.short _0224FBE0 - _0224F7C4 - 2 ; case 98
_0224F88A:
	ldrh r0, [r4, #2]
	add r0, r0, r5
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0224F892:
	ldrh r0, [r4, #4]
	add r0, r0, r5
	strh r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0224F89A:
	ldrh r0, [r4, #6]
	add r0, r0, r5
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_0224F8A2:
	ldrh r0, [r4, #8]
	add r0, r0, r5
	strh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0224F8AA:
	ldrh r0, [r4, #0xa]
	add r0, r0, r5
	strh r0, [r4, #0xa]
	pop {r4, r5, r6, pc}
_0224F8B2:
	ldr r2, [r4, #0x14]
	mov r1, #0x1f
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	add r2, r1, r5
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F8CA:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC08 ; =0xFFFFFC1F
	and r0, r1
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F8E0:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC0C ; =0xFFFF83FF
	and r0, r1
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x11
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F8F6:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC10 ; =0xFFF07FFF
	and r0, r1
	lsl r1, r1, #0xc
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #0xc
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F90C:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC14 ; =0xFE0FFFFF
	and r0, r1
	lsl r1, r1, #7
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #7
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F922:
	ldr r1, [r4, #0x14]
	ldr r0, _0224FC18 ; =0xC1FFFFFF
	and r0, r1
	lsl r1, r1, #2
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x1b
	lsr r1, r1, #2
	orr r0, r1
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_0224F938:
	add r4, #0x18
	sub r1, #0x12
	ldrsb r0, [r4, r1]
	add r0, r5, r0
	bpl _0224F948
	mov r0, #0
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0224F948:
	cmp r0, #0xc
	ble _0224F952
	mov r0, #0xc
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0224F952:
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0224F956:
	add r6, r1, #0
	sub r6, #0x1f
	lsl r0, r6, #1
	add r1, r4, r6
	add r0, r4, r0
	add r1, #0x30
	ldrh r0, [r0, #0xc]
	ldrb r1, [r1]
	bl sub_0207332C
	add r4, #0x2c
	ldrb r1, [r4, r6]
	add r1, r5, r1
	cmp r1, r0
	ble _0224F978
	strb r0, [r4, r6]
	pop {r4, r5, r6, pc}
_0224F978:
	strb r1, [r4, r6]
	pop {r4, r5, r6, pc}
_0224F97C:
	add r4, #0x30
	sub r1, #0x23
	ldrb r0, [r4, r1]
	add r0, r0, r5
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0224F988:
	add r0, r4, #0
	add r0, #0x34
	ldrb r0, [r0]
	add r4, #0x34
	add r0, r0, r5
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224F996:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	add r0, r0, r5
	cmp r0, #0xff
	ble _0224F9A6
	mov r0, #0xff
	b _0224F9AC
_0224F9A6:
	cmp r0, #0
	bge _0224F9AC
	mov r0, #0
_0224F9AC:
	add r4, #0x35
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224F9B2:
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	add r0, r0, r5
	cmp r0, r1
	bls _0224F9C0
	str r1, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_0224F9C0:
	str r0, [r4, #0x4c]
	pop {r4, r5, r6, pc}
_0224F9C4:
	ldr r0, [r4, #0x50]
	add r0, r0, r5
	str r0, [r4, #0x50]
	pop {r4, r5, r6, pc}
_0224F9CC:
	ldr r0, [r4, #0x64]
	add r0, r0, r5
	str r0, [r4, #0x64]
	pop {r4, r5, r6, pc}
_0224F9D4:
	ldr r0, [r4, #0x68]
	add r0, r0, r5
	str r0, [r4, #0x68]
	pop {r4, r5, r6, pc}
_0224F9DC:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0]
	mov r1, #7
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1d
	lsr r1, r1, #0x1d
	add r2, r1, r5
	mov r1, #7
	and r1, r2
	orr r0, r1
	add r4, #0x88
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224F9FA:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0]
	mov r1, #0x38
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1a
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1a
	orr r0, r1
	add r4, #0x88
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA18:
	add r0, r4, #0
	add r0, #0x88
	ldr r2, [r0]
	mov r1, #0xc0
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x18
	orr r0, r1
	add r4, #0x88
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA36:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC1C ; =0xFFFFF8FF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x15
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA52:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC20 ; =0xFFFFE7FF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x13
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA6E:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC24 ; =0xFFFF9FFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1e
	add r1, r1, r5
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x11
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FA8A:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC28 ; =0xFFFC7FFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0xe
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xe
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FAA6:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC2C ; =0xFFE3FFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #0xb
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xb
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FAC2:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC30 ; =0xFF1FFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #8
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #8
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FADE:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC34 ; =0xF8FFFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #5
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #5
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FAFA:
	add r0, r4, #0
	add r0, #0x88
	ldr r1, [r0]
	ldr r0, _0224FC38 ; =0xC7FFFFFF
	add r4, #0x88
	and r0, r1
	lsl r1, r1, #2
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #2
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB16:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224FC3C ; =0xFFFFE3FF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0x13
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x13
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB32:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224FC40 ; =0xFFFF1FFF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB4E:
	add r0, r4, #0
	add r0, #0x8c
	ldr r1, [r0]
	ldr r0, _0224FC44 ; =0xFFF8FFFF
	add r4, #0x8c
	and r0, r1
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	add r1, r1, r5
	lsl r1, r1, #0x1d
	lsr r1, r1, #0xd
	orr r0, r1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB6A:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r4, #0x90
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB78:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	add r4, #0x94
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB86:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	add r4, #0x98
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FB94:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	add r4, #0xa0
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FBA2:
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r4, #0xbc
	add r0, r0, r5
	str r0, [r4]
	pop {r4, r5, r6, pc}
_0224FBB0:
	ldr r2, [r4, #0x28]
	mov r1, #0x40
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x1f
	add r1, r1, r5
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
_0224FBC8:
	ldr r2, [r4, #0x28]
	mov r1, #0x80
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1f
	add r1, r1, r5
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x18
	orr r0, r1
	str r0, [r4, #0x28]
	pop {r4, r5, r6, pc}
_0224FBE0:
	add r0, r4, #0
	add r0, #0x26
	ldrb r2, [r0]
	mov r1, #0x1f
	add r4, #0x26
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x1b
	add r1, r1, r5
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x1f
	and r1, r2
	orr r0, r1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FC02:
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224FC08: .word 0xFFFFFC1F
_0224FC0C: .word 0xFFFF83FF
_0224FC10: .word 0xFFF07FFF
_0224FC14: .word 0xFE0FFFFF
_0224FC18: .word 0xC1FFFFFF
_0224FC1C: .word 0xFFFFF8FF
_0224FC20: .word 0xFFFFE7FF
_0224FC24: .word 0xFFFF9FFF
_0224FC28: .word 0xFFFC7FFF
_0224FC2C: .word 0xFFE3FFFF
_0224FC30: .word 0xFF1FFFFF
_0224FC34: .word 0xF8FFFFFF
_0224FC38: .word 0xC7FFFFFF
_0224FC3C: .word 0xFFFFE3FF
_0224FC40: .word 0xFFFF1FFF
_0224FC44: .word 0xFFF8FFFF
	thumb_func_end ov12_0224F7AC

	thumb_func_start ov12_0224FC48
ov12_0224FC48: ; 0x0224FC48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp, #4]
	ldr r0, [sp, #0x80]
	str r3, [sp, #0xc]
	str r0, [sp, #0x80]
	mov r0, #0
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x64]
	str r2, [sp, #8]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x64]
	ldr r3, _0224FF44 ; =0x00002D8C
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x64]
	add r5, r1, #0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x34]
	mov r0, #0xc0
	mul r2, r0
	str r2, [sp, #0x18]
	add r2, r5, r3
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x68]
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _0224FCA0
	ldr r2, [sp, #0xc]
	mul r0, r2
	add r0, r5, r0
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _0224FCA0
	add sp, #0x6c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224FCA0:
	cmp r1, #0
	beq _0224FCBA
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0224FF44 ; =0x00002D8C
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0224FCBA
	add sp, #0x6c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224FCBA:
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_022527CC
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov12_022527CC
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02255830
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x58]
	ldr r1, [sp, #8]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov12_02255830
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0
	bl ov12_02255844
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x18]
	ldr r2, _0224FF48 ; =0x00002D5B
	add r0, r5, r0
	ldrsb r4, [r0, r2]
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	str r1, [sp, #0x14]
	ldrsb r7, [r0, r2]
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x56
	bne _0224FD3C
	sub r0, r4, #6
	lsl r0, r0, #1
	add r4, r0, #6
	cmp r4, #0xc
	ble _0224FD36
	mov r4, #0xc
_0224FD36:
	cmp r4, #0
	bge _0224FD3C
	mov r4, #0
_0224FD3C:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x56
	bne _0224FD5A
	sub r0, r7, #6
	lsl r0, r0, #1
	add r7, r0, #6
	cmp r7, #0xc
	ble _0224FD54
	mov r7, #0xc
_0224FD54:
	cmp r7, #0
	bge _0224FD5A
	mov r7, #0
_0224FD5A:
	ldr r0, [sp, #0x18]
	lsl r1, r4, #1
	add r2, r5, r0
	ldr r0, _0224FF4C ; =0x00002D46
	ldrh r2, [r2, r0]
	ldr r0, _0224FF50 ; =0x0226CB88
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0224FF54 ; =0x0226CB89
	ldrb r1, [r2, r1]
	bl sub_020F2998
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	lsl r1, r7, #1
	add r2, r5, r0
	ldr r0, _0224FF4C ; =0x00002D46
	ldrh r2, [r2, r0]
	ldr r0, _0224FF50 ; =0x0226CB88
	ldrb r0, [r0, r1]
	mul r0, r2
	ldr r2, _0224FF54 ; =0x0226CB89
	ldrb r1, [r2, r1]
	bl sub_020F2998
	add r4, r0, #0
	mov r0, #0xd
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224FE02
	mov r0, #0x4c
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov12_02252324
	cmp r0, #0
	bne _0224FE02
	ldr r0, [sp, #0x2c]
	cmp r0, #0x21
	bne _0224FDC8
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	bne _0224FDDA
_0224FDC8:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x22
	bne _0224FDDC
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224FDDC
_0224FDDA:
	lsl r6, r6, #1
_0224FDDC:
	ldr r0, [sp, #0x28]
	cmp r0, #0x21
	bne _0224FDEE
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #3
	tst r0, r1
	bne _0224FE00
_0224FDEE:
	ldr r0, [sp, #0x28]
	cmp r0, #0x22
	bne _0224FE02
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #0x30
	tst r0, r1
	beq _0224FE02
_0224FE00:
	lsl r4, r4, #1
_0224FE02:
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r7, _0224FF58 ; =0x0226CB50
	add r0, r5, r0
	str r0, [sp, #0x1c]
_0224FE0E:
	ldr r2, [sp, #0x1c]
	ldr r1, _0224FF5C ; =0x00002DB8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov12_02257E74
	ldrb r1, [r7]
	cmp r1, r0
	bne _0224FE26
	lsr r6, r6, #1
	b _0224FE32
_0224FE26:
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #8
	blo _0224FE0E
_0224FE32:
	ldr r0, [sp, #0x58]
	cmp r0, #0x73
	bne _0224FE44
	mov r0, #0xf
	mul r0, r6
	mov r1, #0xa
	bl sub_020F2BA4
	add r6, r0, #0
_0224FE44:
	ldr r0, [sp, #0x58]
	cmp r0, #0x66
	bne _0224FE5A
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	cmp r0, #0x84
	bne _0224FE5A
	lsl r6, r6, #1
_0224FE5A:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x5f
	bne _0224FE7C
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _0224FF60 ; =0x00002DAC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _0224FE7C
	mov r0, #0xf
	mul r0, r6
	mov r1, #0xa
	bl sub_020F2BA4
	add r6, r0, #0
	b _0224FE8C
_0224FE7C:
	ldr r0, [sp, #0x18]
	add r1, r5, r0
	ldr r0, _0224FF60 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _0224FE8C
	lsr r6, r6, #2
_0224FE8C:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x70
	bne _0224FEA8
	ldr r1, [sp, #0x18]
	mov r0, #0x15
	add r2, r5, r1
	ldr r1, _0224FF64 ; =0x00002DD8
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #5
	bge _0224FEA8
	lsr r6, r6, #1
_0224FEA8:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x54
	bne _0224FEC6
	ldr r0, [sp, #0x18]
	add r2, r5, r0
	ldr r0, _0224FF68 ; =0x00002DCC
	ldr r1, [r2, r0]
	lsl r1, r1, #9
	lsr r1, r1, #0x1f
	beq _0224FEC6
	sub r0, #0x14
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _0224FEC6
	lsl r6, r6, #1
_0224FEC6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl ov12_0223AB1C
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	beq _0224FEE2
	lsl r6, r6, #1
_0224FEE2:
	ldr r0, [sp, #0x58]
	cmp r0, #0x34
	bne _0224FF20
	ldr r1, [sp, #0x54]
	mov r0, #0x64
	bl sub_020F2998
	add r1, r0, #0
	ldr r0, [sp, #8]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _0224FF6C ; =0x0000310C
	ldrh r0, [r2, r0]
	bl sub_020F2998
	cmp r1, #0
	bne _0224FF20
	mov r0, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0224FF20
	ldr r0, _0224FF68 ; =0x00002DCC
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x18]
	str r2, [r0, r1]
_0224FF20:
	ldr r0, [sp, #0x58]
	cmp r0, #0x2d
	bne _0224FFA4
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x52
	bne _0224FF3A
	ldr r0, [sp, #0x54]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
_0224FF3A:
	ldr r0, [sp, #8]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0224FF70 ; =0x00002D90
	b _0224FF74
	.align 2, 0
_0224FF44: .word 0x00002D8C
_0224FF48: .word 0x00002D5B
_0224FF4C: .word 0x00002D46
_0224FF50: .word 0x0226CB88
_0224FF54: .word 0x0226CB89
_0224FF58: .word 0x0226CB50
_0224FF5C: .word 0x00002DB8
_0224FF60: .word 0x00002DAC
_0224FF64: .word 0x00002DD8
_0224FF68: .word 0x00002DCC
_0224FF6C: .word 0x0000310C
_0224FF70: .word 0x00002D90
_0224FF74:
	add r1, r5, r1
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x54]
	bl sub_020F2BA4
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x18]
	ldr r1, [r2, r1]
	cmp r1, r0
	bhi _0224FFA4
	mov r0, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _0224FFA4
	ldr r0, _0225026C ; =0x00002DCC
	ldr r1, [sp, #0x18]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x18]
	str r2, [r0, r1]
_0224FFA4:
	ldr r0, [sp, #0x58]
	cmp r0, #0x6b
	bne _0224FFAE
	mov r0, #1
	str r0, [sp, #0x38]
_0224FFAE:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r7, _02250270 ; =0x0226CB50
	add r0, r5, r0
	str r0, [sp, #0x20]
_0224FFBA:
	ldr r2, [sp, #0x20]
	ldr r1, _02250274 ; =0x00002DB8
	add r0, r5, #0
	ldrh r1, [r2, r1]
	mov r2, #1
	bl ov12_02257E74
	ldrb r1, [r7]
	cmp r1, r0
	bne _0224FFD2
	lsr r4, r4, #1
	b _0224FFDE
_0224FFD2:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blo _0224FFBA
_0224FFDE:
	ldr r0, [sp, #0x50]
	cmp r0, #0x73
	bne _0224FFF0
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl sub_020F2BA4
	add r4, r0, #0
_0224FFF0:
	ldr r0, [sp, #0x50]
	cmp r0, #0x66
	bne _02250006
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	cmp r0, #0x84
	bne _02250006
	lsl r4, r4, #1
_02250006:
	ldr r0, [sp, #0x28]
	cmp r0, #0x5f
	bne _02250028
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, _02250278 ; =0x00002DAC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	beq _02250028
	mov r0, #0xf
	mul r0, r4
	mov r1, #0xa
	bl sub_020F2BA4
	add r4, r0, #0
	b _02250038
_02250028:
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, _02250278 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #0x40
	tst r0, r1
	beq _02250038
	lsr r4, r4, #2
_02250038:
	ldr r0, [sp, #0x28]
	cmp r0, #0x70
	bne _02250054
	ldr r1, [sp, #0x14]
	mov r0, #0x15
	add r2, r5, r1
	ldr r1, _0225027C ; =0x00002DD8
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #5
	bge _02250054
	lsr r4, r4, #1
_02250054:
	ldr r0, [sp, #0x28]
	cmp r0, #0x54
	bne _02250072
	ldr r0, [sp, #0x14]
	add r2, r5, r0
	ldr r0, _0225026C ; =0x00002DCC
	ldr r1, [r2, r0]
	lsl r1, r1, #9
	lsr r1, r1, #0x1f
	beq _02250072
	sub r0, #0x14
	ldrh r0, [r2, r0]
	cmp r0, #0
	bne _02250072
	lsl r4, r4, #1
_02250072:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl ov12_0223AB1C
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r1
	beq _0225008E
	lsl r4, r4, #1
_0225008E:
	ldr r0, [sp, #0x50]
	cmp r0, #0x34
	bne _022500CC
	ldr r1, [sp, #0x4c]
	mov r0, #0x64
	bl sub_020F2998
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	lsl r0, r0, #1
	add r2, r5, r0
	ldr r0, _02250280 ; =0x0000310C
	ldrh r0, [r2, r0]
	bl sub_020F2998
	cmp r1, #0
	bne _022500CC
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _022500CC
	ldr r0, _0225026C ; =0x00002DCC
	ldr r1, [sp, #0x14]
	add r0, r5, r0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x14]
	str r2, [r0, r1]
_022500CC:
	ldr r0, [sp, #0x50]
	cmp r0, #0x2d
	bne _02250120
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x52
	bne _022500E6
	ldr r0, [sp, #0x4c]
	lsl r0, r0, #0x17
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
_022500E6:
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	add r7, r0, #0
	mul r7, r1
	ldr r0, _02250284 ; =0x00002D90
	add r1, r5, r7
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x4c]
	bl sub_020F2BA4
	ldr r1, _02250288 ; =0x00002D8C
	add r2, r5, r7
	ldr r2, [r2, r1]
	cmp r2, r0
	bhi _02250120
	mov r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	cmp r0, #0
	bne _02250120
	add r1, #0x40
	add r0, r5, r1
	ldr r1, [sp, #0x14]
	ldr r2, [r0, r1]
	mov r1, #1
	lsl r1, r1, #0x1c
	orr r2, r1
	ldr r1, [sp, #0x14]
	str r2, [r0, r1]
_02250120:
	ldr r0, [sp, #0x50]
	cmp r0, #0x6b
	bne _0225012A
	mov r0, #1
	str r0, [sp, #0x34]
_0225012A:
	ldr r0, [sp, #8]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0225028C ; =0x000021F0
	str r6, [r1, r0]
	ldr r1, [sp, #0xc]
	lsl r1, r1, #2
	add r1, r5, r1
	str r4, [r1, r0]
	ldr r1, [sp, #0x80]
	cmp r1, #0
	bne _022501E2
	ldr r1, [sp, #0xc]
	ldr r3, _02250290 ; =0x000030BC
	lsl r1, r1, #4
	add r2, r5, r1
	add r1, r0, #0
	sub r1, #0x3c
	ldr r1, [r2, r1]
	sub r0, #0x3c
	str r1, [sp, #0x30]
	ldr r1, [sp, #8]
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r2, [r1, r3]
	ldr r1, [sp, #0xc]
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r7, [r1, r3]
	ldr r1, [sp, #8]
	lsl r1, r1, #4
	add r1, r5, r1
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0225019A
	ldr r0, [sp, #8]
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02250188
	mov r0, #0xa5
	str r0, [sp, #0x60]
	b _0225019A
_02250188:
	ldr r1, [sp, #8]
	add r0, r5, #0
	add r2, r2, #6
	mov r3, #0
	bl ov12_0224EDE0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x60]
_0225019A:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _022501CA
	ldr r0, [sp, #0xc]
	lsl r0, r0, #6
	add r1, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _022501B8
	mov r0, #0xa5
	str r0, [sp, #0x5c]
	b _022501CA
_022501B8:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, r7, #6
	mov r3, #0
	bl ov12_0224EDE0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x5c]
_022501CA:
	ldr r0, [sp, #0x60]
	mov r1, #0xfa
	lsl r0, r0, #4
	add r0, r5, r0
	lsl r1, r1, #2
	ldrsb r0, [r0, r1]
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x5c]
	lsl r0, r0, #4
	add r0, r5, r0
	ldrsb r0, [r0, r1]
	str r0, [sp, #0x44]
_022501E2:
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x44]
	cmp r1, r0
	beq _022501EC
	b _02250352
_022501EC:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _02250218
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02250218
	cmp r6, r4
	bhs _02250202
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_02250202:
	cmp r6, r4
	bne _02250256
	ldr r0, [sp, #4]
	bl ov12_0223BD98
	mov r1, #1
	tst r0, r1
	beq _02250256
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
_02250218:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _0225022A
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0225022A
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_0225022A:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0225023C
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _0225023C
	mov r0, #0
	str r0, [sp, #0x64]
	b _0225035A
_0225023C:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _02250294
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02250294
	cmp r6, r4
	bls _02250252
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_02250252:
	cmp r6, r4
	beq _02250258
_02250256:
	b _0225035A
_02250258:
	ldr r0, [sp, #4]
	bl ov12_0223BD98
	mov r1, #1
	tst r0, r1
	beq _0225035A
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
	nop
_0225026C: .word 0x00002DCC
_02250270: .word 0x0226CB50
_02250274: .word 0x00002DB8
_02250278: .word 0x00002DAC
_0225027C: .word 0x00002DD8
_02250280: .word 0x0000310C
_02250284: .word 0x00002D90
_02250288: .word 0x00002D8C
_0225028C: .word 0x000021F0
_02250290: .word 0x000030BC
_02250294:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _022502A6
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _022502A6
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_022502A6:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _022502B8
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _022502B8
	mov r0, #0
	str r0, [sp, #0x64]
	b _0225035A
_022502B8:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	bne _022502E4
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	bne _022502E4
	cmp r6, r4
	bls _022502CE
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_022502CE:
	cmp r6, r4
	bne _0225035A
	ldr r0, [sp, #4]
	bl ov12_0223BD98
	mov r1, #1
	tst r0, r1
	beq _0225035A
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
_022502E4:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	bne _022502F6
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	beq _022502F6
	mov r0, #1
	str r0, [sp, #0x64]
	b _0225035A
_022502F6:
	ldr r0, [sp, #0x2c]
	cmp r0, #0x64
	beq _02250308
	ldr r0, [sp, #0x28]
	cmp r0, #0x64
	bne _02250308
	mov r0, #0
	str r0, [sp, #0x64]
	b _0225035A
_02250308:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0x10
	tst r0, r1
	beq _02250334
	cmp r6, r4
	bls _0225031E
	mov r0, #1
	str r0, [sp, #0x64]
_0225031E:
	cmp r6, r4
	bne _0225035A
	ldr r0, [sp, #4]
	bl ov12_0223BD98
	mov r1, #1
	tst r0, r1
	beq _0225035A
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
_02250334:
	cmp r6, r4
	bhs _0225033C
	mov r0, #1
	str r0, [sp, #0x64]
_0225033C:
	cmp r6, r4
	bne _0225035A
	ldr r0, [sp, #4]
	bl ov12_0223BD98
	mov r1, #1
	tst r0, r1
	beq _0225035A
	mov r0, #2
	str r0, [sp, #0x64]
	b _0225035A
_02250352:
	cmp r1, r0
	bge _0225035A
	mov r0, #1
	str r0, [sp, #0x64]
_0225035A:
	ldr r0, [sp, #0x64]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_0224FC48

	thumb_func_start ov12_02250360
ov12_02250360: ; 0x02250360
	asr r1, r1, #1
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	add r0, r0, r1
	mov r2, #0
	add r0, #0xa4
	str r2, [r0]
	bx lr
	thumb_func_end ov12_02250360

	thumb_func_start ov12_02250370
ov12_02250370: ; 0x02250370
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	add r5, r1, #0
	mov r4, #0
	bl ov12_0223A7E0
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xc0
	mul r1, r0
	add r0, r5, r1
	str r0, [sp, #4]
	ldr r0, [sp]
	asr r0, r0, #1
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	add r6, r5, r0
	add r6, #0xa4
_02250396:
	add r0, r4, #0
	bl sub_020726C0
	ldr r1, _022503E0 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _022503CC
	ldr r0, [sp]
	bl sub_020726C0
	ldr r1, _022503E0 ; =0x00003108
	ldrb r1, [r5, r1]
	tst r0, r1
	bne _022503CC
	ldr r1, [sp, #4]
	ldr r0, _022503E4 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022503CC
	ldr r0, _022503E8 ; =0x0000219C
	add r1, r5, r4
	ldrb r0, [r1, r0]
	bl sub_020726C0
	ldr r1, [r6]
	orr r0, r1
	str r0, [r6]
_022503CC:
	add r4, r4, #2
	cmp r7, #0x4a
	beq _022503DA
	cmp r7, #0x4b
	beq _022503DA
	cmp r4, #2
	ble _02250396
_022503DA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022503E0: .word 0x00003108
_022503E4: .word 0x00002D8C
_022503E8: .word 0x0000219C
	thumb_func_end ov12_02250370

	thumb_func_start ov12_022503EC
ov12_022503EC: ; 0x022503EC
	push {r4, r5, r6, lr}
	ldr r0, _02250478 ; =0x00002170
	add r5, r1, #0
	add r4, r2, #0
	ldr r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0x1c
	mov r6, #0
	tst r0, r2
	beq _0225041E
	add r0, r5, #0
	mov r1, #1
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _02250478 ; =0x00002170
	add r1, r6, #0
	str r1, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _0225047C ; =0x801FDA49
	tst r0, r1
	bne _02250472
	mov r6, #1
	b _02250472
_0225041E:
	cmp r2, #0
	beq _02250472
	add r0, r5, #0
	mov r1, #1
	bl ov12_02258348
	str r0, [r4]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02250480 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225046C
	ldr r1, _02250484 ; =0x0000216C
	ldr r2, _0225047C ; =0x801FDA49
	ldr r0, [r5, r1]
	tst r2, r0
	beq _0225046A
	add r1, r1, #4
	mov r2, #2
	ldr r1, [r5, r1]
	lsl r2, r2, #0x16
	tst r2, r1
	beq _0225045C
	ldr r2, _02250488 ; =0x00040008
	tst r2, r0
	bne _0225046A
_0225045C:
	mov r2, #1
	lsl r2, r2, #0x1c
	tst r1, r2
	beq _0225046C
	ldr r1, _0225048C ; =0x00010001
	tst r0, r1
	beq _0225046C
_0225046A:
	mov r6, #1
_0225046C:
	ldr r0, _02250478 ; =0x00002170
	mov r1, #0
	str r1, [r5, r0]
_02250472:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_02250478: .word 0x00002170
_0225047C: .word 0x801FDA49
_02250480: .word 0x00002D8C
_02250484: .word 0x0000216C
_02250488: .word 0x00040008
_0225048C: .word 0x00010001
	thumb_func_end ov12_022503EC

	thumb_func_start ov12_02250490
ov12_02250490: ; 0x02250490
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	ldr r0, _022506B0 ; =0x00002174
	add r4, r2, #0
	ldr r2, [r5, r0]
	mov r1, #2
	lsl r1, r1, #0x1c
	add r3, r2, #0
	mov r6, #0
	tst r3, r1
	beq _022504C6
	add r0, r5, #0
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	sub r0, #8
	ldr r1, [r5, r0]
	ldr r0, _022506B4 ; =0x801FDA49
	tst r0, r1
	bne _02250566
	mov r6, #1
	b _022506AA
_022504C6:
	lsr r3, r1, #5
	tst r3, r2
	beq _022504FA
	add r0, r5, #0
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	add r0, r5, #0
	bl ov12_02256838
	cmp r0, #0
	bne _02250566
	ldr r0, _022506B8 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _022506B4 ; =0x801FDA49
	tst r0, r1
	bne _02250566
	mov r6, #1
	b _022506AA
_022504FA:
	lsr r3, r1, #4
	tst r3, r2
	beq _0225053C
	add r0, r5, #0
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02250566
	add r0, r5, #0
	bl ov12_02256838
	cmp r0, #0
	bne _02250566
	ldr r0, _022506B8 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _022506B4 ; =0x801FDA49
	tst r0, r1
	bne _02250566
	mov r6, #1
	b _022506AA
_0225053C:
	lsr r3, r1, #1
	tst r3, r2
	beq _0225056C
	add r0, r5, #0
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02250568
_02250566:
	b _022506AA
_02250568:
	mov r6, #1
	b _022506AA
_0225056C:
	lsr r1, r1, #3
	tst r1, r2
	beq _022505F8
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x20
	ldr r0, _022506C0 ; =0x00003044
	bne _02250590
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022506C4 ; =0x000003E5
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r6, r0, #0x10
	b _0225059A
_02250590:
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022506C4 ; =0x000003E5
	ldrb r6, [r1, r0]
_0225059A:
	cmp r6, #0
	bne _022505A2
	bl GF_AssertFail
_022505A2:
	ldr r0, [sp]
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	cmp r1, r6
	bge _022505BE
	ldr r1, _022506C8 ; =0x0000213C
	mov r0, #1
	ldr r2, [r5, r1]
	lsl r0, r0, #0x16
	orr r0, r2
	str r0, [r5, r1]
_022505BE:
	ldr r2, _022506B0 ; =0x00002174
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r1, _022506B0 ; =0x00002174
	mov r0, #0
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0x94
	ldr r2, [r0]
	mov r0, #0xc0
	mul r0, r2
	add r2, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _022505F4
	add r0, r1, #0
	sub r0, #0x38
	ldr r2, [r5, r0]
	ldr r0, _022506CC ; =0xFFBFFFFF
	sub r1, #0x38
	and r0, r2
	str r0, [r5, r1]
_022505F4:
	mov r6, #1
	b _022506AA
_022505F8:
	cmp r2, #0
	beq _0225067C
	ldr r1, [r5, #0x64]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r0, #0x20
	ldr r0, _022506C0 ; =0x00003044
	bne _0225061A
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022506C4 ; =0x000003E5
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x11
	lsr r7, r0, #0x10
	b _02250624
_0225061A:
	ldr r0, [r5, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _022506C4 ; =0x000003E5
	ldrb r7, [r1, r0]
_02250624:
	cmp r7, #0
	bne _0225062C
	bl GF_AssertFail
_0225062C:
	ldr r0, [sp]
	bl ov12_0223BD98
	mov r1, #0x64
	bl sub_020F2998
	cmp r1, r7
	bge _022506AA
	ldr r2, _022506B0 ; =0x00002174
	add r0, r5, #0
	ldr r2, [r5, r2]
	mov r1, #2
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506B0 ; =0x00002174
	mov r1, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r2, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022506AA
	add r0, r5, #0
	bl ov12_02256838
	cmp r0, #0
	bne _022506AA
	ldr r0, _022506B8 ; =0x0000216C
	ldr r1, [r5, r0]
	ldr r0, _022506B4 ; =0x801FDA49
	tst r0, r1
	bne _022506AA
	mov r6, #1
	b _022506AA
_0225067C:
	add r0, r0, #4
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _022506AA
	add r0, r5, #0
	mov r1, #3
	bl ov12_02258348
	str r0, [r4]
	ldr r0, _022506D0 ; =0x00002178
	add r1, r6, #0
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x94
	ldr r1, [r0]
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022506BC ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022506AA
	mov r6, #1
_022506AA:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022506B0: .word 0x00002174
_022506B4: .word 0x801FDA49
_022506B8: .word 0x0000216C
_022506BC: .word 0x00002D8C
_022506C0: .word 0x00003044
_022506C4: .word 0x000003E5
_022506C8: .word 0x0000213C
_022506CC: .word 0xFFBFFFFF
_022506D0: .word 0x00002178
	thumb_func_end ov12_02250490

	thumb_func_start ov12_022506D4
ov12_022506D4: ; 0x022506D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	mov r0, #0xff
	add r4, r1, #0
	add r5, r2, #0
	str r0, [sp, #0xc]
	cmp r3, #0
	beq _022506F0
	lsl r0, r3, #4
	add r1, r4, r0
	ldr r0, _0225099C ; =0x000003E6
	ldrh r0, [r1, r0]
	b _022506F2
_022506F0:
	ldr r0, [sp, #0x34]
_022506F2:
	cmp r0, #4
	bne _02250782
	add r0, r6, #0
	bl ov12_0223A7F0
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223A7E8
	bl ov12_02261258
	ldr r1, _022509A0 ; =0x0000217E
	mov r2, #0
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	ldr r2, [sp, #8]
	cmp r1, r2
	bge _02250770
	mov r2, #1
	add r5, r0, #0
	and r5, r2
_0225071E:
	ldr r0, _022509A4 ; =0x000021EC
	add r1, r4, r1
	ldrb r7, [r1, r0]
	mov r0, #0xc0
	mul r0, r7
	add r1, r4, r0
	ldr r0, _022509A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225075E
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_0223A7E8
	str r0, [sp]
	cmp r5, #0
	beq _0225074A
	bl ov12_02261258
	mov r1, #1
	tst r0, r1
	beq _0225075A
_0225074A:
	cmp r5, #0
	bne _0225075E
	ldr r0, [sp]
	bl ov12_02261258
	mov r1, #1
	tst r0, r1
	beq _0225075E
_0225075A:
	str r7, [sp, #0xc]
	b _02250770
_0225075E:
	ldr r0, _022509A0 ; =0x0000217E
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _022509A0 ; =0x0000217E
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0225071E
_02250770:
	ldr r1, _022509A0 ; =0x0000217E
	ldr r0, [sp, #8]
	ldrb r2, [r4, r1]
	cmp r2, r0
	bne _0225077C
	b _02250A0C
_0225077C:
	add r0, r2, #1
	strb r0, [r4, r1]
	b _02250A0C
_02250782:
	cmp r0, #8
	bne _022507D2
	add r0, r6, #0
	bl ov12_0223A7F0
	add r2, r0, #0
	ldr r0, _022509A0 ; =0x0000217E
	mov r1, #0
	strb r1, [r4, r0]
	ldrb r3, [r4, r0]
	cmp r3, r2
	bge _022507C4
	ldr r7, _022509A8 ; =0x00002D8C
_0225079C:
	ldr r1, _022509A4 ; =0x000021EC
	add r6, r4, r3
	ldrb r1, [r6, r1]
	mov r6, #0xc0
	mul r6, r1
	add r6, r4, r6
	ldr r6, [r6, r7]
	cmp r6, #0
	beq _022507B6
	cmp r1, r5
	beq _022507B6
	str r1, [sp, #0xc]
	b _022507C4
_022507B6:
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	ldr r1, _022509A0 ; =0x0000217E
	ldrb r3, [r4, r1]
	cmp r3, r2
	blt _0225079C
_022507C4:
	cmp r3, r2
	beq _022508B0
	ldr r0, _022509A0 ; =0x0000217E
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02250A0C
_022507D2:
	mov r1, #2
	lsl r1, r1, #8
	cmp r0, r1
	bne _02250820
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _02250820
	add r0, r6, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _0225081C
	add r0, r6, #0
	bl ov12_0223BD98
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _0225081C
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223AB6C
	mov r1, #0xc0
	mul r1, r0
	str r0, [sp, #0xc]
	ldr r0, _022509A8 ; =0x00002D8C
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022508B0
	str r5, [sp, #0xc]
	b _02250A0C
_0225081C:
	str r5, [sp, #0xc]
	b _02250A0C
_02250820:
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r0, r1
	bne _0225083C
	ldr r1, [sp, #0x30]
	cmp r1, #1
	bne _0225083C
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_02253DA0
	str r0, [sp, #0xc]
	b _02250A0C
_0225083C:
	cmp r0, #0x80
	bne _0225084E
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_02253DA0
	str r0, [sp, #0xc]
	b _02250A0C
_0225084E:
	cmp r0, #0x10
	beq _0225085E
	cmp r0, #0x20
	beq _0225085E
	cmp r0, #1
	beq _0225085E
	cmp r0, #0x40
	bne _02250862
_0225085E:
	str r5, [sp, #0xc]
	b _02250A0C
_02250862:
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _02250886
	add r0, r6, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _02250882
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223AB6C
	str r0, [sp, #0xc]
	b _02250A0C
_02250882:
	str r5, [sp, #0xc]
	b _02250A0C
_02250886:
	lsl r1, r1, #1
	cmp r0, r1
	bne _022508BA
	add r0, r6, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	beq _022508B6
	lsl r0, r5, #4
	add r1, r4, r0
	ldr r0, _022509AC ; =0x000021AC
	ldr r0, [r1, r0]
	mov r1, #0xc0
	mul r1, r0
	str r0, [sp, #0xc]
	ldr r0, _022509A8 ; =0x00002D8C
	add r1, r4, r1
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022508B2
_022508B0:
	b _02250A0C
_022508B2:
	str r5, [sp, #0xc]
	b _02250A0C
_022508B6:
	str r5, [sp, #0xc]
	b _02250A0C
_022508BA:
	cmp r0, #2
	beq _022508C4
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _02250986
_022508C4:
	add r0, r6, #0
	bl ov12_0223A7E0
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223AB1C
	add r7, r0, #0
	mov r1, #1
	eor r7, r1
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ov12_0223ABB8
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	bl ov12_0223ABB8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r1, #2
	tst r0, r1
	beq _0225096E
	mov r0, #0x71
	lsl r0, r0, #2
	add r1, r4, r0
	lsl r0, r7, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02250920
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _022509A8 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02250920
	str r0, [sp, #0xc]
	b _02250A0C
_02250920:
	ldr r0, [sp, #0x14]
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	add r0, r4, r2
	ldr r2, _022509A8 ; =0x00002D8C
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02250950
	ldr r3, [sp, #0x18]
	mul r1, r3
	add r1, r4, r1
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _02250950
	add r0, r6, #0
	bl ov12_0223BD98
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	str r0, [sp, #0xc]
	b _02250A0C
_02250950:
	cmp r0, #0
	beq _0225095A
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
	b _02250A0C
_0225095A:
	ldr r2, [sp, #0x18]
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _022509A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250A0C
	str r2, [sp, #0xc]
	b _02250A0C
_0225096E:
	mov r0, #1
	add r2, r5, #0
	eor r2, r0
	mov r0, #0xc0
	mul r0, r2
	add r1, r4, r0
	ldr r0, _022509A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250A0C
	str r2, [sp, #0xc]
	b _02250A0C
_02250986:
	add r0, r6, #0
	add r1, r5, #0
	bl ov12_0223AB1C
	mov r1, #1
	eor r0, r1
	str r0, [sp, #4]
	lsl r0, r5, #4
	add r1, r4, r0
	ldr r0, _022509AC ; =0x000021AC
	b _022509B0
	.align 2, 0
_0225099C: .word 0x000003E6
_022509A0: .word 0x0000217E
_022509A4: .word 0x000021EC
_022509A8: .word 0x00002D8C
_022509AC: .word 0x000021AC
_022509B0:
	ldr r7, [r1, r0]
	add r0, r6, #0
	bl ov12_0223A7F0
	mov r0, #0x71
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _022509E0
	lsl r0, r0, #9
	lsr r0, r0, #0x1e
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02250A14 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _022509E0
	str r0, [sp, #0xc]
	b _02250A0C
_022509E0:
	mov r0, #0xc0
	mul r0, r7
	add r1, r4, r0
	ldr r0, _02250A14 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022509F2
	str r7, [sp, #0xc]
	b _02250A0C
_022509F2:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov12_02253DA0
	mov r1, #0xc0
	mul r1, r0
	add r2, r4, r1
	ldr r1, _02250A14 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _02250A0C
	str r0, [sp, #0xc]
_02250A0C:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02250A14: .word 0x00002D8C
	thumb_func_end ov12_022506D4

	thumb_func_start ov12_02250A18
ov12_02250A18: ; 0x02250A18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x6c]
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #0xff
	beq _02250A72
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022527CC
	cmp r0, #0x60
	beq _02250A72
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022527CC
	cmp r0, #0x68
	beq _02250A72
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov12_0223AB1C
	add r2, r0, #0
	mov r1, #1
	mov r0, #0x71
	eor r2, r1
	lsl r0, r0, #2
	add r1, r5, r0
	lsl r0, r2, #3
	ldr r0, [r1, r0]
	lsl r1, r0, #0xb
	lsr r1, r1, #0x1f
	beq _02250A74
	lsl r0, r0, #9
	lsr r1, r0, #0x1e
	mov r0, #0xc0
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02250BA8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250A74
_02250A72:
	b _02250BA4
_02250A74:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov12_02258688
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _02250A90
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02250BAC ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
_02250A90:
	ldr r0, [sp, #4]
	bl ov12_0223A7F0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0xd
	bne _02250B20
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02250BB0 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02250AAE
	cmp r0, #2
	bne _02250B20
_02250AAE:
	ldr r0, _02250BB4 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02250B20
	mov r0, #0x1f
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	add r3, r7, #0
	bl ov12_02252324
	cmp r0, #0
	beq _02250B20
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _02250B00
_02250AD4:
	ldr r0, _02250BB8 ; =0x000021EC
	add r1, r5, r6
	ldrb r4, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x1f
	bne _02250AF8
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02250BA8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250AF8
	cmp r7, r4
	bne _02250B00
_02250AF8:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _02250AD4
_02250B00:
	ldr r0, [r5, #0x6c]
	cmp r4, r0
	beq _02250BA4
	mov r0, #0xb5
	lsl r0, r0, #2
	add r3, r5, r0
	mov r0, #0x1c
	add r2, r4, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #2
	orr r0, r1
	str r0, [r3, r2]
	add sp, #0x10
	str r4, [r5, #0x6c]
	pop {r3, r4, r5, r6, r7, pc}
_02250B20:
	ldr r0, [sp, #0xc]
	cmp r0, #0xb
	bne _02250BA4
	lsl r0, r6, #4
	add r1, r5, r0
	ldr r0, _02250BB0 ; =0x000003E6
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02250B36
	cmp r0, #2
	bne _02250BA4
_02250B36:
	ldr r0, _02250BB4 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02250BA4
	mov r0, #0x72
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #9
	add r3, r7, #0
	bl ov12_02252324
	cmp r0, #0
	beq _02250BA4
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _02250B88
_02250B5C:
	ldr r0, _02250BB8 ; =0x000021EC
	add r1, r5, r6
	ldrb r4, [r1, r0]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x72
	bne _02250B80
	mov r0, #0xc0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02250BA8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02250B80
	cmp r7, r4
	bne _02250B88
_02250B80:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _02250B5C
_02250B88:
	ldr r0, [r5, #0x6c]
	cmp r4, r0
	beq _02250BA4
	mov r0, #0xb5
	lsl r0, r0, #2
	add r3, r5, r0
	mov r0, #0x1c
	add r2, r4, #0
	mul r2, r0
	ldr r1, [r3, r2]
	mov r0, #4
	orr r0, r1
	str r0, [r3, r2]
	str r4, [r5, #0x6c]
_02250BA4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02250BA8: .word 0x00002D8C
_02250BAC: .word 0x000003E2
_02250BB0: .word 0x000003E6
_02250BB4: .word 0x0000213C
_02250BB8: .word 0x000021EC
	thumb_func_end ov12_02250A18

	thumb_func_start ov12_02250BBC
ov12_02250BBC: ; 0x02250BBC
	push {r3, r4, r5, lr}
	ldr r0, _02250C38 ; =0x0000216C
	add r4, r1, #0
	ldr r1, [r4, r0]
	ldr r0, _02250C3C ; =0x801FDA49
	mov r2, #0
	tst r0, r1
	bne _02250BFA
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r3
	ldr r3, [r1, r0]
	lsl r5, r3, #0x1e
	lsr r5, r5, #0x1f
	beq _02250BFA
	mov r2, #2
	bic r3, r2
	str r3, [r1, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb4
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r2, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02250BFA:
	ldr r0, _02250C38 ; =0x0000216C
	ldr r1, [r4, r0]
	ldr r0, _02250C3C ; =0x801FDA49
	tst r0, r1
	bne _02250C32
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r3, [r4, #0x6c]
	mov r0, #0x1c
	mul r0, r3
	ldr r3, [r1, r0]
	lsl r5, r3, #0x1d
	lsr r5, r5, #0x1f
	beq _02250C32
	mov r2, #4
	bic r3, r2
	str r3, [r1, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb4
	bl ov12_0224EB9C
	ldr r0, [r4, #8]
	mov r2, #1
	str r0, [r4, #0xc]
	mov r0, #0x16
	str r0, [r4, #8]
_02250C32:
	add r0, r2, #0
	pop {r3, r4, r5, pc}
	nop
_02250C38: .word 0x0000216C
_02250C3C: .word 0x801FDA49
	thumb_func_end ov12_02250BBC

	thumb_func_start ov12_02250C40
ov12_02250C40: ; 0x02250C40
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0xc0
	add r5, r1, #0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02250C6C ; =0x00002DB8
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _02250C60
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov12_022585A8
_02250C60:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_02263B4C
	pop {r4, r5, r6, pc}
	.align 2, 0
_02250C6C: .word 0x00002DB8
	thumb_func_end ov12_02250C40

	thumb_func_start ov12_02250C70
ov12_02250C70: ; 0x02250C70
	push {r4, r5}
	ldr r0, _02250C98 ; =0x00002DB0
	add r4, r2, #0
	add r5, r1, r0
	mov r0, #0xc0
	mul r4, r0
	mov r0, #1
	ldr r3, [r5, r4]
	lsl r0, r0, #0xc
	orr r0, r3
	str r0, [r5, r4]
	ldr r0, _02250C9C ; =0x00003044
	lsl r2, r2, #2
	ldr r3, [r1, r0]
	add r1, r1, r2
	add r0, #8
	str r3, [r1, r0]
	pop {r4, r5}
	bx lr
	nop
_02250C98: .word 0x00002DB0
_02250C9C: .word 0x00003044
	thumb_func_end ov12_02250C70

	thumb_func_start ov12_02250CA0
ov12_02250CA0: ; 0x02250CA0
	push {r4, r5}
	ldr r4, _02250CE4 ; =0x00002DB0
	add r3, r2, #0
	mov r0, #0xc0
	mul r3, r0
	add r0, r1, r4
	ldr r5, [r0, r3]
	ldr r2, _02250CE8 ; =0xFFFFEFFF
	and r2, r5
	str r2, [r0, r3]
	ldr r5, [r0, r3]
	ldr r2, _02250CEC ; =0xFFFFFCFF
	and r2, r5
	str r2, [r0, r3]
	add r0, r4, #0
	add r0, #0x10
	add r5, r1, r0
	ldr r2, [r5, r3]
	ldr r0, _02250CF0 ; =0xDFFBFF3F
	add r4, #0x18
	and r0, r2
	str r0, [r5, r3]
	add r2, r1, r4
	ldr r1, [r2, r3]
	ldr r0, _02250CF4 ; =0xFFFC7FFF
	and r0, r1
	str r0, [r2, r3]
	ldr r1, [r2, r3]
	ldr r0, _02250CF8 ; =0xFFE3FFFF
	and r0, r1
	str r0, [r2, r3]
	pop {r4, r5}
	bx lr
	nop
_02250CE4: .word 0x00002DB0
_02250CE8: .word 0xFFFFEFFF
_02250CEC: .word 0xFFFFFCFF
_02250CF0: .word 0xDFFBFF3F
_02250CF4: .word 0xFFFC7FFF
_02250CF8: .word 0xFFE3FFFF
	thumb_func_end ov12_02250CA0

	thumb_func_start ov12_02250CFC
ov12_02250CFC: ; 0x02250CFC
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	ldr r0, _02250D48 ; =0x00002DAC
	ldr r0, [r1, r0]
	mov r1, #7
	tst r1, r0
	beq _02250D10
	mov r0, #1
	bx lr
_02250D10:
	mov r1, #8
	tst r1, r0
	beq _02250D1A
	mov r0, #2
	bx lr
_02250D1A:
	mov r1, #0x10
	tst r1, r0
	beq _02250D24
	mov r0, #3
	bx lr
_02250D24:
	mov r1, #0x20
	tst r1, r0
	beq _02250D2E
	mov r0, #4
	bx lr
_02250D2E:
	mov r1, #0x40
	tst r1, r0
	beq _02250D38
	mov r0, #5
	bx lr
_02250D38:
	mov r1, #0x80
	tst r0, r1
	beq _02250D42
	mov r0, #2
	bx lr
_02250D42:
	mov r0, #0
	bx lr
	nop
_02250D48: .word 0x00002DAC
	thumb_func_end ov12_02250CFC

	thumb_func_start ov12_02250D4C
ov12_02250D4C: ; 0x02250D4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r7, r1, #0
	bl ov12_0223A7E0
	mov r1, #0x84
	tst r1, r0
	beq _02250D64
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02250D64:
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	bne _02250D72
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02250D72:
	mov r2, #2
	tst r0, r2
	beq _02250D7E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02250D7E:
	ldr r0, [sp]
	bl ov12_0223A9AC
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
_02250D8A:
	ldr r0, [sp, #4]
	cmp r0, #4
	bls _02250D92
	b _02250F28
_02250D92:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250D9E: ; jump table
	.short _02250DA8 - _02250D9E - 2 ; case 0
	.short _02250DEC - _02250D9E - 2 ; case 1
	.short _02250E34 - _02250D9E - 2 ; case 2
	.short _02250EA8 - _02250D9E - 2 ; case 3
	.short _02250F28 - _02250D9E - 2 ; case 4
_02250DA8:
	ldr r0, _02250F38 ; =0x00002E7C
	ldrb r0, [r7, r0]
	cmp r0, #1
	bne _02250DE4
	mov r0, #0x85
	lsl r0, r0, #6
	ldr r1, [r7, r0]
	mov r0, #0x20
	tst r0, r1
	bne _02250DE4
	ldr r0, [sp, #8]
	mov r1, #0xd
	mov r2, #5
	bl sub_020734D0
	cmp r0, #0
	beq _02250DE4
	mov r1, #0x85
	lsl r1, r1, #6
	ldr r2, [r7, r1]
	mov r0, #0x20
	orr r0, r2
	str r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xd
	lsl r0, r0, #4
	str r1, [r7, r0]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250DE4:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _02250F28
_02250DEC:
	ldr r1, _02250F3C ; =0x00002E7D
	mov r0, #2
	ldrb r2, [r7, r1]
	tst r0, r2
	bne _02250E2C
	add r0, r1, #0
	sub r0, #0x31
	sub r1, #0x2d
	ldr r2, [r7, r0]
	ldr r0, [r7, r1]
	lsr r0, r0, #1
	cmp r2, r0
	bhi _02250E2C
	ldr r0, [sp, #8]
	mov r1, #0xe
	mov r2, #5
	bl sub_020734D0
	cmp r0, #0
	beq _02250E2C
	ldr r1, _02250F3C ; =0x00002E7D
	mov r0, #2
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xe
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250E2C:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _02250F28
_02250E34:
	ldr r0, _02250F3C ; =0x00002E7D
	ldrb r1, [r7, r0]
	mov r0, #3
	tst r0, r1
	bne _02250EA0
	ldr r0, [sp]
	mov r1, #1
	bl ov12_0223A7F4
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	bl sub_02074640
	cmp r0, #0
	ble _02250E76
_02250E54:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02074644
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02250E6A
	add r6, r6, #1
_02250E6A:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_02074640
	cmp r4, r0
	blt _02250E54
_02250E76:
	cmp r6, #1
	bne _02250EA0
	ldr r0, [sp, #8]
	mov r1, #0xf
	mov r2, #5
	bl sub_020734D0
	cmp r0, #0
	beq _02250EA0
	ldr r1, _02250F3C ; =0x00002E7D
	mov r0, #3
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0xf
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250EA0:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _02250F28
_02250EA8:
	ldr r0, _02250F3C ; =0x00002E7D
	ldrb r1, [r7, r0]
	mov r0, #4
	tst r0, r1
	bne _02250F22
	ldr r0, [sp]
	mov r1, #1
	bl ov12_0223A7F4
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	bl sub_02074640
	cmp r0, #0
	ble _02250EEA
_02250EC8:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02074644
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02250EDE
	add r6, r6, #1
_02250EDE:
	add r0, r5, #0
	add r4, r4, #1
	bl sub_02074640
	cmp r4, r0
	blt _02250EC8
_02250EEA:
	cmp r6, #1
	bne _02250F22
	ldr r0, _02250F40 ; =0x00002E4C
	ldr r1, [r7, r0]
	add r0, r0, #4
	ldr r0, [r7, r0]
	lsr r0, r0, #1
	cmp r1, r0
	bhi _02250F22
	ldr r0, [sp, #8]
	mov r1, #0x10
	mov r2, #5
	bl sub_020734D0
	cmp r0, #0
	beq _02250F22
	ldr r1, _02250F3C ; =0x00002E7D
	mov r0, #4
	ldrb r2, [r7, r1]
	add sp, #0xc
	orr r0, r2
	strb r0, [r7, r1]
	mov r0, #0x13
	mov r1, #0x10
	lsl r0, r0, #4
	str r1, [r7, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02250F22:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_02250F28:
	ldr r0, [sp, #4]
	cmp r0, #4
	beq _02250F30
	b _02250D8A
_02250F30:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02250F38: .word 0x00002E7C
_02250F3C: .word 0x00002E7D
_02250F40: .word 0x00002E4C
	thumb_func_end ov12_02250D4C

	thumb_func_start ov12_02250F44
ov12_02250F44: ; 0x02250F44
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02251024 ; =0x00002144
	add r5, r0, #0
	mov r4, #0
	add r0, r1, #0
	str r4, [r5, r1]
	mov r2, #1
	add r0, #0xc
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x10
	str r4, [r5, r0]
	add r0, r1, #0
	mov r2, #0xa
	add r0, #0x14
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x1c
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x20
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x28
	str r4, [r5, r0]
	mov r0, #0xff
	add r2, r1, #0
	str r0, [r5, #0x74]
	add r2, #0x2c
	str r4, [r5, r2]
	add r2, r1, #0
	add r2, #0x30
	str r4, [r5, r2]
	add r2, r1, #0
	add r2, #0x34
	str r4, [r5, r2]
	add r2, r5, #0
	add r2, #0x88
	str r4, [r2]
	add r2, r5, #0
	add r2, #0x8c
	str r4, [r2]
	add r2, r5, #0
	add r2, #0x94
	str r0, [r2]
	add r0, r1, #0
	add r0, #0x38
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x39
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x3a
	strb r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x3c
	str r4, [r5, r0]
	add r0, r1, #0
	str r4, [r5, #0x38]
	add r0, #0x40
	str r4, [r5, r0]
	add r0, r1, #0
	add r0, #0x44
	str r4, [r5, r0]
	str r4, [r5, #0x10]
	str r4, [r5, #0x18]
	str r4, [r5, #0x20]
	str r4, [r5, #0x28]
	str r4, [r5, #0x30]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x48]
	str r4, [r5, #0x4c]
	str r4, [r5, #0x50]
	add r0, r1, #0
	str r4, [r5, #0x54]
	sub r0, #8
	ldr r2, [r5, r0]
	ldr r0, _02251028 ; =0xFF800000
	mov r7, #6
	and r2, r0
	add r0, r1, #0
	sub r0, #8
	str r2, [r5, r0]
	sub r0, r1, #4
	ldr r2, [r5, r0]
	ldr r0, _0225102C ; =0xFFFFFEA1
	and r2, r0
	sub r0, r1, #4
	str r2, [r5, r0]
	ldr r0, _02251030 ; =0x00003120
	strb r4, [r5, r0]
	mov r0, #0xb5
	lsl r0, r0, #2
	add r6, r5, r0
_02251008:
	mov r0, #0
	add r1, r6, #0
	mov r2, #0x1c
	bl sub_020D4858
	add r1, r5, r4
	ldr r0, _02251034 ; =0x000021A4
	add r4, r4, #1
	add r6, #0x1c
	strb r7, [r1, r0]
	cmp r4, #4
	blt _02251008
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02251024: .word 0x00002144
_02251028: .word 0xFF800000
_0225102C: .word 0xFFFFFEA1
_02251030: .word 0x00003120
_02251034: .word 0x000021A4
	thumb_func_end ov12_02250F44

	thumb_func_start ov12_02251038
ov12_02251038: ; 0x02251038
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_02251042:
	ldr r0, _022510A4 ; =0x0000306C
	mov r1, #0xff
	strh r1, [r5, r0]
	ldr r0, _022510A8 ; =0x000021A0
	add r2, r6, r4
	mov r1, #6
	strb r1, [r2, r0]
	add r0, r7, #0
	bl ov12_0223BD98
	ldr r1, _022510AC ; =0x0000310C
	add r4, r4, #1
	strh r0, [r5, r1]
	add r5, r5, #2
	cmp r4, #4
	blt _02251042
	ldr r0, _022510B0 ; =0x00002168
	mov r1, #1
	str r1, [r6, r0]
	mov r0, #0x5d
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r0, r7, #0
	bl ov12_0223A7E0
	mov r1, #2
	tst r0, r1
	bne _02251096
	add r0, r1, #0
	bl sub_020726C0
	ldr r1, _022510B4 ; =0x00003108
	ldrb r2, [r6, r1]
	orr r0, r2
	strb r0, [r6, r1]
	mov r0, #3
	bl sub_020726C0
	ldr r1, _022510B4 ; =0x00003108
	ldrb r2, [r6, r1]
	orr r0, r2
	strb r0, [r6, r1]
_02251096:
	ldr r0, _022510B8 ; =0x0000311C
	mov r1, #6
	strb r1, [r6, r0]
	add r0, r0, #1
	strb r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022510A4: .word 0x0000306C
_022510A8: .word 0x000021A0
_022510AC: .word 0x0000310C
_022510B0: .word 0x00002168
_022510B4: .word 0x00003108
_022510B8: .word 0x0000311C
	thumb_func_end ov12_02251038

	thumb_func_start ov12_022510BC
ov12_022510BC: ; 0x022510BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r1, [sp, #4]
	str r0, [sp]
	ldr r1, _02251400 ; =0x00002DC8
	ldr r0, [sp, #4]
	add r4, r2, #0
	add r1, r0, r1
	mov r0, #0xc0
	mul r0, r4
	add r5, r1, r0
	str r5, [sp, #0x14]
	add r3, sp, #0x20
	mov r2, #7
_022510D8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022510D8
	ldr r0, [sp]
	bl ov12_0223A7F0
	add r6, r0, #0
	ldr r0, [sp]
	bl ov12_0223A7E0
	ldr r1, [sp, #4]
	lsl r2, r4, #4
	add r1, r1, r2
	ldr r2, _02251404 ; =0x000021A8
	mov r0, #0x28
	str r0, [r1, r2]
	ldr r1, [sp, #4]
	sub r2, #0x6c
	ldr r1, [r1, r2]
	add r0, #0xd8
	tst r0, r1
	bne _02251196
	mov r5, #0
	cmp r6, #0
	ble _02251172
	ldr r1, [sp, #4]
	ldr r2, _02251408 ; =0x00002DCC
	add r0, r1, #0
	add r2, r0, r2
	mov r0, #0x18
	mov ip, r0
	mov r7, #3
_0225111A:
	ldr r0, _0225140C ; =0x00002DB0
	ldr r3, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r3
	beq _0225113C
	ldr r0, [r2]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _0225113C
	ldr r0, _0225140C ; =0x00002DB0
	ldr r3, [r1, r0]
	ldr r0, _02251410 ; =0xFBFFFFFF
	and r3, r0
	ldr r0, _0225140C ; =0x00002DB0
	str r3, [r1, r0]
_0225113C:
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	mov r0, #0x18
	tst r0, r3
	beq _02251168
	ldr r0, [r2]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _02251168
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r3, ip
	bic r0, r3
	mov r3, #0xb7
	lsl r3, r3, #6
	str r0, [r1, r3]
	ldr r0, [r2]
	bic r0, r7
	str r0, [r2]
_02251168:
	add r5, r5, #1
	add r1, #0xc0
	add r2, #0xc0
	cmp r5, r6
	blt _0225111A
_02251172:
	mov r0, #0xc0
	mul r0, r4
	str r0, [sp, #0xc]
	ldr r2, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r0, #0
	add r1, r2, r1
	ldr r2, _0225140C ; =0x00002DB0
	str r0, [r1, r2]
	ldr r1, [sp, #4]
	add r2, #0x10
	add r2, r1, r2
	ldr r1, [sp, #0xc]
	add r1, r2, r1
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [r2, r1]
	b _0225120E
_02251196:
	mov r0, #0xc0
	mul r0, r4
	str r0, [sp, #0xc]
	ldr r1, _0225140C ; =0x00002DB0
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r0, r1
	ldr r3, [r0, r2]
	ldr r2, _02251414 ; =0x15100007
	and r3, r2
	ldr r2, [sp, #0xc]
	str r3, [r0, r2]
	add r2, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x10
	add r0, r0, r2
	ldr r2, [sp, #0xc]
	add r2, r0, r2
	str r2, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [r0, r2]
	ldr r2, _02251418 ; =0x0FA3843F
	and r3, r2
	ldr r2, [sp, #0xc]
	str r3, [r0, r2]
	mov r2, #0
	cmp r6, #0
	ble _0225120E
	ldr r0, [sp, #4]
	add r1, #0x1c
	add r3, r0, #0
	add r1, r3, r1
	mov r7, #0x18
_022511D8:
	mov r3, #0xb7
	lsl r3, r3, #6
	ldr r5, [r0, r3]
	mov r3, #0x18
	tst r3, r5
	beq _02251204
	ldr r3, [r1]
	lsl r3, r3, #0x1e
	lsr r3, r3, #0x1e
	cmp r4, r3
	bne _02251204
	mov r3, #0xb7
	lsl r3, r3, #6
	ldr r5, [r0, r3]
	bic r5, r7
	str r5, [r0, r3]
	ldr r5, [r0, r3]
	mov r3, #0x10
	orr r5, r3
	mov r3, #0xb7
	lsl r3, r3, #6
	str r5, [r0, r3]
_02251204:
	add r2, r2, #1
	add r0, #0xc0
	add r1, #0xc0
	cmp r2, r6
	blt _022511D8
_0225120E:
	mov r0, #0
	str r0, [sp, #8]
	cmp r6, #0
	ble _02251276
	ldr r5, [sp, #4]
	ldr r1, _02251408 ; =0x00002DCC
	add r0, r5, #0
	add r7, r0, r1
_0225121E:
	add r0, r4, #0
	bl sub_020726C0
	ldr r1, _0225140C ; =0x00002DB0
	lsl r0, r0, #0x10
	ldr r1, [r5, r1]
	tst r0, r1
	beq _02251246
	add r0, r4, #0
	bl sub_020726C0
	ldr r1, _0225140C ; =0x00002DB0
	lsl r2, r0, #0x10
	mov r0, #0
	mvn r0, r0
	ldr r1, [r5, r1]
	eor r0, r2
	and r1, r0
	ldr r0, _0225140C ; =0x00002DB0
	str r1, [r5, r0]
_02251246:
	ldr r0, _0225140C ; =0x00002DB0
	ldr r1, [r5, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02251268
	ldr r0, [r7]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r4, r0
	bne _02251268
	ldr r0, _0225140C ; =0x00002DB0
	ldr r1, [r5, r0]
	ldr r0, _0225141C ; =0xFFFF1FFF
	and r1, r0
	ldr r0, _0225140C ; =0x00002DB0
	str r1, [r5, r0]
_02251268:
	ldr r0, [sp, #8]
	add r5, #0xc0
	add r0, r0, #1
	add r7, #0xc0
	str r0, [sp, #8]
	cmp r0, r6
	blt _0225121E
_02251276:
	mov r2, #0
	add r1, r2, #0
_0225127A:
	ldr r0, [sp, #0x14]
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #0x38
	blo _0225127A
	ldr r1, _02251420 ; =0x0000213C
	ldr r0, [sp, #4]
	ldr r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r1
	beq _0225132E
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r1, r0
	ldr r1, _02251424 ; =0x00002DE0
	str r2, [r0, r1]
	ldr r0, [sp, #4]
	sub r1, #0x14
	add r0, r0, r1
	ldr r1, [sp, #0xc]
	mov r2, #3
	ldr r1, [r0, r1]
	bic r1, r2
	ldr r2, [sp, #0x24]
	lsl r2, r2, #0x1e
	lsr r3, r2, #0x1e
	mov r2, #3
	and r2, r3
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x14]
	lsl r3, r3, #0x11
	lsr r3, r3, #0x1e
	lsl r3, r3, #0x1e
	ldr r1, [r1]
	ldr r2, _02251428 ; =0xFFFF9FFF
	lsr r3, r3, #0x11
	and r1, r2
	orr r3, r1
	ldr r1, [sp, #0x14]
	str r3, [r1]
	ldr r1, [sp, #0xc]
	ldr r3, [r0, r1]
	asr r1, r2, #5
	ldr r2, [sp, #0x24]
	and r1, r3
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1e
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x16
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	ldr r1, _0225141C ; =0xFFFF1FFF
	and r1, r2
	ldr r2, [sp, #0x24]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	lsl r2, r2, #0x1d
	lsr r2, r2, #0x10
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
	ldr r3, [sp, #0x24]
	ldr r1, [r0, r1]
	lsl r3, r3, #0xa
	ldr r2, _0225142C ; =0xFFC7FFFF
	lsr r3, r3, #0x1d
	lsl r3, r3, #0x1d
	and r1, r2
	lsr r3, r3, #0xa
	orr r3, r1
	ldr r1, [sp, #0xc]
	str r3, [r0, r1]
	ldr r3, [r0, r1]
	asr r1, r2, #3
	ldr r2, [sp, #0x24]
	and r1, r3
	lsl r2, r2, #0xd
	lsr r2, r2, #0x1d
	lsl r2, r2, #0x1d
	lsr r2, r2, #0xd
	orr r2, r1
	ldr r1, [sp, #0xc]
	str r2, [r0, r1]
_0225132E:
	mov r0, #0xc0
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r3, #0x90
	ldr r2, [r2, r3]
	add r1, r4, #0
	ldr r3, [sp, #4]
	mul r1, r0
	add r5, r0, #0
	add r1, r3, r1
	ldr r3, _02251430 ; =0x00002DD4
	add r2, r2, #1
	str r2, [r1, r3]
	ldr r2, [sp, #4]
	add r5, #0x90
	ldr r2, [r2, r5]
	add r0, #0x90
	add r5, r2, #1
	add r2, r3, #4
	str r5, [r1, r2]
	ldr r1, [sp, #0x14]
	lsl r7, r4, #1
	ldr r2, [r1]
	ldr r1, _02251434 ; =0xBFFFFFFF
	mov r3, #0
	and r1, r2
	ldr r2, [sp, #4]
	mov r5, #0xff
	ldr r0, [r2, r0]
	add r0, r0, #1
	lsl r0, r0, #0x1f
	lsr r0, r0, #1
	orr r1, r0
	ldr r0, [sp, #0x14]
	str r1, [r0]
	add r0, r2, #0
	add r2, r0, r7
	ldr r0, _02251438 ; =0x0000305C
	add r1, r0, #0
	strh r3, [r2, r0]
	add r1, #8
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x10
	strh r5, [r2, r1]
	add r1, r0, #0
	add r1, #0x18
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x20
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x28
	strh r3, [r2, r1]
	ldr r1, [sp, #4]
	lsl r5, r4, #3
	add r1, r1, r5
	add r5, r0, #0
	add r5, #0x30
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x32
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x34
	strh r3, [r1, r5]
	add r5, r0, #0
	add r5, #0x36
	strh r3, [r1, r5]
	add r1, r0, #0
	add r1, #0x50
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x68
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x70
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x78
	strh r3, [r2, r1]
	add r0, #0x80
	strh r3, [r2, r0]
	add r0, r4, #0
	bl sub_020726C0
	mov r1, #6
	lsl r3, r0, #8
	mov r0, #0
	mvn r0, r0
	ldr r2, [sp, #4]
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	eor r0, r3
	and r2, r0
	ldr r0, [sp, #4]
	str r2, [r0, r1]
	ldr r0, [sp, #0x10]
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0x16
	tst r0, r1
	beq _02251456
	ldr r0, _0225143C ; =0x00002D42
	b _02251440
	.align 2, 0
_02251400: .word 0x00002DC8
_02251404: .word 0x000021A8
_02251408: .word 0x00002DCC
_0225140C: .word 0x00002DB0
_02251410: .word 0xFBFFFFFF
_02251414: .word 0x15100007
_02251418: .word 0x0FA3843F
_0225141C: .word 0xFFFF1FFF
_02251420: .word 0x0000213C
_02251424: .word 0x00002DE0
_02251428: .word 0xFFFF9FFF
_0225142C: .word 0xFFC7FFFF
_02251430: .word 0x00002DD4
_02251434: .word 0xBFFFFFFF
_02251438: .word 0x0000305C
_0225143C: .word 0x00002D42
_02251440:
	ldr r1, [sp, #4]
	add r5, r1, r0
	ldr r1, [sp, #0xc]
	ldrh r3, [r5, r1]
	add r1, r0, #2
	ldr r0, [sp, #4]
	add r2, r0, r1
	ldr r0, [sp, #0xc]
	ldrh r1, [r2, r0]
	strh r1, [r5, r0]
	strh r3, [r2, r0]
_02251456:
	mov r5, #0
	cmp r6, #0
	ble _0225149A
	ldr r0, [sp, #4]
	str r0, [sp, #0x18]
	add r7, r0, r7
_02251462:
	cmp r5, r4
	beq _02251486
	ldr r0, [sp]
	add r1, r5, #0
	bl ov12_0223AB1C
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AB1C
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	beq _02251486
	ldr r1, [sp, #0x18]
	ldr r0, _022514BC ; =0x00003084
	mov r2, #0
	strh r2, [r1, r0]
_02251486:
	ldr r0, _022514C0 ; =0x0000308C
	mov r1, #0
	strh r1, [r7, r0]
	ldr r0, [sp, #0x18]
	add r5, r5, #1
	add r0, r0, #2
	str r0, [sp, #0x18]
	add r7, #8
	cmp r5, r6
	blt _02251462
_0225149A:
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_02258584
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_0225859C
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_022585A8
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022514BC: .word 0x00003084
_022514C0: .word 0x0000308C
	thumb_func_end ov12_022510BC

	thumb_func_start ov12_022514C4
ov12_022514C4: ; 0x022514C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #4]
	str r0, [sp]
	add r5, r2, #0
	bl ov12_0223A7F0
	str r0, [sp, #0xc]
	mov r0, #0xc0
	mul r0, r5
	ldr r1, [sp, #4]
	str r0, [sp, #8]
	add r3, r1, r0
	ldr r0, _022516E8 ; =0x00002D58
	mov r2, #0
	mov r1, #6
_022514E4:
	add r2, r2, #1
	strb r1, [r3, r0]
	add r3, r3, #1
	cmp r2, #8
	blt _022514E4
	mov r0, #0xc0
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r7, #0
	add r2, r0, r1
	ldr r1, _022516EC ; =0x00002DB0
	add r0, r1, #0
	str r7, [r2, r1]
	add r0, #0x10
	str r7, [r2, r0]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0225158A
	ldr r4, [sp, #4]
	add r1, #0x1c
	add r0, r4, #0
	add r6, r0, r1
_02251512:
	ldr r0, _022516EC ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0x1a
	tst r0, r1
	beq _02251534
	ldr r0, [r6]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1e
	cmp r5, r0
	bne _02251534
	ldr r0, _022516EC ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _022516F0 ; =0xFBFFFFFF
	and r1, r0
	ldr r0, _022516EC ; =0x00002DB0
	str r1, [r4, r0]
_02251534:
	add r0, r5, #0
	bl sub_020726C0
	ldr r1, _022516EC ; =0x00002DB0
	lsl r0, r0, #0x10
	ldr r1, [r4, r1]
	tst r0, r1
	beq _0225155C
	add r0, r5, #0
	bl sub_020726C0
	ldr r1, _022516EC ; =0x00002DB0
	lsl r2, r0, #0x10
	mov r0, #0
	mvn r0, r0
	ldr r1, [r4, r1]
	eor r0, r2
	and r1, r0
	ldr r0, _022516EC ; =0x00002DB0
	str r1, [r4, r0]
_0225155C:
	ldr r0, _022516EC ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225157E
	ldr r0, [r6]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r5, r0
	bne _0225157E
	ldr r0, _022516EC ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _022516F4 ; =0xFFFF1FFF
	and r1, r0
	ldr r0, _022516EC ; =0x00002DB0
	str r1, [r4, r0]
_0225157E:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r4, #0xc0
	add r6, #0xc0
	cmp r7, r0
	blt _02251512
_0225158A:
	ldr r1, _022516F8 ; =0x00002DC8
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r6, r1, r0
	mov r1, #0
	add r0, r1, #0
_02251598:
	strb r0, [r6, r1]
	add r1, r1, #1
	cmp r1, #0x38
	blo _02251598
	mov r2, #0x75
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	add r2, r1, r2
	lsl r1, r5, #6
	add r1, r2, r1
	mov r4, #0
_022515AE:
	strb r4, [r1, r0]
	add r0, r0, #1
	cmp r0, #0x40
	blo _022515AE
	mov r2, #0xc0
	add r3, r2, #0
	ldr r0, [sp, #4]
	add r3, #0x90
	ldr r0, [r0, r3]
	add r1, r5, #0
	ldr r3, [sp, #4]
	mul r1, r2
	add r3, r3, r1
	add r1, r2, #0
	ldr r7, _022516FC ; =0x00002DD4
	add r0, r0, #1
	str r0, [r3, r7]
	ldr r0, [sp, #4]
	add r1, #0x90
	ldr r0, [r0, r1]
	add r1, r7, #4
	add r0, r0, #1
	str r0, [r3, r1]
	ldr r1, [r6]
	ldr r0, _02251700 ; =0xBFFFFFFF
	add r2, #0x90
	and r0, r1
	ldr r1, [sp, #4]
	mov r3, #0xff
	ldr r1, [r1, r2]
	add r1, r1, #1
	lsl r1, r1, #0x1f
	lsr r1, r1, #1
	orr r0, r1
	str r0, [r6]
	ldr r0, [sp, #4]
	lsl r6, r5, #1
	add r2, r0, r6
	ldr r0, _02251704 ; =0x0000305C
	add r1, r0, #0
	strh r4, [r2, r0]
	add r1, #8
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x10
	strh r3, [r2, r1]
	add r1, r0, #0
	add r1, #0x18
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x20
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x28
	strh r4, [r2, r1]
	ldr r1, [sp, #4]
	lsl r3, r5, #3
	add r1, r1, r3
	add r3, r0, #0
	add r3, #0x30
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x32
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x34
	strh r4, [r1, r3]
	add r3, r0, #0
	add r3, #0x36
	strh r4, [r1, r3]
	add r1, r0, #0
	add r1, #0x50
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x68
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x70
	strh r4, [r2, r1]
	add r1, r0, #0
	add r1, #0x78
	strh r4, [r2, r1]
	add r0, #0x80
	strh r4, [r2, r0]
	add r0, r5, #0
	bl sub_020726C0
	mov r1, #6
	lsl r3, r0, #8
	mov r0, #0
	mvn r0, r0
	ldr r2, [sp, #4]
	lsl r1, r1, #6
	ldr r2, [r2, r1]
	eor r0, r3
	and r2, r0
	ldr r0, [sp, #4]
	mov r4, #0
	str r2, [r0, r1]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022516B4
	ldr r7, [sp, #4]
	add r0, r7, #0
	add r6, r0, r6
_02251680:
	cmp r4, r5
	beq _022516A2
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AB1C
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r1, r5, #0
	bl ov12_0223AB1C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _022516A2
	ldr r0, _02251708 ; =0x00003084
	mov r1, #0
	strh r1, [r7, r0]
_022516A2:
	ldr r0, _0225170C ; =0x0000308C
	mov r1, #0
	strh r1, [r6, r0]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r7, r7, #2
	add r6, #8
	cmp r4, r0
	blt _02251680
_022516B4:
	mov r1, #0x4f
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	add r3, r0, r1
	lsl r2, r5, #2
	ldr r1, [r3, r2]
	mov r0, #1
	bic r1, r0
	str r1, [r3, r2]
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_02258584
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_0225859C
	lsl r1, r5, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov12_022585A8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022516E8: .word 0x00002D58
_022516EC: .word 0x00002DB0
_022516F0: .word 0xFBFFFFFF
_022516F4: .word 0xFFFF1FFF
_022516F8: .word 0x00002DC8
_022516FC: .word 0x00002DD4
_02251700: .word 0xBFFFFFFF
_02251704: .word 0x0000305C
_02251708: .word 0x00003084
_0225170C: .word 0x0000308C
	thumb_func_end ov12_022514C4

	thumb_func_start ov12_02251710
ov12_02251710: ; 0x02251710
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x75
	add r5, r1, #0
	lsl r0, r0, #2
	add r7, r5, r0
	mov r0, #0xd1
	lsl r0, r0, #2
	add r6, r5, r0
	mov r0, #8
	add r4, r5, #0
	str r0, [sp, #8]
_0225172E:
	mov r0, #0
	add r1, r7, #0
	mov r2, #0x40
	bl sub_020D4858
	mov r0, #0
	add r1, r6, #0
	mov r2, #4
	bl sub_020D4858
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, [sp, #8]
	bic r1, r0
	ldr r0, _022517D8 ; =0x00002DB0
	str r1, [r4, r0]
	add r0, #0x20
	ldr r0, [r4, r0]
	add r1, r0, #1
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bge _0225176A
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _022517DC ; =0xFFBFFFFF
	and r1, r0
	ldr r0, _022517D8 ; =0x00002DB0
	str r1, [r4, r0]
_0225176A:
	ldr r0, _022517E0 ; =0x00002DAC
	ldr r1, [r4, r0]
	mov r0, #7
	tst r0, r1
	beq _0225178A
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r1
	beq _0225178A
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r5, #0
	bl ov12_02250CA0
_0225178A:
	ldr r0, _022517E0 ; =0x00002DAC
	ldr r1, [r4, r0]
	mov r0, #7
	tst r0, r1
	beq _022517AC
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r1
	beq _022517AC
	ldr r0, _022517D8 ; =0x00002DB0
	ldr r1, [r4, r0]
	ldr r0, _022517E4 ; =0xFFFFF3FF
	and r1, r0
	ldr r0, _022517D8 ; =0x00002DB0
	str r1, [r4, r0]
_022517AC:
	ldr r0, [sp, #4]
	add r7, #0x40
	add r0, r0, #1
	add r6, r6, #4
	add r4, #0xc0
	str r0, [sp, #4]
	cmp r0, #4
	blt _0225172E
	mov r2, #0x71
	lsl r2, r2, #2
	ldr r0, [r5, r2]
	ldr r1, _022517E8 ; =0xFFEFFFFF
	and r0, r1
	str r0, [r5, r2]
	add r0, r2, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r2, #8
	and r0, r1
	str r0, [r5, r2]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022517D8: .word 0x00002DB0
_022517DC: .word 0xFFBFFFFF
_022517E0: .word 0x00002DAC
_022517E4: .word 0xFFFFF3FF
_022517E8: .word 0xFFEFFFFF
	thumb_func_end ov12_02251710

	thumb_func_start ov12_022517EC
ov12_022517EC: ; 0x022517EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp]
	ldr r0, [sp, #0x70]
	add r7, r1, #0
	str r0, [sp, #0x70]
	str r2, [sp, #4]
	add r0, r7, #0
	add r1, r2, #0
	add r5, r3, #0
	bl ov12_02255830
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	mov r1, #0xc0
	mul r1, r0
	add r4, r7, r1
	str r1, [sp, #0x38]
	ldr r0, [sp, #0x70]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x70]
	mov r1, #2
	and r0, r1
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x70]
	mov r1, #4
	and r0, r1
	str r0, [sp, #0x24]
	ldr r0, [sp, #4]
	mov r1, #8
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x70]
	mov r2, #0x10
	and r0, r1
	ldr r1, _02251A04 ; =0x00002DC8
	str r0, [sp, #0x1c]
	add r0, r7, r1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	sub r1, #0x88
	and r0, r2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x70]
	mov r2, #0x20
	and r0, r2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x70]
	mov r2, #0x40
	and r0, r2
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x70]
	mov r0, #0x80
	and r2, r0
	str r2, [sp, #0xc]
	lsl r2, r0, #2
	ldr r0, [sp, #0x70]
	mov r6, #0
	and r0, r2
	str r0, [sp, #8]
	add r0, r7, r1
	str r0, [sp, #0x40]
	ldr r0, _02251A08 ; =0x00002DE8
	str r4, [sp, #0x30]
	add r0, r4, r0
	str r0, [sp, #0x44]
	ldr r0, _02251A0C ; =0x00002DB0
	add r0, r4, r0
	str r0, [sp, #0x48]
	ldr r0, _02251A10 ; =0x00002DEC
	add r0, r4, r0
	str r0, [sp, #0x4c]
	ldr r0, _02251A14 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x50]
	ldr r0, _02251A14 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x58]
	ldr r0, _02251A14 ; =0x00002DF8
	add r0, r4, r0
	str r0, [sp, #0x54]
_02251894:
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _022518AA
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _022518AA
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_022518AA:
	ldr r1, [sp, #0x30]
	ldr r0, _02251A1C ; =0x00002D6C
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022518C2
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _022518C2
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_022518C2:
	ldr r0, [sp, #0x44]
	ldrh r1, [r0]
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	bne _022518DC
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _022518DC
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_022518DC:
	ldr r1, [sp, #0x20]
	ldr r0, _02251A20 ; =0x0000307C
	ldrh r1, [r1, r0]
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	bne _02251904
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02251904
	ldr r0, [sp, #0x48]
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0x1e
	tst r0, r1
	beq _02251904
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_02251904:
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	ldr r0, [r1, r0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1d
	beq _0225192E
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0225192E
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	lsl r0, r0, #4
	add r1, r7, r0
	ldr r0, _02251A24 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0225192E
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_0225192E:
	ldr r3, _02251A18 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov12_02252C74
	cmp r0, #0
	beq _0225194E
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0225194E
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_0225194E:
	ldr r3, _02251A18 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov12_02252DC4
	cmp r0, #0
	beq _0225196E
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0225196E
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_0225196E:
	ldr r3, _02251A18 ; =0x00002D4C
	ldr r0, [sp]
	ldrh r3, [r4, r3]
	ldr r2, [sp, #4]
	add r1, r7, #0
	bl ov12_02252DF8
	cmp r0, #0
	beq _0225198E
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0225198E
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_0225198E:
	ldr r0, [sp, #0x4c]
	ldrh r1, [r0]
	cmp r1, #0
	beq _022519A6
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _022519A6
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_022519A6:
	ldr r0, [sp, #0x34]
	cmp r0, #0x37
	beq _022519B4
	cmp r0, #0x73
	beq _022519B4
	cmp r0, #0x7d
	bne _022519EC
_022519B4:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022519EC
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x38]
	add r0, r1, r0
	ldr r1, [sp, #0x50]
	ldrh r1, [r1]
	bl ov12_02251C60
	cmp r0, #4
	bne _022519D4
	ldr r0, [sp, #0x54]
	mov r1, #0
	strh r1, [r0]
	b _022519EC
_022519D4:
	ldr r0, [sp, #0x58]
	ldrh r1, [r0]
	cmp r1, #0
	beq _022519EC
	ldr r0, _02251A18 ; =0x00002D4C
	ldrh r0, [r4, r0]
	cmp r1, r0
	beq _022519EC
	add r0, r6, #0
	bl sub_020726C0
	orr r5, r0
_022519EC:
	ldr r0, [sp, #0x30]
	add r6, r6, #1
	add r0, r0, #1
	add r4, r4, #2
	str r0, [sp, #0x30]
	cmp r6, #4
	bge _022519FC
	b _02251894
_022519FC:
	add r0, r5, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02251A04: .word 0x00002DC8
_02251A08: .word 0x00002DE8
_02251A0C: .word 0x00002DB0
_02251A10: .word 0x00002DEC
_02251A14: .word 0x00002DF8
_02251A18: .word 0x00002D4C
_02251A1C: .word 0x00002D6C
_02251A20: .word 0x0000307C
_02251A24: .word 0x000003E1
	thumb_func_end ov12_022517EC

	thumb_func_start ov12_02251A28
ov12_02251A28: ; 0x02251A28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r3, #0
	mov r3, #1
	str r3, [sp, #8]
	mov r3, #4
	str r3, [sp]
	mov r3, #0
	str r0, [sp, #4]
	add r5, r1, #0
	add r6, r2, #0
	ldr r4, [sp, #0x40]
	bl ov12_022517EC
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_020726C0
	ldr r1, [sp, #0xc]
	tst r0, r1
	beq _02251A7A
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02251C3C ; =0x00000261
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251A7A:
	mov r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_022517EC
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_020726C0
	ldr r1, [sp, #0x10]
	tst r0, r1
	beq _02251AB2
	mov r0, #2
	strb r0, [r4, #1]
	mov r0, #0x99
	lsl r0, r0, #2
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251AB2:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_022517EC
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl sub_020726C0
	ldr r1, [sp, #0x14]
	tst r0, r1
	beq _02251AF8
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02251C44 ; =0x00000265
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251AF8:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_022517EC
	str r0, [sp, #0x18]
	add r0, r7, #0
	bl sub_020726C0
	ldr r1, [sp, #0x18]
	tst r0, r1
	beq _02251B40
	mov r0, #0xa
	strb r0, [r4, #1]
	mov r0, #0x9a
	lsl r0, r0, #2
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251B40:
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_022517EC
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl sub_020726C0
	ldr r1, [sp, #0x1c]
	tst r0, r1
	beq _02251B86
	mov r0, #0xa
	strb r0, [r4, #1]
	ldr r0, _02251C48 ; =0x000003E9
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251B86:
	mov r0, #0x80
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_022517EC
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_020726C0
	ldr r1, [sp, #0x20]
	tst r0, r1
	beq _02251BD0
	mov r0, #0x22
	strb r0, [r4, #1]
	ldr r0, _02251C4C ; =0x00000421
	add r1, r6, #0
	strh r0, [r4, #2]
	add r0, r5, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	ldr r0, _02251C50 ; =0x00000179
	str r0, [r4, #8]
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	lsl r0, r7, #1
	add r1, r1, r0
	ldr r0, _02251C40 ; =0x00002D4C
	ldrh r0, [r1, r0]
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251BD0:
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_022517EC
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl sub_020726C0
	ldr r1, [sp, #0x24]
	tst r0, r1
	beq _02251C10
	mov r0, #0x18
	strb r0, [r4, #1]
	ldr r0, _02251C54 ; =0x0000038F
	strh r0, [r4, #2]
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	ldr r0, _02251C58 ; =0x00002DB8
	ldrh r1, [r2, r0]
	add r0, #0x40
	str r1, [r4, #4]
	ldrh r0, [r2, r0]
	str r0, [r4, #8]
	mov r0, #0
	str r0, [sp, #8]
	b _02251C36
_02251C10:
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov12_022517EC
	add r5, r0, #0
	add r0, r7, #0
	bl sub_020726C0
	tst r0, r5
	beq _02251C36
	mov r0, #0
	str r0, [sp, #8]
	strb r0, [r4, #1]
	ldr r0, _02251C5C ; =0x00000337
	strh r0, [r4, #2]
_02251C36:
	ldr r0, [sp, #8]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02251C3C: .word 0x00000261
_02251C40: .word 0x00002D4C
_02251C44: .word 0x00000265
_02251C48: .word 0x000003E9
_02251C4C: .word 0x00000421
_02251C50: .word 0x00000179
_02251C54: .word 0x0000038F
_02251C58: .word 0x00002DB8
_02251C5C: .word 0x00000337
	thumb_func_end ov12_02251A28

	thumb_func_start ov12_02251C60
ov12_02251C60: ; 0x02251C60
	mov r3, #0
_02251C62:
	ldrh r2, [r0, #0xc]
	cmp r1, r2
	beq _02251C70
	add r3, r3, #1
	add r0, r0, #2
	cmp r3, #4
	blt _02251C62
_02251C70:
	add r0, r3, #0
	bx lr
	thumb_func_end ov12_02251C60

	thumb_func_start ov12_02251C74
ov12_02251C74: ; 0x02251C74
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r1, r6, #0
	add r5, r0, #0
	add r4, r3, #0
	bl ov12_02255830
	mov r1, #1
	cmp r0, #0x6a
	beq _02251C9A
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r2, r0]
	lsl r0, r1, #0xa
	tst r0, r2
	beq _02251CB0
_02251C9A:
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02251D20 ; =0x0226CC7D
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02251CB0
	ldr r0, _02251D24 ; =0x0226CC7E
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02251CB0
	mov r1, #0
_02251CB0:
	lsl r0, r6, #6
	add r2, r5, r0
	mov r0, #0x75
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _02251CCE
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02251D20 ; =0x0226CC7D
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02251CCE
	mov r1, #0
_02251CCE:
	mov r0, #6
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r2
	beq _02251CF2
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02251D20 ; =0x0226CC7D
	ldrb r0, [r0, r2]
	cmp r0, #2
	bne _02251CF2
	ldr r0, _02251D24 ; =0x0226CC7E
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02251CF2
	mov r1, #0
_02251CF2:
	mov r0, #0xc0
	mul r0, r6
	add r2, r5, r0
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r2, [r2, r0]
	mov r0, #1
	lsl r0, r0, #0x16
	tst r0, r2
	beq _02251D1C
	lsl r0, r4, #1
	add r2, r4, r0
	ldr r0, _02251D20 ; =0x0226CC7D
	ldrb r0, [r0, r2]
	cmp r0, #0x11
	bne _02251D1C
	ldr r0, _02251D24 ; =0x0226CC7E
	ldrb r0, [r0, r2]
	cmp r0, #0
	bne _02251D1C
	mov r1, #0
_02251D1C:
	add r0, r1, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02251D20: .word 0x0226CC7D
_02251D24: .word 0x0226CC7E
	thumb_func_end ov12_02251C74

	thumb_func_start ov12_02251D28
ov12_02251D28: ; 0x02251D28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, [sp, #0x50]
	add r5, r1, #0
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #8]
	str r0, [sp, #0x54]
	add r0, r2, #0
	add r4, r3, #0
	ldr r7, [sp, #0x48]
	ldr r6, [sp, #0x4c]
	cmp r0, #0xa5
	bne _02251D4A
	ldr r0, [sp, #0x50]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_02251D4A:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_02255830
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov12_02255844
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02255830
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov12_02255844
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022527CC
	cmp r0, #0x60
	bne _02251D92
	mov r0, #0
	str r0, [sp, #0x28]
	b _02251DAA
_02251D92:
	cmp r4, #0
	beq _02251D9E
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	b _02251DAA
_02251D9E:
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _0225203C ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0x28]
_02251DAA:
	ldr r0, [sp, #8]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02252040 ; =0x000003E1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x14]
	ldr r0, _02252044 ; =0x0000213C
	ldr r1, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r1
	bne _02251E08
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	ldr r1, [sp, #0x28]
	cmp r1, r0
	beq _02251DE6
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	ldr r1, [sp, #0x28]
	cmp r1, r0
	bne _02251E08
_02251DE6:
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022527CC
	cmp r0, #0x5b
	bne _02251DFA
	ldr r0, [sp, #0x50]
	lsl r0, r0, #1
	str r0, [sp, #0x50]
	b _02251E08
_02251DFA:
	ldr r1, [sp, #0x50]
	mov r0, #0xf
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2998
	str r0, [sp, #0x50]
_02251E08:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x1a
	bl ov12_02252834
	cmp r0, #1
	bne _02251E34
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bne _02251E34
	ldr r0, [sp, #0x20]
	cmp r0, #0x6a
	beq _02251E34
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xa
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	b _02251F50
_02251E34:
	mov r0, #0xc0
	add r1, r6, #0
	mul r1, r0
	ldr r0, _02252048 ; =0x00002DCC
	add r3, r5, r1
	ldr r2, [r3, r0]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1d
	beq _02251E6C
	sub r0, #0xc
	ldr r2, [r3, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r2, r0
	bne _02251E6C
	ldr r2, [sp, #0x28]
	cmp r2, #4
	bne _02251E6C
	ldr r2, [sp, #0x20]
	cmp r2, #0x6a
	beq _02251E6C
	ldr r1, [sp, #0x54]
	lsl r0, r0, #0xa
	ldr r1, [r1]
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	b _02251F50
_02251E6C:
	add r0, r5, r1
	mov r4, #0
	str r0, [sp, #0x18]
_02251E72:
	lsl r0, r4, #1
	ldr r1, _0225204C ; =0x0226CC7C
	add r0, r4, r0
	add r1, r1, r0
	str r1, [sp, #0xc]
	ldr r1, _0225204C ; =0x0226CC7C
	ldrb r1, [r1, r0]
	cmp r1, #0xfe
	bne _02251EA2
	ldr r1, [sp, #0x18]
	ldr r0, _02252050 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x1c
	tst r0, r1
	bne _02251F50
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022527CC
	cmp r0, #0x71
	beq _02251F50
	add r4, r4, #1
	b _02251F44
_02251EA2:
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02251F42
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	ldrb r0, [r0, #1]
	mov r2, #0x1b
	mov r3, #0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov12_0224EDE0
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _02251EE8
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov12_02251C74
	cmp r0, #1
	bne _02251EE8
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x54]
	ldr r3, [sp, #0x50]
	str r0, [sp, #4]
	ldrb r2, [r2, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022583B4
	str r0, [sp, #0x50]
_02251EE8:
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _02251F42
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	str r0, [sp, #0x2c]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	ldr r1, [sp, #0x2c]
	cmp r1, r0
	beq _02251F42
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov12_02251C74
	cmp r0, #1
	bne _02251F42
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x54]
	ldr r3, [sp, #0x50]
	str r0, [sp, #4]
	ldrb r2, [r2, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022583B4
	str r0, [sp, #0x50]
_02251F42:
	add r4, r4, #1
_02251F44:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _0225204C ; =0x0226CC7C
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _02251E72
_02251F50:
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x19
	bl ov12_02252834
	cmp r0, #1
	bne _02251F94
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov12_02258440
	cmp r0, #0
	beq _02251F94
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02251F7E
	mov r0, #6
	and r0, r1
	cmp r0, #6
	bne _02251F94
_02251F7E:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02251F94
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #1
	lsl r0, r0, #0x12
	orr r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	b _02252036
_02251F94:
	ldr r0, _02252044 ; =0x0000213C
	ldr r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #0xa
	add r1, r2, #0
	tst r1, r0
	bne _02252022
	lsl r0, r0, #4
	tst r0, r2
	bne _02252022
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _02251FFE
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02251FFE
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x6f
	bl ov12_02252834
	cmp r0, #1
	beq _02251FD8
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #0x74
	bl ov12_02252834
	cmp r0, #1
	bne _02251FE6
_02251FD8:
	ldr r0, [sp, #0x50]
	lsl r1, r0, #1
	add r0, r0, r1
	mov r1, #4
	bl ov12_02253178
	str r0, [sp, #0x50]
_02251FE6:
	ldr r0, [sp, #0x24]
	cmp r0, #0x60
	bne _02251FFE
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x50]
	add r0, #0x64
	str r0, [sp, #0x1c]
	mul r0, r1
	mov r1, #0x64
	bl sub_020F2998
	str r0, [sp, #0x50]
_02251FFE:
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #4
	tst r0, r1
	beq _02252036
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02252036
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022527CC
	cmp r0, #0x6e
	bne _02252036
	ldr r0, [sp, #0x50]
	lsl r0, r0, #1
	str r0, [sp, #0x50]
	b _02252036
_02252022:
	ldr r0, [sp, #0x54]
	ldr r1, [r0]
	mov r0, #2
	bic r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
	mov r0, #4
	bic r1, r0
	ldr r0, [sp, #0x54]
	str r1, [r0]
_02252036:
	ldr r0, [sp, #0x50]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225203C: .word 0x000003E2
_02252040: .word 0x000003E1
_02252044: .word 0x0000213C
_02252048: .word 0x00002DCC
_0225204C: .word 0x0226CC7C
_02252050: .word 0x00002DB0
	thumb_func_end ov12_02251D28

	thumb_func_start ov12_02252054
ov12_02252054: ; 0x02252054
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r3, [sp, #4]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	ldr r6, [sp, #0x38]
	str r0, [sp, #0x34]
	add r0, r1, #0
	cmp r0, #0xa5
	beq _0225216A
	add r0, r3, #0
	cmp r0, #0x60
	bne _0225207E
	mov r0, #0
	str r0, [sp, #0xc]
	b _02252096
_0225207E:
	cmp r2, #0
	beq _0225208A
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	b _02252096
_0225208A:
	add r0, r1, #0
	lsl r0, r0, #4
	add r1, r7, r0
	ldr r0, _02252170 ; =0x000003E2
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
_02252096:
	ldr r0, [sp, #4]
	cmp r0, #0x68
	beq _022520C6
	ldr r0, [sp, #0x28]
	cmp r0, #0x1a
	bne _022520C6
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bne _022520C6
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r7, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	bne _022520C6
	ldr r0, [sp, #0x2c]
	cmp r0, #0x6a
	beq _022520C6
	ldr r1, [r6]
	mov r0, #8
	orr r0, r1
	str r0, [r6]
	b _0225213A
_022520C6:
	mov r4, #0
_022520C8:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _02252174 ; =0x0226CC7C
	add r5, r0, r1
	ldrb r1, [r0, r1]
	cmp r1, #0xfe
	bne _022520E0
	ldr r0, [sp, #4]
	cmp r0, #0x71
	beq _0225213A
	add r4, r4, #1
	b _0225212E
_022520E0:
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _0225212C
	ldrb r0, [r5, #1]
	ldr r1, [sp, #0x30]
	str r0, [sp, #8]
	cmp r1, r0
	bne _02252106
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02252178
	cmp r0, #1
	bne _02252106
	ldrb r0, [r5, #2]
	add r1, r6, #0
	bl ov12_022521C8
_02252106:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #8]
	cmp r1, r0
	bne _0225212C
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	beq _0225212C
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	add r2, r4, #0
	bl ov12_02252178
	cmp r0, #1
	bne _0225212C
	ldrb r0, [r5, #2]
	add r1, r6, #0
	bl ov12_022521C8
_0225212C:
	add r4, r4, #1
_0225212E:
	lsl r0, r4, #1
	add r1, r4, r0
	ldr r0, _02252174 ; =0x0226CC7C
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _022520C8
_0225213A:
	ldr r0, [sp, #4]
	cmp r0, #0x68
	beq _0225216A
	ldr r0, [sp, #0x28]
	cmp r0, #0x19
	bne _0225216A
	ldr r1, [sp]
	add r0, r7, #0
	bl ov12_02258440
	cmp r0, #0
	beq _0225216A
	ldr r1, [r6]
	mov r0, #2
	tst r0, r1
	beq _02252162
	mov r0, #6
	and r0, r1
	cmp r0, #6
	bne _0225216A
_02252162:
	ldr r1, [r6]
	mov r0, #8
	orr r0, r1
	str r0, [r6]
_0225216A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252170: .word 0x000003E2
_02252174: .word 0x0226CC7C
	thumb_func_end ov12_02252054

	thumb_func_start ov12_02252178
ov12_02252178: ; 0x02252178
	push {r3, r4}
	mov r3, #1
	cmp r1, #0x6a
	bne _02252196
	lsl r1, r2, #1
	add r4, r2, r1
	ldr r1, _022521C0 ; =0x0226CC7D
	ldrb r1, [r1, r4]
	cmp r1, #2
	bne _02252196
	ldr r1, _022521C4 ; =0x0226CC7E
	ldrb r1, [r1, r4]
	cmp r1, #0
	bne _02252196
	mov r3, #0
_02252196:
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r0, r1]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	beq _022521BA
	lsl r0, r2, #1
	add r1, r2, r0
	ldr r0, _022521C0 ; =0x0226CC7D
	ldrb r0, [r0, r1]
	cmp r0, #2
	bne _022521BA
	ldr r0, _022521C4 ; =0x0226CC7E
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _022521BA
	mov r3, #0
_022521BA:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
_022521C0: .word 0x0226CC7D
_022521C4: .word 0x0226CC7E
	thumb_func_end ov12_02252178

	thumb_func_start ov12_022521C8
ov12_022521C8: ; 0x022521C8
	cmp r0, #0
	beq _022521D6
	cmp r0, #5
	beq _022521E8
	cmp r0, #0x14
	beq _02252200
	bx lr
_022521D6:
	ldr r2, [r1]
	mov r0, #8
	orr r2, r0
	mov r0, #4
	bic r2, r0
	mov r0, #2
	bic r2, r0
	str r2, [r1]
	bx lr
_022521E8:
	ldr r2, [r1]
	mov r0, #2
	tst r0, r2
	beq _022521F8
	mov r0, #2
	bic r2, r0
	str r2, [r1]
	bx lr
_022521F8:
	mov r0, #4
	orr r0, r2
	str r0, [r1]
	bx lr
_02252200:
	ldr r2, [r1]
	mov r0, #4
	tst r0, r2
	beq _02252210
	mov r0, #4
	bic r2, r0
	str r2, [r1]
	bx lr
_02252210:
	mov r0, #2
	orr r0, r2
	str r0, [r1]
	bx lr
	thumb_func_end ov12_022521C8

	thumb_func_start ov12_02252218
ov12_02252218: ; 0x02252218
	mov r2, #0xd1
	lsl r2, r2, #2
	add r2, r0, r2
	lsl r0, r1, #2
	ldr r0, [r2, r0]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1d
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1c
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1b
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x1a
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x19
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r1, r0, #0x17
	lsr r1, r1, #0x1f
	bne _02252258
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _0225225C
_02252258:
	mov r0, #1
	bx lr
_0225225C:
	mov r0, #0
	bx lr
	thumb_func_end ov12_02252218

	thumb_func_start ov12_02252260
ov12_02252260: ; 0x02252260
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #4]
	mov r4, #0
	bl ov12_0223A7F0
	add r7, r0, #0
	cmp r6, #0
	beq _0225227E
	cmp r6, #1
	beq _022522A2
	b _022522D6
_0225227E:
	add r0, r4, #0
	cmp r7, #0
	ble _022522D6
	ldr r2, _022522DC ; =0x00002D8C
_02252286:
	ldr r1, [sp, #4]
	cmp r0, r1
	beq _02252298
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _02252298
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
_02252298:
	add r0, r0, #1
	add r5, #0xc0
	cmp r0, r7
	blt _02252286
	b _022522D6
_022522A2:
	add r6, r4, #0
	cmp r7, #0
	ble _022522D6
_022522A8:
	ldr r0, [sp]
	add r1, r6, #0
	bl ov12_0223AB1C
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov12_0223AB1C
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _022522CE
	ldr r0, _022522DC ; =0x00002D8C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022522CE
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022522CE:
	add r6, r6, #1
	add r5, #0xc0
	cmp r6, r7
	blt _022522A8
_022522D6:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022522DC: .word 0x00002D8C
	thumb_func_end ov12_02252260

	thumb_func_start ov12_022522E0
ov12_022522E0: ; 0x022522E0
	add r2, r0, r1
	ldr r0, _022522EC ; =0x0000219C
	ldrb r0, [r2, r0]
	lsl r0, r0, #8
	orr r0, r1
	bx lr
	.align 2, 0
_022522EC: .word 0x0000219C
	thumb_func_end ov12_022522E0

	thumb_func_start ov12_022522F0
ov12_022522F0: ; 0x022522F0
	push {r4, r5}
	lsl r3, r1, #4
	add r5, r0, r3
	ldr r3, _0225231C ; =0x000021B4
	mov r2, #0
	ldr r4, [r5, r3]
	cmp r4, #1
	bne _02252316
	sub r3, r3, #4
	ldr r3, [r5, r3]
	cmp r3, #0
	beq _02252316
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	lsl r0, r3, #1
	add r1, r1, r0
	ldr r0, _02252320 ; =0x00002D4A
	ldrh r2, [r1, r0]
_02252316:
	add r0, r2, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
_0225231C: .word 0x000021B4
_02252320: .word 0x00002D4A
	thumb_func_end ov12_022522F0

	thumb_func_start ov12_02252324
ov12_02252324: ; 0x02252324
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r2, [sp, #4]
	str r0, [sp]
	add r7, r1, #0
	str r3, [sp, #8]
	ldr r6, [sp, #0x70]
	mov r4, #0
	bl ov12_0223A7F0
	add r5, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #9
	bhi _02252398
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225234C: ; jump table
	.short _02252360 - _0225234C - 2 ; case 0
	.short _0225239A - _0225234C - 2 ; case 1
	.short _022523E6 - _0225234C - 2 ; case 2
	.short _02252420 - _0225234C - 2 ; case 3
	.short _0225246C - _0225234C - 2 ; case 4
	.short _022524BE - _0225234C - 2 ; case 5
	.short _022524E0 - _0225234C - 2 ; case 6
	.short _02252508 - _0225234C - 2 ; case 7
	.short _02252534 - _0225234C - 2 ; case 8
	.short _02252568 - _0225234C - 2 ; case 9
_02252360:
	add r0, r4, #0
	str r0, [sp, #0x44]
	cmp r5, #0
	ble _02252398
_02252368:
	ldr r0, [sp]
	ldr r1, [sp, #0x44]
	bl ov12_0223AB1C
	str r0, [sp, #0x48]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov12_0223AB1C
	ldr r1, [sp, #0x48]
	cmp r1, r0
	bne _0225238E
	ldr r1, [sp, #0x44]
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _0225238E
	add r4, r4, #1
_0225238E:
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	cmp r0, r5
	blt _02252368
_02252398:
	b _022525A0
_0225239A:
	add r0, r4, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	ble _022523E4
	str r7, [sp, #0x30]
_022523A4:
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov12_0223AB1C
	str r0, [sp, #0x4c]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov12_0223AB1C
	ldr r1, [sp, #0x4c]
	cmp r1, r0
	bne _022523D4
	ldr r1, [sp, #0x30]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022523D4
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _022523D4
	add r4, r4, #1
_022523D4:
	ldr r0, [sp, #0x30]
	add r0, #0xc0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r5
	blt _022523A4
_022523E4:
	b _022525A0
_022523E6:
	add r0, r4, #0
	str r0, [sp, #0x10]
	cmp r5, #0
	ble _0225241E
_022523EE:
	ldr r0, [sp]
	ldr r1, [sp, #0x10]
	bl ov12_0223AB1C
	str r0, [sp, #0x50]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov12_0223AB1C
	ldr r1, [sp, #0x50]
	cmp r1, r0
	beq _02252414
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _02252414
	add r4, r4, #1
_02252414:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r5
	blt _022523EE
_0225241E:
	b _022525A0
_02252420:
	add r0, r4, #0
	str r0, [sp, #0x14]
	cmp r5, #0
	ble _0225246A
	str r7, [sp, #0x34]
_0225242A:
	ldr r0, [sp]
	ldr r1, [sp, #0x14]
	bl ov12_0223AB1C
	str r0, [sp, #0x54]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov12_0223AB1C
	ldr r1, [sp, #0x54]
	cmp r1, r0
	beq _0225245A
	ldr r1, [sp, #0x34]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225245A
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _0225245A
	add r4, r4, #1
_0225245A:
	ldr r0, [sp, #0x34]
	add r0, #0xc0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r5
	blt _0225242A
_0225246A:
	b _022525A0
_0225246C:
	add r0, r4, #0
	str r0, [sp, #0x18]
	cmp r5, #0
	ble _022524BC
	str r7, [sp, #0x38]
_02252476:
	ldr r0, [sp]
	ldr r1, [sp, #0x18]
	bl ov12_0223AB1C
	str r0, [sp, #0x58]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov12_0223AB1C
	ldr r1, [sp, #0x58]
	cmp r1, r0
	beq _022524AC
	ldr r1, [sp, #0x38]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022524AC
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _022524AC
	ldr r0, [sp, #0x18]
	bl sub_020726C0
	orr r4, r0
_022524AC:
	ldr r0, [sp, #0x38]
	add r0, #0xc0
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r5
	blt _02252476
_022524BC:
	b _022525A0
_022524BE:
	add r0, r4, #0
	str r0, [sp, #0x1c]
	cmp r5, #0
	ble _022525A0
_022524C6:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _022524D4
	add r4, r4, #1
_022524D4:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r5
	blt _022524C6
	b _022525A0
_022524E0:
	add r0, r4, #0
	str r0, [sp, #0x20]
	cmp r5, #0
	ble _022525A0
_022524E8:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _022524FC
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _022524FC
	add r4, r4, #1
_022524FC:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r5
	blt _022524E8
	b _022525A0
_02252508:
	add r0, r4, #0
	str r0, [sp, #0x24]
	cmp r5, #0
	ble _022525A0
_02252510:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02252528
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _02252528
	ldr r0, [sp, #0x24]
	add r4, r0, #1
	b _022525A0
_02252528:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r5
	blt _02252510
	b _022525A0
_02252534:
	add r0, r4, #0
	str r0, [sp, #0x28]
	cmp r5, #0
	ble _022525A0
	str r7, [sp, #0x3c]
_0225253E:
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _02252556
	ldr r1, [sp, #0x3c]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02252556
	add r4, r4, #1
_02252556:
	ldr r0, [sp, #0x3c]
	add r0, #0xc0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, r5
	blt _0225253E
	b _022525A0
_02252568:
	add r0, r4, #0
	str r0, [sp, #0x2c]
	cmp r5, #0
	ble _022525A0
	str r7, [sp, #0x40]
_02252572:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #8]
	cmp r1, r0
	beq _02252590
	add r0, r7, #0
	bl ov12_022527CC
	cmp r6, r0
	bne _02252590
	ldr r1, [sp, #0x40]
	ldr r0, _022525A8 ; =0x00002D8C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02252590
	add r4, r4, #1
_02252590:
	ldr r0, [sp, #0x40]
	add r0, #0xc0
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, r5
	blt _02252572
_022525A0:
	add r0, r4, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_022525A8: .word 0x00002D8C
	thumb_func_end ov12_02252324

	thumb_func_start ov12_022525AC
ov12_022525AC: ; 0x022525AC
	lsl r1, r1, #4
	add r1, r0, r1
	ldr r0, _02252608 ; =0x000003DE
	ldrh r2, [r1, r0]
	cmp r2, #0x9b
	bgt _022525DE
	cmp r2, #0x97
	blt _022525C4
	beq _022525FE
	cmp r2, #0x9b
	beq _022525FE
	b _02252602
_022525C4:
	cmp r2, #0x27
	bgt _022525D0
	bge _022525FE
	cmp r2, #0x1a
	beq _022525FE
	b _02252602
_022525D0:
	cmp r2, #0x4b
	bgt _022525D8
	beq _022525FE
	b _02252602
_022525D8:
	cmp r2, #0x91
	beq _022525FE
	b _02252602
_022525DE:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	bgt _022525EE
	bge _022525FE
	cmp r2, #0xff
	beq _022525FE
	b _02252602
_022525EE:
	add r0, r1, #7
	cmp r2, r0
	bgt _022525F8
	beq _022525FE
	b _02252602
_022525F8:
	add r1, #0x10
	cmp r2, r1
	bne _02252602
_022525FE:
	mov r0, #1
	bx lr
_02252602:
	mov r0, #0
	bx lr
	nop
_02252608: .word 0x000003DE
	thumb_func_end ov12_022525AC

	thumb_func_start ov12_0225260C
ov12_0225260C: ; 0x0225260C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	mov r2, #1
	cmp r1, #0x70
	blo _02252624
	bl ov12_0223BD98
	mov r1, #0x70
	bl sub_020F2BA4
	mov r2, #0
_02252624:
	lsl r0, r1, #1
	add r0, r1, r0
	ldr r1, _02252640 ; =0x0226CC7C
	ldrb r1, [r1, r0]
	strb r1, [r5]
	ldr r1, _02252644 ; =0x0226CC7D
	ldrb r1, [r1, r0]
	strb r1, [r4]
	ldr r1, _02252648 ; =0x0226CC7E
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x10]
	strb r1, [r0]
	add r0, r2, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02252640: .word 0x0226CC7C
_02252644: .word 0x0226CC7D
_02252648: .word 0x0226CC7E
	thumb_func_end ov12_0225260C

	thumb_func_start ov12_0225264C
ov12_0225264C: ; 0x0225264C
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _02252694 ; =0x0226CC7C
	add r5, r1, #0
	str r0, [sp]
	add r6, r2, #0
	mov r1, #0x28
_02252658:
	ldrb r2, [r4]
	ldr r0, [sp]
	cmp r0, r2
	bne _02252686
	ldrb r7, [r4, #1]
	cmp r5, r7
	bne _02252672
	ldrb r0, [r4, #2]
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2998
	add r1, r0, #0
_02252672:
	cmp r6, r7
	bne _02252686
	cmp r5, r6
	beq _02252686
	ldrb r0, [r4, #2]
	mul r0, r1
	mov r1, #0xa
	bl sub_020F2998
	add r1, r0, #0
_02252686:
	add r4, r4, #3
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _02252658
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02252694: .word 0x0226CC7C
	thumb_func_end ov12_0225264C

	thumb_func_start ov12_02252698
ov12_02252698: ; 0x02252698
	cmp r0, #0
	beq _022526C0
	cmp r0, #0xd6
	beq _022526C0
	ldr r2, _022526C8 ; =0x0000017F
	cmp r0, r2
	beq _022526C0
	add r1, r2, #0
	sub r1, #0x6d
	cmp r0, r1
	beq _022526C0
	sub r1, r2, #1
	cmp r0, r1
	beq _022526C0
	ldr r1, _022526CC ; =0x0000FF8A
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _022526C4
_022526C0:
	mov r0, #1
	bx lr
_022526C4:
	mov r0, #0
	bx lr
	.align 2, 0
_022526C8: .word 0x0000017F
_022526CC: .word 0x0000FF8A
	thumb_func_end ov12_02252698

	thumb_func_start ov12_022526D0
ov12_022526D0: ; 0x022526D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0xae
	bne _022526FC
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #7
	beq _022526F8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #7
	bne _022526FC
_022526F8:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022526FC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022526D0

	thumb_func_start ov12_02252700
ov12_02252700: ; 0x02252700
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	mov r7, #0
	bl ov12_0223AB1C
	str r0, [sp]
	ldr r0, _02252754 ; =0x00002DB8
	add r4, r5, r0
	mov r0, #0xc0
	mul r0, r6
	str r0, [sp, #4]
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0225274E
	ldr r0, _02252758 ; =0x0000219C
	add r1, r5, r6
	ldrb r0, [r1, r0]
	bl sub_020726C0
	ldr r1, [sp]
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	lsl r1, r1, #3
	lsr r1, r1, #0x1a
	tst r0, r1
	bne _0225274E
	ldr r0, [sp, #4]
	ldrh r0, [r4, r0]
	bl sub_02078068
	cmp r0, #0
	bne _0225274E
	mov r7, #1
_0225274E:
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02252754: .word 0x00002DB8
_02252758: .word 0x0000219C
	thumb_func_end ov12_02252700

	thumb_func_start ov12_0225275C
ov12_0225275C: ; 0x0225275C
	push {r3, lr}
	mov r2, #0xc0
	mul r2, r1
	add r1, r0, r2
	ldr r0, _02252778 ; =0x00002DB8
	ldrh r0, [r1, r0]
	bl sub_02078068
	cmp r0, #0
	bne _02252774
	mov r0, #1
	pop {r3, pc}
_02252774:
	mov r0, #0
	pop {r3, pc}
	.align 2, 0
_02252778: .word 0x00002DB8
	thumb_func_end ov12_0225275C

	thumb_func_start ov12_0225277C
ov12_0225277C: ; 0x0225277C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r2, [r5, #0x6c]
	mov r1, #0xc0
	add r4, r2, #0
	ldr r2, _022527C8 ; =0x00002D74
	mul r4, r1
	add r3, r5, r2
	ldrb r4, [r3, r4]
	ldr r3, [r5, #0x64]
	mov r6, #0
	mul r1, r3
	add r1, r5, r1
	ldrb r1, [r1, r2]
	cmp r1, r4
	blo _022527A0
	mov r6, #1
	b _022527C4
_022527A0:
	bl ov12_0223BD98
	ldr r2, [r5, #0x64]
	mov r1, #0xc0
	mul r1, r2
	add r2, r5, r1
	ldr r1, _022527C8 ; =0x00002D74
	lsl r0, r0, #0x18
	ldrb r1, [r2, r1]
	lsr r0, r0, #0x18
	add r1, r1, r4
	mul r0, r1
	asr r0, r0, #8
	add r1, r0, #1
	lsr r0, r4, #2
	cmp r1, r0
	ble _022527C4
	mov r6, #1
_022527C4:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022527C8: .word 0x00002D74
	thumb_func_end ov12_0225277C

	thumb_func_start ov12_022527CC
ov12_022527CC: ; 0x022527CC
	push {r4, r5}
	mov r2, #0xc0
	mul r2, r1
	mov r3, #0xb7
	mov r4, #2
	add r5, r0, r2
	lsl r3, r3, #6
	ldr r1, [r5, r3]
	lsl r4, r4, #0x14
	tst r4, r1
	beq _022527F0
	sub r3, #0x59
	ldrb r3, [r5, r3]
	cmp r3, #0x79
	beq _022527F0
	mov r0, #0
	pop {r4, r5}
	bx lr
_022527F0:
	mov r3, #6
	lsl r3, r3, #6
	ldr r4, [r0, r3]
	mov r3, #7
	lsl r3, r3, #0xc
	tst r3, r4
	beq _0225280E
	ldr r3, _02252830 ; =0x00002D67
	add r4, r0, r2
	ldrb r3, [r4, r3]
	cmp r3, #0x1a
	bne _0225280E
	mov r0, #0
	pop {r4, r5}
	bx lr
_0225280E:
	mov r3, #1
	lsl r3, r3, #0xa
	tst r1, r3
	beq _02252826
	ldr r1, _02252830 ; =0x00002D67
	add r3, r0, r2
	ldrb r1, [r3, r1]
	cmp r1, #0x1a
	bne _02252826
	mov r0, #0
	pop {r4, r5}
	bx lr
_02252826:
	add r1, r0, r2
	ldr r0, _02252830 ; =0x00002D67
	ldrb r0, [r1, r0]
	pop {r4, r5}
	bx lr
	.align 2, 0
_02252830: .word 0x00002D67
	thumb_func_end ov12_022527CC

	thumb_func_start ov12_02252834
ov12_02252834: ; 0x02252834
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	mov r6, #0
	bl ov12_022527CC
	cmp r0, #0x68
	beq _02252858
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r4, r0
	bne _02252886
	mov r6, #1
	b _02252886
_02252858:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov12_022527CC
	cmp r4, r0
	bne _02252886
	mov r0, #0xb5
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x1c
	mul r0, r7
	ldr r3, [r1, r0]
	lsl r2, r3, #0x1c
	lsr r2, r2, #0x1f
	bne _02252886
	mov r2, #8
	orr r3, r2
	str r3, [r1, r0]
	ldr r1, _0225288C ; =0x0000213C
	lsl r0, r2, #0x14
	ldr r3, [r5, r1]
	orr r0, r3
	str r0, [r5, r1]
_02252886:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225288C: .word 0x0000213C
	thumb_func_end ov12_02252834

	thumb_func_start ov12_02252890
ov12_02252890: ; 0x02252890
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r6, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	str r6, [sp, #0x18]
	bl ov12_0223A7E0
	add r5, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223A7F4
	str r0, [sp, #0x14]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223A834
	add r7, r0, #0
	mov r0, #8
	tst r0, r5
	bne _022528D2
	mov r0, #0x10
	tst r0, r5
	beq _022528E6
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AB0C
	mov r1, #1
	tst r0, r1
	beq _022528E6
_022528D2:
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _0225297C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	b _02252922
_022528E6:
	mov r0, #2
	tst r0, r5
	beq _02252910
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _0225297C ; =0x0000219C
	ldrb r0, [r1, r0]
	add r1, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov12_0223AB6C
	ldr r1, [sp, #4]
	add r1, r1, r0
	ldr r0, _0225297C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #8]
	b _02252922
_02252910:
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r5, #0
	add r1, r0, r4
	ldr r0, _0225297C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
_02252922:
	cmp r5, r7
	bge _0225296C
_02252926:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl sub_02074644
	mov r1, #5
	mov r2, #0
	add r4, r0, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02252966
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	bne _02252966
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_0206E540
	cmp r0, #0
	beq _02252966
	ldr r0, [sp, #0xc]
	cmp r0, r5
	beq _02252966
	ldr r0, [sp, #8]
	cmp r0, r5
	beq _02252966
	add r6, r6, #1
_02252966:
	add r5, r5, #1
	cmp r5, r7
	blt _02252926
_0225296C:
	ldr r0, [sp, #0x10]
	cmp r6, r0
	blt _02252976
	mov r0, #1
	str r0, [sp, #0x18]
_02252976:
	ldr r0, [sp, #0x18]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225297C: .word 0x0000219C
	thumb_func_end ov12_02252890

	thumb_func_start ov12_02252980
ov12_02252980: ; 0x02252980
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r2, #0
	add r7, r0, #0
	add r4, r3, #0
	bl ov12_0223A7E0
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_02255830
	str r0, [sp, #8]
	cmp r0, #0x3f
	beq _022529B6
	mov r1, #0xa9
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	tst r0, r1
	bne _022529B6
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0x32
	bne _022529BC
_022529B6:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_022529BC:
	add r0, r7, #0
	add r1, r6, #0
	bl ov12_0223AB1C
	add r0, r7, #0
	bl ov12_0223A7F0
	mov r0, #0x17
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #9
	add r3, r6, #0
	bl ov12_02252324
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _02252A12
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0x17
	beq _02252A12
	cmp r4, #0
	bne _022529F6
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022529F6:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0x17
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252A12:
	mov r0, #0x47
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #3
	add r3, r6, #0
	bl ov12_02252324
	str r0, [sp, #4]
	cmp r0, #0
	beq _02252AC4
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r0, #7
	lsl r0, r0, #0xc
	tst r0, r1
	bne _02252A9E
	ldr r0, [sp, #8]
	cmp r0, #0x6a
	beq _02252A9E
	add r0, r5, #0
	add r1, r6, #0
	bl ov12_022527CC
	cmp r0, #0x1a
	beq _02252AC4
	mov r0, #0xc0
	mul r0, r6
	add r1, r5, r0
	ldr r0, _02252B58 ; =0x00002DCC
	ldr r0, [r1, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1d
	bne _02252AC4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #2
	beq _02252AC4
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #2
	beq _02252AC4
	cmp r4, #0
	bne _02252A82
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252A82:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0x47
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252A9E:
	cmp r4, #0
	bne _02252AA8
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252AA8:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0x47
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252AC4:
	mov r0, #0x2a
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #3
	add r3, r6, #0
	bl ov12_02252324
	add r7, r0, #0
	beq _02252B1E
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #8
	beq _02252AF8
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl ov12_0224EDE0
	cmp r0, #8
	bne _02252B1E
_02252AF8:
	cmp r4, #0
	bne _02252B02
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252B02:
	mov r0, #0xb
	strb r0, [r4, #1]
	mov r0, #0x27
	strh r0, [r4, #2]
	add r0, r5, #0
	add r1, r7, #0
	bl ov12_022522E0
	str r0, [r4, #4]
	mov r0, #0x2a
	str r0, [r4, #8]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252B1E:
	mov r0, #0xc0
	mul r0, r6
	add r3, r5, r0
	ldr r0, _02252B5C ; =0x00002DB0
	ldr r1, _02252B60 ; =0x0400E000
	ldr r2, [r3, r0]
	tst r2, r1
	bne _02252B38
	add r0, #0x10
	ldr r2, [r3, r0]
	lsr r0, r1, #0x10
	tst r0, r2
	beq _02252B50
_02252B38:
	cmp r4, #0
	bne _02252B42
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252B42:
	mov r0, #0
	strb r0, [r4, #1]
	ldr r0, _02252B64 ; =0x0000031A
	add sp, #0x14
	strh r0, [r4, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02252B50:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02252B58: .word 0x00002DCC
_02252B5C: .word 0x00002DB0
_02252B60: .word 0x0400E000
_02252B64: .word 0x0000031A
	thumb_func_end ov12_02252980

	thumb_func_start ov12_02252B68
ov12_02252B68: ; 0x02252B68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	str r0, [sp]
	bl ov12_0223A7E0
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02255830
	mov r6, #0
	cmp r0, #0x3f
	bne _02252B9C
	mov r0, #0x75
	lsl r0, r0, #2
	add r3, r5, r0
	lsl r2, r4, #6
	ldr r1, [r3, r2]
	ldr r0, _02252C34 ; =0xFFFFFE7F
	mov r6, #1
	and r1, r0
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, r2]
	b _02252C30
_02252B9C:
	mov r0, #0xa9
	lsl r0, r0, #2
	tst r0, r7
	beq _02252BA8
	mov r6, #1
	b _02252C30
_02252BA8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_022527CC
	cmp r0, #0x32
	bne _02252BCC
	mov r1, #0x75
	lsl r1, r1, #2
	add r5, r5, r1
	lsl r3, r4, #6
	ldr r2, [r5, r3]
	ldr r0, _02252C34 ; =0xFFFFFE7F
	sub r1, #0xd4
	and r0, r2
	orr r0, r1
	str r0, [r5, r3]
	mov r6, #1
	b _02252C30
_02252BCC:
	mov r0, #1
	add r1, r4, #0
	eor r1, r0
	mov r2, #0xc0
	add r3, r1, #0
	mul r3, r2
	add r1, r5, r3
	ldr r3, _02252C38 ; =0x00002D46
	mul r2, r4
	add r2, r5, r2
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	cmp r2, r1
	bhs _02252C16
	lsl r0, r2, #7
	bl sub_020F2998
	ldr r1, _02252C3C ; =0x0000311E
	ldrb r2, [r5, r1]
	mov r1, #0x1e
	mul r1, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	bl ov12_0223BD98
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x18
	sub r2, r2, r1
	mov r0, #0x18
	ror r2, r0
	add r0, r1, r2
	cmp r7, r0
	ble _02252C18
	mov r6, #1
	b _02252C18
_02252C16:
	add r6, r0, #0
_02252C18:
	cmp r6, #0
	bne _02252C28
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0
	mov r3, #0x63
	bl ov12_02263F0C
_02252C28:
	ldr r0, _02252C3C ; =0x0000311E
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
_02252C30:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02252C34: .word 0xFFFFFE7F
_02252C38: .word 0x00002D46
_02252C3C: .word 0x0000311E
	thumb_func_end ov12_02252B68

	thumb_func_start ov12_02252C40
ov12_02252C40: ; 0x02252C40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov12_022527CC
	cmp r0, #0x36
	bne _02252C6A
	mov r2, #0xc0
	mul r2, r4
	add r3, r5, r2
	ldr r2, _02252C70 ; =0x00002DC8
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r2, [r3, r2]
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r2, r2, #1
	and r1, r0
	lsr r2, r2, #0x1f
	cmp r1, r2
	bne _02252C6C
_02252C6A:
	mov r0, #0
_02252C6C:
	pop {r3, r4, r5, pc}
	nop
_02252C70: .word 0x00002DC8
	thumb_func_end ov12_02252C40

	thumb_func_start ov12_02252C74
ov12_02252C74: ; 0x02252C74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0
	str r0, [sp]
	add r4, r2, #0
	add r5, r3, #0
	str r1, [sp, #4]
	bl ov12_0223A7F0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r1, r4, #0
	bl ov12_0223AB1C
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r7, #0
	cmp r0, #0
	ble _02252CDE
	ldr r4, _02252CE4 ; =0x00002D4C
_02252C9E:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov12_0223AB1C
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _02252CD4
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r1, [r6, r0]
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r1
	beq _02252CD4
	mov r1, #0
	add r2, r6, #0
_02252CBE:
	ldrh r0, [r2, r4]
	cmp r5, r0
	beq _02252CCC
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #4
	blt _02252CBE
_02252CCC:
	cmp r1, #4
	beq _02252CD4
	mov r0, #1
	str r0, [sp, #4]
_02252CD4:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r6, #0xc0
	cmp r7, r0
	blt _02252C9E
_02252CDE:
	ldr r0, [sp, #4]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02252CE4: .word 0x00002D4C
	thumb_func_end ov12_02252C74

	thumb_func_start ov12_02252CE8
ov12_02252CE8: ; 0x02252CE8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r6, #0
	bl ov12_0223A7F0
	add r3, r6, #0
	cmp r0, #0
	ble _02252D10
	mov r1, #0xb7
	lsl r1, r1, #6
_02252CFE:
	ldr r2, [r5, r1]
	tst r2, r4
	beq _02252D08
	mov r6, #1
	b _02252D10
_02252D08:
	add r3, r3, #1
	add r5, #0xc0
	cmp r3, r0
	blt _02252CFE
_02252D10:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02252CE8

	thumb_func_start ov12_02252D14
ov12_02252D14: ; 0x02252D14
	ldr r2, _02252D34 ; =0x0000216C
	mov r0, #0
	str r0, [r1, r2]
	add r0, r2, #0
	mov r3, #1
	sub r0, #0x1c
	str r3, [r1, r0]
	add r0, r2, #0
	sub r0, #0x30
	ldr r3, [r1, r0]
	ldr r0, _02252D38 ; =0xFFEFFFFF
	sub r2, #0x30
	and r0, r3
	str r0, [r1, r2]
	bx lr
	nop
_02252D34: .word 0x0000216C
_02252D38: .word 0xFFEFFFFF
	thumb_func_end ov12_02252D14

	thumb_func_start ov12_02252D3C
ov12_02252D3C: ; 0x02252D3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	bl ov12_0223A7F0
	mov r2, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02252D60
	ldr r1, _02252DC0 ; =0x000021EC
_02252D52:
	ldr r0, [sp, #8]
	add r0, r0, r2
	strb r2, [r0, r1]
	ldr r0, [sp, #0x14]
	add r2, r2, #1
	cmp r2, r0
	blt _02252D52
_02252D60:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02252DBC
_02252D6E:
	ldr r0, [sp, #0x10]
	add r4, r0, #1
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bge _02252DB0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	add r6, r1, r0
_02252D7E:
	ldr r0, _02252DC0 ; =0x000021EC
	ldr r1, [sp, #8]
	ldrb r0, [r6, r0]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r7, r0, r4
	ldr r0, _02252DC0 ; =0x000021EC
	ldrb r5, [r7, r0]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r5, #0
	bl ov12_0224FC48
	cmp r0, #0
	beq _02252DA8
	ldr r0, _02252DC0 ; =0x000021EC
	ldr r1, [sp, #0xc]
	strb r5, [r6, r0]
	strb r1, [r7, r0]
_02252DA8:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _02252D7E
_02252DB0:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02252D6E
_02252DBC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02252DC0: .word 0x000021EC
	thumb_func_end ov12_02252D3C

	thumb_func_start ov12_02252DC4
ov12_02252DC4: ; 0x02252DC4
	push {r3, r4}
	mov r2, #6
	lsl r2, r2, #6
	ldr r2, [r1, r2]
	mov r1, #7
	lsl r1, r1, #0xc
	mov r0, #0
	tst r1, r2
	beq _02252DEE
	ldr r4, _02252DF4 ; =0x0226CB7C
	add r2, r0, #0
_02252DDA:
	ldrh r1, [r4]
	cmp r3, r1
	bne _02252DE6
	mov r0, #1
	pop {r3, r4}
	bx lr
_02252DE6:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #6
	blo _02252DDA
_02252DEE:
	pop {r3, r4}
	bx lr
	nop
_02252DF4: .word 0x0226CB7C
	thumb_func_end ov12_02252DC4

	thumb_func_start ov12_02252DF8
ov12_02252DF8: ; 0x02252DF8
	push {r3, r4}
	mov r4, #0xc0
	mul r4, r2
	add r2, r1, r4
	ldr r1, _02252E28 ; =0x00002DCC
	mov r0, #0
	ldr r1, [r2, r1]
	lsl r1, r1, #0xd
	lsr r1, r1, #0x1d
	beq _02252E24
	ldr r4, _02252E2C ; =0x0226CBA2
	add r2, r0, #0
_02252E10:
	ldrh r1, [r4]
	cmp r3, r1
	bne _02252E1C
	mov r0, #1
	pop {r3, r4}
	bx lr
_02252E1C:
	add r2, r2, #1
	add r4, r4, #2
	cmp r2, #0xe
	blo _02252E10
_02252E24:
	pop {r3, r4}
	bx lr
	.align 2, 0
_02252E28: .word 0x00002DCC
_02252E2C: .word 0x0226CBA2
	thumb_func_end ov12_02252DF8

	thumb_func_start ov12_02252E30
ov12_02252E30: ; 0x02252E30
	push {r4, r5, r6, r7}
	mov r0, #0xc1
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	ldr r0, _02252E98 ; =0x00000183
	cmp r3, r0
	beq _02252E94
	ldr r4, [r1, #0x64]
	mov r0, #0xc0
	add r2, r4, #0
	mul r2, r0
	ldr r4, _02252E9C ; =0x00002DCC
	add r0, r1, r2
	ldr r4, [r0, r4]
	lsl r4, r4, #0x13
	lsr r7, r4, #0x1d
	cmp r7, #4
	beq _02252E94
	mov r6, #0
	cmp r7, #0
	bls _02252E6A
	ldr r4, _02252EA0 ; =0x00002DF0
_02252E5C:
	ldrh r5, [r0, r4]
	cmp r3, r5
	beq _02252E94
	add r6, r6, #1
	add r0, r0, #2
	cmp r6, r7
	blo _02252E5C
_02252E6A:
	add r2, r1, r2
	lsl r0, r6, #1
	add r2, r2, r0
	ldr r0, _02252EA0 ; =0x00002DF0
	strh r3, [r2, r0]
	sub r0, #0x24
	add r2, r1, r0
	ldr r3, [r1, #0x64]
	mov r0, #0xc0
	add r1, r3, #0
	mul r1, r0
	ldr r3, [r2, r1]
	ldr r0, _02252EA4 ; =0xFFFFE3FF
	and r0, r3
	lsl r3, r3, #0x13
	lsr r3, r3, #0x1d
	add r3, r3, #1
	lsl r3, r3, #0x1d
	lsr r3, r3, #0x13
	orr r0, r3
	str r0, [r2, r1]
_02252E94:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02252E98: .word 0x00000183
_02252E9C: .word 0x00002DCC
_02252EA0: .word 0x00002DF0
_02252EA4: .word 0xFFFFE3FF
	thumb_func_end ov12_02252E30

	thumb_func_start ov12_02252EA8
ov12_02252EA8: ; 0x02252EA8
	mov r3, #0xc0
	mul r3, r2
	add r3, r1, r3
	ldr r1, _02252EC4 ; =0x00002D4C
	mov r0, #0
_02252EB2:
	ldrh r2, [r3, r1]
	cmp r2, #0
	beq _02252EC0
	add r0, r0, #1
	add r3, r3, #2
	cmp r0, #4
	blt _02252EB2
_02252EC0:
	bx lr
	nop
_02252EC4: .word 0x00002D4C
	thumb_func_end ov12_02252EA8

	thumb_func_start ov12_02252EC8
ov12_02252EC8: ; 0x02252EC8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	bl ov12_022527CC
	cmp r0, #0x60
	bne _02252EE0
	mov r6, #0
	b _02252EF4
_02252EE0:
	ldr r0, _02253044 ; =0x00002160
	ldr r6, [r5, r0]
	cmp r6, #0
	bne _02252EF4
	ldr r0, _02253048 ; =0x00003044
	ldr r0, [r5, r0]
_02252EF4:

