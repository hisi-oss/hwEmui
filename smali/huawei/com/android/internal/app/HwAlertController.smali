.class public Lhuawei/com/android/internal/app/HwAlertController;
.super Lcom/android/internal/app/AlertController;
.source "HwAlertController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected setHuaweiScrollIndicators(ZZZ)V
    .locals 0
    .param p1, "hasCustomPanel"    # Z
    .param p2, "hasTopPanel"    # Z
    .param p3, "hasButtonPanel"    # Z

    .line 35
    return-void
.end method

.method protected setupView()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 42
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwAlertController;->hasTextTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/app/HwAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 45
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 46
    iget-object v1, p0, Lhuawei/com/android/internal/app/HwAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method
