.class Lhuawei/android/security/facerecognition/task/DoAuthTask$1;
.super Ljava/lang/Object;
.source "DoAuthTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/DoAuthTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/DoAuthTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/DoAuthTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/DoAuthTask;

    .line 30
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask$1;->this$0:Lhuawei/android/security/facerecognition/task/DoAuthTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 33
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask$1;->this$0:Lhuawei/android/security/facerecognition/task/DoAuthTask;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/DoAuthTask;->access$000(Lhuawei/android/security/facerecognition/task/DoAuthTask;I)V

    .line 34
    return-void
.end method
