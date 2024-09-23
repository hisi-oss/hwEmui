.class public Lhuawei/android/security/facerecognition/task/DoEnrollTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "DoEnrollTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final SECURE_CAMERA:I = 0x1

.field private static final SUPPORT_FACE_MODE:I

.field private static final TIMEOUT:J


# instance fields
.field private mAuthToken:[B

.field private mFlags:I

.field private mRetErrorCode:I

.field private mRetFaceId:I

.field private mRetUserId:I

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "ro.config.support_face_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->SUPPORT_FACE_MODE:I

    .line 25
    sget v0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->SUPPORT_FACE_MODE:I

    if-le v0, v1, :cond_0

    const-wide/32 v0, 0x2e630

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x4e20

    :goto_0
    sput-wide v0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;[BI)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
    .param p4, "authToken"    # [B
    .param p5, "flags"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 34
    new-instance v0, Lhuawei/android/security/facerecognition/task/DoEnrollTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/DoEnrollTask$1;-><init>(Lhuawei/android/security/facerecognition/task/DoEnrollTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 44
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mAuthToken:[B

    .line 45
    iput p5, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mFlags:I

    .line 46
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 47
    const/4 v0, 0x6

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 48
    const/4 v0, 0x2

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 49
    const/4 v0, 0x7

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 50
    const/16 v0, 0x8

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/DoEnrollTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/DoEnrollTask;
    .param p1, "x1"    # I

    .line 21
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 5

    .line 55
    const-string v0, ""

    const-string v1, "do enroll task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mAuthToken:[B

    iget v2, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mFlags:I

    invoke-virtual {v0, v1, v2}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->enroll([BI)I

    move-result v0

    .line 58
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 59
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    sget-wide v2, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->TIMEOUT:J

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-virtual {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 60
    const/4 v1, -0x1

    return v1

    .line 62
    :cond_0
    const/4 v1, 0x5

    return v1
.end method

.method public getErrorCode()I
    .locals 1

    .line 113
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mRetErrorCode:I

    return v0
.end method

.method public getFaceId()I
    .locals 1

    .line 121
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mRetFaceId:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 117
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mRetUserId:I

    return v0
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 8
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 77
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 107
    return v3

    .line 102
    :pswitch_0
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v2, v0, v3

    long-to-int v0, v2

    .line 103
    .local v0, "acquiredInfo":I
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v2

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 104
    invoke-virtual {v3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, 0x3

    .line 103
    invoke-virtual {v2, v3, v1, v4, v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 105
    goto :goto_0

    .line 91
    .end local v0    # "acquiredInfo":I
    :pswitch_1
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v3

    long-to-int v0, v4

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mRetErrorCode:I

    .line 92
    const-string v0, "enroll result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mRetErrorCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mRetErrorCode:I

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v1

    long-to-int v0, v4

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mRetFaceId:I

    .line 95
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v2

    long-to-int v0, v4

    iput v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mRetUserId:I

    .line 96
    invoke-virtual {p0, v3}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->endWithResult(I)V

    goto :goto_0

    .line 98
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->endWithResult(I)V

    .line 100
    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setCancel()V

    .line 88
    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->endWithResult(I)V

    .line 89
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v4, v0, v3

    .line 80
    .local v4, "reqId":J
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 81
    return v3

    .line 83
    :cond_2
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setCancel()V

    .line 84
    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->endWithResult(I)V

    .line 85
    nop

    .line 109
    .end local v4    # "reqId":J
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .line 68
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/DoEnrollTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 69
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 70
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 71
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 72
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 73
    return-void
.end method
