.class Lhuawei/android/security/facerecognition/task/RepeatingRequestTask$1;
.super Ljava/lang/Object;
.source "RepeatingRequestTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;


# direct methods
.method constructor <init>(Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;)V
    .locals 0
    .param p1, "this$0"    # Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;

    .line 25
    iput-object p1, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerOut()V
    .locals 2

    .line 28
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask$1;->this$0:Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->access$000(Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;I)V

    .line 29
    return-void
.end method
