.class public Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;
.super Lcom/android/internal/widget/ActionBarOverlayLayout;
.source "HwActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$SimpleGestureListener;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DELAY:I = 0x85

.field private static final ALPHA_ANIMATION_DURATION:I = 0xa7

.field private static final ALPHA_ANIMATION_START:F = 0.3325f

.field private static final FLING_THRESHOULD:I = 0x898

.field private static final INVALID_POINTER:I = -0x1

.field private static final SCROLL_ANIMATION_DURATION:I = 0x190

.field private static final STAGE_ONE:I = 0x1

.field private static final STAGE_RESET:I = 0x0

.field private static final STAGE_TWO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HwActionBarOverlayLayout"


# instance fields
.field private mActivePointerId:I

.field private mCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

.field private mCanDragFromContent:Z

.field private mCustViewHeight:I

.field private mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

.field private mDragStage:I

.field private mDrawerOpend:Z

.field private mFirstCustViewHeight:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHwDrawerFeature:Z

.field private mHwOverlayActionBar:I

.field private mIsAnimationEnable:Z

.field private mIsBeingDragged:Z

.field private mIsDraggable:Z

.field private mIsStage2Changed:Z

.field private mIsStageChanged:Z

.field private mIsStartStageChanged:Z

.field private mLastMotionY:I

.field private mLazyMode:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSecondCustViewHeight:I

.field private mStartCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

.field private final mStillViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchSlop:I

.field private mUiOptions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mTouchSlop:I

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 76
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCanDragFromContent:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStillViews:Ljava/util/ArrayList;

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsAnimationEnable:Z

    .line 82
    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    .line 83
    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mSecondCustViewHeight:I

    .line 85
    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mDragStage:I

    .line 87
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsDraggable:Z

    .line 88
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLazyMode:Z

    .line 536
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStageChanged:Z

    .line 537
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStage2Changed:Z

    .line 539
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStartStageChanged:Z

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mTouchSlop:I

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 76
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCanDragFromContent:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStillViews:Ljava/util/ArrayList;

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsAnimationEnable:Z

    .line 82
    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    .line 83
    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mSecondCustViewHeight:I

    .line 85
    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mDragStage:I

    .line 87
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsDraggable:Z

    .line 88
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLazyMode:Z

    .line 536
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStageChanged:Z

    .line 537
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStage2Changed:Z

    .line 539
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStartStageChanged:Z

    .line 105
    return-void
.end method

.method static synthetic access$100(Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;)I
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;

    .line 52
    iget v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;IZ)V
    .locals 0
    .param p0, "x0"    # Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 52
    invoke-direct {p0, p1, p2}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->startFlingAnimation(IZ)V

    return-void
.end method

