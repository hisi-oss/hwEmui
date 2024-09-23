.class public Landroid/rms/HwSysResImpl;
.super Ljava/lang/Object;
.source "HwSysResImpl.java"

# interfaces
.implements Landroid/rms/HwSysResource;


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.HwSysResImpl"

.field private static enableIaware:Z

.field private static enableRms:Z


# instance fields
.field protected mResourceConfig:[Landroid/rms/config/ResourceConfig;

.field protected mResourceManger:Landroid/rms/HwSysResManager;

.field protected mResourceType:I

.field private mTag:Ljava/lang/String;

.field private mUpdateWhiteListCallback:Landroid/rms/IUpdateWhiteListCallback;

.field private mWhiteListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWhiteListTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "ro.config.enable_rms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/rms/HwSysResImpl;->enableRms:Z

    .line 75
    const-string v0, "persist.sys.enable_iaware"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/rms/HwSysResImpl;->enableIaware:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "whiteListTypes"    # [I

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Landroid/rms/HwSysResImpl;->mResourceType:I

    .line 397
    const-string v0, "RMS.HwSysResImpl"

    iput-object v0, p0, Landroid/rms/HwSysResImpl;->mTag:Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListMap:Ljava/util/Map;

    .line 456
    new-instance v0, Landroid/rms/HwSysResImpl$1;

    invoke-direct {v0, p0}, Landroid/rms/HwSysResImpl$1;-><init>(Landroid/rms/HwSysResImpl;)V

    iput-object v0, p0, Landroid/rms/HwSysResImpl;->mUpdateWhiteListCallback:Landroid/rms/IUpdateWhiteListCallback;

    .line 402
    iput-object p2, p0, Landroid/rms/HwSysResImpl;->mTag:Ljava/lang/String;

    .line 403
    invoke-direct {p0, p3}, Landroid/rms/HwSysResImpl;->copyWhiteListTypes([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListTypes:[I

    .line 404
    iput p1, p0, Landroid/rms/HwSysResImpl;->mResourceType:I

    .line 405
    invoke-static {}, Landroid/rms/HwSysResManager;->getInstance()Landroid/rms/HwSysResManager;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/HwSysResImpl;->mResourceManger:Landroid/rms/HwSysResManager;

    .line 406
    return-void
.end method

.method static synthetic access$000(Landroid/rms/HwSysResImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/rms/HwSysResImpl;

    .line 71
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/rms/HwSysResImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/rms/HwSysResImpl;

    .line 71
    invoke-direct {p0}, Landroid/rms/HwSysResImpl;->initWhiteLists()V

    return-void
.end method

.method private copyWhiteListTypes([I)[I
    .locals 1
    .param p1, "whiteListTypes"    # [I

    .line 409
    if-nez p1, :cond_0

    .line 410
    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getResource(I)Landroid/rms/HwSysResource;
    .locals 1
    .param p0, "resourceType"    # I

    .line 84
    sget-boolean v0, Landroid/rms/HwSysResImpl;->enableRms:Z

    if-eqz v0, :cond_1

    .line 85
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-static {}, Landroid/rms/resource/ActivityResource;->getInstance()Landroid/rms/resource/ActivityResource;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_1
    invoke-static {}, Landroid/rms/resource/ContentObserverResource;->getInstance()Landroid/rms/resource/ContentObserverResource;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_2
    invoke-static {}, Landroid/rms/resource/AppResource;->getInstance()Landroid/rms/resource/AppResource;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_3
    invoke-static {}, Landroid/rms/resource/AppServiceResource;->getInstance()Landroid/rms/resource/AppServiceResource;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_4
    invoke-static {}, Landroid/rms/resource/CursorResource;->getInstance()Landroid/rms/resource/CursorResource;

    move-result-object v0

    return-object v0

    .line 93
    :pswitch_5
    invoke-static {}, Landroid/rms/resource/PidsResource;->getInstance()Landroid/rms/resource/PidsResource;

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_6
    invoke-static {}, Landroid/rms/resource/AppOpsResource;->getInstance()Landroid/rms/resource/AppOpsResource;

    move-result-object v0

    return-object v0

    .line 95
    :pswitch_7
    invoke-static {}, Landroid/rms/resource/AlarmResource;->getInstance()Landroid/rms/resource/AlarmResource;

    move-result-object v0

    return-object v0

    .line 89
    :pswitch_8
    invoke-static {}, Landroid/rms/resource/ReceiverResource;->getInstance()Landroid/rms/resource/ReceiverResource;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Landroid/rms/resource/NotificationResource;->getInstance()Landroid/rms/resource/NotificationResource;

    move-result-object v0

    return-object v0

    .line 115
    :cond_1
    :goto_0
    sget-boolean v0, Landroid/rms/HwSysResImpl;->enableIaware:Z

    if-eqz v0, :cond_4

    .line 116
    const/16 v0, 0xb

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_2

    goto :goto_1

    .line 121
    :cond_2
    invoke-static {}, Landroid/rms/resource/OrderedBroadcastObserveResource;->getInstance()Landroid/rms/resource/OrderedBroadcastObserveResource;

    move-result-object v0

    return-object v0

    .line 118
    :cond_3
    invoke-static {}, Landroid/rms/resource/BroadcastResource;->getInstance()Landroid/rms/resource/BroadcastResource;

    move-result-object v0

    return-object v0

    .line 126
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWhiteListConfig()V
    .locals 3

    .line 446
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListTypes:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListTypes:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 447
    invoke-virtual {p0}, Landroid/rms/HwSysResImpl;->needUpdateWhiteList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mUpdateWhiteListCallback:Landroid/rms/IUpdateWhiteListCallback;

    invoke-virtual {p0, v0}, Landroid/rms/HwSysResImpl;->registerResourceCallback(Landroid/rms/IUpdateWhiteListCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource[type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/rms/HwSysResImpl;->mResourceManger:Landroid/rms/HwSysResManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] register callback failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    invoke-direct {p0}, Landroid/rms/HwSysResImpl;->initWhiteLists()V

    .line 454
    :cond_1
    return-void
.end method

.method private initResWhiteList(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "whiteList":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v1, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/rms/HwSysResManager;->getInstance()Landroid/rms/HwSysResManager;

    move-result-object v2

    .line 352
    .local v2, "resourceManger":Landroid/rms/HwSysResManager;
    iget v3, p0, Landroid/rms/HwSysResImpl;->mResourceType:I

    invoke-virtual {v2, v3, p1}, Landroid/rms/HwSysResManager;->getWhiteList(II)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "configWhiteList":Ljava/lang/String;
    sget-boolean v4, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/rms/HwSysResImpl;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResWhiteList put"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/rms/HwSysResImpl;->mResourceType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    if-eqz v3, :cond_1

    .line 356
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 358
    :cond_1
    if-eqz v0, :cond_3

    .line 359
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 360
    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 361
    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-boolean v5, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "RMS.HwSysResImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResWhiteList put the name into the list  type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/rms/HwSysResImpl;->mResourceType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , num:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 366
    .end local v4    # "i":I
    :cond_3
    return-object v1
.end method

.method private initWhiteLists()V
    .locals 8

    .line 471
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListTypes:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListTypes:[I

    array-length v0, v0

    if-lez v0, :cond_2

    .line 472
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListTypes:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 473
    .local v3, "type":I
    invoke-direct {p0, v3}, Landroid/rms/HwSysResImpl;->initResWhiteList(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 474
    .local v4, "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 475
    sget-boolean v5, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/rms/HwSysResImpl;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initWhiteLists was called"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v5, p0, Landroid/rms/HwSysResImpl;->mWhiteListMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .end local v3    # "type":I
    .end local v4    # "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_2
    return-void
.end method

.method private isHuaweiApp(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 287
    const-string v0, "huawei"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isInWhiteList(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PreferForInArrayList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 378
    .local p2, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 380
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwSysResImpl.isWhiteList pkg = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proc = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 384
    .end local v2    # "proc":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 385
    :cond_3
    return v0

    .line 378
    :cond_4
    :goto_1
    return v0
.end method

.method private static isUidSystem(ILjava/lang/String;)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "pkg"    # Ljava/lang/String;

    .line 275
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 276
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_1

    const-string v1, "android"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public acquire(ILjava/lang/String;I)I
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public acquire(ILjava/lang/String;II)I
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I
    .param p4, "count"    # I

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public acquire(Landroid/net/Uri;Landroid/database/IContentObserver;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public clear(ILjava/lang/String;I)V
    .locals 0
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 236
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 251
    return-void
.end method

.method protected getConfig()Z
    .locals 5

    .line 424
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 425
    return v1

    .line 427
    :cond_0
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mResourceManger:Landroid/rms/HwSysResManager;

    iget v2, p0, Landroid/rms/HwSysResImpl;->mResourceType:I

    invoke-virtual {v0, v2}, Landroid/rms/HwSysResManager;->getResourceConfig(I)[Landroid/rms/config/ResourceConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/rms/HwSysResImpl;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    .line 428
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/rms/HwSysResImpl;->mResourceType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 429
    invoke-direct {p0}, Landroid/rms/HwSysResImpl;->getWhiteListConfig()V

    .line 430
    return v1

    .line 433
    :cond_1
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 434
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 435
    nop

    .local v2, "i":I
    :goto_0
    move v0, v2

    .end local v2    # "i":I
    .local v0, "i":I
    iget-object v2, p0, Landroid/rms/HwSysResImpl;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 436
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/rms/HwSysResImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfig threshold"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/rms/HwSysResImpl;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/rms/config/ResourceConfig;->getResourceThreshold()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 439
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0}, Landroid/rms/HwSysResImpl;->getWhiteListConfig()V

    .line 440
    return v1

    .line 442
    :cond_4
    return v2
.end method

.method protected getResWhiteList(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResourceId(ILjava/lang/String;I)J
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 322
    invoke-virtual {p0, p1, p2, p3}, Landroid/rms/HwSysResImpl;->getTypeId(ILjava/lang/String;I)I

    move-result v0

    .line 323
    .local v0, "typeID":I
    const/4 v1, 0x3

    if-ne v1, p3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, p1

    .line 324
    .local v1, "uid":I
    :goto_0
    int-to-long v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 325
    .local v2, "id":J
    sget-boolean v4, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "RMS.HwSysResImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResourceId  typeID/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " id/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    return-wide v2
.end method

.method public getTypeId(ILjava/lang/String;I)I
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 299
    move v0, p3

    .line 300
    .local v0, "typeID":I
    const/4 v1, -0x1

    if-ne v1, p3, :cond_2

    .line 301
    invoke-static {p1, p2}, Landroid/rms/HwSysResImpl;->isUidSystem(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const/4 v0, 0x2

    goto :goto_0

    .line 303
    :cond_0
    if-eqz p2, :cond_1

    .line 304
    invoke-direct {p0, p2}, Landroid/rms/HwSysResImpl;->isHuaweiApp(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x0

    .line 309
    :cond_2
    :goto_0
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.HwSysResImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTypeId typeID/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_3
    return v0
.end method

.method protected isInWhiteList(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "whiteListType"    # I

    .line 388
    iget-object v0, p0, Landroid/rms/HwSysResImpl;->mWhiteListMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Landroid/rms/HwSysResImpl;->isInWhiteList(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method protected needUpdateWhiteList()Z
    .locals 1

    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method protected onWhiteListUpdate()V
    .locals 0

    .line 467
    return-void
.end method

.method public query()Landroid/os/Bundle;
    .locals 1

    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryPkgPolicy(IILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method protected registerResourceCallback(Landroid/rms/IUpdateWhiteListCallback;)Z
    .locals 1
    .param p1, "updateCallback"    # Landroid/rms/IUpdateWhiteListCallback;

    .line 331
    invoke-static {}, Landroid/rms/HwSysResManager;->getInstance()Landroid/rms/HwSysResManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/rms/HwSysResManager;->registerResourceCallback(Landroid/rms/IUpdateWhiteListCallback;)Z

    move-result v0

    return v0
.end method

.method public release(ILjava/lang/String;I)V
    .locals 0
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 219
    return-void
.end method
