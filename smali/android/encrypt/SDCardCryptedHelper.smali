.class public Landroid/encrypt/SDCardCryptedHelper;
.super Ljava/lang/Object;
.source "SDCardCryptedHelper.java"

# interfaces
.implements Landroid/encrypt/ISDCardCryptedHelper;


# static fields
.field private static final SDCARD_STATUS_UNLOCK:Ljava/lang/String; = "unlock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserKeyAuth(II[B[B)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 11
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhuawei/android/os/HwGeneralManager;->addSdCardUserKeyAuth(II[B[B)I

    move-result v0

    return v0
.end method

.method public unlockKey(II[B[B)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "serialNumber"    # I
    .param p3, "token"    # [B
    .param p4, "secret"    # [B

    .line 15
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 16
    return v0

    .line 19
    :cond_0
    const-string v1, "vold.cryptsd.keystate"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "encryptStatus":Ljava/lang/String;
    const-string v2, "unlock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhuawei/android/os/HwGeneralManager;->unlockSdCardKey(II[B[B)I

    move-result v0

    return v0

    .line 23
    :cond_1
    return v0
.end method
