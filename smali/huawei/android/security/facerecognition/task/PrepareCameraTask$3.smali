.class Lhuawei/android/security/facerecognition/task/PrepareCameraTask$3;
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

    .line 53
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$3;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 4
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$3;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$3;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 59
    invoke-static {v2}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$600(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$3;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v3, v3, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {v0, v1, v2, v3}, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$3;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-static {v0, p2}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$700(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V

    .line 64
    :goto_0
    return-void
.end method
