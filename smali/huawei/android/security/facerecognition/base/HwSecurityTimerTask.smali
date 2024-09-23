.class public Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;
.super Ljava/util/TimerTask;
.source "HwSecurityTimerTask.java"


# instance fields
.field private mToProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 25
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimeroutTask;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->mToProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    invoke-direct {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTimeroutTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 28
    return-void
.end method

.method public setTimeout(JLhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;)Z
    .locals 2
    .param p1, "delay"    # J
    .param p3, "toProc"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 12
    iput-object p3, p0, Lhuawei/android/security/facerecognition/base/HwSecurityTimerTask;->mToProc:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$TimerOutProc;

    .line 13
    invoke-static {}, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

    move-result-object v0

    .line 14
    .local v0, "timer":Lhuawei/android/security/facerecognition/base/HwSecurityTimer;
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p0, p1, p2}, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 16
    const/4 v1, 0x1

    return v1

    .line 19
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
