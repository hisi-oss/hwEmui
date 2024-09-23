.class Lhuawei/android/security/facerecognition/task/AuthenticateTask$3;
.super Ljava/lang/Object;
.source "AuthenticateTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/AuthenticateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    .line 102
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$3;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 4
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 105
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$3;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v0, v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isActiveCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$3;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v1, v1, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 107
    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    .line 106
    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v3, v2}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 109
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$3;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-virtual {v0, p2}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->endWithResult(I)V

    .line 110
    return-void
.end method
