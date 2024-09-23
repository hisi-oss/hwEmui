.class public Lcom/huawei/android/bastet/BastetEmailExchange;
.super Lcom/huawei/android/bastet/BastetEmail;
.source "BastetEmailExchange.java"


# instance fields
.field private mHttpHeader:Lcom/huawei/android/bastet/ExchangeHttpHeader;

.field private mWbInfo:Lcom/huawei/android/bastet/ExchangeWbInfo;


# direct methods
.method public constructor <init>(Lcom/huawei/android/bastet/EmailLoginInfo;Lcom/huawei/android/bastet/ExchangeHttpHeader;Lcom/huawei/android/bastet/ExchangeWbInfo;Landroid/os/Handler;)V
    .locals 2
    .param p1, "login"    # Lcom/huawei/android/bastet/EmailLoginInfo;
    .param p2, "header"    # Lcom/huawei/android/bastet/ExchangeHttpHeader;
    .param p3, "wb"    # Lcom/huawei/android/bastet/ExchangeWbInfo;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/huawei/android/bastet/BastetEmail;-><init>(Lcom/huawei/android/bastet/EmailLoginInfo;Lcom/huawei/android/bastet/EmailSyncConfig;ILandroid/os/Handler;)V

    .line 41
    iput-object p2, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mHttpHeader:Lcom/huawei/android/bastet/ExchangeHttpHeader;

    .line 42
    iput-object p3, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mWbInfo:Lcom/huawei/android/bastet/ExchangeWbInfo;

    .line 43
    return-void
.end method


# virtual methods
.method public startProxy()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget v0, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mProxyId:I

    if-lez v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v2, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mProxyId:I

    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mHttpHeader:Lcom/huawei/android/bastet/ExchangeHttpHeader;

    invoke-virtual {v0}, Lcom/huawei/android/bastet/ExchangeHttpHeader;->getVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mHttpHeader:Lcom/huawei/android/bastet/ExchangeHttpHeader;

    invoke-virtual {v0}, Lcom/huawei/android/bastet/ExchangeHttpHeader;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mHttpHeader:Lcom/huawei/android/bastet/ExchangeHttpHeader;

    .line 58
    invoke-virtual {v0}, Lcom/huawei/android/bastet/ExchangeHttpHeader;->getEncoding()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mHttpHeader:Lcom/huawei/android/bastet/ExchangeHttpHeader;

    invoke-virtual {v0}, Lcom/huawei/android/bastet/ExchangeHttpHeader;->getPolicyKey()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mHttpHeader:Lcom/huawei/android/bastet/ExchangeHttpHeader;

    invoke-virtual {v0}, Lcom/huawei/android/bastet/ExchangeHttpHeader;->getHostName()Ljava/lang/String;

    move-result-object v7

    .line 57
    invoke-interface/range {v1 .. v7}, Lcom/huawei/android/bastet/IBastetManager;->setExchangeHttpHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mProxyId:I

    iget-object v2, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mWbInfo:Lcom/huawei/android/bastet/ExchangeWbInfo;

    invoke-virtual {v2}, Lcom/huawei/android/bastet/ExchangeWbInfo;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mWbInfo:Lcom/huawei/android/bastet/ExchangeWbInfo;

    .line 60
    invoke-virtual {v3}, Lcom/huawei/android/bastet/ExchangeWbInfo;->getSyncKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mWbInfo:Lcom/huawei/android/bastet/ExchangeWbInfo;

    invoke-virtual {v4}, Lcom/huawei/android/bastet/ExchangeWbInfo;->getSyncType()I

    move-result v4

    .line 59
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/huawei/android/bastet/IBastetManager;->updateExchangeWebXmlInfo(ILjava/lang/String;Ljava/lang/String;I)I

    .line 61
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/BastetEmailExchange;->mProxyId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/bastet/IBastetManager;->startBastetProxy(I)I

    .line 62
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
