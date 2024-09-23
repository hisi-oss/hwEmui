.class public abstract Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
.super Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
.source "FaceRecognizeRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TYPESTR:[Ljava/lang/String;

.field public static final TYPE_AUTH:I = 0x1

.field public static final TYPE_ENROLL:I = 0x0

.field public static final TYPE_REMOVE:I = 0x2


# instance fields
.field private mActiveCanceled:Z

.field private mCameraCanceled:Z

.field private mCanceled:Z

.field private mMgr:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

.field private mReqId:J

.field protected mRetCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    const-class v0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->TAG:Ljava/lang/String;

    .line 14
    const-string v0, "ENROLL"

    const-string v1, "AUTH"

    const-string v2, "REMOVE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->TYPESTR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;)V
    .locals 1
    .param p1, "reqId"    # J
    .param p3, "mgr"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;)V

    .line 22
    new-instance v0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest$1;-><init>(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mRetCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 35
    iput-wide p1, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mReqId:J

    .line 36
    iput-object p3, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mMgr:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mCanceled:Z

    .line 38
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 7
    iget-object v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mMgr:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doAction()I
    .locals 3

    .line 41
    sget-object v0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mMgr:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    invoke-virtual {v0, p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->onNewRequest(Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getReqId()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mReqId:J

    return-wide v0
.end method

.method public abstract getType()I
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    .line 58
    sget-object v0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->TYPESTR:[Ljava/lang/String;

    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isActiveCanceled()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mActiveCanceled:Z

    return v0
.end method

.method public isCameraCanceled()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mCameraCanceled:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mCanceled:Z

    return v0
.end method

.method public abstract onReqStart()Z
.end method

.method public onStop()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isActiveCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->sendCancelOK()V

    .line 50
    :cond_0
    return-void
.end method

.method public abstract sendCancelOK()V
.end method

.method public setActiveCanceled()V
    .locals 1

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mActiveCanceled:Z

    .line 84
    return-void
.end method

.method public setCameraCancel()V
    .locals 1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mCanceled:Z

    .line 71
    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mCameraCanceled:Z

    .line 72
    return-void
.end method

.method public setCancel()V
    .locals 1

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mCanceled:Z

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request(id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->mReqId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->TYPESTR:[Ljava/lang/String;

    invoke-virtual {p0}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
