#include <nitro/fs/overlay.h>
#pragma once
.public TextFlags_SetCanABSpeedUpPrint
.public sub_02002B50
.public sub_02002B8C
.public FontID_String_GetWidth
.public LoadFontPal1
.public sub_02003DE8
.public OverlayManager_CreateAndGetData
.public OverlayManager_GetData
.public OverlayManager_FreeData
.public OverlayManager_GetArgs
.public NARC_New
.public NARC_Delete
.public GfGfxLoader_LoadCharDataFromOpenNarc
.public GfGfxLoader_LoadScrnDataFromOpenNarc
.public GfGfxLoader_GXLoadPalFromOpenNarc
.public GfGfxLoader_GetPlttDataFromOpenNarc
.public OamManager_ApplyAndResetBuffers
.public NewMsgDataFromNarc
.public DestroyMsgData
.public ReadMsgDataIntoString
.public NewString_ReadMsgData
.public MessageFormat_New
.public MessageFormat_New_Custom
.public MessageFormat_Delete
.public BufferIntegerAsString
.public StringExpandPlaceholders
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
.public BeginNormalPaletteFade
.public IsPaletteFadeFinished
.public sub_0201660C
.public sub_02016624
.public sub_020166FC
.public sub_020168F4
.public Main_SetVBlankIntrCB
.public HBlankInterruptDisable
.public Sys_SetSleepDisableFlag
.public SetKeyRepeatTimers
.public CreateHeap
.public DestroyHeap
.public AllocFromHeap
.public FreeToHeap
.public BgConfig_Alloc
.public SetBothScreensModesAndDisable
.public InitBgFromTemplate
.public FreeBgTilemapBuffer
.public BgSetPosTextAndCommit
.public BG_ClearCharDataRange
.public BG_SetMaskColor
.public BgClearTilemapBufferAndCommit
.public AddWindowParameterized
.public RemoveWindow
.public FillWindowPixelBuffer
.public DoScheduledBgGpuUpdates
.public TextPrinterCheckActive
.public AddTextPrinterParameterized
.public AddTextPrinterParameterized2
.public GF_CreateVramTransferManager
.public GF_DestroyVramTransferManager
.public GF_RunVramTransferTasks
.public sub_020210BC
.public sub_02021148
.public sub_02021238
.public GX_SetBanks
.public GX_DisableEngineALayers
.public GX_EngineAToggleLayers
.public GX_DisableEngineBLayers
.public GX_EngineBToggleLayers
.public GX_SwapDisplay
.public System_GetTouchNew
.public GF_AssertFail
.public String_New
.public String_Delete
.public CopyStringToU16Array
.public SaveArray_CalcCRC16
.public Save_SysInfo_Get
.public Save_SysInfo_GetField4C
.public Save_SysInfo_SetField4C
.public Save_PlayerData_GetOptionsAddr
.public Save_PlayerData_GetIGTAddr
.public Options_GetTextFrameDelay
.public Options_GetFrame
.public sub_0202B994
.public sub_0202C08C
.public sub_0202C6F4
.public sub_0202FBCC
.public sub_0202FC74
.public sub_020307DC
.public sub_02039418
.public sub_0203946C
.public sub_020399EC
.public sub_0203A040
.public sub_0203A880
.public sub_0203A914
.public PCStorage_GetBoxWallpaper
.public PCStorage_GetBoxName
.public PCStorage_GetMonDataByIndexPair
.public GX_LoadBGPltt
.public GXS_LoadBGPltt
.public DC_FlushRange
.public OS_SetArenaLo
.public OS_SetCurrentHeap
.public OS_InitAlloc
.public OS_ClearAlloc
.public OS_CreateHeap
.public MIi_CpuCopy16
.public MIi_CpuClear32
.public MI_CpuFill8
.public MI_CpuCopy8
.public gSystem
.public ov00_021E6A70
.public ov00_021EC0FC
.public ov00_021EC11C
.public ov00_021EC210
.public ov00_021EC3F0
.public ov00_021EC454
.public ov00_021EC4A4
.public ov00_021EC5B4
.public ov00_021EC60C
.public ov00_021EC724
.public ov00_021EC8D8
.public ov00_021EC9E0
.public ov00_021ECD04
.public ov00_021ECDC8
.public ov00_021ED9B4
.public ov00_021FA0D8
.public ov39_02227080
.public ov39_02227088
.public ov39_022271C0
.public ov39_02227208
.public ov39_022272EC
.public ov39_022273B0
.public ov39_022273F8
.public ov39_02227420
.public ov39_0222748C
.public ov39_022274B4
.public ov39_022274D4
.public ov39_02227534
.public ov39_02227590
.public ov39_022275E8
.public ov39_02227648
.public ov39_022276A4
.public ov39_022276E0
.public ov39_02227720
.public ov39_0222774C
.public ov39_02227778
.public ov39_02227D44
.public ov39_02227DB8
.public ov39_02227E8C
.public ov39_02227F14
.public ov39_02227F74
.public ov39_02227FA8
.public ov39_02227FEC
.public ov39_0222801C
.public ov39_022280D4
.public ov39_02228140
.public ov39_02228308
.public ov39_02228370
.public ov39_0222A110
.public ov39_0222A130
.public ov39_0222A13C
.public ov39_0222A158
.public ov39_0222A164
.public ov39_0222A1C0
.public ov39_0222A200
.public ov39_0222A268
.public ov39_0222A2A8
.public ov39_0222A2B4
.public ov39_0222A2C0
.public ov39_0222A2CC
.public ov39_0222A2EC
.public ov39_0222A33C
.public ov39_0222A394
.public ov39_0222A3DC
.public ov39_0222A434
.public ov39_0222A48C
.public ov39_0222A4C0
.public ov40_02244B3C
.public ov40_02244B70