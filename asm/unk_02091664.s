#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_02091664.inc"
	.include "global.inc"

	.text

	thumb_func_start LocationGmmDatCountGet
LocationGmmDatCountGet: ; 0x02091664
	mov r0, #0x13
	bx lr
	thumb_func_end LocationGmmDatCountGet

	thumb_func_start LocationGmmDatIndexGetByCountryMsgNo
LocationGmmDatIndexGetByCountryMsgNo: ; 0x02091668
	ldr r3, _02091684 ; =sLocationGmmDat
	mov r2, #0
_0209166C:
	ldrb r1, [r3]
	cmp r0, r1
	bne _02091676
	add r0, r2, #0
	bx lr
_02091676:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x13
	blo _0209166C
	mov r0, #0
	bx lr
	nop
_02091684: .word sLocationGmmDat
	thumb_func_end LocationGmmDatIndexGetByCountryMsgNo

	thumb_func_start LocationGmmDatRegionCountGetByCountryMsgNo
LocationGmmDatRegionCountGetByCountryMsgNo: ; 0x02091688
	ldr r3, _020916AC ; =sLocationGmmDat
	mov r2, #0
_0209168C:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0209169E
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _020916B0 ; =sLocationGmmDat + 8
	ldr r0, [r0, r1]
	bx lr
_0209169E:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x13
	blo _0209168C
	mov r0, #0
	bx lr
	nop
_020916AC: .word sLocationGmmDat
_020916B0: .word sLocationGmmDat + 8
	thumb_func_end LocationGmmDatRegionCountGetByCountryMsgNo

	thumb_func_start GetCityNamesMsgdataIdByCountry
GetCityNamesMsgdataIdByCountry: ; 0x020916B4
	push {r3, lr}
	bl LocationGmmDatIndexGetByCountryMsgNo
	bl LocationGmmDatGetGmmNo
	pop {r3, pc}
	thumb_func_end GetCityNamesMsgdataIdByCountry

	thumb_func_start LocationGmmDatGetGmmNo
LocationGmmDatGetGmmNo: ; 0x020916C0
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _020916CC
	bl GF_AssertFail
_020916CC:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020916D8 ; =sLocationGmmDat + 2
	ldrh r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_020916D8: .word sLocationGmmDat + 2
	thumb_func_end LocationGmmDatGetGmmNo

	thumb_func_start LocationGmmDatGetCountryMsgNo
LocationGmmDatGetCountryMsgNo: ; 0x020916DC
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _020916E8
	bl GF_AssertFail
_020916E8:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020916F4 ; =sLocationGmmDat
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_020916F4: .word sLocationGmmDat
	thumb_func_end LocationGmmDatGetCountryMsgNo

	thumb_func_start LocationGmmDatGetEarthPlaceDatId
LocationGmmDatGetEarthPlaceDatId: ; 0x020916F8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _02091704
	bl GF_AssertFail
_02091704:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02091710 ; =sLocationGmmDat + 1
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_02091710: .word sLocationGmmDat + 1
	thumb_func_end LocationGmmDatGetEarthPlaceDatId

	thumb_func_start LocationGmmDatGetDistrictNameMsgIdsPtr
LocationGmmDatGetDistrictNameMsgIdsPtr: ; 0x02091714
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _02091720
	bl GF_AssertFail
_02091720:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0209172C ; =sLocationGmmDat + 4
	ldr r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_0209172C: .word sLocationGmmDat + 4
	thumb_func_end LocationGmmDatGetDistrictNameMsgIdsPtr

	thumb_func_start LocationGmmDatGetDistrictCount
LocationGmmDatGetDistrictCount: ; 0x02091730
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _0209173C
	bl GF_AssertFail
_0209173C:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02091748 ; =sLocationGmmDat + 8
	ldr r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_02091748: .word sLocationGmmDat + 8
	thumb_func_end LocationGmmDatGetDistrictCount

	.rodata

	.balign 4, 0
sLocationGmmDat_Finland:
	.byte 0x01, 0x03, 0x02, 0x05, 0x04, 0x06
	.balign 4, 0
sLocationGmmDat_Australia:
	.byte 0x01, 0x02, 0x03, 0x04
	.byte 0x05, 0x06, 0x07
	.balign 4, 0
sLocationGmmDat_Russia:
	.byte 0x01, 0x02, 0x03, 0x05, 0x06, 0x07, 0x04
	.balign 4, 0
