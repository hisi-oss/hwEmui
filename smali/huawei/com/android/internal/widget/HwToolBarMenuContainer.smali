.class public Lhuawei/com/android/internal/widget/HwToolBarMenuContainer;
.super Lhuawei/com/android/internal/widget/HwActionBarContainer;
.source "HwToolBarMenuContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhuawei/com/android/internal/widget/HwToolBarMenuContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Lhuawei/com/android/internal/widget/HwActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 40
    invoke-super {p0, p1}, Lhuawei/com/android/internal/widget/HwActionBarContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 42
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 32
    invoke-super/range {p0 .. p5}, Lhuawei/com/android/internal/widget/HwActionBarContainer;->onLayout(ZIIII)V

    .line 33
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 27
    invoke-super {p0, p1, p2}, Lhuawei/com/android/internal/widget/HwActionBarContainer;->onMeasure(II)V

    .line 28
    return-void
.end method

.method public setSplitViewLocation(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 36
    return-void
.end method
