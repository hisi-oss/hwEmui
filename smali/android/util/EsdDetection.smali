.class public Landroid/util/EsdDetection;
.super Ljava/lang/Object;
.source "EsdDetection.java"


# static fields
.field public static final DEBUG:Z = false

.field private static DETECT_MAX_TIME:I = 0x0

.field private static final ESD_ENABLE:Z

.field public static final ESD_ENTER:I = 0x1

.field public static final ESD_EXIT:I = 0x0

.field public static final ESD_UNKNOW:I = -0x1

.field static final TAG:Ljava/lang/String; = "EsdDetection"

.field private static mEsdDetection:Landroid/util/EsdDetection;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private detectStartTime:J

.field private esdCurrentStatus:I

.field private esdLastStatus:I

.field private esdNeedInitStatus:Z

.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    const-string v0, "ro.product.esdenable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/EsdDetection;->ESD_ENABLE:Z

    .line 39
    const/16 v0, 0x2710

    sput v0, Landroid/util/EsdDetection;->DETECT_MAX_TIME:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/EsdDetection;->mLock:Ljava/lang/Object;

    .line 188
    :try_start_0
    const-string v0, "EsdDetection_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "EsdDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadLibrary occurs error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/EsdDetection;->esdNeedInitStatus:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/EsdDetection;->esdLastStatus:I

    .line 37
    iput v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/EsdDetection;->detectStartTime:J

    .line 49
    iput-object p1, p0, Landroid/util/EsdDetection;->mContext:Landroid/content/Context;

    .line 50
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/util/EsdDetection;->mPowerManager:Landroid/os/PowerManager;

    .line 51
    return-void
.end method

.method private esdDetectionInternal(Landroid/hardware/SensorEvent;)I
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 133
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 134
    const-string v1, "EsdDetection"

    const-string v2, "event == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v0

    .line 138
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-nez v1, :cond_1

    .line 139
    const-string v1, "EsdDetection"

    const-string v2, "event.values == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v0

    .line 143
    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 144
    const-string v1, "EsdDetection"

    const-string v2, "event.values.length < 3"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0

    .line 148
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 149
    .local v0, "axisX":F
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 150
    .local v1, "axisY":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 151
    .local v2, "axisZ":F
    invoke-static {v0, v1, v2}, Landroid/util/EsdDetection;->esdDetection_native(FFF)I

    move-result v3

    .line 155
    .local v3, "result":I
    return v3
.end method

.method public static native esdDetection_native(FFF)I
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/util/EsdDetection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Landroid/util/EsdDetection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Landroid/util/EsdDetection;->mEsdDetection:Landroid/util/EsdDetection;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Landroid/util/EsdDetection;

    invoke-direct {v1, p0}, Landroid/util/EsdDetection;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/util/EsdDetection;->mEsdDetection:Landroid/util/EsdDetection;

    .line 58
    :cond_0
    sget-object v1, Landroid/util/EsdDetection;->mEsdDetection:Landroid/util/EsdDetection;

    monitor-exit v0

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native init_native()V
.end method

.method public static isEsdEnabled()Z
    .locals 1

    .line 63
    sget-boolean v0, Landroid/util/EsdDetection;->ESD_ENABLE:Z

    return v0
.end method

.method private turnOffScreen()V
    .locals 1

    .line 162
    invoke-static {}, Lcom/huawei/android/os/HwPowerManager;->isSystemSuspending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/util/EsdDetection;->esdNeedInitStatus:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/huawei/android/os/HwPowerManager;->suspendSystem(ZZ)V

    .line 165
    :cond_0
    return-void
.end method

.method private turnOnScreen()V
    .locals 2

    .line 171
    iget-object v0, p0, Landroid/util/EsdDetection;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    invoke-static {v1, v1}, Lcom/huawei/android/os/HwPowerManager;->suspendSystem(ZZ)V

    .line 173
    const-string v0, "EsdDetection"

    const-string v1, "screen is realy off ,just set suspendSystem false , do not refresh background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 177
    :cond_0
    invoke-static {}, Lcom/huawei/android/os/HwPowerManager;->isSystemSuspending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/huawei/android/os/HwPowerManager;->suspendSystem(ZZ)V

    .line 180
    :cond_1
    return-void
.end method

.method public static native unInit_native()V
.end method


# virtual methods
.method public esdDetection(Landroid/hardware/SensorEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 73
    iget-boolean v0, p0, Landroid/util/EsdDetection;->esdNeedInitStatus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Landroid/util/EsdDetection;->init_native()V

    .line 75
    iput-boolean v1, p0, Landroid/util/EsdDetection;->esdNeedInitStatus:Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/EsdDetection;->detectStartTime:J

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/EsdDetection;->esdDetectionInternal(Landroid/hardware/SensorEvent;)I

    move-result v0

    iput v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    .line 81
    iget v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    iget v2, p0, Landroid/util/EsdDetection;->esdLastStatus:I

    if-eq v0, v2, :cond_1

    .line 82
    const-string v0, "EsdDetection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "esdDetection esdCurrentStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", esdLastStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/EsdDetection;->esdLastStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    iget v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 86
    iget v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    iput v0, p0, Landroid/util/EsdDetection;->esdLastStatus:I

    .line 87
    invoke-direct {p0}, Landroid/util/EsdDetection;->turnOffScreen()V

    .line 88
    return v2

    .line 92
    :cond_2
    iget v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/util/EsdDetection;->esdLastStatus:I

    if-ne v0, v2, :cond_3

    .line 93
    invoke-virtual {p0}, Landroid/util/EsdDetection;->unInitStatus()V

    .line 94
    invoke-direct {p0}, Landroid/util/EsdDetection;->turnOnScreen()V

    .line 95
    const-string v0, "EsdDetection"

    const-string v2, "detection finish."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v1

    .line 99
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 101
    .local v3, "currentTime":J
    iget-wide v5, p0, Landroid/util/EsdDetection;->detectStartTime:J

    sub-long v5, v3, v5

    sget v0, Landroid/util/EsdDetection;->DETECT_MAX_TIME:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4

    .line 102
    const-string v0, "EsdDetection"

    const-string v2, "detection exceeded maximum time"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Landroid/util/EsdDetection;->unInitStatus()V

    .line 104
    invoke-direct {p0}, Landroid/util/EsdDetection;->turnOnScreen()V

    .line 105
    return v1

    .line 107
    :cond_4
    iget v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    iput v0, p0, Landroid/util/EsdDetection;->esdLastStatus:I

    .line 108
    return v2
.end method

.method public getEsdCurrentStatus()I
    .locals 1

    .line 128
    iget v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    return v0
.end method

.method public unInitStatus()V
    .locals 2

    .line 115
    invoke-static {}, Landroid/util/EsdDetection;->unInit_native()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/EsdDetection;->esdNeedInitStatus:Z

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/EsdDetection;->esdLastStatus:I

    .line 118
    iput v0, p0, Landroid/util/EsdDetection;->esdCurrentStatus:I

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/EsdDetection;->detectStartTime:J

    .line 120
    return-void
.end method
