.class public Lcom/huawei/device/connectivitychrlog/LogByte;
.super Ljava/lang/Object;
.source "LogByte.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LogByte"


# instance fields
.field private length:I

.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->length:I

    .line 35
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->value:B

    .line 36
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->length:I

    return v0
.end method

.method public getValue()B
    .locals 1

    .line 10
    iget-byte v0, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->value:B

    return v0
.end method

.method public setByByteArray([BIZ)V
    .locals 3
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .param p3, "bIsLittleEndian"    # Z

    .line 18
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->length:I

    if-eq v0, p2, :cond_0

    .line 19
    const-string v0, "LogByte"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray failed ,not support len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->value:B

    .line 23
    const-string v0, "LogByte"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->value:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public setValue(B)V
    .locals 0
    .param p1, "value"    # B

    .line 14
    iput-byte p1, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->value:B

    .line 15
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 27
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->value:B

    .line 28
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 40
    .local v0, "bytes":[B
    iget-byte v1, p0, Lcom/huawei/device/connectivitychrlog/LogByte;->value:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 41
    return-object v0
.end method
