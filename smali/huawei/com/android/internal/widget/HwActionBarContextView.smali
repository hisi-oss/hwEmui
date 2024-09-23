.class public Lhuawei/com/android/internal/widget/HwActionBarContextView;
.super Lcom/android/internal/widget/ActionBarContextView;
.source "HwActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lhuawei/com/android/internal/widget/ActionModeView;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwActionBarContextView"


# instance fields
.field private mActionMode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEndMargin:I

.field private mCancel:Landroid/widget/ImageView;

.field private mCancelMenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mIsLightStyle:Z

.field private mOK:Landroid/widget/ImageView;

.field private mOKMenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mResCancel:I

.field private mResOK:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {p1}, Landroid/hwcontrol/HwWidgetFactory;->getSuggestionForgroundColorStyle(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mIsLightStyle:Z

    .line 68
    new-instance v7, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v2, 0x0

    const v3, 0x1020364

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOKMenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 69
    new-instance v7, Lcom/android/internal/view/menu/ActionMenuItem;

    const v3, 0x10201fe

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v7, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancelMenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 70
    return-void
.end method

.method private static getImmersionTint(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 370
    const v0, 0x205001c

    const/4 v1, 0x0

    const v2, 0x2050114

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Landroid/hwcontrol/HwWidgetFactory;->getImmersionResource(Landroid/content/Context;IIIZ)I

    move-result v0

    .line 374
    .local v0, "resTint":I
    invoke-static {p0}, Landroid/hwcontrol/HwWidgetFactory;->isHwEmphasizeTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const v0, 0x2050122

    .line 379
    :cond_0
    invoke-static {p0}, Landroid/hwcontrol/HwWidgetFactory;->isBlackActionBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    const v0, 0x2050157

    .line 383
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method private getMenuItemCountInActionBarView()I
    .locals 1

    .line 257
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 258
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v0

    return v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTitleGravity()I
    .locals 4

    .line 238
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 239
    .local v0, "okVis":Z
    :goto_0
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    nop

    .line 240
    .local v1, "cancelVis":Z
    :cond_1
    invoke-direct {p0, v0, v1}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitleGravity(ZZ)I

    move-result v2

    return v2
.end method

.method private getTitleGravity(ZZ)I
    .locals 4
    .param p1, "okVis"    # Z
    .param p2, "cancelVis"    # Z

    .line 243
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getMenuItemCountInActionBarView()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "noMenu":Z
    :goto_0
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 245
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 247
    iget v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mBaseEndMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 249
    :cond_1
    iget v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mBaseEndMargin:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 251
    :goto_1
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const v1, 0x800003

    :goto_2
    return v1
.end method

.method private invalidateTitleLayout()V
    .locals 6

    .line 211
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitleGravity()I

    move-result v0

    .line 212
    .local v0, "gravity":I
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 213
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v2

    .line 215
    .local v2, "subTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20e00f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 216
    .local v3, "margin":I
    const/4 v4, 0x0

    const v5, 0x800003

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 217
    .local v5, "marginNotZero":Z
    :goto_0
    if-eqz v5, :cond_1

    move v4, v3

    nop

    :cond_1
    move v3, v4

    .line 218
    invoke-direct {p0, v0, v3, v1, v2}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->invalidateTitleLayout(IILandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 220
    return-void
.end method

.method private invalidateTitleLayout(IILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "margin"    # I
    .param p3, "title"    # Landroid/widget/TextView;
    .param p4, "subTitle"    # Landroid/widget/TextView;

    .line 223
    if-eqz p3, :cond_0

    .line 224
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    .local v0, "lpTitle":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 226
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 227
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .end local v0    # "lpTitle":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-virtual {p4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    .local v0, "lpSubTitle":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 232
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .end local v0    # "lpSubTitle":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private setActionVisible()V
    .locals 4

    .line 287
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 288
    .local v0, "okVis":Z
    :goto_0
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    nop

    .line 289
    .local v1, "cancelVis":Z
    :cond_1
    invoke-virtual {p0, v0, v1}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setActionVisible(ZZ)V

    .line 290
    return-void
.end method


# virtual methods
.method public cancelVisibilityAnimation()V
    .locals 1

    .line 188
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 192
    :cond_0
    return-void
.end method

.method public closeMode()V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->killMode()V

    .line 184
    return-void
.end method

.method protected getMenuViewHeight(I)I
    .locals 1
    .param p1, "contentHeight"    # I

    .line 347
    const/4 v0, -0x2

    return v0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 75
    .local v0, "menuBuilder":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 78
    :cond_0
    new-instance v1, Lhuawei/android/widget/HwActionMenuPresenter;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mContext:Landroid/content/Context;

    const v3, 0x2070066

    const v4, 0x2070067

    invoke-direct {v1, v2, v3, v4}, Lhuawei/android/widget/HwActionMenuPresenter;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 80
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 82
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mSplitActionBar:Z

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 84
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 85
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2, v1}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 89
    :cond_1
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 90
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 89
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 92
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 94
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 97
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 98
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 100
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 101
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 102
    .local v4, "view":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .end local v2    # "childCount":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->initTitle()V

    .line 108
    return-void
.end method

.method protected initTitle()V
    .locals 8

    .line 111
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 112
    .local v0, "titleView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getSubtitleView()Landroid/widget/TextView;

    move-result-object v1

    .line 113
    .local v1, "subTitleView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitleLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 114
    .local v2, "titleLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 115
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 116
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x2070006

    invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Landroid/widget/LinearLayout;

    .line 117
    if-eqz v2, :cond_5

    .line 118
    const v5, 0x1020364

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    .line 119
    const v5, 0x10201fe

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    .line 121
    const v5, 0x2030028

    iput v5, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResOK:I

    .line 122
    const v5, 0x2030027

    iput v5, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResCancel:I

    .line 123
    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getImmersionTint(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 124
    .local v5, "color":Landroid/content/res/ColorStateList;
    iget v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResCancel:I

    if-eqz v6, :cond_0

    .line 125
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    iget v7, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResCancel:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 128
    :cond_0
    iget v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResOK:I

    if-eqz v6, :cond_1

    .line 129
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    iget v7, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResOK:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 132
    :cond_1
    const v6, 0x1020198

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    .line 133
    const v6, 0x1020197

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Landroid/widget/TextView;

    .line 134
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 135
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v7

    iput v7, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mBaseEndMargin:I

    .line 139
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 140
    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_3
    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setTitleView(Landroid/widget/TextView;)V

    .line 145
    :cond_4
    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setSubtitleView(Landroid/widget/TextView;)V

    .line 150
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "color":Landroid/content/res/ColorStateList;
    :cond_5
    if-eqz v0, :cond_6

    .line 151
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_6
    if-eqz v1, :cond_8

    .line 154
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 155
    .local v4, "hasSubtitle":Z
    if-eqz v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v4    # "hasSubtitle":Z
    :cond_8
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->initTitleAppearance()V

    .line 159
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_9

    .line 160
    invoke-virtual {p0, v2}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0, v2}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setTitleLayout(Landroid/widget/LinearLayout;)V

    .line 163
    :cond_9
    return-void
.end method

.method protected initTitleAppearance()V
    .locals 0

    .line 365
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitleAppearance()V

    .line 366
    return-void
.end method

.method public killMode()V
    .locals 5

    .line 166
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    .line 168
    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 170
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 172
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 173
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 174
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eq v3, v4, :cond_0

    .line 175
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .line 196
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v0

    return v0

    .line 199
    :cond_0
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->invalidateTitleLayout()V

    .line 200
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 204
    sub-int/2addr p2, p4

    .line 205
    if-lez p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "menuCallback":Lcom/android/internal/view/menu/MenuBuilder$Callback;
    const/4 v1, 0x0

    .line 325
    .local v1, "mode":Landroid/view/ActionMode;
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/view/menu/MenuBuilder$Callback;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 328
    :cond_0
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ActionMode;

    .line 331
    :cond_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020364

    if-ne v2, v3, :cond_3

    .line 333
    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOKMenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    .line 334
    .local v2, "handled":Z
    if-nez v2, :cond_2

    .line 335
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 337
    .end local v2    # "handled":Z
    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x10201fe

    if-ne v2, v3, :cond_4

    .line 338
    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancelMenuItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    .line 339
    .restart local v2    # "handled":Z
    if-nez v2, :cond_4

    .line 340
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 344
    .end local v2    # "handled":Z
    :cond_4
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 388
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 389
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mIsLightStyle:Z

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode;

    .line 392
    .local v0, "ac":Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 397
    .end local v0    # "ac":Landroid/view/ActionMode;
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 398
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setActionVisible()V

    .line 400
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 351
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContextView;->onLayout(ZIIII)V

    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 356
    .local v0, "vp":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x1020432

    if-eq v1, v2, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const v2, 0x1020195

    if-eq v1, v2, :cond_0

    .line 358
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/hwcontrol/HwWidgetFactory;->getPrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    .end local v0    # "vp":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public setActionVisible(ZZ)V
    .locals 6
    .param p1, "OKVis"    # Z
    .param p2, "cancelVis"    # Z

    .line 294
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 300
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 301
    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 303
    :cond_0
    invoke-direct {p0, p1, p2}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitleGravity(ZZ)I

    move-result v3

    .line 304
    .local v3, "gravity":I
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    const v5, 0x800003

    if-ne v3, v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    .end local v3    # "gravity":I
    :goto_1
    if-eqz p1, :cond_2

    .line 307
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 309
    :cond_2
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    :goto_3
    return-void

    .line 296
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pls set the correct res for the ok and cancel button."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "okContentDescription"    # Ljava/lang/CharSequence;
    .param p2, "cancelContentDescription"    # Ljava/lang/CharSequence;

    .line 314
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 318
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 320
    :cond_1
    return-void
.end method

.method public setImageResource(II)V
    .locals 3
    .param p1, "resIdOK"    # I
    .param p2, "resIdCancel"    # I

    .line 265
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getImmersionTint(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 266
    .local v0, "color":Landroid/content/res/ColorStateList;
    if-lez p1, :cond_0

    .line 267
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 271
    :cond_0
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResOK:I

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mOK:Landroid/widget/ImageView;

    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResOK:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    :cond_1
    :goto_0
    if-lez p2, :cond_2

    .line 276
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 280
    :cond_2
    iget v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResCancel:I

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mCancel:Landroid/widget/ImageView;

    iget v2, p0, Lhuawei/com/android/internal/widget/HwActionBarContextView;->mResCancel:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    :cond_3
    :goto_1
    return-void
.end method
