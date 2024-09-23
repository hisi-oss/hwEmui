.class public Lhuawei/android/widget/HwSplineOverScrollerImpl;
.super Ljava/lang/Object;
.source "HwSplineOverScrollerImpl.java"

# interfaces
.implements Landroid/widget/IHwSplineOverScroller;


# static fields
.field private static final BALLISTIC_DURATION_MAX:I = 0x87

.field private static final COMPENSATION_RATE:F = 0.1f

.field private static final CUBIC_DURATION_MAX:I = 0x190

.field private static final DELTA_COMPENSATED_THRESHOLD:I = 0x5

.field private static final DISTANCE_MODIFY:F = 1.8f

.field private static final DURTION_EXP:F = 0.2f

.field private static final DURTION_MODIFY:F = 2.2f

.field private static final INFLEXION_DISTANCE:F = 0.36f

.field private static final INFLEXION_DURTION:F = 0.8f

.field private static final VELOCITY_EXP:F = 0.45f

.field private static final VELOCITY_MAX:I = 0x5dc0

.field private static final VELOCITY_THRESHOLD:I = 0x1388


# instance fields
.field private mAdjustBallisticDuration:I

.field private mItemHeight:I

.field private mLastDistance:D

.field private mLastDistanceActual:D

.field private mMaximumVelocity:I

.field private mOvershootInterpolator:Landroid/view/animation/Interpolator;

.field private mSos:Landroid/widget/OverScroller$SplineOverScroller;

.field private mSpringbackInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/widget/OverScroller$SplineOverScroller;Landroid/content/Context;)V
    .locals 3
    .param p1, "sos"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p2, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mItemHeight:I

    .line 51
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistance:D

    .line 52
    iput-wide v1, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistanceActual:D

    .line 125
    iput v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mAdjustBallisticDuration:I

    .line 36
    iput-object p1, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mSos:Landroid/widget/OverScroller$SplineOverScroller;

    .line 37
    const/high16 v0, 0x2080000

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mSpringbackInterpolator:Landroid/view/animation/Interpolator;

    .line 39
    const v0, 0x2080001

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mOvershootInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 42
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mMaximumVelocity:I

    .line 44
    return-void
.end method

.method private getSplineFlingDistanceModify(I)F
    .locals 3
    .param p1, "velocity"    # I

    .line 213
    const/high16 v0, 0x3f800000    # 1.0f

    .line 214
    .local v0, "dismodify":F
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1388

    if-ge v1, v2, :cond_0

    .line 215
    const v0, 0x3fe66666    # 1.8f

    .line 217
    :cond_0
    return v0
.end method

.method private getSplineFlingDurationModify(I)F
    .locals 3
    .param p1, "velocity"    # I

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    .line 206
    .local v0, "durmodify":F
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1388

    if-ge v1, v2, :cond_0

    .line 207
    const v0, 0x400ccccd    # 2.2f

    .line 209
    :cond_0
    return v0
.end method


# virtual methods
.method public adjustBallisticVelocity(IFI)I
    .locals 8
    .param p1, "originalVelocity"    # I
    .param p2, "acceleration"    # F
    .param p3, "maxOver"    # I

    .line 188
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    iget v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mMaximumVelocity:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 189
    .local v1, "ratio":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    int-to-float v0, p3

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    float-to-double v4, v1

    const-wide v6, 0x3fdcccccc0000000L    # 0.44999998807907104

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 190
    .local v0, "adjustVelocity":I
    float-to-double v2, v1

    const-wide v4, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x4060e00000000000L    # 135.0

    mul-double/2addr v4, v2

    double-to-int v2, v4

    iput v2, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mAdjustBallisticDuration:I

    .line 192
    return v0
.end method

.method public adjustDistance(D)D
    .locals 9
    .param p1, "oirginalDistance"    # D

    .line 84
    move-wide v0, p1

    .line 85
    .local v0, "distance":D
    iget-object v2, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mSos:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineOverScrollerVelocity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x1388

    if-lt v2, v3, :cond_3

    iget v2, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mItemHeight:I

    if-gtz v2, :cond_0

    goto :goto_1

    .line 89
    :cond_0
    iget v2, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mItemHeight:I

    .line 92
    .local v2, "h":I
    iget-wide v3, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistance:D

    sub-double v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    int-to-double v5, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 97
    iget-wide v3, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistanceActual:D

    sub-double v3, v0, v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    int-to-long v5, v2

    mul-long/2addr v3, v5

    .line 99
    .local v3, "acutualDelta":J
    iput-wide v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistance:D

    .line 100
    iget-wide v5, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistanceActual:D

    long-to-double v7, v3

    add-double/2addr v5, v7

    .line 101
    .end local v0    # "distance":D
    .local v5, "distance":D
    iput-wide v5, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistanceActual:D

    .line 103
    .end local v3    # "acutualDelta":J
    nop

    .line 114
    move-wide v0, v5

    goto :goto_0

    .line 105
    .end local v5    # "distance":D
    .restart local v0    # "distance":D
    :cond_1
    const-wide/16 v3, 0x0

    .line 106
    .local v3, "deltaTotal":D
    iget-wide v5, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistance:D

    iget-wide v7, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistanceActual:D

    sub-double/2addr v5, v7

    .line 107
    .end local v3    # "deltaTotal":D
    .local v5, "deltaTotal":D
    iput-wide v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistance:D

    .line 108
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpl-double v3, v3, v7

    if-lez v3, :cond_2

    .line 110
    const-wide v3, 0x3fecccccc0000000L    # 0.8999999761581421

    mul-double/2addr v3, v5

    sub-double/2addr v0, v3

    .line 112
    :cond_2
    iput-wide v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistanceActual:D

    .line 114
    .end local v5    # "deltaTotal":D
    :goto_0
    return-wide v0

    .line 86
    .end local v2    # "h":I
    :cond_3
    :goto_1
    return-wide v0
