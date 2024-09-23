.class public Lhuawei/com/android/internal/widget/HwActionBarView;
.super Lcom/android/internal/widget/ActionBarView;
.source "HwActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/widget/HwActionBarView$ButtonState;,
        Lhuawei/com/android/internal/widget/HwActionBarView$HwHomeView;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public static initTitleAppearance(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "subTitle"    # Landroid/widget/TextView;

    .line 188
    return-void
.end method

.method public static invalidateTitleLayout(IILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "gravity"    # I
    .param p1, "margin"    # I
    .param p2, "title"    # Landroid/widget/TextView;
    .param p3, "subTitle"    # Landroid/widget/TextView;

    .line 184
    return-void
.end method


# virtual methods
.method protected deleteExpandedHomeIfNeed()V
    .locals 0

    .line 113
    return-void
.end method

.method protected initActionMenuPresenter(Landroid/content/Context;)Landroid/widget/ActionMenuPresenter;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initTitleAppearance()V
    .locals 0

    .line 162
    return-void
.end method

.method protected initTitleIcons()V
    .locals 0

    .line 57
    return-void
.end method

.method protected initTitleIcons(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "titleLayout"    # Landroid/widget/LinearLayout;

    .line 61
    return-void
.end method

.method protected initTitleLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateAllViews()V
    .locals 0

    .line 172
    return-void
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 141
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 166
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarView;->onFinishInflate()V

    .line 168
    return-void
.end method

.method public restoreState(Lhuawei/com/android/internal/widget/HwActionBarView$ButtonState;)V
    .locals 0
    .param p1, "saved"    # Lhuawei/com/android/internal/widget/HwActionBarView$ButtonState;

    .line 158
    return-void
.end method

.method public saveState(Lhuawei/com/android/internal/widget/HwActionBarView$ButtonState;)V
    .locals 0
    .param p1, "state"    # Lhuawei/com/android/internal/widget/HwActionBarView$ButtonState;

    .line 154
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 69
    return-void
.end method

.method public setEndContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 85
    return-void
.end method

.method public setEndIconImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon2"    # Landroid/graphics/drawable/Drawable;

    .line 97
    return-void
.end method

.method public setEndIconListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener2"    # Landroid/view/View$OnClickListener;

    .line 105
    return-void
.end method

.method public setEndIconVisible(Z)V
    .locals 0
    .param p1, "icon2Visible"    # Z

    .line 77
    return-void
.end method

.method public setSmartColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "iconColor"    # Landroid/content/res/ColorStateList;
    .param p2, "titleColor"    # Landroid/content/res/ColorStateList;

    .line 192
    return-void
.end method

.method public setSplitViewLocation(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 176
    return-void
.end method

.method public setStartContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 81
    return-void
.end method

.method public setStartIconImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon1"    # Landroid/graphics/drawable/Drawable;

    .line 93
    return-void
.end method

.method public setStartIconListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener1"    # Landroid/view/View$OnClickListener;

    .line 101
    return-void
.end method

.method public setStartIconVisible(Z)V
    .locals 0
    .param p1, "icon1Visible"    # Z

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 65
    return-void
.end method

.method public triggerIconsVisible(ZZ)V
    .locals 0
    .param p1, "icon1Visible"    # Z
    .param p2, "icon2Visible"    # Z

    .line 89
    return-void
.end method

.method protected updateSplitLocation()V
    .locals 0

    .line 180
    return-void
.end method
