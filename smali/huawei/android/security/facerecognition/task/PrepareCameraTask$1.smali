.class Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;
.super Ljava/lang/Object;
.source "PrepareCameraTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/PrepareCameraTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 16
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 6
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 19
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 20
    new-instance v1, Lhuawei/android/security/facerecognition/task/CreateSessionTask;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 21
    invoke-static {v3}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$000(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v3

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v4, v4, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    iget-object v5, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-static {v5}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$100(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lhuawei/android/security/facerecognition/task/CreateSessionTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;Ljava/util/List;)V

    .line 20
    invoke-static {v1, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 24
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$200(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V

    goto :goto_0

    .line 26
    :cond_1
    instance-of v1, p1, Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    if-eqz v1, :cond_2

    .line 27
    move-object v1, p1

    check-cast v1, Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    .line 28
    .local v1, "task":Lhuawei/android/security/facerecognition/task/OpenCameraTask;
    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->canRetry()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    new-instance v2, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 30
    invoke-static {v4}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$300(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v4

    iget-object v5, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v5, v5, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {v2, v3, v4, v5}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 29
    invoke-static {v2, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 32
    return-void

    .line 35
    .end local v1    # "task":Lhuawei/android/security/facerecognition/task/OpenCameraTask;
    :cond_2
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-static {v0, p2}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$400(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V

    .line 37
    :goto_0
    return-void
.end method
