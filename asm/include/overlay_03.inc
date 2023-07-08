#include <nitro/fs/overlay.h>
#pragma once
.public ListMenuInit
.public ListMenu_ProcessInput
.public DestroyListMenu
.public RedrawListMenu
.public ListMenuGetCurrentItemArrayId
.public ListMenuGetScrollAndRow
.public ListMenuGetTemplateField
.public TextFlags_SetCanABSpeedUpPrint
.public sub_02002B50
.public sub_02002B8C
.public FontID_String_GetWidth
.public PlaySE
.public GfGfxLoader_LoadCharData
.public GfGfxLoader_LoadScrnData
.public GfGfxLoader_GXLoadPal
.public ReplaceCharResObjFromNarc
.public ReplacePlttResObjFromNarc
.public Get2DGfxResObjById
.public sub_0200AE8C
.public sub_0200B084
.public NewMsgDataFromNarc
.public DestroyMsgData
.public ReadMsgDataIntoString
.public NewString_ReadMsgData
.public MessageFormat_New
.public MessageFormat_New_Custom
.public MessageFormat_Delete
.public BufferString
.public BufferPlayersName
.public BufferIntegerAsString
.public BufferSafariZoneObjectName
.public StringExpandPlaceholders
.public sub_0200DD08
.public sub_0200DD88
.public CreateSysTask
.public DestroySysTask
.public LoadUserFrameGfx1
.public DrawFrameAndWindow1
.public sub_0200E5D4
.public LoadUserFrameGfx2
.public ClearFrameAndWindow2
.public IsPaletteFadeFinished
.public ListMenuItems_New
.public ListMenuItems_Delete
.public ListMenuItems_AppendFromMsgData
.public ListMenuItems_AddItem
.public sub_02018410
.public AllocFromHeap
.public AllocFromHeapAtEnd
.public FreeToHeap
.public SetBgPriority
.public FillBgTilemapRect
.public BgFillTilemapBufferAndSchedule
.public GetBgPriority
.public InitWindow
.public WindowIsInUse
.public AddWindowParameterized
.public AddWindow
.public RemoveWindow
.public CopyWindowToVram
.public ScheduleWindowCopyToVram
.public ClearWindowTilemapAndCopyToVram
.public ClearWindowTilemapAndScheduleTransfer
.public FillWindowPixelBuffer
.public FillWindowPixelRect
.public GetWindowWidth
.public ScheduleBgTilemapBufferTransfer
.public sub_020200A0
.public AddTextPrinterParameterized
.public AddTextPrinterParameterized2
.public GX_EngineAToggleLayers
.public GX_EngineASetLayers
.public GX_EngineBToggleLayers
.public GX_EngineAGetLayers
.public Camera_Create
.public sub_02023120
.public sub_02023128
.public Camera_RegisterToStaticPtr
.public sub_0202457C
.public Sprite_Delete
.public sub_020247D4
.public Set2dSpriteVisibleFlag
.public Set2dSpriteAnimActiveFlag
.public sub_020248B8
.public Set2dSpriteAnimSeqNo
.public sub_020249B0
.public sub_020249D4
.public sub_02024A04
.public sub_02024B68
.public System_GetTouchNew
.public GF_AssertFail
.public String_New
.public String_Delete
.public String16_FormatInteger
.public Save_PlayerData_GetProfileAddr
.public Save_PlayerData_GetOptionsAddr
.public Save_PlayerData_GetIGTAddr
.public PlayerProfile_New
.public PlayerProfile_GetTrainerID
.public PlayerProfile_GetTrainerID_VisibleHalf
.public PlayerProfile_GetTrainerGender
.public PlayerProfile_GetMoney
.public PlayerProfile_SubMoney
.public sub_020290FC
.public sub_020291A4
.public sub_020291E8
.public sub_0202921C
.public Options_GetFrame
.public Save_SealCase_Get
.public GiveOrTakeSeal
.public SealCase_CheckSealQuantity
.public SealCase_CountSealOccurrenceAnywhere
.public Save_GameStats_Get
.public GameStats_Inc
.public GameStats_Add
.public Save_SafariZone_Get
.public SafariZone_GetAreaSet
.public SafariZone_SetAreaSet
.public sub_0202F784
.public SafariZone_SetLinkLeaderFromProfile
.public SafariZone_RemoveObjectFromArea
.public Save_Pokeathlon_Get
.public sub_0203199C
.public SavePokeathlon_SubAthletePoints
.public SavePokeathlon_GetAthletePoints
.public sub_02031A78
.public sub_02031A98
.public sub_02031AB8
.public sub_02031ACC
.public Save_ApricornBox_Get
.public ApricornBox_GiveApricorn
.public ApricornBox_CountApricorn
.public sub_0203410C
.public sub_02034434
.public sub_020346E8
.public sub_02034714
.public sub_0203476C
.public sub_02034780
.public sub_020347A0
.public sub_02034818
.public sub_020348F0
.public sub_0203511C
.public sub_02035150
.public sub_02035184
.public sub_02035198
.public sub_020351DC
.public sub_020356C0
.public sub_020373B4
.public sub_02037454
.public sub_0203769C
.public sub_020376D4
.public sub_02037700
.public sub_0203774C
.public sub_0203775C
.public sub_02037A10
.public sub_02037AC0
.public sub_02037B38
.public sub_02037B8C
.public sub_02037BA0
.public sub_02037BC8
.public sub_02037EC0
.public sub_020398D4
.public MapHeader_GetMapSec
.public FieldSystem_GetSaveDataPtr
.public sub_0203E3D4
.public sub_0203EB08
.public SetupNativeScript
.public ScriptReadHalfword
.public FieldSysGetAttrAddr
.public GetVarPointer
.public VarGet
.public ScrNative_WaitApplication_DestroyTaskData
.public Save_VarsFlags_Get
.public TaskManager_Jump
.public TaskManager_Call
.public TaskManager_GetFieldSystem
.public TaskManager_GetEnv
.public sub_020580E4
.public sub_02058124
.public sub_02058164
.public sub_02058180
.public sub_02058284
.public sub_0205B514
.public sub_0205B564
.public sub_0205B5A8
.public sub_0205B5B4
.public IsPrintFinished
.public PlayerAvatar_GetFacingDirection
.public GetPlayerXCoord
.public GetPlayerYCoord
.public GetDeltaXByFacingDirection
.public GetDeltaYByFacingDirection
.public sub_020669B4
.public CheckFlag09A
.public sub_02066D80
.public GetMonData
.public GetPartyCount
.public GetPartyMonByIndex
.public SaveArray_PlayerParty_Get
.public sub_02074944
.public sub_0207495C
.public sub_02074CD0
.public sub_0207789C
.public GetItemIndexMapping
.public GetItemDescIntoString
.public GetItemAttr
.public Bag_HasSpaceForItem
.public Bag_AddItem
.public Bag_GetQuantity
.public Bag_CreateView
.public Save_Bag_Get
.public sub_020881C0
.public sub_020910B8
.public sub_02092B04
.public sub_02097268
.public sub_02097720
.public MI_CpuFill8
.public abs
.public memset
.public _s32_div_f
.public _u32_div_f
.public gSystem
.public ov01_021E636C
.public ov01_021E7FDC
.public ov01_021E8194
.public ov01_021E81F0
.public ov01_021E8970
.public ov01_021F3B0C
.public ov01_021F3B2C
.public ov01_021F3B30
.public ov01_021F3B44
.public ov01_021F630C
.public ov01_021F6320
.public ov01_021F65E4
.public ov01_021F65F0
.public ov01_021F6A9C
.public ov01_021F6ABC
.public ov01_021F6AEC
.public ov01_021F6B00
.public ov01_021F6B10
.public ov01_022040D0
.public ov02_0224E698
.public ov02_0224E754
.public ov03_02255BB0
.public ov03_02255BEC
.public ov03_02255BFC
.public ov03_02255C18
.public ov03_02255C54
.public ov03_02255C64
.public ov03_022566B0
.public ov03_022566D0
.public ov03_02256710
.public ov03_02256730
.public ov03_02256A2C
.public ov03_02256B40
.public InitMartUI
.public ov03_02256E2C
.public ov03_02257814
.public ov03_02257978
.public ov03_02258120
.public ov03_022581BC
.public ov03_02258910
.public ov03_02258CFC