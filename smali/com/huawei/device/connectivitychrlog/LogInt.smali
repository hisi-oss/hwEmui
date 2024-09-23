.class public Lcom/huawei/device/connectivitychrlog/LogInt;
.super Ljava/lang/Object;
.source "LogInt.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LogInt"


# instance fields
.field private bytesValue:[B

.field private length:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->length:I

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->bytesValue:[B

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->value:I

    .line 36
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->length:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->value:I

    return v0
.end method

.method public setByByteArray([BIZ)V
    .locals 3
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .param p3, "bIsLittleEndian"    # Z

    .line 21
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->length:I

    if-eq v0, p2, :cond_0

    .line 22
    const-string v0, "LogInt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray failed ,not support len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    invoke-static {p1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->littleEndianBytesToInt([B)I

    move-result v0

    iput v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->value:I

    .line 25
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->value:I

    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->intToBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->bytesValue:[B

    .line 27
    const-string v0, "LogInt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 16
    iput p1, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->value:I

    .line 17
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->value:I

    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->intToBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->bytesValue:[B

    .line 18
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->bytesValue:[B

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->bytesValue:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 43
    :cond_0
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogInt;->value:I

    invoke-static {v0}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->intToBytes(I)[B

    move-result-object v0

    return-object v0
.end method
