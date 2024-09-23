.class public Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "HwFragmentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;
    }
.end annotation


# instance fields
.field private mFragmentFrameLayoutCallback:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;

.field private mSelectContainerByTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->mSelectContainerByTouch:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->mSelectContainerByTouch:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->mSelectContainerByTouch:Z

    .line 16
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 40
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->mSelectContainerByTouch:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 42
    .local v0, "action":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->mFragmentFrameLayoutCallback:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->mFragmentFrameLayoutCallback:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;->setSelectedFrameLayout(I)V

    .line 46
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setFragmentFrameLayoutCallback(Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;

    .line 31
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->mFragmentFrameLayoutCallback:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;

    .line 32
    return-void
.end method

.method protected setSelectContainerByTouch(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 35
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->mSelectContainerByTouch:Z

    .line 36
    return-void
.end method
