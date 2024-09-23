.class public final Landroid/rms/resource/NotificationResource;
.super Landroid/rms/HwSysSpeedRes;
.source "NotificationResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.NotificationResource"

.field private static mNotificationResource:Landroid/rms/resource/NotificationResource;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    const-string v0, "RMS.NotificationResource"

    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Landroid/rms/HwSysSpeedRes;-><init>(ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/NotificationResource;
    .locals 3

    const-class v0, Landroid/rms/resource/NotificationResource;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Landroid/rms/resource/NotificationResource;->mNotificationResource:Landroid/rms/resource/NotificationResource;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/rms/resource/NotificationResource;

    invoke-direct {v1}, Landroid/rms/resource/NotificationResource;-><init>()V

    sput-object v1, Landroid/rms/resource/NotificationResource;->mNotificationResource:Landroid/rms/resource/NotificationResource;

    .line 54
    :cond_0
    sget-object v1, Landroid/rms/resource/NotificationResource;->mNotificationResource:Landroid/rms/resource/NotificationResource;

    invoke-virtual {v1}, Landroid/rms/resource/NotificationResource;->getConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.NotificationResource"

    const-string v2, "getInstance create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    sget-object v1, Landroid/rms/resource/NotificationResource;->mNotificationResource:Landroid/rms/resource/NotificationResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 58
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.NotificationResource"

    const-string v2, "RMS not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 50
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

    .line 65
    const/4 v0, 0x1

    .line 66
    .local v0, "strategy":I
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysSpeedRes;->getTypeId(ILjava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "typeID":I
    iget-object v2, p0, Landroid/rms/resource/NotificationResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2, v1}, Landroid/rms/resource/NotificationResource;->isResourceSpeedOverload(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/rms/resource/NotificationResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Landroid/rms/resource/NotificationResource;->getSpeedOverloadStrategy(I)I

    move-result v0

    .line 73
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.NotificationResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverloadStrategy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return v0
.end method

.method public clear(ILjava/lang/String;I)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysSpeedRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v0

    .line 82
    .local v0, "id":J
    iget-object v2, p0, Landroid/rms/resource/NotificationResource;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v2, v0, v1}, Landroid/rms/control/ResourceFlowControl;->removeResourceSpeedRecord(J)V

    .line 83
    iget-object v2, p0, Landroid/rms/resource/NotificationResource;->mResourceManger:Landroid/rms/HwSysResManager;

    const/16 v3, 0xa

    invoke-virtual {v2, p1, v3}, Landroid/rms/HwSysResManager;->clearResourceStatus(II)V

    .line 84
    return-void
.end method
