.class public final Landroid/rms/HwSysResManager;
.super Ljava/lang/Object;
.source "HwSysResManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.HwSysResManager"

.field private static mResourceManager:Landroid/rms/HwSysResManager;


# instance fields
.field private sService:Landroid/rms/IHwSysResManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/HwSysResManager;
    .locals 2

    const-class v0, Landroid/rms/HwSysResManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Landroid/rms/HwSysResManager;->mResourceManager:Landroid/rms/HwSysResManager;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Landroid/rms/HwSysResManager;

    invoke-direct {v1}, Landroid/rms/HwSysResManager;-><init>()V

    sput-object v1, Landroid/rms/HwSysResManager;->mResourceManager:Landroid/rms/HwSysResManager;

    .line 93
    :cond_0
    sget-object v1, Landroid/rms/HwSysResManager;->mResourceManager:Landroid/rms/HwSysResManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Landroid/rms/IHwSysResManager;
    .locals 2

    .line 98
    iget-object v0, p0, Landroid/rms/HwSysResManager;->sService:Landroid/rms/IHwSysResManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Landroid/rms/HwSysResManager;->sService:Landroid/rms/IHwSysResManager;

    return-object v0

    .line 101
    :cond_0
    const-string v0, "hwsysresmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/rms/IHwSysResManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/rms/IHwSysResManager;

    move-result-object v1

    iput-object v1, p0, Landroid/rms/HwSysResManager;->sService:Landroid/rms/IHwSysResManager;

    .line 103
    iget-object v1, p0, Landroid/rms/HwSysResManager;->sService:Landroid/rms/IHwSysResManager;

    return-object v1
.end method


