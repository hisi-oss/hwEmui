.class Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;
.super Ljava/lang/Object;
.source "HwFragmentLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwFragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;


# direct methods
.method private constructor <init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;Lhuawei/com/android/internal/widget/HwFragmentLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/com/android/internal/widget/HwFragmentLayout;
    .param p2, "x1"    # Lhuawei/com/android/internal/widget/HwFragmentLayout$1;

    .line 265
    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 274
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 275
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationZ(F)V

    .line 277
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 268
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 269
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationZ(F)V

    .line 271
    return-void
.end method
