.class public Lhuawei/com/android/internal/app/HwActionBarImpl;
.super Lcom/android/internal/app/WindowDecorActionBar;
.source "HwActionBarImpl.java"

# interfaces
.implements Lhuawei/com/android/internal/app/DefaultActionModeImpl$ActionModeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/app/HwActionBarImpl$HwTabImpl;,
        Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    .line 49
    return-void
.end method


# virtual methods
.method public createActionMode(Landroid/view/ActionMode$Callback;)Lhuawei/com/android/internal/app/DefaultActionModeImpl;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 70
    new-instance v0, Lhuawei/com/android/internal/app/EditActionModeImpl;

    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lhuawei/com/android/internal/app/EditActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lhuawei/com/android/internal/widget/ActionModeView;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 75
    invoke-virtual {p0}, Lhuawei/com/android/internal/app/HwActionBarImpl;->getContextView()Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    check-cast v0, Lhuawei/com/android/internal/widget/ActionModeView;

    return-object v0
.end method

.method public finish()V
    .locals 0

    .line 52
    return-void
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomPanel()Lhuawei/com/android/internal/widget/HwCustomPanel;
    .locals 1

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDragAnimationStage()I
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 0

    .line 159
    invoke-super {p0}, Lcom/android/internal/app/WindowDecorActionBar;->hide()V

    .line 160
    return-void
.end method

.method protected inflateCustomPanel()V
    .locals 0

    .line 109
    return-void
.end method

.method protected initActionBarOverlayLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;

    .line 143
    return-void
.end method

.method protected initContainerView(Landroid/view/View;)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;

    .line 55
    return-void
.end method

.method protected initContextView(Landroid/view/View;)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;

    .line 58
    return-void
.end method

.method protected initCustomPanel(Landroid/view/View;)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;

    .line 106
    return-void
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .line 204
    new-instance v0, Lhuawei/com/android/internal/app/HwActionBarImpl$HwTabImpl;

    invoke-direct {v0, p0}, Lhuawei/com/android/internal/app/HwActionBarImpl$HwTabImpl;-><init>(Lhuawei/com/android/internal/app/HwActionBarImpl;)V

    return-object v0
.end method

.method public onActionModeFinish(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "actionMode"    # Landroid/view/ActionMode;

    .line 79
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 169
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    return-void
.end method

.method public resetDragAnimation()V
    .locals 0

    .line 152
    return-void
.end method

.method public setActionBarDraggable(Z)V
    .locals 0
    .param p1, "isDraggable"    # Z

    .line 140
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 97
    return-void
.end method

.method public setCanDragFromContent(Z)V
    .locals 0
    .param p1, "canDragFromContent"    # Z

    .line 133
    return-void
.end method

.method public setCustomDragView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 112
    return-void
.end method

.method public setCustomDragView(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .line 115
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 88
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 0
    .param p1, "options"    # I

    .line 173
    invoke-super {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(I)V

    .line 174
    return-void
.end method

.method public setEndContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 94
    return-void
.end method

.method public setEndIcon(ZLandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "icon2Visible"    # Z
    .param p2, "icon2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "listener2"    # Landroid/view/View$OnClickListener;

    .line 85
    return-void
.end method

.method public setLazyMode(Z)V
    .locals 0
    .param p1, "isLazyMode"    # Z

    .line 136
    return-void
.end method

.method public setScrollTabAnimEnable(Z)V
    .locals 0
    .param p1, "shouldAnim"    # Z

    .line 66
    return-void
.end method

.method public setSmartColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "iconColor"    # Landroid/content/res/ColorStateList;
    .param p2, "titleColor"    # Landroid/content/res/ColorStateList;

    .line 213
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 103
    return-void
.end method

.method public setSplitViewLocation(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 209
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 100
    return-void
.end method

.method public setStageChangedCallBack(Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    .line 146
    return-void
.end method

.method public setStartContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 91
    return-void
.end method

.method public setStartIcon(ZLandroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "icon1Visible"    # Z
    .param p2, "icon1"    # Landroid/graphics/drawable/Drawable;
    .param p3, "listener1"    # Landroid/view/View$OnClickListener;

    .line 82
    return-void
.end method

.method public setStartStageChangedCallBack(Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/com/android/internal/app/HwActionBarImpl$InnerOnStageChangedListener;

    .line 149
    return-void
.end method

.method public setStillView(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isStill"    # Z

    .line 118
    return-void
.end method

.method public setTabScrollingOffsets(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "offset"    # F

    .line 155
    return-void
.end method

.method public show()V
    .locals 0

    .line 164
    invoke-super {p0}, Lcom/android/internal/app/WindowDecorActionBar;->show()V

    .line 165
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public startStageAnimation(IZ)V
    .locals 0
    .param p1, "stage"    # I
    .param p2, "isScrollDown"    # Z

    .line 126
    return-void
.end method
