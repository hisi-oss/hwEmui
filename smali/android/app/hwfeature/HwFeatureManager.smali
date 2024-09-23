.class public Landroid/app/hwfeature/HwFeatureManager;
.super Ljava/lang/Object;
.source "HwFeatureManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HwFeatureManager"

.field private static sInstance:Landroid/app/hwfeature/HwFeatureManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mService:Landroid/app/hwfeature/IHwFeatureManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/hwfeature/HwFeatureManager;->sLock:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Landroid/app/hwfeature/HwFeatureManager;->sInstance:Landroid/app/hwfeature/HwFeatureManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0}, Landroid/app/hwfeature/HwFeatureManager;->getService()Landroid/app/hwfeature/IHwFeatureManagerService;

    move-result-object v0

    .line 27
    .local v0, "service":Landroid/app/hwfeature/IHwFeatureManagerService;
    if-nez v0, :cond_0

    .line 28
    const-string v1, "HwFeatureManager"

    const-string v2, "featuremanager service is null in constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iput-object v0, p0, Landroid/app/hwfeature/HwFeatureManager;->mService:Landroid/app/hwfeature/IHwFeatureManagerService;

    .line 31
    return-void
.end method

.method public static getInstance()Landroid/app/hwfeature/HwFeatureManager;
    .locals 3

    .line 39
    sget-object v0, Landroid/app/hwfeature/HwFeatureManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Landroid/app/hwfeature/HwFeatureManager;->sInstance:Landroid/app/hwfeature/HwFeatureManager;

    if-nez v1, :cond_1

    .line 41
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "HwFeatureManager"

    const-string v2, "first time to initialize HwFeatureManager, this log should not appear again!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    new-instance v1, Landroid/app/hwfeature/HwFeatureManager;

    invoke-direct {v1}, Landroid/app/hwfeature/HwFeatureManager;-><init>()V

    sput-object v1, Landroid/app/hwfeature/HwFeatureManager;->sInstance:Landroid/app/hwfeature/HwFeatureManager;

    .line 45
    sget-object v1, Landroid/app/hwfeature/HwFeatureManager;->sInstance:Landroid/app/hwfeature/HwFeatureManager;

    iget-object v1, v1, Landroid/app/hwfeature/HwFeatureManager;->mService:Landroid/app/hwfeature/IHwFeatureManagerService;

    if-nez v1, :cond_1

    .line 46
    const-string v1, "HwFeatureManager"

    const-string v2, "get featuremanger is null because service is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v1, 0x0

    sput-object v1, Landroid/app/hwfeature/HwFeatureManager;->sInstance:Landroid/app/hwfeature/HwFeatureManager;

    .line 50
    :cond_1
    sget-object v1, Landroid/app/hwfeature/HwFeatureManager;->sInstance:Landroid/app/hwfeature/HwFeatureManager;

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPackageNameByUidAndPid(Landroid/content/Context;II)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 98
    if-nez p1, :cond_0

    .line 99
    const-string v0, "HwFeatureManager"

    const-string v1, "failed to get packageName\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v0, ""

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "pkgs":[Ljava/lang/String;
    if-eqz v0, :cond_7

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    const/4 v1, 0x1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 108
    aget-object v1, v0, v3

    return-object v1

    .line 111
    :cond_2
    const-string v1, ""

    .line 112
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 113
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 114
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v4, :cond_3

    .line 115
    const-string v3, "HwFeatureManager"

    const-string v5, "list is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v3, ""

    return-object v3

    .line 118
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 120
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 121
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 122
    .local v6, "runningInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 123
    .local v7, "runningPid":I
    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 124
    .local v8, "runningUid":I
    if-ne v7, p3, :cond_5

    if-ne v8, p2, :cond_5

    .line 125
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 126
    .local v9, "pkgNameList":[Ljava/lang/String;
    if-eqz v9, :cond_4

    array-length v10, v9

    if-lez v10, :cond_4

    .line 127
    aget-object v1, v9, v3

    .line 130
    :cond_4
    return-object v1

    .line 132
    .end local v6    # "runningInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "runningPid":I
    .end local v8    # "runningUid":I
    .end local v9    # "pkgNameList":[Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 134
    :cond_6
    return-object v1

    .line 104
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_7
    :goto_1
    const-string v1, "HwFeatureManager"

    const-string v2, "packageName is null\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, ""

    return-object v1
.end method

.method private getService()Landroid/app/hwfeature/IHwFeatureManagerService;
    .locals 2

    .line 55
    const-string v0, "hwfeaturemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/hwfeature/IHwFeatureManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/hwfeature/IHwFeatureManagerService;

    move-result-object v1

    .line 57
    .local v1, "service":Landroid/app/hwfeature/IHwFeatureManagerService;
    return-object v1
.end method


# virtual methods
.method public requestPermission(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "result":Z
    invoke-direct {p0}, Landroid/app/hwfeature/HwFeatureManager;->getService()Landroid/app/hwfeature/IHwFeatureManagerService;

    move-result-object v1

    .line 69
    .local v1, "service":Landroid/app/hwfeature/IHwFeatureManagerService;
    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 76
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 77
    .local v3, "pid":I
    invoke-direct {p0, p1, v2, v3}, Landroid/app/hwfeature/HwFeatureManager;->getPackageNameByUidAndPid(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1, v4}, Landroid/app/hwfeature/IHwFeatureManagerService;->requestPermission(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v5

    .line 84
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "HwFeatureManager"

    const-string v7, "checkAuthentication catch RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 70
    .end local v2    # "uid":I
    .end local v3    # "pid":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    .line 71
    const-string v2, "HwFeatureManager"

    const-string v3, "checkAuthentication service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    return v0
.end method
