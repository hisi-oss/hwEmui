.class public Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "DoCancelAuthTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final TIMEOUT:J = 0xbb8L


# instance fields
.field private mRetErrorCode:I

.field private mRetUserId:I

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 32
    new-instance v0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask$1;-><init>(Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 42
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 43
    const/16 v0, 0xa

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 44
    const/16 v0, 0xb

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 45
    const/16 v0, 0xc

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;
    .param p1, "x1"    # I

    .line 23
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 5

    .line 50
    const-string v0, ""

    const-string v1, "do cancel auth task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->cancelAuthentication()I

    move-result v0

    .line 52
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x0

    return v1

    .line 55
    :cond_0
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    const-wide/16 v2, 0xbb8

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-virtual {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 56
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v1

    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/FaceCamera;->close()Z

    .line 57
    const/4 v1, -0x1

    return v1
.end method

.method public getErrorCode()I
    .locals 1

    .line 99
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mRetErrorCode:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 103
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mRetUserId:I

    return v0
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 6
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 71
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 94
    return v2

    .line 91
    :pswitch_0
    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->endWithResult(I)V

    .line 92
    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v2

    long-to-int v0, v4

    .line 87
    .local v0, "acquiredInfo":I
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v2

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 88
    invoke-virtual {v4}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x3

    .line 87
    invoke-virtual {v2, v4, v1, v5, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 89
    goto :goto_0

    .line 73
    .end local v0    # "acquiredInfo":I
    :pswitch_2
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v2

    long-to-int v0, v4

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mRetErrorCode:I

    .line 74
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mRetErrorCode:I

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v3

    long-to-int v0, v4

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mRetUserId:I

    .line 77
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isCameraCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 79
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v4

    long-to-int v2, v4

    .line 78
    invoke-virtual {v0, v2, v1, v3, v3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 82
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v4

    long-to-int v2, v4

    iget v4, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mRetErrorCode:I

    .line 81
    invoke-virtual {v0, v2, v1, v3, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 84
    nop

    .line 96
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .line 63
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelAuthTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 64
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 65
    const/16 v0, 0xb

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 66
    const/16 v0, 0xc

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 67
    return-void
.end method
