.class Lhuawei/android/security/facerecognition/task/DoEnrollTask$1;
.super Ljava/lang/Object;
.source "DoEnrollTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/DoEnrollTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/DoEnrollTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/DoEnrollTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/DoEnrollTask;

    .line 34
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/DoEnrollTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 37
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/DoEnrollTask;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->access$000(Lhuawei/android/security/facerecognition/task/DoEnrollTask;I)V

    .line 38
    return-void
.end method
