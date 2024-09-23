.class public final Landroid/rms/resource/AppResource;
.super Landroid/rms/HwSysSpeedRes;
.source "AppResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.AppResource"

.field private static final TYPE_APP_PERMIT:I = 0x5

.field private static final TYPE_CLEAR_DATA:I = 0x1

.field private static final TYPE_DISABLE_APP:I = 0x2

.field private static final TYPE_NOTIFY_CRASHINFO:I = 0x3

.field private static final TYPE_NOTIFY_CRASHINFO_SYSAPP:I = 0x4

.field private static mAppResource:Landroid/rms/resource/AppResource;


# instance fields
.field private mAppLaunchedInfo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppResourceDoPolicyConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLifeTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 59
    const-string v0, "RMS.AppResource"

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Landroid/rms/HwSysSpeedRes;-><init>(ILjava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/rms/resource/AppResource;->mAppLaunchedInfo:Ljava/util/HashSet;

    .line 60
    invoke-virtual {p0}, Landroid/rms/resource/AppResource;->getConfig()Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/rms/resource/AppResource;->getResWhiteList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    invoke-direct {p0, v0}, Landroid/rms/resource/AppResource;->initAppResourceDoPolicyConfigs(Ljava/util/ArrayList;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/AppResource;
    .locals 3

    const-class v0, Landroid/rms/resource/AppResource;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Landroid/rms/resource/AppResource;->mAppResource:Landroid/rms/resource/AppResource;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Landroid/rms/resource/AppResource;

    invoke-direct {v1}, Landroid/rms/resource/AppResource;-><init>()V

    sput-object v1, Landroid/rms/resource/AppResource;->mAppResource:Landroid/rms/resource/AppResource;

    .line 73
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.AppResource"

    const-string v2, "getInstance create new AppResource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    sget-object v1, Landroid/rms/resource/AppResource;->mAppResource:Landroid/rms/resource/AppResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initAppResourceDoPolicyConfigs(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p1, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 231
    .local v0, "list":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 232
    .local v1, "whiteListCount":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "list":[Ljava/lang/String;
    :goto_0
    if-ge v0, v1, :cond_3

    .line 233
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 234
    .local v4, "temp":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 235
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 236
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-direct {p0, v5}, Landroid/rms/resource/AppResource;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 237
    .local v5, "policy":Ljava/lang/Integer;
    iget-object v6, p0, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 238
    .local v6, "record":Ljava/lang/Integer;
    if-eqz v6, :cond_1

    .line 239
    sget-boolean v7, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "RMS.AppResource"

    const-string v8, " PolicyConfigs is already!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v7, p0, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_1
    iget-object v7, p0, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v4    # "temp":Ljava/lang/String;
    .end local v5    # "policy":Ljava/lang/Integer;
    .end local v6    # "record":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 250
    const/4 v0, -0x1

    .line 252
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "RMS.AppResource"

    const-string v3, "parseInt NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method


# virtual methods
.method public acquire(ILjava/lang/String;I)I
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processType"    # I

    .line 163
    const/4 v0, 0x1

    .line 164
    .local v0, "strategy":I
    const/4 v1, 0x0

    .line 166
    .local v1, "doPolicyType":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/rms/resource/AppResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-nez v2, :cond_0

    return v0

    .line 168
    :cond_0
    if-nez p3, :cond_3

    .line 170
    iget-object v2, p0, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 171
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 172
    return v0

    .line 174
    :cond_1
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 175
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.AppResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "third app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", doPolicyType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroid/rms/resource/AppResource;->isResourceSpeedOverload(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v2, "data":Landroid/os/Bundle;
    const-string v3, "callingUid"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v3, "pkg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v3, Landroid/app/mtm/MultiTaskPolicy;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4, v2}, Landroid/app/mtm/MultiTaskPolicy;-><init>(ILandroid/os/Bundle;)V

    .line 183
    .local v3, "policy":Landroid/app/mtm/MultiTaskPolicy;
    iget-object v4, p0, Landroid/rms/resource/AppResource;->mResourceManger:Landroid/rms/HwSysResManager;

    const/16 v5, 0x12

    invoke-virtual {v4, v5, v3}, Landroid/rms/HwSysResManager;->dispatch(ILandroid/app/mtm/MultiTaskPolicy;)V

    .line 185
    invoke-virtual {p0, p3}, Landroid/rms/resource/AppResource;->getSpeedOverloadStrategy(I)I

    move-result v0

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysSpeedRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v4

    .line 187
    .local v4, "id":J
    iget-object v6, p0, Landroid/rms/resource/AppResource;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v6, v4, v5}, Landroid/rms/control/ResourceFlowControl;->removeResourceSpeedRecord(J)V

    .line 191
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "policy":Landroid/app/mtm/MultiTaskPolicy;
    .end local v4    # "id":J
    :cond_3
    return v0
.end method

.method public acquire(Landroid/net/Uri;Landroid/database/IContentObserver;Landroid/os/Bundle;)I
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "args"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 90
    move-object/from16 v2, p3

    const/4 v3, 0x1

    .line 91
    .local v3, "strategy":I
    iget-object v0, v1, Landroid/rms/resource/AppResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-nez v0, :cond_0

    return v3

    .line 93
    :cond_0
    const-string v0, "pkg"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "pkg":Ljava/lang/String;
    const-string v0, "callingUid"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 95
    .local v5, "callingUid":I
    const-string v0, "startTime"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 96
    .local v6, "startTime":Ljava/lang/Long;
    const-string v0, "processType"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 97
    .local v7, "typeID":I
    const-string v0, "launchfromActivity"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 98
    .local v8, "launchfromActivity":Z
    const-string v0, "topProcess"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 99
    .local v9, "isTopProcess":Z
    iget-object v0, v1, Landroid/rms/resource/AppResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    const/4 v10, 0x3

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/rms/config/ResourceConfig;->getLoopInterval()I

    move-result v11

    .line 100
    .local v11, "crachTimeInterval":I
    iget-object v0, v1, Landroid/rms/resource/AppResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/rms/config/ResourceConfig;->getResourceStrategy()I

    move-result v12

    .line 101
    .local v12, "shortTime":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    iput-wide v13, v1, Landroid/rms/resource/AppResource;->mLifeTime:J

    .line 102
    const/4 v13, 0x0

    .line 104
    .local v13, "doPolicyType":Ljava/lang/Integer;
    const/4 v14, 0x0

    .line 105
    .local v14, "blaunched":Z
    iget-object v15, v1, Landroid/rms/resource/AppResource;->mAppLaunchedInfo:Ljava/util/HashSet;

    monitor-enter v15

    .line 106
    if-eqz v4, :cond_1

    .line 107
    :try_start_0
    iget-object v0, v1, Landroid/rms/resource/AppResource;->mAppLaunchedInfo:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v14, v0

    .line 108
    if-eqz v14, :cond_1

    if-nez v8, :cond_1

    .line 109
    iget-object v0, v1, Landroid/rms/resource/AppResource;->mAppLaunchedInfo:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v20, v8

    move v6, v5

    move v5, v7

    goto/16 :goto_4

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "RMS.AppResource"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "acquire mLifeTime:"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v5

    move-object/from16 v18, v6

    iget-wide v5, v1, Landroid/rms/resource/AppResource;->mLifeTime:J

    .end local v5    # "callingUid":I
    .end local v6    # "startTime":Ljava/lang/Long;
    .local v17, "callingUid":I
    .local v18, "startTime":Ljava/lang/Long;
    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " pkg "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " blaunched "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " launchfromActivity "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " inteval "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " top "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v17    # "callingUid":I
    .end local v18    # "startTime":Ljava/lang/Long;
    .restart local v5    # "callingUid":I
    .restart local v6    # "startTime":Ljava/lang/Long;
    :cond_2
    move/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "callingUid":I
    .end local v6    # "startTime":Ljava/lang/Long;
    .restart local v17    # "callingUid":I
    .restart local v18    # "startTime":Ljava/lang/Long;
    :goto_1
    if-nez v7, :cond_6

    if-eqz v8, :cond_6

    iget-wide v5, v1, Landroid/rms/resource/AppResource;->mLifeTime:J

    move/from16 v19, v7

    move/from16 v20, v8

    int-to-long v7, v12

    .end local v7    # "typeID":I
    .end local v8    # "launchfromActivity":Z
    .local v19, "typeID":I
    .local v20, "launchfromActivity":Z
    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    iget-wide v5, v1, Landroid/rms/resource/AppResource;->mLifeTime:J

    int-to-long v7, v11

    cmp-long v0, v5, v7

    if-gez v0, :cond_7

    iget-wide v5, v1, Landroid/rms/resource/AppResource;->mLifeTime:J

    int-to-long v7, v12

    cmp-long v0, v5, v7

    if-lez v0, :cond_7

    if-eqz v9, :cond_7

    :cond_3
    if-eqz v14, :cond_7

    .line 119
    iget-object v0, v1, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    .end local v13    # "doPolicyType":Ljava/lang/Integer;
    .local v0, "doPolicyType":Ljava/lang/Integer;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 121
    return v3

    .line 123
    :cond_4
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 124
    .end local v0    # "doPolicyType":Ljava/lang/Integer;
    .restart local v13    # "doPolicyType":Ljava/lang/Integer;
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "RMS.AppResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "third app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", doPolicyType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_5
    move/from16 v5, v19

    goto :goto_2

    .line 125
    .end local v19    # "typeID":I
    .end local v20    # "launchfromActivity":Z
    .restart local v7    # "typeID":I
    .restart local v8    # "launchfromActivity":Z
    :cond_6
    move/from16 v19, v7

    move/from16 v20, v8

    .end local v7    # "typeID":I
    .end local v8    # "launchfromActivity":Z
    .restart local v19    # "typeID":I
    .restart local v20    # "launchfromActivity":Z
    :cond_7
    const/4 v0, 0x2

    move/from16 v5, v19

    if-ne v5, v0, :cond_9

    .line 127
    .end local v19    # "typeID":I
    .local v5, "typeID":I
    iget-object v0, v1, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 128
    .end local v13    # "doPolicyType":Ljava/lang/Integer;
    .restart local v0    # "doPolicyType":Ljava/lang/Integer;
    if-nez v0, :cond_8

    .line 130
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    .end local v0    # "doPolicyType":Ljava/lang/Integer;
    .restart local v13    # "doPolicyType":Ljava/lang/Integer;
    :cond_8
    move-object v13, v0

    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "RMS.AppResource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "system app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", doPolicyType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_9
    :goto_2
    if-eqz v13, :cond_b

    move/from16 v6, v17

    invoke-virtual {v1, v6, v4, v5}, Landroid/rms/resource/AppResource;->isResourceSpeedOverload(ILjava/lang/String;I)Z

    move-result v0

    .end local v17    # "callingUid":I
    .local v6, "callingUid":I
    if-eqz v0, :cond_c

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "data":Landroid/os/Bundle;
    const-string v7, "callingUid"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v7, "pkg"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v7, Landroid/app/mtm/MultiTaskPolicy;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8, v0}, Landroid/app/mtm/MultiTaskPolicy;-><init>(ILandroid/os/Bundle;)V

    .line 142
    .local v7, "policy":Landroid/app/mtm/MultiTaskPolicy;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v10, 0x3

    if-eq v8, v10, :cond_a

    .line 143
    iget-object v8, v1, Landroid/rms/resource/AppResource;->mResourceManger:Landroid/rms/HwSysResManager;

    const/16 v10, 0x12

    invoke-virtual {v8, v10, v7}, Landroid/rms/HwSysResManager;->dispatch(ILandroid/app/mtm/MultiTaskPolicy;)V

    .line 147
    :cond_a
    invoke-virtual {v1, v5}, Landroid/rms/resource/AppResource;->getSpeedOverloadStrategy(I)I

    move-result v3

    .end local v0    # "data":Landroid/os/Bundle;
    .end local v7    # "policy":Landroid/app/mtm/MultiTaskPolicy;
    goto :goto_3

    .line 149
    .end local v6    # "callingUid":I
    .restart local v17    # "callingUid":I
    :cond_b
    move/from16 v6, v17

    .end local v17    # "callingUid":I
    .restart local v6    # "callingUid":I
    :cond_c
    :goto_3
    return v3

    .line 112
    .end local v18    # "startTime":Ljava/lang/Long;
    .end local v20    # "launchfromActivity":Z
    .local v5, "callingUid":I
    .local v6, "startTime":Ljava/lang/Long;
    .local v7, "typeID":I
    .restart local v8    # "launchfromActivity":Z
    :catchall_1
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v20, v8

    move v6, v5

    move v5, v7

    .end local v7    # "typeID":I
    .end local v8    # "launchfromActivity":Z
    .local v5, "typeID":I
    .local v6, "callingUid":I
    .restart local v18    # "startTime":Ljava/lang/Long;
    .restart local v20    # "launchfromActivity":Z
    :goto_4
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method public clear(ILjava/lang/String;I)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysSpeedRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v0

    .line 198
    .local v0, "id":J
    iget-object v2, p0, Landroid/rms/resource/AppResource;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v2, v0, v1}, Landroid/rms/control/ResourceFlowControl;->removeResourceSpeedRecord(J)V

    .line 199
    return-void
.end method

.method protected createBundleForResource(JILandroid/rms/config/ResourceConfig;Landroid/rms/control/ResourceFlowControl;)Landroid/os/Bundle;
    .locals 4
    .param p1, "id"    # J
    .param p3, "typeID"    # I
    .param p4, "config"    # Landroid/rms/config/ResourceConfig;
    .param p5, "resourceCountControl"    # Landroid/rms/control/ResourceFlowControl;

    .line 219
    if-nez p3, :cond_0

    .line 221
    invoke-virtual {p5, p1, p2}, Landroid/rms/control/ResourceFlowControl;->getCountInPeroid(J)I

    move-result v0

    iput v0, p0, Landroid/rms/resource/AppResource;->mOverloadNumber:I

    .line 223
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "third_party_app_lifetime"

    iget-wide v2, p0, Landroid/rms/resource/AppResource;->mLifeTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 225
    return-object v0
.end method

.method protected getSpeedOverloadStrategy(I)I
    .locals 1
    .param p1, "typeID"    # I

    .line 213
    iget-object v0, p0, Landroid/rms/resource/AppResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/rms/config/ResourceConfig;->getResourceStrategy()I

    move-result v0

    .line 214
    .local v0, "strategy":I
    return v0
.end method

.method protected onWhiteListUpdate()V
    .locals 2

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/rms/resource/AppResource;->getResWhiteList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 81
    .local v0, "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    iget-object v1, p0, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 83
    invoke-direct {p0, v0}, Landroid/rms/resource/AppResource;->initAppResourceDoPolicyConfigs(Ljava/util/ArrayList;)V

    .line 85
    :cond_0
    return-void
.end method

.method public queryPkgPolicy(IILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 271
    :cond_0
    iget-object v1, p0, Landroid/rms/resource/AppResource;->mAppResourceDoPolicyConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 272
    .local v1, "policy":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 273
    return v0

    .line 275
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
