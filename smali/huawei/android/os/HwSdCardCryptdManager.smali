.class public Lhuawei/android/os/HwSdCardCryptdManager;
.super Ljava/lang/Object;
.source "HwSdCardCryptdManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwSdCardCryptdManager"

.field private static volatile mInstance:Lhuawei/android/os/HwSdCardCryptdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/os/HwSdCardCryptdManager;->mInstance:Lhuawei/android/os/HwSdCardCryptdManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/os/HwSdCardCryptdManager;
    .locals 2

    const-class v0, Lhuawei/android/os/HwSdCardCryptdManager;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lhuawei/android/os/HwSdCardCryptdManager;->mInstance:Lhuawei/android/os/HwSdCardCryptdManager;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lhuawei/android/os/HwSdCardCryptdManager;

    invoke-direct {v1}, Lhuawei/android/os/HwSdCardCryptdManager;-><init>()V

    sput-object v1, Lhuawei/android/os/HwSdCardCryptdManager;->mInstance:Lhuawei/android/os/HwSdCardCryptdManager;

    .line 13
    :cond_0
    sget-object v1, Lhuawei/android/os/HwSdCardCryptdManager;->mInstance:Lhuawei/android/os/HwSdCardCryptdManager;
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
.method public addSdCardUserKeyAuth(II[B[B)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 23
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhuawei/android/os/HwGeneralManager;->addSdCardUserKeyAuth(II[B[B)I

    move-result v0

    return v0
.end method

.method public backupSecretkey()I
    .locals 1

    .line 26
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/os/HwGeneralManager;->backupSecretkey()I

    move-result v0

    return v0
.end method

.method public setSdCardCryptdEnable(ZLjava/lang/String;)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "volId"    # Ljava/lang/String;

    .line 17
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lhuawei/android/os/HwGeneralManager;->setSdCardCryptdEnable(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unlockSdCardKey(II[B[B)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 20
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhuawei/android/os/HwGeneralManager;->unlockSdCardKey(II[B[B)I

    move-result v0

    return v0
.end method