# virtual methods
.method public acquireSysRes(ILandroid/net/Uri;Landroid/database/IContentObserver;Landroid/os/Bundle;)I
    .locals 4
    .param p1, "resourceType"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 273
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 274
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 275
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "acquireSysRes service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    const/4 v1, 0x2

    return v1

    .line 279
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/rms/IHwSysResManager;->acquireSysRes(ILandroid/net/Uri;Landroid/database/IContentObserver;Landroid/os/Bundle;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 280
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "acquireSysRes RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public clearResourceStatus(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "resourceType"    # I

    .line 259
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 260
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 261
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "clearResourceStatus service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    return-void

    .line 265
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/rms/IHwSysResManager;->clearResourceStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "clearResourceStatus RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public configUpdate()Z
    .locals 5

    .line 509
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 510
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 511
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "configUpdate service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    return v1

    .line 515
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/rms/IHwSysResManager;->configUpdate()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 516
    :catch_0
    move-exception v2

    .line 518
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "configUpdate RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public custConfigUpdate()Z
    .locals 5

    .line 525
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 526
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 527
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "csutConfigUpdate service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    return v1

    .line 531
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/rms/IHwSysResManager;->custConfigUpdate()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 532
    :catch_0
    move-exception v2

    .line 534
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "custConfigUpdate RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public disableFeature(I)V
    .locals 4
    .param p1, "type"    # I

    .line 481
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 482
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 483
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "disableFeature service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    return-void

    .line 487
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->disableFeature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    goto :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "disableFeature RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public dispatch(ILandroid/app/mtm/MultiTaskPolicy;)V
    .locals 4
    .param p1, "resourceType"    # I
    .param p2, "policy"    # Landroid/app/mtm/MultiTaskPolicy;

    .line 319
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 320
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 321
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "dispatch service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    return-void

    .line 325
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/rms/IHwSysResManager;->dispatch(ILandroid/app/mtm/MultiTaskPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "dispatch RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchRPolicy(Landroid/rms/iaware/RPolicyData;)V
    .locals 4
    .param p1, "policy"    # Landroid/rms/iaware/RPolicyData;

    .line 495
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 496
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 497
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "dispatchRPolicy service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    return-void

    .line 501
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->dispatchRPolicy(Landroid/rms/iaware/RPolicyData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "dispatchRPolicy RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public enableFeature(I)V
    .locals 4
    .param p1, "type"    # I

    .line 467
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 468
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 469
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "enableFeature service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    return-void

    .line 473
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->enableFeature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "enableFeature RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public fetchBigDataByVersion(IIZZ)Ljava/lang/String;
    .locals 5
    .param p1, "iVer"    # I
    .param p2, "featureId"    # I
    .param p3, "beta"    # Z
    .param p4, "clear"    # Z

    .line 685
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 686
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 687
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "iaware2.0 fetch data service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    return-object v1

    .line 691
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/rms/IHwSysResManager;->fetchBigDataByVersion(IIZZ)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 692
    :catch_0
    move-exception v2

    .line 694
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "iaware2.0 fetch data RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public fetchDFTDataByVersion(IIZZZ)Ljava/lang/String;
    .locals 8
    .param p1, "iVer"    # I
    .param p2, "featureId"    # I
    .param p3, "beta"    # Z
    .param p4, "clear"    # Z
    .param p5, "betaEncode"    # Z

    .line 702
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v6

    .line 703
    .local v6, "service":Landroid/rms/IHwSysResManager;
    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 704
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-eqz v0, :cond_0

    const-string v0, "RMS.HwSysResManager"

    const-string v1, "iaware3.0 fetch dft data service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    return-object v7

    .line 708
    :cond_1
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/rms/IHwSysResManager;->fetchDFTDataByVersion(IIZZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 709
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_2

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "iaware3.0 fetch dft data RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v7
.end method

.method public getDumpData(ILjava/util/List;)I
    .locals 5
    .param p1, "time"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/rms/iaware/DumpData;",
            ">;)I"
        }
    .end annotation

    .line 586
    .local p2, "dumpData":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/DumpData;>;"
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 587
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 588
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getDumpData service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    return v1

    .line 592
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/rms/IHwSysResManager;->getDumpData(ILjava/util/List;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 593
    :catch_0
    move-exception v2

    .line 595
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getDumpData RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public getFrequentIM(I)Ljava/util/List;
    .locals 5
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 817
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 818
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 819
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getFrequentIM service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    return-object v1

    .line 823
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->getFrequentIM(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 824
    :catch_0
    move-exception v2

    .line 826
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getFrequentIM RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public getHabitTopN(I)Ljava/util/List;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 934
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 935
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 936
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getHabitTopN service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    return-object v1

    .line 940
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->getHabitTopN(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 941
    :catch_0
    move-exception v2

    .line 943
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getHabitTopN RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public getIAwareProtectList(I)Ljava/util/List;
    .locals 5
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 367
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 368
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getIAwareProtectList service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    return-object v1

    .line 372
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->getIAwareProtectList(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 373
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getIAwareProtectList RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public getLongTimeRunningApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 382
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 383
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 384
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getLongTimeRunningApps service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    return-object v1

    .line 388
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/rms/IHwSysResManager;->getLongTimeRunningApps()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 389
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getLongTimeRunningApps RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public getMemAvaliable()J
    .locals 6

    .line 451
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 452
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 453
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_0

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getMemAvaliable service is null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    return-wide v1

    .line 457
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/rms/IHwSysResManager;->getMemAvaliable()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 458
    :catch_0
    move-exception v3

    .line 460
    .local v3, "e":Landroid/os/RemoteException;
    sget-boolean v4, Landroid/util/Log;->HWINFO:Z

    if-eqz v4, :cond_2

    const-string v4, "RMS.HwSysResManager"

    const-string v5, "getMemAvaliable RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v1
.end method

.method public getMemRepairProcGroup(I)Ljava/util/List;
    .locals 5
    .param p1, "sceneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/rms/iaware/memrepair/MemRepairPkgInfo;",
            ">;"
        }
    .end annotation

    .line 799
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 800
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 801
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getMemRepairProcGroup service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    return-object v1

    .line 805
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->getMemRepairProcGroup(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 806
    :catch_0
    move-exception v2

    .line 808
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getMemRepairProcGroup RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public getMostFrequentUsedApps(I)Ljava/util/List;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 398
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/rms/HwSysResManager;->getMostFrequentUsedApps(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMostFrequentUsedApps(II)Ljava/util/List;
    .locals 5
    .param p1, "n"    # I
    .param p2, "minCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 402
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 403
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getMostFrequentUsedApps service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    return-object v1

    .line 407
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/rms/IHwSysResManager;->getMostFrequentUsedApps(II)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 408
    :catch_0
    move-exception v2

    .line 410
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getMostFrequentUsedApps RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public getNetLocationStrategy(Ljava/lang/String;II)Landroid/rms/iaware/NetLocationStrategy;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # I

    .line 918
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 919
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 920
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getNetLocationStrategy service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    return-object v1

    .line 924
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/rms/IHwSysResManager;->getNetLocationStrategy(Ljava/lang/String;II)Landroid/rms/iaware/NetLocationStrategy;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 925
    :catch_0
    move-exception v2

    .line 927
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getNetLocationStrategy RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public getPid(Ljava/lang/String;)I
    .locals 5
    .param p1, "procName"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "pid":I
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v1

    .line 146
    .local v1, "service":Landroid/rms/IHwSysResManager;
    if-nez v1, :cond_1

    .line 147
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getPId service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    return v0

    .line 151
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Landroid/rms/IHwSysResManager;->getPid(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getPid catch RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v0
.end method

.method public getPss(I)J
    .locals 6
    .param p1, "pid"    # I

    .line 159
    const-wide/16 v0, 0x0

    .line 160
    .local v0, "pss":J
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v2

    .line 161
    .local v2, "service":Landroid/rms/IHwSysResManager;
    if-nez v2, :cond_1

    .line 162
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_0

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getPId service is null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    return-wide v0

    .line 166
    :cond_1
    :try_start_0
    invoke-interface {v2, p1}, Landroid/rms/IHwSysResManager;->getPss(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 167
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Landroid/os/RemoteException;
    sget-boolean v4, Landroid/util/Log;->HWINFO:Z

    if-eqz v4, :cond_2

    const-string v4, "RMS.HwSysResManager"

    const-string v5, "getPss catch RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    return-wide v0
.end method

.method public getResourceConfig(I)[Landroid/rms/config/ResourceConfig;
    .locals 5
    .param p1, "resourceType"    # I

    .line 107
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 108
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 109
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getResourceConfig service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-object v1

    .line 113
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->getResourceConfig(I)[Landroid/rms/config/ResourceConfig;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v2, "config":[Landroid/rms/config/ResourceConfig;
    if-eqz v2, :cond_2

    return-object v2

    .line 117
    .end local v2    # "config":[Landroid/rms/config/ResourceConfig;
    :cond_2
    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_3

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "Should never happen!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public getStatisticsData(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/rms/iaware/StatisticsData;",
            ">;)I"
        }
    .end annotation

    .line 601
    .local p1, "statisticsData":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/StatisticsData;>;"
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 602
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 603
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getStatisticsData service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    return v1

    .line 607
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->getStatisticsData(Ljava/util/List;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 608
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getStatisticsData RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public getTypeTopN([I)Landroid/os/Bundle;
    .locals 5
    .param p1, "appTypes"    # [I

    .line 949
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 950
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 951
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getTypeTopN service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_0
    return-object v1

    .line 955
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->getTypeTopN([I)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 956
    :catch_0
    move-exception v2

    .line 958
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getTypeTopN RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public getWhiteList(II)Ljava/lang/String;
    .locals 5
    .param p1, "resourceType"    # I
    .param p2, "type"    # I

    .line 124
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 125
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 126
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "getWhiteList service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    return-object v1

    .line 130
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/rms/IHwSysResManager;->getWhiteList(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v2, "whiteList":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 133
    return-object v2

    .line 137
    .end local v2    # "whiteList":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_3

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "getWhiteList catch RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 556
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 557
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 558
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "init service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    return-void

    .line 562
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->init(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    goto :goto_0

    .line 563
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "init RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public isEnableFakeForegroundControl()Z
    .locals 5

    .line 749
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 750
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 751
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "isEnableFakeForegroundControl service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    return v1

    .line 755
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/rms/IHwSysResManager;->isEnableFakeForegroundControl()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 756
    :catch_0
    move-exception v2

    .line 758
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "isEnableFakeForegroundControl RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public isFakeForegroundProcess(Ljava/lang/String;)Z
    .locals 5
    .param p1, "process"    # Ljava/lang/String;

    .line 732
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 733
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 734
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "isFakeForegroundProcess service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    return v1

    .line 738
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->isFakeForegroundProcess(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 739
    :catch_0
    move-exception v2

    .line 741
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "isFakeForegroundProcess RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public isResourceNeeded(I)Z
    .locals 5
    .param p1, "resourceid"    # I

    .line 570
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 571
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 572
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "isResourceNeeded service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return v1

    .line 576
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->isResourceNeeded(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 577
    :catch_0
    move-exception v2

    .line 579
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "isResourceNeeded RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public isScene(I)Z
    .locals 5
    .param p1, "scene"    # I

    .line 213
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 214
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 215
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "HwSysResManager_isGameScene service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    return v1

    .line 219
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->isScene(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 220
    const/4 v1, 0x1

    return v1

    .line 224
    :cond_2
    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_3

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "isGameScene catch RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v1
.end method

.method public isVisibleWindow(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "userid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 886
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 887
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 888
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "isVisibleWindow service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    return v1

    .line 892
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/rms/IHwSysResManager;->isVisibleWindow(ILjava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 893
    :catch_0
    move-exception v2

    .line 895
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "isVisibleWindow RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method public noteProcessStart(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "started"    # Z
    .param p6, "launcherMode"    # Ljava/lang/String;
    .param p7, "reason"    # Ljava/lang/String;

    .line 652
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v9

    .line 653
    .local v9, "service":Landroid/rms/IHwSysResManager;
    if-nez v9, :cond_1

    .line 654
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-eqz v0, :cond_0

    const-string v0, "RMS.HwSysResManager"

    const-string v1, "getStatisticsData service is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_0
    return-void

    .line 658
    :cond_1
    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    :try_start_0
    invoke-interface/range {v1 .. v8}, Landroid/rms/IHwSysResManager;->noteProcessStart(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    return-void

    .line 660
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_2

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "getStatisticsData RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method public notifyResourceStatus(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resourceType"    # I
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "resourceStatus"    # I
    .param p4, "bd"    # Landroid/os/Bundle;

    .line 297
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 298
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 299
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "notifyResourceStatus service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    return-void

    .line 303
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/rms/IHwSysResManager;->notifyResourceStatus(ILjava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "notifyResourceStatus RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public recordResourceOverloadStatus(ILjava/lang/String;IIIILandroid/os/Bundle;)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "resourceType"    # I
    .param p4, "overloadNum"    # I
    .param p5, "speedOverLoadPeriod"    # I
    .param p6, "totalNum"    # I
    .param p7, "args"    # Landroid/os/Bundle;

    .line 245
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v9

    .line 246
    .local v9, "service":Landroid/rms/IHwSysResManager;
    if-nez v9, :cond_1

    .line 247
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-eqz v0, :cond_0

    const-string v0, "RMS.HwSysResManager"

    const-string v1, "recordResourceOverloadStatus  service is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    return-void

    .line 251
    :cond_1
    move-object v1, v9

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    :try_start_0
    invoke-interface/range {v1 .. v8}, Landroid/rms/IHwSysResManager;->recordResourceOverloadStatus(ILjava/lang/String;IIIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_2

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "reportResourceSpeedStatus RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public registerDevModeMethod(ILandroid/rms/iaware/IDeviceSettingCallback;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/rms/iaware/IDeviceSettingCallback;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 965
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 966
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 967
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "registerDevModeMethod service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    return-void

    .line 971
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/rms/IHwSysResManager;->registerDevModeMethod(ILandroid/rms/iaware/IDeviceSettingCallback;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    goto :goto_0

    .line 972
    :catch_0
    move-exception v1

    .line 974
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "registerDevModeMethod RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public registerProcessStateChangeObserver(Landroid/rms/IProcessStateChangeObserver;)Z
    .locals 5
    .param p1, "observer"    # Landroid/rms/IProcessStateChangeObserver;

    .line 617
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 618
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 619
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "HwSysResManager_registerProcessStateChangeObserver service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    return v1

    .line 623
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->registerProcessStateChangeObserver(Landroid/rms/IProcessStateChangeObserver;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 624
    const/4 v1, 0x1

    return v1

    .line 628
    :cond_2
    goto :goto_0

    .line 626
    :catch_0
    move-exception v2

    .line 627
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_3

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "registerProcessStateChangeObserver catch RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v1
.end method

.method public registerResourceCallback(Landroid/rms/IUpdateWhiteListCallback;)Z
    .locals 5
    .param p1, "hwu"    # Landroid/rms/IUpdateWhiteListCallback;

    .line 178
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 179
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 180
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "HwSysResManager_registerResourceCallback service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    return v1

    .line 184
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->registerResourceUpdateCallback(Landroid/rms/IUpdateWhiteListCallback;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 185
    const/4 v1, 0x1

    return v1

    .line 189
    :cond_2
    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_3

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "registerResourceCallback catch RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v1
.end method

.method public registerSceneCallback(Landroid/os/IBinder;I)Z
    .locals 5
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "scenes"    # I

    .line 196
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 197
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 198
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "HwSysResManager_registerSceneCallback service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    return v1

    .line 202
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/rms/IHwSysResManager;->registerSceneCallback(Landroid/os/IBinder;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 203
    const/4 v1, 0x1

    return v1

    .line 207
    :cond_2
    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_3

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "registerSceneCallback catch RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    const-string v2, "RMS.HwSysResManager"

    const-string v3, "HwSysResManager_registerSceneCallback failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v1
.end method

.method public reportAppType(Ljava/lang/String;IZI)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .param p3, "status"    # Z
    .param p4, "attr"    # I

    .line 418
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 419
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 420
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "reportAppType error HwSysResManagerService is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    return-void

    .line 424
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/rms/IHwSysResManager;->reportAppType(Ljava/lang/String;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "reportAppType RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public reportData(Landroid/rms/iaware/CollectData;)V
    .locals 4
    .param p1, "data"    # Landroid/rms/iaware/CollectData;

    .line 334
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 335
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 336
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "reportData service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    return-void

    .line 340
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->reportData(Landroid/rms/iaware/CollectData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "reportData RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public reportDataWithCallback(Landroid/rms/iaware/CollectData;Landroid/rms/iaware/IReportDataCallback;)V
    .locals 4
    .param p1, "data"    # Landroid/rms/iaware/CollectData;
    .param p2, "callback"    # Landroid/rms/iaware/IReportDataCallback;

    .line 349
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 350
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 351
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "reportDataWithCallback service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    return-void

    .line 356
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/rms/IHwSysResManager;->reportDataWithCallback(Landroid/rms/iaware/CollectData;Landroid/rms/iaware/IReportDataCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "reportDataWithCallback RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public reportGoogleConn(Z)V
    .locals 5
    .param p1, "conn"    # Z

    .line 865
    sget-object v0, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_APPASSOC:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v0}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/rms/HwSysResManager;->isResourceNeeded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    return-void

    .line 869
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 870
    .local v0, "bundleArgs":Landroid/os/Bundle;
    const-string v1, "gms_conn"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 871
    const-string v1, "relationType"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 872
    new-instance v1, Landroid/rms/iaware/CollectData;

    sget-object v2, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_APPASSOC:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v2}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/rms/iaware/CollectData;-><init>(IJLandroid/os/Bundle;)V

    .line 873
    .local v1, "data":Landroid/rms/iaware/CollectData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 874
    .local v2, "origId":J
    invoke-static {}, Landroid/rms/HwSysResManager;->getInstance()Landroid/rms/HwSysResManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/rms/HwSysResManager;->reportData(Landroid/rms/iaware/CollectData;)V

    .line 875
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 876
    return-void
.end method

.method public reportHabitData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "habitData"    # Landroid/os/Bundle;

    .line 434
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 435
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 436
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "reportTopList error HwSysResManagerService is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    return-void

    .line 440
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->reportHabitData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "reportTopList RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public reportMediaKeyToIAware(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 833
    sget-object v0, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_MEDIA_BTN:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v0}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/rms/HwSysResManager;->isResourceNeeded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    return-void

    .line 837
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 838
    .local v0, "bundleArgs":Landroid/os/Bundle;
    const-string v1, "eventid"

    const/16 v2, 0x4e31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    const-string v1, "callUid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 840
    new-instance v1, Landroid/rms/iaware/CollectData;

    sget-object v2, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_MEDIA_BTN:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v2}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v2

    .line 841
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/rms/iaware/CollectData;-><init>(IJLandroid/os/Bundle;)V

    .line 842
    .local v1, "data":Landroid/rms/iaware/CollectData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 843
    .local v2, "id":J
    invoke-virtual {p0, v1}, Landroid/rms/HwSysResManager;->reportData(Landroid/rms/iaware/CollectData;)V

    .line 844
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    return-void
.end method

.method public reportProximitySensorEventToIAware(Z)V
    .locals 5
    .param p1, "positive"    # Z

    .line 782
    sget-object v0, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_SCENE_REC:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v0}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/rms/HwSysResManager;->isResourceNeeded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    return-void

    .line 786
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 787
    .local v0, "bundleArgs":Landroid/os/Bundle;
    const-string v1, "positive"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    const-string v1, "relationType"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    new-instance v1, Landroid/rms/iaware/CollectData;

    sget-object v2, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_SCENE_REC:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v2}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v2

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/rms/iaware/CollectData;-><init>(IJLandroid/os/Bundle;)V

    .line 791
    .local v1, "data":Landroid/rms/iaware/CollectData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 792
    .local v2, "id":J
    invoke-virtual {p0, v1}, Landroid/rms/HwSysResManager;->reportData(Landroid/rms/iaware/CollectData;)V

    .line 793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    return-void
.end method

.method public reportSysWakeUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 902
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 903
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 904
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "reportSysWakeUp service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    return-void

    .line 908
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->reportSysWakeUp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    goto :goto_0

    .line 909
    :catch_0
    move-exception v1

    .line 911
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "reportSysWakeUp RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public reportToastHiddenToIAware(II)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "hcode"    # I

    .line 849
    sget-object v0, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_APPASSOC:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v0}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/rms/HwSysResManager;->isResourceNeeded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    return-void

    .line 853
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 854
    .local v0, "bundleArgs":Landroid/os/Bundle;
    const-string v1, "window"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string v1, "hashcode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    const-string v1, "relationType"

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 857
    new-instance v1, Landroid/rms/iaware/CollectData;

    sget-object v2, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_APPASSOC:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v2}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v2

    .line 858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/rms/iaware/CollectData;-><init>(IJLandroid/os/Bundle;)V

    .line 859
    .local v1, "data":Landroid/rms/iaware/CollectData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 860
    .local v2, "id":J
    invoke-virtual {p0, v1}, Landroid/rms/HwSysResManager;->reportData(Landroid/rms/iaware/CollectData;)V

    .line 861
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 862
    return-void
.end method

.method public reportVibratorToIAware(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 765
    sget-object v0, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_APPASSOC:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v0}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/rms/HwSysResManager;->isResourceNeeded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    return-void

    .line 769
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 770
    .local v0, "bundleArgs":Landroid/os/Bundle;
    const-string v1, "tgtUid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 771
    const-string v1, "relationType"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 772
    new-instance v1, Landroid/rms/iaware/CollectData;

    sget-object v2, Landroid/rms/iaware/AwareConstant$ResourceType;->RESOURCE_APPASSOC:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v2}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v2

    .line 773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/rms/iaware/CollectData;-><init>(IJLandroid/os/Bundle;)V

    .line 774
    .local v1, "data":Landroid/rms/iaware/CollectData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 775
    .local v2, "id":J
    invoke-virtual {p0, v1}, Landroid/rms/HwSysResManager;->reportData(Landroid/rms/iaware/CollectData;)V

    .line 776
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 777
    return-void
.end method

.method public requestAppClean(Ljava/util/List;[IILjava/lang/String;I)V
    .locals 7
    .param p2, "userIdArray"    # [I
    .param p3, "level"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 541
    .local p1, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v6

    .line 542
    .local v6, "service":Landroid/rms/IHwSysResManager;
    if-nez v6, :cond_1

    .line 543
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-eqz v0, :cond_0

    const-string v0, "RMS.HwSysResManager"

    const-string v1, "requestAppClean service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    return-void

    .line 547
    :cond_1
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/rms/IHwSysResManager;->requestAppClean(Ljava/util/List;[IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_2

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "requestAppClean RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public saveBigData(IZ)Ljava/lang/String;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "clear"    # Z

    .line 668
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 669
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 670
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "saveBigData service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_0
    return-object v1

    .line 674
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/rms/IHwSysResManager;->saveBigData(IZ)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 675
    :catch_0
    move-exception v2

    .line 677
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "saveBigData RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    return-object v1
.end method

.method public triggerUpdateWhiteList()V
    .locals 4

    .line 231
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 232
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_0

    .line 233
    const-string v1, "RMS.HwSysResManager"

    const-string v2, "HwSysResManager_triggerUpdateWhiteList service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 237
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/rms/IHwSysResManager;->triggerUpdateWhiteList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RMS.HwSysResManager"

    const-string v3, "triggerUpdateWhiteList catch RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unRegisterProcessStateChangeObserver(Landroid/rms/IProcessStateChangeObserver;)Z
    .locals 5
    .param p1, "observer"    # Landroid/rms/IProcessStateChangeObserver;

    .line 634
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 635
    .local v0, "service":Landroid/rms/IHwSysResManager;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 636
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "HwSysResManager_unRegisterProcessStateChangeObserver service is null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    return v1

    .line 640
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->unRegisterProcessStateChangeObserver(Landroid/rms/IProcessStateChangeObserver;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 641
    const/4 v1, 0x1

    return v1

    .line 645
    :cond_2
    goto :goto_0

    .line 643
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Landroid/util/Log;->HWINFO:Z

    if-eqz v3, :cond_3

    const-string v3, "RMS.HwSysResManager"

    const-string v4, "unRegisterProcessStateChangeObserver catch RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v1
.end method

.method public unregisterDevModeMethod(ILandroid/rms/iaware/IDeviceSettingCallback;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/rms/iaware/IDeviceSettingCallback;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 979
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 980
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 981
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "unregisterDevModeMethod service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    return-void

    .line 985
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/rms/IHwSysResManager;->unregisterDevModeMethod(ILandroid/rms/iaware/IDeviceSettingCallback;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    goto :goto_0

    .line 986
    :catch_0
    move-exception v1

    .line 988
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "unregisterDevModeMethod RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public updateFakeForegroundList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 718
    .local p1, "processList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/rms/HwSysResManager;->getService()Landroid/rms/IHwSysResManager;

    move-result-object v0

    .line 719
    .local v0, "service":Landroid/rms/IHwSysResManager;
    if-nez v0, :cond_1

    .line 720
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.HwSysResManager"

    const-string v2, "updateFakeForegroundList service is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    return-void

    .line 724
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/rms/IHwSysResManager;->updateFakeForegroundList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    goto :goto_0

    .line 725
    :catch_0
    move-exception v1

    .line 727
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.HwSysResManager"

    const-string v3, "updateFakeForegroundList RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method
