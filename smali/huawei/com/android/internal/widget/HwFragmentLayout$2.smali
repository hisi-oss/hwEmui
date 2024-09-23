.class Lhuawei/com/android/internal/widget/HwFragmentLayout$2;
.super Ljava/lang/Object;
.source "HwFragmentLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/com/android/internal/widget/HwFragmentLayout;->init(Landroid/content/Context;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/widget/HwFragmentLayout;

    .line 233
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$2;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 242
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$2;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 239
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 235
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout$2;->this$0:Lhuawei/com/android/internal/widget/HwFragmentLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, -0x30304

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 236
    return-void
.end method
