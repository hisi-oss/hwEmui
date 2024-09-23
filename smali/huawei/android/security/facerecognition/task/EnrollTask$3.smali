.class Lhuawei/android/security/facerecognition/task/EnrollTask$3;
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

    .line 67
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$3;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 5
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 70
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 71
    new-instance v1, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$3;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$3;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    .line 72
    invoke-static {v3}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$600(Lhuawei/android/security/facerecognition/task/EnrollTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v3

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$3;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v4, v4, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 71
    invoke-static {v1, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    goto :goto_1

    .line 74
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x6

    if-ne v2, p2, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    sget-object v2, Lhuawei/android/security/facerecognition/task/EnrollTask;->TAG:Ljava/lang/String;

    const-string v3, "unknown failed!!!"

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$3;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-static {v2, p2, v1, v1, v0}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$700(Lhuawei/android/security/facerecognition/task/EnrollTask;IIII)V

    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    instance-of v2, p1, Lhuawei/android/security/facerecognition/task/DoEnrollTask;

    if-eqz v2, :cond_3

    .line 76
    move-object v0, p1

    check-cast v0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;

    .line 77
    .local v0, "detailTask":Lhuawei/android/security/facerecognition/task/DoEnrollTask;
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$3;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->getFaceId()I

    move-result v2

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->getUserId()I

    move-result v3

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->getErrorCode()I

    move-result v4

    invoke-static {v1, p2, v2, v3, v4}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$700(Lhuawei/android/security/facerecognition/task/EnrollTask;IIII)V

    .line 78
    .end local v0    # "detailTask":Lhuawei/android/security/facerecognition/task/DoEnrollTask;
    goto :goto_1

    .line 79
    :cond_3
    sget-object v2, Lhuawei/android/security/facerecognition/task/EnrollTask;->TAG:Ljava/lang/String;

    const-string v3, "child has to be DoEnrollTask"

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask$3;->this$0:Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-static {v2, p2, v1, v1, v0}, Lhuawei/android/security/facerecognition/task/EnrollTask;->access$700(Lhuawei/android/security/facerecognition/task/EnrollTask;IIII)V

    .line 86
    :goto_1
    return-void
.end method
