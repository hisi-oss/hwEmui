.class public Lhuawei/com/android/internal/widget/HwActionBarContainer;
.super Lcom/android/internal/widget/ActionBarContainer;
.source "HwActionBarContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhuawei/com/android/internal/widget/HwActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 41
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 42
    return-void
.end method

.method public setDisplayNoSplitLine(Z)V
    .locals 0
    .param p1, "displayNoSplitLine"    # Z

    .line 45
    return-void
.end method

.method public setSplitViewLocation(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 48
    return-void
.end method
