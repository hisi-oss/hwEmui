.class public Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;
.super Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
.source "HwSecurityEventTask.java"


# instance fields
.field private mEvent:Lhuawei/android/security/facerecognition/FaceRecognizeEvent;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V
    .locals 1
    .param p1, "ev"    # Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;)V

    .line 10
    iput-object p1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;->mEvent:Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    .line 11
    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 2

    .line 14
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;

    move-result-object v0

    .line 15
    .local v0, "msgCenter":Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;
    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;->mEvent:Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    invoke-virtual {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityMsgCenter;->processEvent(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    .line 18
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
