.class Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$1;
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

    .line 21
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$1;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 4
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 24
    if-nez p2, :cond_0

    .line 25
    new-instance v0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$1;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$1;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->access$000(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$1;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    iget-object v3, v3, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {v0, v1, v2, v3}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$1;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->access$100(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;I)V

    .line 30
    :goto_0
    return-void
.end method
