.class Lcom/huawei/android/hardware/HwSensorManager$1;
.super Landroid/os/Handler;
.source "HwSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hardware/HwSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hardware/HwSensorManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/hardware/HwSensorManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/hardware/HwSensorManager;

    .line 221
    iput-object p1, p0, Lcom/huawei/android/hardware/HwSensorManager$1;->this$0:Lcom/huawei/android/hardware/HwSensorManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 224
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager$1;->this$0:Lcom/huawei/android/hardware/HwSensorManager;

    iget-object v0, v0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager$1;->this$0:Lcom/huawei/android/hardware/HwSensorManager;

    iget-object v0, v0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    invoke-interface {v0}, Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;->onSwing()V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager$1;->this$0:Lcom/huawei/android/hardware/HwSensorManager;

    invoke-static {v0}, Lcom/huawei/android/hardware/HwSensorManager;->access$000(Lcom/huawei/android/hardware/HwSensorManager;)V

    .line 231
    nop

    .line 240
    :goto_0
    return-void
.end method
