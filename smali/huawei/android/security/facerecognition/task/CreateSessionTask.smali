.class public Lhuawei/android/security/facerecognition/task/CreateSessionTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "CreateSessionTask.java"

# interfaces
.implements Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;


# static fields
.field private static final TIMEOUT:J = 0xbb8L


# instance fields
.field private mReqType:I

.field private mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

.field private mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;Ljava/util/List;)V
    .locals 2
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;",
            "Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;",
            "Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p4, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 27
    new-instance v0, Lhuawei/android/security/facerecognition/task/CreateSessionTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/CreateSessionTask$1;-><init>(Lhuawei/android/security/facerecognition/task/CreateSessionTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 36
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    .line 37
    iput-object p4, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mSurfaces:Ljava/util/List;

    .line 38
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mReqType:I

    .line 39
    iget v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mReqType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 40
    invoke-static {v1, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mReqType:I

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x2

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 44
    :cond_1
    :goto_0
    const/4 v0, 0x6

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 45
    const/4 v0, 0x4

    invoke-static {v0, p0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticRegisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$EventListener;)Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/CreateSessionTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/CreateSessionTask;
    .param p1, "x1"    # I

    .line 19
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 5

    .line 82
    const-string v0, ""

    const-string v1, "start create session task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v0

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mSurfaces:Ljava/util/List;

    invoke-virtual {v0, v1}, Lhuawei/android/security/facerecognition/FaceCamera;->createPreviewSession(Ljava/util/List;)I

    move-result v0

    .line 85
    .local v0, "ret":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    const-wide/16 v2, 0xbb8

    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mTimeoutProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-virtual {v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z

    .line 87
    const/4 v1, -0x1

    return v1

    .line 88
    :cond_0
    if-nez v0, :cond_1

    .line 89
    const/4 v1, 0x0

    return v1

    .line 91
    :cond_1
    const/4 v1, 0x5

    return v1
.end method

.method public onEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)Z
    .locals 6
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 50
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 75
    return v4

    .line 56
    :pswitch_0
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v0, v0, v4

    .line 57
    .local v0, "reqId":J
    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    .line 58
    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->setCancel()V

    .line 59
    return v3

    .line 52
    .end local v0    # "reqId":J
    :cond_0
    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->endWithResult(I)V

    .line 53
    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->endWithResult(I)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;->getArgs()[J

    move-result-object v0

    aget-wide v0, v0, v4

    long-to-int v0, v0

    .line 67
    .local v0, "result":I
    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_3

    .line 68
    invoke-virtual {p0, v4}, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->endWithResult(I)V

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0, v2}, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->endWithResult(I)V

    .line 73
    .end local v0    # "result":I
    :goto_0
    nop

    .line 77
    :cond_4
    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 2

    .line 97
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->cancel()Z

    .line 98
    iget v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mReqType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 99
    invoke-static {v1, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/task/CreateSessionTask;->mReqType:I

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 103
    :cond_1
    :goto_0
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 104
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->staticUnregisterEvent(ILhuawei/android/security/facerecognition/base/HwSecurityTaskBase;)Z

    .line 105
    return-void
.end method
