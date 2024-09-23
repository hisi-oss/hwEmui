.class public Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;
.super Ljava/lang/Object;
.source "HwDisplayManagerGlobalEx.java"

# interfaces
.implements Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalEx;


# instance fields
.field private final IDisplayManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/huawei/android/hardware/display/IHwDisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field mDmg:Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;


# direct methods
.method public constructor <init>(Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;)V
    .locals 1
    .param p1, "dmg"    # Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx$1;-><init>(Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;)V

    iput-object v0, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->IDisplayManagerSingleton:Landroid/util/Singleton;

    .line 42
    iput-object p1, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->mDmg:Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;

    .line 43
    return-void
.end method

.method private getService()Lcom/huawei/android/hardware/display/IHwDisplayManager;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->IDisplayManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/hardware/display/IHwDisplayManager;

    return-object v0
.end method


# virtual methods
.method public checkVerificationResult(Z)V
    .locals 2
    .param p1, "isRight"    # Z

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->getService()Lcom/huawei/android/hardware/display/IHwDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/android/hardware/display/IHwDisplayManager;->checkVerificationResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    nop

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public connectWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "verificaitonCode"    # Ljava/lang/String;

    .line 62
    const-string v0, ""

    .line 64
    .local v0, "vCode":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const-string v1, "^[0-9A-Z]{4}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 68
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 69
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    move-object v0, p2

    .line 77
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->getService()Lcom/huawei/android/hardware/display/IHwDisplayManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/huawei/android/hardware/display/IHwDisplayManager;->connectWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 72
    .local v1, "p":Ljava/util/regex/Pattern;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "the pattern of verificaitonCode error!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "verificaitonCode must not be null in this connectType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendWifiDisplayAction(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->getService()Lcom/huawei/android/hardware/display/IHwDisplayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/huawei/android/hardware/display/IHwDisplayManager;->sendWifiDisplayAction(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startWifiDisplayScan(I)V
    .locals 3
    .param p1, "channelId"    # I

    .line 46
    invoke-direct {p0}, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->getService()Lcom/huawei/android/hardware/display/IHwDisplayManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->mDmg:Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;

    invoke-interface {v0}, Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->mDmg:Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;

    invoke-interface {v1}, Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;->getWifiDisplayScanNestCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->mDmg:Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;

    invoke-interface {v1}, Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;->addWifiDisplayScanNestCount()V

    .line 51
    iget-object v1, p0, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->mDmg:Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;

    invoke-interface {v1}, Lcom/huawei/android/hardware/display/IHwDisplayManagerGlobalInner;->registerCallbackIfNeededLockedInner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    invoke-direct {p0}, Lcom/huawei/android/hardware/display/HwDisplayManagerGlobalEx;->getService()Lcom/huawei/android/hardware/display/IHwDisplayManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/android/hardware/display/IHwDisplayManager;->startWifiDisplayScan(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 58
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
