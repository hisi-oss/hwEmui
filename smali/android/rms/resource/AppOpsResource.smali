.class public final Landroid/rms/resource/AppOpsResource;
.super Landroid/rms/HwSysCountRes;
.source "AppOpsResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.AppOpsResource"

.field private static mAppOpsResource:Landroid/rms/resource/AppOpsResource;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 44
    const-string v0, "RMS.AppOpsResource"

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Landroid/rms/HwSysCountRes;-><init>(ILjava/lang/String;)V

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/AppOpsResource;
    .locals 3

    const-class v0, Landroid/rms/resource/AppOpsResource;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Landroid/rms/resource/AppOpsResource;->mAppOpsResource:Landroid/rms/resource/AppOpsResource;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Landroid/rms/resource/AppOpsResource;

    invoke-direct {v1}, Landroid/rms/resource/AppOpsResource;-><init>()V

    sput-object v1, Landroid/rms/resource/AppOpsResource;->mAppOpsResource:Landroid/rms/resource/AppOpsResource;

    .line 51
    :cond_0
    sget-object v1, Landroid/rms/resource/AppOpsResource;->mAppOpsResource:Landroid/rms/resource/AppOpsResource;

    invoke-virtual {v1}, Landroid/rms/resource/AppOpsResource;->getConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.AppOpsResource"

    const-string v2, "getInstance create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_1
    sget-object v1, Landroid/rms/resource/AppOpsResource;->mAppOpsResource:Landroid/rms/resource/AppOpsResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 55
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.AppOpsResource"

    const-string v2, "RMS not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acquire(ILjava/lang/String;II)I
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I
    .param p4, "count"    # I

    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, "strategy":I
    iget-object v1, p0, Landroid/rms/resource/AppOpsResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/rms/resource/AppOpsResource;->isResourceCountOverload(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/rms/resource/AppOpsResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Landroid/rms/resource/AppOpsResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/rms/config/ResourceConfig;->getResourceStrategy()I

    move-result v0

    .line 66
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.AppOpsResource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOverloadStrategy CountOverload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    sget-boolean v1, Landroid/rms/utils/Utils;->HWFLOW:Z

    if-eqz v1, :cond_1

    .line 70
    return v0

    .line 72
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public clear(ILjava/lang/String;I)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysCountRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v0

    .line 84
    .local v0, "id":J
    iget-object v2, p0, Landroid/rms/resource/AppOpsResource;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    invoke-virtual {v2, v0, v1}, Landroid/rms/control/ResourceCountControl;->removeResourceCountRecord(J)V

    .line 85
    return-void
.end method

.method public release(ILjava/lang/String;I)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysCountRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v0

    .line 78
    .local v0, "id":J
    iget-object v2, p0, Landroid/rms/resource/AppOpsResource;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    invoke-virtual {v2, v0, v1}, Landroid/rms/control/ResourceCountControl;->reduceCurrentCount(J)V

    .line 79
    return-void
.end method
