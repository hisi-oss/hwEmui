.class public Landroid/rms/iaware/AwareAppLiteSysLoadManager;
.super Ljava/lang/Object;
.source "AwareAppLiteSysLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;,
        Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;,
        Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0xea60

.field private static final MSG_REINT:I = 0x1

.field private static final REINIT_TIME:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "AwareAppLiteSysLoadManager"

.field private static sInstance:Landroid/rms/iaware/AwareAppLiteSysLoadManager;


# instance fields
.field private mAppType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContext:Landroid/content/Context;

.field private volatile mHandler:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIAwareLiteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsGameScene:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPackageName:Ljava/lang/String;

.field private mSDKCallback:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;

.field private mSceneCallback:Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandler:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIAwareLiteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mAppType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIsGameScene:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 53
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIAwareLiteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 53
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mAppType:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 53
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->registerIAwareSceneCallback()V

    return-void
.end method

.method static synthetic access$300(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 53
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->finishInit()V

    return-void
.end method

.method static synthetic access$400(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 53
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIsGameScene:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 53
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;
    .locals 1
    .param p0, "x0"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 53
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mSDKCallback:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;

    return-object v0
.end method

.method private finishInit()V
    .locals 3

    .line 227
    const-string v0, "AwareAppLiteSysLoadManager"

    const-string v1, "finishInit"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandler:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandler:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;->removeMessages(I)V

    .line 230
    iput-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandler:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 234
    iput-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 236
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/iaware/AwareAppLiteSysLoadManager;
    .locals 2

    const-class v0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->sInstance:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-direct {v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;-><init>()V

    sput-object v1, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->sInstance:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    .line 78
    :cond_0
    sget-object v1, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->sInstance:Landroid/rms/iaware/AwareAppLiteSysLoadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getScenes()I
    .locals 2

    .line 184
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mAppType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 185
    .local v0, "type":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x131

    if-eq v0, v1, :cond_0

    .line 190
    const/4 v1, -0x1

    return v1

    .line 188
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method private reInit()V
    .locals 5

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LiteSysLoadStart"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 219
    :cond_1
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 220
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandler:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

    if-nez v0, :cond_2

    .line 221
    new-instance v0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;-><init>(Landroid/rms/iaware/AwareAppLiteSysLoadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandler:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

    .line 223
    :cond_2
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mHandler:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 224
    return-void
.end method

.method private registerIAwareSceneCallback()V
    .locals 6

    .line 174
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIAwareLiteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mSceneCallback:Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->getScenes()I

    move-result v0

    .line 176
    .local v0, "scenes":I
    if-lez v0, :cond_0

    .line 177
    new-instance v1, Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;-><init>(Landroid/rms/iaware/AwareAppLiteSysLoadManager;Landroid/rms/iaware/AwareAppLiteSysLoadManager$1;)V

    iput-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mSceneCallback:Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;

    .line 178
    const/16 v1, 0xbd8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mSceneCallback:Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Landroid/rms/iaware/IAwareSdk;->asyncReportDataWithCallback(ILjava/lang/String;Landroid/os/IBinder;J)V

    .line 181
    .end local v0    # "scenes":I
    :cond_0
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Landroid/app/Application;)V
    .locals 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "app"    # Landroid/app/Application;

    .line 98
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "AwareAppLiteSysLoadManager"

    const-string v1, "has init"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIsInited:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 111
    return-void

    .line 114
    :cond_2
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mPackageName:Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;

    invoke-direct {v0, p0}, Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;-><init>(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)V

    iput-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mSDKCallback:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;

    .line 117
    invoke-direct {p0}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->reInit()V

    .line 118
    const/16 v0, 0xbd7

    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mSDKCallback:Landroid/rms/iaware/AwareAppLiteSysLoadManager$SysLoadSDKCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/rms/iaware/IAwareSdk;->asyncReportDataWithCallback(ILjava/lang/String;Landroid/os/IBinder;J)V

    .line 119
    return-void

    .line 106
    :cond_3
    :goto_0
    return-void
.end method

.method public isInSysLoadScene(I)Z
    .locals 1
    .param p1, "scene"    # I

    .line 89
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIsGameScene:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isLiteSysLoadEnable()Z
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->mIAwareLiteEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
