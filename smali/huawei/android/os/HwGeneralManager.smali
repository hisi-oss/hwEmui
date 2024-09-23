.class public Lhuawei/android/os/HwGeneralManager;
.super Ljava/lang/Object;
.source "HwGeneralManager.java"


# static fields
.field public static final STATE_FALSE:I = 0x0

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HwGeneralManager"

.field private static TRIKEY_PATH:Ljava/lang/String;

.field private static effectNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mInstance:Lhuawei/android/os/HwGeneralManager;


# instance fields
.field private mInit:Z

.field private mInitTrikey:Z

.field private mIsCurveScreen:I

.field private mIsSupportPressure:Z

.field private mIsSupportTrikey:Z

.field mService:Lhuawei/android/os/IHwGeneralManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/os/HwGeneralManager;->mInstance:Lhuawei/android/os/HwGeneralManager;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    .line 41
    const-string v0, "/proc/device-tree/huawei_touch_key"

    sput-object v0, Lhuawei/android/os/HwGeneralManager;->TRIKEY_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mIsSupportPressure:Z

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/android/os/HwGeneralManager;->mIsCurveScreen:I

    .line 34
    iput-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mInit:Z

    .line 42
    iput-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mInitTrikey:Z

    .line 43
    iput-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mIsSupportTrikey:Z

    .line 53
    const-string v0, "hwGeneralService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lhuawei/android/os/IHwGeneralManager$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/os/IHwGeneralManager;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    .line 56
    invoke-direct {p0}, Lhuawei/android/os/HwGeneralManager;->initEffectNames()V

    .line 58
    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/os/HwGeneralManager;
    .locals 2

    const-class v0, Lhuawei/android/os/HwGeneralManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lhuawei/android/os/HwGeneralManager;->mInstance:Lhuawei/android/os/HwGeneralManager;

    if-eqz v1, :cond_0

    sget-object v1, Lhuawei/android/os/HwGeneralManager;->mInstance:Lhuawei/android/os/HwGeneralManager;

    invoke-virtual {v1}, Lhuawei/android/os/HwGeneralManager;->getService()Lhuawei/android/os/IHwGeneralManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    new-instance v1, Lhuawei/android/os/HwGeneralManager;

    invoke-direct {v1}, Lhuawei/android/os/HwGeneralManager;-><init>()V

    sput-object v1, Lhuawei/android/os/HwGeneralManager;->mInstance:Lhuawei/android/os/HwGeneralManager;

    .line 49
    :cond_1
    sget-object v1, Lhuawei/android/os/HwGeneralManager;->mInstance:Lhuawei/android/os/HwGeneralManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initEffectNames()V
    .locals 3

    .line 230
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COUNTDOWN_SWING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TIMING_ROTATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NUMBERPICKER_ITEMSCROLL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NUMBERPICKER_TUNER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FM_ADJUST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FM_SPIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FM_ADJUST_DONE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOMESCREEN_ICON_FLY_WORKSPACE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BULK_MOVE_ICONDROP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BULK_MOVE_ICON_GATHER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BULK_MOVE_ICONPICKUP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x4b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HOMESCREEN_SHAKE_ALIGN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x514

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LONG_PRESS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LONG_PRESS_WORKSPACE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SCROLL_INDICATOR_POP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x640

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONTACT_ALPHA_SWITCH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x6a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TEXTVIEW_SELECTCHAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x708

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TEXTVIEW_DOUBLE_TAP_SELECTWORD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x76c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TEXTVIEW_TAPWORD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TEXTVIEW_SETCURSOR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x834

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WEATHER_RAIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x898

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WEATHER_SAND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x8fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WEATHER_THUNDERSTORM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x960

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WEATHER_WINDY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0x9c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOCKSCREEN_UNLOCK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    const/16 v1, 0xa28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIRTUAL_KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method


