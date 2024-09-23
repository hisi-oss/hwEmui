.class public Lhuawei/com/android/internal/widget/HwFragmentContainer;
.super Ljava/lang/Object;
.source "HwFragmentContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATION_TYPE_LEFT_IN:I = 0x2

.field private static final ANIMATION_TYPE_LEFT_OUT:I = 0x1

.field private static final ANIMATION_TYPE_RIGHT_IN:I = 0x0

.field private static final ANIMATION_TYPE_RIGHT_OUT:I = 0x3

.field protected static final BLUR_LAYER_FORTY_PERCENT:F = 0.4f

.field protected static final BLUR_LAYER_TRANSPARENT:F = 0.0f

.field public static final COLUMN_NUMBER_ONE:I = 0x1

.field public static final COLUMN_NUMBER_TWO:I = 0x2

.field public static final CONTAINER_BOTH:I = 0x2

.field public static final CONTAINER_LEFT:I = 0x0

.field public static final CONTAINER_RIGHT:I = 0x1

.field private static final DEBUG:Z = false

.field public static final DISPLAY_RATE_FIFTY_PERCENT:F = 0.5f

.field public static final DISPLAY_RATE_FORTY_PERCENT:F = 0.4f

.field public static final DISPLAY_RATE_SIXTY_PERCENT:F = 0.6f

.field protected static final FRAGMENT_BACKGROUND_COLORCOLOR:I = -0x30304

.field private static final FRAGMENT_LAYOUT_ID:I = 0xa0000

.field public static final FRAGMENT_LEVEL_1:I = 0x1

.field public static final FRAGMENT_LEVEL_2:I = 0x2

.field public static final FRAGMENT_LEVEL_3:I = 0x3

.field public static final FRAGMENT_LEVEL_NONE:I = 0x0

.field protected static final INTERPOLATOR_20_90:Landroid/view/animation/PathInterpolator;

.field protected static final INTERPOLATOR_33_33:Landroid/view/animation/PathInterpolator;

.field public static final SPLITE_MODE_ALL_SEPARATE:I = 0x3

.field public static final SPLITE_MODE_DEFAULT_SEPARATE:I = 0x0

.field public static final SPLITE_MODE_LAND_SEPARATE:I = 0x2

.field public static final SPLITE_MODE_NONE_SEPARATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FragmentContainer"

.field private static final TAG_LEFT_CONTAINER:Ljava/lang/String; = "left_container"

.field private static final TAG_RIGHT_CONTAINER:Ljava/lang/String; = "right_container"

.field public static final TRANSITION_FADE:I = 0x1

.field public static final TRANSITION_SLIDE_HORIZONTAL:I = 0x2


# instance fields
.field private mAnimatorWidth:I

.field private mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

.field private mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mNoFragmentAnim:Z

.field private mPopCount:I

