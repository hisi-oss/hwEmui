.class Lhuawei/android/security/facerecognition/task/OpenCameraTask$1;
.super Ljava/lang/Object;
.source "OpenCameraTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/OpenCameraTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/OpenCameraTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/OpenCameraTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    .line 24
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 27
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->access$002(Lhuawei/android/security/facerecognition/task/OpenCameraTask;Z)Z

    .line 28
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask$1;->this$0:Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->access$100(Lhuawei/android/security/facerecognition/task/OpenCameraTask;I)V

    .line 29
    return-void
.end method
