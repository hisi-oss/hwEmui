.class Lhuawei/android/security/facerecognition/task/PrepareCameraTask$4;
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

    .line 67
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$4;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCallback(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V
    .locals 1
    .param p1, "child"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "ret"    # I

    .line 70
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$4;->this$0:Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    invoke-static {v0, p2}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->access$800(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V

    .line 71
    return-void
.end method
