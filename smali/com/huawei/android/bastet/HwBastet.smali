.class public Lcom/huawei/android/bastet/HwBastet;
.super Lcom/huawei/android/bastet/BastetManager;
.source "HwBastet.java"


# static fields
.field private static BASTET_MSG_HRT:I = 0x0

.field private static BASTET_MSG_LPW:I = 0x0

.field private static final BASTET_SERVICE:Ljava/lang/String; = "BastetService"

.field private static BASTET_TCP_RECONN:I = 0x0

.field private static final DEFAULT_MSG_HRT:I = 0x40000

.field private static final DEFAULT_MSG_LPW:I = 0x80000

.field private static final DEFAULT_TCP_RECONN:I = 0x64

.field private static final INVALID_TIME:J = -0x1L

.field private static final MAX_SEND_HRT_LENGTH:I = 0x1400

.field private static final MAX_SEND_LPW_LENGTH:I = 0x400

.field private static final TAG:Ljava/lang/String; = "HwBastet"

.field private static final TYPE_AP_ERR_CLS:I = 0x0

.field private static final TYPE_AP_NORMAL_CLS:I = 0x1

.field private static final TYPE_AP_NORMAL_EST:I = 0x2

.field private static final TYPE_BEST_CONN_POINT:I = 0xff

.field private static final TYPE_NRT_SEND:I = 0x0

.field private static final TYPE_RECONN_BREAK:I = 0xfe

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mIs3gNetwork:Z

.field private static mMobileEnable:Z

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mBastetSupport:Z

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHbInterval:I

.field private mHbProxyId:I

