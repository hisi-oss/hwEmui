.class public Lhuawei/android/filemonitor/HwFileMonitorManager;
.super Ljava/lang/Object;
.source "HwFileMonitorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwFileMonitorManager"

.field private static volatile mInstance:Lhuawei/android/filemonitor/HwFileMonitorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/filemonitor/HwFileMonitorManager;->mInstance:Lhuawei/android/filemonitor/HwFileMonitorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/filemonitor/HwFileMonitorManager;
    .locals 2

    const-class v0, Lhuawei/android/filemonitor/HwFileMonitorManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lhuawei/android/filemonitor/HwFileMonitorManager;->mInstance:Lhuawei/android/filemonitor/HwFileMonitorManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lhuawei/android/filemonitor/HwFileMonitorManager;

    invoke-direct {v1}, Lhuawei/android/filemonitor/HwFileMonitorManager;-><init>()V

    sput-object v1, Lhuawei/android/filemonitor/HwFileMonitorManager;->mInstance:Lhuawei/android/filemonitor/HwFileMonitorManager;

    .line 27
    :cond_0
    sget-object v1, Lhuawei/android/filemonitor/HwFileMonitorManager;->mInstance:Lhuawei/android/filemonitor/HwFileMonitorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lhuawei/android/filemonitor/IFileMonitorManager;
    .locals 2

    .line 34
    const-string v0, "HwFileMonitorService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lhuawei/android/filemonitor/IFileMonitorManager$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/filemonitor/IFileMonitorManager;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getPolicy()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lhuawei/android/filemonitor/HwFileMonitorManager;->getService()Lhuawei/android/filemonitor/IFileMonitorManager;

    move-result-object v1

    .line 56
    .local v1, "service":Lhuawei/android/filemonitor/IFileMonitorManager;
    if-nez v1, :cond_0

    .line 57
    return-object v0

    .line 59
    :cond_0
    invoke-interface {v1}, Lhuawei/android/filemonitor/IFileMonitorManager;->getPolicy()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 60
    .end local v1    # "service":Lhuawei/android/filemonitor/IFileMonitorManager;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwFileMonitorManager"

    const-string v3, "FileMonitor binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v1    # "ex":Landroid/os/RemoteException;
    return-object v0
.end method

.method public request(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 40
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/filemonitor/HwFileMonitorManager;->getService()Lhuawei/android/filemonitor/IFileMonitorManager;

    move-result-object v0

    .line 41
    .local v0, "service":Lhuawei/android/filemonitor/IFileMonitorManager;
    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {v0, p1}, Lhuawei/android/filemonitor/IFileMonitorManager;->request(Landroid/os/Bundle;)I

    move-result v1

    return v1

    .line 42
    :cond_1
    :goto_0
    const-string v1, "HwFileMonitorManager"

    const-string v2, "request service or bundle null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const/4 v1, -0x1

    return v1

    .line 46
    .end local v0    # "service":Lhuawei/android/filemonitor/IFileMonitorManager;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwFileMonitorManager"

    const-string v2, "FileMonitor binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setPolicy(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 67
    .local p1, "policy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/filemonitor/HwFileMonitorManager;->getService()Lhuawei/android/filemonitor/IFileMonitorManager;

    move-result-object v1

    .line 73
    .local v1, "service":Lhuawei/android/filemonitor/IFileMonitorManager;
    if-nez v1, :cond_1

    .line 74
    return v0

    .line 76
    :cond_1
    invoke-interface {v1, p1}, Lhuawei/android/filemonitor/IFileMonitorManager;->setPolicy(Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 77
    .end local v1    # "service":Lhuawei/android/filemonitor/IFileMonitorManager;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwFileMonitorManager"

    const-string v3, "FileMonitor binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v1    # "ex":Landroid/os/RemoteException;
    return v0

    .line 68
    :cond_2
    :goto_0
    return v0
.end method
