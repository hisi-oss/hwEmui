.class public Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "OpenCameraRetryTask.java"


# static fields
.field private static final RETRY_TIMES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OpenCameraRetry"


# instance fields
.field private mOpenCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mRetryWaitCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mTimeLeft:I


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mTimeLeft:I

    .line 21
    new-instance v0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$1;-><init>(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mRetryWaitCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 33
    new-instance v0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask$2;-><init>(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mOpenCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    .line 14
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mOpenCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$100(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;
    .param p1, "x1"    # I

    .line 14
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$200(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;
    .param p1, "x1"    # I

    .line 14
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->endWithResult(I)V

    return-void
.end method

.method static synthetic access$306(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)I
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    .line 14
    iget v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mTimeLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mTimeLeft:I

    return v0
.end method

.method static synthetic access$400(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;

    .line 14
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mRetryWaitCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$500(Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;
    .param p1, "x1"    # I

    .line 14
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->endWithResult(I)V

    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 3

    .line 57
    const-string v0, ""

    const-string v1, "start OpenCameraRetryTask"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lhuawei/android/security/facerecognition/task/RetryWaitTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mRetryWaitCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/OpenCameraRetryTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-direct {v0, p0, v1, v2}, Lhuawei/android/security/facerecognition/task/RetryWaitTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 60
    const/4 v0, -0x1

    return v0
.end method
