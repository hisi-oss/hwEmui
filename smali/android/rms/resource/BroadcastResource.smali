.class public final Landroid/rms/resource/BroadcastResource;
.super Landroid/rms/HwSysSpeedRes;
.source "BroadcastResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.BroadcastResource"

.field private static mBroadcastResource:Landroid/rms/resource/BroadcastResource;

.field private static final mWhiteListTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/rms/resource/BroadcastResource;->mWhiteListTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .line 37
    const-string v0, "RMS.BroadcastResource"

    sget-object v1, Landroid/rms/resource/BroadcastResource;->mWhiteListTypes:[I

    const/16 v2, 0xb

    invoke-direct {p0, v2, v0, v1}, Landroid/rms/HwSysSpeedRes;-><init>(ILjava/lang/String;[I)V

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/BroadcastResource;
    .locals 3

    const-class v0, Landroid/rms/resource/BroadcastResource;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Landroid/rms/resource/BroadcastResource;->mBroadcastResource:Landroid/rms/resource/BroadcastResource;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Landroid/rms/resource/BroadcastResource;

    invoke-direct {v1}, Landroid/rms/resource/BroadcastResource;-><init>()V

    sput-object v1, Landroid/rms/resource/BroadcastResource;->mBroadcastResource:Landroid/rms/resource/BroadcastResource;

    .line 45
    :cond_0
    sget-object v1, Landroid/rms/resource/BroadcastResource;->mBroadcastResource:Landroid/rms/resource/BroadcastResource;

    invoke-virtual {v1}, Landroid/rms/resource/BroadcastResource;->getConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.BroadcastResource"

    const-string v2, "getInstance create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    sget-object v1, Landroid/rms/resource/BroadcastResource;->mBroadcastResource:Landroid/rms/resource/BroadcastResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.BroadcastResource"

    const-string v2, "RMS not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_3
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 41
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

    .line 56
    const/4 v0, 0x1

    .line 57
    .local v0, "strategy":I
    iget-object v1, p0, Landroid/rms/resource/BroadcastResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-eqz v1, :cond_0

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysSpeedRes;->getTypeId(ILjava/lang/String;I)I

    move-result v1

    .line 59
    .local v1, "typeID":I
    invoke-virtual {p0, p1, p2, v1}, Landroid/rms/resource/BroadcastResource;->isResourceSpeedOverload(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Landroid/rms/resource/BroadcastResource;->getSpeedOverloadStrategy(I)I

    move-result v0

    .line 61
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.BroadcastResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverloadStrategy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v1    # "typeID":I
    :cond_0
    return v0
.end method

.method public clear(ILjava/lang/String;I)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysSpeedRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v0

    .line 98
    .local v0, "id":J
    iget-object v2, p0, Landroid/rms/resource/BroadcastResource;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v2, v0, v1}, Landroid/rms/control/ResourceFlowControl;->removeResourceSpeedRecord(J)V

    .line 99
    iget-object v2, p0, Landroid/rms/resource/BroadcastResource;->mResourceManger:Landroid/rms/HwSysResManager;

    const/16 v3, 0xb

    invoke-virtual {v2, p1, v3}, Landroid/rms/HwSysResManager;->clearResourceStatus(II)V

    .line 100
    return-void
.end method

.method public queryPkgPolicy(IILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :pswitch_0
    const/4 v1, 0x2

    invoke-super {p0, p3, v1}, Landroid/rms/HwSysSpeedRes;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x4

    .line 85
    goto :goto_0

    .line 73
    :pswitch_1
    const/4 v1, 0x1

    invoke-super {p0, p3, v1}, Landroid/rms/HwSysSpeedRes;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x4

    .line 78
    nop

    .line 91
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
