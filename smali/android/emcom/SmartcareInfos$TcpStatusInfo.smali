.class public Landroid/emcom/SmartcareInfos$TcpStatusInfo;
.super Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
.source "SmartcareInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/SmartcareInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TcpStatusInfo"
.end annotation


# instance fields
.field public dnsDelay:I

.field public synRtrans:S

.field public synRtt:I

.field public tcpDLWinZeroCount:S

.field public tcpDlDisorderPkts:S

.field public tcpDlPackages:I

.field public tcpDlThreeDupAcks:S

.field public tcpULWinZeroCount:S

.field public tcpUlFastRetrans:S

.field public tcpUlPackages:I

.field public tcpUlTimeoutRetrans:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addToInfos(Landroid/emcom/SmartcareInfos;)V
    .locals 0
    .param p1, "is"    # Landroid/emcom/SmartcareInfos;

    .line 272
    invoke-super {p0, p1}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 273
    iput-object p0, p1, Landroid/emcom/SmartcareInfos;->tcpStatusInfo:Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    .line 274
    return-void
.end method

.method public copyFrom(Landroid/emcom/SmartcareInfos$TcpStatusInfo;)Landroid/emcom/SmartcareInfos$TcpStatusInfo;
    .locals 1
    .param p1, "tsi"    # Landroid/emcom/SmartcareInfos$TcpStatusInfo;

    .line 278
    iget v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlPackages:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlPackages:I

    .line 279
    iget v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlPackages:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlPackages:I

    .line 280
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->synRtrans:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->synRtrans:S

    .line 281
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDLWinZeroCount:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDLWinZeroCount:S

    .line 282
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlTimeoutRetrans:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlTimeoutRetrans:S

    .line 283
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpULWinZeroCount:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpULWinZeroCount:S

    .line 284
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlThreeDupAcks:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlThreeDupAcks:S

    .line 285
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlDisorderPkts:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlDisorderPkts:S

    .line 286
    iget v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->dnsDelay:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->dnsDelay:I

    .line 287
    iget v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->synRtt:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->synRtt:I

    .line 288
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlFastRetrans:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlFastRetrans:S

    .line 289
    return-object p0
.end method

.method public recycle()V
    .locals 1

    .line 294
    invoke-super {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->recycle()V

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlPackages:I

    .line 296
    iput v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlPackages:I

    .line 297
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->synRtrans:S

    .line 298
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDLWinZeroCount:S

    .line 299
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlTimeoutRetrans:S

    .line 300
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpULWinZeroCount:S

    .line 301
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlThreeDupAcks:S

    .line 302
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpDlDisorderPkts:S

    .line 303
    iput v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->dnsDelay:I

    .line 304
    iput v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->synRtt:I

    .line 305
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->tcpUlFastRetrans:S

    .line 306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TcpStatusInfo:, hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dnsDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/emcom/SmartcareInfos$TcpStatusInfo;->dnsDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    return-object v0
.end method
