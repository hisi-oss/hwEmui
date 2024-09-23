.class final Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;
.super Lvendor/huawei/hardware/tp/V1_0/ITPCallback$Stub;
.source "HwTpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hardware/tp/HwTpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TpHalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/hardware/tp/HwTpManager;


# direct methods
.method private constructor <init>(Lhuawei/android/hardware/tp/HwTpManager;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    invoke-direct {p0}, Lvendor/huawei/hardware/tp/V1_0/ITPCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhuawei/android/hardware/tp/HwTpManager;Lhuawei/android/hardware/tp/HwTpManager$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/android/hardware/tp/HwTpManager;
    .param p2, "x1"    # Lhuawei/android/hardware/tp/HwTpManager$1;

    .line 191
    invoke-direct {p0, p1}, Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;-><init>(Lhuawei/android/hardware/tp/HwTpManager;)V

    return-void
.end method


# virtual methods
.method public notifyTHPEvents(II)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "value"    # I

    .line 194
    invoke-static {}, Lhuawei/android/hardware/tp/HwTpManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "HwTpManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive a TP driver event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    invoke-static {v0}, Lhuawei/android/hardware/tp/HwTpManager;->access$600(Lhuawei/android/hardware/tp/HwTpManager;)Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    invoke-static {v0}, Lhuawei/android/hardware/tp/HwTpManager;->access$600(Lhuawei/android/hardware/tp/HwTpManager;)Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 200
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 201
    iget-object v1, p0, Lhuawei/android/hardware/tp/HwTpManager$TpHalCallback;->this$0:Lhuawei/android/hardware/tp/HwTpManager;

    invoke-static {v1}, Lhuawei/android/hardware/tp/HwTpManager;->access$600(Lhuawei/android/hardware/tp/HwTpManager;)Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhuawei/android/hardware/tp/HwTpManager$TpEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method
