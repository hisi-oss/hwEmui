.class public Landroid/view/HwAppSceneImpl;
.super Ljava/lang/Object;
.source "HwAppSceneImpl.java"

# interfaces
.implements Landroid/view/IHwAppSceneImpl;


# static fields
.field private static final INSTANCE:Landroid/view/HwAppSceneImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Landroid/view/HwAppSceneImpl;

    invoke-direct {v0}, Landroid/view/HwAppSceneImpl;-><init>()V

    sput-object v0, Landroid/view/HwAppSceneImpl;->INSTANCE:Landroid/view/HwAppSceneImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getDefault()Landroid/view/HwAppSceneImpl;
    .locals 1

    .line 33
    sget-object v0, Landroid/view/HwAppSceneImpl;->INSTANCE:Landroid/view/HwAppSceneImpl;

    return-object v0
.end method


# virtual methods
.method public changeActivityState(ILandroid/app/Activity;)V
    .locals 1
    .param p1, "flag"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .line 37
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->getInstance()Landroid/rms/iaware/AppSceneRecogManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/rms/iaware/AppSceneRecogManager;->pauseActivity(Landroid/app/Activity;)V

    .line 43
    goto :goto_0

    .line 39
    :pswitch_1
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->getInstance()Landroid/rms/iaware/AppSceneRecogManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/rms/iaware/AppSceneRecogManager;->resumeActivity(Landroid/app/Activity;)V

    .line 40
    nop

    .line 47
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleWindowFocusChanged(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->getInstance()Landroid/rms/iaware/AppSceneRecogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/rms/iaware/AppSceneRecogManager;->windowFocusChanged(Landroid/content/Context;)V

    .line 51
    return-void
.end method
