.class public Lhuawei/android/os/HwLocalDevManager;
.super Ljava/lang/Object;
.source "HwLocalDevManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwLocalDevManager"

.field private static volatile mInstance:Lhuawei/android/os/HwLocalDevManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/os/HwLocalDevManager;->mInstance:Lhuawei/android/os/HwLocalDevManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/os/HwLocalDevManager;
    .locals 2

    const-class v0, Lhuawei/android/os/HwLocalDevManager;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lhuawei/android/os/HwLocalDevManager;->mInstance:Lhuawei/android/os/HwLocalDevManager;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lhuawei/android/os/HwLocalDevManager;

    invoke-direct {v1}, Lhuawei/android/os/HwLocalDevManager;-><init>()V

    sput-object v1, Lhuawei/android/os/HwLocalDevManager;->mInstance:Lhuawei/android/os/HwLocalDevManager;

    .line 13
    :cond_0
    sget-object v1, Lhuawei/android/os/HwLocalDevManager;->mInstance:Lhuawei/android/os/HwLocalDevManager;
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
.method public doSdcardCheckRW()I
    .locals 1

    .line 25
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/os/HwGeneralManager;->doSdcardCheckRW()I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "dev"    # I

    .line 21
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhuawei/android/os/HwGeneralManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDevStat(I)I
    .locals 1
    .param p1, "dev"    # I

    .line 17
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhuawei/android/os/HwGeneralManager;->getLocalDevStat(I)I

    move-result v0

    return v0
.end method
