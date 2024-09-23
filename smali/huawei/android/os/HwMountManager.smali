.class public Lhuawei/android/os/HwMountManager;
.super Ljava/lang/Object;
.source "HwMountManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwMountManager"

.field private static volatile mInstance:Lhuawei/android/os/HwMountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/os/HwMountManager;->mInstance:Lhuawei/android/os/HwMountManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/os/HwMountManager;
    .locals 2

    const-class v0, Lhuawei/android/os/HwMountManager;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lhuawei/android/os/HwMountManager;->mInstance:Lhuawei/android/os/HwMountManager;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lhuawei/android/os/HwMountManager;

    invoke-direct {v1}, Lhuawei/android/os/HwMountManager;-><init>()V

    sput-object v1, Lhuawei/android/os/HwMountManager;->mInstance:Lhuawei/android/os/HwMountManager;

    .line 13
    :cond_0
    sget-object v1, Lhuawei/android/os/HwMountManager;->mInstance:Lhuawei/android/os/HwMountManager;
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
.method public isSupportedCifs()I
    .locals 1

    .line 23
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/os/HwGeneralManager;->isSupportedCifs()I

    move-result v0

    return v0
.end method

.method public mountCifs(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;

    .line 17
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lhuawei/android/os/HwGeneralManager;->mountCifs(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unmountCifs(Ljava/lang/String;)V
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;

    .line 20
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhuawei/android/os/HwGeneralManager;->unmountCifs(Ljava/lang/String;)V

    .line 21
    return-void
.end method
