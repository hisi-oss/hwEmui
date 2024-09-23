.class public Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;
.super Ljava/lang/Object;
.source "HwScrollerBoostMgrImpl.java"

# interfaces
.implements Landroid/scrollerboost/IScrollerBoostMgr;


# static fields
.field private static final BOOST_TIME_LENGTH:J = 0x3e8L

.field private static final DEFAULT_ENABLE_SKIPPED_FRAMES:I = 0x0

.field private static final DEFAULT_ENABLE_SKIPPED_FRAMES_FREEZE:I = 0x3

.field private static final DEFAULT_FREEZE_DURATION:I = 0x1194

.field private static final FLING_BOOST_END:I = -0x1

.field private static final INVALID_VALUE:I = -0x1

.field private static final MAX_TIME:I = 0x2710

.field private static final NORMAL_STOP_VELOCITY:F = 100.0f

.field private static final SERIES_FLING_GAP:I = 0x1f4

.field private static final SWITCH_SCROLLER_BOOST:I = 0x8

.field private static final TAG:Ljava/lang/String; = "HwScrollerBoostMgrImpl"

.field private static sInstance:Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBoostByEachFling:Z

.field private mBoostDefaultDuration:I

.field private mBoostDuration:I

.field private mBoostSwitch:Z

.field private mEnableBoostByJank:Z

.field private mEnableFling:Z

.field private mEnableSkippedFrames:J

.field private mEnableSkippedFramesEx:J

.field private mFlingBoostEnd:Ljava/lang/Runnable;

.field private mFlingBoostHandler:Landroid/os/Handler;

.field private mFreezeLastTime:J

.field private mFreeze_duration:I

.field private mLastBoostTime:J

