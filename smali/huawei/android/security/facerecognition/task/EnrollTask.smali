.class public Lhuawei/android/security/facerecognition/task/EnrollTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "EnrollTask.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAuthToken:[B

.field private mDoCancelCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mDoEnrollCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mFlags:I

.field private mPrepareCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

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
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lhuawei/android/security/facerecognition/task/EnrollTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/task/EnrollTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/EnrollRequest;)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/EnrollRequest;

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 29
    new-instance v0, Lhuawei/android/security/facerecognition/task/EnrollTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/EnrollTask$1;-><init>(Lhuawei/android/security/facerecognition/task/EnrollTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mPrepareCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 55
    new-instance v0, Lhuawei/android/security/facerecognition/task/EnrollTask$2;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/EnrollTask$2;-><init>(Lhuawei/android/security/facerecognition/task/EnrollTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mDoCancelCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 67
    new-instance v0, Lhuawei/android/security/facerecognition/task/EnrollTask$3;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/EnrollTask$3;-><init>(Lhuawei/android/security/facerecognition/task/EnrollTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mDoEnrollCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 91
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/EnrollRequest;->getAuthToken()[B

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mAuthToken:[B

    .line 92
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/EnrollRequest;->getFlags()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mFlags:I

    .line 93
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/EnrollRequest;->getSurfaces()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mSurfaces:Ljava/util/List;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/EnrollTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;

    .line 21
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mDoEnrollCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$100(Lhuawei/android/security/facerecognition/task/EnrollTask;)[B
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;

    .line 21
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mAuthToken:[B

    return-object v0
.end method

.method static synthetic access$200(Lhuawei/android/security/facerecognition/task/EnrollTask;)I
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;

    .line 21
    iget v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mFlags:I

    return v0
.end method

.method static synthetic access$300(Lhuawei/android/security/facerecognition/task/EnrollTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;
    .param p1, "x1"    # I

    .line 21
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/EnrollTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$400(Lhuawei/android/security/facerecognition/task/EnrollTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;
    .param p1, "x1"    # I

    .line 21
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/EnrollTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$500(Lhuawei/android/security/facerecognition/task/EnrollTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;
    .param p1, "x1"    # I

    .line 21
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/EnrollTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$600(Lhuawei/android/security/facerecognition/task/EnrollTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;

    .line 21
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mDoCancelCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$700(Lhuawei/android/security/facerecognition/task/EnrollTask;IIII)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/EnrollTask;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lhuawei/android/security/facerecognition/task/EnrollTask;->endEnroll(IIII)V

    return-void
.end method

.method private endEnroll(IIII)V
    .locals 5
    .param p1, "ret"    # I
    .param p2, "faceId"    # I
    .param p3, "userId"    # I
    .param p4, "errorCode"    # I

    .line 104
    const/4 v0, 0x1

    if-nez p4, :cond_0

    .line 105
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v1

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 106
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x6

    .line 105
    invoke-virtual {v1, v2, v0, v3, p2}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 109
    :cond_0
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v1

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 110
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 109
    invoke-virtual {v1, v2, v0, v0, p4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 112
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isActiveCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v1

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 114
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v1, v2, v0, v3, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 116
    :cond_1
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->close()Z

    .line 117
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/EnrollTask;->endWithResult(I)V

    .line 118
    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 4

    .line 97
    const-string v0, ""

    const-string v1, "start enroll task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mPrepareCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/task/EnrollTask;->mSurfaces:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;-><init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 100
    const/4 v0, -0x1

    return v0
.end method
