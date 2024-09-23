.class public Lhuawei/android/os/HwDeviceIdleManager;
.super Ljava/lang/Object;
.source "HwDeviceIdleManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwDeviceIdleManager"

.field private static volatile mInstance:Lhuawei/android/os/HwDeviceIdleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/os/HwDeviceIdleManager;->mInstance:Lhuawei/android/os/HwDeviceIdleManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/os/HwDeviceIdleManager;
    .locals 2

    const-class v0, Lhuawei/android/os/HwDeviceIdleManager;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lhuawei/android/os/HwDeviceIdleManager;->mInstance:Lhuawei/android/os/HwDeviceIdleManager;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lhuawei/android/os/HwDeviceIdleManager;

    invoke-direct {v1}, Lhuawei/android/os/HwDeviceIdleManager;-><init>()V

    sput-object v1, Lhuawei/android/os/HwDeviceIdleManager;->mInstance:Lhuawei/android/os/HwDeviceIdleManager;

    .line 13
    :cond_0
    sget-object v1, Lhuawei/android/os/HwDeviceIdleManager;->mInstance:Lhuawei/android/os/HwDeviceIdleManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 9
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public forceIdle()I
    .locals 1

    .line 17
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/os/HwGeneralManager;->forceIdle()I

    move-result v0

    return v0
.end method
