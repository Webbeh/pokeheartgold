	.include "asm/macros.inc"
	.include "global.inc"

	.text

	thumb_func_start ScrCmd_BufferStatName
ScrCmd_BufferStatName: ; 0x020483D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r0, [r6]
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl BufferStatName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferStatName

	thumb_func_start ScrCmd_BufferPlayersName
ScrCmd_BufferPlayersName: ; 0x02048414
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0]
	mov r1, #0x10
	add r0, r6, #0
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r4, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r5, [r1]
	add r0, r6, #0
	bl ScriptEnvironment_GetSav2Ptr
	bl Sav2_PlayerData_GetProfileAddr
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	bl BufferPlayersName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferPlayersName

	thumb_func_start ScrCmd_BufferRivalsName
ScrCmd_BufferRivalsName: ; 0x02048448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0]
	mov r1, #0x10
	add r0, r4, #0
	bl FieldSysGetAttrAddr
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	ldr r0, [r0]
	ldr r2, [r4, #0xc]
	bl BufferRivalsName
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ScrCmd_BufferRivalsName

	thumb_func_start ScrCmd_BufferFriendsName
ScrCmd_BufferFriendsName: ; 0x0204846C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0]
	mov r1, #0x10
	add r0, r4, #0
	bl FieldSysGetAttrAddr
	ldr r2, [r5, #8]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r1, [r2]
	ldr r0, [r0]
	ldr r2, [r4, #0xc]
	bl BufferFriendsName
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ScrCmd_BufferFriendsName

	thumb_func_start ScrCmd_BufferMonSpeciesName
ScrCmd_BufferMonSpeciesName: ; 0x02048490
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0]
	mov r1, #0x10
	add r0, r6, #0
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r5, #0
	bl GetPartyMonByIndex
	add r2, r0, #0
	ldr r0, [r7]
	add r1, r4, #0
	bl BufferBoxMonSpeciesName
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferMonSpeciesName

	thumb_func_start ScrCmd_BufferTypeName
ScrCmd_BufferTypeName: ; 0x020484D8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferTypeName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferTypeName

	thumb_func_start ScrCmd_BufferItemName
ScrCmd_BufferItemName: ; 0x02048510
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferItemName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferItemName

	thumb_func_start ScrCmd_BufferPocketName
ScrCmd_BufferPocketName: ; 0x02048548
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferPocketName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferPocketName

	thumb_func_start ScrCmd_BufferTMHMMoveName
ScrCmd_BufferTMHMMoveName: ; 0x02048580
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	bl TMHMGetMove
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferMoveName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferTMHMMoveName

	thumb_func_start ScrCmd_BufferMoveName
ScrCmd_BufferMoveName: ; 0x020485BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferMoveName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferMoveName

	thumb_func_start ScrCmd_BufferInt
ScrCmd_BufferInt: ; 0x020485F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r5, r0, #0
	bl sub_0205BB1C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6]
	add r1, r4, #0
	add r2, r5, #0
	bl BufferIntegerAsString
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_BufferInt

	thumb_func_start ScrCmd_BufferIntEx
