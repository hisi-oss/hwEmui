.class public Landroid/emcom/SmartcareInfos;
.super Ljava/lang/Object;
.source "SmartcareInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emcom/SmartcareInfos$FwkNetworkInfo;,
        Landroid/emcom/SmartcareInfos$TcpStatusInfo;,
        Landroid/emcom/SmartcareInfos$HttpInfo;,
        Landroid/emcom/SmartcareInfos$WechatInfo;,
        Landroid/emcom/SmartcareInfos$BrowserInfo;,
        Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmartcareInfos"


# instance fields
.field public browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

.field public emailInfo:Landroid/emcom/EmailInfo;

.field public fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

.field public gameInfo:Landroid/emcom/GameInfo;

.field public httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

.field public tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

.field public videoUploadInfo:Landroid/emcom/VideoUploadInfo;

.field public wechatInfo:Landroid/emcom/SmartcareInfos$WechatInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/emcom/SmartcareInfos;)Landroid/emcom/SmartcareInfos;
    .locals 2
    .param p1, "is"    # Landroid/emcom/SmartcareInfos;

    .line 419
    iget-object v0, p1, Landroid/emcom/SmartcareInfos;->browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Landroid/emcom/SmartcareInfos$BrowserInfo;

    invoke-direct {v0}, Landroid/emcom/SmartcareInfos$BrowserInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/emcom/SmartcareInfos$BrowserInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 423
    :cond_0
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

    iget-object v1, p1, Landroid/emcom/SmartcareInfos;->browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

    invoke-virtual {v0, v1}, Landroid/emcom/SmartcareInfos$BrowserInfo;->copyFrom(Landroid/emcom/SmartcareInfos$BrowserInfo;)Landroid/emcom/SmartcareInfos$BrowserInfo;

    .line 426
    :cond_1
    iget-object v0, p1, Landroid/emcom/SmartcareInfos;->httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

    if-nez v0, :cond_2

    .line 428
    new-instance v0, Landroid/emcom/SmartcareInfos$HttpInfo;

    invoke-direct {v0}, Landroid/emcom/SmartcareInfos$HttpInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/emcom/SmartcareInfos$HttpInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 430
    :cond_2
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

    iget-object v1, p1, Landroid/emcom/SmartcareInfos;->httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

    invoke-virtual {v0, v1}, Landroid/emcom/SmartcareInfos$HttpInfo;->copyFrom(Landroid/emcom/SmartcareInfos$HttpInfo;)Landroid/emcom/SmartcareInfos$HttpInfo;

    .line 433
    :cond_3
    iget-object v0, p1, Landroid/emcom/SmartcareInfos;->tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    if-eqz v0, :cond_5

    .line 434
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    if-nez v0, :cond_4

    .line 435
    new-instance v0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    invoke-direct {v0}, Landroid/emcom/SmartcareInfos$TcpStatusInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 437
    :cond_4
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    iget-object v1, p1, Landroid/emcom/SmartcareInfos;->tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    invoke-virtual {v0, v1}, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->copyFrom(Landroid/emcom/SmartcareInfos$TcpStatusInfo;)Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    .line 440
    :cond_5
    iget-object v0, p1, Landroid/emcom/SmartcareInfos;->fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    if-eqz v0, :cond_7

    .line 441
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    if-nez v0, :cond_6

    .line 442
    new-instance v0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    invoke-direct {v0}, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;-><init>()V

    invoke-virtual {v0, p0}, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 444
    :cond_6
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    iget-object v1, p1, Landroid/emcom/SmartcareInfos;->fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    invoke-virtual {v0, v1}, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->copyFrom(Landroid/emcom/SmartcareInfos$FwkNetworkInfo;)Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    .line 447
    :cond_7
    return-object p0
.end method

.method public recycle()V
    .locals 1

    .line 386
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    invoke-virtual {v0}, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->recycle()V

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->gameInfo:Landroid/emcom/GameInfo;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->gameInfo:Landroid/emcom/GameInfo;

    invoke-virtual {v0}, Landroid/emcom/GameInfo;->recycle()V

    .line 396
    :cond_1
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->videoUploadInfo:Landroid/emcom/VideoUploadInfo;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->videoUploadInfo:Landroid/emcom/VideoUploadInfo;

    invoke-virtual {v0}, Landroid/emcom/VideoUploadInfo;->recycle()V

    .line 400
    :cond_2
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->emailInfo:Landroid/emcom/EmailInfo;

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->emailInfo:Landroid/emcom/EmailInfo;

    invoke-virtual {v0}, Landroid/emcom/EmailInfo;->recycle()V

    .line 404
    :cond_3
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->wechatInfo:Landroid/emcom/SmartcareInfos$WechatInfo;

    if-eqz v0, :cond_4

    .line 405
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->wechatInfo:Landroid/emcom/SmartcareInfos$WechatInfo;

    invoke-virtual {v0}, Landroid/emcom/SmartcareInfos$WechatInfo;->recycle()V

    .line 407
    :cond_4
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

    invoke-virtual {v0}, Landroid/emcom/SmartcareInfos$BrowserInfo;->recycle()V

    .line 410
    :cond_5
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

    if-eqz v0, :cond_6

    .line 411
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

    invoke-virtual {v0}, Landroid/emcom/SmartcareInfos$HttpInfo;->recycle()V

    .line 413
    :cond_6
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    if-eqz v0, :cond_7

    .line 414
    iget-object v0, p0, Landroid/emcom/SmartcareInfos;->tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    invoke-virtual {v0}, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->recycle()V

    .line 416
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartcareInfos:  hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gameInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/emcom/SmartcareInfos;->gameInfo:Landroid/emcom/GameInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " browserInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/emcom/SmartcareInfos;->browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " videoUploadInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/emcom/SmartcareInfos;->videoUploadInfo:Landroid/emcom/VideoUploadInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " emailInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/emcom/SmartcareInfos;->emailInfo:Landroid/emcom/EmailInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " httpInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/emcom/SmartcareInfos;->httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " fwkNetworkInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/emcom/SmartcareInfos;->fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " tcpStatusInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/emcom/SmartcareInfos;->tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    return-object v0
.end method
