.class public Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;
.super Ljava/lang/Object;
.source "SmartSlideOverScroller.java"


# static fields
.field private static final DECELERATION_TIME_CONSTANT:Ljava/lang/String; = "decelerationTimeConstant"

.field private static final DECELERATION_TIME_CONSTANT_DEFAULT:F = -0.405f

.field private static final DECELERATION_TIME_SLOPE:Ljava/lang/String; = "decelerationTimeSlope"

.field private static final DECELERATION_TIME_SLOPE_DEFAULT:F = 0.528f

.field private static final DEFAULT_LCD_LENGTH:F = 6.0f

.field private static final DEFAULT_MULTIPLE_FLING_LENGTH_THRESHOLD:F = 125.0f

.field private static final DEFAULT_MULTIPLE_FLING_TIME_THRESHOLD:F = 400.0f

.field private static final DEFAULT_MULTIPLE_VELOCITY:F = 1.5f

.field private static final DEFAULT_SCREEN_DISPLAY_HEIGHT:F = 1920.0f

.field private static final DEFAULT_SCREEN_PPI:F = 402.0f

.field private static final EXP_COEFFICIENT:Ljava/lang/String; = "expCoefficient"

.field private static final EXP_COFFICIENT_SLOW_DOWN:Ljava/lang/String; = "expCofficientSlowDown"

.field private static final FLING_LENGTH_FACTOR:F = 0.31095f

.field private static final FLING_TIMES_BIG_THAN_NINE:I = 0x9

.field private static final FLING_TIMES_INIT:I = 0x1

.field private static final FLING_TIMES_UNDER_FIVE:I = 0x5

.field private static final FLING_TIME_THRESHOLD:Ljava/lang/String; = "flingTimeThreshold"

.field private static final INCH_TO_MM_FACTOR:F = 25.4f

.field private static final IS_ENABLE:Ljava/lang/String; = "isEnable"

.field private static final LAST_FLING_TIME_INIT:I = 0x0

.field private static final LAST_VELOCITY_GAIN_INIT:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = "OverScrollerOptimization"

.field private static final MAX_FLING_VELOCITY_GAIN:I = 0x10

.field private static final NB_SAMPLES_OPTIMIZATION:I = 0x258

.field private static final SLOPE_PARAMETER_GET_DISTANCE_DEFAULT:F = 4.2f

.field private static final SLOPE_PARAMETER_SLOW_DOWN_DEFAULT:F = 6.5f

.field private static final SPLINE_DISTANCE_COMPLETE:F = 0.9f

.field private static final VELOCITY_GAIN_FACTOR:F = 0.45f

.field private static final VELOCITY_GAIN_UNDER_FIVE:F = 1.0f

.field private static final VELOCITY_MULTIPLIER:Ljava/lang/String; = "velocityMultiplier"

.field private static mIsApplicationEnable:Z

.field private static mSlopeParameterGetDistance:F

.field private static mSlopeParameterSlowDown:F


# instance fields
.field private mConfigData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDecelerationTimeConstantGetTime:F

.field private mDecelerationTimeSlopeGetTime:F

.field private mLastFlingTimeSave:J

.field private mLastVelocityGainSave:D

.field private mLcdLength:F

.field private mMultipleFlingLengthThreshold:F

.field private mMultipleFlingTIMES:I

.field private mMultipleFlingTimeThreshold:F

.field private mMultipleVelocity:F

.field private mScreenDisplayHeightPixels:F

.field private mScreenPPI:F

