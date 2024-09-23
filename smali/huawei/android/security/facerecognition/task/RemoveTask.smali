.class public Lhuawei/android/security/facerecognition/task/RemoveTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "RemoveTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final TIMEOUT:J = 0xbb8L


# instance fields
.field private mFaceId:I

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/RemoveRequest;)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/RemoveRequest;

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 24
    new-instance v0, Lhuawei/android/security/facerecognition/task/RemoveTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/RemoveTask$1;-><init>(Lhuawei/android/security/facerecognition/task/RemoveTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/RemoveTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 33
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/RemoveTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 34
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/RemoveRequest;->getFaceId()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/RemoveTask;->mFaceId:I

    .line 35
    const/16 v0, 0xd

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 36
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/RemoveTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/RemoveTask;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/task/RemoveTask;->sendRemoveResult(I)V

    return-void
.end method

.method static synthetic access$100(Lhuawei/android/security/facerecognition/task/RemoveTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/RemoveTask;
    .param p1, "x1"    # I

    .line 17
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/RemoveTask;->endWithResult(I)V

    return-void
.end method

.method private sendRemoveResult(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .line 57
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/RemoveTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 59
    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 5

    .line 46
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    iget v1, p0, Lhuawei/android/security/facerecognition/task/RemoveTask;->mFaceId:I

    invoke-virtual {v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->remove(I)I

    move-result v0

    .line 47
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/RemoveTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    const-wide/16 v2, 0xbb8

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/RemoveTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-virtual {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 49
    const/4 v1, -0x1

    return v1

    .line 51
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lhuawei/android/security/facerecognition/task/RemoveTask;->sendRemoveResult(I)V

    .line 52
    const/4 v1, 0x5

    return v1
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 5
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 63
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v0, v2

    .line 64
    .local v0, "removeResult":I
    const-string v2, "***********"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v3, v2, :cond_0

    .line 66
    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/task/RemoveTask;->sendRemoveResult(I)V

    .line 67
    invoke-virtual {p0, v1}, Lhuawei/android/security/facerecognition/task/RemoveTask;->endWithResult(I)V

    .line 68
    const/4 v1, 0x1

    return v1

    .line 70
    :cond_0
    return v1
.end method

.method public onStop()V
    .locals 1

    .line 40
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/RemoveTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 41
    const/16 v0, 0xd

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 42
    return-void
.end method
