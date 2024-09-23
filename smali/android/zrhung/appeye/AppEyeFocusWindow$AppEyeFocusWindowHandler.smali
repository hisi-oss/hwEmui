.class Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;
.super Landroid/os/Handler;
.source "AppEyeFocusWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/zrhung/appeye/AppEyeFocusWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppEyeFocusWindowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/zrhung/appeye/AppEyeFocusWindow;


# direct methods
.method public constructor <init>(Landroid/zrhung/appeye/AppEyeFocusWindow;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 80
    iput-object p1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;->this$0:Landroid/zrhung/appeye/AppEyeFocusWindow;

    .line 81
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    const-string v0, "ZrHung.AppEyeFocusWindow"

    const-string v1, "handleMessage CHECK_FOCUS_WINDOW_ERROR_MSG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/zrhung/ZrHungData;

    .line 89
    .local v0, "args":Landroid/zrhung/ZrHungData;
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFocusWindow$AppEyeFocusWindowHandler;->this$0:Landroid/zrhung/appeye/AppEyeFocusWindow;

    invoke-virtual {v1, v0}, Landroid/zrhung/appeye/AppEyeFocusWindow;->sendEvent(Landroid/zrhung/ZrHungData;)Z

    .line 90
    nop

    .line 94
    .end local v0    # "args":Landroid/zrhung/ZrHungData;
    :goto_0
    return-void
.end method
