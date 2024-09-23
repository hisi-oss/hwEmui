.class Landroid/os/FreezeScreenScene$FreezeScreenSceneHandler;
.super Landroid/os/Handler;
.source "FreezeScreenScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FreezeScreenScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreezeScreenSceneHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/FreezeScreenScene;


# direct methods
.method public constructor <init>(Landroid/os/FreezeScreenScene;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 156
    iput-object p1, p0, Landroid/os/FreezeScreenScene$FreezeScreenSceneHandler;->this$0:Landroid/os/FreezeScreenScene;

    .line 157
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 158
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    const-string v0, "FreezeScreenScene"

    const-string v1, "handleMessage CHECK_FREEZE_SCREEN_FOCUS_WINDOW_ERROR_MSG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Landroid/os/FreezeScreenScene$FreezeScreenSceneHandler;->this$0:Landroid/os/FreezeScreenScene;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/os/FreezeScreenScene;->checkFreezeScreen(Landroid/util/ArrayMap;)V

    .line 170
    goto :goto_0

    .line 163
    :pswitch_1
    const-string v0, "FreezeScreenScene"

    const-string v1, "handleMessage CHECK_FREEZE_SCREEN_MSG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Landroid/os/FreezeScreenScene$FreezeScreenSceneHandler;->this$0:Landroid/os/FreezeScreenScene;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/os/FreezeScreenScene;->checkFreezeScreen(Landroid/util/ArrayMap;)V

    .line 165
    nop

    .line 175
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
