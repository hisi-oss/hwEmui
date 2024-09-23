.class Lhuawei/android/security/facerecognition/task/CreateSessionTask$1;
.super Ljava/lang/Object;
.source "CreateSessionTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/CreateSessionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/CreateSessionTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/CreateSessionTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/CreateSessionTask;

    .line 27
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask$1;->this$0:Lhuawei/android/security/facerecognition/task/CreateSessionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 30
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask$1;->this$0:Lhuawei/android/security/facerecognition/task/CreateSessionTask;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->access$000(Lhuawei/android/security/facerecognition/task/CreateSessionTask;I)V

    .line 31
    return-void
.end method
