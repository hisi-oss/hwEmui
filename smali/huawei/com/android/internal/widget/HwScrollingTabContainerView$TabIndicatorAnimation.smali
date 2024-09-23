.class Lhuawei/com/android/internal/widget/HwScrollingTabContainerView$TabIndicatorAnimation;
.super Ljava/lang/Object;
.source "HwScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabIndicatorAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwScrollingTabContainerView;


# direct methods
.method constructor <init>(Lhuawei/com/android/internal/widget/HwScrollingTabContainerView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/com/android/internal/widget/HwScrollingTabContainerView;
    .param p2, "view"    # Landroid/view/View;

    .line 115
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwScrollingTabContainerView$TabIndicatorAnimation;->this$0:Lhuawei/com/android/internal/widget/HwScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 0

    .line 127
    return-void
.end method

.method public isAnimEnd()Z
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public setViewWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 119
    return-void
.end method

.method public startAnim(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 123
    return-void
.end method
