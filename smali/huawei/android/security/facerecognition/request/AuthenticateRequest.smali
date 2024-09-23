.class public Lhuawei/android/security/facerecognition/request/AuthenticateRequest;
.super Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
.source "AuthenticateRequest.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;ILjava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "opId"    # J
    .param p3, "mgr"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
    .param p4, "flags"    # I
    .param p6, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 24
    .local p5, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;-><init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;)V

    .line 25
    iput-object p5, p0, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->mSurfaces:Ljava/util/List;

    .line 26
    iput p4, p0, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->mFlags:I

    .line 27
    iput-object p6, p0, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .line 48
    iget v0, p0, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->mFlags:I

    return v0
.end method

.method public getSurfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->mSurfaces:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public onReqStart()Z
    .locals 9

    .line 37
    const-string v0, ""

    const-string v1, "start auth request"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    iget-object v4, p0, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->mRetCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    iget-object v6, p0, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->getReqId()J

    move-result-wide v7

    const/4 v3, 0x0

    move-object v2, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;-><init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/AuthenticateRequest;Landroid/content/Context;J)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public sendCancelOK()V
    .locals 4

    .line 53
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->getReqId()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 55
    return-void
.end method
