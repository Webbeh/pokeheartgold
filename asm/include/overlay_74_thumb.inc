#include <nitro/fs/overlay.h>
#pragma once
.public SVC_GetCRC16
.public RegisterMainOverlay
.public ListMenuInit
.public ListMenu_ProcessInput
.public DestroyListMenu
.public sub_02002B8C
.public FontID_Alloc
.public FontID_Release
.public FontID_String_GetWidth
.public GetFontAttribute
.public LoadFontPal0
.public FontID_String_GetWidthMultiline
.public FontID_String_GetCenterAlignmentX
.public sub_02004AD8
.public sub_02004EC4
.public sub_02005AF8
.public sub_02005FA0
.public PlaySE
.public PlayCry
.public OverlayManager_CreateAndGetData
.public OverlayManager_GetData
.public OverlayManager_FreeData
.public OverlayManager_GetArgs
.public ReadWholeNarcMemberByIdPair
.public NARC_New
.public NARC_Delete
.public NARC_ReadWholeMember
.public GfGfxLoader_LoadCharData
.public GfGfxLoader_LoadScrnData
.public GfGfxLoader_GXLoadPal
.public GfGfxLoader_GetCharData
.public GfGfxLoader_LoadFromNarc
.public CreateSpriteResourcesHeader
.public G2dRenderer_Init
.public G2dRenderer_SetSubSurfaceCoords
.public Create2DGfxResObjMan
.public Destroy2DGfxResObjMan
.public AddCharResObjFromNarc
.public AddPlttResObjFromNarc
.public AddCellOrAnimResObjFromNarc
.public sub_0200ACF0
.public sub_0200AEB0
.public sub_0200AF94
.public sub_0200B00C
.public sub_0200B0A8
.public OamManager_Create
.public OamManager_ApplyAndResetBuffers
.public OamManager_Free
.public NewMsgDataFromNarc
.public DestroyMsgData
.public ReadMsgDataIntoString
.public NewString_ReadMsgData
.public ReadMsgData_ExpandPlaceholders
.public MessageFormat_New
.public MessageFormat_Delete
.public BufferString
.public BufferPlayersName
.public BufferIntegerAsString
.public BufferMonthNameAbbr
.public StringExpandPlaceholders
.public CreateSysTask
.public sub_0200E33C
.public DestroySysTask
.public LoadUserFrameGfx1
.public DrawFrameAndWindow1
.public sub_0200E5D4
.public LoadUserFrameGfx2
.public DrawFrameAndWindow2
.public ClearFrameAndWindow2
.public WaitingIcon_New
.public sub_0200F450
.public sub_0200F478
.public BeginNormalPaletteFade
.public IsPaletteFadeFinished
.public sub_0200FBF4
.public sub_02014494
.public GF_RTC_CopyDate
.public ListMenuItems_New
.public ListMenuItems_Delete
.public ListMenuItems_AppendFromMsgData
.public sub_02014A08
.public sub_02014A38
.public sub_02014A4C
.public sub_02014A60
.public sub_02014A8C
.public sub_02014AA0
.public sub_02014AB0
.public sub_0201660C
.public sub_02016624
.public sub_020166FC
.public sub_020168F4
.public sub_020169CC
.public Main_SetVBlankIntrCB
.public sub_0201A4B0
.public Sys_SetSleepDisableFlag
.public Sys_ClearSleepDisableFlag
.public sub_0201A728
.public sub_0201A738
.public CreateHeap
.public DestroyHeap
.public AllocFromHeap
.public AllocFromHeapAtEnd
.public FreeToHeap
.public FreeToHeapExplicit
.public BgConfig_Alloc
.public SetBothScreensModesAndDisable
.public InitBgFromTemplate
.public FreeBgTilemapBuffer
.public BgCommitTilemapBufferToVram
.public BG_LoadScreenTilemapData
.public BG_ClearCharDataRange
.public BG_SetMaskColor
.public FillBgTilemapRect
.public BgTilemapRectChangePalette
.public BgClearTilemapBufferAndCommit
.public GetBgTilemapBuffer
.public WindowIsInUse
.public AddWindowParameterized
.public RemoveWindow
.public CopyWindowToVram
.public ClearWindowTilemapAndCopyToVram
.public FillWindowPixelBuffer
.public GetWindowWidth
.public GetWindowHeight
.public GetWindowX
.public GetWindowY
.public SetWindowX
.public SetWindowY
.public DoScheduledBgGpuUpdates
.public ScheduleBgTilemapBufferTransfer
.public ScheduleSetBgPosText
.public DoesPixelAtScreenXYMatchPtrVal
.public GF_SinDeg
.public GF_CosDeg
.public LCRandom
.public ResetAllTextPrinters
.public TextPrinterCheckActive
.public AddTextPrinterParameterized2
.public GF_RunVramTransferTasks
.public sub_020215A0
.public sub_020215C0
.public sub_0202168C
.public sub_020216C8
.public sub_02022588
.public sub_02022608
.public sub_02022638
.public GX_SetBanks
.public GX_DisableEngineALayers
.public GX_EngineAToggleLayers
.public GX_DisableEngineBLayers
.public GX_EngineBToggleLayers
.public GX_SwapDisplay
.public sub_02024504
.public sub_0202457C
.public CreateSprite
.public Sprite_Delete
.public sub_020247D4
.public Set2dSpriteVisibleFlag
.public Set2dSpriteAnimActiveFlag
.public sub_0202487C
.public sub_020248AC
.public sub_020248B8
.public Set2dSpriteAnimSeqNo
.public sub_02024950
.public sub_02024964
.public sub_020249A8
.public sub_020249B0
.public sub_020249D4
.public sub_02024A04
.public sub_02024A14
.public sub_02024ADC
.public sub_02024B1C
.public sub_02024B34
.public sub_02025224
.public System_GetTouchNew
.public GF_AssertFail
.public String_New
.public String_Delete
.public String_SetEmpty
.public String16_FormatInteger
.public CopyU16ArrayToString
.public CopyU16ArrayToStringN
.public CopyStringToU16Array
.public sub_02027098
.public Save_MysteryGift_Get
.public sub_020270F8
.public SaveGameNormal
.public Save_NowWriteFile_AfterMGInit
.public Save_FileExists
.public Save_PrepareForAsyncWrite
.public Save_WriteFileAsync
.public Save_Cancel
.public SaveSubstruct_AssertCRC
.public SaveSubstruct_UpdateCRC
.public Save_SysInfo_Get
.public Save_SysInfo_GetMysteryGiftActive
.public Save_PlayerData_GetProfileAddr
.public Save_PlayerData_GetOptionsAddr
.public Save_PlayerData_GetIGTAddr
.public PlayerProfile_GetNamePtr
.public PlayerProfile_GetTrainerID
.public PlayerProfile_GetTrainerID_VisibleHalf
.public PlayerProfile_GetTrainerGender
.public PlayerProfile_CountBadges
.public Pokedex_CountDexOwned
.public Pokedex_GetNatDexFlag
.public Pokedex_IsEnabled
.public Save_Pokedex_Get
.public Options_GetFrame
.public GetIGTHours
.public GetIGTMinutes
.public Save_MysteryGift_Init
.public SaveMysteryGift_CardGetByIdx
.public sub_0202DC2C
.public sub_0202DCAC
.public sub_0202DD48
.public sub_0202DDB0
.public sub_0202DDEC
.public SaveMysteryGift_FindAvailable
.public SaveMysteryGift_CardFindAvailable
.public sub_0202DE90
.public sub_0202DEBC
.public sub_0202DED8
.public sub_0202DEF8
.public sub_0202DF7C
.public sub_0202DFAC
.public sub_0202E014
.public sub_0202E024
.public sub_0202EC14
.public sub_0202EC28
.public sub_0202EC98
.public sub_0203410C
.public sub_020342C0
.public sub_02034434
.public sub_02034818
.public sub_02034D8C
.public sub_02034DB8
.public sub_02034DE0
.public sub_02035754
.public sub_020358B8
.public sub_020358D0
.public sub_02037088
.public sub_020373B4
.public sub_02037474
.public sub_0203769C
.public sub_0203778C
.public sub_02037AC0
.public sub_02037B38
.public sub_02037D78
.public sub_02037E1C
.public sub_02037E9C
.public sub_02037EC8
.public sub_02038114
.public sub_02038148
.public sub_02038D28
.public sub_02038D64
.public sub_02038D80
.public sub_020394A0
.public sub_020394F4
.public sub_020398D4
.public sub_02039FD8
.public sub_0203A880
.public sub_0203A914
.public sub_0203A930
.public ZeroBoxMonData
.public AcquireBoxMonLock
.public ReleaseBoxMonLock
.public GetMonData
.public GetBoxMonData
.public SetBoxMonData
.public GetMonBaseStat
.public CalcLevelBySpeciesAndExp
.public GetMonGender
.public GetBoxMonGender
.public MonIsShiny
.public GetMonSpriteCharAndPlttNarcIdsEx
.public Mon_GetBoxMon
.public GetMonIconNaixEx
.public GetMonIconPaletteEx
.public sub_02074490
.public GetItemIndexMapping
.public UpConvertItemId_Gen3to4
.public GetItemIconCell
.public GetItemIconAnim
.public GetItemNameIntoString
.public LoadDwcOverlay
.public UnloadDwcOverlay
.public LoadOVY38
.public UnloadOVY38
.public ShowGBACartRemovedError
.public CRYPTO_RC4Init
.public NNS_G2dGetUnpackedBGCharacterData
.public NNS_G2dGetUnpackedScreenData
.public NNS_G2dInitOamManagerModule
.public NNS_G2dGetImageLocation
.public NNS_G2dGetImagePaletteLocation
.public FX_Sqrt
.public FX_Atan2Idx
.public G2x_SetBlendBrightness_
.public GX_LoadOBJ
.public GXS_LoadOBJ
.public OS_SetIrqFunction
.public OS_EnableIrqMask
.public OS_DisableIrqMask
.public DC_InvalidateRange
.public DC_FlushRange
.public OS_InitTick
.public OS_IsTickAvailable
.public OS_GetTick
.public OS_GetTickLo
.public OS_ResetSystem
.public OS_GetMacAddress
.public OS_Terminate
.public MIi_CpuClear32
.public MIi_CpuCopy32
.public MIi_CpuCopyFast
.public MI_CpuFill8
.public MI_CpuCopy8
.public RTC_ConvertDateToDay
.public RTC_ConvertDayToDate
.public WM_Init
.public WM_Finish
.public WM_SetIndCallback
.public WM_SetPortCallback
.public WM_GetAllowedChannel
.public WM_GetLinkLevel
.public WM_GetDispersionBeaconPeriod
.public WM_GetDispersionScanPeriod
.public WM_GetNextTgid
.public WM_Enable
.public WM_Disable
.public WM_PowerOn
.public WM_PowerOff
.public WM_Initialize
.public WM_Reset
.public WM_End
.public WM_SetParentParameter
.public WM_StartParent
.public WM_StartScan
.public WM_EndScan
.public WM_StartConnectEx
.public WM_StartMP
.public WM_SetMPDataToPortEx
.public WM_MeasureChannel
.public CTRDG_IsAgbCartridge
.public CTRDG_GetAgbGameCode
.public CTRDG_GetAgbMakerCode
.public CTRDG_IsPulledOut
.public CTRDG_IsExisting
.public CTRDG_CpuCopy8
.public CTRDG_CpuCopy16
.public CTRDG_CpuCopy32
.public CTRDG_Read32
.public CTRDG_Enable
.public CTRDG_Init
.public CTRDG_TerminateForPulledOut
.public CTRDG_IdentifyAgbBackup
.public CTRDG_ReadAgbFlash
.public CTRDG_WriteAndVerifyAgbFlashAsync
.public MATHi_CRC16InitTableRev
.public MATH_CalcCRC16
.public memcpy
.public memset
.public _dfix
.public _dflt
.public _dmul
.public _fadd
.public _fgr
.public _fls
.public _feq
.public _fdiv
.public _ffix
.public _fflt
.public _fmul
.public _fsub
.public _ull_mod
.public _s32_div_f
.public _u32_div_f
.public gGameVersion
.public gGameLanguage
.public gApp_MainMenu_SelectOption_NintendoWFCSetup
.public _02111864
.public gSystem
.public ov00_021E6A70
.public ov00_021EC11C
.public ov00_021EC210
.public ov00_021EC294
.public ov00_021EC3F0
.public ov00_021EC454
.public ov00_021EC4A4
.public ov00_021EC5B4
.public ov00_021EC60C
.public ov00_021EC724
.public ov00_021EC8D8
.public ov00_021EC938
.public ov00_021EC9E0
.public ov00_021ECB40
.public ov00_021ECD04
.public ov00_021ECDC8
.public ov00_021ECEC0
.public ov00_021ED1F0
.public ov00_021ED308
.public ov00_021ED354
.public ov00_021ED388
.public ov00_021ED3AC
.public ov00_021ED3F4
.public ov00_021ED428
.public ov00_021ED444
.public ov36_App_MainMenu_SelectOption_Continue
.public ov36_App_MainMenu_SelectOption_NewGame
.public ov60_021EAFE0
.public CRYPTO_RC4Encrypt
.public CRYPTO_VerifySignature
.public CRYPTO_SetAllocator
.public gApp_MainMenu
.public ov75_App_MainMenu_SelectOption_WiiMessageSettings
.public ov112_App_MainMenu_SelectOption_ConnectToPokewalker