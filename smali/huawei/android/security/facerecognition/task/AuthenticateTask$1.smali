.class Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;
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

    .line 52
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 10
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 55
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_2

    if-ne p2, v1, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    const/4 v2, 0x7

    if-ne p2, v2, :cond_1

    .line 70
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v3, v3, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 71
    invoke-virtual {v3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v1, v0, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v3, v3, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 74
    invoke-virtual {v3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3, v1, v0, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 76
    :goto_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-virtual {v0, p2}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->endWithResult(I)V

    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v2, v2, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 57
    new-instance v1, Lhuawei/android/security/facerecognition/task/DoAuthTask;

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    .line 58
    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->access$000(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v5

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v6, v2, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    .line 59
    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->access$100(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)I

    move-result v7

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->access$200(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)J

    move-result-wide v8

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lhuawei/android/security/facerecognition/task/DoAuthTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;IJ)V

    .line 57
    invoke-static {v1, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    goto :goto_2

    .line 62
    :cond_3
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v3, v3, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 63
    invoke-virtual {v3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v3, v3

    .line 62
    invoke-virtual {v2, v3, v1, v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 64
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v2, v2, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 65
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v0, v2, v1, v1, v3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 66
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-virtual {v0, v1}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->endWithResult(I)V

    .line 78
    :goto_2
    return-void
.end method
