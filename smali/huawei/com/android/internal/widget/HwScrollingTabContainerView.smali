.class public Lhuawei/com/android/internal/widget/HwScrollingTabContainerView;
.super Lcom/android/internal/widget/ScrollingTabContainerView;
.source "HwScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/widget/HwScrollingTabContainerView$TabIndicatorAnimation;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 87
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 82
    return-void
.end method

.method protected adjustPadding(II)I
    .locals 1
    .param p1, "availableWidth"    # I
    .param p2, "itemPaddingSize"    # I

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected disableMaxTabWidth()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected handlePressed(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pressed"    # Z

    .line 63
    return-void
.end method

.method protected handleTabClicked(I)V
    .locals 0
    .param p1, "position"    # I

    .line 99
    return-void
.end method

.method protected handleTabViewCreated(Lcom/android/internal/widget/ScrollingTabContainerView$TabView;)V
    .locals 0
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 95
    return-void
.end method

.method protected initTitleAppearance(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->onAttachedToWindow()V

    .line 51
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 41
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 42
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 54
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ScrollingTabContainerView;->onLayout(ZIIII)V

    .line 55
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->onMeasure(II)V

    .line 59
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .line 76
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 77
    return-void
.end method

.method public removeTabAt(I)V
    .locals 0
    .param p1, "position"    # I

    .line 71
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 72
    return-void
.end method

.method public setShouldAnimToTab(Z)V
    .locals 0
    .param p1, "shouldAnim"    # Z

    .line 37
    return-void
.end method

.method public setTabScrollingOffsets(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "x"    # F

    .line 67
    return-void
.end method

.method public setTabSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .line 110
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 111
    return-void
.end method

.method public updateTabViewContainerWidth(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    return-void
.end method
