.class public Landroid/view/HwApsImpl;
.super Ljava/lang/Object;
.source "HwApsImpl.java"

# interfaces
.implements Landroid/view/IHwApsImpl;


# static fields
.field private static final APS_DEBUG_PU_ON_STRING:Ljava/lang/String; = "debug.aps.pu.on"

.field private static final APS_DEBUG_PU_STRING:Ljava/lang/String; = "debug.aps.pu"

.field private static final APS_PARTIALUPDATE_POWER_POWERTEST:Ljava/lang/String; = "debug.aps.powertest"

.field private static final APS_PARTIAL_UPDATE_BIT:I = 0x2000000

.field private static final APS_SUPPORT_PROPERTY_STRING:Ljava/lang/String; = "sys.aps.support"

.field private static final COMPAT_MODE_ENABLE_BIT:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "HwApsImpl"

.field private static volatile sInstance:Landroid/view/HwApsImpl;


# instance fields
.field private mApsDebugPartialUpdate:Z

.field private mApsInitialized:Z

.field private mApsSupportValue:I

.field private mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    sput-object v0, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HwApsImpl;->mApsInitialized:Z

    .line 58
    iput v0, p0, Landroid/view/HwApsImpl;->mApsSupportValue:I

    .line 66
    iput-boolean v0, p0, Landroid/view/HwApsImpl;->mApsDebugPartialUpdate:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    return-void
.end method

.method private HwApsImpl()V
    .locals 0

    .line 75
    return-void
.end method

.method public static getDefault()Landroid/view/HwApsImpl;
    .locals 4

    .line 79
    sget-object v0, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    if-nez v0, :cond_2

    .line 80
    const-class v0, Landroid/view/HwApsImpl;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    if-nez v1, :cond_1

    .line 82
    new-instance v1, Landroid/view/HwApsImpl;

    invoke-direct {v1}, Landroid/view/HwApsImpl;-><init>()V

    sput-object v1, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    .line 83
    const-string v1, "HwApsImpl"

    const-string v2, "APS: new HwApsImpl created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v1, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    const-string v2, "sys.aps.support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/HwApsImpl;->mApsSupportValue:I

    .line 85
    sget-object v1, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    invoke-virtual {v1}, Landroid/view/HwApsImpl;->isSupportAps()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    invoke-static {}, Lcom/huawei/android/hwaps/HwapsWrapper;->getEventAnalyzed()Lcom/huawei/android/hwaps/IEventAnalyzed;

    move-result-object v2

    iput-object v2, v1, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    .line 88
    sget-object v1, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    const-string v2, "debug.aps.pu"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    iput-boolean v3, v1, Landroid/view/HwApsImpl;->mApsDebugPartialUpdate:Z

    .line 92
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_2
    :goto_0
    sget-object v0, Landroid/view/HwApsImpl;->sInstance:Landroid/view/HwApsImpl;

    return-object v0
.end method


