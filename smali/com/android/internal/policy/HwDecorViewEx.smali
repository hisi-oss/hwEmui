.class public Lcom/android/internal/policy/HwDecorViewEx;
.super Ljava/lang/Object;
.source "HwDecorViewEx.java"

# interfaces
.implements Lcom/android/internal/policy/IHwDecorViewEx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public handleWindowFocusChanged(ZLandroid/content/Context;)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Landroid/view/HwAppSceneImpl;->getDefault()Landroid/view/HwAppSceneImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/HwAppSceneImpl;->handleWindowFocusChanged(Landroid/content/Context;)V

    .line 26
    :cond_0
    return-void
.end method
