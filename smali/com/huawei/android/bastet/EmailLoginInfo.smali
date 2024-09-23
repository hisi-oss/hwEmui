.class public Lcom/huawei/android/bastet/EmailLoginInfo;
.super Ljava/lang/Object;
.source "EmailLoginInfo.java"


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAddress:Ljava/net/InetSocketAddress;

.field private mInterval:I

.field private mPassword:Ljava/lang/String;

.field private mSecurity:I


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "security"    # I
    .param p5, "interval"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mAddress:Ljava/net/InetSocketAddress;

    .line 44
    iput-object p2, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mAccount:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mPassword:Ljava/lang/String;

    .line 46
    iput p4, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mSecurity:I

    .line 47
    iput p5, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mInterval:I

    .line 48
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mInterval:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/huawei/android/bastet/EmailLoginInfo;->mSecurity:I

    return v0
.end method
