.class public Lhuawei/android/security/facerecognition/base/HwSecurityTimeroutTask;
.super Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;
.source "HwSecurityTimeroutTask.java"


# instance fields
.field private mToProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# direct methods
.method public constructor <init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)V
    .locals 1
    .param p1, "toProc"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;)V

    .line 9
    iput-object p1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTimeroutTask;->mToProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 10
    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 1

    .line 14
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTimeroutTask;->mToProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTimeroutTask;->mToProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-interface {v0}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;->onTimerOut()V

    .line 17
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
