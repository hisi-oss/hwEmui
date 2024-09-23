.class public Lhuawei/com/android/internal/app/EditActionModeImpl;
.super Lhuawei/com/android/internal/app/DefaultActionModeImpl;
.source "EditActionModeImpl.java"


# instance fields
.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 34
    invoke-direct {p0, p1, p2}, Lhuawei/com/android/internal/app/DefaultActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 100
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .line 82
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwActionBarContextView;

    .line 83
    .local v0, "habc":Lhuawei/com/android/internal/widget/HwActionBarContextView;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 86
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 74
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwActionBarContextView;

    .line 75
    .local v0, "habc":Lhuawei/com/android/internal/widget/HwActionBarContextView;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 78
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setActionVisible(ZZ)V
    .locals 1
    .param p1, "OKVis"    # Z
    .param p2, "cancelVis"    # Z

    .line 45
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwActionBarContextView;

    .line 46
    .local v0, "habc":Lhuawei/com/android/internal/widget/HwActionBarContextView;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1, p2}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setActionVisible(ZZ)V

    .line 49
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "okContentDescription"    # Ljava/lang/CharSequence;
    .param p2, "cancelContentDescription"    # Ljava/lang/CharSequence;

    .line 53
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwActionBarContextView;

    .line 54
    .local v0, "habc":Lhuawei/com/android/internal/widget/HwActionBarContextView;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1, p2}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwActionBarContextView;

    .line 92
    .local v0, "habc":Lhuawei/com/android/internal/widget/HwActionBarContextView;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 97
    return-void
.end method

.method public setImageResource(II)V
    .locals 1
    .param p1, "resIdOK"    # I
    .param p2, "resIdCancel"    # I

    .line 38
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwActionBarContextView;

    .line 39
    .local v0, "habc":Lhuawei/com/android/internal/widget/HwActionBarContextView;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1, p2}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setImageResource(II)V

    .line 42
    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwActionBarContextView;

    .line 68
    .local v0, "habc":Lhuawei/com/android/internal/widget/HwActionBarContextView;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 60
    iget-object v0, p0, Lhuawei/com/android/internal/app/EditActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/HwActionBarContextView;

    .line 61
    .local v0, "habc":Lhuawei/com/android/internal/widget/HwActionBarContextView;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-void
.end method
