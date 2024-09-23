.class public Lhuawei/android/security/facerecognition/task/AuthenticateTask;
.super Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
.source "AuthenticateTask.java"


# static fields
.field private static final BD_REPORT_EVENT_ID_TEMP:I = 0x1f9

.field private static final DISABLE_BOOST:[I

.field private static final ENABLE_BOOST:[I

.field private static final INVALID_FACE_ID:I = -0x1

.field private static final LOWTEMPERATURE_EVENT:I = 0x3001

.field public static final SYSTEM_UI_PKG:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String;

.field private static final UNIPERF_ID:I = 0x3

.field private static final UNIPERF_TAG:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoAuthCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mDoCancelCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mFlags:I

.field private mIsLowTemperature:Z

.field private mOpId:J

.field private mPrepareCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

.field private mReportTempCap:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const-class v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x39

    aput v3, v1, v2

    sput-object v1, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->UNIPERF_TAG:[I

    .line 40
    new-array v1, v0, [I

    const/4 v3, 0x4

    aput v3, v1, v2

    sput-object v1, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->DISABLE_BOOST:[I

    .line 41
    new-array v0, v0, [I

    aput v2, v0, v2

    sput-object v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->ENABLE_BOOST:[I

    return-void
.end method

.method public constructor <init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/AuthenticateRequest;Landroid/content/Context;J)V
    .locals 1
    .param p1, "parent"    # Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;
    .param p2, "callback"    # Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .param p3, "request"    # Lhuawei/android/security/facerecognition/request/AuthenticateRequest;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "opId"    # J

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;-><init>(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;)V

    .line 52
    new-instance v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/AuthenticateTask$1;-><init>(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mPrepareCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 81
    new-instance v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/AuthenticateTask$2;-><init>(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mDoAuthCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 102
    new-instance v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask$3;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/task/AuthenticateTask$3;-><init>(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mDoCancelCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    .line 115
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->getFlags()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mFlags:I

    .line 116
    invoke-virtual {p3}, Lhuawei/android/security/facerecognition/request/AuthenticateRequest;->getSurfaces()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mSurfaces:Ljava/util/List;

    .line 117
    iput-object p4, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mContext:Landroid/content/Context;

    .line 118
    iput-wide p5, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mOpId:J

    .line 119
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    .line 32
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mDoAuthCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$100(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)I
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    .line 32
    iget v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mFlags:I

    return v0
.end method

.method static synthetic access$200(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)J
    .locals 2
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    .line 32
    iget-wide v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mOpId:J

    return-wide v0
.end method

.method static synthetic access$300(Lhuawei/android/security/facerecognition/task/AuthenticateTask;)Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/AuthenticateTask;

    .line 32
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mDoCancelCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    return-object v0
.end method

.method static synthetic access$400(Lhuawei/android/security/facerecognition/task/AuthenticateTask;III)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/task/AuthenticateTask;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->endAuth(III)V

    return-void
.end method

.method private endAuth(III)V
    .locals 4
    .param p1, "ret"    # I
    .param p2, "userId"    # I
    .param p3, "errorCode"    # I

    .line 167
    const-string v0, ">>>>>>>>>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x2

    if-nez p3, :cond_0

    .line 169
    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 170
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v1

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 171
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x6

    .line 170
    invoke-virtual {v1, v2, v0, v3, p2}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 175
    :cond_0
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v1

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 176
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    .line 175
    invoke-virtual {v1, v2, v0, v3, p3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 178
    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    invoke-virtual {v1}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->isActiveCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v1

    iget-object v2, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 180
    invoke-virtual {v2}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 179
    invoke-virtual {v1, v2, v0, v0, p3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->endWithResult(I)V

    .line 183
    return-void
.end method


# virtual methods
.method public doAction()I
    .locals 10

    .line 123
    const-string v0, ""

    const-string v1, "start auth task"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->getBatteryTemperature()D

    move-result-wide v0

    .line 125
    .local v0, "temp":D
    invoke-static {}, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->getBatteryCapacity()D

    move-result-wide v2

    .line 126
    .local v2, "cap":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"temperature\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "\", \"capacity\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "\", \"nano_time\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mReportTempCap:Ljava/lang/String;

    .line 128
    iget-object v4, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mReportTempCap:Ljava/lang/String;

    const/16 v6, 0x1f9

    invoke-static {v4, v6, v5}, Landroid/util/Flog;->bdReport(Landroid/content/Context;ILjava/lang/String;)Z

    .line 129
    sget-object v4, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->TAG:Ljava/lang/String;

    iget-object v5, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mReportTempCap:Ljava/lang/String;

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v4, 0x0

    iput-boolean v4, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mIsLowTemperature:Z

    .line 131
    invoke-static {v0, v1, v2, v3}, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->reachDisabledTempCap(DD)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 132
    const-string v4, "battery"

    const-string v5, "result : 11"

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    move-result-object v4

    iget-object v5, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    .line 134
    invoke-virtual {v5}, Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;->getReqId()J

    move-result-wide v7

    long-to-int v5, v7

    const/4 v7, 0x2

    const/16 v8, 0xb

    .line 133
    invoke-virtual {v4, v5, v7, v6, v8}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;->onCallbackEvent(IIII)V

    .line 135
    const/4 v4, 0x5

    return v4

    .line 137
    :cond_0
    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->isLowTemperature(D)Z

    move-result v5

    iput-boolean v5, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mIsLowTemperature:Z

    .line 138
    iget-boolean v5, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mIsLowTemperature:Z

    if-eqz v5, :cond_1

    .line 139
    sget-object v5, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->TAG:Ljava/lang/String;

    const-string v7, "low temperature"

    invoke-static {v5, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v5, "com.android.systemui"

    iget-object v7, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    sget-object v5, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->TAG:Ljava/lang/String;

    const-string v7, "is keygurad, start restrict frequency"

    invoke-static {v5, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v5

    const/4 v7, 0x3

    sget-object v8, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->UNIPERF_TAG:[I

    sget-object v9, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->DISABLE_BOOST:[I

    invoke-virtual {v5, v7, v8, v9}, Landroid/iawareperf/UniPerf;->uniPerfSetConfig(I[I[I)I

    .line 143
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v5

    const/16 v7, 0x3001

    const-string v8, ""

    new-array v9, v6, [I

    aput v4, v9, v4

    invoke-virtual {v5, v7, v8, v9}, Landroid/iawareperf/UniPerf;->uniPerfEvent(ILjava/lang/String;[I)I

    .line 146
    :cond_1
    new-instance v4, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;

    iget-object v5, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mPrepareCameraCallback:Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;

    iget-object v7, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mTaskRequest:Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;

    iget-object v8, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mSurfaces:Ljava/util/List;

    invoke-direct {v4, p0, v5, v7, v8}, Lhuawei/android/security/facerecognition/task/PrepareCameraTask;-><init>(Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase$RetCallback;Lhuawei/android/security/facerecognition/request/FaceRecognizeRequest;Ljava/util/List;)V

    invoke-static {v4, v6}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 147
    const/4 v4, -0x1

    return v4
.end method

.method protected endWithResult(I)V
    .locals 6
    .param p1, "ret"    # I

    .line 152
    iget-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mReportTempCap:Ljava/lang/String;

    const/16 v2, 0x1f9

    invoke-static {v0, v2, v1}, Landroid/util/Flog;->bdReport(Landroid/content/Context;ILjava/lang/String;)Z

    .line 153
    sget-object v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mReportTempCap:Ljava/lang/String;

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mReportTempCap:Ljava/lang/String;

    .line 155
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mIsLowTemperature:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->TAG:Ljava/lang/String;

    const-string v1, "is keygurad, end restrict frequency"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v0

    const/16 v1, 0x3001

    const-string v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/iawareperf/UniPerf;->uniPerfEvent(ILjava/lang/String;[I)I

    .line 159
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->UNIPERF_TAG:[I

    sget-object v3, Lhuawei/android/security/facerecognition/task/AuthenticateTask;->ENABLE_BOOST:[I

    invoke-virtual {v0, v1, v2, v3}, Landroid/iawareperf/UniPerf;->uniPerfSetConfig(I[I[I)I

    .line 162
    :cond_0
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceCamera;->getInstance()Lhuawei/android/security/facerecognition/FaceCamera;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/security/facerecognition/FaceCamera;->close()Z

    .line 163
    invoke-super {p0, p1}, Lhuawei/android/security/facerecognition/task/FaceRecognizeTask;->endWithResult(I)V

    .line 164
    return-void
.end method
