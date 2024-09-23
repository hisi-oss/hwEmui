.class public abstract Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.super Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
.source "FaceRecognizeTask.java"


# instance fields
.field protected mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V
    .locals 0
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 11
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;)V

    .line 12
    iput-object p3, p0, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 13
    return-void
.end method
