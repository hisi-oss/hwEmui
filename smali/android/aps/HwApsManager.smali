.class public Landroid/aps/HwApsManager;
.super Ljava/lang/Object;
.source "HwApsManager.java"

# interfaces
.implements Landroid/aps/IApsManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwApsManager"

.field private static sInstance:Landroid/aps/HwApsManager;


# instance fields
.field private mApsService:Landroid/aps/IHwApsManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private checkApsInfo(Landroid/aps/ApsAppInfo;)Z
    .locals 8
    .param p1, "info"    # Landroid/aps/ApsAppInfo;

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 48
    return v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/aps/ApsAppInfo;->getResolutionRatio()F

    move-result v1

    .line 52
    .local v1, "resolutionRatio":F
    invoke-virtual {p1}, Landroid/aps/ApsAppInfo;->getFrameRatio()I

    move-result v2

    .line 53
    .local v2, "fps":I
    invoke-virtual {p1}, Landroid/aps/ApsAppInfo;->getBrightnessPercent()I

    move-result v3

    .line 54
    .local v3, "brightnessPercent":I
    invoke-virtual {p1}, Landroid/aps/ApsAppInfo;->getTexturePercent()I

    move-result v4

    .line 56
    .local v4, "texturePercent":I
    const/high16 v5, 0x3e800000    # 0.25f

    cmpg-float v5, v1, v5

    if-lez v5, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_1

    goto :goto_3

    .line 61
    :cond_1
    const/16 v5, 0xf

    if-lt v2, v5, :cond_7

    const/16 v5, 0x78

    if-le v2, v5, :cond_2

    goto :goto_2

    .line 66
    :cond_2
    const/16 v5, 0x32

    if-lt v3, v5, :cond_6

    const/16 v6, 0x64

    if-le v3, v6, :cond_3

    goto :goto_1

    .line 71
    :cond_3
    if-lt v4, v5, :cond_5

    if-le v4, v6, :cond_4

    goto :goto_0

    .line 75
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_5
    :goto_0
    const-string v5, "HwApsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check APS info invalid texturePercent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v0

    .line 67
    :cond_6
    :goto_1
    const-string v5, "HwApsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check APS info invalid brightnessPercent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v0

    .line 62
    :cond_7
    :goto_2
    const-string v5, "HwApsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check APSinfo invalid fps  ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v0

    .line 57
    :cond_8
    :goto_3
    const-string v5, "HwApsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check APSinfo invalid resolution ratio ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v0
.end method

