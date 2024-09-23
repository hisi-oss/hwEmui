.class public Lhuawei/android/hardware/tp/HwTpManager;
.super Ljava/lang/Object;
.source "HwTpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;,
        Lhuawei/android/hardware/tp/HwTpManager$HidlDeathRecipient;,
        Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;,
        Lhuawei/android/hardware/tp/HwTpManager$TpCallback;,
        Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_HANDLE_TP_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HwTpManager"

.field private static volatile mInstance:Lhuawei/android/hardware/tp/HwTpManager;


# instance fields
.field private mHandler:Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasSet:Z

.field private final mLock:Ljava/lang/Object;

.field private final mServiceNotification:Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;

.field private mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

.field private mTpCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhuawei/android/hardware/tp/HwTpManager$TpCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTpCmdStatus:Ljava/lang/String;

.field private mTpHalCallback:Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-string v0, "HwTpManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/hardware/tp/HwTpManager;->DEBUG:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/hardware/tp/HwTpManager;->mInstance:Lhuawei/android/hardware/tp/HwTpManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCmdStatus:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHasSet:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;

    invoke-direct {v0, p0}, Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;-><init>(Lhuawei/android/hardware/tp/HwTpManager;)V

    iput-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mServiceNotification:Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HwTpManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;

    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;-><init>(Lhuawei/android/hardware/tp/HwTpManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHandler:Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;

    .line 60
    invoke-direct {p0}, Lhuawei/android/hardware/tp/HwTpManager;->registerNotifyForService()V

    .line 61
    invoke-direct {p0}, Lhuawei/android/hardware/tp/HwTpManager;->connectToHidlService()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/hardware/tp/HwTpManager;II)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/hardware/tp/HwTpManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 28
    invoke-direct {p0, p1, p2}, Lhuawei/android/hardware/tp/HwTpManager;->handleTpEvent(II)V

    return-void
.end method