.end method

.method public getBallisticDistance(DIIJJ)D
    .locals 3
    .param p1, "originalDistance"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "duration"    # J
    .param p7, "currentTime"    # J

    .line 139
    long-to-float v0, p7

    long-to-float v1, p5

    div-float/2addr v0, v1

    .line 140
    .local v0, "fraction":F
    iget-object v1, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mOvershootInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-int v2, p4, p3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    return-wide v1
.end method

.method public getBallisticDuration(I)I
    .locals 1
    .param p1, "originalDuration"    # I

    .line 165
    iget v0, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mAdjustBallisticDuration:I

    return v0
.end method

.method public getCubicDistance(DIIJJ)D
    .locals 3
    .param p1, "originalDistance"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "duration"    # J
    .param p7, "currentTime"    # J

    .line 154
    long-to-float v0, p7

    long-to-float v1, p5

    div-float/2addr v0, v1

    .line 155
    .local v0, "fraction":F
    iget-object v1, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mSpringbackInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-int v2, p4, p3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    return-wide v1
.end method

.method public getCubicDuration(I)I
    .locals 1
    .param p1, "originalDuration"    # I

    .line 175
    const/16 v0, 0x190

    return v0
.end method

.method public getSplineFlingDistance(DIDFF)D
    .locals 11
    .param p1, "orignDistance"    # D
    .param p3, "velocity"    # I
    .param p4, "decelerationRate"    # D
    .param p6, "flingFriction"    # F
    .param p7, "physicalCoeff"    # F

    .line 221
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5dc0

    if-le v0, v1, :cond_0

    .line 222
    const v0, 0x46bb8000    # 24000.0f

    move v1, p3

    int-to-float v2, v1

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .end local p3    # "velocity":I
    .local v0, "velocity":I
    goto :goto_0

    .line 224
    .end local v0    # "velocity":I
    .restart local p3    # "velocity":I
    :cond_0
    move v1, p3

    move v0, v1

    .end local p3    # "velocity":I
    .restart local v0    # "velocity":I
    :goto_0
    mul-float v1, p6, p7

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 225
    const v1, 0x3eb851ec    # 0.36f

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float v2, p6, p7

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    .line 226
    .local v1, "l":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v3, p4, v3

    .line 227
    .local v3, "decelMinusOne":D
    move-object v5, p0

    invoke-direct {v5, v0}, Lhuawei/android/widget/HwSplineOverScrollerImpl;->getSplineFlingDistanceModify(I)F

    move-result v6

    .line 228
    .local v6, "dismodify":F
    mul-float v7, p6, v6

    mul-float v7, v7, p7

    float-to-double v7, v7

    div-double v9, p4, v3

    mul-double/2addr v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    return-wide v7

    .line 230
    .end local v1    # "l":D
    .end local v3    # "decelMinusOne":D
    .end local v6    # "dismodify":F
    :cond_1
    move-object v5, p0

    return-wide p1
.end method

.method public getSplineFlingDuration(IIDFF)I
    .locals 9
    .param p1, "orignDurtion"    # I
    .param p2, "velocity"    # I
    .param p3, "decelerationRate"    # D
    .param p5, "flingFriction"    # F
    .param p6, "physicalCoeff"    # F

    .line 235
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5dc0

    if-le v0, v1, :cond_0

    .line 236
    const v0, 0x46bb8000    # 24000.0f

    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 238
    :cond_0
    mul-float v0, p5, p6

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 239
    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float v1, p5, p6

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 240
    .local v0, "l":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, p3, v2

    .line 241
    .local v2, "decelMinusOne":D
    invoke-direct {p0, p2}, Lhuawei/android/widget/HwSplineOverScrollerImpl;->getSplineFlingDurationModify(I)F

    move-result v4

    .line 242
    .local v4, "durmodify":F
    const-wide v5, 0x408f400000000000L    # 1000.0

    float-to-double v7, v4

    mul-double/2addr v5, v7

    div-double v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    return v5

    .line 244
    .end local v0    # "l":D
    .end local v2    # "decelMinusOne":D
    .end local v4    # "durmodify":F
    :cond_1
    return p1
.end method

.method public resetLastDistanceValue(DD)V
    .locals 0
    .param p1, "lastDistance"    # D
    .param p3, "lastDistanceActual"    # D

    .line 64
    iput-wide p1, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistance:D

    .line 65
    iput-wide p3, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mLastDistanceActual:D

    .line 66
    return-void
.end method

.method public setStableItemHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .line 74
    iput p1, p0, Lhuawei/android/widget/HwSplineOverScrollerImpl;->mItemHeight:I

    .line 75
    return-void
.end method
