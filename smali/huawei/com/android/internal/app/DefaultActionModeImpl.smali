.class public Lhuawei/com/android/internal/app/DefaultActionModeImpl;
.super Landroid/view/ActionMode;
.source "DefaultActionModeImpl.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;
    }
.end annotation


# instance fields
.field private mActionModeCallback:Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;

.field protected mActionModeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lhuawei/com/android/internal/widget/ActionModeView;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/view/ActionMode$Callback;

.field protected mContext:Landroid/content/Context;

.field private mFinished:Z

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 39
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 40
    iput-object p1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 42
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 43
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 44
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 49
    :try_start_0
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 49
    return v0

    .line 51
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mFinished:Z

    if-nez v0, :cond_3

    .line 59
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 63
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mActionModeCallback:Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mActionModeCallback:Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;

    invoke-interface {v0, p0}, Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;->onActionModeFinish(Landroid/view/ActionMode;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/ActionModeView;

    .line 67
    .local v0, "amv":Lhuawei/com/android/internal/widget/ActionModeView;
    if-eqz v0, :cond_2

    .line 68
    invoke-interface {v0}, Lhuawei/com/android/internal/widget/ActionModeView;->closeMode()V

    .line 71
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mFinished:Z

    .line 73
    .end local v0    # "amv":Lhuawei/com/android/internal/widget/ActionModeView;
    :cond_3
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getCustomView not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 80
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 84
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSubtitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidate()V
    .locals 2

    .line 96
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 98
    :try_start_0
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuBuilder"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .line 105
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menuBuilder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 112
    iget-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->invalidate()V

    .line 115
    :cond_0
    return-void
.end method

.method public setActionModeCallback(Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;

    .line 118
    iput-object p1, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mActionModeCallback:Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;

    .line 119
    return-void
.end method

.method public setActionModeView(Lhuawei/com/android/internal/widget/ActionModeView;)V
    .locals 1
    .param p1, "actionModeView"    # Lhuawei/com/android/internal/widget/ActionModeView;

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhuawei/com/android/internal/app/DefaultActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    .line 126
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setCustomView not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubtitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setSubTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setSubTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
