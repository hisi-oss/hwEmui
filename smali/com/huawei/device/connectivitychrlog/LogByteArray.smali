.class public Lcom/huawei/device/connectivitychrlog/LogByteArray;
.super Ljava/lang/Object;
.source "LogByteArray.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LogByteArray"


# instance fields
.field private length:I

.field private value:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->length:I

    .line 32
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->value:[B

    .line 33
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->length:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->value:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public setByByteArray([BIZ)V
    .locals 3
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .param p3, "bIsLittleEndian"    # Z

    .line 23
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->length:I

    if-eq v0, p2, :cond_0

    .line 24
    const-string v0, "LogByteArray"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray failed ,not support len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->value:[B

    iget v1, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->length:I

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->littleEndianBytesToBigEndianBytes([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->value:[B

    .line 27
    const-string v0, "LogByteArray"

    const-string v1, "setByByteArray "

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public setValue([B)V
    .locals 1
    .param p1, "value"    # [B

    .line 19
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->value:[B

    .line 20
    return-void
.end method

.method public toByteArray()[B
    .locals 5

    .line 36
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->length:I

    new-array v0, v0, [B

    .line 37
    .local v0, "byteArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 38
    .local v1, "bytebuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->value:[B

    array-length v2, v2

    iget v3, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->length:I

    if-le v2, v3, :cond_0

    .line 39
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->value:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->length:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogByteArray;->value:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 43
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
