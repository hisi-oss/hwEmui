.class public interface abstract Lcom/huawei/displayengine/IDisplayEngineServiceEx;
.super Ljava/lang/Object;
.source "IDisplayEngineServiceEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;
    }
.end annotation


# static fields
.field public static final DE_ACTION_AR_UNKNOWN:I = 0x12

.field public static final DE_ACTION_AR_VEHICLE:I = 0x13

.field public static final DE_ACTION_AR_WALK:I = 0x14

.field public static final DE_ACTION_DALTONIAN_DEU:I = 0x19

.field public static final DE_ACTION_DALTONIAN_PRO:I = 0x1a

.field public static final DE_ACTION_DALTONIAN_TRI:I = 0x1b

.field public static final DE_ACTION_ENTER:I = 0xe

.field public static final DE_ACTION_EXIT:I = 0xf

.field public static final DE_ACTION_FULLSCREEN_EXIT:I = 0x8

.field public static final DE_ACTION_FULLSCREEN_PAUSE:I = 0x6

.field public static final DE_ACTION_FULLSCREEN_RESUME:I = 0x7

.field public static final DE_ACTION_FULLSCREEN_START:I = 0x4

.field public static final DE_ACTION_FULLSCREEN_STOP:I = 0x5

.field public static final DE_ACTION_FULLSCREEN_VIEW:I = 0xa

.field public static final DE_ACTION_IMAGE_EXIT:I = 0xd

.field public static final DE_ACTION_LIVE_IMAGE:I = 0xb

.field public static final DE_ACTION_MAX:I = 0x1f

.field public static final DE_ACTION_MODE_OFF:I = 0x11

.field public static final DE_ACTION_MODE_ON:I = 0x10

.field public static final DE_ACTION_MOTION_APP:I = 0x16

.field public static final DE_ACTION_MOTION_HOME:I = 0x15

.field public static final DE_ACTION_MOTION_RECENT:I = 0x17

.field public static final DE_ACTION_MOTION_START:I = 0x18

.field public static final DE_ACTION_ONLINE_FULLSCREEN_VIEW:I = 0xc

.field public static final DE_ACTION_PAUSE:I = 0x2

.field public static final DE_ACTION_PG_2DGAME_FRONT:I = 0x271b

.field public static final DE_ACTION_PG_3DGAME_FRONT:I = 0x2712

.field public static final DE_ACTION_PG_BROWSER_FRONT:I = 0x2711

.field public static final DE_ACTION_PG_CAMERA_END:I = 0x2721

.field public static final DE_ACTION_PG_CAMERA_FRONT:I = 0x2717

.field public static final DE_ACTION_PG_DEFAULT_FRONT:I = 0x2710

.field public static final DE_ACTION_PG_EBOOK_FRONT:I = 0x2713

.field public static final DE_ACTION_PG_GALLERY_FRONT:I = 0x2714

.field public static final DE_ACTION_PG_INPUT_END:I = 0x2716

.field public static final DE_ACTION_PG_INPUT_START:I = 0x2715

.field public static final DE_ACTION_PG_LAUNCHER_FRONT:I = 0x271a

.field public static final DE_ACTION_PG_MAX:I = 0x2722

.field public static final DE_ACTION_PG_MMS_FRONT:I = 0x271d

.field public static final DE_ACTION_PG_OFFICE_FRONT:I = 0x2718

.field public static final DE_ACTION_PG_VIDEO_END:I = 0x2720

.field public static final DE_ACTION_PG_VIDEO_FRONT:I = 0x2719

.field public static final DE_ACTION_PG_VIDEO_START:I = 0x271f

.field public static final DE_ACTION_RESUME:I = 0x3

.field public static final DE_ACTION_START:I = 0x0

.field public static final DE_ACTION_STOP:I = 0x1

.field public static final DE_ACTION_THUMBNAIL:I = 0x9

.field public static final DE_ACTION_TOP1_GAME_ON:I = 0x1d

.field public static final DE_ACTION_TOP2_GAME_ON:I = 0x1e

.field public static final DE_ACTION_TOP_GAME_OFF:I = 0x1c

.field public static final DE_DATA_MAX:I = 0xc

.field public static final DE_DATA_TYPE_3D_COLORTEMP:I = 0x7

.field public static final DE_DATA_TYPE_AMBIENTPARAM:I = 0x9

.field public static final DE_DATA_TYPE_CAMERA:I = 0x3

.field public static final DE_DATA_TYPE_IAWARE:I = 0xa

.field public static final DE_DATA_TYPE_IMAGE:I = 0x0

.field public static final DE_DATA_TYPE_IMAGE_INFO:I = 0x4

.field public static final DE_DATA_TYPE_MANUFACTURE_BRIGHTNESS:I = 0xb

.field public static final DE_DATA_TYPE_VIDEO:I = 0x1

.field public static final DE_DATA_TYPE_VIDEO_HDR10:I = 0x2

.field public static final DE_DATA_TYPE_XNIT:I = 0x5

.field public static final DE_DATA_TYPE_XNIT_BRIGHTLEVEL:I = 0x6

.field public static final DE_EFFECT_MAX:I = 0x5

.field public static final DE_EFFECT_TYPE_HBM_INFO:I = 0x1

.field public static final DE_EFFECT_TYPE_IS_IMAGE:I = 0x4

.field public static final DE_EFFECT_TYPE_PANEL_INFO:I = 0x2

.field public static final DE_EFFECT_TYPE_PANEL_NAME:I = 0x0

.field public static final DE_EFFECT_TYPE_PANEL_VERSION:I = 0x3

