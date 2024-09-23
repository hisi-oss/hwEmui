.class public final Landroid/rms/resource/AppServiceResource;
.super Landroid/rms/HwSysSpeedRes;
.source "AppServiceResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.AppServiceResource"

.field private static mAppServiceResource:Landroid/rms/resource/AppServiceResource;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    const-string v0, "RMS.AppServiceResource"

    const/16 v1, 0x11

    invoke-direct {p0, v1, v0}, Landroid/rms/HwSysSpeedRes;-><init>(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/AppServiceResource;
    .locals 3

    const-class v0, Landroid/rms/resource/AppServiceResource;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Landroid/rms/resource/AppServiceResource;->mAppServiceResource:Landroid/rms/resource/AppServiceResource;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Landroid/rms/resource/AppServiceResource;

    invoke-direct {v1}, Landroid/rms/resource/AppServiceResource;-><init>()V

    sput-object v1, Landroid/rms/resource/AppServiceResource;->mAppServiceResource:Landroid/rms/resource/AppServiceResource;

    .line 36
    :cond_0
    sget-object v1, Landroid/rms/resource/AppServiceResource;->mAppServiceResource:Landroid/rms/resource/AppServiceResource;

    invoke-virtual {v1}, Landroid/rms/resource/AppServiceResource;->getConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.AppServiceResource"

    const-string v2, "getInstance create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    sget-object v1, Landroid/rms/resource/AppServiceResource;->mAppServiceResource:Landroid/rms/resource/AppServiceResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 40
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.AppServiceResource"

    const-string v2, "RMS not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acquire(ILjava/lang/String;I)I
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 47
    const/4 v0, 0x1

    .line 48
    .local v0, "strategy":I
    iget-object v1, p0, Landroid/rms/resource/AppServiceResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-eqz v1, :cond_0

    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysSpeedRes;->getTypeId(ILjava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "typeID":I
    invoke-virtual {p0, p1, p2, v1}, Landroid/rms/resource/AppServiceResource;->isResourceSpeedOverload(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/rms/resource/AppServiceResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {p0, v1}, Landroid/rms/resource/AppServiceResource;->getSpeedOverloadStrategy(I)I

    move-result v0

    .line 52
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.AppServiceResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverloadStrategy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1    # "typeID":I
    :cond_0
    return v0
.end method

.method public clear(ILjava/lang/String;I)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysSpeedRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v0

    .line 61
    .local v0, "id":J
    iget-object v2, p0, Landroid/rms/resource/AppServiceResource;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v2, v0, v1}, Landroid/rms/control/ResourceFlowControl;->removeResourceSpeedRecord(J)V

    .line 62
    iget-object v2, p0, Landroid/rms/resource/AppServiceResource;->mResourceManger:Landroid/rms/HwSysResManager;

    const/16 v3, 0x11

    invoke-virtual {v2, p1, v3}, Landroid/rms/HwSysResManager;->clearResourceStatus(II)V

    .line 63
    return-void
.end method
