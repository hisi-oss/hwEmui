.class public final Landroid/rms/resource/ContentObserverResource;
.super Landroid/rms/HwSysCountRes;
.source "ContentObserverResource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.ContentOberverResource"

.field private static mContentObserverResource:Landroid/rms/resource/ContentObserverResource;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 52
    const-string v0, "RMS.ContentOberverResource"

    const/16 v1, 0x1d

    invoke-direct {p0, v1, v0}, Landroid/rms/HwSysCountRes;-><init>(ILjava/lang/String;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/ContentObserverResource;
    .locals 3

    const-class v0, Landroid/rms/resource/ContentObserverResource;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Landroid/rms/resource/ContentObserverResource;->mContentObserverResource:Landroid/rms/resource/ContentObserverResource;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/rms/resource/ContentObserverResource;

    invoke-direct {v1}, Landroid/rms/resource/ContentObserverResource;-><init>()V

    sput-object v1, Landroid/rms/resource/ContentObserverResource;->mContentObserverResource:Landroid/rms/resource/ContentObserverResource;

    .line 59
    :cond_0
    sget-object v1, Landroid/rms/resource/ContentObserverResource;->mContentObserverResource:Landroid/rms/resource/ContentObserverResource;

    invoke-virtual {v1}, Landroid/rms/resource/ContentObserverResource;->getConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RMS.ContentOberverResource"

    const-string v2, "getInstance create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    sget-object v1, Landroid/rms/resource/ContentObserverResource;->mContentObserverResource:Landroid/rms/resource/ContentObserverResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 63
    :cond_2
    :try_start_1
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "RMS.ContentOberverResource"

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

.method private needCountObserverNumber(ILjava/lang/String;)Z
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 162
    const-string v1, "RMS.ContentOberverResource"

    const-string v2, "packageName is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v0

    .line 165
    :cond_0
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public acquire(ILjava/lang/String;I)I
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 70
    const/4 v0, 0x1

    .line 72
    .local v0, "strategy":I
    if-nez p2, :cond_0

    .line 73
    const-string v1, "RMS.ContentOberverResource"

    const-string v2, "pkg is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v0

    .line 77
    :cond_0
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "appeye_observer"

    invoke-static {v1}, Landroid/common/HwFrameworkFactory;->getZrHung(Ljava/lang/String;)Landroid/zrhung/IZrHung;

    move-result-object v1

    .line 79
    .local v1, "appObs":Landroid/zrhung/IZrHung;
    if-eqz v1, :cond_1

    .line 80
    new-instance v2, Landroid/zrhung/ZrHungData;

    invoke-direct {v2}, Landroid/zrhung/ZrHungData;-><init>()V

    .line 81
    .local v2, "arg":Landroid/zrhung/ZrHungData;
    const-string v3, "packageName"

    invoke-virtual {v2, v3, p2}, Landroid/zrhung/ZrHungData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "count"

    invoke-virtual {p0, p1, p2, p3}, Landroid/rms/resource/ContentObserverResource;->getCount(ILjava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/zrhung/ZrHungData;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-interface {v1, v2}, Landroid/zrhung/IZrHung;->sendEvent(Landroid/zrhung/ZrHungData;)Z

    .line 89
    .end local v1    # "appObs":Landroid/zrhung/IZrHung;
    .end local v2    # "arg":Landroid/zrhung/ZrHungData;
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/rms/resource/ContentObserverResource;->needCountObserverNumber(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    return v0

    .line 94
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysCountRes;->getTypeId(ILjava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, "typeID":I
    iget-object v2, p0, Landroid/rms/resource/ContentObserverResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/rms/resource/ContentObserverResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 97
    invoke-virtual {p0, p1, p2, v1}, Landroid/rms/resource/ContentObserverResource;->isResourceCountOverload(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/rms/resource/ContentObserverResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/rms/resource/ContentObserverResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 98
    iget-object v2, p0, Landroid/rms/resource/ContentObserverResource;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/rms/config/ResourceConfig;->getResourceStrategy()I

    move-result v0

    .line 99
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "RMS.ContentOberverResource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverloadStrategy strategy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_3
    const-string v2, "RMS.ContentOberverResource"

    const-string v3, "contentObserverconfig is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_4
    :goto_0
    return v0
.end method

.method public clear(ILjava/lang/String;I)V
    .locals 5
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 131
    if-nez p2, :cond_0

    .line 132
    const-string v0, "RMS.ContentOberverResource"

    const-string v1, "pkg is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/rms/resource/ContentObserverResource;->needCountObserverNumber(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    return-void

    .line 142
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysCountRes;->getTypeId(ILjava/lang/String;I)I

    move-result v0

    .line 143
    .local v0, "typeID":I
    invoke-super {p0, p1, p2, v0}, Landroid/rms/HwSysCountRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v1

    .line 145
    .local v1, "id":J
    iget-object v3, p0, Landroid/rms/resource/ContentObserverResource;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    if-eqz v3, :cond_2

    .line 146
    iget-object v3, p0, Landroid/rms/resource/ContentObserverResource;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    invoke-virtual {v3, v1, v2}, Landroid/rms/control/ResourceCountControl;->removeResourceCountRecord(J)V

    .line 147
    const-string v3, "RMS.ContentOberverResource"

    const-string v4, "clear ObserverResource in contentService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_2
    return-void
.end method

.method protected createBundleForResource(JILandroid/rms/config/ResourceConfig;Landroid/rms/control/ResourceCountControl;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "id"    # J
    .param p3, "typeID"    # I
    .param p4, "config"    # Landroid/rms/config/ResourceConfig;
    .param p5, "mResourceCountControl"    # Landroid/rms/control/ResourceCountControl;
    .param p6, "pkg"    # Ljava/lang/String;

    .line 175
    if-eqz p4, :cond_2

    if-nez p5, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "RMS.ContentOberverResource"

    const-string v1, "createBundleForResource Call In ContentObserverResource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "hard_threshold"

    invoke-virtual {p4}, Landroid/rms/config/ResourceConfig;->getResouceUrgentThreshold()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v1, "current_count"

    invoke-virtual {p5, p1, p2}, Landroid/rms/control/ResourceCountControl;->getTotalCount(J)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v1, "isInWhiteList"

    const/4 v2, 0x0

    invoke-virtual {p0, p6, v2}, Landroid/rms/resource/ContentObserverResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    return-object v0

    .line 176
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public release(ILjava/lang/String;I)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 110
    if-nez p2, :cond_0

    .line 111
    const-string v0, "RMS.ContentOberverResource"

    const-string v1, "pkg is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/rms/resource/ContentObserverResource;->needCountObserverNumber(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    return-void

    .line 121
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysCountRes;->getTypeId(ILjava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "typeID":I
    invoke-super {p0, p1, p2, v0}, Landroid/rms/HwSysCountRes;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v1

    .line 124
    .local v1, "id":J
    iget-object v3, p0, Landroid/rms/resource/ContentObserverResource;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Landroid/rms/resource/ContentObserverResource;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    invoke-virtual {v3, v1, v2}, Landroid/rms/control/ResourceCountControl;->reduceCurrentCount(J)V

    .line 127
    :cond_2
    return-void
.end method