.method static synthetic access$100(Lhuawei/android/hardware/tp/HwTpManager;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/hardware/tp/HwTpManager;

    .line 28
    invoke-direct {p0}, Lhuawei/android/hardware/tp/HwTpManager;->connectToHidlService()V

    return-void
.end method

.method static synthetic access$200(Lhuawei/android/hardware/tp/HwTpManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hardware/tp/HwTpManager;

    .line 28
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lhuawei/android/hardware/tp/HwTpManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lhuawei/android/hardware/tp/HwTpManager;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHasSet:Z

    return p1
.end method

.method static synthetic access$402(Lhuawei/android/hardware/tp/HwTpManager;Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;)Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;
    .locals 0
    .param p0, "x0"    # Lhuawei/android/hardware/tp/HwTpManager;
    .param p1, "x1"    # Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    .line 28
    iput-object p1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    return-object p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 28
    sget-boolean v0, Lhuawei/android/hardware/tp/HwTpManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lhuawei/android/hardware/tp/HwTpManager;)Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hardware/tp/HwTpManager;

    .line 28
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHandler:Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;

    return-object v0
.end method

.method private connectToHidlService()V
    .locals 5

    .line 160
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    if-eqz v1, :cond_0

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 166
    :cond_0
    :try_start_1
    invoke-static {}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->getService()Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    .line 167
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    if-nez v1, :cond_1

    .line 168
    const-string v1, "HwTpManager"

    const-string v2, "Failed to get ITouchscreen service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 172
    :cond_1
    :try_start_3
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    new-instance v2, Lhuawei/android/hardware/tp/HwTpManager$HidlDeathRecipient;

    invoke-direct {v2, p0}, Lhuawei/android/hardware/tp/HwTpManager$HidlDeathRecipient;-><init>(Lhuawei/android/hardware/tp/HwTpManager;)V

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    nop

    .line 177
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    const-string v0, "HwTpManager"

    const-string v1, "Successfully connect to TP service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 182
    :try_start_5
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lhuawei/android/hardware/tp/HwTpManager;->setTHPCallback(Z)Z

    .line 185
    :cond_2
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v2, "HwTpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get service or start linkToDeath Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    monitor-exit v0

    return-void

    .line 177
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public static getInstance()Lhuawei/android/hardware/tp/HwTpManager;
    .locals 1

    .line 70
    sget-object v0, Lhuawei/android/hardware/tp/HwTpManager;->mInstance:Lhuawei/android/hardware/tp/HwTpManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lhuawei/android/hardware/tp/HwTpManager;

    invoke-direct {v0}, Lhuawei/android/hardware/tp/HwTpManager;-><init>()V

    sput-object v0, Lhuawei/android/hardware/tp/HwTpManager;->mInstance:Lhuawei/android/hardware/tp/HwTpManager;

    .line 73
    :cond_0
    sget-object v0, Lhuawei/android/hardware/tp/HwTpManager;->mInstance:Lhuawei/android/hardware/tp/HwTpManager;

    return-object v0
.end method

.method private handleTpEvent(II)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "value"    # I

    .line 112
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhuawei/android/hardware/tp/HwTpManager$TpCallback;

    .line 114
    .local v2, "cb":Lhuawei/android/hardware/tp/HwTpManager$TpCallback;
    invoke-interface {v2, p1, p2}, Lhuawei/android/hardware/tp/HwTpManager$TpCallback;->onTpEvent(II)V

    .line 115
    .end local v2    # "cb":Lhuawei/android/hardware/tp/HwTpManager$TpCallback;
    goto :goto_0

    .line 116
    :cond_0
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$hwTsRunCommand$0(Lhuawei/android/hardware/tp/HwTpManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "ret"    # I
    .param p4, "status"    # Ljava/lang/String;

    .line 304
    sget-boolean v0, Lhuawei/android/hardware/tp/HwTpManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "HwTpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hwTsRunCommand command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    iput-object p4, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCmdStatus:Ljava/lang/String;

    .line 309
    return-void
.end method

.method private registerNotifyForService()V
    .locals 4

    .line 134
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    const-string v1, "vendor.huawei.hardware.tp@1.0::ITouchscreen"

    const-string v2, ""

    iget-object v3, p0, Lhuawei/android/hardware/tp/HwTpManager;->mServiceNotification:Lhuawei/android/hardware/tp/HwTpManager$ServiceNotification;

    invoke-interface {v0, v1, v2, v3}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v0

    .line 136
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 137
    const-string v1, "HwTpManager"

    const-string v2, "Failed to register service notification"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "ret":Z
    :cond_0
    nop

    .line 143
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwTpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register service notification, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method private setTHPCallback(Z)Z
    .locals 8
    .param p1, "register"    # Z

    .line 206
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    if-eqz v2, :cond_6

    .line 210
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 211
    iget-boolean v4, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHasSet:Z

    if-eqz v4, :cond_1

    .line 212
    sget-boolean v2, Lhuawei/android/hardware/tp/HwTpManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 213
    const-string v2, "HwTpManager"

    const-string v4, "hwTsSetCallback has already set."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    .line 218
    :cond_1
    :try_start_2
    iget-object v4, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpHalCallback:Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;

    if-nez v4, :cond_2

    .line 219
    new-instance v4, Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;

    invoke-direct {v4, p0, v2}, Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;-><init>(Lhuawei/android/hardware/tp/HwTpManager;Lhuawei/android/hardware/tp/HwTpManager$1;)V

    iput-object v4, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpHalCallback:Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;

    .line 221
    :cond_2
    iget-object v2, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpHalCallback:Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;

    .local v2, "callback":Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;
    goto :goto_0

    .line 223
    .end local v2    # "callback":Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;
    :cond_3
    nop

    .line 226
    .restart local v2    # "callback":Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;
    :goto_0
    iget-object v4, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    invoke-interface {v4, v2}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->hwTsSetCallback(Lvendor/huawei/hardware/tp/V1_0/ITPCallback;)I

    move-result v4

    .line 227
    .local v4, "code":I
    sget-boolean v5, Lhuawei/android/hardware/tp/HwTpManager;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 228
    const-string v5, "HwTpManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hwTsSetCallback return code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_4
    if-eqz v2, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    iput-boolean v5, p0, Lhuawei/android/hardware/tp/HwTpManager;->mHasSet:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v3

    .line 233
    .end local v2    # "callback":Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;
    .end local v4    # "code":I
    :cond_6
    :try_start_4
    const-string v2, "HwTpManager"

    const-string v3, "hwTsSetCallback failed, mTPHidlService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    goto :goto_2

    .line 238
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "HwTpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hwTsSetCallback Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 240
    return v1

    .line 238
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method


# virtual methods
.method public hwTsRunCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCmdStatus:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    new-instance v2, Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;

    invoke-direct {v2, p0, p1, p2}, Lhuawei/android/hardware/tp/-$$Lambda$HwTpManager$PuGfrMz_pIKDw283eE1svlyjvV4;-><init>(Lhuawei/android/hardware/tp/HwTpManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, p2, v2}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->hwTsRunCommand(Ljava/lang/String;Ljava/lang/String;Lvendor/huawei/hardware/tp/V1_0/ITouchscreen$hwTsRunCommandCallback;)V

    goto :goto_0

    .line 311
    :cond_0
    const-string v1, "HwTpManager"

    const-string v2, "hwTsRunCommand failed, mTPHidlService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :goto_0
    goto :goto_1

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "HwTpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hwTsRunCommand Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCmdStatus:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public hwTsSetAftConfig(Ljava/lang/String;)I
    .locals 6
    .param p1, "config"    # Ljava/lang/String;

    .line 328
    const/4 v0, -0x1

    .line 329
    .local v0, "retcode":I
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCmdStatus:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :try_start_1
    iget-object v2, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTPHidlService:Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;

    invoke-interface {v2, p1}, Lvendor/huawei/hardware/tp/V1_0/ITouchscreen;->hwTsSetAftConfig(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 335
    :cond_0
    const-string v2, "HwTpManager"

    const-string v3, "hwTsSetAftConfig failed, mTPHidlService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :goto_0
    goto :goto_1

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "HwTpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hwTsSetAftConfig Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    sget-boolean v2, Lhuawei/android/hardware/tp/HwTpManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 342
    const-string v2, "HwTpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hwTsSetAftConfig config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    monitor-exit v1

    return v0

    .line 345
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerTpCallback(Lhuawei/android/hardware/tp/HwTpManager$TpCallback;)Z
    .locals 4
    .param p1, "cb"    # Lhuawei/android/hardware/tp/HwTpManager$TpCallback;

    .line 250
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "HwTpManager"

    const-string v3, "registerTpCallback cb alrady registered."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    monitor-exit v0

    return v2

    .line 256
    :cond_0
    invoke-direct {p0, v2}, Lhuawei/android/hardware/tp/HwTpManager;->setTHPCallback(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-boolean v1, Lhuawei/android/hardware/tp/HwTpManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 259
    const-string v1, "HwTpManager"

    const-string v3, "registerTpCallback cb successfully."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    monitor-exit v0

    return v2

    .line 263
    :cond_2
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterTpCallback(Lhuawei/android/hardware/tp/HwTpManager$TpCallback;)Z
    .locals 4
    .param p1, "cb"    # Lhuawei/android/hardware/tp/HwTpManager$TpCallback;

    .line 274
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 276
    const-string v1, "HwTpManager"

    const-string v3, "unregisterTpCallback cb not registered."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    monitor-exit v0

    return v2

    .line 280
    :cond_0
    invoke-direct {p0, v2}, Lhuawei/android/hardware/tp/HwTpManager;->setTHPCallback(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager;->mTpCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 282
    sget-boolean v1, Lhuawei/android/hardware/tp/HwTpManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 283
    const-string v1, "HwTpManager"

    const-string v2, "unregisterTpCallback cb successfully."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 287
    :cond_2
    monitor-exit v0

    return v2

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
