.class Lhuawei/android/security/facerecognition/task/DoCancelAuthTask$1;
.super Ljava/lang/Object;
.source "DoCancelAuthTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;

    .line 32
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask$1;->this$0:Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 35
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask$1;->this$0:Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->access$000(Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;I)V

    .line 36
    return-void
.end method
