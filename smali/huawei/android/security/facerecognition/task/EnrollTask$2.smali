.class Lhuawei/android/security/facerecognition/task/EnrollTask$2;
.super Ljava/lang/Object;
.source "EnrollTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/EnrollTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/EnrollTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;

    .line 55
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$2;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 5
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 58
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$2;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v0, v0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isActiveCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$2;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v1, v1, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 60
    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v0, v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 62
    :cond_0
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->close()Z

    .line 63
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$2;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-static {v0, p2}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$500(Lhuawei/android/security/facerecognition/task/EnrollTask;I)V

    .line 64
    return-void
.end method
