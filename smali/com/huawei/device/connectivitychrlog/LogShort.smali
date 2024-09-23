.class public Lcom/huawei/device/connectivitychrlog/LogShort;
.super Ljava/lang/Object;
.source "LogShort.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LogShort"


# instance fields
.field private bytesValue:[B

.field private length:I

.field private value:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->length:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->bytesValue:[B

    .line 43
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    .line 44
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->length:I

    return v0
.end method

.method public getValue()S
    .locals 1

    .line 14
    iget-short v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    return v0
.end method

.method public setByByteArray([BIZ)V
    .locals 3
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .param p3, "bIsLittleEndian"    # Z

    .line 28
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->length:I

    if-eq v0, p2, :cond_0

    .line 29
    const-string v0, "LogShort"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray failed ,not support len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->littleEndianBytesToShort([B)S

    move-result v0

    iput-short v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    .line 33
    iget-short v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->bytesValue:[B

    .line 35
    const-string v0, "LogShort"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray this.value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 23
    int-to-short v0, p1

    iput-short v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    .line 24
    iget-short v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->bytesValue:[B

    .line 25
    return-void
.end method

.method public setValue(S)V
    .locals 1
    .param p1, "value"    # S

    .line 18
    iput-short p1, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    .line 19
    iget-short v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->bytesValue:[B

    .line 20
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->bytesValue:[B

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->bytesValue:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 50
    :cond_0
    iget-short v0, p0, Lcom/huawei/device/connectivitychrlog/LogShort;->value:S

    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v0

    return-object v0
.end method
