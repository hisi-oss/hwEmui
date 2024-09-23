.class public Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "RepeatingRequestTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final TIMEOUT:J = 0xbb8L


# instance fields
.field private mFlag:I

.field private mReqType:I

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 3
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mFlag:I

    .line 25
    new-instance v0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask$1;-><init>(Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 67
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mReqType:I

    .line 68
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 69
    instance-of v0, p3, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;

    if-eqz v0, :cond_0

    .line 70
    move-object v0, p3

    check-cast v0, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->getFlags()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mFlag:I

    .line 71
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in RepeatingRequestTask get flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mReqType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 75
    invoke-static {v1, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    goto :goto_0

    .line 76
    :cond_1
    iget v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mReqType:I

    if-nez v0, :cond_2

    .line 77
    const/4 v0, 0x2

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 79
    :cond_2
    :goto_0
    const/4 v0, 0x6

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 80
    const/4 v0, 0x5

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;
    .param p1, "x1"    # I

    .line 17
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 5

    .line 85
    const-string v0, ""

    const-string v1, "start repeat request task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v0

    iget v1, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mReqType:I

    iget v2, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mFlag:I

    invoke-virtual {v0, v1, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->createPreviewRequest(II)I

    move-result v0

    .line 87
    .local v0, "previewRet":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    const-wide/16 v2, 0xbb8

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-virtual {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 89
    const/4 v1, -0x1

    return v1

    .line 90
    :cond_0
    if-nez v0, :cond_1

    .line 91
    const/4 v1, 0x0

    return v1

    .line 93
    :cond_1
    const/4 v1, 0x5

    return v1
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 6
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 34
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 59
    :pswitch_0
    return v3

    .line 36
    :pswitch_1
    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->endWithResult(I)V

    .line 37
    goto :goto_1

    .line 47
    :pswitch_2
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->endWithResult(I)V

    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v3

    long-to-int v0, v4

    .line 51
    .local v0, "result":I
    const/16 v4, 0x3ed

    if-ne v0, v4, :cond_1

    .line 52
    invoke-virtual {p0, v3}, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->endWithResult(I)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->endWithResult(I)V

    .line 57
    .end local v0    # "result":I
    :goto_0
    goto :goto_1

    .line 40
    :pswitch_3
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v2, v0, v3

    .line 41
    .local v2, "reqId":J
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setCancel()V

    .line 43
    return v1

    .line 61
    .end local v2    # "reqId":J
    :cond_2
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onStop()V
    .locals 2

    .line 99
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 100
    iget v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mReqType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 101
    invoke-static {v1, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    goto :goto_0

    .line 102
    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/task/RepeatingRequestTask;->mReqType:I

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 105
    :cond_1
    :goto_0
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 106
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 107
    return-void
.end method
