.class public Landroid/rms/control/ResourceCountControl;
.super Ljava/lang/Object;
.source "ResourceCountControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.ResourceCountControl"


# instance fields
.field private final mResourceCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/rms/control/ResourceCountControl$RecordReourceCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method private createResourceCountRecordLocked(J)Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .locals 9
    .param p1, "id"    # J

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 199
    .local v6, "currentTime":J
    new-instance v8, Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;-><init>(IIIJ)V

    .line 200
    .local v0, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    iget-object v1, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-object v0
.end method

.method private getResourceCountRecord(JZ)Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .locals 3
    .param p1, "id"    # J
    .param p3, "isCreate"    # Z

    .line 180
    iget-object v0, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 182
    .local v1, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 183
    invoke-direct {p0, p1, p2}, Landroid/rms/control/ResourceCountControl;->createResourceCountRecordLocked(J)Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    move-result-object v2

    move-object v1, v2

    .line 185
    :cond_0
    monitor-exit v0

    return-object v1

    .line 186
    .end local v1    # "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkCountOverload(JIIIII)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "threshold"    # I
    .param p4, "hardThreshold"    # I
    .param p5, "waterThreshold"    # I
    .param p6, "total"    # I
    .param p7, "resourceType"    # I

    .line 79
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RMS.ResourceCountControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCountOverload:threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/rms/control/ResourceCountControl;->getResourceCountRecord(JZ)Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    move-result-object v1

    .line 82
    .local v1, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    monitor-enter v1

    .line 83
    const/4 v2, -0x1

    if-ne v2, p6, :cond_1

    .line 84
    :try_start_0
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$008(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 86
    :cond_1
    invoke-static {v1, p6}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$002(Landroid/rms/control/ResourceCountControl$RecordReourceCount;I)I

    .line 88
    :goto_0
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$100(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v2

    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 89
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$102(Landroid/rms/control/ResourceCountControl$RecordReourceCount;I)I

    .line 91
    :cond_2
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$200(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v2

    if-gt v2, p3, :cond_4

    :cond_3
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v2

    if-le v2, p4, :cond_6

    .line 92
    :cond_4
    invoke-static {v1, v3}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$202(Landroid/rms/control/ResourceCountControl$RecordReourceCount;Z)Z

    .line 93
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "RMS.ResourceCountControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResourceCountOverload: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", totalCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$100(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_5
    monitor-exit v1

    return v0

    .line 96
    :cond_6
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v2

    if-ge v2, p5, :cond_7

    .line 97
    invoke-static {v1, v0}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$202(Landroid/rms/control/ResourceCountControl$RecordReourceCount;Z)Z

    .line 99
    :cond_7
    monitor-exit v1

    .line 100
    return v3

    .line 99
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount(J)I
    .locals 5
    .param p1, "id"    # J

    .line 159
    iget-object v0, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 161
    .local v1, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    if-nez v1, :cond_1

    .line 162
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.ResourceCountControl"

    const-string v3, "getTotalCount: don\'t have this record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 165
    :cond_1
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.ResourceCountControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount: mCount ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 167
    .end local v1    # "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOverloadNumber(J)I
    .locals 6
    .param p1, "id"    # J

    .line 112
    iget-object v0, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 114
    .local v1, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 115
    sget-boolean v3, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "RMS.ResourceCountControl"

    const-string v4, "getOverloadNumber: don\'t have this record"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    monitor-exit v0

    return v2

    .line 118
    :cond_1
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$300(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v3

    .line 119
    .local v3, "overNumber":I
    invoke-static {v1, v2}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$302(Landroid/rms/control/ResourceCountControl$RecordReourceCount;I)I

    .line 120
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "RMS.ResourceCountControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOverloadNumber: overNumber ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    monitor-exit v0

    return v3

    .line 122
    .end local v1    # "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .end local v3    # "overNumber":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTotalCount(J)I
    .locals 6
    .param p1, "id"    # J

    .line 135
    iget-object v0, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 137
    .local v1, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    if-nez v1, :cond_1

    .line 138
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.ResourceCountControl"

    const-string v3, "getTotalCount: don\'t have this record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 141
    :cond_1
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$100(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v2

    .line 142
    .local v2, "totalCount":I
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v3

    invoke-static {v1, v3}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$102(Landroid/rms/control/ResourceCountControl$RecordReourceCount;I)I

    .line 143
    sget-boolean v3, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.ResourceCountControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTotalCount: totalCount ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    monitor-exit v0

    return v2

    .line 145
    .end local v1    # "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    .end local v2    # "totalCount":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReportTime(JIJI)Z
    .locals 8
    .param p1, "id"    # J
    .param p3, "timeInterval"    # I
    .param p4, "preReportTime"    # J
    .param p6, "totalTimeInterval"    # I

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/rms/control/ResourceCountControl;->getResourceCountRecord(JZ)Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    move-result-object v1

    .line 268
    .local v1, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    if-nez v1, :cond_0

    return v0

    .line 270
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 271
    .local v2, "currentTime":J
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$308(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    .line 272
    sget-boolean v4, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "RMS.ResourceCountControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResourceFlowControl.isReportTime:  id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " timeInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " preReportTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " totalTimeInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    invoke-static {v1}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$400(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)J

    move-result-wide v4

    sub-long v4, v2, v4

    int-to-long v6, p3

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 276
    sub-long v4, v2, p4

    int-to-long v6, p6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 277
    invoke-static {v1, v2, v3}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$402(Landroid/rms/control/ResourceCountControl$RecordReourceCount;J)J

    .line 278
    const/4 v0, 0x1

    return v0

    .line 281
    :cond_2
    return v0
.end method

.method public reduceCurrentCount(J)V
    .locals 4
    .param p1, "id"    # J

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/rms/control/ResourceCountControl;->getResourceCountRecord(JZ)Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    move-result-object v0

    .line 236
    .local v0, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    if-nez v0, :cond_1

    .line 237
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "RMS.ResourceCountControl"

    const-string v2, "updateCurrentCount: error record"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    return-void

    .line 243
    :cond_1
    monitor-enter v0

    .line 245
    :try_start_0
    invoke-static {v0}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v1

    if-lez v1, :cond_2

    .line 246
    invoke-static {v0}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$010(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    .line 249
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 252
    const-string v1, "RMS.ResourceCountControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reduceCurrentCount  count/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$000(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mTotalCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/rms/control/ResourceCountControl$RecordReourceCount;->access$100(Landroid/rms/control/ResourceCountControl$RecordReourceCount;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_3
    return-void

    .line 249
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeResourceCountRecord(J)V
    .locals 5
    .param p1, "id"    # J

    .line 213
    iget-object v0, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceCountControl$RecordReourceCount;

    .line 216
    .local v1, "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    if-eqz v1, :cond_0

    .line 217
    iget-object v2, p0, Landroid/rms/control/ResourceCountControl;->mResourceCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 220
    const-string v2, "RMS.ResourceCountControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeResourceCountRecord id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v1    # "record":Landroid/rms/control/ResourceCountControl$RecordReourceCount;
    :cond_1
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
