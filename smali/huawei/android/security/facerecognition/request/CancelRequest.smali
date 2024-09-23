.class public Lhuawei/android/security/facerecognition/request/CancelRequest;
.super Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
.source "CancelRequest.java"


# static fields
.field public static final CANCEL_AUTH:I = 0x2

.field public static final CANCEL_ENROLL:I = 0x1


# instance fields
.field private mCancelType:I

.field private mMgr:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

.field private mReqId:J


# direct methods
.method public constructor <init>(JLhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;I)V
    .locals 1
    .param p1, "reqId"    # J
    .param p3, "mgr"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
    .param p4, "cancelType"    # I

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;)V

    .line 24
    iput-wide p1, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mReqId:J

    .line 25
    iput-object p3, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mMgr:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    .line 26
    iput p4, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mCancelType:I

    .line 27
    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 7

    .line 31
    const-string v0, "********"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start cancel request with ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mReqId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mMgr:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;

    iget-wide v1, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mReqId:J

    iget v3, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mCancelType:I

    invoke-virtual {v0, v1, v2, v3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->onCancelReq(JI)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 33
    iget v0, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mCancelType:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    .line 34
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    new-array v4, v2, [J

    iget-wide v5, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mReqId:J

    aput-wide v5, v4, v1

    invoke-direct {v0, v2, v4}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 35
    .local v0, "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    new-instance v2, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    invoke-direct {v2, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 37
    .end local v0    # "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    goto :goto_0

    :cond_0
    iget v0, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mCancelType:I

    if-ne v2, v0, :cond_1

    .line 38
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    new-array v2, v2, [J

    iget-wide v4, p0, Lhuawei/android/security/facerecognition/request/CancelRequest;->mReqId:J

    aput-wide v4, v2, v1

    invoke-direct {v0, v3, v2}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    .line 39
    .restart local v0    # "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    new-instance v2, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    invoke-direct {v2, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 43
    .end local v0    # "event":Lhuawei/android/security/facerecognition/FaceRecognizeEvent;
    :cond_1
    :goto_0
    return v1
.end method
