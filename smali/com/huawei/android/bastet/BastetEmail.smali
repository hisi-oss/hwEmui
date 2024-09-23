.class public Lcom/huawei/android/bastet/BastetEmail;
.super Lcom/huawei/android/bastet/BastetManager;
.source "BastetEmail.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BastetEmail"


# instance fields
.field private mLoginInfo:Lcom/huawei/android/bastet/EmailLoginInfo;

.field private mProtocol:I

.field protected mProxyId:I

.field private mSyncConfig:Lcom/huawei/android/bastet/EmailSyncConfig;


# direct methods
.method protected constructor <init>(Lcom/huawei/android/bastet/EmailLoginInfo;Lcom/huawei/android/bastet/EmailSyncConfig;ILandroid/os/Handler;)V
    .locals 9
    .param p1, "login"    # Lcom/huawei/android/bastet/EmailLoginInfo;
    .param p2, "config"    # Lcom/huawei/android/bastet/EmailSyncConfig;
    .param p3, "protocol"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Lcom/huawei/android/bastet/BastetManager;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/huawei/android/bastet/BastetEmail;->mLoginInfo:Lcom/huawei/android/bastet/EmailLoginInfo;

    .line 45
    iput-object p2, p0, Lcom/huawei/android/bastet/BastetEmail;->mSyncConfig:Lcom/huawei/android/bastet/EmailSyncConfig;

    .line 46
    iput p3, p0, Lcom/huawei/android/bastet/BastetEmail;->mProtocol:I

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/BastetEmail;->mProtocol:I

    iget-object v2, p0, Lcom/huawei/android/bastet/BastetEmail;->mLoginInfo:Lcom/huawei/android/bastet/EmailLoginInfo;

    invoke-virtual {v2}, Lcom/huawei/android/bastet/EmailLoginInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/bastet/BastetEmail;->mLoginInfo:Lcom/huawei/android/bastet/EmailLoginInfo;

    .line 51
    invoke-virtual {v3}, Lcom/huawei/android/bastet/EmailLoginInfo;->getPort()I

    move-result v3

    iget-object v4, p0, Lcom/huawei/android/bastet/BastetEmail;->mLoginInfo:Lcom/huawei/android/bastet/EmailLoginInfo;

    invoke-virtual {v4}, Lcom/huawei/android/bastet/EmailLoginInfo;->getSecurity()I

    move-result v4

    iget-object v5, p0, Lcom/huawei/android/bastet/BastetEmail;->mLoginInfo:Lcom/huawei/android/bastet/EmailLoginInfo;

    invoke-virtual {v5}, Lcom/huawei/android/bastet/EmailLoginInfo;->getInterval()I

    move-result v5

    iget-object v6, p0, Lcom/huawei/android/bastet/BastetEmail;->mLoginInfo:Lcom/huawei/android/bastet/EmailLoginInfo;

    .line 52
    invoke-virtual {v6}, Lcom/huawei/android/bastet/EmailLoginInfo;->getAccount()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/android/bastet/BastetEmail;->mLoginInfo:Lcom/huawei/android/bastet/EmailLoginInfo;

    invoke-virtual {v7}, Lcom/huawei/android/bastet/EmailLoginInfo;->getPassword()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/huawei/android/bastet/BastetEmail;->mIBastetListener:Lcom/huawei/android/bastet/IBastetListener;

    .line 50
    invoke-interface/range {v0 .. v8}, Lcom/huawei/android/bastet/IBastetManager;->initEmailProxy(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lcom/huawei/android/bastet/IBastetListener;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    .line 58
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public clearProxy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/bastet/IBastetManager;->clearProxyById(I)I

    .line 128
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method protected handleProxyMessage(III)V
    .locals 3
    .param p1, "proxyId"    # I
    .param p2, "err"    # I
    .param p3, "ext"    # I

    .line 62
    const-string v0, "BastetEmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProxyMessage: proxyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    if-eq p1, v0, :cond_0

    .line 64
    const-string v0, "BastetEmail"

    const-string v1, "proxyId is not match"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 67
    :cond_0
    const/16 v0, -0xb

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/android/bastet/BastetEmail;->sendMessage(I)V

    .line 70
    nop

    .line 74
    :goto_0
    return-void
.end method

.method protected onBastetDied()V
    .locals 2

    .line 78
    const-string v0, "BastetEmail"

    const-string v1, "bastetd died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public startProxy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    iget-object v2, p0, Lcom/huawei/android/bastet/BastetEmail;->mSyncConfig:Lcom/huawei/android/bastet/EmailSyncConfig;

    invoke-virtual {v2}, Lcom/huawei/android/bastet/EmailSyncConfig;->getFolderName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/bastet/BastetEmail;->mSyncConfig:Lcom/huawei/android/bastet/EmailSyncConfig;

    invoke-virtual {v3}, Lcom/huawei/android/bastet/EmailSyncConfig;->getLatestUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/huawei/android/bastet/IBastetManager;->updateEmailBoxInfo(ILjava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/bastet/IBastetManager;->startBastetProxy(I)I

    .line 96
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method public stopProxy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetEmail;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    iget v1, p0, Lcom/huawei/android/bastet/BastetEmail;->mProxyId:I

    invoke-interface {v0, v1}, Lcom/huawei/android/bastet/IBastetManager;->stopBastetProxy(I)I

    .line 112
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
