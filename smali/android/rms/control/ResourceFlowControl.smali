.class public Landroid/rms/control/ResourceFlowControl;
.super Ljava/lang/Object;
.source "ResourceFlowControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.ResourceFlowControl"


# instance fields
.field private mCurrentTime:J

.field private final mResourceSpeedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/rms/control/ResourceFlowControl;->mCurrentTime:J

    .line 43
    return-void
.end method

.method private createResourceSpeedRecordLocked(JI)Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .locals 12
    .param p1, "id"    # J
    .param p3, "loopInterval"    # I

    .line 220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 221
    .local v0, "currentTime":J
    new-instance v11, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    int-to-long v2, p3

    div-long v2, v0, v2

    int-to-long v4, p3

    mul-long v7, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;-><init>(IIIIJJ)V

    .line 222
    .local v2, "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    iget-object v3, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-object v2
.end method

.method private getResourceSpeedRecord(JI)Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .locals 3
    .param p1, "id"    # J
    .param p3, "loopInterval"    # I

    .line 202
    iget-object v0, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 204
    .local v1, "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    if-nez v1, :cond_0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/control/ResourceFlowControl;->createResourceSpeedRecordLocked(JI)Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    move-result-object v2

    move-object v1, v2

    .line 207
    :cond_0
    monitor-exit v0

    return-object v1

    .line 208
    .end local v1    # "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkSpeedOverload(JII)Z
    .locals 10
    .param p1, "id"    # J
    .param p3, "threshold"    # I
    .param p4, "loopInterval"    # I

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "flag":Z
    invoke-direct {p0, p1, p2, p4}, Landroid/rms/control/ResourceFlowControl;->getResourceSpeedRecord(JI)Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    move-result-object v1

    .line 83
    .local v1, "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    monitor-enter v1

    .line 85
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 86
    .local v2, "currentTime":J
    sget-boolean v4, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 87
    const-string v4, "RMS.ResourceFlowControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSpeedOverload: /countinperoid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$000(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " /overloadnum ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$100(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " /mTimeMillis ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$200(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " /currentTime ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$200(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2

    int-to-long v8, p4

    mul-long/2addr v6, v8

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 92
    int-to-long v6, p4

    div-long v6, v2, v6

    int-to-long v8, p4

    mul-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$202(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;J)J

    .line 93
    invoke-static {v1, v5}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$002(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;I)I

    .line 94
    invoke-static {v1, v5}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$302(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;I)I

    goto :goto_1

    .line 95
    :cond_1
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$200(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J

    move-result-wide v6

    sub-long v6, v2, v6

    int-to-long v8, p4

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$200(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J

    move-result-wide v6

    sub-long v6, v2, v6

    const/4 v4, 0x2

    mul-int/2addr v4, p4

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-gtz v4, :cond_3

    .line 96
    int-to-long v6, p4

    div-long v6, v2, v6

    int-to-long v8, p4

    mul-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$202(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;J)J

    .line 97
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$000(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    move-result v4

    if-le v4, p3, :cond_2

    .line 98
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$308(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    goto :goto_0

    .line 100
    :cond_2
    invoke-static {v1, v5}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$302(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;I)I

    .line 102
    :goto_0
    invoke-static {v1, v5}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$002(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;I)I

    .line 104
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$008(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    .line 105
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$408(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    .line 106
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$000(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    move-result v4

    if-le v4, p3, :cond_4

    .line 107
    iput-wide v2, p0, Landroid/rms/control/ResourceFlowControl;->mCurrentTime:J

    .line 108
    const/4 v0, 0x1

    .line 110
    .end local v2    # "currentTime":J
    :cond_4
    monitor-exit v1

    .line 111
    return v0

    .line 110
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCountInPeroid(J)I
    .locals 6
    .param p1, "id"    # J

    .line 160
    iget-object v0, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 162
    .local v1, "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    if-nez v1, :cond_1

    .line 163
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.ResourceFlowControl"

    const-string v3, "getOverloadPeroid: don\'t have this record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 166
    :cond_1
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$000(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    move-result v2

    .line 167
    .local v2, "countInPeroid":I
    sget-boolean v3, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.ResourceFlowControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCountInPeroid: countInPeroid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2
    monitor-exit v0

    return v2

    .line 169
    .end local v1    # "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .end local v2    # "countInPeroid":I
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

    .line 138
    iget-object v0, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 140
    .local v1, "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 141
    sget-boolean v3, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "RMS.ResourceFlowControl"

    const-string v4, "getOverloadNumber: don\'t have this record"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    monitor-exit v0

    return v2

    .line 144
    :cond_1
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$100(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    move-result v3

    .line 145
    .local v3, "overNumber":I
    invoke-static {v1, v2}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$102(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;I)I

    .line 146
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/util/Log;->HWINFO:Z

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "RMS.ResourceFlowControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOverloadNumber: overNumber ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    monitor-exit v0

    return v3

    .line 148
    .end local v1    # "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .end local v3    # "overNumber":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOverloadPeroid(J)I
    .locals 6
    .param p1, "id"    # J

    .line 181
    iget-object v0, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 183
    .local v1, "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    if-nez v1, :cond_1

    .line 184
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.ResourceFlowControl"

    const-string v3, "getOverloadPeroid: don\'t have this record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 187
    :cond_1
    invoke-static {v1}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$300(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    move-result v2

    .line 188
    .local v2, "overPeroid":I
    sget-boolean v3, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "RMS.ResourceFlowControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOverloadPeroid: overPeroid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_2
    monitor-exit v0

    return v2

    .line 190
    .end local v1    # "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    .end local v2    # "overPeroid":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReportTime(JIJI)Z
    .locals 5
    .param p1, "id"    # J
    .param p3, "loopInterval"    # I
    .param p4, "preReportTime"    # J
    .param p6, "totalTimeInterval"    # I

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/control/ResourceFlowControl;->getResourceSpeedRecord(JI)Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    move-result-object v0

    .line 116
    .local v0, "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.ResourceFlowControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResourceFlowControl.isReportTime:  id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " timeInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " preReportTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " totalTimeInterval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/rms/control/ResourceFlowControl;->mCurrentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ReportTimeInThisApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {v0}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$500(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-static {v0}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$108(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)I

    .line 120
    iget-wide v1, p0, Landroid/rms/control/ResourceFlowControl;->mCurrentTime:J

    invoke-static {v0}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$500(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    int-to-long v3, p3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-static {v0}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$500(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 121
    :cond_1
    iget-wide v1, p0, Landroid/rms/control/ResourceFlowControl;->mCurrentTime:J

    sub-long/2addr v1, p4

    int-to-long v3, p6

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 122
    iget-wide v1, p0, Landroid/rms/control/ResourceFlowControl;->mCurrentTime:J

    invoke-static {v0, v1, v2}, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;->access$502(Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;J)J

    .line 123
    const/4 v1, 0x1

    return v1

    .line 126
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public removeResourceSpeedRecord(J)V
    .locals 5
    .param p1, "id"    # J

    .line 235
    iget-object v0, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;

    .line 237
    .local v1, "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    if-eqz v1, :cond_0

    .line 238
    iget-object v2, p0, Landroid/rms/control/ResourceFlowControl;->mResourceSpeedMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 240
    const-string v2, "RMS.ResourceFlowControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeResourceSpeedRecord id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v1    # "record":Landroid/rms/control/ResourceFlowControl$RecordReourceSpeed;
    :cond_0
    monitor-exit v0

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
