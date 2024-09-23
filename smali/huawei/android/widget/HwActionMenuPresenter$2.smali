.class Lhuawei/android/widget/HwActionMenuPresenter$2;
.super Landroid/widget/ForwardingListener;
.source "HwActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/widget/HwActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/widget/HwActionMenuPresenter;

.field final synthetic val$item:Lcom/android/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lhuawei/android/widget/HwActionMenuPresenter;Landroid/view/View;Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/widget/HwActionMenuPresenter;
    .param p2, "x0"    # Landroid/view/View;

    .line 108
    iput-object p1, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    iput-object p3, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->val$item:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 2

    .line 112
    iget-object v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    invoke-virtual {v0}, Lhuawei/android/widget/HwActionMenuPresenter;->getActionButtonPopup()Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    invoke-virtual {v0}, Lhuawei/android/widget/HwActionMenuPresenter;->getActionButtonPopup()Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    .line 114
    .local v0, "mp":Lcom/android/internal/view/menu/MenuPopup;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->getMenuPopup()Landroid/widget/MenuPopupWindow;

    move-result-object v1

    return-object v1

    .line 118
    .end local v0    # "mp":Lcom/android/internal/view/menu/MenuPopup;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter$2;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    iget-object v1, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->val$item:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0, v1}, Lhuawei/android/widget/HwActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    move-result v0

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->this$0:Lhuawei/android/widget/HwActionMenuPresenter;

    invoke-virtual {v0}, Lhuawei/android/widget/HwActionMenuPresenter;->dismissPopupMenus()Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 134
    iget-boolean v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->mForwarding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhuawei/android/widget/HwActionMenuPresenter$2;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lhuawei/android/widget/HwActionMenuPresenter$2;->mForwarding:Z

    .line 135
    invoke-super {p0, p1, p2}, Landroid/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
