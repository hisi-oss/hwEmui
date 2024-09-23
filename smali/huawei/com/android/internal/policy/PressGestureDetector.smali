.class public Lhuawei/com/android/internal/policy/PressGestureDetector;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"

# interfaces
.implements Lcom/android/internal/policy/IPressGestureDetector;


# static fields
.field private static final COUNTS_FINGER_ONE:I = 0x1

.field private static final COUNTS_FINGER_TWO:I = 0x2

.field private static final COUNTS_FINGER_ZERO:I = 0x0

.field private static final DEFAULT_GESTURE_TIME_OUT_LIMIT:J = 0x44cL

.field private static final POINTERS_MIN_DISTANCE_DP:I = 0x10

.field private static final SCREEN_POINTER_BOTTOM_MARGIN_DP:I = 0x29

.field private static final SCREEN_POINTER_MARGIN_DP:I = 0x18

.field private static final SCREEN_POINTER_TOP_MARGIN_DP:I = 0x50

.field private static final TAG:Ljava/lang/String; = "HiTouch_PressGestureDetector"

.field private static final TALK_BACK:Ljava/lang/String; = "talkback"

.field private static final TOUCH_MOVE_LIMIT_X:F = 20.0f

.field private static final TOUCH_MOVE_LIMIT_Y:F = 20.0f

.field private static final TOUCH_TWO_FINGERS_TIME_OUT_LIMIT:J = 0x96L


# instance fields
.field private isMoveTooMuch:Z

.field private final mContext:Landroid/content/Context;

.field private final mContextActivity:Landroid/content/Context;

.field private final mDecorView:Landroid/widget/FrameLayout;

.field private mDisplayHeigh:I

.field private mDisplayScale:F

.field private mDisplayWidth:I

.field private mGestureInterrupted:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasTriggered:Z

.field private mHiTouchRestricted:Z

.field private mIsPhoneLongClickSwipe:Z

.field private mLongPressDownX:F

.field private mLongPressDownY:F

.field private mLongPressPointerDownX:F

.field private mLongPressPointerDownY:F

.field private final mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

.field private mSensorRegistered:Z

.field private mStatus:Z

.field private mStatusChecked:Z

.field private mTouchDownTime:J

.field private mTouchPointerDownTime:J

.field private final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "docerView"    # Landroid/widget/FrameLayout;
    .param p3, "contextActivity"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->isMoveTooMuch:Z

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownX:F

    .line 77
    iput v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownY:F

    .line 79
    iput v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownX:F

    .line 81
    iput v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownY:F

    .line 83
    iput v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayScale:F

    .line 85
    iput v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayWidth:I

    .line 87
    iput v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayHeigh:I

    .line 89
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mIsPhoneLongClickSwipe:Z

    .line 101
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensorRegistered:Z

    .line 104
    iput-object p1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mContextActivity:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    .line 107
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mTouchSlop:I

    .line 108
    new-instance v0, Lhuawei/com/android/internal/policy/HiTouchSensor;

    iget-object v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mContextActivity:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lhuawei/com/android/internal/policy/HiTouchSensor;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHandler:Landroid/os/Handler;

    .line 110
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->updateDisplayParameters()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lhuawei/com/android/internal/policy/PressGestureDetector;)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 28
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHiTouchRestricted:Z

    return v0
.end method

