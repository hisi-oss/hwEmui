.class public Lhuawei/android/os/HwProtectArea;
.super Ljava/lang/Object;
.source "HwProtectArea.java"


# instance fields
.field private mErrno:[I

.field private mOptItem:Ljava/lang/String;

.field private mReadBuf:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "optItem"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/os/HwProtectArea;->mReadBuf:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lhuawei/android/os/HwProtectArea;->mErrno:[I

    .line 28
    iput-object p1, p0, Lhuawei/android/os/HwProtectArea;->mOptItem:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lhuawei/android/os/HwProtectArea;->mReadBuf:[Ljava/lang/String;

    const-string v1, "error"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    iget-object v0, p0, Lhuawei/android/os/HwProtectArea;->mErrno:[I

    const/4 v1, -0x1

    aput v1, v0, v2

    .line 31
    return-void
.end method


# virtual methods
.method public getErrno()I
    .locals 2

    .line 42
    iget-object v0, p0, Lhuawei/android/os/HwProtectArea;->mErrno:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getOptItem()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lhuawei/android/os/HwProtectArea;->mOptItem:Ljava/lang/String;

    return-object v0
.end method

.method public getReadBuf()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lhuawei/android/os/HwProtectArea;->mReadBuf:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setErrno(I)V
    .locals 2
    .param p1, "tmpErrno"    # I

    .line 50
    iget-object v0, p0, Lhuawei/android/os/HwProtectArea;->mErrno:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 51
    return-void
.end method

.method public setReadBuf(Ljava/lang/String;)V
    .locals 2
    .param p1, "tmpReadBuf"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lhuawei/android/os/HwProtectArea;->mReadBuf:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 47
    return-void
.end method
