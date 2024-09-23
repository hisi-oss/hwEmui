.class public Lhuawei/android/os/HwAntiTheftManager;
.super Ljava/lang/Object;
.source "HwAntiTheftManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AntiTheftManager"

.field private static volatile mInstance:Lhuawei/android/os/HwAntiTheftManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/os/HwAntiTheftManager;->mInstance:Lhuawei/android/os/HwAntiTheftManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/os/HwAntiTheftManager;
    .locals 2

    const-class v0, Lhuawei/android/os/HwAntiTheftManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lhuawei/android/os/HwAntiTheftManager;->mInstance:Lhuawei/android/os/HwAntiTheftManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lhuawei/android/os/HwAntiTheftManager;

    invoke-direct {v1}, Lhuawei/android/os/HwAntiTheftManager;-><init>()V

    sput-object v1, Lhuawei/android/os/HwAntiTheftManager;->mInstance:Lhuawei/android/os/HwAntiTheftManager;

    .line 23
    :cond_0
    sget-object v1, Lhuawei/android/os/HwAntiTheftManager;->mInstance:Lhuawei/android/os/HwAntiTheftManager;
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

.method private getService()Lhuawei/android/os/IHwAntiTheftManager;
    .locals 2

    .line 30
    const-string v0, "hwAntiTheftService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 31
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/os/IHwAntiTheftManager;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAntiTheftDataBlockSize()I
    .locals 3

    .line 79
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/os/HwAntiTheftManager;->getService()Lhuawei/android/os/IHwAntiTheftManager;

    move-result-object v0

    .line 80
    .local v0, "service":Lhuawei/android/os/IHwAntiTheftManager;
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lhuawei/android/os/IHwAntiTheftManager;->getAntiTheftDataBlockSize()I

    move-result v1

    return v1

    .line 83
    :cond_0
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "service":Lhuawei/android/os/IHwAntiTheftManager;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAntiTheftEnabled()Z
    .locals 3

    .line 107
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/os/HwAntiTheftManager;->getService()Lhuawei/android/os/IHwAntiTheftManager;

    move-result-object v0

    .line 108
    .local v0, "service":Lhuawei/android/os/IHwAntiTheftManager;
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lhuawei/android/os/IHwAntiTheftManager;->getAntiTheftEnabled()Z

    move-result v1

    return v1

    .line 111
    :cond_0
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "service":Lhuawei/android/os/IHwAntiTheftManager;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAntiTheftSupported()Z
    .locals 3

    .line 136
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/os/HwAntiTheftManager;->getService()Lhuawei/android/os/IHwAntiTheftManager;

    move-result-object v0

    .line 137
    .local v0, "service":Lhuawei/android/os/IHwAntiTheftManager;
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Lhuawei/android/os/IHwAntiTheftManager;->isAntiTheftSupported()Z

    move-result v1

    return v1

    .line 140
    :cond_0
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "service":Lhuawei/android/os/IHwAntiTheftManager;
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public readAntiTheftData()[B
    .locals 3

    .line 36
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/os/HwAntiTheftManager;->getService()Lhuawei/android/os/IHwAntiTheftManager;

    move-result-object v0

    .line 37
    .local v0, "service":Lhuawei/android/os/IHwAntiTheftManager;
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lhuawei/android/os/IHwAntiTheftManager;->readAntiTheftData()[B

    move-result-object v1

    return-object v1

    .line 40
    :cond_0
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "service":Lhuawei/android/os/IHwAntiTheftManager;
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAntiTheftEnabled(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .line 93
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/os/HwAntiTheftManager;->getService()Lhuawei/android/os/IHwAntiTheftManager;

    move-result-object v0

    .line 94
    .local v0, "service":Lhuawei/android/os/IHwAntiTheftManager;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Lhuawei/android/os/IHwAntiTheftManager;->setAntiTheftEnabled(Z)I

    move-result v1

    return v1

    .line 97
    :cond_0
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "service":Lhuawei/android/os/IHwAntiTheftManager;
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public wipeAntiTheftData()I
    .locals 3

    .line 50
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/os/HwAntiTheftManager;->getService()Lhuawei/android/os/IHwAntiTheftManager;

    move-result-object v0

    .line 51
    .local v0, "service":Lhuawei/android/os/IHwAntiTheftManager;
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lhuawei/android/os/IHwAntiTheftManager;->wipeAntiTheftData()I

    move-result v1

    return v1

    .line 54
    :cond_0
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "service":Lhuawei/android/os/IHwAntiTheftManager;
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public writeAntiTheftData([B)I
    .locals 3
    .param p1, "writeToNative"    # [B

    .line 65
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/os/HwAntiTheftManager;->getService()Lhuawei/android/os/IHwAntiTheftManager;

    move-result-object v0

    .line 66
    .local v0, "service":Lhuawei/android/os/IHwAntiTheftManager;
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lhuawei/android/os/IHwAntiTheftManager;->writeAntiTheftData([B)I

    move-result v1

    return v1

    .line 69
    :cond_0
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "service":Lhuawei/android/os/IHwAntiTheftManager;
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "AntiTheftManager"

    const-string v2, "AntiTheft binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
