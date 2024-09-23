.class public Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;
.super Ljava/lang/Object;
.source "HwTouchWeightManager.java"


# static fields
.field private static volatile mInstance:Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;->mInstance:Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;
    .locals 2

    const-class v0, Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;->mInstance:Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;

    invoke-direct {v1}, Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;-><init>()V

    sput-object v1, Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;->mInstance:Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;

    .line 14
    :cond_0
    sget-object v1, Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;->mInstance:Lhuawei/android/hardware/hwtouchweight/HwTouchWeightManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getTouchWeightValue()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/os/HwGeneralManager;->getTouchWeightValue()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "val":Ljava/lang/String;
    return-object v0
.end method

.method public resetTouchWeight()V
    .locals 1

    .line 18
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/os/HwGeneralManager;->resetTouchWeight()V

    .line 19
    return-void
.end method