.field private mPopMultiple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3e19999a    # 0.15f

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_20_90:Landroid/view/animation/PathInterpolator;

    .line 70
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v1, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_33_33:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLandroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayRate"    # F
    .param p3, "fm"    # Landroid/app/FragmentManager;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lhuawei/com/android/internal/widget/HwFragmentContainer;-><init>(Landroid/content/Context;FZLandroid/app/FragmentManager;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FZLandroid/app/FragmentManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayRate"    # F
    .param p3, "canMove"    # Z
    .param p4, "fm"    # Landroid/app/FragmentManager;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    .line 81
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopMultiple:Z

    .line 82
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopCount:I

    .line 83
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mNoFragmentAnim:Z

    .line 125
    new-instance v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-direct {v0, p1, p2, p3}, Lhuawei/com/android/internal/widget/HwFragmentLayout;-><init>(Landroid/content/Context;FZ)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    .line 127
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    const/high16 v1, 0xa0000

    invoke-virtual {v0, v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setId(I)V

    .line 131
    :cond_0
    iput-object p4, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .line 99
    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p0, p1, v0, p2}, Lhuawei/com/android/internal/widget/HwFragmentContainer;-><init>(Landroid/content/Context;FLandroid/app/FragmentManager;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhuawei/com/android/internal/widget/HwFragmentLayout;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentLayout"    # Lhuawei/com/android/internal/widget/HwFragmentLayout;
    .param p3, "fm"    # Landroid/app/FragmentManager;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    .line 81
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopMultiple:Z

    .line 82
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopCount:I

    .line 83
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mNoFragmentAnim:Z

    .line 144
    iput-object p2, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    .line 145
    iput-object p3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 146
    return-void
.end method

.method static synthetic access$100(Lhuawei/com/android/internal/widget/HwFragmentContainer;)Lhuawei/com/android/internal/widget/HwFragmentLayout;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/widget/HwFragmentContainer;

    .line 26
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    return-object v0
.end method

.method private createAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0x12c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-nez p2, :cond_0

    .line 632
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 634
    const-string v2, "translationX"

    new-array v8, v8, [F

    iget v9, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    int-to-float v9, v9

    aput v9, v8, v6

    aput v5, v8, v7

    invoke-static {p1, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 635
    .local v2, "translateAnimator":Landroid/animation/ObjectAnimator;
    sget-object v5, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_20_90:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 636
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 638
    new-instance v3, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;

    invoke-direct {v3, v1}, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;-><init>(Lhuawei/com/android/internal/widget/HwFragmentContainer$1;)V

    move-object v1, v3

    .line 639
    .local v1, "animatorListener":Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;
    invoke-virtual {v1, p1}, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->setView(Landroid/view/View;)V

    .line 640
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 642
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v3

    .line 643
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 644
    .end local v1    # "animatorListener":Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;
    .end local v2    # "translateAnimator":Landroid/animation/ObjectAnimator;
    goto/16 :goto_0

    :cond_0
    const v9, 0x3ecccccd    # 0.4f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, -0x40800000    # -1.0f

    if-ne p2, v7, :cond_1

    .line 645
    invoke-virtual {p1, v11}, Landroid/view/View;->setTranslationZ(F)V

    .line 646
    const-string v1, "translationX"

    new-array v2, v8, [F

    aput v5, v2, v6

    iget v11, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    neg-int v11, v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    aput v11, v2, v7

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 647
    .local v1, "translateAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_33_33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 648
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 650
    invoke-direct {p0, p1, v5, v9}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->createBlurLayerAnimator(Landroid/view/View;FF)V

    .line 651
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v2

    .line 652
    new-array v2, v8, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 653
    .end local v1    # "translateAnimator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    :cond_1
    if-ne p2, v8, :cond_2

    .line 654
    invoke-virtual {p1, v11}, Landroid/view/View;->setTranslationZ(F)V

    .line 655
    const-string v1, "translationX"

    new-array v2, v8, [F

    iget v11, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    neg-int v11, v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    aput v11, v2, v6

    aput v5, v2, v7

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 656
    .restart local v1    # "translateAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_20_90:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 657
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 658
    invoke-direct {p0, p1, v9, v5}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->createBlurLayerAnimator(Landroid/view/View;FF)V

    .line 660
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v2

    .line 661
    new-array v2, v8, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 662
    .end local v1    # "translateAnimator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    :cond_2
    const/4 v9, 0x3

    if-ne p2, v9, :cond_3

    .line 663
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 664
    const-string v2, "translationX"

    new-array v8, v8, [F

    aput v5, v8, v6

    iget v5, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    int-to-float v5, v5

    aput v5, v8, v7

    invoke-static {p1, v2, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 665
    .restart local v2    # "translateAnimator":Landroid/animation/ObjectAnimator;
    sget-object v5, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_20_90:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 666
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 668
    new-instance v3, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;

    invoke-direct {v3, v1}, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;-><init>(Lhuawei/com/android/internal/widget/HwFragmentContainer$1;)V

    move-object v1, v3

    .line 669
    .local v1, "animatorListener":Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;
    invoke-virtual {v1, p1}, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->setView(Landroid/view/View;)V

    .line 670
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 672
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v3

    .line 673
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 675
    .end local v1    # "animatorListener":Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;
    .end local v2    # "translateAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    :goto_0
    return-object v0
.end method

.method private createBlurLayerAnimator(Landroid/view/View;FF)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F

    .line 713
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 716
    :cond_0
    const-string v0, "blurlayer"

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput p3, v2, v4

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

    .line 717
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_20_90:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 718
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 720
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationZ(F)V

    .line 721
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 724
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mBlurLayerAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentContainer$1;

    invoke-direct {v1, p0, p3}, Lhuawei/com/android/internal/widget/HwFragmentContainer$1;-><init>(Lhuawei/com/android/internal/widget/HwFragmentContainer;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 743
    return-void
.end method

.method private getLeftContentID()I
    .locals 1

    .line 199
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftContentID()I

    move-result v0

    return v0
.end method

.method private getRightContentID()I
    .locals 1

    .line 203
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightContentID()I

    move-result v0

    return v0
.end method

.method private openRightClearStack(Landroid/app/Fragment;Z)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isInitial"    # Z

    .line 352
    if-nez p1, :cond_0

    .line 353
    return-void

    .line 356
    :cond_0
    xor-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->setSelectedAndAnimation(I)V

    .line 358
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->popPrepare()V

    .line 359
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "left_container"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 360
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->popFinish()V

    .line 362
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 363
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 364
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getRightContentID()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 365
    const-string v1, "right_container"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 367
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 368
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 370
    if-nez p2, :cond_1

    .line 371
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->refreshFragmentLayout()V

    .line 378
    :cond_1
    return-void
.end method

.method private popFinish()V
    .locals 1

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopMultiple:Z

    .line 581
    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopCount:I

    .line 582
    return-void
.end method

.method private popPrepare()V
    .locals 1

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopMultiple:Z

    .line 576
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopCount:I

    .line 577
    return-void
.end method

.method private setSelectedAndAnimation(I)V
    .locals 2
    .param p1, "selectedContainer"    # I

    .line 434
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getColumnsNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getSelectedContainer()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 436
    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mNoFragmentAnim:Z

    goto :goto_0

    .line 438
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mNoFragmentAnim:Z

    .line 441
    :goto_0
    invoke-virtual {p0, p1}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->setSelectedContainer(I)V

    .line 442
    return-void
.end method


# virtual methods
.method public changeRightAddToStack(Landroid/app/Fragment;Landroid/app/Fragment;)V
    .locals 3
    .param p1, "nextFragment"    # Landroid/app/Fragment;
    .param p2, "currentFragment"    # Landroid/app/Fragment;

    .line 389
    if-nez p1, :cond_0

    .line 390
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->setSelectedAndAnimation(I)V

    .line 395
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 396
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 398
    if-eqz p2, :cond_2

    .line 399
    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 401
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getRightContentID()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 404
    invoke-virtual {v0, p1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 407
    :cond_2
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getRightContentID()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 409
    :goto_0
    const-string v1, "right_container"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 411
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 412
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 415
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->refreshFragmentLayout()V

    .line 420
    return-void
.end method

.method public getAnimator(Landroid/view/View;IZ)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z

    .line 585
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->displayAnimation()V

    .line 587
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mNoFragmentAnim:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getSelectedContainer()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 590
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 591
    .local v1, "width":I
    if-eqz v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    iget v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    :goto_0
    iput v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    .line 593
    iget v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mAnimatorWidth:I

    if-nez v3, :cond_2

    .line 594
    return-object v0

    .line 597
    :cond_2
    const/4 v0, 0x0

    .line 599
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/16 v3, 0x1001

    if-ne p2, v3, :cond_4

    .line 600
    if-eqz p3, :cond_3

    .line 602
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->createAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_1

    .line 605
    :cond_3
    invoke-direct {p0, p1, v2}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->createAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_1

    .line 607
    :cond_4
    const/16 v3, 0x2002

    if-ne p2, v3, :cond_8

    .line 608
    iget-boolean v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopMultiple:Z

    if-eqz v3, :cond_6

    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopCount:I

    if-nez v3, :cond_5

    .line 611
    invoke-direct {p0, p1, v2}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->createAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 613
    :cond_5
    iget v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mPopCount:I

    goto :goto_1

    .line 615
    :cond_6
    if-eqz p3, :cond_7

    .line 617
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->createAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_1

    .line 620
    :cond_7
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->createAnimator(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 625
    :cond_8
    :goto_1
    return-object v0

    .line 588
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "width":I
    :cond_9
    :goto_2
    return-object v0
.end method

.method public getColumnsNumber()I
    .locals 1

    .line 268
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->calculateColumnsNumber()I

    move-result v0

    return v0
.end method

.method public getColumnsNumber(II)I
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "appWidth"    # I

    .line 279
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0, p1, p2}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->calculateColumnsNumber(II)I

    move-result v0

    return v0
.end method

.method public getFragmentLayout()Landroid/view/View;
    .locals 1

    .line 155
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getFragmentLayout()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLeftBlurLayer()Landroid/widget/ImageView;
    .locals 1

    .line 214
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getLeftLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 165
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getLeftRightBackStackCount()[I
    .locals 9

    .line 475
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 476
    .local v0, "stackCounts":[I
    const/4 v1, 0x0

    .line 477
    .local v1, "leftStackCount":I
    const/4 v2, 0x0

    .line 479
    .local v2, "rightStackCount":I
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    .line 480
    .local v3, "backStackCount":I
    const/4 v4, 0x0

    move v5, v2

    move v2, v1

    move v1, v4

    .local v1, "i":I
    .local v2, "leftStackCount":I
    .local v5, "rightStackCount":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 481
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v6, v1}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v6

    .line 482
    .local v6, "backstatck":Landroid/app/FragmentManager$BackStackEntry;
    invoke-interface {v6}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "left_container"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 484
    :cond_0
    invoke-interface {v6}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "right_container"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 485
    add-int/lit8 v5, v5, 0x1

    .line 480
    .end local v6    # "backstatck":Landroid/app/FragmentManager$BackStackEntry;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "i":I
    :cond_2
    aput v2, v0, v4

    .line 495
    const/4 v1, 0x1

    aput v5, v0, v1

    .line 496
    return-object v0
.end method

.method public getRightBlurLayer()Landroid/widget/ImageView;
    .locals 1

    .line 224
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getRightLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 175
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedContainer()I
    .locals 1

    .line 452
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSelectedContainer()I

    move-result v0

    return v0
.end method

.method public getSplitBtn()Landroid/widget/ImageView;
    .locals 1

    .line 195
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitBtn()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getSplitLine()Landroid/widget/ImageView;
    .locals 1

    .line 185
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitLine()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public initRightContainer(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->openRightClearStack(Landroid/app/Fragment;Z)V

    .line 349
    return-void
.end method

.method public isBackPressed()Z
    .locals 6

    .line 507
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getLeftRightBackStackCount()[I

    move-result-object v0

    .line 508
    .local v0, "stackCounts":[I
    const/4 v1, 0x1

    aget v2, v0, v1

    .line 509
    .local v2, "rightStackCount":I
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getColumnsNumber()I

    move-result v3

    .line 511
    .local v3, "columnNumber":I
    const/4 v4, 0x0

    if-le v2, v1, :cond_0

    .line 512
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 513
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v5, v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSelectedContainer(I)V

    .line 514
    return v4

    .line 517
    :cond_0
    if-ne v3, v1, :cond_2

    .line 518
    if-ne v2, v1, :cond_3

    .line 519
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 520
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v1, v4}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSelectedContainer(I)V

    .line 521
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->refreshFragmentLayout()V

    .line 522
    return v4

    .line 524
    :cond_1
    return v1

    .line 527
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 528
    if-ne v2, v1, :cond_3

    .line 529
    return v1

    .line 533
    :cond_3
    return v1
.end method

.method public logBackStacksInfo()V
    .locals 9

    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "leftStackCount":I
    const/4 v1, 0x0

    .line 551
    .local v1, "rightStackCount":I
    const/4 v2, 0x0

    .line 553
    .local v2, "rightOpenStackCount":I
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    .line 554
    .local v3, "backStackCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 555
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v5

    .line 556
    .local v5, "backstatck":Landroid/app/FragmentManager$BackStackEntry;
    invoke-interface {v5}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "left_container"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    :cond_0
    invoke-interface {v5}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "right_container"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 559
    add-int/lit8 v1, v1, 0x1

    .line 562
    :cond_1
    :goto_1
    const-string v6, "right_container"

    invoke-interface {v5}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 563
    add-int/lit8 v2, v2, 0x1

    .line 565
    :cond_2
    const-string v6, "FragmentContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v5    # "backstatck":Landroid/app/FragmentManager$BackStackEntry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 568
    .end local v4    # "i":I
    :cond_3
    const-string v4, "FragmentContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BackStackCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", leftStackCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rightStackCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rightOpenStackCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void
.end method

.method public openLeftClearStack(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 301
    if-nez p1, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->setSelectedAndAnimation(I)V

    .line 306
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->popPrepare()V

    .line 307
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "left_container"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 309
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->popFinish()V

    .line 311
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 312
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 314
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->getLeftContentID()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 316
    const-string v1, "left_container"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 318
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 321
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->refreshFragmentLayout()V

    .line 327
    return-void
.end method

.method public openRightClearStack(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->openRightClearStack(Landroid/app/Fragment;Z)V

    .line 338
    return-void
.end method

.method public refreshFragmentLayout()V
    .locals 1

    .line 464
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->refreshFragmentLayout()V

    .line 465
    return-void
.end method

.method public setCanMove(Z)V
    .locals 1
    .param p1, "canMove"    # Z

    .line 246
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setCanMove(Z)V

    .line 247
    return-void
.end method

.method public setDisplayRate(F)V
    .locals 1
    .param p1, "displayRate"    # F

    .line 236
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setDisplayRate(F)V

    .line 237
    return-void
.end method

.method public setSelectContainerByTouch(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 538
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSelectContainerByTouch(Z)V

    .line 539
    return-void
.end method

.method public setSelectedContainer(I)V
    .locals 1
    .param p1, "selectedContainer"    # I

    .line 429
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSelectedContainer(I)V

    .line 430
    return-void
.end method

.method public setSeparateDeviceSize(DD)V
    .locals 1
    .param p1, "landSeparateSize"    # D
    .param p3, "portSeparteSize"    # D

    .line 290
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSeparateDeviceSize(DD)V

    .line 291
    return-void
.end method

.method public setSplitMode(I)V
    .locals 1
    .param p1, "splitMode"    # I

    .line 258
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer;->mFragmentLayout:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSplitMode(I)V

    .line 259
    return-void
.end method
