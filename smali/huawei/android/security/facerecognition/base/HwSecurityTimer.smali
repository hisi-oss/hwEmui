.class public Lhuawei/android/security/facerecognition/base/HwSecurityTimer;
.super Ljava/util/Timer;
.source "HwSecurityTimer.java"


# static fields
.field private static gTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->gTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 7
    return-void
.end method

.method public static destroyInstance()V
    .locals 2

    .line 19
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->gTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x0

    sput-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->gTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    return-void

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lhuawei/android/security/facerecognition/base/HwSecurityTimer;
    .locals 2

    .line 10
    sget-object v0, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->gTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

    invoke-direct {v1}, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;-><init>()V

    sput-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->gTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

    .line 14
    :cond_0
    sget-object v1, Lhuawei/android/security/facerecognition/base/HwSecurityTimer;->gTimer:Lhuawei/android/security/facerecognition/base/HwSecurityTimer;

    monitor-exit v0

    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