.field private mHbReply:[B

.field private mHbSend:[B

.field private mLastSignalAvailable:I

.field private mNrtCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/net/Socket;",
            "[B>;>;"
        }
    .end annotation
.end field

.field private mNrtMinTimeout:J

.field private mReconnSwitch:Z

.field private mSocket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/android/bastet/HwBastet;->mMobileEnable:Z

    .line 80
    sput-boolean v0, Lcom/huawei/android/bastet/HwBastet;->mIs3gNetwork:Z

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/bastet/HwBastet;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/Socket;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "license"    # Ljava/lang/String;
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/huawei/android/bastet/BastetManager;-><init>()V

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtMinTimeout:J

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    .line 82
    iput-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mReconnSwitch:Z

    .line 83
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    .line 84
    iput v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbInterval:I

    .line 85
    iput v0, p0, Lcom/huawei/android/bastet/HwBastet;->mLastSignalAvailable:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtCache:Ljava/util/ArrayList;

    .line 311
    new-instance v0, Lcom/huawei/android/bastet/HwBastet$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/bastet/HwBastet$1;-><init>(Lcom/huawei/android/bastet/HwBastet;)V

    iput-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p2, p0, Lcom/huawei/android/bastet/HwBastet;->mSocket:Ljava/net/Socket;

    .line 103
    iput-object p3, p0, Lcom/huawei/android/bastet/HwBastet;->mHandler:Landroid/os/Handler;

    .line 104
    iput-object p4, p0, Lcom/huawei/android/bastet/HwBastet;->mContext:Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->initConnectivityService()V

    .line 107
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->prepareHeartbeatProxy()V

    .line 108
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->getBastetConstants()V

    .line 109
    return-void
.end method

.method static synthetic access$000()Landroid/net/ConnectivityManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/huawei/android/bastet/HwBastet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 50
    sput-boolean p0, Lcom/huawei/android/bastet/HwBastet;->mMobileEnable:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 50
    sput-boolean p0, Lcom/huawei/android/bastet/HwBastet;->mIs3gNetwork:Z

    return p0
.end method

.method static synthetic access$300(Lcom/huawei/android/bastet/HwBastet;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/android/bastet/HwBastet;
    .param p1, "x1"    # I

    .line 50
    invoke-direct {p0, p1}, Lcom/huawei/android/bastet/HwBastet;->is3gNetwork(I)Z

    move-result v0

    return v0
.end method

.method private clearAllData()V
    .locals 2

    .line 503
    const-string v0, "HwBastet"

    const-string v1, "Clear all nrt data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 508
    :cond_0
    monitor-exit p0

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearBastetProxy()V
    .locals 2

    .line 390
    :try_start_0
    iget v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    if-lez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/bastet/IBastetManager;->clearProxyById(I)I

    .line 395
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    .line 396
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/android/bastet/HwBastet;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    goto :goto_1

    .line 397
    :catch_1
    move-exception v0

    .line 402
    :goto_0
    nop

    .line 403
    :goto_1
    return-void
.end method

.method private getBastetConstants()V
    .locals 2

    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "val":I
    const-string v1, "MSG_HRT"

    invoke-direct {p0, v1}, Lcom/huawei/android/bastet/HwBastet;->getOsConstantsField(Ljava/lang/String;)I

    move-result v0

    .line 531
    if-gtz v0, :cond_0

    .line 532
    const/high16 v0, 0x40000

    .line 534
    :cond_0
    sput v0, Lcom/huawei/android/bastet/HwBastet;->BASTET_MSG_HRT:I

    .line 536
    const-string v1, "MSG_LPW"

    invoke-direct {p0, v1}, Lcom/huawei/android/bastet/HwBastet;->getOsConstantsField(Ljava/lang/String;)I

    move-result v0

    .line 537
    if-gtz v0, :cond_1

    .line 538
    const/high16 v0, 0x80000

    .line 540
    :cond_1
    sput v0, Lcom/huawei/android/bastet/HwBastet;->BASTET_MSG_LPW:I

    .line 542
    const-string v1, "TCP_RECONN"

    invoke-direct {p0, v1}, Lcom/huawei/android/bastet/HwBastet;->getOsConstantsField(Ljava/lang/String;)I

    move-result v0

    .line 543
    if-gtz v0, :cond_2

    .line 544
    const/16 v0, 0x64

    .line 546
    :cond_2
    sput v0, Lcom/huawei/android/bastet/HwBastet;->BASTET_TCP_RECONN:I

    .line 547
    return-void
.end method

.method private getFd(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;

    .line 346
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mSocket:Ljava/net/Socket;

    .line 347
    .local v0, "sk":Ljava/net/Socket;
    :goto_0
    invoke-virtual {v0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private getIntFd()I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method

.method private getOsConstantsField(Ljava/lang/String;)I
    .locals 4
    .param p1, "filedName"    # Ljava/lang/String;

    .line 512
    const/4 v0, 0x0

    .line 515
    .local v0, "value":I
    :try_start_0
    const-string v1, "android.system.OsConstants"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 516
    .local v1, "cs":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 517
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 521
    .end local v1    # "cs":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, -0x1

    .line 520
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "HwBastet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OsConstants "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return v0
.end method

.method private handleBastetAvailable(I)V
    .locals 3
    .param p1, "available"    # I

    .line 464
    monitor-enter p0

    .line 465
    :try_start_0
    const-string v0, "HwBastet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBastetSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    .line 467
    iget-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    if-nez v0, :cond_1

    .line 468
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/huawei/android/bastet/HwBastet;->sendMessage(I)V

    .line 470
    :cond_1
    monitor-exit p0

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleHeartbeatCycle(I)V
    .locals 1
    .param p1, "cycle"    # I

    .line 438
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/huawei/android/bastet/HwBastet;->sendMessage(II)V

    .line 439
    return-void
.end method

.method private handleNetworkQuality(I)V
    .locals 2
    .param p1, "signalLevel"    # I

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, "isAvailable":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 451
    :pswitch_0
    const/4 v0, 0x1

    .line 452
    goto :goto_0

    .line 446
    :pswitch_1
    const/4 v0, 0x0

    .line 447
    nop

    .line 457
    :goto_0
    iget v1, p0, Lcom/huawei/android/bastet/HwBastet;->mLastSignalAvailable:I

    if-eq v1, v0, :cond_0

    .line 458
    iput v0, p0, Lcom/huawei/android/bastet/HwBastet;->mLastSignalAvailable:I

    .line 459
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/bastet/HwBastet;->sendMessage(II)V

    .line 461
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleProxySendNrt(I)V
    .locals 2
    .param p1, "state"    # I

    .line 474
    if-eqz p1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->sendAllData()V

    .line 477
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtMinTimeout:J

    .line 478
    nop

    .line 482
    :goto_0
    return-void
.end method

.method private handleProxySocketState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 406
    const-wide/16 v0, -0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 429
    :pswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/huawei/android/bastet/HwBastet;->sendMessage(I)V

    .line 430
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->clearBastetProxy()V

    .line 431
    goto :goto_0

    .line 426
    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/huawei/android/bastet/HwBastet;->sendMessage(I)V

    .line 427
    goto :goto_0

    .line 423
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huawei/android/bastet/HwBastet;->sendMessage(I)V

    .line 424
    goto :goto_0

    .line 418
    :pswitch_3
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->clearBastetProxy()V

    .line 419
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->clearAllData()V

    .line 420
    iput-wide v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtMinTimeout:J

    .line 421
    goto :goto_0

    .line 408
    :pswitch_4
    monitor-enter p0

    .line 409
    :try_start_0
    iget-boolean v2, p0, Lcom/huawei/android/bastet/HwBastet;->mReconnSwitch:Z

    if-nez v2, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->clearBastetProxy()V

    .line 412
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->clearAllData()V

    .line 414
    iput-wide v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtMinTimeout:J

    .line 415
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/huawei/android/bastet/HwBastet;->sendMessage(I)V

    .line 416
    nop

    .line 435
    :goto_0
    return-void

    .line 412
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initConnectivityService()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/huawei/android/bastet/HwBastet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 330
    sget-object v0, Lcom/huawei/android/bastet/HwBastet;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 331
    const-string v0, "HwBastet"

    const-string v1, "Failed to get connectivity service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void

    .line 334
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/huawei/android/bastet/HwBastet;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/bastet/HwBastet;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    return-void
.end method

.method private is3gNetwork(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 294
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 308
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private prepareHeartbeatProxy()V
    .locals 3

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 366
    :try_start_1
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->getIntFd()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetListener:Lcom/huawei/android/bastet/IBastetListener;

    invoke-interface {v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager;->prepareHeartbeatProxy(ILcom/huawei/android/bastet/IBastetListener;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/huawei/android/bastet/HwBastet;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/android/bastet/HwBastet;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/android/bastet/HwBastet;->isBastetAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    .line 376
    monitor-exit p0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private sendAllData()V
    .locals 4

    .line 485
    monitor-enter p0

    .line 488
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtCache:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    .line 490
    .local v0, "socket":Ljava/net/Socket;
    iget-object v2, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    .local v2, "data":[B
    :try_start_1
    invoke-direct {p0, v0, v2, v1}, Lcom/huawei/android/bastet/HwBastet;->sendData(Ljava/net/Socket;[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    goto :goto_1

    .line 493
    :catch_0
    move-exception v3

    .line 497
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 499
    .end local v0    # "socket":Ljava/net/Socket;
    .end local v2    # "data":[B
    :cond_0
    monitor-exit p0

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private sendData(Ljava/net/Socket;[BI)V
    .locals 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "data"    # [B
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1}, Lcom/huawei/android/bastet/HwBastet;->getFd(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v0

    array-length v3, p2

    sget-boolean v1, Lcom/huawei/android/bastet/HwBastet;->mMobileEnable:Z

    if-eqz v1, :cond_0

    move v4, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    .line 352
    return-void
.end method

.method private setHeartbeatProxy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    iget v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    iget v2, p0, Lcom/huawei/android/bastet/HwBastet;->mHbInterval:I

    invoke-interface {v0, v1, v2}, Lcom/huawei/android/bastet/IBastetManager;->updateRepeatInterval(II)I

    .line 384
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    iget-object v2, p0, Lcom/huawei/android/bastet/HwBastet;->mHbSend:[B

    iget-object v3, p0, Lcom/huawei/android/bastet/HwBastet;->mHbReply:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/huawei/android/bastet/IBastetManager;->setHeartbeatFixedContent(I[B[B)I

    .line 385
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/bastet/IBastetManager;->startBastetProxy(I)I

    .line 386
    return-void

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method private setReconnEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    invoke-interface {v0, v1, p1}, Lcom/huawei/android/bastet/IBastetManager;->setReconnEnable(IZ)I

    .line 360
    return-void

    .line 356
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method


# virtual methods
.method protected handleProxyMessage(III)V
    .locals 3
    .param p1, "proxyId"    # I
    .param p2, "err"    # I
    .param p3, "ext"    # I

    .line 260
    const-string v0, "HwBastet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwBastet handleProxyMessage: proxyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    if-eq p1, v0, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    const/16 v0, -0xa

    if-eq p2, v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/huawei/android/bastet/HwBastet;->handleProxySocketState(I)V

    .line 272
    goto :goto_0

    .line 274
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/huawei/android/bastet/HwBastet;->handleHeartbeatCycle(I)V

    .line 275
    goto :goto_0

    .line 277
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/huawei/android/bastet/HwBastet;->handleProxySendNrt(I)V

    .line 278
    goto :goto_0

    .line 280
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/huawei/android/bastet/HwBastet;->handleNetworkQuality(I)V

    .line 281
    goto :goto_0

    .line 266
    :cond_1
    invoke-direct {p0, p3}, Lcom/huawei/android/bastet/HwBastet;->handleBastetAvailable(I)V

    .line 267
    goto :goto_0

    .line 269
    :cond_2
    nop

    .line 285
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onBastetDied()V
    .locals 1

    .line 289
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/huawei/android/bastet/HwBastet;->sendMessage(I)V

    .line 290
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->sendAllData()V

    .line 291
    return-void
.end method

.method public pauseHeartbeat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/bastet/IBastetManager;->stopBastetProxy(I)I

    .line 181
    monitor-exit p0

    .line 182
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reconnectSwitch(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mReconnSwitch:Z

    if-ne v0, p1, :cond_0

    .line 121
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/android/bastet/HwBastet;->setReconnEnable(Z)V

    .line 124
    iput-boolean p1, p0, Lcom/huawei/android/bastet/HwBastet;->mReconnSwitch:Z

    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeHeartbeat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/bastet/IBastetManager;->startBastetProxy(I)I

    .line 198
    monitor-exit p0

    .line 199
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendHrtData([BLjava/net/Socket;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    array-length v0, p1

    const/16 v1, 0x1400

    if-gt v0, v1, :cond_0

    sget v0, Lcom/huawei/android/bastet/HwBastet;->BASTET_MSG_HRT:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, p1, v0}, Lcom/huawei/android/bastet/HwBastet;->sendData(Ljava/net/Socket;[BI)V

    .line 241
    return-void
.end method

.method public sendLpwData([BLjava/net/Socket;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    sget-boolean v0, Lcom/huawei/android/bastet/HwBastet;->mIs3gNetwork:Z

    if-eqz v0, :cond_0

    array-length v0, p1

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    sget v0, Lcom/huawei/android/bastet/HwBastet;->BASTET_MSG_LPW:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, p1, v0}, Lcom/huawei/android/bastet/HwBastet;->sendData(Ljava/net/Socket;[BI)V

    .line 256
    return-void
.end method

.method public sendNrtData([BJLjava/net/Socket;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "timeout"    # J
    .param p4, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/huawei/android/bastet/HwBastet;->mBastetSupport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_2

    .line 214
    const-wide/16 v0, 0x0

    .line 215
    .local v0, "currentTime":J
    const-wide/16 v2, 0x0

    .line 217
    .local v2, "elapsedTimeout":J
    iget-object v4, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtCache:Ljava/util/ArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, p4, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v0, v4

    .line 219
    add-long v2, p2, v0

    .line 220
    iget-wide v4, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtMinTimeout:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtMinTimeout:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 221
    :cond_0
    iput-wide v2, p0, Lcom/huawei/android/bastet/HwBastet;->mNrtMinTimeout:J

    .line 222
    iget-object v4, p0, Lcom/huawei/android/bastet/HwBastet;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v5, p0, Lcom/huawei/android/bastet/HwBastet;->mHbProxyId:I

    invoke-interface {v4, v5, p2, p3}, Lcom/huawei/android/bastet/IBastetManager;->setNrtTime(IJ)I

    .line 224
    .end local v0    # "currentTime":J
    .end local v2    # "elapsedTimeout":J
    :cond_1
    goto :goto_0

    .line 225
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p4, p1, v0}, Lcom/huawei/android/bastet/HwBastet;->sendData(Ljava/net/Socket;[BI)V

    .line 227
    :goto_0
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAolHeartbeat(I[B[B)V
    .locals 3
    .param p1, "interval"    # I
    .param p2, "send"    # [B
    .param p3, "reply"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    array-length v0, p2

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 153
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 154
    iput v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbInterval:I

    goto :goto_0

    .line 156
    :cond_0
    iput p1, p0, Lcom/huawei/android/bastet/HwBastet;->mHbInterval:I

    .line 158
    :goto_0
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbSend:[B

    .line 159
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbSend:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 160
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbReply:[B

    .line 161
    iget-object v0, p0, Lcom/huawei/android/bastet/HwBastet;->mHbReply:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 163
    invoke-direct {p0}, Lcom/huawei/android/bastet/HwBastet;->setHeartbeatProxy()V

    .line 164
    monitor-exit p0

    .line 165
    return-void

    .line 150
    :cond_1
    const-string v0, "HwBastet"

    const-string v1, "Invalid heartbeat parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