.method static synthetic access$002(Lhuawei/com/android/internal/policy/PressGestureDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHiTouchRestricted:Z

    return p1
.end method

.method static synthetic access$100(Lhuawei/com/android/internal/policy/PressGestureDetector;)Lhuawei/com/android/internal/policy/HiTouchSensor;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 28
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

    return-object v0
.end method

.method static synthetic access$200(Lhuawei/com/android/internal/policy/PressGestureDetector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 28
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lhuawei/com/android/internal/policy/PressGestureDetector;)F
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 28
    iget v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownX:F

    return v0
.end method

.method static synthetic access$400(Lhuawei/com/android/internal/policy/PressGestureDetector;)F
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 28
    iget v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownY:F

    return v0
.end method

.method static synthetic access$500(Lhuawei/com/android/internal/policy/PressGestureDetector;)F
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 28
    iget v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownX:F

    return v0
.end method

.method static synthetic access$600(Lhuawei/com/android/internal/policy/PressGestureDetector;)F
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;

    .line 28
    iget v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownY:F

    return v0
.end method

.method static synthetic access$700(Lhuawei/com/android/internal/policy/PressGestureDetector;FFFF)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/PressGestureDetector;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->triggerLaunchHiTouch(FFFF)Z

    move-result v0

    return v0
.end method

.method private checkIfOutOfDecorView(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 325
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    iget v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mTouchSlop:I

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/FrameLayout;->pointInView(FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkIfPointsOutOfDecorView(FFFF)Z
    .locals 3
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 316
    invoke-direct {p0, p1, p2}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkIfOutOfDecorView(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p3, p4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkIfOutOfDecorView(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    .line 318
    const-string v1, "HiTouch_PressGestureDetector"

    const-string v2, "HiTouch Miss: point OUT of DecorView"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v0
.end method

.method private checkMoveDistance(FFFF)V
    .locals 5
    .param p1, "horizontalMove"    # F
    .param p2, "verticalMove"    # F
    .param p3, "horizontalLimit"    # F
    .param p4, "verticalLimit"    # F

    .line 341
    invoke-direct {p0, p3}, Lhuawei/com/android/internal/policy/PressGestureDetector;->dp2px(F)I

    move-result v0

    .line 342
    .local v0, "horizontalLimitPx":I
    invoke-direct {p0, p4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->dp2px(F)I

    move-result v1

    .line 343
    .local v1, "verticalLimitPx":I
    int-to-float v2, v0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v2, v1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 344
    :cond_0
    const-string v2, "HiTouch_PressGestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch pointer move a lot. The moving distance of X is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", limit is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "The moving distance of Y is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", limit is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v2, 0x1

    iput-boolean v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->isMoveTooMuch:Z

    .line 348
    :cond_1
    return-void
.end method

.method private checkOnePointPosition(FF)Z
    .locals 7
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F

    .line 483
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->dp2px(F)I

    move-result v0

    .line 484
    .local v0, "margin":I
    const/high16 v1, 0x42a00000    # 80.0f

    invoke-direct {p0, v1}, Lhuawei/com/android/internal/policy/PressGestureDetector;->dp2px(F)I

    move-result v1

    .line 485
    .local v1, "topMargin":I
    const/high16 v2, 0x42240000    # 41.0f

    invoke-direct {p0, v2}, Lhuawei/com/android/internal/policy/PressGestureDetector;->dp2px(F)I

    move-result v2

    .line 486
    .local v2, "bottomMargin":I
    int-to-float v3, v0

    cmpg-float v3, p1, v3

    const/4 v4, 0x0

    if-ltz v3, :cond_3

    iget v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayWidth:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_1

    .line 490
    :cond_0
    int-to-float v3, v1

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_2

    iget v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayHeigh:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    goto :goto_0

    .line 494
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 491
    :cond_2
    :goto_0
    const-string v3, "HiTouch_PressGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Y Point is out of bound. Top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Bottom:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayHeigh:I

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v4

    .line 487
    :cond_3
    :goto_1
    const-string v3, "HiTouch_PressGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X Point is out of bound. Left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Right:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayWidth:I

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v4
.end method

.method private checkPointersTooClose(FFFF)Z
    .locals 5
    .param p1, "pointX1"    # F
    .param p2, "pointY1"    # F
    .param p3, "pointX2"    # F
    .param p4, "pointY2"    # F

    .line 468
    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->dp2px(F)I

    move-result v0

    .line 469
    .local v0, "minDistance":I
    invoke-virtual {p0, p1, p2, p3, p4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->getDistance(FFFF)D

    move-result-wide v1

    int-to-double v3, v0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 470
    const-string v1, "HiTouch_PressGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HiTouch pointers are too close. The minDistance is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v1, 0x1

    return v1

    .line 473
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkPointsLocation(FFFF)Z
    .locals 3
    .param p1, "pointX1"    # F
    .param p2, "pointY1"    # F
    .param p3, "pointX2"    # F
    .param p4, "pointY2"    # F

    .line 449
    invoke-direct {p0, p1, p2}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkOnePointPosition(FF)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3, p4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkOnePointPosition(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkPointersTooClose(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    return v1

    .line 456
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 450
    :cond_2
    :goto_0
    const-string v0, "HiTouch_PressGestureDetector"

    const-string v2, "Points are out of bound"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v1
.end method

.method private checkTriggerCondition()V
    .locals 1

    .line 400
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->isMoveTooMuch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mStatus:Z

    if-nez v0, :cond_1

    .line 401
    :cond_0
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->stopCountingTime()V

    .line 403
    :cond_1
    return-void
.end method

.method private dp2px(F)I
    .locals 2
    .param p1, "dpValue"    # F

    .line 425
    iget v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayScale:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private hwLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 527
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 528
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    return-void
.end method

.method private px2dp(F)I
    .locals 2
    .param p1, "pxValue"    # F

    .line 434
    iget v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    return v0

    .line 437
    :cond_0
    iget v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayScale:F

    div-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private registerSensorObserver()V
    .locals 1

    .line 520
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensorRegistered:Z

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

    invoke-virtual {v0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->registerObserver()V

    .line 522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensorRegistered:Z

    .line 524
    :cond_0
    return-void
.end method

.method private resetSwipeFlag()V
    .locals 1

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mIsPhoneLongClickSwipe:Z

    .line 313
    return-void
.end method

.method private startCountingTime()V
    .locals 5

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mTouchDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x44c

    sub-long/2addr v2, v0

    .line 359
    .local v2, "actualTriggerTime":J
    const-string v0, "HiTouch_PressGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StandardTriggerTime:1100,actualTriggerTime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lhuawei/com/android/internal/policy/PressGestureDetector$2;

    invoke-direct {v1, p0}, Lhuawei/com/android/internal/policy/PressGestureDetector$2;-><init>(Lhuawei/com/android/internal/policy/PressGestureDetector;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    return-void
.end method

.method private stopCountingTime()V
    .locals 2

    .line 375
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method private triggerLaunchHiTouch(FFFF)Z
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 390
    const-string v0, "HiTouch_PressGestureDetector"

    const-string v1, "launchHiTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lhuawei/com/android/internal/policy/HiTouchSensor;->launchHiTouchService(FFFFI)V

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHasTriggered:Z

    .line 393
    return v0
.end method

.method private updateDisplayParameters()V
    .locals 7

    .line 498
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mContextActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 499
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayScale:F

    .line 500
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayWidth:I

    .line 501
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayHeigh:I

    .line 503
    const-string v1, "ro.config.hw_notch_size"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "notchSizeStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 505
    iget-object v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mContextActivity:Landroid/content/Context;

    .line 506
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 507
    .local v2, "notchHeight":I
    iget-object v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mContextActivity:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 508
    .local v3, "orientation":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 509
    iget v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayHeigh:I

    add-int/2addr v4, v2

    iput v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayHeigh:I

    .line 510
    const-string v4, "HiTouch_PressGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HiTouch on notch display, height corret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_0
    iget v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayWidth:I

    add-int/2addr v4, v2

    iput v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDisplayWidth:I

    .line 513
    const-string v4, "HiTouch_PressGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HiTouch on notch display, width corret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .end local v2    # "notchHeight":I
    .end local v3    # "orientation":I
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "isHandling"    # Z

    .line 157
    const/4 v0, 0x0

    if-nez p2, :cond_11

    iget-boolean v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHiTouchRestricted:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 161
    :cond_0
    iget-object v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

    invoke-virtual {v1}, Lhuawei/com/android/internal/policy/HiTouchSensor;->checkDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    return v0

    .line 165
    :cond_1
    iget-object v1, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 166
    const-string v1, "HiTouch_PressGestureDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDecorView.getParent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDecorView.getViewRootImpl(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    .line 167
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-direct {p0, v1, v2}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->resetSwipeFlag()V

    .line 169
    return v0

    .line 172
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 173
    .local v1, "action":I
    and-int/lit16 v2, v1, 0xff

    .line 174
    .local v2, "actionMasked":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 293
    :pswitch_1
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    .line 294
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->resetSwipeFlag()V

    .line 295
    const-string v3, "HiTouch_PressGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HiTouch ACTION_POINTER_UP. Finger Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    goto/16 :goto_1

    .line 187
    :pswitch_2
    const-string v5, "HiTouch_PressGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_POINTER_DOWN. pointer count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mStatusChecked:Z

    .line 189
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mIsPhoneLongClickSwipe:Z

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-le v5, v3, :cond_3

    .line 192
    const-string v3, "HiTouch_PressGestureDetector"

    const-string v5, "HiTouch Miss: more than two pointers."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    .line 194
    goto/16 :goto_1

    .line 197
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 199
    .local v3, "actionIndexPointerDown":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownX:F

    .line 200
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iput v5, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownY:F

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mTouchPointerDownTime:J

    .line 204
    .end local v3    # "actionIndexPointerDown":I
    :cond_4
    iget-wide v5, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mTouchPointerDownTime:J

    iget-wide v7, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mTouchDownTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 205
    .local v5, "intervalTwoFingers":J
    const-wide/16 v7, 0x96

    cmp-long v3, v5, v7

    if-lez v3, :cond_5

    .line 206
    const-string v3, "HiTouch_PressGestureDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HiTouch Miss: Too large time interval(TwoFingers), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    .line 208
    goto/16 :goto_1

    .line 211
    :cond_5
    iget-boolean v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mStatusChecked:Z

    if-nez v3, :cond_6

    .line 212
    iget-object v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

    invoke-virtual {v3}, Lhuawei/com/android/internal/policy/HiTouchSensor;->getStatus()Z

    move-result v3

    iput-boolean v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mStatus:Z

    .line 213
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mStatusChecked:Z

    .line 214
    const-string v3, "HiTouch_PressGestureDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HiTouch mStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mStatus:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_6
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->registerSensorObserver()V

    .line 219
    iget v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownX:F

    iget v7, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownY:F

    invoke-direct {p0, v3, v7}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkOnePointPosition(FF)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownX:F

    iget v7, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownY:F

    .line 220
    invoke-direct {p0, v3, v7}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkOnePointPosition(FF)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 226
    :cond_7
    iget v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownX:F

    iget v7, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownY:F

    iget v8, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownX:F

    iget v9, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownY:F

    invoke-direct {p0, v3, v7, v8, v9}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkPointersTooClose(FFFF)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 228
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    .line 229
    goto/16 :goto_1

    .line 233
    :cond_8
    iget v3, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownX:F

    iget v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownY:F

    iget v7, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownX:F

    iget v8, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownY:F

    invoke-direct {p0, v3, v4, v7, v8}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkIfPointsOutOfDecorView(FFFF)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 235
    goto/16 :goto_1

    .line 242
    :cond_9
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->startCountingTime()V

    .line 243
    goto/16 :goto_1

    .line 221
    :cond_a
    :goto_0
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    .line 222
    goto/16 :goto_1

    .line 299
    .end local v5    # "intervalTwoFingers":J
    :pswitch_3
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    .line 300
    const-string v3, "HiTouch_PressGestureDetector"

    const-string v4, "HiTouch ACTION_CANCEL."

    invoke-direct {p0, v3, v4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->resetSwipeFlag()V

    .line 302
    goto/16 :goto_1

    .line 245
    :pswitch_4
    iget-boolean v5, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHasTriggered:Z

    if-eqz v5, :cond_b

    .line 246
    goto/16 :goto_1

    .line 248
    :cond_b
    iget-boolean v5, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->isMoveTooMuch:Z

    if-eqz v5, :cond_c

    .line 249
    goto/16 :goto_1

    .line 252
    :cond_c
    iget v5, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-direct {p0, v5, v6, v7, v7}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkMoveDistance(FFFF)V

    .line 255
    iget-boolean v5, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    if-eqz v5, :cond_d

    .line 256
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->resetSwipeFlag()V

    .line 257
    goto/16 :goto_1

    .line 262
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-eq v5, v3, :cond_e

    .line 263
    goto/16 :goto_1

    .line 266
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 267
    .local v3, "mainPointX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 268
    .local v5, "mainPointY":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 269
    .local v6, "secondPointX":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 271
    .local v8, "secondPointY":F
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mIsPhoneLongClickSwipe:Z

    .line 274
    invoke-direct {p0, v3, v5, v6, v8}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkIfPointsOutOfDecorView(FFFF)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 275
    goto :goto_1

    .line 279
    :cond_f
    iget v9, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownX:F

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownY:F

    sub-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-direct {p0, v9, v10, v7, v7}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkMoveDistance(FFFF)V

    .line 281
    iget v9, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownX:F

    sub-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressPointerDownY:F

    sub-float/2addr v10, v8

    .line 282
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 281
    invoke-direct {p0, v9, v10, v7, v7}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkMoveDistance(FFFF)V

    .line 283
    invoke-direct {p0, v3, v5, v6, v8}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkPointsLocation(FFFF)Z

    move-result v7

    if-nez v7, :cond_10

    .line 284
    iput-boolean v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    goto :goto_1

    .line 288
    .end local v3    # "mainPointX":F
    .end local v5    # "mainPointY":F
    .end local v6    # "secondPointX":F
    .end local v8    # "secondPointY":F
    :pswitch_5
    const-string v3, "HiTouch_PressGestureDetector"

    const-string v4, "ACTION_UP"

    invoke-direct {p0, v3, v4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->resetSwipeFlag()V

    .line 290
    goto :goto_1

    .line 176
    :pswitch_6
    const-string v3, "HiTouch_PressGestureDetector"

    const-string v4, "ACTION_DOWN."

    invoke-direct {p0, v3, v4}, Lhuawei/com/android/internal/policy/PressGestureDetector;->hwLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHasTriggered:Z

    .line 178
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->isMoveTooMuch:Z

    .line 179
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mGestureInterrupted:Z

    .line 180
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mIsPhoneLongClickSwipe:Z

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 182
    .local v3, "actionIndexDown":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownX:F

    .line 183
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mLongPressDownY:F

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mTouchDownTime:J

    .line 185
    nop

    .line 307
    .end local v3    # "actionIndexDown":I
    :cond_10
    :goto_1
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->checkTriggerCondition()V

    .line 308
    return v0

    .line 158
    .end local v1    # "action":I
    .end local v2    # "actionMasked":I
    :cond_11
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getDistance(FFFF)D
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 414
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 415
    .local v0, "distanceX":F
    sub-float v1, p2, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 416
    .local v1, "distanceY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public handleBackKey()V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHiTouchRestricted:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->resetSwipeFlag()V

    .line 143
    :cond_0
    return-void
.end method

.method public handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 146
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->updateDisplayParameters()V

    .line 147
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/policy/HiTouchSensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    return-void
.end method

.method public isLongPressSwipe()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mIsPhoneLongClickSwipe:Z

    return v0
.end method

.method public onAttached(I)V
    .locals 1
    .param p1, "windowType"    # I

    .line 118
    new-instance v0, Lhuawei/com/android/internal/policy/PressGestureDetector$1;

    invoke-direct {v0, p0, p1}, Lhuawei/com/android/internal/policy/PressGestureDetector$1;-><init>(Lhuawei/com/android/internal/policy/PressGestureDetector;I)V

    .line 125
    invoke-virtual {v0}, Lhuawei/com/android/internal/policy/PressGestureDetector$1;->start()V

    .line 126
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mHiTouchRestricted:Z

    if-eqz v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensorRegistered:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensor:Lhuawei/com/android/internal/policy/HiTouchSensor;

    invoke-virtual {v0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->unregisterObserver()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/PressGestureDetector;->mSensorRegistered:Z

    .line 136
    :cond_1
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/PressGestureDetector;->resetSwipeFlag()V

    .line 137
    return-void
.end method
