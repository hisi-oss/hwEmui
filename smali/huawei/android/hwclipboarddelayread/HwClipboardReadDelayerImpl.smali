.class public Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;
.super Ljava/lang/Object;
.source "HwClipboardReadDelayerImpl.java"

# interfaces
.implements Landroid/hwclipboarddelayread/HwClipboardReadDelayer$IHwClipboardReadDelayer;


# static fields
.field private static MAX_CLIPBOARDGET_LISTENER:I

.field private static MAX_GET_WAIT_TIME:I

.field private static TAG:Ljava/lang/String;

.field private static getWaitTime:I


# instance fields
.field private clipLockObj:Ljava/lang/Object;

.field private primaryClipGetedListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/huawei/android/content/IOnPrimaryClipGetedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "HwClipboardReadDelayerImpl"

    sput-object v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    sput v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->MAX_CLIPBOARDGET_LISTENER:I

    .line 24
    const/16 v0, 0xa

    sput v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->MAX_GET_WAIT_TIME:I

    .line 25
    const/4 v0, 0x4

    sput v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->getWaitTime:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    .line 27
    iput-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    .line 31
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    .line 32
    return-void
.end method


# virtual methods
.method public addPrimaryClipGetedListener(Lcom/huawei/android/content/IOnPrimaryClipGetedListener;Ljava/lang/String;)Z
    .locals 4
    .param p1, "listener"    # Lcom/huawei/android/content/IOnPrimaryClipGetedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/huawei/android/content/IOnPrimaryClipGetedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    sget v3, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->MAX_CLIPBOARDGET_LISTENER:I

    if-ne v1, v3, :cond_1

    .line 41
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    iget-object v3, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/content/IOnPrimaryClipGetedListener;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 43
    :cond_1
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 38
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPrimaryClipNotify()V
    .locals 13

    .line 72
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 75
    .local v1, "ident":J
    iget-object v3, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .local v3, "n":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 78
    :try_start_1
    iget-object v6, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Lcom/huawei/android/content/IOnPrimaryClipGetedListener;

    invoke-interface {v6}, Lcom/huawei/android/content/IOnPrimaryClipGetedListener;->dispatchPrimaryClipGet()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    nop

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v4

    .line 82
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    monitor-exit v0

    return-void

    .line 85
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    :cond_0
    iget-object v5, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 86
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    iget-object v5, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 90
    .local v5, "startTime":J
    iget-object v7, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    sget v8, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->getWaitTime:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    sget v9, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->getWaitTime:I

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    iget-object v7, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    .line 92
    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v7

    sget v8, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->MAX_CLIPBOARDGET_LISTENER:I

    if-ne v7, v8, :cond_1

    .line 93
    iget-object v7, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    iget-object v8, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/content/IOnPrimaryClipGetedListener;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    .end local v5    # "startTime":J
    :cond_1
    goto :goto_1

    .line 95
    :catch_1
    move-exception v4

    .line 98
    .end local v1    # "ident":J
    .end local v3    # "n":I
    :cond_2
    :goto_1
    :try_start_4
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public removePrimaryClipGetedListener(Lcom/huawei/android/content/IOnPrimaryClipGetedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/huawei/android/content/IOnPrimaryClipGetedListener;

    .line 48
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/huawei/android/content/IOnPrimaryClipGetedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->primaryClipGetedListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 50
    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGetWaitTime(I)I
    .locals 1
    .param p1, "waitTime"    # I

    .line 57
    if-ltz p1, :cond_0

    sget v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->MAX_GET_WAIT_TIME:I

    if-gt p1, v0, :cond_0

    .line 58
    sput p1, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->getWaitTime:I

    .line 59
    sget v0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->getWaitTime:I

    return v0

    .line 61
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setPrimaryClipNotify()V
    .locals 2

    .line 66
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayerImpl;->clipLockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
