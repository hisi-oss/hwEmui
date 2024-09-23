.class Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask$1;
.super Ljava/lang/Object;
.source "DoCancelEnrollTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;

    .line 31
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 34
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask$1;->this$0:Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->access$000(Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;I)V

    .line 35
    return-void
.end method
