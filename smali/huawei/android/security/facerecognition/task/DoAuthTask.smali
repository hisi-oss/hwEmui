.class public Lhuawei/android/security/facerecognition/task/DoAuthTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "DoAuthTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final TIMEOUT:J = 0x2710L


# instance fields
.field private mFlags:I

.field private mOpId:J

.field private mRetErrorCode:I

.field private mRetUserId:I

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;IJ)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
    .param p4, "flags"    # I
    .param p5, "opId"    # J

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 30
    new-instance v0, Lhuawei/android/security/facerecognition/task/DoAuthTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/DoAuthTask$1;-><init>(Lhuawei/android/security/facerecognition/task/DoAuthTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 79
    iput p4, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mFlags:I

    .line 80
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 81
    iput-wide p5, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mOpId:J

    .line 82
    const/4 v0, 0x6

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 83
    const/4 v0, 0x1

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 84
    const/16 v0, 0xa

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 85
    const/16 v0, 0xb

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 86
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/DoAuthTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/DoAuthTask;
    .param p1, "x1"    # I

    .line 20
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/DoAuthTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 5

    .line 90
    const-string v0, ""

    const-string v1, "do auth task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    iget-wide v1, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mOpId:J

    iget v3, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mFlags:I

    invoke-virtual {v0, v1, v2, v3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->authenticate(JI)I

    move-result v0

    .line 92
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 93
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    const-wide/16 v2, 0x2710

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-virtual {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 94
    const/4 v1, -0x1

    return v1

    .line 96
    :cond_0
    const/4 v1, 0x5

    return v1
.end method

.method public getErrorCode()I
    .locals 1

    .line 110
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mRetErrorCode:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 114
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mRetUserId:I

    return v0
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 8
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 39
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 71
    return v3

    .line 65
    :pswitch_0
    const-string v0, "do auth"

    const-string v4, "auth acquired"

    invoke-static {v0, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v3, v0, v3

    long-to-int v0, v3

    .line 67
    .local v0, "acquiredInfo":I
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v3

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 68
    invoke-virtual {v4}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x3

    .line 67
    invoke-virtual {v3, v4, v1, v5, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 69
    goto :goto_0

    .line 55
    .end local v0    # "acquiredInfo":I
    :pswitch_1
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v0, v0, v3

    long-to-int v0, v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mRetErrorCode:I

    .line 56
    const-string v0, "do auth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth result : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mRetErrorCode:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mRetErrorCode:I

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v0, v0, v2

    long-to-int v0, v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mRetUserId:I

    .line 59
    invoke-virtual {p0, v3}, Lhuawei/android/security/facerecognition/task/DoAuthTask;->endWithResult(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v4}, Lhuawei/android/security/facerecognition/task/DoAuthTask;->endWithResult(I)V

    .line 63
    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "do auth"

    const-string v3, "interrupt auth"

    invoke-static {v0, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setCameraCancel()V

    .line 52
    invoke-virtual {p0, v1}, Lhuawei/android/security/facerecognition/task/DoAuthTask;->endWithResult(I)V

    .line 53
    goto :goto_0

    .line 41
    :cond_2
    const-string v0, "do auth"

    const-string v4, "cancel auth"

    invoke-static {v0, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v3

    .line 43
    .local v4, "reqId":J
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 44
    return v3

    .line 46
    :cond_3
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setCancel()V

    .line 47
    invoke-virtual {p0, v1}, Lhuawei/android/security/facerecognition/task/DoAuthTask;->endWithResult(I)V

    .line 48
    nop

    .line 73
    .end local v4    # "reqId":J
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .line 101
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoAuthTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 102
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 103
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 104
    const/16 v0, 0xa

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 105
    const/16 v0, 0xb

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 107
    return-void
.end method