sLocationGmmDat_GreatBritain:
	.byte 0x02, 0x01, 0x03, 0x04
	.byte 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C
	.balign 4, 0
sLocationGmmDat_Canada:
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
	.byte 0x09, 0x0A, 0x0B, 0x0C, 0x0D
	.balign 4, 0
sLocationGmmDat_Poland:
	.byte 0x01, 0x02, 0x05, 0x03, 0x04, 0x06, 0x07, 0x08
	.byte 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10
	.balign 4, 0
sLocationGmmDat_Germany:
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x10, 0x06, 0x07
	.byte 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F
	.balign 4, 0
sLocationGmmDat_Spain:
	.byte 0x01, 0x02, 0x03, 0x07, 0x09, 0x08, 0x0A, 0x11
	.byte 0x0B, 0x0C, 0x04, 0x06, 0x10, 0x0D, 0x0E, 0x0F, 0x05
	.balign 4, 0
sLocationGmmDat_Norway:
	.byte 0x01, 0x02, 0x03, 0x04
	.byte 0x05, 0x06, 0x07, 0x08, 0x0A, 0x09, 0x0B, 0x0C, 0x14, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13
	.balign 4, 0
sLocationGmmDat_Italy:
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10
	.byte 0x11, 0x12, 0x13, 0x14
	.balign 4, 0
sLocationGmmDat_France:
	.byte 0x02, 0x01, 0x04, 0x0C, 0x0D, 0x07, 0x06, 0x05, 0x0B, 0x03, 0x12, 0x13
	.byte 0x16, 0x15, 0x11, 0x08, 0x09, 0x0F, 0x0A, 0x10, 0x0E, 0x14
	.balign 4, 0
sLocationGmmDat_Argentina:
	.byte 0x01, 0x03, 0x04, 0x05
	.byte 0x02, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14
	.byte 0x15, 0x16, 0x17, 0x18
	.balign 4, 0
sLocationGmmDat_Sweden:
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0D, 0x0E
	.byte 0x0F, 0x0B, 0x10, 0x11, 0x12, 0x13, 0x14, 0x0C, 0x15, 0x16, 0x17, 0x18
	.balign 4, 0
sLocationGmmDat_Brazil:
	.byte 0x01, 0x03, 0x04, 0x05
	.byte 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x16, 0x15
	.byte 0x14, 0x02, 0x17, 0x18, 0x19, 0x1A, 0x1B
	.balign 4, 0
sLocationGmmDat_China:
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
	.byte 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18
	.byte 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F
	.balign 4, 0
sLocationGmmDat_India:
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
	.byte 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x18, 0x16, 0x17
	.byte 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23
	.balign 4, 0
sLocationGmmDat_Japan:
	.byte 0x1A, 0x08, 0x05, 0x0F
	.byte 0x29, 0x15, 0x2B, 0x0A, 0x18, 0x0D, 0x25, 0x02, 0x04, 0x01, 0x03, 0x1F, 0x0B, 0x14, 0x06, 0x28
	.byte 0x31, 0x11, 0x2A, 0x2E, 0x1D, 0x1B, 0x07, 0x30, 0x17, 0x2D, 0x20, 0x12, 0x2F, 0x24, 0x32, 0x1E
	.byte 0x2C, 0x0E, 0x1C, 0x23, 0x19, 0x0C, 0x27, 0x10, 0x22, 0x13, 0x21, 0x09, 0x26, 0x16
	.balign 4, 0
sLocationGmmDat_UnitedStates:
	.byte 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10
	.byte 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20
	.byte 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30
	.byte 0x31, 0x32, 0x33
	.balign 4, 0
