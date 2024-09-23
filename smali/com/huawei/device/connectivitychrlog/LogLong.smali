.class public Lcom/huawei/device/connectivitychrlog/LogLong;
.super Ljava/lang/Object;
.source "LogLong.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LogLong"


# instance fields
.field private bytesValue:[B

.field private length:I

.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/16 v0, 0x8

    iput v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->length:I

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->bytesValue:[B

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    .line 41
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->length:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    return-wide v0
.end method

.method public setByByteArray([BIZ)V
    .locals 4
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .param p3, "bIsLittleEndian"    # Z

    .line 26
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->length:I

    if-eq v0, p2, :cond_0

    .line 27
    const-string v0, "LogLong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray failed ,not support len = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->littleEndianbytesToLong([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    .line 30
    iget-wide v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->longToBytes(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->bytesValue:[B

    .line 32
    const-string v0, "LogLong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setByByteArray value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .param p1, "value"    # I

    .line 21
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    .line 22
    iget-wide v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->longToBytes(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->bytesValue:[B

    .line 23
    return-void
.end method

.method public setValue(J)V
    .locals 2
    .param p1, "value"    # J

    .line 16
    iput-wide p1, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    .line 17
    iget-wide v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->longToBytes(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->bytesValue:[B

    .line 18
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->bytesValue:[B

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->bytesValue:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 47
    :cond_0
    iget-wide v0, p0, Lcom/huawei/device/connectivitychrlog/LogLong;->value:J

    invoke-static {v0, v1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->longToBytes(J)[B

    move-result-object v0

    return-object v0
.end method