.field public static final DE_FEATURE_3D_COLOR_TEMPERATURE:I = 0x12

.field public static final DE_FEATURE_ACL:I = 0x18

.field public static final DE_FEATURE_AMOLED:I = 0x19

.field public static final DE_FEATURE_BLC:I = 0x2

.field public static final DE_FEATURE_CABC:I = 0xc

.field public static final DE_FEATURE_COLORMODE:I = 0xb

.field public static final DE_FEATURE_COLOR_INVERSE:I = 0x1c

.field public static final DE_FEATURE_CONTRAST:I = 0x1

.field public static final DE_FEATURE_DALTONIAN:I = 0x1b

.field public static final DE_FEATURE_DC_BRIGHTNESS_DIMMING:I = 0x1e

.field public static final DE_FEATURE_EYE_PROTECT:I = 0x11

.field public static final DE_FEATURE_EYE_PROTECT_WITHCT:I = 0x15

.field public static final DE_FEATURE_EYE_PROTECT_WITHGMP:I = 0x1d

.field public static final DE_FEATURE_GAMMA:I = 0x7

.field public static final DE_FEATURE_GMP:I = 0x3

.field public static final DE_FEATURE_HBM:I = 0x14

.field public static final DE_FEATURE_HDR10:I = 0xf

.field public static final DE_FEATURE_HUE:I = 0x5

.field public static final DE_FEATURE_IGAMMA:I = 0x8

.field public static final DE_FEATURE_LRE:I = 0x9

.field public static final DE_FEATURE_MAX:I = 0x20

.field public static final DE_FEATURE_NATURAL_TONE:I = 0x17

.field public static final DE_FEATURE_PANELINFO:I = 0xe

.field public static final DE_FEATURE_READING:I = 0x1a

.field public static final DE_FEATURE_RGBW:I = 0xd

.field public static final DE_FEATURE_RGLED:I = 0x13

.field public static final DE_FEATURE_SAT:I = 0x6

.field public static final DE_FEATURE_SCREEN_TIME_CONTROL:I = 0x1f

.field public static final DE_FEATURE_SHARP:I = 0x0

.field public static final DE_FEATURE_SHARP2P:I = 0x16

.field public static final DE_FEATURE_SRE:I = 0xa

.field public static final DE_FEATURE_XCC:I = 0x4

.field public static final DE_FEATURE_XNIT:I = 0x10

.field public static final DE_MESSAGE_ID_CUSTOM:I = 0x2

.field public static final DE_MESSAGE_ID_MAX:I = 0x3

.field public static final DE_SCENE_AOD:I = 0x21

.field public static final DE_SCENE_BACKLIGHT:I = 0x1a

.field public static final DE_SCENE_BACKLIGHT_CHANGE:I = 0x15

.field public static final DE_SCENE_BOOT_CMPL:I = 0x12

.field public static final DE_SCENE_CAMERA:I = 0x4

.field public static final DE_SCENE_COLORMODE:I = 0xd

.field public static final DE_SCENE_COLORTEMP:I = 0xb

.field public static final DE_SCENE_COLOR_INVERSE:I = 0x28

.field public static final DE_SCENE_DALTONIAN:I = 0x27

.field public static final DE_SCENE_DC_BRIGHTNESS_DIMMING:I = 0x29

.field public static final DE_SCENE_EYEPROTECTION:I = 0xf

.field public static final DE_SCENE_FINGERPRINT_HBM:I = 0x22

.field public static final DE_SCENE_FINGER_PRINT:I = 0x1d

.field public static final DE_SCENE_GAME:I = 0x24

.field public static final DE_SCENE_HBM_DIMMING:I = 0x1c

.field public static final DE_SCENE_IMAGE:I = 0x3

.field public static final DE_SCENE_MAX:I = 0x2b

.field public static final DE_SCENE_MMITEST:I = 0x23

.field public static final DE_SCENE_MOTION:I = 0x26

.field public static final DE_SCENE_NATURAL_TONE:I = 0x19

.field public static final DE_SCENE_PG:I = 0x0

.field public static final DE_SCENE_PG_EX:I = 0x11

.field public static final DE_SCENE_POWERMODE:I = 0xa

.field public static final DE_SCENE_PROCAMERA:I = 0xe

.field public static final DE_SCENE_QQ:I = 0x8

.field public static final DE_SCENE_READMODE:I = 0x25

.field public static final DE_SCENE_REAL_POWERMODE:I = 0x18

.field public static final DE_SCENE_RGLED:I = 0x14

.field public static final DE_SCENE_SCREEN_TIME_CONTROL:I = 0x2a

.field public static final DE_SCENE_SRE:I = 0xc

.field public static final DE_SCENE_TAOBAO:I = 0x9

.field public static final DE_SCENE_UD_ENROLL_FINGER_PRINT:I = 0x1f

.field public static final DE_SCENE_UD_FINGER_PRINT_LOCK:I = 0x1e

.field public static final DE_SCENE_UD_USER_PRESENT:I = 0x20

.field public static final DE_SCENE_UI:I = 0x5

.field public static final DE_SCENE_VIDEO:I = 0x1

.field public static final DE_SCENE_VIDEO_APP:I = 0x17

.field public static final DE_SCENE_VIDEO_HDR10:I = 0x2

.field public static final DE_SCENE_WEB:I = 0x6

.field public static final DE_SCENE_WECHAT:I = 0x7


# virtual methods
.method public abstract getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEffect(II[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupported(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMessage(ILandroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setData(ILandroid/os/PersistableBundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEffect(IILandroid/os/PersistableBundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setScene(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateLightSensorState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