.method private checkApsManagerService()Z
    .locals 2

    .line 35
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "aps_service"

    .line 37
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/aps/IHwApsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/aps/IHwApsManager;

    move-result-object v0

    iput-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    .line 39
    :cond_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    if-nez v0, :cond_1

    .line 40
    const-string v0, "HwApsManager"

    const-string v1, "checkApsManagerService->service is not started yet"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getDefault()Landroid/aps/HwApsManager;
    .locals 2

    const-class v0, Landroid/aps/HwApsManager;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Landroid/aps/HwApsManager;->sInstance:Landroid/aps/HwApsManager;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Landroid/aps/HwApsManager;

    invoke-direct {v1}, Landroid/aps/HwApsManager;-><init>()V

    sput-object v1, Landroid/aps/HwApsManager;->sInstance:Landroid/aps/HwApsManager;

    .line 82
    :cond_0
    sget-object v1, Landroid/aps/HwApsManager;->sInstance:Landroid/aps/HwApsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public deletePackageApsInfo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 307
    return v1

    .line 311
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->deletePackageApsInfo(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageApsInfo,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v1
.end method

.method public disableFeatures(I)Z
    .locals 5
    .param p1, "bitmask"    # I

    .line 334
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 335
    return v1

    .line 339
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->disableFeatures(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableFeatures,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return v1
.end method

.method public enableFeatures(I)Z
    .locals 5
    .param p1, "bitmask"    # I

    .line 348
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 349
    return v1

    .line 353
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->enableFeatures(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableFeatures,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v1
.end method

.method public getAllApsPackages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 377
    return-object v1

    .line 381
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0}, Landroid/aps/IHwApsManager;->getAllApsPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllApsPackages,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-object v1
.end method

.method public getAllPackagesApsInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/aps/ApsAppInfo;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 363
    return-object v1

    .line 367
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0}, Landroid/aps/IHwApsManager;->getAllPackagesApsInfo()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAllPackagesApsInfo,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-object v1
.end method

.method public getBrightness(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 279
    return v1

    .line 283
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getBrightness(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightness,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v1
.end method

.method public getDynamicFps(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 511
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 512
    return v1

    .line 516
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getDynamicFps(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFps,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v1
.end method

.method public getDynamicResolutionRatio(Ljava/lang/String;)F
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 474
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    .line 475
    return v1

    .line 479
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getDynamicResolutionRatio(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolution,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v1
.end method

.method public getFbSkip(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 589
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 590
    const-string v0, "HwApsManager"

    const-string v2, "getFbSkip, ApsManagerService not ready, return false!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v1

    .line 595
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getFbSkip(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFbSkip,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return v1
.end method

.method public getFps(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 251
    return v1

    .line 255
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getFps(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFps,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v1
.end method

.method public getHighpToLowp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 604
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 605
    const-string v0, "HwApsManager"

    const-string v2, "getHighpToLowp, ApsManagerService not ready, return false!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return v1

    .line 610
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getHighpToLowp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHighpToLowp,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v1
.end method

.method public getMaxFps(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 265
    return v1

    .line 269
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getMaxFps(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxFps,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v1
.end method

.method public getMipMap(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 634
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    const-string v0, "HwApsManager"

    const-string v1, "getMipMap, ApsManagerService not ready, return false!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, -0x2

    return v0

    .line 640
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getMipMap(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMipMap,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v1, 0x0

    return v1
.end method

.method public getPackageApsInfo(Ljava/lang/String;)Landroid/aps/ApsAppInfo;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    return-object v1

    .line 227
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getPackageApsInfo(Ljava/lang/String;)Landroid/aps/ApsAppInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageApsInfo,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-object v1
.end method

.method public getResolution(Ljava/lang/String;)F
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    .line 237
    return v1

    .line 241
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getResolution(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolution,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v1
.end method

.method public getSeviceVersion()F
    .locals 4

    .line 421
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 426
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0}, Landroid/aps/IHwApsManager;->getSeviceVersion()F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSeviceVersion,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v1, 0x0

    return v1
.end method

.method public getShadowMap(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 619
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const-string v0, "HwApsManager"

    const-string v1, "getShadowMap, ApsManagerService not ready, return false!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, -0x2

    return v0

    .line 625
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getShadowMap(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShadowMap,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v1, 0x0

    return v1
.end method

.method public getTexture(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 297
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->getTexture(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTexture,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v1
.end method

.method public isFeaturesEnabled(I)I
    .locals 5
    .param p1, "bitmask"    # I

    .line 320
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 321
    return v1

    .line 325
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->isFeaturesEnabled(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFeaturesEnabled,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v1
.end method

.method public registerCallback(Ljava/lang/String;Landroid/aps/IApsManagerServiceCallback;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/aps/IApsManagerServiceCallback;

    .line 405
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 406
    return v1

    .line 410
    :cond_0
    :try_start_0
    const-string v0, "HwApsManager"

    const-string v2, "HwApsManagerService, registerCallback, start !"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->registerCallback(Ljava/lang/String;Landroid/aps/IApsManagerServiceCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerCallback,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v1
.end method

.method public setBrightness(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "ratioPercent"    # I

    .line 176
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, -0x2

    return v0

    .line 181
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->setBrightness(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrightness,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, -0x1

    return v1
.end method

.method public setDescentGradeResolution(Ljava/lang/String;IZ)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "reduceLevel"    # I
    .param p3, "switchable"    # Z

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/aps/IHwApsManager;->setDescentGradeResolution(Ljava/lang/String;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDescentGradeResolution,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, -0x1

    return v1
.end method

.method public setDynamicFps(Ljava/lang/String;I)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fps"    # I

    .line 488
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    const/4 v0, -0x2

    return v0

    .line 494
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    const/16 v1, 0xf

    if-lt p2, v1, :cond_1

    const/16 v1, 0x78

    if-ge v1, p2, :cond_2

    .line 495
    :cond_1
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDynamicFps, invalid param fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APSLog, setDynamicFps: pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",retCode:-1(invalid param)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return v0

    .line 502
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v1, p1, p2}, Landroid/aps/IHwApsManager;->setDynamicFps(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDynamicFps,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v0
.end method

.method public setDynamicResolutionRatio(Ljava/lang/String;F)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "ratio"    # F

    .line 454
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const/4 v0, -0x2

    return v0

    .line 459
    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, p2, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    goto :goto_0

    .line 465
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->setDynamicResolutionRatio(Ljava/lang/String;F)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDynamicResolutionRatio,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return v1

    .line 460
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    const-string v0, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDynamicResolutionRatio, invalid param ratio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return v1
.end method

.method public setFbSkip(Ljava/lang/String;Z)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "onoff"    # Z

    .line 525
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    const/4 v0, -0x2

    return v0

    .line 530
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->setFbSkip(Ljava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFbSkip,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, -0x1

    return v1
.end method

.method public setFps(Ljava/lang/String;I)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fps"    # I

    .line 136
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, -0x2

    return v0

    .line 141
    :cond_0
    const/16 v0, 0xf

    const/4 v1, -0x1

    if-lt p2, v0, :cond_2

    const/16 v0, 0x78

    if-ge v0, p2, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->setFps(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFps,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v1

    .line 142
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    const-string v0, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFps, invalid param fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v1
.end method

.method public setHighpToLowp(Ljava/lang/String;Z)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "onoff"    # Z

    .line 539
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const/4 v0, -0x2

    return v0

    .line 544
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->setHighpToLowp(Ljava/lang/String;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHighpToLowp,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v1, -0x1

    return v1
.end method

.method public setLowResolutionMode(I)I
    .locals 4
    .param p1, "lowResolutionMode"    # I

    .line 92
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, -0x2

    return v0

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->setLowResolutionMode(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowResolutionMode,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, -0x1

    return v1
.end method

.method public setMaxFps(Ljava/lang/String;I)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fps"    # I

    .line 156
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, -0x2

    return v0

    .line 161
    :cond_0
    const/16 v0, 0xf

    const/4 v1, -0x1

    if-lt p2, v0, :cond_2

    const/16 v0, 0x78

    if-ge v0, p2, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->setMaxFps(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxFps,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v1

    .line 162
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    const-string v0, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxFps, invalid param fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v1
.end method

.method public setMipMap(Ljava/lang/String;I)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 571
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    const/4 v0, -0x2

    return v0

    .line 575
    :cond_0
    const/4 v0, -0x1

    if-ltz p2, :cond_2

    const/4 v1, 0x3

    if-ge v1, p2, :cond_1

    goto :goto_0

    .line 580
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v1, p1, p2}, Landroid/aps/IHwApsManager;->setMipMap(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMipMap,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v0

    .line 576
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v0
.end method

.method public setPackageApsInfo(Ljava/lang/String;Landroid/aps/ApsAppInfo;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/aps/ApsAppInfo;

    .line 204
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v0, -0x2

    return v0

    .line 208
    :cond_0
    invoke-direct {p0, p2}, Landroid/aps/HwApsManager;->checkApsInfo(Landroid/aps/ApsAppInfo;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 209
    return v1

    .line 213
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->setPackageApsInfo(Ljava/lang/String;Landroid/aps/ApsAppInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPackageApsInfo,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v1
.end method

.method public setResolution(Ljava/lang/String;FZ)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "ratio"    # F
    .param p3, "switchable"    # Z

    .line 106
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, -0x2

    return v0

    .line 111
    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, p2, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/aps/IHwApsManager;->setResolution(Ljava/lang/String;FZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setResolution,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v1

    .line 112
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    const-string v0, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResolution, invalid param ratio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v1
.end method

.method public setShadowMap(Ljava/lang/String;I)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 553
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const/4 v0, -0x2

    return v0

    .line 557
    :cond_0
    const/4 v0, -0x1

    if-ltz p2, :cond_2

    const/4 v1, 0x3

    if-ge v1, p2, :cond_1

    goto :goto_0

    .line 562
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v1, p1, p2}, Landroid/aps/IHwApsManager;->setShadowMap(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShadowMap,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return v0

    .line 558
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return v0
.end method

.method public setTexture(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "ratioPercent"    # I

    .line 190
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, -0x2

    return v0

    .line 195
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1, p2}, Landroid/aps/IHwApsManager;->setTexture(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwApsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTexture,ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, -0x1

    return v1
.end method

.method public stopPackages(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 435
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 436
    return v1

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->stopPackages(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopPackages,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v1
.end method

.method public updateApsInfo(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/aps/ApsAppInfo;",
            ">;)Z"
        }
    .end annotation

    .line 390
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/aps/ApsAppInfo;>;"
    invoke-direct {p0}, Landroid/aps/HwApsManager;->checkApsManagerService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 391
    return v1

    .line 395
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/aps/HwApsManager;->mApsService:Landroid/aps/IHwApsManager;

    invoke-interface {v0, p1}, Landroid/aps/IHwApsManager;->updateApsInfo(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "HwApsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateApsInfo,ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return v1
.end method