sLocationGmmDat:
	; Countries (130 options)
	.byte 0x00, 0x12
	.short 0x031E ; msg_0798
	.word sLocationGmmDat_World
	.word 0x00000082

	; Argentina (24 districts)
	.byte 0x09, 0x00
	.short 0x030C ; msg_0780
	.word sLocationGmmDat_Argentina
	.word 0x00000018

	; Australia (7 states)
	.byte 0x0C, 0x01
	.short 0x030D ; msg_0781
	.word sLocationGmmDat_Australia
	.word 0x00000007

	; Brazil (27 districts)
	.byte 0x1C, 0x02
	.short 0x030E ; msg_0782
	.word sLocationGmmDat_Brazil
	.word 0x0000001B

	; Canada (13 provinces)
	.byte 0x24, 0x03
	.short 0x030F ; msg_0783
	.word sLocationGmmDat_Canada
	.word 0x0000000D

	; China (31 states)
	.byte 0x2B, 0x04
	.short 0x0310 ; msg_0784
	.word sLocationGmmDat_China
	.word 0x0000001F

	; Deutschland (16 states)
	.byte 0x4D, 0x05
	.short 0x0311 ; msg_0785
	.word sLocationGmmDat_Germany
	.word 0x00000010

	; España (17 states)
	.byte 0xC1, 0x06
	.short 0x0312 ; msg_0786
	.word sLocationGmmDat_Spain
	.word 0x00000011

	; Finland (6 states)
	.byte 0x46, 0x07
	.short 0x0313 ; msg_0787
	.word sLocationGmmDat_Finland
	.word 0x00000006

	; France (22 states)
	.byte 0x47, 0x08
	.short 0x0314 ; msg_0788
	.word sLocationGmmDat_France
	.word 0x00000016

	; Great Britain (12 regions)
	.byte 0xDB, 0x09
	.short 0x0315 ; msg_0789
	.word sLocationGmmDat_GreatBritain
	.word 0x0000000C

	; India (35 states)
	.byte 0x5E, 0x0A
	.short 0x0316 ; msg_0790
	.word sLocationGmmDat_India
	.word 0x00000023

	; Italy (20 states)
	.byte 0x65, 0x0B
	.short 0x0317 ; msg_0791
	.word sLocationGmmDat_Italy
	.word 0x00000014

	; Japan (50 prefectures)
	.byte 0x67, 0x0C
	.short 0x0318 ; msg_0792
	.word sLocationGmmDat_Japan
	.word 0x00000032

	; Norway (20 states)
	.byte 0x9C, 0x0D
	.short 0x0319 ; msg_0793
	.word sLocationGmmDat_Norway
	.word 0x00000014

	; Poland (16 provinces)
	.byte 0xA6, 0x0E
	.short 0x031A ; msg_0794
	.word sLocationGmmDat_Poland
	.word 0x00000010

	; Russia (7 districts)
	.byte 0xAC, 0x0F
	.short 0x031B ; msg_0795
	.word sLocationGmmDat_Russia
	.word 0x00000007

	; Sweden (24 provinces)
	.byte 0xC7, 0x10
	.short 0x031C ; msg_0796
	.word sLocationGmmDat_Sweden
	.word 0x00000018

	; United States (50 states + DC)
	.byte 0xDC, 0x11
	.short 0x031D ; msg_0797
	.word sLocationGmmDat_UnitedStates
	.word 0x00000033

	.balign 4, 0
sLocationGmmDat_World:
	.byte 0x01, 0x02, 0x03, 0x06, 0x08, 0x09, 0x0C, 0x0D
	.byte 0x0F, 0x10, 0x11, 0x12, 0x14, 0x15, 0x16, 0x17, 0x19, 0x1B, 0x1C, 0x1D, 0x1F, 0x21, 0x22, 0x23
	.byte 0x24, 0x28, 0x2A, 0x2B, 0x2D, 0x30, 0x31, 0x32, 0x34, 0x36, 0x37, 0x38, 0x3A, 0x3B, 0x3C, 0x3D
	.byte 0x3E, 0x45, 0x46, 0x47, 0x48, 0x4A, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x55, 0x56, 0x58
	.byte 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x61, 0x62, 0x64, 0x65, 0x66, 0x67, 0x68, 0x6B, 0x6F
	.byte 0x73, 0x75, 0x76, 0x79, 0x7A, 0x7E, 0x81, 0x83, 0x85, 0x87, 0x8C, 0x8E, 0x92, 0x94, 0x95, 0x96
	.byte 0x97, 0x98, 0x9C, 0x9D, 0x9E, 0xA0, 0xA1, 0xA3, 0xA4, 0xA6, 0xA7, 0x6E, 0xAB, 0xAC, 0xB3, 0xB7
	.byte 0xBA, 0xBB, 0xBC, 0xBD, 0xC0, 0xC1, 0xC2, 0xC4, 0xC6, 0xC7, 0xC8, 0xCA, 0xCD, 0xCF, 0xD3, 0xD4
	.byte 0xD8, 0xDA, 0xDB, 0xCC, 0xDD, 0xDC, 0xDE, 0xE0, 0xE2, 0xE3

	.balign 4, 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
