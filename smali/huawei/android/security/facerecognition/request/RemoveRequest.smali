.class public Lhuawei/android/security/facerecognition/request/RemoveRequest;
.super Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;
.source "RemoveRequest.java"


# instance fields
.field private mFaceId:I


# direct methods
.method public constructor <init>(ILhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;I)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "mgr"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
    .param p3, "faceId"    # I

    .line 13
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;-><init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;)V

    .line 14
    iput p3, p0, Lhuawei/android/security/facerecognition/request/RemoveRequest;->mFaceId:I

    .line 15
    return-void
.end method


# virtual methods
.method public getFaceId()I
    .locals 1

    .line 34
    iget v0, p0, Lhuawei/android/security/facerecognition/request/RemoveRequest;->mFaceId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 27
    const/4 v0, 0x2

    return v0
.end method

.method public onReqStart()Z
    .locals 2

    .line 19
    const-string v0, ""

    const-string v1, "start remove request"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lhuawei/android/security/facerecognition/task/RemoveTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/request/RemoveRequest;->mRetCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    invoke-direct {v0, p0, v1, p0}, Lhuawei/android/security/facerecognition/task/RemoveTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/RemoveRequest;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public sendCancelOK()V
    .locals 0

    .line 31
    return-void
.end method
