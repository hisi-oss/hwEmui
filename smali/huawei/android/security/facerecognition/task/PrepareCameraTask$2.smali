.class Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;
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

    .line 40
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 5
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance v0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 45
    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$000(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v3, v3, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-static {v4}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$100(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/task/CreateSessionTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;Ljava/util/List;)V

    const/4 v1, 0x1

    .line 44
    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-static {v0, p2}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$500(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V

    .line 50
    :goto_0
    return-void
.end method
