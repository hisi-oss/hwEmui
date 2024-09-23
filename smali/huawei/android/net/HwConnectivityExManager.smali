.class public Lhuawei/android/net/HwConnectivityExManager;
.super Ljava/lang/Object;
.source "HwConnectivityExManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwConnectivityExManager"

.field private static volatile mInstance:Lhuawei/android/net/HwConnectivityExManager;


# instance fields
.field mService:Lhuawei/android/net/IConnectivityExManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/net/HwConnectivityExManager;->mInstance:Lhuawei/android/net/HwConnectivityExManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    .line 28
    const-string v0, "hwConnectivityExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 29
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lhuawei/android/net/IConnectivityExManager$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/net/IConnectivityExManager;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    .line 30
    return-void
.end method

.method public static declared-synchronized getDefault()Lhuawei/android/net/HwConnectivityExManager;
    .locals 2

    const-class v0, Lhuawei/android/net/HwConnectivityExManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lhuawei/android/net/HwConnectivityExManager;->mInstance:Lhuawei/android/net/HwConnectivityExManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lhuawei/android/net/HwConnectivityExManager;

    invoke-direct {v1}, Lhuawei/android/net/HwConnectivityExManager;-><init>()V

    sput-object v1, Lhuawei/android/net/HwConnectivityExManager;->mInstance:Lhuawei/android/net/HwConnectivityExManager;

    .line 23
    :cond_0
    sget-object v1, Lhuawei/android/net/HwConnectivityExManager;->mInstance:Lhuawei/android/net/HwConnectivityExManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public isApIpv4AddressFixed()Z
    .locals 5

    .line 79
    const-string v0, "HwConnectivityExManager"

    const-string v1, "isApIpv4AddressFixed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "isFixed":Z
    iget-object v1, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    if-nez v1, :cond_0

    .line 82
    const-string v1, "HwConnectivityExManager"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lhuawei/android/net/HwConnectivityExManager;->getDefault()Lhuawei/android/net/HwConnectivityExManager;

    .line 85
    :cond_0
    iget-object v1, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    if-eqz v1, :cond_1

    .line 87
    :try_start_0
    iget-object v1, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    invoke-interface {v1}, Lhuawei/android/net/IConnectivityExManager;->isApIpv4AddressFixed()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwConnectivityExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v0
.end method

.method public setApIpv4AddressFixed(Z)V
    .locals 4
    .param p1, "isFixed"    # Z

    .line 65
    const-string v0, "HwConnectivityExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApIpv4AddressFixed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    if-nez v0, :cond_0

    .line 67
    const-string v0, "HwConnectivityExManager"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lhuawei/android/net/HwConnectivityExManager;->getDefault()Lhuawei/android/net/HwConnectivityExManager;

    .line 70
    :cond_0
    iget-object v0, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    if-eqz v0, :cond_1

    .line 72
    :try_start_0
    iget-object v0, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    invoke-interface {v0, p1}, Lhuawei/android/net/IConnectivityExManager;->setApIpv4AddressFixed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwConnectivityExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setSmartKeyguardLevel(Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Ljava/lang/String;

    .line 44
    :try_start_0
    iget-object v0, p0, Lhuawei/android/net/HwConnectivityExManager;->mService:Lhuawei/android/net/IConnectivityExManager;

    invoke-interface {v0, p1}, Lhuawei/android/net/IConnectivityExManager;->setSmartKeyguardLevel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    nop

    .line 48
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public setUseCtrlSocket(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 60
    return-void
.end method
