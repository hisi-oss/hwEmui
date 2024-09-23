.class public Lcom/huawei/android/bastet/ExchangeHttpHeader;
.super Ljava/lang/Object;
.source "ExchangeHttpHeader.java"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mHostName:Ljava/lang/String;

.field private mPolicyKey:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "policy"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mVersion:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mUserAgent:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mEncoding:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mPolicyKey:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mHostName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyKey()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mPolicyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/huawei/android/bastet/ExchangeHttpHeader;->mVersion:Ljava/lang/String;

    return-object v0
.end method
