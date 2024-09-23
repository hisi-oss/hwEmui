.class public Lhuawei/android/os/HwBootanimManager;
.super Ljava/lang/Object;
.source "HwBootanimManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwBootanimManager"

.field private static volatile mInstance:Lhuawei/android/os/HwBootanimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/os/HwBootanimManager;->mInstance:Lhuawei/android/os/HwBootanimManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/os/HwBootanimManager;
    .locals 2

    const-class v0, Lhuawei/android/os/HwBootanimManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lhuawei/android/os/HwBootanimManager;->mInstance:Lhuawei/android/os/HwBootanimManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lhuawei/android/os/HwBootanimManager;

    invoke-direct {v1}, Lhuawei/android/os/HwBootanimManager;-><init>()V

    sput-object v1, Lhuawei/android/os/HwBootanimManager;->mInstance:Lhuawei/android/os/HwBootanimManager;

    .line 19
    :cond_0
    sget-object v1, Lhuawei/android/os/HwBootanimManager;->mInstance:Lhuawei/android/os/HwBootanimManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lhuawei/android/os/IHwBootanimManager;
    .locals 2

    .line 23
    const-string v0, "hwBootanimExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 24
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lhuawei/android/os/IHwBootanimManager$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/os/IHwBootanimManager;

    move-result-object v1

    .line 25
    .local v1, "service":Lhuawei/android/os/IHwBootanimManager;
    return-object v1
.end method


# virtual methods
.method public getBootAnimSoundSwitch()I
    .locals 4

    .line 42
    invoke-direct {p0}, Lhuawei/android/os/HwBootanimManager;->getService()Lhuawei/android/os/IHwBootanimManager;

    move-result-object v0

    .line 44
    .local v0, "service":Lhuawei/android/os/IHwBootanimManager;
    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/os/IHwBootanimManager;->getBootAnimSoundSwitch()I

    move-result v1

    return v1

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0

    .line 47
    :cond_0
    const-string v1, "HwBootanimManager"

    const-string v2, "HwBootanimManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 49
    :goto_0
    nop

    .line 50
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwBootanimManager"

    const-string v3, "HwBootanimManager binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, -0x1

    return v1
.end method

.method public isBootOrShutdownSoundCapable()Z
    .locals 4

    .line 56
    invoke-direct {p0}, Lhuawei/android/os/HwBootanimManager;->getService()Lhuawei/android/os/IHwBootanimManager;

    move-result-object v0

    .line 58
    .local v0, "service":Lhuawei/android/os/IHwBootanimManager;
    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/os/IHwBootanimManager;->isBootOrShutdownSoundCapable()Z

    move-result v1

    return v1

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0

    .line 61
    :cond_0
    const-string v1, "HwBootanimManager"

    const-string v2, "HwBootanimManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_1

    .line 63
    :goto_0
    nop

    .line 64
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwBootanimManager"

    const-string v3, "HwBootanimManager binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public switchBootOrShutSound(Ljava/lang/String;)V
    .locals 4
    .param p1, "openOrClose"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Lhuawei/android/os/HwBootanimManager;->getService()Lhuawei/android/os/IHwBootanimManager;

    move-result-object v0

    .line 31
    .local v0, "service":Lhuawei/android/os/IHwBootanimManager;
    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    invoke-interface {v0, p1}, Lhuawei/android/os/IHwBootanimManager;->switchBootOrShutSound(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    goto :goto_1

    .line 34
    :cond_0
    const-string v1, "HwBootanimManager"

    const-string v2, "HwBootanimManager not exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    goto :goto_2

    .line 36
    :goto_1
    nop

    .line 37
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwBootanimManager"

    const-string v3, "HwBootanimManager binder error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method
