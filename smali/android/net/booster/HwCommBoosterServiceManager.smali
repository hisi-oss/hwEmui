.class public Landroid/net/booster/HwCommBoosterServiceManager;
.super Ljava/lang/Object;
.source "HwCommBoosterServiceManager.java"

# interfaces
.implements Landroid/net/booster/IHwCommBoosterServiceManager;


# static fields
.field private static final BOOSTER_SUPPORT:Z

.field private static final TAG:Ljava/lang/String; = "HwCommBoosterServiceManager"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Landroid/net/booster/HwCommBoosterServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "ro.config.hw_booster"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/net/booster/HwCommBoosterServiceManager;->BOOSTER_SUPPORT:Z

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/booster/HwCommBoosterServiceManager;->mLock:Ljava/lang/Object;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Landroid/net/booster/HwCommBoosterServiceManager;->sInstance:Landroid/net/booster/HwCommBoosterServiceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Landroid/net/booster/HwCommBoosterServiceManager;
    .locals 2

    .line 22
    sget-object v0, Landroid/net/booster/HwCommBoosterServiceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Landroid/net/booster/HwCommBoosterServiceManager;->sInstance:Landroid/net/booster/HwCommBoosterServiceManager;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Landroid/net/booster/HwCommBoosterServiceManager;

    invoke-direct {v1}, Landroid/net/booster/HwCommBoosterServiceManager;-><init>()V

    sput-object v1, Landroid/net/booster/HwCommBoosterServiceManager;->sInstance:Landroid/net/booster/HwCommBoosterServiceManager;

    .line 26
    :cond_0
    sget-object v1, Landroid/net/booster/HwCommBoosterServiceManager;->sInstance:Landroid/net/booster/HwCommBoosterServiceManager;

    monitor-exit v0

    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getService()Landroid/net/booster/IHwCommBoosterService;
    .locals 2

    .line 34
    const-string v0, "HwCommBoosterService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 35
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/booster/IHwCommBoosterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/booster/IHwCommBoosterService;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public registerCallBack(Ljava/lang/String;Landroid/net/booster/IHwCommBoosterCallback;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/net/booster/IHwCommBoosterCallback;

    .line 39
    sget-boolean v0, Landroid/net/booster/HwCommBoosterServiceManager;->BOOSTER_SUPPORT:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Landroid/net/booster/HwCommBoosterServiceManager;->getService()Landroid/net/booster/IHwCommBoosterService;

    move-result-object v0

    .line 45
    .local v0, "service":Landroid/net/booster/IHwCommBoosterService;
    if-eqz v0, :cond_1

    .line 47
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/net/booster/IHwCommBoosterService;->registerCallBack(Ljava/lang/String;Landroid/net/booster/IHwCommBoosterCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwCommBoosterServiceManager"

    const-string v3, "registerCallBack exception! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v2, -0x2

    return v2

    .line 53
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "HwCommBoosterServiceManager"

    const-string v2, "registerCallBack failed, IHwCommBoosterService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v1, -0x1

    return v1

    .line 40
    .end local v0    # "service":Landroid/net/booster/IHwCommBoosterService;
    :cond_2
    :goto_0
    const-string v0, "HwCommBoosterServiceManager"

    const-string v1, "registerCallBack failed invalid input"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, -0x3

    return v0
.end method

.method public reportBoosterPara(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 79
    sget-boolean v0, Landroid/net/booster/HwCommBoosterServiceManager;->BOOSTER_SUPPORT:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Landroid/net/booster/HwCommBoosterServiceManager;->getService()Landroid/net/booster/IHwCommBoosterService;

    move-result-object v0

    .line 85
    .local v0, "service":Landroid/net/booster/IHwCommBoosterService;
    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/net/booster/IHwCommBoosterService;->reportBoosterPara(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwCommBoosterServiceManager"

    const-string v3, "reportBoosterPara exception! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const/4 v2, -0x2

    return v2

    .line 93
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "HwCommBoosterServiceManager"

    const-string v2, "reportBoosterPara failed, IHwCommBoosterService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, -0x1

    return v1

    .line 80
    .end local v0    # "service":Landroid/net/booster/IHwCommBoosterService;
    :cond_2
    :goto_0
    const-string v0, "HwCommBoosterServiceManager"

    const-string v1, "reportBoosterPara failed invalid input"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, -0x3

    return v0
.end method

.method public unRegisterCallBack(Ljava/lang/String;Landroid/net/booster/IHwCommBoosterCallback;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/net/booster/IHwCommBoosterCallback;

    .line 59
    sget-boolean v0, Landroid/net/booster/HwCommBoosterServiceManager;->BOOSTER_SUPPORT:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Landroid/net/booster/HwCommBoosterServiceManager;->getService()Landroid/net/booster/IHwCommBoosterService;

    move-result-object v0

    .line 65
    .local v0, "service":Landroid/net/booster/IHwCommBoosterService;
    if-eqz v0, :cond_1

    .line 67
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/net/booster/IHwCommBoosterService;->unRegisterCallBack(Ljava/lang/String;Landroid/net/booster/IHwCommBoosterCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwCommBoosterServiceManager"

    const-string v3, "unRegisterCallBack exception! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v2, -0x2

    return v2

    .line 73
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "HwCommBoosterServiceManager"

    const-string v2, "unRegisterCallBack failed, IHwCommBoosterService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, -0x1

    return v1

    .line 60
    .end local v0    # "service":Landroid/net/booster/IHwCommBoosterService;
    :cond_2
    :goto_0
    const-string v0, "HwCommBoosterServiceManager"

    const-string v1, "unRegisterCallBack failed invalid input"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, -0x3

    return v0
.end method
