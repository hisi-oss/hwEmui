.class public Lhuawei/android/security/facerecognition/task/OpenCameraTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "OpenCameraTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenCamera"

.field private static final TIMEOUT:J = 0xbb8L


# instance fields
.field private mCanRetry:Z

.field private mReqType:I

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 2
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mCanRetry:Z

    .line 24
    new-instance v1, Lhuawei/android/security/facerecognition/task/OpenCameraTask$1;

    invoke-direct {v1, p0}, Lhuawei/android/security/facerecognition/task/OpenCameraTask$1;-><init>(Lhuawei/android/security/facerecognition/task/OpenCameraTask;)V

    iput-object v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 34
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v1

    iput v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mReqType:I

    .line 35
    new-instance v1, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 36
    iget v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mReqType:I

    if-ne v0, v1, :cond_0

    .line 37
    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    goto :goto_0

    .line 38
    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mReqType:I

    if-nez v0, :cond_1

    .line 39
    const/4 v0, 0x2

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 42
    :cond_1
    :goto_0
    const/4 v0, 0x3

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 43
    return-void
.end method

.method static synthetic access$002(Lhuawei/android/security/facerecognition/task/OpenCameraTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/OpenCameraTask;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mCanRetry:Z

    return p1
.end method

.method static synthetic access$100(Lhuawei/android/security/facerecognition/task/OpenCameraTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/OpenCameraTask;
    .param p1, "x1"    # I

    .line 15
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mCanRetry:Z

    return v0
.end method

.method public doAction()I
    .locals 5

    .line 76
    const-string v0, ""

    const-string v1, "start open camera task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v0

    iget v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mReqType:I

    invoke-virtual {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->openCamera(I)I

    move-result v0

    .line 78
    .local v0, "openRet":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    const-wide/16 v2, 0xbb8

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-virtual {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 80
    const/4 v1, -0x1

    return v1

    .line 81
    :cond_0
    if-nez v0, :cond_1

    .line 82
    const/4 v1, 0x0

    return v1

    .line 84
    :cond_1
    const/4 v1, 0x5

    return v1
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 6
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 47
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 70
    return v2

    .line 57
    :pswitch_0
    const-string v0, "OpenCamera"

    const-string v3, "receive open camera event"

    invoke-static {v0, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->endWithResult(I)V

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v3, v0, v2

    long-to-int v0, v3

    .line 62
    .local v0, "result":I
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_1

    .line 63
    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->endWithResult(I)V

    goto :goto_0

    .line 65
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->endWithResult(I)V

    .line 68
    .end local v0    # "result":I
    :goto_0
    goto :goto_1

    .line 50
    :pswitch_1
    const-string v0, "OpenCamera"

    const-string v3, "cancel event"

    invoke-static {v0, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v2, v0, v2

    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setCancel()V

    .line 53
    return v1

    .line 72
    :cond_2
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 2

    .line 90
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 91
    iget v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mReqType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 92
    invoke-static {v1, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;->mReqType:I

    if-nez v0, :cond_1

    .line 94
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 98
    return-void
.end method
