.class public Lhuawei/android/os/HwProtectAreaManager;
.super Ljava/lang/Object;
.source "HwProtectAreaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwProtectAreaManager"

.field private static volatile mInstance:Lhuawei/android/os/HwProtectAreaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/os/HwProtectAreaManager;->mInstance:Lhuawei/android/os/HwProtectAreaManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/os/HwProtectAreaManager;
    .locals 2

    const-class v0, Lhuawei/android/os/HwProtectAreaManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lhuawei/android/os/HwProtectAreaManager;->mInstance:Lhuawei/android/os/HwProtectAreaManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lhuawei/android/os/HwProtectAreaManager;

    invoke-direct {v1}, Lhuawei/android/os/HwProtectAreaManager;-><init>()V

    sput-object v1, Lhuawei/android/os/HwProtectAreaManager;->mInstance:Lhuawei/android/os/HwProtectAreaManager;

    .line 19
    :cond_0
    sget-object v1, Lhuawei/android/os/HwProtectAreaManager;->mInstance:Lhuawei/android/os/HwProtectAreaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public readProtectArea(Ljava/lang/String;I[Ljava/lang/String;[I)I
    .locals 1
    .param p1, "optItem"    # Ljava/lang/String;
    .param p2, "readBufLen"    # I
    .param p3, "readBuf"    # [Ljava/lang/String;
    .param p4, "errorNum"    # [I

    .line 23
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhuawei/android/os/HwGeneralManager;->readProtectArea(Ljava/lang/String;I[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method public writeProtectArea(Ljava/lang/String;ILjava/lang/String;[I)I
    .locals 1
    .param p1, "optItem"    # Ljava/lang/String;
    .param p2, "writeLen"    # I
    .param p3, "writeBuf"    # Ljava/lang/String;
    .param p4, "errorNum"    # [I

    .line 27
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhuawei/android/os/HwGeneralManager;->writeProtectArea(Ljava/lang/String;ILjava/lang/String;[I)I

    move-result v0

    return v0
.end method