.field private mSmartSlideOverScrollerConfig:Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mIsApplicationEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastFlingTimeSave:J

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    .line 99
    const-string v0, "OverScrollerOptimization"

    const-string v1, "start init SmartSlideOverScroller and get the overscroller config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSmartSlideOverScrollerConfig:Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;

    invoke-direct {v0, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSmartSlideOverScrollerConfig:Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;

    .line 105
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    .line 106
    invoke-direct {p0, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->initOverScrollerConfig(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method private initOverScrollerConfig(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    const/high16 v0, 0x40d00000    # 6.5f

    const/high16 v1, 0x43c80000    # 400.0f

    const v2, 0x40866666    # 4.2f

    const/high16 v3, 0x42fa0000    # 125.0f

    const/high16 v4, 0x43c90000    # 402.0f

    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v6, 0x44f00000    # 1920.0f

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v8, 0x1

    if-eqz p1, :cond_a

    .line 119
    iget-object v9, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSmartSlideOverScrollerConfig:Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;

    invoke-virtual {v9, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->getOverScrollerConfig(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    .line 121
    iget-object v9, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSmartSlideOverScrollerConfig:Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;

    invoke-virtual {v9}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->getScreenHeight()F

    move-result v9

    iput v9, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenDisplayHeightPixels:F

    .line 122
    iget v9, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenDisplayHeightPixels:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenDisplayHeightPixels:F

    :goto_0
    iput v6, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenDisplayHeightPixels:F

    .line 123
    iget-object v6, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSmartSlideOverScrollerConfig:Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;

    invoke-virtual {v6}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->getScreenSize()F

    move-result v6

    iput v6, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLcdLength:F

    .line 125
    iget v6, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLcdLength:F

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLcdLength:F

    :goto_1
    iput v5, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLcdLength:F

    .line 126
    iget-object v5, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSmartSlideOverScrollerConfig:Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;

    invoke-virtual {v5, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->getScreenPPI_ByResources(Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenPPI:F

    .line 127
    iget v5, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenPPI:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_2

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenPPI:F

    :goto_2
    iput v4, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenPPI:F

    .line 128
    const v4, 0x3e9f34d7

    iget-object v5, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSmartSlideOverScrollerConfig:Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;

    invoke-virtual {v5, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScrollerConfig;->getScreenPPI_ByResources(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingLengthThreshold:F

    .line 129
    iget v4, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingLengthThreshold:F

    cmpg-float v4, v4, v10

    if-gtz v4, :cond_3

    goto :goto_3

    :cond_3
    iget v3, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingLengthThreshold:F

    :goto_3
    iput v3, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingLengthThreshold:F

    .line 130
    iget-object v3, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    const-string v4, "expCoefficient"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    .line 131
    sget v3, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    const v4, 0x400ccccc    # 2.1999998f

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-ltz v3, :cond_4

    sget v3, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    const v5, 0x40c66666    # 6.2f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    move v3, v8

    goto :goto_4

    :cond_4
    move v3, v4

    .line 132
    .local v3, "isGetDistanceReasonable":Z
    :goto_4
    if-eqz v3, :cond_5

    sget v2, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    nop

    :cond_5
    sput v2, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    .line 133
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    const-string v5, "decelerationTimeSlope"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mDecelerationTimeSlopeGetTime:F

    .line 134
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    const-string v5, "decelerationTimeConstant"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mDecelerationTimeConstantGetTime:F

    .line 135
    iget-object v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    const-string v5, "flingTimeThreshold"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTimeThreshold:F

    .line 136
    iget v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTimeThreshold:F

    cmpg-float v2, v2, v10

    if-gtz v2, :cond_6

    goto :goto_5

    :cond_6
    iget v1, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTimeThreshold:F

    :goto_5
    iput v1, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTimeThreshold:F

    .line 137
    iget-object v1, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    const-string v2, "expCofficientSlowDown"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    .line 138
    sget v1, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    const/high16 v2, 0x40900000    # 4.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_7

    sget v1, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    const/high16 v2, 0x41080000    # 8.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    move v4, v8

    nop

    :cond_7
    move v1, v4

    .line 139
    .local v1, "isSlowDownReasonable":Z
    if-eqz v1, :cond_8

    sget v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    nop

    :cond_8
    sput v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    .line 140
    iget-object v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    const-string v2, "velocityMultiplier"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleVelocity:F

    .line 141
    iget v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleVelocity:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_9

    goto :goto_6

    :cond_9
    iget v7, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleVelocity:F

    :goto_6
    iput v7, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleVelocity:F

    .line 143
    iget-object v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mConfigData:Ljava/util/HashMap;

    const-string v2, "isEnable"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mIsApplicationEnable:Z

    .line 145
    .end local v1    # "isSlowDownReasonable":Z
    .end local v3    # "isGetDistanceReasonable":Z
    goto :goto_7

    .line 146
    :cond_a
    iput v6, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenDisplayHeightPixels:F

    .line 147
    iput v5, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLcdLength:F

    .line 148
    iput v4, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenPPI:F

    .line 149
    iput v3, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingLengthThreshold:F

    .line 150
    sput v2, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    .line 151
    const v2, 0x3f072b02    # 0.528f

    iput v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mDecelerationTimeSlopeGetTime:F

    .line 152
    const v2, -0x4130a3d7    # -0.405f

    iput v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mDecelerationTimeConstantGetTime:F

    .line 153
    iput v1, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTimeThreshold:F

    .line 154
    sput v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    .line 155
    iput v7, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleVelocity:F

    .line 157
    sput-boolean v8, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mIsApplicationEnable:Z

    .line 161
    :goto_7
    return-void
.end method


# virtual methods
.method public fling(IIIIFFIIIIIIF)I
    .locals 17
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "oldVelocityX"    # F
    .param p6, "oldVelocityY"    # F
    .param p7, "minX"    # I
    .param p8, "maxX"    # I
    .param p9, "minY"    # I
    .param p10, "maxY"    # I
    .param p11, "overX"    # I
    .param p12, "overY"    # I
    .param p13, "slidingDistance"    # F

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 180
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 181
    .local v3, "time":J
    iget-wide v5, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastFlingTimeSave:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 183
    iput v6, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    .line 184
    iput-wide v9, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastVelocityGainSave:D

    .line 185
    iput-wide v3, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastFlingTimeSave:J

    .line 186
    iget v5, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleVelocity:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    return v5

    .line 188
    :cond_0
    const v5, 0x33d6bf95    # 1.0E-7f

    .line 189
    .local v5, "delta":F
    int-to-float v11, v1

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v11

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->signum(F)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 190
    .local v11, "delValueX":F
    int-to-float v12, v2

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v12

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->signum(F)F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 191
    .local v12, "delValueY":F
    cmpl-float v13, v11, v5

    if-gtz v13, :cond_1

    cmpl-float v13, v12, v5

    if-lez v13, :cond_2

    .line 192
    :cond_1
    iput v6, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    .line 193
    iput-wide v7, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastFlingTimeSave:J

    .line 194
    iput-wide v9, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastVelocityGainSave:D

    .line 196
    :cond_2
    iget-wide v13, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastFlingTimeSave:J

    sub-long v13, v3, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    long-to-float v13, v13

    iget v14, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTimeThreshold:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_3

    .line 198
    invoke-static/range {p13 .. p13}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingLengthThreshold:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4

    .line 199
    iget v7, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    .line 200
    iput-wide v3, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastFlingTimeSave:J

    goto :goto_0

    .line 203
    :cond_3
    iput v6, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    .line 204
    iput-wide v7, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastFlingTimeSave:J

    .line 205
    iput-wide v9, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastVelocityGainSave:D

    .line 207
    :cond_4
    :goto_0
    int-to-float v7, v1

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9

    int-to-float v7, v2

    .line 208
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_9

    .line 211
    const v7, 0x3ee66666    # 0.45f

    .line 212
    .local v7, "velocityGainFactor":F
    iget v8, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    const/4 v13, 0x5

    if-ge v8, v13, :cond_5

    .line 213
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 215
    .local v13, "velocityGain":D
    int-to-double v9, v2

    mul-double/2addr v9, v13

    double-to-int v2, v9

    .line 217
    .end local p4    # "velocityY":I
    .local v2, "velocityY":I
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iput-wide v8, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastVelocityGainSave:D

    .line 241
    move-wide v15, v3

    goto :goto_3

    .line 218
    .end local v2    # "velocityY":I
    .end local v13    # "velocityGain":D
    .restart local p4    # "velocityY":I
    :cond_5
    iget v8, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    const/16 v9, 0x9

    if-le v8, v9, :cond_7

    .line 219
    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    .line 220
    .local v8, "velocityGainMax":D
    invoke-static/range {p13 .. p13}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v13, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    sub-int/2addr v13, v6

    int-to-float v6, v13

    mul-float/2addr v10, v6

    iget v6, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenDisplayHeightPixels:F

    div-float/2addr v10, v6

    float-to-double v13, v10

    move-wide v15, v3

    iget-wide v3, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastVelocityGainSave:D

    .end local v3    # "time":J
    .local v15, "time":J
    add-double/2addr v13, v3

    double-to-float v3, v13

    float-to-double v3, v3

    .line 222
    .local v3, "velocityGain":D
    cmpl-double v6, v8, v3

    if-lez v6, :cond_6

    move-wide v13, v3

    goto :goto_1

    :cond_6
    move-wide v13, v8

    :goto_1
    move-wide v3, v13

    .line 225
    int-to-double v13, v2

    mul-double/2addr v13, v3

    double-to-int v2, v13

    .line 227
    .end local p4    # "velocityY":I
    .restart local v2    # "velocityY":I
    iput-wide v3, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastVelocityGainSave:D

    goto :goto_3

    .line 229
    .end local v2    # "velocityY":I
    .end local v8    # "velocityGainMax":D
    .end local v15    # "time":J
    .local v3, "time":J
    .restart local p4    # "velocityY":I
    :cond_7
    move-wide v15, v3

    .end local v3    # "time":J
    .restart local v15    # "time":J
    iget v3, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    add-int/lit8 v3, v3, -0x3

    iget v4, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    add-int/lit8 v4, v4, 0x2

    mul-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v8

    float-to-double v8, v7

    mul-double/2addr v3, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v8

    .line 230
    .local v3, "velocityGainMax":D
    invoke-static/range {p13 .. p13}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleFlingTIMES:I

    sub-int/2addr v9, v6

    int-to-float v6, v9

    mul-float/2addr v8, v6

    iget v6, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenDisplayHeightPixels:F

    div-float/2addr v8, v6

    float-to-double v8, v8

    iget-wide v13, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastVelocityGainSave:D

    add-double/2addr v8, v13

    double-to-float v6, v8

    float-to-double v8, v6

    .line 232
    .local v8, "velocityGain":D
    cmpl-double v6, v3, v8

    if-lez v6, :cond_8

    move-wide v13, v8

    goto :goto_2

    :cond_8
    move-wide v13, v3

    :goto_2
    move-wide v8, v13

    .line 235
    int-to-double v13, v2

    mul-double/2addr v13, v8

    double-to-int v2, v13

    .line 237
    .end local p4    # "velocityY":I
    .restart local v2    # "velocityY":I
    iput-wide v8, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mLastVelocityGainSave:D

    .end local v3    # "velocityGainMax":D
    .end local v7    # "velocityGainFactor":F
    .end local v8    # "velocityGain":D
    goto :goto_3

    .line 241
    .end local v2    # "velocityY":I
    .end local v15    # "time":J
    .local v3, "time":J
    .restart local p4    # "velocityY":I
    :cond_9
    move-wide v15, v3

    .end local v3    # "time":J
    .end local p4    # "velocityY":I
    .restart local v2    # "velocityY":I
    .restart local v15    # "time":J
    :goto_3
    iget v3, v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mMultipleVelocity:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method public getAdjustDuratuion(IIID)I
    .locals 8
    .param p1, "adjustDistance"    # I
    .param p2, "splineDuration"    # I
    .param p3, "splineDistance"    # I
    .param p4, "splineDistanceDiff"    # D

    .line 290
    if-nez p3, :cond_0

    const/4 v0, 0x0

    return v0

    .line 291
    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x4082c00000000000L    # 600.0

    div-double v2, p4, v2

    add-double/2addr v0, v2

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 292
    .local v0, "distanceCoef":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    .line 293
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 295
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    neg-float v3, v3

    const v4, 0x4414c000    # 595.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x44160000    # 600.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    sub-double/2addr v2, v0

    .line 296
    .local v2, "velocityCoef":D
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget v6, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    neg-float v6, v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    int-to-double v6, p2

    mul-double/2addr v4, v6

    .line 297
    .local v4, "t":D
    double-to-int v6, v4

    return v6
.end method

.method public getAppEnable()Z
    .locals 1

    .line 174
    sget-boolean v0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mIsApplicationEnable:Z

    return v0
.end method

.method public getDistanceDiff(I)D
    .locals 8
    .param p1, "velocity"    # I

    .line 252
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    sget v2, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    neg-float v2, v2

    invoke-virtual {p0, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->getSplineFlingDuration(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    mul-double/2addr v0, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    sget v6, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    neg-float v6, v6

    invoke-virtual {p0, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->getSplineFlingDuration(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 253
    .local v0, "distanceDiff":D
    int-to-float v2, p1

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public getScreenPPI()F
    .locals 1

    .line 167
    iget v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenPPI:F

    return v0
.end method

.method public getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .line 247
    invoke-virtual {p0, p1}, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->getSplineFlingDuration(I)I

    move-result v0

    int-to-double v0, v0

    .line 248
    .local v0, "flingTime":D
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    sget v4, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterGetDistance:F

    neg-float v4, v4

    float-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    mul-double/2addr v2, v6

    return-wide v2
.end method

.method public getSplineFlingDuration(I)I
    .locals 5
    .param p1, "velocity"    # I

    .line 257
    iget v0, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mDecelerationTimeSlopeGetTime:F

    float-to-double v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mScreenPPI:F

    div-float/2addr v2, v3

    const v3, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mDecelerationTimeConstantGetTime:F

    float-to-double v2, v2

    add-double/2addr v0, v2

    .line 258
    .local v0, "flingTime":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 259
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 261
    :cond_0
    const-string v2, "OverScrollerOptimization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fling time is flingTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " velocity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2
.end method

.method public getUpdateDistance(JIID)D
    .locals 14
    .param p1, "currentTime"    # J
    .param p3, "splineDuration"    # I
    .param p4, "splineDistance"    # I
    .param p5, "splineDistanceDiff"    # D

    move/from16 v0, p4

    .line 266
    move-wide v1, p1

    long-to-float v3, v1

    move/from16 v4, p3

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 268
    .local v3, "t":F
    sget v5, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 269
    .local v5, "velocityCoef":F
    sget v6, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    neg-float v6, v6

    const v7, 0x4414c000    # 595.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x44160000    # 600.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    sub-float/2addr v6, v5

    .line 270
    .local v6, "distanceCoef":F
    int-to-float v8, v0

    mul-float/2addr v8, v6

    float-to-double v8, v8

    const-wide v10, 0x4082c00000000000L    # 600.0

    div-double v10, p5, v10

    sub-double/2addr v8, v10

    .line 272
    .local v8, "distance":D
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f666666    # 0.9f

    mul-float/2addr v12, v13

    float-to-double v12, v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_1

    .line 273
    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    .line 274
    const/high16 v6, 0x3f800000    # 1.0f

    .line 276
    :cond_0
    int-to-float v7, v0

    mul-float/2addr v7, v6

    float-to-double v8, v7

    .line 278
    :cond_1
    return-wide v8
.end method

.method public getUpdateVelocity(JII)F
    .locals 3
    .param p1, "currentTime"    # J
    .param p3, "splineDuration"    # I
    .param p4, "velocity"    # I

    .line 282
    long-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 284
    .local v0, "t":F
    sget v1, Lcom/huawei/uifirst/smartslide/SmartSlideOverScroller;->mSlopeParameterSlowDown:F

    neg-float v1, v1

    mul-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 286
    .local v1, "velocityCoef":F
    int-to-float v2, p4

    mul-float/2addr v2, v1

    return v2
.end method