.method private custScrollTo(I)V
    .locals 10
    .param p1, "y"    # I

    .line 543
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarBottom()Landroid/view/View;

    move-result-object v0

    .line 544
    .local v0, "actionBarBottom":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 545
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 548
    :cond_0
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStillViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 549
    .local v1, "size":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 550
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStillViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 551
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 552
    int-to-float v5, p1

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 549
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v2, p1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->scrollTo(II)V

    .line 560
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    if-eqz v3, :cond_3

    .line 562
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarHeight()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lhuawei/com/android/internal/widget/HwCustomPanel;->setClipY(I)V

    .line 569
    :cond_3
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {v3, v2}, Lhuawei/com/android/internal/widget/HwCustomPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 570
    .local v3, "firstChild":Landroid/view/View;
    :goto_1
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {v4, v6}, Lhuawei/com/android/internal/widget/HwCustomPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    nop

    .line 572
    .local v4, "secondChild":Landroid/view/View;
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_8

    .line 573
    iput v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mDragStage:I

    .line 574
    if-eqz v3, :cond_6

    .line 575
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    .line 577
    :cond_6
    if-eqz v4, :cond_7

    .line 578
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 581
    :cond_7
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStartCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    if-eqz v5, :cond_10

    iget-boolean v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStartStageChanged:Z

    if-eqz v5, :cond_10

    .line 582
    iput-boolean v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStartStageChanged:Z

    .line 583
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStartCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    invoke-interface {v2}, Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;->onExitNextStage()V

    goto/16 :goto_2

    .line 586
    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v8, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    const/high16 v9, 0x3f800000    # 1.0f

    if-gt v5, v8, :cond_d

    .line 587
    iput v6, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mDragStage:I

    .line 588
    if-eqz v4, :cond_9

    .line 589
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 591
    :cond_9
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStageChanged:Z

    if-eqz v5, :cond_a

    .line 592
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    invoke-interface {v5}, Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;->onExitNextStage()V

    .line 593
    iput-boolean v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStageChanged:Z

    .line 594
    iput-boolean v6, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStage2Changed:Z

    .line 598
    :cond_a
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStartCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    if-eqz v2, :cond_b

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v5, 0xa

    if-lt v2, v5, :cond_b

    iget-boolean v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStartStageChanged:Z

    if-nez v2, :cond_b

    .line 599
    iput-boolean v6, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStartStageChanged:Z

    .line 600
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStartCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    invoke-interface {v2}, Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;->onEnterNextStage()V

    .line 603
    :cond_b
    neg-int v2, p1

    int-to-float v2, v2

    mul-float/2addr v2, v9

    iget v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 604
    .local v2, "firstStageProgress":F
    if-eqz v3, :cond_c

    .line 605
    invoke-direct {p0, v2}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getAlphaInterpolation(F)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 607
    .end local v2    # "firstStageProgress":F
    :cond_c
    goto :goto_2

    :cond_d
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    if-gt v5, v7, :cond_10

    .line 609
    const/4 v5, 0x2

    iput v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mDragStage:I

    .line 611
    if-eqz v3, :cond_e

    .line 612
    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    .line 614
    :cond_e
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStage2Changed:Z

    if-eqz v5, :cond_f

    .line 615
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    invoke-interface {v5}, Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;->onEnterNextStage()V

    .line 616
    iput-boolean v6, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStageChanged:Z

    .line 617
    iput-boolean v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsStage2Changed:Z

    .line 619
    :cond_f
    neg-int v2, p1

    iget v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v9

    iget v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mSecondCustViewHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 620
    .local v2, "secondStageProgress":F
    if-eqz v4, :cond_10

    .line 621
    invoke-direct {p0, v2}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getAlphaInterpolation(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 626
    .end local v2    # "secondStageProgress":F
    :cond_10
    :goto_2
    return-void
.end method

.method private getAlphaInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .line 633
    move v0, p1

    .line 634
    .local v0, "progress":F
    const v1, 0x3eaa3d71    # 0.3325f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 635
    const/4 v0, 0x0

    goto :goto_0

    .line 637
    :cond_0
    sub-float v1, v0, v1

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43270000    # 167.0f

    div-float v0, v1, v2

    .line 640
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 641
    const/high16 v0, 0x3f800000    # 1.0f

    .line 643
    :cond_1
    return v0
.end method

.method private inActionBarTop(I)Z
    .locals 4
    .param p1, "y"    # I

    .line 481
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarContainer()Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, "actionBarTop":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 483
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    .line 484
    .local v2, "scrollY":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt p1, v3, :cond_0

    .line 485
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v2

    if-gt p1, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 486
    .local v1, "rtn":Z
    :cond_0
    return v1

    .line 488
    .end local v1    # "rtn":Z
    .end local v2    # "scrollY":I
    :cond_1
    return v1
.end method

.method private inCustPanel(I)Z
    .locals 4
    .param p1, "y"    # I

    .line 365
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarContainer()Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "actionBarTop":Landroid/view/View;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 367
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    .line 368
    .local v2, "scrollY":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v2

    if-gt p1, v3, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 370
    .local v1, "rtn":Z
    :cond_0
    return v1

    .line 372
    .end local v1    # "rtn":Z
    .end local v2    # "scrollY":I
    :cond_1
    return v1
.end method

.method private initCustomPanel()V
    .locals 7

    .line 415
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    if-nez v0, :cond_2

    .line 417
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBar()Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    move-result-object v0

    .line 418
    .local v0, "abvc":Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
    const/4 v1, 0x0

    .line 419
    .local v1, "actionBar":Lhuawei/com/android/internal/app/HwActionBarImpl;
    instance-of v2, v0, Lhuawei/com/android/internal/app/HwActionBarImpl;

    if-eqz v2, :cond_0

    .line 420
    move-object v1, v0

    check-cast v1, Lhuawei/com/android/internal/app/HwActionBarImpl;

    .line 422
    :cond_0
    if-eqz v1, :cond_1

    .line 423
    invoke-virtual {v1}, Lhuawei/com/android/internal/app/HwActionBarImpl;->getCustomPanel()Lhuawei/com/android/internal/widget/HwCustomPanel;

    move-result-object v2

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    goto :goto_0

    .line 425
    :cond_1
    const-string v2, "HwActionBarOverlayLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustomPanel is not initialized correctly, CustViewHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 431
    .end local v0    # "abvc":Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
    .end local v1    # "actionBar":Lhuawei/com/android/internal/app/HwActionBarImpl;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    .line 432
    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mSecondCustViewHeight:I

    .line 433
    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    .line 434
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    if-eqz v1, :cond_7

    .line 435
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {v1, v0}, Lhuawei/com/android/internal/widget/HwCustomPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 436
    .local v0, "firstChild":Landroid/view/View;
    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    .line 440
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {v2, v1}, Lhuawei/com/android/internal/widget/HwCustomPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 441
    .local v2, "secondChild":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 442
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mSecondCustViewHeight:I

    .line 445
    :cond_3
    iget v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    iget v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mSecondCustViewHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    .line 446
    .end local v2    # "secondChild":Landroid/view/View;
    goto :goto_1

    .line 449
    :cond_4
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {v2}, Lhuawei/com/android/internal/widget/HwCustomPanel;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    .line 454
    :goto_1
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lhuawei/com/android/internal/widget/HwWidgetUtils;->isActionbarBackgroundThemed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 456
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 457
    .local v3, "cpLoc":[I
    new-array v2, v2, [I

    .line 458
    .local v2, "ctLoc":[I
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {v4, v3}, Lhuawei/com/android/internal/widget/HwCustomPanel;->getLocationOnScreen([I)V

    .line 459
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarContainer()Landroid/view/View;

    move-result-object v4

    .line 460
    .local v4, "actionBarTop":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 461
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 463
    :cond_5
    aget v5, v3, v1

    aget v1, v2, v1

    if-ge v5, v1, :cond_6

    .line 464
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x203023b    # 9.625E-38f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Lhuawei/com/android/internal/widget/HwCustomPanel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 467
    :cond_6
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lhuawei/com/android/internal/widget/HwCustomPanel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v2    # "ctLoc":[I
    .end local v3    # "cpLoc":[I
    .end local v4    # "actionBarTop":Landroid/view/View;
    :cond_7
    :goto_2
    return-void
.end method

.method private initScroller()V
    .locals 4

    .line 402
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mContext:Landroid/content/Context;

    const v3, 0x2080002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    .line 407
    return-void
.end method

.method private isCustomPanelEmpty()Z
    .locals 1

    .line 396
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initCustomPanel()V

    .line 397
    iget v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveBy(I)V
    .locals 1
    .param p1, "deltaY"    # I

    .line 528
    iget v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    add-int/2addr v0, p1

    .line 529
    .local v0, "toY":I
    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->custScrollTo(I)V

    .line 530
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->invalidate()V

    .line 531
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 287
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 288
    .local v1, "pointerId":I
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 289
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 290
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    .line 291
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 293
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private smoothScrollTo(III)V
    .locals 7
    .param p1, "startY"    # I
    .param p2, "y"    # I
    .param p3, "duration"    # I

    .line 506
    sub-int v6, p2, p1

    .line 507
    .local v6, "dy":I
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p1

    move v4, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 508
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->postInvalidateOnAnimation()V

    .line 509
    return-void
.end method

.method private startAnimation(I)V
    .locals 5
    .param p1, "startY"    # I

    .line 650
    const/4 v0, 0x0

    .line 653
    .local v0, "finalPos":I
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->isCustomPanelEmpty()Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 654
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLazyMode:Z

    if-eqz v1, :cond_0

    .line 656
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v0, v1

    .line 657
    iput-boolean v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLazyMode:Z

    goto/16 :goto_2

    .line 658
    :cond_0
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCanDragFromContent:Z

    if-eqz v1, :cond_1

    .line 660
    const/4 v0, 0x0

    .line 661
    iput-boolean v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCanDragFromContent:Z

    goto/16 :goto_2

    .line 662
    :cond_1
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    if-eqz v1, :cond_9

    .line 664
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 665
    .local v3, "progress":F
    cmpl-float v1, v3, v2

    if-lez v1, :cond_2

    .line 666
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v0, v1

    goto :goto_0

    .line 668
    :cond_2
    const/4 v0, 0x0

    .line 670
    .end local v3    # "progress":F
    :goto_0
    goto :goto_2

    .line 673
    :cond_3
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLazyMode:Z

    if-eqz v1, :cond_4

    .line 675
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v0, v1

    .line 676
    iput-boolean v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLazyMode:Z

    goto :goto_2

    .line 677
    :cond_4
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCanDragFromContent:Z

    if-eqz v1, :cond_5

    .line 679
    const/4 v0, 0x0

    .line 680
    iput-boolean v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCanDragFromContent:Z

    goto :goto_2

    .line 683
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    if-gt v1, v4, :cond_7

    .line 685
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 686
    .local v3, "firstStageProgress":F
    cmpl-float v1, v3, v2

    if-lez v1, :cond_6

    .line 687
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v0, v1

    goto :goto_1

    .line 689
    :cond_6
    const/4 v0, 0x0

    .line 691
    .end local v3    # "firstStageProgress":F
    :goto_1
    goto :goto_2

    :cond_7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    if-gt v1, v4, :cond_9

    .line 693
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mSecondCustViewHeight:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 694
    .local v3, "secondStageProgress":F
    cmpl-float v1, v3, v2

    if-lez v1, :cond_8

    .line 695
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v0, v1

    goto :goto_2

    .line 697
    :cond_8
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v0, v1

    .line 703
    .end local v3    # "secondStageProgress":F
    :cond_9
    :goto_2
    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->smoothScrollTo(III)V

    .line 704
    return-void
.end method

.method private startFlingAnimation(IZ)V
    .locals 3
    .param p1, "startY"    # I
    .param p2, "isDown"    # Z

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "finalPos":I
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->isCustomPanelEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    if-eqz p2, :cond_0

    .line 335
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v0, v1

    goto :goto_0

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    if-gt v1, v2, :cond_3

    .line 342
    if-eqz p2, :cond_2

    .line 343
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v0, v1

    goto :goto_0

    .line 345
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    if-gt v1, v2, :cond_5

    .line 349
    if-eqz p2, :cond_4

    .line 350
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v0, v1

    goto :goto_0

    .line 352
    :cond_4
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v0, v1

    .line 356
    :cond_5
    :goto_0
    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->smoothScrollTo(III)V

    .line 357
    return-void
.end method

.method private swapTouchDispatchTarget(Ljava/util/ArrayList;II)V
    .locals 8
    .param p2, "id1"    # I
    .param p3, "id2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 889
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_3

    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, "view1":Landroid/view/View;
    const/4 v1, -0x1

    .line 892
    .local v1, "index1":I
    const/4 v2, 0x0

    .line 893
    .local v2, "view2":Landroid/view/View;
    const/4 v3, -0x1

    .line 894
    .local v3, "index2":I
    const/4 v4, 0x0

    .line 895
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 896
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 897
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/view/View;

    .line 898
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, p2, :cond_0

    .line 899
    move-object v0, v4

    .line 900
    move v1, v6

    goto :goto_1

    .line 901
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, p3, :cond_1

    .line 902
    move-object v2, v4

    .line 903
    move v3, v6

    .line 896
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 906
    .end local v6    # "i":I
    :cond_2
    if-le v1, v3, :cond_3

    const/4 v6, -0x1

    if-le v3, v6, :cond_3

    .line 907
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 911
    .end local v0    # "view1":Landroid/view/View;
    .end local v1    # "index1":I
    .end local v2    # "view2":Landroid/view/View;
    .end local v3    # "index2":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "size":I
    :cond_3
    return-void
.end method


# virtual methods
.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 875
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->buildTouchDispatchChildList()Ljava/util/ArrayList;

    move-result-object v0

    .line 876
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mHwDrawerFeature:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 877
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mDrawerOpend:Z

    const v2, 0x1020002

    if-nez v1, :cond_0

    .line 878
    const v1, 0x1020195

    invoke-direct {p0, v0, v2, v1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->swapTouchDispatchTarget(Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 880
    :cond_0
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mHwOverlayActionBar:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 881
    const v1, 0x1020432

    invoke-direct {p0, v0, v1, v2}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->swapTouchDispatchTarget(Ljava/util/ArrayList;II)V

    .line 885
    :cond_1
    :goto_0
    return-object v0
.end method

.method public computeScroll()V
    .locals 1

    .line 514
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 515
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initScroller()V

    .line 518
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->custScrollTo(I)V

    .line 520
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->postInvalidateOnAnimation()V

    .line 522
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 297
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 298
    .local v0, "ev":Landroid/view/MotionEvent;
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initCustomPanel()V

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->inCustPanel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustomPanel:Lhuawei/com/android/internal/widget/HwCustomPanel;

    invoke-virtual {v1, v0}, Lhuawei/com/android/internal/widget/HwCustomPanel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 305
    const/4 v1, 0x1

    return v1

    .line 308
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 309
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected getBottomInset(I)I
    .locals 1
    .param p1, "bottomInset"    # I

    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public getDragAnimationStage()I
    .locals 1

    .line 764
    iget v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mDragStage:I

    return v0
.end method

.method protected initHwDrawerFeature()V
    .locals 4

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, "z":F
    const/4 v1, 0x0

    .line 847
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mHwOverlayActionBar:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 848
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getContent()Landroid/view/View;

    move-result-object v1

    .line 849
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 850
    :cond_0
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mHwOverlayActionBar:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 851
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarContainer()Landroid/view/View;

    move-result-object v1

    .line 852
    const/high16 v0, -0x40800000    # -1.0f

    .line 854
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mHwDrawerFeature:Z

    if-eqz v2, :cond_2

    .line 855
    if-eqz v1, :cond_4

    .line 856
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_1

    .line 859
    :cond_2
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getContent()Landroid/view/View;

    move-result-object v1

    .line 860
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_3

    .line 861
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 863
    :cond_3
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarContainer()Landroid/view/View;

    move-result-object v1

    .line 864
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_4

    .line 865
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 868
    :cond_4
    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 794
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 795
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 796
    .local v0, "isLand":Z
    :goto_0
    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->setAnimationEnable(Z)V

    .line 798
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mUiOptions:I

    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->setUiOptions(I)V

    .line 800
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 110
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initCustomPanel()V

    .line 112
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsAnimationEnable:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 123
    .local v0, "action":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 124
    return v3

    .line 127
    :cond_1
    and-int/lit16 v2, v0, 0xff

    const/4 v4, -0x1

    packed-switch v2, :pswitch_data_0

    .line 169
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    .line 170
    iput v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    goto :goto_0

    .line 138
    :pswitch_0
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 139
    .local v2, "activePointerId":I
    if-ne v2, v4, :cond_2

    .line 140
    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 144
    .local v5, "pointerIndex":I
    if-ne v5, v4, :cond_3

    .line 145
    const-string v1, "HwActionBarOverlayLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in onInterceptTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 151
    .local v4, "y":I
    invoke-direct {p0, v4}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->inActionBarTop(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 152
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    .line 153
    goto :goto_0

    .line 155
    :cond_4
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 156
    .local v1, "yDiff":I
    iget v6, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mTouchSlop:I

    if-le v1, v6, :cond_5

    .line 157
    iput-boolean v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    .line 158
    iput v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    goto :goto_0

    .line 165
    .end local v1    # "yDiff":I
    .end local v2    # "activePointerId":I
    .end local v4    # "y":I
    .end local v5    # "pointerIndex":I
    :pswitch_1
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    .line 166
    iput v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 167
    goto :goto_0

    .line 129
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 130
    .local v2, "y":I
    iput v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    .line 131
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 133
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    .line 135
    nop

    .line 173
    .end local v2    # "y":I
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    return v1

    .line 113
    .end local v0    # "action":I
    :cond_6
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 179
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initCustomPanel()V

    .line 182
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initScroller()V

    .line 187
    :cond_0
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsAnimationEnable:Z

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 192
    :cond_1
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 193
    return v2

    .line 201
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->inActionBarTop(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->inCustPanel(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    :cond_3
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_4

    .line 204
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mContext:Landroid/content/Context;

    new-instance v4, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$SimpleGestureListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$SimpleGestureListener;-><init>(Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$1;)V

    invoke-direct {v0, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 208
    :cond_4
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    return v2

    .line 213
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 214
    .local v0, "action":I
    and-int/lit16 v3, v0, 0xff

    const/4 v4, -0x1

    packed-switch v3, :pswitch_data_0

    .line 278
    :pswitch_0
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    goto/16 :goto_2

    .line 269
    :pswitch_1
    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 271
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 272
    .local v1, "pointerIndex":I
    if-ltz v1, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 273
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    goto/16 :goto_2

    .line 263
    .end local v1    # "pointerIndex":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 264
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    .line 265
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 266
    goto/16 :goto_2

    .line 225
    .end local v1    # "index":I
    :pswitch_3
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 226
    .local v1, "activePointerIndex":I
    if-ne v1, v4, :cond_6

    .line 227
    const-string v3, "HwActionBarOverlayLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in onTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    goto :goto_2

    .line 230
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 231
    .local v3, "y":I
    iget v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    sub-int/2addr v4, v3

    .line 233
    .local v4, "deltaY":I
    iget-boolean v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    if-nez v5, :cond_8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mTouchSlop:I

    if-le v5, v6, :cond_8

    .line 234
    iput-boolean v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    .line 235
    if-lez v4, :cond_7

    .line 236
    iget v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mTouchSlop:I

    sub-int/2addr v4, v5

    goto :goto_0

    .line 238
    :cond_7
    iget v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mTouchSlop:I

    add-int/2addr v4, v5

    .line 241
    :cond_8
    :goto_0
    iget-boolean v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    if-eqz v5, :cond_b

    .line 243
    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    .line 245
    iget v5, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    add-int/2addr v5, v4

    .line 246
    .local v5, "clampY":I
    if-ltz v5, :cond_9

    .line 247
    add-int/lit8 v6, v5, 0x0

    sub-int/2addr v4, v6

    goto :goto_1

    .line 248
    :cond_9
    iget v6, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v6, v6

    if-gt v5, v6, :cond_a

    .line 249
    iget v6, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v6, v6

    sub-int v6, v5, v6

    sub-int/2addr v4, v6

    .line 251
    :cond_a
    :goto_1
    invoke-direct {p0, v4}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->moveBy(I)V

    .line 252
    .end local v5    # "clampY":I
    goto :goto_2

    .line 256
    .end local v1    # "activePointerIndex":I
    .end local v3    # "y":I
    .end local v4    # "deltaY":I
    :pswitch_4
    iget-boolean v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_b

    .line 257
    iput v4, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 258
    iget v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    invoke-direct {p0, v3}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->startAnimation(I)V

    .line 259
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsBeingDragged:Z

    goto :goto_2

    .line 216
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLastMotionY:I

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mActivePointerId:I

    .line 219
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_b

    .line 220
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 281
    :cond_b
    :goto_2
    return v2

    .line 189
    .end local v0    # "action":I
    :cond_c
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pullBackAnimation()V
    .locals 3

    .line 709
    iget v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v1, v1

    if-ne v0, v1, :cond_0

    .line 710
    iget v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x190

    invoke-direct {p0, v0, v1, v2}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->smoothScrollTo(III)V

    .line 712
    :cond_0
    return-void
.end method

.method public resetDragAnimation()V
    .locals 2

    .line 715
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsDraggable:Z

    if-eqz v0, :cond_2

    .line 716
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initCustomPanel()V

    .line 718
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 719
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initScroller()V

    .line 722
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 723
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 726
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->custScrollTo(I)V

    .line 727
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->invalidate()V

    .line 729
    :cond_2
    return-void
.end method

.method public setActionBarDraggable(Z)V
    .locals 0
    .param p1, "isDraggable"    # Z

    .line 380
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsDraggable:Z

    .line 381
    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .line 780
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mIsAnimationEnable:Z

    .line 781
    return-void
.end method

.method public setCallback(Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    .line 785
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    .line 786
    return-void
.end method

.method public setCanDragFromContent(Z)V
    .locals 0
    .param p1, "canDragFromContent"    # Z

    .line 497
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCanDragFromContent:Z

    .line 498
    return-void
.end method

.method public setDrawerOpend(Z)V
    .locals 0
    .param p1, "open"    # Z

    .line 871
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mDrawerOpend:Z

    .line 872
    return-void
.end method

.method public setHwDrawerFeature(ZI)V
    .locals 1
    .param p1, "open"    # Z
    .param p2, "overlayActionBar"    # I

    .line 835
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mHwDrawerFeature:Z

    .line 836
    if-eqz p1, :cond_0

    .line 837
    iput p2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mHwOverlayActionBar:I

    goto :goto_0

    .line 839
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mHwOverlayActionBar:I

    .line 841
    :goto_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->initHwDrawerFeature()V

    .line 842
    return-void
.end method

.method public setLazyMode(Z)V
    .locals 0
    .param p1, "isLazyMode"    # Z

    .line 389
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mLazyMode:Z

    .line 390
    return-void
.end method

.method public setStartStageCallback(Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    .line 789
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStartCallback:Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    .line 790
    return-void
.end method

.method public setStillView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isStill"    # Z

    .line 773
    if-eqz p2, :cond_0

    .line 774
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStillViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mStillViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 778
    :goto_0
    return-void
.end method

.method public setUiOptions(I)V
    .locals 4
    .param p1, "uiOptions"    # I

    .line 805
    iput p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mUiOptions:I

    .line 806
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setUiOptions(I)V

    .line 808
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getDecorToolbar()Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    .line 809
    .local v0, "decorToolbar":Lcom/android/internal/widget/DecorToolbar;
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->getActionBarBottom()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 810
    .local v1, "actionBarBottom":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 813
    .local v2, "splitWhenNarrow":Z
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 814
    invoke-interface {v0, v2}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 816
    const v3, 0x1020199

    invoke-virtual {p0, v3}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarContextView;

    .line 818
    .local v3, "cab":Lcom/android/internal/widget/ActionBarContextView;
    if-eqz v3, :cond_1

    .line 819
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 820
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 824
    .end local v2    # "splitWhenNarrow":Z
    .end local v3    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    :cond_1
    return-void
.end method

.method public startStageAnimation(IZ)V
    .locals 4
    .param p1, "stage"    # I
    .param p2, "isScrollDown"    # Z

    .line 732
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->isCustomPanelEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 734
    :cond_0
    const/16 v0, 0x190

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 749
    :pswitch_0
    if-eqz p2, :cond_1

    .line 750
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v2, v2

    if-ne v1, v2, :cond_3

    .line 751
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v1, v1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v2, v2

    invoke-direct {p0, v1, v2, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->smoothScrollTo(III)V

    goto :goto_0

    .line 754
    :cond_1
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v2, v2

    if-ne v1, v2, :cond_3

    .line 755
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mCustViewHeight:I

    neg-int v1, v1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v2, v2

    invoke-direct {p0, v1, v2, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->smoothScrollTo(III)V

    goto :goto_0

    .line 737
    :pswitch_1
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 738
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    if-nez v2, :cond_3

    .line 739
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v2, v2

    invoke-direct {p0, v1, v2, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->smoothScrollTo(III)V

    goto :goto_0

    .line 742
    :cond_2
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mScrollY:I

    iget v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v3, v3

    if-ne v2, v3, :cond_3

    .line 743
    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->mFirstCustViewHeight:I

    neg-int v2, v2

    invoke-direct {p0, v2, v1, v0}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->smoothScrollTo(III)V

    .line 762
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
