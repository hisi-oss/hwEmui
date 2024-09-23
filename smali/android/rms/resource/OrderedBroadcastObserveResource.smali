.class public final Landroid/rms/resource/OrderedBroadcastObserveResource;
.super Landroid/rms/HwSysResImpl;
.source "OrderedBroadcastObserveResource.java"


# static fields
.field private static final BIGDATA_SCALE:I = 0x19

.field private static final CONFIG_NUM:I = 0x0

.field private static final ONE_DAY_MM:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "RMS.OrderedBrObserveRes"

.field private static volatile mOrderedBroadcastObserveResource:Landroid/rms/resource/OrderedBroadcastObserveResource;


# instance fields
.field private mNextTimeForUpdate:J

.field private final mResourceRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 37
    const-string v0, "RMS.OrderedBrObserveRes"

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/rms/HwSysResImpl;-><init>(ILjava/lang/String;[I)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceRecordMap:Ljava/util/HashMap;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mNextTimeForUpdate:J

    .line 39
    return-void
.end method

.method public static getInstance()Landroid/rms/resource/OrderedBroadcastObserveResource;
    .locals 2

    .line 43
    sget-object v0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mOrderedBroadcastObserveResource:Landroid/rms/resource/OrderedBroadcastObserveResource;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/rms/resource/OrderedBroadcastObserveResource;

    invoke-direct {v0}, Landroid/rms/resource/OrderedBroadcastObserveResource;-><init>()V

    sput-object v0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mOrderedBroadcastObserveResource:Landroid/rms/resource/OrderedBroadcastObserveResource;

    .line 46
    :cond_0
    sget-object v0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mOrderedBroadcastObserveResource:Landroid/rms/resource/OrderedBroadcastObserveResource;

    invoke-virtual {v0}, Landroid/rms/resource/OrderedBroadcastObserveResource;->getConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "RMS.OrderedBrObserveRes"

    const-string v1, "getInstance create new resource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    sget-object v0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mOrderedBroadcastObserveResource:Landroid/rms/resource/OrderedBroadcastObserveResource;

    return-object v0

    .line 50
    :cond_2
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "RMS.OrderedBrObserveRes"

    const-string v1, "RMS not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private triggertoLogIntoJank()V
    .locals 12

    .line 81
    iget-object v0, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "target":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/Integer;

    .line 84
    .local v11, "times":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceManger:Landroid/rms/HwSysResManager;

    const/4 v4, 0x0

    const/16 v6, 0x1f

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit8 v7, v5, 0x19

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v3 .. v10}, Landroid/rms/HwSysResManager;->recordResourceOverloadStatus(ILjava/lang/String;IIIILandroid/os/Bundle;)V

    .line 85
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "target":Ljava/lang/String;
    .end local v11    # "times":Ljava/lang/Integer;
    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceRecordMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 87
    return-void
.end method


# virtual methods
.method public acquire(ILjava/lang/String;I)I
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 58
    iget-object v0, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v2, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/rms/config/ResourceConfig;->getResourceThreshold()I

    move-result v2

    .line 61
    .local v2, "resourceMaxLength":I
    iget-object v3, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceRecordMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 62
    .local v3, "times":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    .line 67
    :goto_0
    iget-object v4, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceRecordMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, "now":J
    iget-wide v6, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mNextTimeForUpdate:J

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    iget-object v6, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mResourceRecordMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 70
    :cond_1
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v4

    iput-wide v6, p0, Landroid/rms/resource/OrderedBroadcastObserveResource;->mNextTimeForUpdate:J

    .line 71
    invoke-direct {p0}, Landroid/rms/resource/OrderedBroadcastObserveResource;->triggertoLogIntoJank()V

    .line 73
    .end local v2    # "resourceMaxLength":I
    .end local v3    # "times":Ljava/lang/Integer;
    .end local v4    # "now":J
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_3
    const-string v0, "RMS.OrderedBrObserveRes"

    const-string v2, "can\'t read config file"

    invoke-static {v0, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    return v1
.end method

.method protected needUpdateWhiteList()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method
