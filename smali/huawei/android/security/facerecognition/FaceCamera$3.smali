.class Lhuawei/android/security/facerecognition/FaceCamera$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "FaceCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/FaceCamera;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/FaceCamera;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 468
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 516
    const-string v0, "FaceCamera"

    const-string v1, "cb - onClosed"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1500(Lhuawei/android/security/facerecognition/FaceCamera;I)Z

    .line 518
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1600(Lhuawei/android/security/facerecognition/FaceCamera;I)V

    .line 519
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1700(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 520
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1800(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 522
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1900(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 523
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$2000(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 524
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1402(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 525
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 486
    const-string v0, "FaceCamera"

    const-string v1, "cb - onDisconnected"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1500(Lhuawei/android/security/facerecognition/FaceCamera;I)Z

    .line 488
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1700(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 489
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1300(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 490
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1800(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 492
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1900(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 493
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$2000(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 494
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 495
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1402(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 496
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1600(Lhuawei/android/security/facerecognition/FaceCamera;I)V

    .line 497
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 501
    const-string v0, "FaceCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cb - onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1500(Lhuawei/android/security/facerecognition/FaceCamera;I)Z

    .line 503
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1700(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 504
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1300(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 505
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1800(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 507
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1900(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 508
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->access$2000(Lhuawei/android/security/facerecognition/FaceCamera;)V

    .line 509
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 510
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1402(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 511
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x2

    invoke-static {v0, v1, p2}, Lhuawei/android/security/facerecognition/FaceCamera;->access$2100(Lhuawei/android/security/facerecognition/FaceCamera;II)V

    .line 512
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 473
    const-string v0, "FaceCamera"

    const-string v1, "cb - onOpened"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 475
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 2.1. call-back open camera --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1300(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 478
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1402(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 479
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1500(Lhuawei/android/security/facerecognition/FaceCamera;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$3;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1600(Lhuawei/android/security/facerecognition/FaceCamera;I)V

    .line 482
    :cond_0
    return-void
.end method
