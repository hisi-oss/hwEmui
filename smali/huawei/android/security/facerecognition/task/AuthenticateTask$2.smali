.class Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;
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

    .line 81
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 5
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 84
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 85
    new-instance v1, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;

    const/4 v2, 0x0

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    .line 86
    invoke-static {v3}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->access$300(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v3

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v4, v4, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 85
    invoke-static {v1, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    goto :goto_1

    .line 88
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x6

    if-ne v2, p2, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-static {v2, p2, v1, v0}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->access$400(Lhuawei/android/security/facerecognition/task/AuthenticateTask;III)V

    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    instance-of v2, p1, Lhuawei/android/security/facerecognition/task/DoAuthTask;

    if-eqz v2, :cond_3

    .line 90
    move-object v0, p1

    check-cast v0, Lhuawei/android/security/facerecognition/task/DoAuthTask;

    .line 91
    .local v0, "detailTask":Lhuawei/android/security/facerecognition/task/DoAuthTask;
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/task/DoAuthTask;->getUserId()I

    move-result v2

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/task/DoAuthTask;->getErrorCode()I

    move-result v3

    invoke-static {v1, p2, v2, v3}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->access$400(Lhuawei/android/security/facerecognition/task/AuthenticateTask;III)V

    .line 92
    .end local v0    # "detailTask":Lhuawei/android/security/facerecognition/task/DoAuthTask;
    goto :goto_1

    .line 93
    :cond_3
    sget-object v2, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->TAG:Ljava/lang/String;

    const-string v3, "unexpected error after do auth, should never be here!!!!"

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;->this$0:Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-static {v2, p2, v1, v0}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->access$400(Lhuawei/android/security/facerecognition/task/AuthenticateTask;III)V

    .line 99
    :goto_1
    return-void
.end method
