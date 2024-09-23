.class public Lcom/huawei/itouch/HwITouchJniAdapter;
.super Ljava/lang/Object;
.source "HwITouchJniAdapter.java"


# static fields
.field private static mHwITouchJniAdapter:Lcom/huawei/itouch/HwITouchJniAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/itouch/HwITouchJniAdapter;->mHwITouchJniAdapter:Lcom/huawei/itouch/HwITouchJniAdapter;

    .line 27
    :try_start_0
    const-string v0, "itouchmanager"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    const-string v0, "itouch"

    const-string v1, "itouch loading JNI succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "itouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itouch LoadLibrary is error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/itouch/HwITouchJniAdapter;
    .locals 2

    const-class v0, Lcom/huawei/itouch/HwITouchJniAdapter;

    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/huawei/itouch/HwITouchJniAdapter;->mHwITouchJniAdapter:Lcom/huawei/itouch/HwITouchJniAdapter;

    if-nez v1, :cond_0

    .line 15
    new-instance v1, Lcom/huawei/itouch/HwITouchJniAdapter;

    invoke-direct {v1}, Lcom/huawei/itouch/HwITouchJniAdapter;-><init>()V

    sput-object v1, Lcom/huawei/itouch/HwITouchJniAdapter;->mHwITouchJniAdapter:Lcom/huawei/itouch/HwITouchJniAdapter;

    .line 17
    :cond_0
    sget-object v1, Lcom/huawei/itouch/HwITouchJniAdapter;->mHwITouchJniAdapter:Lcom/huawei/itouch/HwITouchJniAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 13
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native nativeGetAppType()I
.end method

.method private native nativeRegisterListener()V
.end method


# virtual methods
.method public declared-synchronized getAppType()I
    .locals 1

    monitor-enter p0

    .line 23
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/itouch/HwITouchJniAdapter;->nativeGetAppType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/itouch/HwITouchJniAdapter;
    throw v0
.end method

.method public declared-synchronized registerJniListener()V
    .locals 1

    monitor-enter p0

    .line 20
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/itouch/HwITouchJniAdapter;->nativeRegisterListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/itouch/HwITouchJniAdapter;
    throw v0
.end method
