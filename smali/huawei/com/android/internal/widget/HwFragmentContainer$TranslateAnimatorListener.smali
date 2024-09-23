.class Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;
.super Ljava/lang/Object;
.source "HwFragmentContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwFragmentContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslateAnimatorListener"
.end annotation


# instance fields
.field hasSetBackground:Z

.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->hasSetBackground:Z

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lhuawei/com/android/internal/widget/HwFragmentContainer$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/com/android/internal/widget/HwFragmentContainer$1;

    .line 678
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 701
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->hasSetBackground:Z

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 703
    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    .line 705
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 694
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->hasSetBackground:Z

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 696
    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    .line 698
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 708
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 687
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->hasSetBackground:Z

    .line 689
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    const v1, -0x30304

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 691
    :cond_0
    return-void
.end method

.method protected setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 683
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$TranslateAnimatorListener;->mView:Landroid/view/View;

    .line 684
    return-void
.end method
