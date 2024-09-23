.class public Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;
.super Ljava/lang/Object;
.source "HwQualcommCsgNetworkInfo.java"


# instance fields
.field public bIncludePcsDigit:B

.field public iCSGId:I

.field public iCSGListCat:I

.field public iSignalStrength:I

.field public isSelectedFail:Z

.field public mcc:S

.field public mnc:S

.field public sCSGName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->isSelectedFail:Z

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 22
    iget-short v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->mcc:S

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->mnc:S

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->bIncludePcsDigit:B

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->iCSGListCat:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->iCSGId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->sCSGName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->sCSGName:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->iSignalStrength:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwQualcommCsgNetworkInfo: mcc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->mcc:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->mnc:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bIncludePcsDigit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->bIncludePcsDigit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iCSGListCat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->iCSGListCat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iCSGId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->iCSGId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sCSGName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->sCSGName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iSignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->iSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,isSelectedFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/HwQualcommCsgNetworkInfo;->isSelectedFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
