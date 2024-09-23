.class public final Landroid/rms/iaware/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final DEFAULT_LEVEL:I = -0x1

.field public static final HIGH_LEVEL:I = 0x1

.field public static final LOW_LEVEL:I = 0x3

.field public static final MID_LEVEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field private static mLevel:I

.field private static mRamSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput v0, Landroid/rms/iaware/DeviceInfo;->mRamSize:I

    .line 20
    const/4 v0, -0x1

    sput v0, Landroid/rms/iaware/DeviceInfo;->mLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceLevel()I
    .locals 3

    .line 55
    sget v0, Landroid/rms/iaware/DeviceInfo;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 56
    const-string v0, "DeviceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceLevel level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/rms/iaware/DeviceInfo;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget v0, Landroid/rms/iaware/DeviceInfo;->mLevel:I

    return v0

    .line 60
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/rms/iaware/IAwareCMSManager;->getICMSManager()Landroid/os/IBinder;

    move-result-object v0

    .line 61
    .local v0, "awareservice":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 62
    invoke-static {v0}, Landroid/rms/iaware/IAwareCMSManager;->getDeviceLevel(Landroid/os/IBinder;)I

    move-result v1

    sput v1, Landroid/rms/iaware/DeviceInfo;->mLevel:I

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "DeviceInfo"

    const-string v2, "getDeviceLevel can not find service IAwareCMSService."

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "awareservice":Landroid/os/IBinder;
    :goto_0
    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DeviceInfo"

    const-string v2, "getDeviceLevel occur RemoteException"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-string v0, "DeviceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceLevel level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/rms/iaware/DeviceInfo;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget v0, Landroid/rms/iaware/DeviceInfo;->mLevel:I

    return v0
.end method

.method public static getDeviceRAM(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 28
    const-string v1, "DeviceInfo"

    const-string v2, "getDeviceRAM context is null"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return v0

    .line 31
    :cond_0
    sget v1, Landroid/rms/iaware/DeviceInfo;->mRamSize:I

    if-eqz v1, :cond_1

    .line 32
    const-string v0, "DeviceInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceRAM ramSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/rms/iaware/DeviceInfo;->mRamSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget v0, Landroid/rms/iaware/DeviceInfo;->mRamSize:I

    return v0

    .line 35
    :cond_1
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 36
    .local v1, "manager":Landroid/app/ActivityManager;
    if-nez v1, :cond_2

    .line 37
    return v0

    .line 40
    :cond_2
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 41
    .local v0, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 45
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/16 v4, 0x14

    shr-long/2addr v2, v4

    const-wide/16 v4, 0x3ff

    add-long/2addr v2, v4

    const/16 v4, 0xa

    shr-long/2addr v2, v4

    shl-long/2addr v2, v4

    long-to-int v2, v2

    sput v2, Landroid/rms/iaware/DeviceInfo;->mRamSize:I

    .line 46
    const-string v2, "DeviceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceRAM memInfo.totalMem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ramSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/rms/iaware/DeviceInfo;->mRamSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget v2, Landroid/rms/iaware/DeviceInfo;->mRamSize:I

    return v2
.end method
