.class Lhuawei/android/security/facerecognition/FaceCamera$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
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
.field private needSendRequestMsg:Z

.field final synthetic this$0:Lhuawei/android/security/facerecognition/FaceCamera;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/FaceCamera;)V
    .locals 1
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 531
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->needSendRequestMsg:Z

    return-void
.end method


# virtual methods
.method public onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 10
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 571
    const-string v0, "FaceCamera"

    const-string v1, "cb - onActive"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 573
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 4.1. call-back create request --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v2, "com.android.systemui"

    iget-object v3, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$800(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 575
    const-string v2, "FaceCamera"

    const-string v4, "Big data report open"

    invoke-static {v2, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 577
    .local v4, "now":J
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2}, Lhuawei/android/security/facerecognition/FaceCamera;->access$800(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/content/Context;

    move-result-object v2

    const/16 v6, 0x1f5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"open_camera_cost_ms\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v8}, Lhuawei/android/security/facerecognition/FaceCamera;->access$900(Lhuawei/android/security/facerecognition/FaceCamera;)J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\"}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Landroid/util/Flog;->bdReport(Landroid/content/Context;ILjava/lang/String;)Z

    .line 578
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2, v4, v5}, Lhuawei/android/security/facerecognition/FaceCamera;->access$902(Lhuawei/android/security/facerecognition/FaceCamera;J)J

    .line 579
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$702(Lhuawei/android/security/facerecognition/FaceCamera;Z)Z

    .line 580
    .end local v4    # "now":J
    goto :goto_0

    .line 581
    :cond_0
    const-string v2, "FaceCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pkg name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v5}, Lhuawei/android/security/facerecognition/FaceCamera;->access$800(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$702(Lhuawei/android/security/facerecognition/FaceCamera;Z)Z

    .line 584
    :goto_0
    iget-boolean v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->needSendRequestMsg:Z

    if-eqz v2, :cond_1

    .line 585
    iput-boolean v3, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->needSendRequestMsg:Z

    .line 586
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1600(Lhuawei/android/security/facerecognition/FaceCamera;I)V

    .line 588
    :cond_1
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 555
    const-string v0, "FaceCamera"

    const-string v1, "cb - onConfiguredFailed"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1500(Lhuawei/android/security/facerecognition/FaceCamera;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1600(Lhuawei/android/security/facerecognition/FaceCamera;I)V

    .line 559
    :cond_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 536
    const-string v0, "FaceCamera"

    const-string v1, "cb - onConfigured"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 538
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 3.1. call-back create session --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1400(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 542
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1500(Lhuawei/android/security/facerecognition/FaceCamera;I)Z

    .line 543
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1600(Lhuawei/android/security/facerecognition/FaceCamera;I)V

    .line 544
    return-void

    .line 546
    :cond_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1500(Lhuawei/android/security/facerecognition/FaceCamera;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-static {v2, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->access$2202(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 549
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->this$0:Lhuawei/android/security/facerecognition/FaceCamera;

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->access$1600(Lhuawei/android/security/facerecognition/FaceCamera;I)V

    .line 551
    :cond_1
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 564
    const-string v0, "FaceCamera"

    const-string v1, "cb - onReady"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/FaceCamera$4;->needSendRequestMsg:Z

    .line 566
    return-void
.end method
