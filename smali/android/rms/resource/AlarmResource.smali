.class public final Landroid/rms/resource/AlarmResource;
.super Landroid/rms/HwSysCountRes;
.source "AlarmResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.AlarmResource"

.field private static mAlarmResource:Landroid/rms/resource/AlarmResource;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 50
    const-string v0, "RMS.AlarmResource"

    const/16 v1, 0xd

    invoke-direct {p0, v1, v0}, Landroid/rms/HwSysCountRes;-><init>(ILjava/lang/String;)V

    .line 51
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/AlarmResource;
    .locals 3

    const-class v0, Landroid/rms/resource/AlarmResource;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Landroid/rms/resource/AlarmResource;->mAlarmResource:Landroid/rms/resource/AlarmResource;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Landroid/rms/resource/AlarmResource;

    invoke-direct {v1}, Landroid/rms/resource/AlarmResource;-><init>()V

    sput-object v1, Landroid/rms/resource/AlarmResource;->mAlarmResource:Landroid/rms/resource/AlarmResource;

    .line 57
    :cond_0
    sget-object v1, Landroid/rms/resource/AlarmResource;->mAlarmResource:Landroid/rms/resource/AlarmResource;

    invoke-virtual {v1}, Landroid/rms/resource/AlarmResource;->getConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.AlarmResource"

    const-string v2, "getInstance create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    sget-object v1, Landroid/rms/resource/AlarmResource;->mAlarmResource:Landroid/rms/resource/AlarmResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 61
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.AlarmResource"

    const-string v2, "RMS not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acquire(ILjava/lang/String;II)I
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I
    .param p4, "count"    # I

    .line 68
    const/4 v0, 0x1

    .line 69
    .local v0, "strategy":I
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysCountRes;->getTypeId(ILjava/lang/String;I)I

    move-result v1

    .line 70
    .local v1, "typeID":I
    iget-object v2, p0, Landroid/rms/resource/AlarmResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/rms/resource/AlarmResource;->isResourceCountOverload(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/rms/resource/AlarmResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    iget-object v2, p0, Landroid/rms/resource/AlarmResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/rms/config/ResourceConfig;->getResourceStrategy()I

    move-result v0

    .line 73
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.AlarmResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverloadStrategy CountOverload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 75
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/rms/utils/Utils;->HWFLOW:Z

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "RMS.AlarmResource"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    return v0
.end method

.method protected createBundleForResource(JILandroid/rms/config/ResourceConfig;Landroid/rms/control/ResourceCountControl;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "id"    # J
    .param p3, "typeID"    # I
    .param p4, "config"    # Landroid/rms/config/ResourceConfig;
    .param p5, "mResourceCountControl"    # Landroid/rms/control/ResourceCountControl;
    .param p6, "pkg"    # Ljava/lang/String;

    .line 84
    if-eqz p4, :cond_2

    if-nez p5, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "RMS.AlarmResource"

    const-string v1, "createBundleForResource Call In AlarmResource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "hard_threshold"

    invoke-virtual {p4}, Landroid/rms/config/ResourceConfig;->getResouceUrgentThreshold()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v1, "current_count"

    invoke-virtual {p5, p1, p2}, Landroid/rms/control/ResourceCountControl;->getTotalCount(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v1, "isInWhiteList"

    const/4 v2, 0x0

    invoke-virtual {p0, p6, v2}, Landroid/rms/resource/AlarmResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    return-object v0

    .line 85
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
