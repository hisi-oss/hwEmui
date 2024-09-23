.class final Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;
.super Landroid/os/Handler;
.source "HwTpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hardware/tp/HwTpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TpEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/hardware/tp/HwTpManager;


# direct methods
.method constructor <init>(Lhuawei/android/hardware/tp/HwTpManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 81
    iput-object p1, p0, Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    .line 82
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 92
    const-string v0, "HwTpManager"

    const-string v1, "Invalid message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lhuawei/android/hardware/tp/HwTpManager;->access$000(Lhuawei/android/hardware/tp/HwTpManager;II)V

    .line 90
    nop

    .line 95
    :goto_0
    return-void
.end method
