.class Lhuawei/android/security/facerecognition/task/RetryWaitTask$1;
.super Ljava/lang/Object;
.source "RetryWaitTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/RetryWaitTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/RetryWaitTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/RetryWaitTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/RetryWaitTask;

    .line 24
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RetryWaitTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 27
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RetryWaitTask;

    iget-object v0, v0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RetryWaitTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->access$000(Lhuawei/android/security/facerecognition/task/RetryWaitTask;I)V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RetryWaitTask;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->access$100(Lhuawei/android/security/facerecognition/task/RetryWaitTask;I)V

    .line 32
    :goto_0
    return-void
.end method
