.class public Lhuawei/android/security/facerecognition/task/PrepareCameraTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "PrepareCameraTask.java"


# instance fields
.field private mCreateSessionCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mOpenCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mOpenRetryCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mRepeatingRequestCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

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
.method public constructor <init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;Ljava/util/List;)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "taskRequest"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;",
            "Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;",
            "Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p4, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 16
    new-instance v0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$1;-><init>(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mOpenCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 40
    new-instance v0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$2;-><init>(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mOpenRetryCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 53
    new-instance v0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$3;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$3;-><init>(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mCreateSessionCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 67
    new-instance v0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$4;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask$4;-><init>(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mRepeatingRequestCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 79
    iput-object p4, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mSurfaces:Ljava/util/List;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 12
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mCreateSessionCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$100(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 12
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mSurfaces:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;
    .param p1, "x1"    # I

    .line 12
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$300(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 12
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mOpenRetryCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$400(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;
    .param p1, "x1"    # I

    .line 12
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$500(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;
    .param p1, "x1"    # I

    .line 12
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$600(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    .line 12
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mRepeatingRequestCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$700(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;
    .param p1, "x1"    # I

    .line 12
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$800(Lhuawei/android/security/facerecognition/task/PrepareCameraTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/PrepareCameraTask;
    .param p1, "x1"    # I

    .line 12
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 3

    .line 83
    const-string v0, ""

    const-string v1, "start prepare camera task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lhuawei/android/security/facerecognition/task/OpenCameraTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mOpenCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {v0, p0, v1, v2}, Lhuawei/android/security/facerecognition/task/OpenCameraTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 86
    const/4 v0, -0x1

    return v0
.end method
