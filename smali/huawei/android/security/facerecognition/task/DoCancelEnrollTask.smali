.class public Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "DoCancelEnrollTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final TIMEOUT:J = 0xbb8L


# instance fields
.field private mRetErrorCode:I

.field private mRetFaceId:I

.field private mRetUserId:I

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 31
    new-instance v0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask$1;-><init>(Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 40
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 41
    const/4 v0, 0x7

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 42
    const/16 v0, 0x8

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 43
    const/16 v0, 0x9

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 44
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;
    .param p1, "x1"    # I

    .line 22
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 5

    .line 48
    const-string v0, ""

    const-string v1, "do cancel enroll task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->cancelEnrollment()I

    move-result v0

    .line 50
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 51
    const/4 v1, 0x0

    return v1

    .line 53
    :cond_0
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    const-wide/16 v2, 0xbb8

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-virtual {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 54
    const/4 v1, -0x1

    return v1
.end method

.method public getErrorCode()I
    .locals 1

    .line 93
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mRetErrorCode:I

    return v0
.end method

.method public getFaceId()I
    .locals 1

    .line 101
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mRetFaceId:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 97
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mRetUserId:I

    return v0
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 5
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 68
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 87
    return v1

    .line 84
    :pswitch_0
    invoke-virtual {p0, v1}, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->endWithResult(I)V

    .line 85
    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v0, v0, v1

    long-to-int v0, v0

    .line 80
    .local v0, "acquiredInfo":I
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v1

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 81
    invoke-virtual {v3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x3

    .line 80
    invoke-virtual {v1, v3, v2, v4, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 82
    goto :goto_0

    .line 70
    .end local v0    # "acquiredInfo":I
    :pswitch_2
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mRetErrorCode:I

    .line 71
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mRetErrorCode:I

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v0, v0, v2

    long-to-int v0, v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mRetFaceId:I

    .line 73
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    long-to-int v0, v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mRetUserId:I

    .line 75
    :cond_0
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 76
    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v1, v3

    iget v3, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mRetErrorCode:I

    .line 75
    invoke-virtual {v0, v1, v2, v2, v3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 77
    nop

    .line 89
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .line 60
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoCancelEnrollTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 61
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 62
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 63
    const/16 v0, 0x9

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 64
    return-void
.end method