# virtual methods
.method public addSdCardUserKeyAuth(II[B[B)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 421
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lhuawei/android/os/IHwGeneralManager;->addSdCardUserKeyAuth(II[B[B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 426
    :cond_0
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public backupSecretkey()I
    .locals 3

    .line 431
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->backupSecretkey()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 436
    :cond_0
    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public clearSDLockPassword()I
    .locals 3

    .line 89
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->clearSDLockPassword()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 94
    :cond_0
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public doSdcardCheckRW()I
    .locals 3

    .line 517
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->doSdcardCheckRW()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 522
    :cond_0
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public eraseSDLock()V
    .locals 3

    .line 124
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->eraseSDLock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public forceIdle()I
    .locals 3

    .line 180
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->forceIdle()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 185
    :cond_0
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .param p1, "dev"    # I

    .line 507
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 512
    :cond_0
    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalDevStat(I)I
    .locals 3
    .param p1, "dev"    # I

    .line 497
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->getLocalDevStat(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 502
    :cond_0
    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPartitionInfo(Ljava/lang/String;I)J
    .locals 3
    .param p1, "partitionName"    # Ljava/lang/String;
    .param p2, "infoType"    # I

    .line 454
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1, p2}, Lhuawei/android/os/IHwGeneralManager;->getPartitionInfo(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 459
    :cond_0
    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager getPartitionInfo binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPressureLimit()F
    .locals 4

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "val":F
    :try_start_0
    iget-object v1, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v1}, Lhuawei/android/os/IHwGeneralManager;->getPressureLimit()F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 220
    return v0

    .line 224
    :cond_0
    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "ex":Landroid/os/RemoteException;
    const/16 v2, 0x5e0

    const-string v3, "HwGeneralManager RemoteException error!"

    invoke-static {v2, v3}, Landroid/util/Flog;->e(ILjava/lang/String;)I

    .line 225
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getSDCardId()Ljava/lang/String;
    .locals 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->getSDCardId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 150
    :cond_0
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDLockState()I
    .locals 3

    .line 134
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->getSDLockState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 139
    :cond_0
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getService()Lhuawei/android/os/IHwGeneralManager;
    .locals 1

    .line 360
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    return-object v0
.end method

.method public getTouchWeightValue()Ljava/lang/String;
    .locals 4

    .line 157
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->getTouchWeightValue()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "val":Ljava/lang/String;
    const-string v1, "touch weight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwGeneralManager getTouchWeightValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-object v0

    .line 164
    .end local v0    # "val":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasHaptic(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 340
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p2}, Lhuawei/android/os/IHwGeneralManager;->hasHaptic(Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 345
    :cond_0
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager hasHaptic binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCurveScreen()Z
    .locals 3

    .line 204
    iget v0, p0, Lhuawei/android/os/HwGeneralManager;->mIsCurveScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 206
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->isCurveScreen()Z

    move-result v0

    iput v0, p0, Lhuawei/android/os/HwGeneralManager;->mIsCurveScreen:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "ex":Landroid/os/RemoteException;
    const/16 v1, 0x5e0

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Flog;->e(ILjava/lang/String;)I

    .line 212
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget v0, p0, Lhuawei/android/os/HwGeneralManager;->mIsCurveScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isPlaying(I)Z
    .locals 2
    .param p1, "effectNo"    # I

    .line 313
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhuawei/android/os/HwGeneralManager;->isPlaying(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .line 318
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->isPlaying(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 323
    :cond_0
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager isPlaying binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportForce()Z
    .locals 3

    .line 189
    iget-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mInit:Z

    if-nez v0, :cond_1

    .line 191
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->isSupportForce()Z

    move-result v0

    iput-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mIsSupportPressure:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mInit:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ex":Landroid/os/RemoteException;
    const/16 v1, 0x5e0

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Flog;->e(ILjava/lang/String;)I

    .line 199
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mIsSupportPressure:Z

    return v0
.end method

.method public isSupportTrikey()Z
    .locals 4

    .line 66
    iget-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mInitTrikey:Z

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/io/File;

    sget-object v1, Lhuawei/android/os/HwGeneralManager;->TRIKEY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lhuawei/android/os/HwGeneralManager;->mIsSupportTrikey:Z

    .line 69
    iput-boolean v2, p0, Lhuawei/android/os/HwGeneralManager;->mInitTrikey:Z

    .line 70
    const-string v1, "HwGeneralManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportTrikey is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lhuawei/android/os/HwGeneralManager;->mIsSupportTrikey:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    iget-boolean v0, p0, Lhuawei/android/os/HwGeneralManager;->mIsSupportTrikey:Z

    return v0
.end method

.method public isSupportedCifs()I
    .locals 3

    .line 486
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->isSupportedCifs()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 492
    :cond_0
    nop

    .line 493
    const/4 v0, -0x1

    return v0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public mkDataDir(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 365
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->mkDataDir(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    const/4 v0, 0x1

    return v0

    .line 371
    :cond_0
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager mkDataDir binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public mountCifs(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 465
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1, p2, p3}, Lhuawei/android/os/IHwGeneralManager;->mountCifs(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 471
    :cond_0
    nop

    .line 472
    const/4 v0, 0x0

    return-object v0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public pausePlayEffect(I)V
    .locals 2
    .param p1, "effectNo"    # I

    .line 285
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhuawei/android/os/HwGeneralManager;->pausePlayEffect(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public pausePlayEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .line 290
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->pausePlayEffect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager pausePlayEffect binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public playIvtEffect(I)V
    .locals 2
    .param p1, "effectNo"    # I

    .line 259
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhuawei/android/os/HwGeneralManager;->playIvtEffect(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public playIvtEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .line 265
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->playIvtEffect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager playIvtEffect binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public readProtectArea(Ljava/lang/String;I[Ljava/lang/String;[I)I
    .locals 3
    .param p1, "optItem"    # Ljava/lang/String;
    .param p2, "readBufLen"    # I
    .param p3, "readBuf"    # [Ljava/lang/String;
    .param p4, "errorNum"    # [I

    .line 379
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lhuawei/android/os/IHwGeneralManager;->readProtectArea(Ljava/lang/String;I[Ljava/lang/String;[I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 384
    :cond_0
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public resetTouchWeight()V
    .locals 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "touch weight"

    const-string v1, "HwGeneralManager resetTouchWeight"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->resetTouchWeight()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public resumePausedEffect(I)V
    .locals 2
    .param p1, "effectNo"    # I

    .line 299
    sget-object v0, Lhuawei/android/os/HwGeneralManager;->effectNames:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhuawei/android/os/HwGeneralManager;->resumePausedEffect(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public resumePausedEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .line 304
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->resumePausedEffect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager resumePausedEffect binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setSDLockPassword(Ljava/lang/String;)I
    .locals 3
    .param p1, "pw"    # Ljava/lang/String;

    .line 78
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->setSDLockPassword(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 83
    :cond_0
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public setSdCardCryptdEnable(ZLjava/lang/String;)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "volId"    # Ljava/lang/String;

    .line 401
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1, p2}, Lhuawei/android/os/IHwGeneralManager;->setSdCardCryptdEnable(ZLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 406
    :cond_0
    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public startFileBackup()V
    .locals 3

    .line 171
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->startFileBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public startHaptic(Landroid/content/Context;IILandroid/net/Uri;)Z
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "callerID"    # I
    .param p3, "ringtoneType"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .line 329
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p2, p3, p4}, Lhuawei/android/os/IHwGeneralManager;->startHaptic(IILandroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 334
    :cond_0
    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager startHaptic binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopHaptic()V
    .locals 3

    .line 351
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->stopHaptic()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_0
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager stopHaptic binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public stopPlayEffect()V
    .locals 3

    .line 276
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->stopPlayEffect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager stopPlayEffect binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public supportHwPush()Z
    .locals 3

    .line 442
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0}, Lhuawei/android/os/IHwGeneralManager;->supportHwPush()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 447
    :cond_0
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager supportHwPush binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public unlockSDCard(Ljava/lang/String;)I
    .locals 3
    .param p1, "pw"    # Ljava/lang/String;

    .line 113
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->unlockSDCard(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 118
    :cond_0
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public unlockSdCardKey(II[B[B)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 411
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lhuawei/android/os/IHwGeneralManager;->unlockSdCardKey(II[B[B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 416
    :cond_0
    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public unmountCifs(Ljava/lang/String;)V
    .locals 3
    .param p1, "mountPoint"    # Ljava/lang/String;

    .line 476
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1}, Lhuawei/android/os/IHwGeneralManager;->unmountCifs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    nop

    .line 483
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public writeProtectArea(Ljava/lang/String;ILjava/lang/String;[I)I
    .locals 3
    .param p1, "optItem"    # Ljava/lang/String;
    .param p2, "writeLen"    # I
    .param p3, "writeBuf"    # Ljava/lang/String;
    .param p4, "errorNum"    # [I

    .line 390
    :try_start_0
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lhuawei/android/os/HwGeneralManager;->mService:Lhuawei/android/os/IHwGeneralManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lhuawei/android/os/IHwGeneralManager;->writeProtectArea(Ljava/lang/String;ILjava/lang/String;[I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 395
    :cond_0
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwGeneralManager"

    const-string v2, "HwGeneralManager binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
