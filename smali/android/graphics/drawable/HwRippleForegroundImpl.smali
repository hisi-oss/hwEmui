.class Landroid/graphics/drawable/HwRippleForegroundImpl;
.super Landroid/graphics/drawable/RippleComponent;
.source "HwRippleForegroundImpl.java"


# static fields
.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final OPACITY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/HwRippleForegroundImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPACITY_ENTER_DURATION:I = 0x64

.field private static final OPACITY_EXIT_DURATION:I = 0x64

.field private static final OPACITY_HOLD_DURATION:I = 0xfa

.field private static final RIPPLE_ENTER_DURATION:I = 0x64

.field private static final RIPPLE_ORIGIN_DURATION:I = 0x64

.field private static final RIPPLE_START_RADIUS_SCALE:F = 0.9f

.field private static final TWEEN_ORIGIN:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/HwRippleForegroundImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final TWEEN_RADIUS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/HwRippleForegroundImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mEnterStartedAtMillis:J

.field private final mForceSoftware:Z

.field private mHasFinishedExit:Z

.field private mOpacity:F

.field private mPendingHwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningHwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningSwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mStartRadius:F

.field private mStartingX:F

.field private mStartingY:F

.field private mTargetX:F

.field private mTargetY:F

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F

.field private mUsingProperties:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/HwRippleForegroundImpl;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 48
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/graphics/drawable/HwRippleForegroundImpl;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 416
    new-instance v0, Landroid/graphics/drawable/HwRippleForegroundImpl$2;

    const-string v1, "tweenRadius"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/HwRippleForegroundImpl$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/HwRippleForegroundImpl;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    .line 433
    new-instance v0, Landroid/graphics/drawable/HwRippleForegroundImpl$3;

    const-string v1, "tweenOrigin"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/HwRippleForegroundImpl$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/HwRippleForegroundImpl;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    .line 451
    new-instance v0, Landroid/graphics/drawable/HwRippleForegroundImpl$4;

    const-string v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/HwRippleForegroundImpl$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/HwRippleForegroundImpl;->OPACITY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZI)V
    .locals 2
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "isBounded"    # Z
    .param p4, "forceSoftware"    # Z
    .param p5, "type"    # I

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetX:F

    .line 76
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetY:F

    .line 79
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mOpacity:F

    .line 82
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenRadius:F

    .line 83
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenX:F

    .line 84
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenY:F

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPendingHwAnimators:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    .line 108
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartRadius:F

    .line 389
    new-instance v1, Landroid/graphics/drawable/HwRippleForegroundImpl$1;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/HwRippleForegroundImpl$1;-><init>(Landroid/graphics/drawable/HwRippleForegroundImpl;)V

    iput-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 114
    iput-boolean p4, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mForceSoftware:Z

    .line 115
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartingX:F

    .line 116
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartingY:F

    .line 117
    iput v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartRadius:F

    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->clampStartingPosition()V

    .line 119
    return-void
.end method

