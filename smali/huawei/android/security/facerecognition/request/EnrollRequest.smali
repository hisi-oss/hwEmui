.class public Lhuawei/android/security/facerecognition/request/EnrollRequest;
.super Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
.source "EnrollRequest.java"


# instance fields
.field private mAuthToken:[B

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
.method public constructor <init>(ILhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;[BILjava/util/List;)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "mgr"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
    .param p3, "authToken"    # [B
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;",
            "[BI",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p5, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;-><init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;)V

    .line 25
    if-eqz p3, :cond_0

    .line 26
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lhuawei/android/security/facerecognition/request/EnrollRequest;->mAuthToken:[B

    .line 28
    :cond_0
    iput p4, p0, Lhuawei/android/security/facerecognition/request/EnrollRequest;->mFlags:I

    .line 29
    iput-object p5, p0, Lhuawei/android/security/facerecognition/request/EnrollRequest;->mSurfaces:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getAuthToken()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lhuawei/android/security/facerecognition/request/EnrollRequest;->mAuthToken:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 50
    iget v0, p0, Lhuawei/android/security/facerecognition/request/EnrollRequest;->mFlags:I

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

    .line 54
    iget-object v0, p0, Lhuawei/android/security/facerecognition/request/EnrollRequest;->mSurfaces:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onReqStart()Z
    .locals 3

    .line 34
    const-string v0, ""

    const-string v1, "start enroll request"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lhuawei/android/security/facerecognition/task/EnrollTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/request/EnrollRequest;->mRetCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lhuawei/android/security/facerecognition/task/EnrollTask;-><init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/EnrollRequest;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public sendCancelOK()V
    .locals 5

    .line 59
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v0

    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/EnrollRequest;->getReqId()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 61
    return-void
.end method
