.class final Landroid/zrhung/watchpoint/SysHungScreenOn$ScreenOnCheckHandler;
.super Landroid/os/Handler;
.source "SysHungScreenOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/zrhung/watchpoint/SysHungScreenOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenOnCheckHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/zrhung/watchpoint/SysHungScreenOn;


# direct methods
.method public constructor <init>(Landroid/zrhung/watchpoint/SysHungScreenOn;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 64
    iput-object p1, p0, Landroid/zrhung/watchpoint/SysHungScreenOn$ScreenOnCheckHandler;->this$0:Landroid/zrhung/watchpoint/SysHungScreenOn;

    .line 65
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn$ScreenOnCheckHandler;->this$0:Landroid/zrhung/watchpoint/SysHungScreenOn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/zrhung/watchpoint/SysHungScreenOn;->sendEvent(Landroid/zrhung/ZrHungData;)Z

    .line 72
    nop

    .line 76
    :goto_0
    return-void
.end method