ScrCmd_BufferIntEx: ; 0x0204863C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	str r0, [sp, #8]
	ldr r1, [r5, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r4, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r3, [r2]
	cmp r4, #0
	bne _02048684
	bl sub_0205BB1C
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_02048684:
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl BufferIntegerAsString
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferIntEx

	thumb_func_start ScrCmd_661
ScrCmd_661: ; 0x0204869C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl ScriptReadWord
	ldr r1, [r5, #8]
	str r0, [sp, #8]
	add r2, r1, #1
	str r2, [r5, #8]
	ldrb r4, [r1]
	add r1, r2, #1
	str r1, [r5, #8]
	ldrb r3, [r2]
	cmp r4, #0
	bne _020486D8
	bl sub_0205BB1C
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_020486D8:
	str r4, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl BufferIntegerAsString
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_661

	thumb_func_start ScrCmd_BufferPartyMonNick
ScrCmd_BufferPartyMonNick: ; 0x020486F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0]
	mov r1, #0x10
	add r0, r6, #0
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r5, #0
	bl GetPartyMonByIndex
	add r2, r0, #0
	ldr r0, [r7]
	add r1, r4, #0
	bl BufferBoxMonNickname
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferPartyMonNick

	thumb_func_start ScrCmd_BufferBoxMonNick
ScrCmd_BufferBoxMonNick: ; 0x02048738
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r4, [r0]
	ldr r0, [r4, #0xc]
	bl GetStoragePCPointer
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r5, r0, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x1e
	bl _s32_div_f
	add r2, r1, #0
	ldr r0, [sp]
	add r1, r7, #0
	bl PCStorage_GetMonByIndexPair
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferBoxMonNickname
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_BufferBoxMonNick

	thumb_func_start ScrCmd_BufferTrainerClassName
ScrCmd_BufferTrainerClassName: ; 0x02048794
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferTrainerClassName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferTrainerClassName

	thumb_func_start ScrCmd_BufferPlayerUnionAvatarClassName
ScrCmd_BufferPlayerUnionAvatarClassName: ; 0x020487CC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x80
	ldr r5, [r0]
	add r0, r5, #0
	bl ScriptEnvironment_GetSav2Ptr
	bl Sav2_PlayerData_GetProfileAddr
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r7, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r7, #8]
	add r0, r4, #0
	ldrb r5, [r1]
	bl PlayerProfile_GetTrainerGender
	add r7, r0, #0
	add r0, r4, #0
	bl PlayerProfile_GetAvatar
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #2
	bl sub_0205B46C
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r5, #0
	bl BufferTrainerClassNameWithArticle
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ScrCmd_BufferPlayerUnionAvatarClassName

	thumb_func_start ScrCmd_BufferSpeciesName
ScrCmd_BufferSpeciesName: ; 0x02048818
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r6, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	ldr r1, [r5, #8]
	str r0, [sp, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldrb r5, [r1]
	add r0, r6, #0
	mov r1, #4
	bl _get_species_name
	add r6, r0, #0
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7]
	ldr r3, [sp, #8]
	add r1, r4, #0
	add r2, r6, #0
	bl BufferString
	add r0, r6, #0
	bl String_dtor
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferSpeciesName

	thumb_func_start _get_species_name
_get_species_name: ; 0x02048880
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xed
	bl NewMsgDataFromNarc
	add r5, r0, #0
	add r1, r4, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	add r0, r5, #0
	bl DestroyMsgData
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end _get_species_name

	thumb_func_start ScrCmd_BufferStarterSpeciesName
ScrCmd_BufferStarterSpeciesName: ; 0x020488A4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl SavArray_Flags_get
	bl GetStarterFromScriptState
	mov r1, #4
	bl _get_species_name
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl BufferString
	add r0, r4, #0
	bl String_dtor
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_BufferStarterSpeciesName

	thumb_func_start ScrCmd_BufferDPPtRivalStarterSpeciesName
ScrCmd_BufferDPPtRivalStarterSpeciesName: ; 0x020488F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl SavArray_Flags_get
	bl DPPtLeftover_GetRivalSpecies
	mov r1, #4
	bl _get_species_name
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl BufferString
	add r0, r4, #0
	bl String_dtor
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_BufferDPPtRivalStarterSpeciesName

	thumb_func_start ScrCmd_BufferDPPtFriendStarterSpeciesName
ScrCmd_BufferDPPtFriendStarterSpeciesName: ; 0x02048944
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r4, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r4, #0x80
	ldr r0, [r4]
	ldrb r5, [r1]
	ldr r0, [r0, #0xc]
	bl SavArray_Flags_get
	bl DPPtLeftover_GetFriendStarterSpecies
	mov r1, #4
	bl _get_species_name
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r6]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl BufferString
	add r0, r4, #0
	bl String_dtor
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_BufferDPPtFriendStarterSpeciesName

	thumb_func_start ScrCmd_BufferDecorationName
ScrCmd_BufferDecorationName: ; 0x02048994
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferDecorationName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferDecorationName

	thumb_func_start ScrCmd_208
ScrCmd_208: ; 0x020489CC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl VarGet
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ScrCmd_208

	thumb_func_start ScrCmd_209
ScrCmd_209: ; 0x020489F4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl VarGet
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ScrCmd_209

	thumb_func_start ScrCmd_BufferMapSecName
ScrCmd_BufferMapSecName: ; 0x02048A1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x16
	mov r1, #4
	bl String_ctor
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r6, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	mov r1, #4
	add r2, r4, #0
	bl sub_02068F98
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7]
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0
	bl BufferString
	add r0, r4, #0
	bl String_dtor
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferMapSecName

	thumb_func_start ScrCmd_BufferBerryName
ScrCmd_BufferBerryName: ; 0x02048A7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r4, #0
	ldrb r6, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r5, r0, #0
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl VarGet
	sub r5, #0x95
	add r4, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x20
	bl GetNutName
	add r5, r0, #0
	cmp r4, #2
	bhs _02048AD2
	mov r0, #1
	b _02048AD4
_02048AD2:
	mov r0, #0
_02048AD4:
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r7]
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0
	bl BufferString
	add r0, r5, #0
	bl String_dtor
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferBerryName

	thumb_func_start ScrCmd_BufferNatureName
ScrCmd_BufferNatureName: ; 0x02048AF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferNatureName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferNatureName

	thumb_func_start ScrCmd_BufferFashionName
ScrCmd_BufferFashionName: ; 0x02048B2C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferFashionName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferFashionName

	thumb_func_start ScrCmd_BufferPartyMonMoveName
ScrCmd_BufferPartyMonMoveName: ; 0x02048B64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r6, [r0]
	mov r1, #0x10
	add r0, r6, #0
	bl FieldSysGetAttrAddr
	ldr r1, [r4, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r4, #8]
	add r0, r4, #0
	ldrb r5, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	str r0, [sp]
	add r0, r4, #0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0
	ldr r0, [r4]
	bl VarGet
	add r4, r0, #0
	ldr r0, [r6, #0xc]
	bl SavArray_PlayerParty_get
	ldr r1, [sp]
	bl GetPartyMonByIndex
	add r4, #0x36
	add r1, r4, #0
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r7]
	add r1, r5, #0
	bl BufferMoveName
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferPartyMonMoveName

	thumb_func_start ScrCmd_BufferRibbonName
ScrCmd_BufferRibbonName: ; 0x02048BCC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #3
	bl sub_0208E55C
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferRibbonNameOrDesc
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferRibbonName

	thumb_func_start ScrCmd_BufferSealName
ScrCmd_BufferSealName: ; 0x02048C10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferSealName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferSealName

	thumb_func_start ScrCmd_BufferTrainerName
ScrCmd_BufferTrainerName: ; 0x02048C48
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferTrainerName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferTrainerName

	thumb_func_start ScrCmd_BufferApricornName
ScrCmd_BufferApricornName: ; 0x02048C80
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r0, [r6]
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl BufferApricornName
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferApricornName

	thumb_func_start ScrCmd_BufferItemNameIndef
ScrCmd_BufferItemNameIndef: ; 0x02048CBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferItemNameWithIndefArticle
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferItemNameIndef

	thumb_func_start ScrCmd_BufferItemNamePlural
ScrCmd_BufferItemNamePlural: ; 0x02048CF4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferItemNamePlural
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferItemNamePlural

	thumb_func_start ScrCmd_BufferPartyMonSpeciesNameIndef
ScrCmd_BufferPartyMonSpeciesNameIndef: ; 0x02048D2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r6, [r0]
	mov r1, #0x10
	add r0, r6, #0
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r7, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	bl SavArray_PlayerParty_get
	add r1, r5, #0
	bl GetPartyMonByIndex
	add r2, r0, #0
	ldr r0, [r7]
	add r1, r4, #0
	bl BufferBoxMonSpeciesNameWithArticle
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferPartyMonSpeciesNameIndef

	thumb_func_start ScrCmd_BufferSpeciesNameIndef
ScrCmd_BufferSpeciesNameIndef: ; 0x02048D74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	bl VarGet
	add r7, r0, #0
	add r0, r5, #0
	bl ScriptReadHalfword
	ldr r0, [r5, #8]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [r5, #8]
	ldr r0, [r6]
	add r2, r7, #0
	bl BufferSpeciesNameWithArticle
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferSpeciesNameIndef

	thumb_func_start ScrCmd_BufferDPPtFriendStarterSpeciesNameIndef
ScrCmd_BufferDPPtFriendStarterSpeciesNameIndef: ; 0x02048DBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r5, #0x80
	ldr r0, [r5]
	ldrb r4, [r1]
	ldr r0, [r0, #0xc]
	bl SavArray_Flags_get
	bl DPPtLeftover_GetFriendStarterSpecies
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferSpeciesNameWithArticle
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ScrCmd_BufferDPPtFriendStarterSpeciesNameIndef

	thumb_func_start ScrCmd_BufferFashionNameIndef
ScrCmd_BufferFashionNameIndef: ; 0x02048DF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferFashionNameWithArticle
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferFashionNameIndef

	thumb_func_start ScrCmd_BufferTrainerClassNameIndef
ScrCmd_BufferTrainerClassNameIndef: ; 0x02048E28
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferTrainerClassNameWithArticle
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferTrainerClassNameIndef

	thumb_func_start ScrCmd_BufferSealNamePlural
ScrCmd_BufferSealNamePlural: ; 0x02048E60
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #8]
	add r6, r0, #0
	add r0, r1, #1
	str r0, [r5, #8]
	add r0, r5, #0
	ldrb r4, [r1]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5]
	bl VarGet
	add r2, r0, #0
	ldr r0, [r6]
	add r1, r4, #0
	bl BufferSealNamePlural
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ScrCmd_BufferSealNamePlural

	thumb_func_start ScrCmd_Capitalize
ScrCmd_Capitalize: ; 0x02048E98
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	mov r1, #0x10
	bl FieldSysGetAttrAddr
	ldr r2, [r4, #8]
	add r1, r2, #1
	str r1, [r4, #8]
	ldrb r1, [r2]
	ldr r0, [r0]
	bl ScrStrBufs_UpperFirstChar
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ScrCmd_Capitalize