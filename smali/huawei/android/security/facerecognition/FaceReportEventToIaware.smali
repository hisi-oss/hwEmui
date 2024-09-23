.class public Lhuawei/android/security/facerecognition/FaceReportEventToIaware;
.super Ljava/lang/Object;
.source "FaceReportEventToIaware.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceReportEventToIaware"

.field private static final chipset:Ljava/lang/String;

.field private static volatile mIsRunning:Z

.field private static volatile mLastEventId:I

.field private static volatile mLastRuntime:J

.field private static mReportEventLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-string v0, "ro.hardware"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->chipset:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mIsRunning:Z

    .line 34
    const/4 v0, -0x1

    sput v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mLastEventId:I

    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mLastRuntime:J

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mReportEventLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 27
    sget-boolean v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 27
    sput-boolean p0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mReportEventLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 27
    invoke-static {p0}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->setEventToIawareRunning(I)V

    return-void
.end method

.method static synthetic access$302(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 27
    sput-wide p0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mLastRuntime:J

    return-wide p0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 27
    sput p0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mLastEventId:I

    return p0
.end method

.method public static reportEventToIaware(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventID"    # I

    .line 65
    sget-object v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->chipset:Ljava/lang/String;

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    sget-boolean v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "FaceReportEventToIaware"

    const-string v1, "Report is runnning, return."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 74
    :cond_1
    if-nez p0, :cond_2

    .line 75
    const-string v0, "FaceReportEventToIaware"

    const-string v1, "Context is null, return."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 79
    :cond_2
    new-instance v0, Lcom/huawei/hardware/face/FaceAuthenticationManager;

    invoke-direct {v0, p0}, Lcom/huawei/hardware/face/FaceAuthenticationManager;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "faceAuthenticationManager":Lcom/huawei/hardware/face/FaceAuthenticationManager;
    invoke-virtual {v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/huawei/hardware/face/FaceAuthenticationManager;->hasEnrolledFace()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 84
    :cond_3
    sget-object v1, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mReportEventLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-boolean v2, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mIsRunning:Z

    if-eqz v2, :cond_4

    .line 86
    const-string v2, "FaceReportEventToIaware"

    const-string v3, "Report is runnning, return."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v1

    return-void

    .line 90
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 92
    .local v2, "currentTime":J
    sget-wide v4, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mLastRuntime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    sget-wide v4, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mLastRuntime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    sget v4, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mLastEventId:I

    if-ne v4, p1, :cond_5

    .line 93
    const-string v4, "FaceReportEventToIaware"

    const-string v5, "Last one second run."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    monitor-exit v1

    return-void

    .line 97
    :cond_5
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lhuawei/android/security/facerecognition/FaceReportEventToIaware$1;

    invoke-direct {v5, p1, v2, v3}, Lhuawei/android/security/facerecognition/FaceReportEventToIaware$1;-><init>(IJ)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 117
    .end local v2    # "currentTime":J
    .end local v4    # "thread":Ljava/lang/Thread;
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 81
    :cond_6
    :goto_0
    return-void
.end method

.method private static setEventToIawareRunning(I)V
    .locals 6
    .param p0, "eventID"    # I

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lhuawei/android/security/facerecognition/FaceReportEventToIaware;->mIsRunning:Z

    .line 42
    const-string v0, "FaceReportEventToIaware"

    const-string v1, "Start time."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "hwsysresmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 44
    .local v0, "awareService":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 46
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 48
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.rms.IHwSysResManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 49
    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 50
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 56
    const-string v3, "FaceReportEventToIaware"

    const-string v4, "End time."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_1

    .line 54
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "FaceReportEventToIaware"

    const-string v5, "AwareService ontransact failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 58
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :goto_1
    goto :goto_3

    .line 54
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "reply":Landroid/os/Parcel;
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 55
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 56
    const-string v4, "FaceReportEventToIaware"

    const-string v5, "End time."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    .line 59
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_0
    const-string v1, "FaceReportEventToIaware"

    const-string v2, "AwareService not start."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_3
    return-void
.end method
