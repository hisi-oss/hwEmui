.class Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;
.super Ljava/lang/Object;
.source "OpenCameraRetryTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    .line 33
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 5
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 36
    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    instance-of v0, p1, Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    if-eqz v0, :cond_1

    .line 40
    move-object v0, p1

    check-cast v0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    .line 41
    .local v0, "task":Lhuawei/android/security/facerecognition/task/OpenCameraTask;
    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->canRetry()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    invoke-static {v1}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->access$306(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    new-instance v1, Lhuawei/android/security/facerecognition/task/RetryWaitTask;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    invoke-static {v3}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->access$400(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v3

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    iget-object v4, v4, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/task/RetryWaitTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 44
    return-void

    .line 47
    .end local v0    # "task":Lhuawei/android/security/facerecognition/task/OpenCameraTask;
    :cond_1
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->access$500(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;I)V

    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    invoke-static {v0, p2}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->access$200(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;I)V

    .line 49
    :goto_1
    return-void
.end method
