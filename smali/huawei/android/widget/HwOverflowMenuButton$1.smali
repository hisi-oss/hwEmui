.class Lhuawei/android/widget/HwOverflowMenuButton$1;
.super Landroid/widget/ForwardingListener;
.source "HwOverflowMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhuawei/android/widget/HwOverflowMenuButton;-><init>(Landroid/content/Context;Landroid/widget/ActionMenuPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/widget/HwOverflowMenuButton;


# direct methods
.method constructor <init>(Lhuawei/android/widget/HwOverflowMenuButton;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/widget/HwOverflowMenuButton;
    .param p2, "x0"    # Landroid/view/View;

    .line 58
    iput-object p1, p0, Lhuawei/android/widget/HwOverflowMenuButton$1;->this$0:Lhuawei/android/widget/HwOverflowMenuButton;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 2

    .line 61
    iget-object v0, p0, Lhuawei/android/widget/HwOverflowMenuButton$1;->this$0:Lhuawei/android/widget/HwOverflowMenuButton;

    invoke-static {v0}, Lhuawei/android/widget/HwOverflowMenuButton;->access$000(Lhuawei/android/widget/HwOverflowMenuButton;)Landroid/widget/ActionMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowPopup()Landroid/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    return-object v1

    .line 64
    :cond_0
    iget-object v0, p0, Lhuawei/android/widget/HwOverflowMenuButton$1;->this$0:Lhuawei/android/widget/HwOverflowMenuButton;

    invoke-static {v0}, Lhuawei/android/widget/HwOverflowMenuButton;->access$000(Lhuawei/android/widget/HwOverflowMenuButton;)Landroid/widget/ActionMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getOverflowPopup()Landroid/widget/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    .line 65
    .local v0, "mp":Lcom/android/internal/view/menu/MenuPopup;
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->getMenuPopup()Landroid/widget/MenuPopupWindow;

    move-result-object v1

    return-object v1

    .line 68
    :cond_1
    return-object v1
.end method

.method public bridge synthetic getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton$1;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lhuawei/android/widget/HwOverflowMenuButton$1;->this$0:Lhuawei/android/widget/HwOverflowMenuButton;

    invoke-static {v0}, Lhuawei/android/widget/HwOverflowMenuButton;->access$000(Lhuawei/android/widget/HwOverflowMenuButton;)Landroid/widget/ActionMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lhuawei/android/widget/HwOverflowMenuButton$1;->this$0:Lhuawei/android/widget/HwOverflowMenuButton;

    invoke-static {v0}, Lhuawei/android/widget/HwOverflowMenuButton;->access$000(Lhuawei/android/widget/HwOverflowMenuButton;)Landroid/widget/ActionMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->getPostedOpenRunnable()Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lhuawei/android/widget/HwOverflowMenuButton$1;->this$0:Lhuawei/android/widget/HwOverflowMenuButton;

    invoke-static {v0}, Lhuawei/android/widget/HwOverflowMenuButton;->access$000(Lhuawei/android/widget/HwOverflowMenuButton;)Landroid/widget/ActionMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 91
    iget-boolean v0, p0, Lhuawei/android/widget/HwOverflowMenuButton$1;->mForwarding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhuawei/android/widget/HwOverflowMenuButton$1;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lhuawei/android/widget/HwOverflowMenuButton$1;->mForwarding:Z

    .line 92
    invoke-super {p0, p1, p2}, Landroid/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