# virtual methods
.method public StopSdrForSpecial(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "strinfo"    # Ljava/lang/String;
    .param p2, "keycode"    # I

    .line 154
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    if-nez v0, :cond_0

    .line 155
    const-string v0, "HwApsImpl"

    const-string v1, "APS: SDR: mEventAnalyzed is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    invoke-interface {v0, p1, p2}, Lcom/huawei/android/hwaps/IEventAnalyzed;->StopSdrForSpecial(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public adaptPowerSave(Landroid/content/Context;Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 99
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/HwApsImpl;->isSupportAps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v6, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v7, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    .line 100
    move-object v2, p1

    invoke-interface/range {v1 .. v10}, Lcom/huawei/android/hwaps/IEventAnalyzed;->processAnalyze(Landroid/content/Context;IJIIIJ)V

    .line 103
    :cond_0
    return-void
.end method

.method public getCustScreenDimDurationLocked(I)I
    .locals 2
    .param p1, "screenOffTimeout"    # I

    .line 164
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "HwApsImpl"

    const-string v1, "APS: Screen Dim: getCustScreenDimDuration eventAnalyzed null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, -0x1

    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    invoke-interface {v0, p1}, Lcom/huawei/android/hwaps/IEventAnalyzed;->getCustScreenDimDurationLocked(I)I

    move-result v0

    return v0
.end method

.method public initAPS(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenWidth"    # I
    .param p3, "myPid"    # I

    .line 107
    iget-boolean v0, p0, Landroid/view/HwApsImpl;->mApsInitialized:Z

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/android/hwaps/IEventAnalyzed;->initAPS(Landroid/content/Context;II)V

    .line 112
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HwApsImpl;->mApsInitialized:Z

    .line 114
    :cond_1
    return-void
.end method

.method public isAPSReady()Z
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    invoke-interface {v0}, Lcom/huawei/android/hwaps/IEventAnalyzed;->isAPSReady()Z

    move-result v0

    return v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDebugPartialUpdateOn()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Landroid/view/HwApsImpl;->mApsDebugPartialUpdate:Z

    return v0
.end method

.method public isGameProcess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    invoke-interface {v0, p1}, Lcom/huawei/android/hwaps/IEventAnalyzed;->isGameProcess(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIn1kResolutionof2kScreen()Z
    .locals 4

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "in1kresolutionof2kscreen":Z
    const-string v1, "sys.rog.width"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 241
    .local v1, "width":I
    const-string v3, "persist.sys.rog.width"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 242
    .local v2, "realWidth":I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 246
    :cond_0
    return v0
.end method

.method public isInPowerTest()Z
    .locals 2

    .line 232
    const-string v0, "debug.aps.powertest"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLowResolutionSupported()Z
    .locals 2

    .line 195
    iget v0, p0, Landroid/view/HwApsImpl;->mApsSupportValue:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportAps()Z
    .locals 1

    .line 127
    iget v0, p0, Landroid/view/HwApsImpl;->mApsSupportValue:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportApsPartialUpdate()Z
    .locals 3

    .line 214
    invoke-virtual {p0}, Landroid/view/HwApsImpl;->isDebugPartialUpdateOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "debug.aps.pu.on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 218
    :cond_0
    iget v0, p0, Landroid/view/HwApsImpl;->mApsSupportValue:I

    const/high16 v2, 0x2000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public powerCtroll()V
    .locals 1

    .line 140
    invoke-static {}, Lcom/huawei/android/hwaps/HwapsWrapper;->getFpsController()Lcom/huawei/android/hwaps/IFpsController;

    move-result-object v0

    .line 141
    .local v0, "fpsController":Lcom/huawei/android/hwaps/IFpsController;
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/huawei/android/hwaps/IFpsController;->powerCtroll()V

    .line 144
    :cond_0
    return-void
.end method

.method public setAPSOnPause()V
    .locals 2

    .line 147
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/huawei/android/hwaps/IEventAnalyzed;->setHasOnPaused(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public setGameProcessName(Ljava/lang/String;II)I
    .locals 2
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "gameType"    # I

    .line 200
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "HwApsImpl"

    const-string v1, "APS: setGameProcessName eventAnalyzed is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Landroid/view/HwApsImpl;->mEventAnalyzed:Lcom/huawei/android/hwaps/IEventAnalyzed;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/android/hwaps/IEventAnalyzed;->setGameProcessName(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public setLowResolutionMode(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enableLowResolutionMode"    # Z

    .line 178
    const-string v0, "sdr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APS: SDR: HwApsImpl.setLowResolutionMod, enableLowResolutionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getApsManager()Landroid/aps/IApsManager;

    move-result-object v0

    .line 182
    .local v0, "apsManager":Landroid/aps/IApsManager;
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p2}, Landroid/aps/IApsManager;->setLowResolutionMode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "apsManager":Landroid/aps/IApsManager;
    :cond_0
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "sdr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APS: SDR: HwApsImpl.setLowResolutionMode, exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
