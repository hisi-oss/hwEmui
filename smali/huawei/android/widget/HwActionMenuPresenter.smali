.class public Lhuawei/android/widget/HwActionMenuPresenter;
.super Landroid/widget/ActionMenuPresenter;
.source "HwActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/widget/HwActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private mOverflowMenuPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mShowOverflowMenuPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mShowOverflowMenuPending:Z

    .line 84
    new-instance v0, Lhuawei/android/widget/HwActionMenuPresenter$1;

    invoke-direct {v0, p0}, Lhuawei/android/widget/HwActionMenuPresenter$1;-><init>(Lhuawei/android/widget/HwActionMenuPresenter;)V

    iput-object v0, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mOverflowMenuPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayout"    # I
    .param p3, "itemLayout"    # I

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mShowOverflowMenuPending:Z

    .line 84
    new-instance v0, Lhuawei/android/widget/HwActionMenuPresenter$1;

    invoke-direct {v0, p0}, Lhuawei/android/widget/HwActionMenuPresenter$1;-><init>(Lhuawei/android/widget/HwActionMenuPresenter;)V

    iput-object v0, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mOverflowMenuPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/widget/HwActionMenuPresenter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/widget/HwActionMenuPresenter;

    .line 21
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lhuawei/android/widget/HwActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/android/widget/HwActionMenuPresenter;

    .line 21
    iget-boolean v0, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mShowOverflowMenuPending:Z

    return v0
.end method

.method static synthetic access$102(Lhuawei/android/widget/HwActionMenuPresenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lhuawei/android/widget/HwActionMenuPresenter;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mShowOverflowMenuPending:Z

    return p1
.end method


# virtual methods
.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "actionView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lhuawei/android/widget/HwActionMenuPresenter$2;

    invoke-direct {v1, p0, v0, p1}, Lhuawei/android/widget/HwActionMenuPresenter$2;-><init>(Lhuawei/android/widget/HwActionMenuPresenter;Landroid/view/View;Lcom/android/internal/view/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 140
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    :goto_0
    return-object v0
.end method

.method protected getMaxActionButtons(I)I
    .locals 1
    .param p1, "maxItems"    # I

    .line 207
    const/4 v0, 0x5

    return v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lhuawei/android/widget/HwOverflowMenuButton;

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    invoke-super {p0}, Landroid/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isPopupMenuShowing()Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->getActionButtonPopup()Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->getActionButtonPopup()Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 50
    move-object v0, p1

    check-cast v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;

    .line 51
    .local v0, "saved":Lhuawei/android/widget/HwActionMenuPresenter$SavedState;
    iget v1, v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_0

    .line 53
    iget-object v1, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 55
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 57
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lhuawei/android/widget/HwActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 63
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    iget v1, v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->overflowMenuShownInt:I

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 64
    .local v1, "overflowMenuShown":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->showOverflowMenuPending()V

    .line 67
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 40
    new-instance v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;-><init>()V

    .line 42
    .local v0, "state":Lhuawei/android/widget/HwActionMenuPresenter$SavedState;
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->getOpenSubMenuId()I

    move-result v1

    iput v1, v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 44
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    iput v1, v0, Lhuawei/android/widget/HwActionMenuPresenter$SavedState;->overflowMenuShownInt:I

    .line 45
    return-object v0
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lhuawei/android/widget/HwOverflowMenuButton;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_0
    return-void
.end method

.method protected setPopupGravity(Lcom/android/internal/view/menu/MenuPopupHelper;)V
    .locals 1
    .param p1, "mph"    # Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 202
    return-void
.end method

.method public setPopupLocation(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 211
    iput p1, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mPopupStartLocation:I

    .line 212
    iput p2, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mPopupEndLocation:I

    .line 213
    return-void
.end method

.method public showOverflowMenuPending()V
    .locals 1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mShowOverflowMenuPending:Z

    .line 71
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3
    .param p1, "cleared"    # Z

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 76
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter;->getOverflowButton()Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "over":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 79
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mOverflowMenuPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 80
    iget-object v2, p0, Lhuawei/android/widget/HwActionMenuPresenter;->mOverflowMenuPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 82
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method
