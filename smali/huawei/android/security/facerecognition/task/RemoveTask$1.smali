.class Lhuawei/android/security/facerecognition/task/RemoveTask$1;
.super Ljava/lang/Object;
.source "RemoveTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/RemoveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/RemoveTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/RemoveTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/RemoveTask;

    .line 24
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/RemoveTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RemoveTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 27
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RemoveTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RemoveTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/RemoveTask;->access$000(Lhuawei/android/security/facerecognition/task/RemoveTask;I)V

    .line 28
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RemoveTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RemoveTask;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/RemoveTask;->access$100(Lhuawei/android/security/facerecognition/task/RemoveTask;I)V

    .line 29
    return-void
.end method
