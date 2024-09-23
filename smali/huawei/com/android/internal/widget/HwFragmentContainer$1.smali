.class Lhuawei/com/android/internal/widget/HwFragmentContainer$1;
.super Ljava/lang/Object;
.source "HwFragmentContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/com/android/internal/widget/HwFragmentContainer;->createBlurLayerAnimator(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwFragmentContainer;

.field final synthetic val$endAlpha:F


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/widget/HwFragmentContainer;F)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/widget/HwFragmentContainer;

    .line 724
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentContainer;

    iput p2, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$1;->val$endAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 728
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 730
    .local v0, "alphaValue":F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 732
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentContainer;

    invoke-static {v1}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->access$100(Lhuawei/com/android/internal/widget/HwFragmentContainer;)Lhuawei/com/android/internal/widget/HwFragmentLayout;

    move-result-object v1

    invoke-virtual {v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightBlurLayer()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 734
    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$1;->val$endAlpha:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 735
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentContainer;

    invoke-static {v1}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->access$100(Lhuawei/com/android/internal/widget/HwFragmentContainer;)Lhuawei/com/android/internal/widget/HwFragmentLayout;

    move-result-object v1

    invoke-virtual {v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightBlurLayer()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 736
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentContainer$1;->this$0:Lhuawei/com/android/internal/widget/HwFragmentContainer;

    invoke-static {v1}, Lhuawei/com/android/internal/widget/HwFragmentContainer;->access$100(Lhuawei/com/android/internal/widget/HwFragmentContainer;)Lhuawei/com/android/internal/widget/HwFragmentLayout;

    move-result-object v1

    invoke-virtual {v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightBlurLayer()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 740
    .end local v0    # "alphaValue":F
    :cond_0
    return-void
.end method
