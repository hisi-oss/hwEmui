.class public final Landroid/rms/resource/ReceiverResource;
.super Landroid/rms/HwSysCountRes;
.source "ReceiverResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.ReceiverResource"

.field private static mReceiverResource:Landroid/rms/resource/ReceiverResource;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 52
    const-string v0, "RMS.ReceiverResource"

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Landroid/rms/HwSysCountRes;-><init>(ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/ReceiverResource;
    .locals 3

    const-class v0, Landroid/rms/resource/ReceiverResource;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Landroid/rms/resource/ReceiverResource;->mReceiverResource:Landroid/rms/resource/ReceiverResource;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/rms/resource/ReceiverResource;

    invoke-direct {v1}, Landroid/rms/resource/ReceiverResource;-><init>()V

    sput-object v1, Landroid/rms/resource/ReceiverResource;->mReceiverResource:Landroid/rms/resource/ReceiverResource;

    .line 59
    :cond_0
    sget-object v1, Landroid/rms/resource/ReceiverResource;->mReceiverResource:Landroid/rms/resource/ReceiverResource;

    invoke-virtual {v1}, Landroid/rms/resource/ReceiverResource;->getConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.ReceiverResource"

    const-string v2, "getInstance create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    sget-object v1, Landroid/rms/resource/ReceiverResource;->mReceiverResource:Landroid/rms/resource/ReceiverResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 63
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.ReceiverResource"

    const-string v2, "RMS not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 55
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

    .line 70
    const/4 v0, 0x1

    .line 71
    .local v0, "strategy":I
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysCountRes;->getTypeId(ILjava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, "typeID":I
    const/4 v2, 0x0

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "appeye_receiver"

    invoke-static {v2}, Landroid/common/HwFrameworkFactory;->getZrHung(Ljava/lang/String;)Landroid/zrhung/IZrHung;

    move-result-object v2

    .line 75
    .local v2, "appRcv":Landroid/zrhung/IZrHung;
    if-eqz v2, :cond_0

    .line 76
    new-instance v3, Landroid/zrhung/ZrHungData;

    invoke-direct {v3}, Landroid/zrhung/ZrHungData;-><init>()V

    .line 77
    .local v3, "arg":Landroid/zrhung/ZrHungData;
    const-string v4, "packageName"

    invoke-virtual {v3, v4, p2}, Landroid/zrhung/ZrHungData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "count"

    invoke-virtual {v3, v4, p4}, Landroid/zrhung/ZrHungData;->putInt(Ljava/lang/String;I)V

    .line 79
    invoke-interface {v2, v3}, Landroid/zrhung/IZrHung;->sendEvent(Landroid/zrhung/ZrHungData;)Z

    .line 83
    .end local v2    # "appRcv":Landroid/zrhung/IZrHung;
    .end local v3    # "arg":Landroid/zrhung/ZrHungData;
    :cond_0
    iget-object v2, p0, Landroid/rms/resource/ReceiverResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-eqz v2, :cond_5

    .line 84
    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/rms/resource/ReceiverResource;->isResourceCountOverload(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    iget-object v2, p0, Landroid/rms/resource/ReceiverResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/rms/config/ResourceConfig;->getResourceStrategy()I

    move-result v0

    .line 86
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "RMS.ReceiverResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverloadStrategy CountOverload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/rms/resource/ReceiverResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    :cond_2
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-nez v2, :cond_3

    sget-boolean v2, Landroid/rms/utils/Utils;->HWFLOW:Z

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "RMS.ReceiverResource"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 95
    :cond_5
    return v0
.end method

.method protected needUpdateWhiteList()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method
