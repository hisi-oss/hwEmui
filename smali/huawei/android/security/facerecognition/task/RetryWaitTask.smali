.class public Lhuawei/android/security/facerecognition/task/RetryWaitTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "RetryWaitTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RetryWaitTask"

.field private static final TIMEOUT:J = 0x12cL


# instance fields
.field private mReqType:I

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 2
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 24
    new-instance v0, Lhuawei/android/security/facerecognition/task/RetryWaitTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/RetryWaitTask$1;-><init>(Lhuawei/android/security/facerecognition/task/RetryWaitTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 37
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mReqType:I

    .line 38
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 39
    iget v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mReqType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 40
    invoke-static {v1, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mReqType:I

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x2

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/RetryWaitTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/RetryWaitTask;
    .param p1, "x1"    # I

    .line 16
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$100(Lhuawei/android/security/facerecognition/task/RetryWaitTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/RetryWaitTask;
    .param p1, "x1"    # I

    .line 16
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 4

    .line 62
    const-string v0, ""

    const-string v1, "start RetryWaitTask"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 6
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 48
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    const-string v0, "RetryWaitTask"

    const-string v2, "cancel event"

    invoke-static {v0, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v2, v0, v1

    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setCancel()V

    .line 54
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 2

    .line 69
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 70
    iget v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mReqType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 71
    invoke-static {v1, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    goto :goto_0

    .line 72
    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;->mReqType:I

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 75
    :cond_1
    :goto_0
    return-void
.end method
