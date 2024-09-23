.class Lhuawei/android/security/facerecognition/task/EnrollTask$1;
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

    .line 29
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 9
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 32
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v2, v2, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 48
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2, v1, v1, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 49
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->close()Z

    .line 50
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-static {v0, p2}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$400(Lhuawei/android/security/facerecognition/task/EnrollTask;I)V

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v2, v2, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    new-instance v0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    .line 35
    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$000(Lhuawei/android/security/facerecognition/task/EnrollTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v5

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v6, v2, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    .line 36
    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$100(Lhuawei/android/security/facerecognition/task/EnrollTask;)[B

    move-result-object v7

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$200(Lhuawei/android/security/facerecognition/task/EnrollTask;)I

    move-result v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;-><init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;[BI)V

    .line 34
    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    goto :goto_1

    .line 39
    :cond_2
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v3, v3, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 40
    invoke-virtual {v3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v3, v3

    .line 39
    invoke-virtual {v2, v3, v1, v1, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 41
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v3, v3, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 42
    invoke-virtual {v3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x0

    .line 41
    invoke-virtual {v2, v3, v1, v0, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 43
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v1

    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/FaceCamera;->close()Z

    .line 44
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-static {v1, v0}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$300(Lhuawei/android/security/facerecognition/task/EnrollTask;I)V

    .line 52
    :goto_1
    return-void
.end method