.method static synthetic access$002(Landroid/graphics/drawable/HwRippleForegroundImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mHasFinishedExit:Z

    return p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/HwRippleForegroundImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->pruneHwFinished()V

    return-void
.end method

.method static synthetic access$200(Landroid/graphics/drawable/HwRippleForegroundImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->pruneSwFinished()V

    return-void
.end method

.method static synthetic access$300(Landroid/graphics/drawable/HwRippleForegroundImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 45
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/graphics/drawable/HwRippleForegroundImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->clearHwProps()V

    return-void
.end method

.method static synthetic access$500(Landroid/graphics/drawable/HwRippleForegroundImpl;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 45
    iget v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenRadius:F

    return v0
.end method

.method static synthetic access$502(Landroid/graphics/drawable/HwRippleForegroundImpl;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;
    .param p1, "x1"    # F

    .line 45
    iput p1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenRadius:F

    return p1
.end method

.method static synthetic access$600(Landroid/graphics/drawable/HwRippleForegroundImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 45
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->onAnimationPropertyChanged()V

    return-void
.end method

.method static synthetic access$700(Landroid/graphics/drawable/HwRippleForegroundImpl;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 45
    iget v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenX:F

    return v0
.end method

.method static synthetic access$702(Landroid/graphics/drawable/HwRippleForegroundImpl;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;
    .param p1, "x1"    # F

    .line 45
    iput p1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenX:F

    return p1
.end method

.method static synthetic access$802(Landroid/graphics/drawable/HwRippleForegroundImpl;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;
    .param p1, "x1"    # F

    .line 45
    iput p1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenY:F

    return p1
.end method

.method static synthetic access$900(Landroid/graphics/drawable/HwRippleForegroundImpl;)F
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;

    .line 45
    iget v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mOpacity:F

    return v0
.end method

.method static synthetic access$902(Landroid/graphics/drawable/HwRippleForegroundImpl;F)F
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/HwRippleForegroundImpl;
    .param p1, "x1"    # F

    .line 45
    iput p1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mOpacity:F

    return p1
.end method

.method private clampStartingPosition()V
    .locals 11

    .line 345
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 346
    .local v0, "cX":F
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 347
    .local v1, "cY":F
    iget v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartingX:F

    sub-float/2addr v2, v0

    .line 348
    .local v2, "dX":F
    iget v3, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartingY:F

    sub-float/2addr v3, v1

    .line 349
    .local v3, "dY":F
    iget v4, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetRadius:F

    iget v5, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartRadius:F

    sub-float/2addr v4, v5

    .line 350
    .local v4, "r":F
    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    mul-float v6, v4, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 352
    float-to-double v5, v3

    float-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 353
    .local v5, "angle":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v0

    iput v7, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mClampedStartingX:F

    .line 354
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v1

    iput v7, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mClampedStartingY:F

    .line 355
    .end local v5    # "angle":D
    goto :goto_0

    .line 356
    :cond_0
    iget v5, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartingX:F

    iput v5, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mClampedStartingX:F

    .line 357
    iget v5, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartingY:F

    iput v5, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mClampedStartingY:F

    .line 359
    :goto_0
    return-void
.end method

.method private clearHwProps()V
    .locals 1

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 383
    iput-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 384
    iput-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropX:Landroid/graphics/CanvasProperty;

    .line 385
    iput-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropY:Landroid/graphics/CanvasProperty;

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mUsingProperties:Z

    .line 387
    return-void
.end method

.method private computeFadeOutDelay()J
    .locals 7

    .line 213
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mEnterStartedAtMillis:J

    sub-long/2addr v0, v2

    .line 214
    .local v0, "timeSinceEnter":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0xfa

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 215
    sub-long/2addr v4, v0

    return-wide v4

    .line 217
    :cond_0
    return-wide v2
.end method

.method private drawHardware(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "c"    # Landroid/view/DisplayListCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 173
    invoke-direct {p0, p1}, Landroid/graphics/drawable/HwRippleForegroundImpl;->startPending(Landroid/view/DisplayListCanvas;)V

    .line 174
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->pruneHwFinished()V

    .line 175
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropPaint:Landroid/graphics/CanvasProperty;

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mUsingProperties:Z

    .line 177
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_0

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mUsingProperties:Z

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/HwRippleForegroundImpl;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 182
    :goto_0
    return-void
.end method

.method private drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 128
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 129
    .local v0, "origAlpha":I
    int-to-float v1, v0

    iget v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 130
    .local v1, "alpha":I
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->getCurrentRadius()F

    move-result v2

    .line 131
    .local v2, "radius":F
    if-lez v1, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 132
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->getCurrentX()F

    move-result v3

    .line 133
    .local v3, "x":F
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->getCurrentY()F

    move-result v4

    .line 134
    .local v4, "y":F
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method

.method private getCurrentRadius()F
    .locals 3

    .line 319
    iget v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartRadius:F

    iget v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetRadius:F

    iget v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTweenRadius:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private getCurrentX()F
    .locals 1

    .line 311
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    return v0
.end method

.method private getCurrentY()F
    .locals 1

    .line 315
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    return v0
.end method

.method private onAnimationPropertyChanged()V
    .locals 1

    .line 376
    iget-boolean v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mUsingProperties:Z

    if-nez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->invalidateSelf()V

    .line 379
    :cond_0
    return-void
.end method

.method private pruneHwFinished()V
    .locals 2

    .line 153
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 155
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private pruneSwFinished()V
    .locals 2

    .line 163
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 165
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private startHardwareEnter()V
    .locals 8

    .line 256
    iget-boolean v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mForceSoftware:Z

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->getCurrentX()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropX:Landroid/graphics/CanvasProperty;

    .line 258
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->getCurrentY()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropY:Landroid/graphics/CanvasProperty;

    .line 259
    iget v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetRadius:F

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 260
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 261
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 263
    new-instance v1, Landroid/view/RenderNodeAnimator;

    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget v3, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetRadius:F

    invoke-direct {v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 264
    .local v1, "radius":Landroid/view/RenderNodeAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 265
    sget-object v4, Landroid/graphics/drawable/HwRippleForegroundImpl;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v4, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v4, Landroid/view/RenderNodeAnimator;

    iget-object v5, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropPaint:Landroid/graphics/CanvasProperty;

    const/4 v6, 0x1

    .line 269
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v4, v5, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 270
    .local v4, "opacity":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v4, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 271
    sget-object v2, Landroid/graphics/drawable/HwRippleForegroundImpl;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/RenderNodeAnimator;->setStartValue(F)V

    .line 273
    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-virtual {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->invalidateSelf()V

    .line 276
    return-void
.end method

.method private startHardwareExit()V
    .locals 4

    .line 280
    iget-boolean v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mForceSoftware:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropPaint:Landroid/graphics/CanvasProperty;

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPropPaint:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 284
    .local v0, "opacity":Landroid/view/RenderNodeAnimator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 285
    sget-object v1, Landroid/graphics/drawable/HwRippleForegroundImpl;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->computeFadeOutDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 288
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setStartValue(F)V

    .line 289
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->invalidateSelf()V

    .line 291
    return-void

    .line 280
    .end local v0    # "opacity":Landroid/view/RenderNodeAnimator;
    :cond_1
    :goto_0
    return-void
.end method

.method private startPending(Landroid/view/DisplayListCanvas;)V
    .locals 3
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    .line 141
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNodeAnimator;

    .line 144
    .local v1, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/DisplayListCanvas;)V

    .line 145
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    .line 146
    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v1    # "animator":Landroid/view/RenderNodeAnimator;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    :cond_1
    return-void
.end method

.method private startSoftwareEnter()V
    .locals 8

    .line 221
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 222
    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 226
    sget-object v1, Landroid/graphics/drawable/HwRippleForegroundImpl;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 227
    .local v1, "tweenRadius":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 228
    sget-object v3, Landroid/graphics/drawable/HwRippleForegroundImpl;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 230
    iget-object v3, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v3, Landroid/graphics/drawable/HwRippleForegroundImpl;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    new-array v7, v2, [F

    aput v4, v7, v0

    invoke-static {p0, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 233
    .local v3, "tweenOrigin":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 234
    sget-object v7, Landroid/graphics/drawable/HwRippleForegroundImpl;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 236
    iget-object v7, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v7, Landroid/graphics/drawable/HwRippleForegroundImpl;->OPACITY:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    aput v4, v2, v0

    invoke-static {p0, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 239
    .local v0, "opacity":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    sget-object v2, Landroid/graphics/drawable/HwRippleForegroundImpl;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 242
    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method private startSoftwareExit()V
    .locals 4

    .line 246
    sget-object v0, Landroid/graphics/drawable/HwRippleForegroundImpl;->OPACITY:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 247
    .local v0, "opacity":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    sget-object v1, Landroid/graphics/drawable/HwRippleForegroundImpl;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->computeFadeOutDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 251
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 252
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method private switchToUiThreadAnimation()V
    .locals 3

    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 404
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 405
    .local v1, "animator":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 406
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 403
    .end local v1    # "animator":Landroid/animation/Animator;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 409
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->clearHwProps()V

    .line 410
    invoke-virtual {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->invalidateSelf()V

    .line 411
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 330
    iget-boolean v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mForceSoftware:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 332
    .local v0, "hasDisplayListCanvas":Z
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->pruneSwFinished()V

    .line 333
    if-eqz v0, :cond_1

    .line 334
    move-object v1, p1

    check-cast v1, Landroid/view/DisplayListCanvas;

    .line 335
    .local v1, "hw":Landroid/view/DisplayListCanvas;
    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/HwRippleForegroundImpl;->drawHardware(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V

    .line 336
    .end local v1    # "hw":Landroid/view/DisplayListCanvas;
    goto :goto_1

    .line 337
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/HwRippleForegroundImpl;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 339
    :goto_1
    return-void
.end method

.method public end()V
    .locals 3

    .line 365
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 366
    iget-object v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 369
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 370
    iget-object v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->end()V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 373
    return-void
.end method

.method public final enter()V
    .locals 2

    .line 297
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mEnterStartedAtMillis:J

    .line 298
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->startSoftwareEnter()V

    .line 299
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->startHardwareEnter()V

    .line 300
    return-void
.end method

.method public final exit()V
    .locals 0

    .line 306
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->startSoftwareExit()V

    .line 307
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->startHardwareExit()V

    .line 308
    return-void
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 188
    iget v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetX:F

    float-to-int v0, v0

    .line 189
    .local v0, "outerX":I
    iget v1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetY:F

    float-to-int v1, v1

    .line 190
    .local v1, "outerY":I
    iget v2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mTargetRadius:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 191
    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 192
    return-void
.end method

.method public hasFinishedExit()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mHasFinishedExit:Z

    return v0
.end method

.method public move(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 199
    iput p1, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartingX:F

    .line 200
    iput p2, p0, Landroid/graphics/drawable/HwRippleForegroundImpl;->mStartingY:F

    .line 202
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->clampStartingPosition()V

    .line 203
    return-void
.end method

.method protected onTargetRadiusChanged(F)V
    .locals 0
    .param p1, "targetRadius"    # F

    .line 123
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->clampStartingPosition()V

    .line 124
    invoke-direct {p0}, Landroid/graphics/drawable/HwRippleForegroundImpl;->switchToUiThreadAnimation()V

    .line 125
    return-void
.end method