.field private mStartBoost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mLastBoostTime:J

    .line 29
    iput-wide v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableSkippedFrames:J

    .line 30
    const-wide/16 v2, 0x3

    iput-wide v2, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableSkippedFramesEx:J

    .line 32
    iput-wide v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFreezeLastTime:J

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostHandler:Landroid/os/Handler;

    .line 45
    iput-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostEnd:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl$1;

    invoke-direct {v0, p0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl$1;-><init>(Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;)V

    iput-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostEnd:Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method private boost(I)V
    .locals 2
    .param p1, "duration"    # I

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mStartBoost:Z

    .line 111
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostDefaultDuration:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iput p1, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostDuration:I

    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    iget v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostDefaultDuration:I

    iput v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostDuration:I

    .line 116
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mLastBoostTime:J

    .line 117
    iget-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableBoostByJank:Z

    if-eqz v0, :cond_2

    .line 118
    invoke-direct {p0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->doScrollerBoost()V

    .line 120
    :cond_2
    return-void
.end method

.method private doScrollerBoost()V
    .locals 6

    .line 127
    iget v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostDuration:I

    const/4 v1, 0x1

    const/16 v2, 0x1001

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 128
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v0

    const-string v4, ""

    new-array v1, v1, [I

    aput v3, v1, v3

    invoke-virtual {v0, v2, v4, v1}, Landroid/iawareperf/UniPerf;->uniPerfEvent(ILjava/lang/String;[I)I

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v0

    const-string v4, ""

    new-array v1, v1, [I

    const/4 v5, -0x1

    aput v5, v1, v3

    invoke-virtual {v0, v2, v4, v1}, Landroid/iawareperf/UniPerf;->uniPerfEvent(ILjava/lang/String;[I)I

    .line 132
    :goto_0
    iput-boolean v3, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mStartBoost:Z

    .line 133
    return-void
.end method

.method public static getDefault()Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;
    .locals 2

    .line 61
    sget-object v0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->sInstance:Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

    invoke-direct {v1}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;-><init>()V

    sput-object v1, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->sInstance:Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

    .line 65
    :cond_0
    sget-object v1, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->sInstance:Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initBoostProperty()V
    .locals 3

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostSwitch:Z

    .line 71
    const-string v1, "persist.sys.boost.durationms"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostDefaultDuration:I

    .line 72
    iget v1, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostDefaultDuration:I

    if-lez v1, :cond_1

    iget v1, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostDefaultDuration:I

    const/16 v2, 0x2710

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "persist.sys.boost.skipframe"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableSkippedFrames:J

    .line 77
    const-string v1, "persist.sys.boost.byeachfling"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostByEachFling:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostSwitch:Z

    .line 79
    return-void

    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method private initFreezeProperty()V
    .locals 2

    .line 82
    const-string v0, "persist.sys.boost.f_skipframe"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableSkippedFramesEx:J

    .line 84
    const-string v0, "persist.sys.fast_h_duration"

    const/16 v1, 0x1194

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFreeze_duration:I

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFreezeLastTime:J

    .line 86
    return-void
.end method

.method private isAwareScrollerBoostEnable()Z
    .locals 5

    .line 89
    const-string v0, "persist.sys.enable_iaware"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    .local v0, "awareEnable":Z
    const-string v2, "1"

    const-string v3, "persist.sys.cpuset.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 91
    .local v2, "cpuEnable":Z
    const-string v3, "persist.sys.cpuset.subswitch"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 93
    .local v3, "featureFlag":I
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private isBoostEnable()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostSwitch:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->isPerformanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPerformanceMode()Z
    .locals 3

    .line 123
    const-string v0, "true"

    const-string v1, "persist.sys.performance"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateFrameJankInfoEx(J)V
    .locals 6
    .param p1, "skippedFrames"    # J

    .line 192
    iget-wide v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableSkippedFramesEx:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 197
    .local v0, "curTime":J
    iget-wide v2, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFreezeLastTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFreeze_duration:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 198
    const/16 v2, 0xbbb

    const-string v3, "skippedframe"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/rms/iaware/IAwareSdk;->asyncReportData(ILjava/lang/String;J)V

    .line 199
    iput-wide v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFreezeLastTime:J

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public finishListFling(F)V
    .locals 4
    .param p1, "currVelocity"    # F

    .line 155
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 156
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->listFling(I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableFling:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostEnd:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 98
    const-string v0, "ro.config.enable_perfhub_fling"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableFling:Z

    .line 99
    invoke-direct {p0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->isAwareScrollerBoostEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->initBoostProperty()V

    .line 102
    :cond_0
    invoke-direct {p0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->initFreezeProperty()V

    .line 103
    return-void
.end method

.method public listFling(I)V
    .locals 6
    .param p1, "duration"    # I

    .line 137
    invoke-direct {p0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->isBoostEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->boost(I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableFling:Z

    if-eqz v0, :cond_3

    .line 140
    const/4 v0, 0x1

    const/16 v1, 0x1010

    const/4 v2, 0x0

    if-lez p1, :cond_2

    .line 142
    iget-object v3, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostEnd:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostHandler:Landroid/os/Handler;

    iget-object v4, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mFlingBoostEnd:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_1
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v3

    const-string v4, ""

    new-array v0, v0, [I

    aput v2, v0, v2

    invoke-virtual {v3, v1, v4, v0}, Landroid/iawareperf/UniPerf;->uniPerfEvent(ILjava/lang/String;[I)I

    goto :goto_0

    .line 147
    :cond_2
    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 148
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v4

    const-string v5, ""

    new-array v0, v0, [I

    aput v3, v0, v2

    invoke-virtual {v4, v1, v5, v0}, Landroid/iawareperf/UniPerf;->uniPerfEvent(ILjava/lang/String;[I)I

    .line 151
    :cond_3
    :goto_0
    return-void
.end method

.method public updateFrameJankInfo(J)V
    .locals 4
    .param p1, "skippedFrames"    # J

    .line 168
    invoke-direct {p0, p1, p2}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->updateFrameJankInfoEx(J)V

    .line 169
    iget-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostSwitch:Z

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostByEachFling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableBoostByJank:Z

    if-eqz v0, :cond_1

    .line 173
    return-void

    .line 175
    :cond_1
    iget-boolean v0, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mStartBoost:Z

    if-nez v0, :cond_2

    .line 177
    return-void

    .line 180
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mLastBoostTime:J

    sub-long/2addr v0, v2

    .line 181
    .local v0, "scrollerBoostTime":J
    iget-wide v2, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableSkippedFrames:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_5

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    goto :goto_0

    .line 184
    :cond_3
    iget-boolean v2, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mBoostByEachFling:Z

    if-nez v2, :cond_4

    .line 185
    const/4 v2, 0x1

    iput-boolean v2, p0, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->mEnableBoostByJank:Z

    .line 188
    :cond_4
    invoke-direct {p0}, Lhuawei/android/hwscrollerboost/HwScrollerBoostMgrImpl;->doScrollerBoost()V

    .line 189
    return-void

    .line 182
    :cond_5
    :goto_0
    return-void
.end method
